uint64_t __EKLogInitIfNeeded_block_invoke()
{
  v0 = os_log_create(ekSubSystem, "EventKit");
  v1 = EKLogHandle;
  EKLogHandle = v0;

  v2 = os_log_create(ekSubSystem, "Availability");
  v3 = EKAvailabilityHandle;
  EKAvailabilityHandle = v2;

  v4 = os_log_create(ekSubSystem, "UIAvailabilitySearch");
  v5 = EKUIAvailabilitySearchHandle;
  EKUIAvailabilitySearchHandle = v4;

  v6 = os_log_create(ekSubSystem, "Saving");
  v7 = EKSavingSignpostsHandle;
  EKSavingSignpostsHandle = v6;

  return MEMORY[0x1EEE66BB8](v6, v7);
}

void EKLogInitIfNeeded()
{
  if (EKLogInitIfNeeded_onceToken != -1)
  {
    EKLogInitIfNeeded_cold_1();
  }
}

void sub_1A8060BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8060D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A806118C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t restrictDateRange(void *a1, id *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      v7 = v3;
      v3 = [*a2 timeIntervalSinceDate:v3];
      v4 = v7;
      if (v5 > 126230400.0)
      {
        v3 = [v7 dateByAddingTimeInterval:?];
        v4 = v7;
        *a2 = v3;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void sub_1A8061500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8061F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A80621E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A8062304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8062858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__15(uint64_t a1)
{
}

{
}

void __Block_byref_object_dispose__17(uint64_t a1)
{
}

{
}

id getREMStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMStoreClass_softClass;
  v7 = getREMStoreClass_softClass;
  if (!getREMStoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMStoreClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A806341C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8064C68(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

id EKObjectIDFromDictionary(uint64_t a1)
{
  v4 = 0;
  if (CalGetEntityIDFromFetchedObjectDictonary())
  {
    v1 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      EKObjectIDFromDictionary_cold_2(&v4 + 1, &v4, v1);
    }
  }

  else
  {
    v2 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      EKObjectIDFromDictionary_cold_1(v2);
    }
  }

  return 0;
}

uint64_t _shouldUseLegacyAccessBehavior()
{
  v5 = *MEMORY[0x1E69E9840];
  if (_shouldUseLegacyAccessBehavior_onceToken != -1)
  {
    _shouldUseLegacyAccessBehavior_cold_1();
  }

  if (_shouldUseLegacyAccessBehavior_forceLegacyBehavior == 1)
  {
    v0 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v4[0]) = 0;
      _os_log_impl(&dword_1A805E000, v0, OS_LOG_TYPE_DEFAULT, "Forcing legacy access behavior.", v4, 2u);
    }

    return 1;
  }

  else
  {
    v1 = [MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E70901FFFFFFFFLL] ^ 1;
    v2 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      v4[0] = 67109120;
      v4[1] = v1;
      _os_log_impl(&dword_1A805E000, v2, OS_LOG_TYPE_INFO, "Using legacy access behavior: %{BOOL}d", v4, 8u);
    }
  }

  return v1;
}

double __GetSharedLockForIndex_block_invoke()
{
  result = 0.0;
  GetSharedLockForIndex_sharedLocks = 0u;
  unk_1ED7F97E8 = 0u;
  return result;
}

void sub_1A80688A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8069B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A806A274()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2978, &qword_1A81C44C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

id getREMListClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMListClass_softClass;
  v7 = getREMListClass_softClass;
  if (!getREMListClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMListClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMListClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A806F01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getREMColorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMColorClass_softClass;
  v7 = getREMColorClass_softClass;
  if (!getREMColorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMColorClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMColorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A806F4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMListClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  result = objc_getClass("REMList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMListClass_block_invoke_cold_1();
  }

  getREMListClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ReminderKitLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __ReminderKitLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E77FCFF8;
    v2 = 0;
    ReminderKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    ReminderKitLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ReminderKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getREMColorClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  result = objc_getClass("REMColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMColorClass_block_invoke_cold_1();
  }

  getREMColorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getREMReminderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMReminderClass_softClass;
  v7 = getREMReminderClass_softClass;
  if (!getREMReminderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMReminderClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMReminderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8070944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getREMUserActivityClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMUserActivityClass_softClass;
  v7 = getREMUserActivityClass_softClass;
  if (!getREMUserActivityClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMUserActivityClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMUserActivityClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A80713D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80716F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMReminderClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_0();
  result = objc_getClass("REMReminder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMReminderClass_block_invoke_cold_1();
  }

  getREMReminderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ReminderKitLibrary_0()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_0)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __ReminderKitLibraryCore_block_invoke_0;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E77FD0D8;
    v2 = 0;
    ReminderKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_0)
  {
    ReminderKitLibrary_cold_1_0(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ReminderKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getREMUserActivityClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_0();
  result = objc_getClass("REMUserActivity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMUserActivityClass_block_invoke_cold_1();
  }

  getREMUserActivityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMReminderChangeItemClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_0();
  result = objc_getClass("REMReminderChangeItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMReminderChangeItemClass_block_invoke_cold_1();
  }

  getREMReminderChangeItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A8074960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1A80753D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_1A807696C(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
  JUMPOUT(0x1A807681CLL);
}

void sub_1A8076A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8080100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8080648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8080CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_1A8083058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A808340C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8083E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8084568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getREMListClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMListClass_softClass_0;
  v7 = getREMListClass_softClass_0;
  if (!getREMListClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMListClass_block_invoke_0;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMListClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A80846C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80854E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getREMReminderClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMReminderClass_softClass_0;
  v7 = getREMReminderClass_softClass_0;
  if (!getREMReminderClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMReminderClass_block_invoke_0;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMReminderClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8085698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80866DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8086C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__56(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1A8087C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8087F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80881F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A808883C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8088A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMStoreClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMStoreClass_block_invoke_cold_1();
  }

  getREMStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ReminderKitLibrary_1()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_1)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __ReminderKitLibraryCore_block_invoke_1;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E77FD838;
    v4 = 0;
    ReminderKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = ReminderKitLibraryCore_frameworkLibrary_1;
  if (!ReminderKitLibraryCore_frameworkLibrary_1)
  {
    ReminderKitLibrary_cold_1_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __ReminderKitLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getREMListClass_block_invoke_0(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMListClass_block_invoke_cold_1_0();
  }

  getREMListClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMReminderClass_block_invoke_0(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMReminder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMReminderClass_block_invoke_cold_1_0();
  }

  getREMReminderClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMSaveRequestClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMSaveRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMSaveRequestClass_block_invoke_cold_1();
  }

  getREMSaveRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMAccountClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMAccountClass_block_invoke_cold_1();
  }

  getREMAccountClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMAlarmClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMAlarm");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMAlarmClass_block_invoke_cold_1();
  }

  getREMAlarmClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMRecurrenceRuleClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMRecurrenceRule");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMRecurrenceRuleClass_block_invoke_cold_1();
  }

  getREMRecurrenceRuleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMStructuredLocationClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMStructuredLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMStructuredLocationClass_block_invoke_cold_1();
  }

  getREMStructuredLocationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getREMErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ReminderKitLibrary_1();
  result = dlsym(v2, "REMErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getREMErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_1A808BA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1A808BCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A808C080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A808D8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A808DB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A808E0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

Class __getCNAutocompleteStoreClass_block_invoke(uint64_t a1)
{
  ContactsAutocompleteLibrary();
  result = objc_getClass("CNAutocompleteStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAutocompleteStoreClass_block_invoke_cold_1();
  }

  getCNAutocompleteStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ContactsAutocompleteLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!ContactsAutocompleteLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __ContactsAutocompleteLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E77FD9A8;
    v2 = 0;
    ContactsAutocompleteLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsAutocompleteLibraryCore_frameworkLibrary)
  {
    ContactsAutocompleteLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ContactsAutocompleteLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsAutocompleteLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCNAutocompleteFetchRequestClass_block_invoke(uint64_t a1)
{
  ContactsAutocompleteLibrary();
  result = objc_getClass("CNAutocompleteFetchRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAutocompleteFetchRequestClass_block_invoke_cold_1();
  }

  getCNAutocompleteFetchRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNAutocompleteNameComponentsClass_block_invoke(uint64_t a1)
{
  ContactsAutocompleteLibrary();
  result = objc_getClass("CNAutocompleteNameComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAutocompleteNameComponentsClass_block_invoke_cold_1();
  }

  getCNAutocompleteNameComponentsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNAutocompleteResultClass_block_invoke(uint64_t a1)
{
  ContactsAutocompleteLibrary();
  result = objc_getClass("CNAutocompleteResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAutocompleteResultClass_block_invoke_cold_1();
  }

  getCNAutocompleteResultClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id rangesSafeToRemove(void *a1)
{
  v1 = [a1 underlyingResult];
  v2 = [MEMORY[0x1E695DF70] array];
  _recursiveSafeRangesToRemoveFromResult(v1, v2);
  v3 = [v2 copy];

  return v3;
}

void _recursiveSafeRangesToRemoveFromResult(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = DDResultGetType();
  if (([@"ApproxTime" isEqualToString:v3] & 1) == 0 && (objc_msgSend(@"SpecialDateTime", "isEqualToString:", v3) & 1) == 0)
  {
    if (resultHasApproxTime(a1))
    {
      SubResults = DDResultGetSubResults();
      if (SubResults)
      {
        v5 = SubResults;
        Count = CFArrayGetCount(SubResults);
        if (Count >= 1)
        {
          v7 = Count;
          for (i = 0; i != v7; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
            _recursiveSafeRangesToRemoveFromResult(ValueAtIndex, v13);
          }
        }
      }
    }

    else
    {
      Range = DDResultGetRange();
      v12 = [MEMORY[0x1E696B098] valueWithRange:{Range, v11}];
      [v13 addObject:v12];
    }
  }
}

uint64_t resultHasApproxTime(uint64_t a1)
{
  SubResults = DDResultGetSubResults();
  if (!SubResults)
  {
    return 0;
  }

  v2 = SubResults;
  Count = CFArrayGetCount(SubResults);
  v4 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
    v7 = DDResultGetType();
    if (([@"ApproxTime" isEqualToString:v7] & 1) != 0 || objc_msgSend(@"SpecialDateTime", "isEqualToString:", v7))
    {
      break;
    }

    HasApproxTime = resultHasApproxTime(ValueAtIndex);

    if ((HasApproxTime & 1) == 0 && v4 != v5++)
    {
      continue;
    }

    return HasApproxTime;
  }

  return 1;
}

uint64_t resultHasExactTime(uint64_t a1)
{
  SubResults = DDResultGetSubResults();
  if (!SubResults)
  {
    return 0;
  }

  v2 = SubResults;
  Count = CFArrayGetCount(SubResults);
  v4 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
    v7 = DDResultGetType();
    if ((([@"Time" isEqualToString:v7] & 1) != 0 || objc_msgSend(@"TimeDuration", "isEqualToString:", v7)) && (resultHasApproxTime(ValueAtIndex) & 1) == 0)
    {
      break;
    }

    HasExactTime = resultHasExactTime(ValueAtIndex);

    if ((HasExactTime & 1) == 0 && v4 != v5++)
    {
      continue;
    }

    return HasExactTime;
  }

  return 1;
}

id EKDescriptorForRequiredKeysForLabeledDisplayString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [getCNContactFormatterClass(a1 a2];
  v15 = v4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getCNContactTypeKeySymbolLoc_ptr;
  v14 = getCNContactTypeKeySymbolLoc_ptr;
  if (!getCNContactTypeKeySymbolLoc_ptr)
  {
    v6 = ContactsLibrary();
    v12[3] = dlsym(v6, "CNContactTypeKey");
    getCNContactTypeKeySymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v5)
  {
    EKDescriptorForRequiredKeysForLabeledDisplayString_cold_1();
  }

  v16 = *v5;
  v7 = MEMORY[0x1E695DEC8];
  v8 = v16;
  v9 = [v7 arrayWithObjects:&v15 count:2];

  return v9;
}

void sub_1A80940CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNContactFormatterClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = getCNContactFormatterClass_softClass;
  v11 = getCNContactFormatterClass_softClass;
  if (!getCNContactFormatterClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getCNContactFormatterClass_block_invoke;
    v7[3] = &unk_1E77FCFD8;
    v7[4] = &v8;
    __getCNContactFormatterClass_block_invoke(v7, a2, a3, a4);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_1A80941B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8094428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNContactFormatterClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ContactsLibrary();
  result = objc_getClass("CNContactFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNContactFormatterClass_block_invoke_cold_1();
  }

  getCNContactFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ContactsLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __ContactsLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E77FDAF8;
    v4 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    ContactsLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __ContactsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCNContactTypeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactTypeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNLabeledValueClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  result = objc_getClass("CNLabeledValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNLabeledValueClass_block_invoke_cold_1();
  }

  getCNLabeledValueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A8094CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8095780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *EKAvailabilitySpanTypeAsString(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E77FDC38[a1];
  }
}

void sub_1A809ACB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMStructuredLocationClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_2)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ReminderKitLibraryCore_block_invoke_2;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E77FDCA0;
    v5 = 0;
    ReminderKitLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_2)
  {
    __getREMStructuredLocationClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("REMStructuredLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMStructuredLocationClass_block_invoke_cold_1_0();
  }

  getREMStructuredLocationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void sub_1A809DDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A809F598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80A454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80A4D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80A4FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80A51F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80A54D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80A562C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void EKTravelEngineLogInitialize(uint64_t result, uint64_t a2)
{
  if (EKTravelEngineLogInitialize_onceToken != -1)
  {
    EKTravelEngineLogInitialize_cold_1();
  }
}

uint64_t __EKTravelEngineLogInitialize_block_invoke()
{
  v0 = os_log_create("com.apple.calendar", "store.log.travel.engine");
  v1 = EKTravelEngineLogHandle;
  EKTravelEngineLogHandle = v0;

  v2 = os_log_create("com.apple.calendar", "store.log.travel.engine.throttle");
  v3 = EKTravelEngineThrottleLogHandle;
  EKTravelEngineThrottleLogHandle = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void sub_1A80AA18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AA2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AA45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AA5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AA75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AA8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AAA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AAB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80ABDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55, id a56, uint64_t a57, id location, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a55);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a64);
  objc_destroyWeak(&STACK[0x280]);
  _Unwind_Resume(a1);
}

void sub_1A80ACD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 64));
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A80B0228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 160), 8);
  _Block_object_dispose((v18 - 128), 8);
  _Block_object_dispose((v18 - 96), 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1A80B0E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80B6C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80B90E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80B94E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A80B9DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80BEB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80BEF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80C18B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A80C1C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getREMRecurrenceEndClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMRecurrenceEndClass_softClass;
  v7 = getREMRecurrenceEndClass_softClass;
  if (!getREMRecurrenceEndClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMRecurrenceEndClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMRecurrenceEndClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A80C5FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getREMRecurrenceRuleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMRecurrenceRuleClass_softClass_0;
  v7 = getREMRecurrenceRuleClass_softClass_0;
  if (!getREMRecurrenceRuleClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMRecurrenceRuleClass_block_invoke_0;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMRecurrenceRuleClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A80C609C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80C6B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMRecurrenceEndClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_2();
  result = objc_getClass("REMRecurrenceEnd");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMRecurrenceEndClass_block_invoke_cold_1();
  }

  getREMRecurrenceEndClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ReminderKitLibrary_2()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_3)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __ReminderKitLibraryCore_block_invoke_3;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E77FE5E0;
    v2 = 0;
    ReminderKitLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_3)
  {
    ReminderKitLibrary_cold_1_2(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ReminderKitLibraryCore_block_invoke_3(uint64_t a1)
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_3 = result;
  return result;
}

Class __getREMRecurrenceRuleClass_block_invoke_0(uint64_t a1)
{
  ReminderKitLibrary_2();
  result = objc_getClass("REMRecurrenceRule");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMRecurrenceRuleClass_block_invoke_cold_1_0();
  }

  getREMRecurrenceRuleClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMRecurrenceDayOfWeekClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_2();
  result = objc_getClass("REMRecurrenceDayOfWeek");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMRecurrenceDayOfWeekClass_block_invoke_cold_1();
  }

  getREMRecurrenceDayOfWeekClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id EKUserFriendlyStringForCLLocation(void *a1)
{
  v1 = a1;
  [v1 coordinate];
  v4 = CreateCoordinateComponentString(1, v2, v3);
  [v1 coordinate];
  v6 = v5;
  v8 = v7;

  v9 = CreateCoordinateComponentString(0, v6, v8);
  v10 = MEMORY[0x1E696AEC0];
  v11 = EKBundle(v9);
  v12 = [v11 localizedStringForKey:@"%@ value:%@" table:{&stru_1F1B49D68, 0}];
  v13 = [v10 localizedStringWithFormat:v12, v4, v9];

  return v13;
}

id CreateCoordinateComponentString(uint64_t a1, double a2, double a3)
{
  if (!a1)
  {
    a2 = a3;
  }

  v3 = @"N";
  v4 = @"E";
  if ((a2 * 3600.0) < 0)
  {
    v3 = @"S";
    v4 = @"W";
  }

  v5 = a2;
  v6 = fabs((a2 - a2) * 60.0);
  v7 = v6;
  v8 = (v6 - v6) * 60.0;
  if (a1)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  v10 = v8;
  if (v5 >= 0)
  {
    v11 = v5;
  }

  else
  {
    v11 = -v5;
  }

  v12 = EKBundle(a1);
  v13 = [v12 localizedStringForKey:v9 value:&stru_1F1B49D68 table:0];

  v14 = v13;
  v15 = v13;
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = EKBundle(v16);
  v18 = [v17 localizedStringForKey:@"%ld°%ld'%.0f'' %@" value:&stru_1F1B49D68 table:0];
  v19 = [v16 initWithFormat:v18, v11, v7, *&v10, v15, 0];

  return v19;
}

void sub_1A80CF37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A80CF740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80CF870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D0798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Unwind_Resume(a1);
}

void sub_1A80D14A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D18A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D1C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D20C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id logHandle(uint64_t a1)
{
  if (logHandle_onceToken_1 != -1)
  {
    logHandle_cold_1();
  }

  v2 = logHandle_handle_0;

  return v2;
}

uint64_t __logHandle_block_invoke()
{
  v0 = os_log_create("com.apple.calendar.eventkit", "EKPredicateExpanding");
  v1 = logHandle_handle_0;
  logHandle_handle_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1A80D6B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D6EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D7014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D7434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__14(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1A80D758C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DB9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DCBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DE7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DF01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DF498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DF824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DFBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A80DFE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A80E0BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1A80E3A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1A80E3B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80EF65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80F761C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80F78F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80F9AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80FA30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80FE3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8103BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMReminderClass_block_invoke_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_4)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ReminderKitLibraryCore_block_invoke_4;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E77FF340;
    v5 = 0;
    ReminderKitLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_4)
  {
    __getREMReminderClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("REMReminder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMReminderClass_block_invoke_cold_1_1();
  }

  getREMReminderClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke_4(uint64_t a1)
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_4 = result;
  return result;
}

void *__getkSuggestionsEKEventAvailabilityStateSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreSuggestionsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreSuggestionsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E77FF358;
    v6 = 0;
    CoreSuggestionsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreSuggestionsLibraryCore_frameworkLibrary;
  if (!CoreSuggestionsLibraryCore_frameworkLibrary)
  {
    __getkSuggestionsEKEventAvailabilityStateSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "kSuggestionsEKEventAvailabilityState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSuggestionsEKEventAvailabilityStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSuggestionsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreSuggestionsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A810F404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8112EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81130BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81132AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A811388C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8113B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8114678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A8115A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8116304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A811845C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_1A81190BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A811BD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v37 - 200), 8);
  _Block_object_dispose((v37 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1A811C864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getMKMapItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMKMapItemClass_softClass;
  v7 = getMKMapItemClass_softClass;
  if (!getMKMapItemClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMKMapItemClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getMKMapItemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A811CEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A811D6DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A811E7F8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1A811F600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

void sub_1A81203A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v19 - 72));
  _Unwind_Resume(a1);
}

void sub_1A8121AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8122E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getMKMapItemClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MapKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E77FFCF0;
    v5 = 0;
    MapKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MapKitLibraryCore_frameworkLibrary)
  {
    __getMKMapItemClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MKMapItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMKMapItemClass_block_invoke_cold_1();
  }

  getMKMapItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MapKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A812555C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8129E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8129FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A812A730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A812CE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id gondolaDefaultExtensionName(uint64_t a1)
{
  v1 = EKBundle(a1);
  v2 = [v1 localizedStringForKey:@"FaceTime" value:&stru_1F1B49D68 table:0];

  return v2;
}

void sub_1A8130990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8131750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8135654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_1A8139D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 176), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_1A8146588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8147EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 128));
  _Unwind_Resume(a1);
}

void sub_1A8149008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8149398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8149A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A814AA84(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Unwind_Resume(a1);
}

void sub_1A814C8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814CA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814D154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814D378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A814D764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A814E670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814E82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814F1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814F368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814FBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8150748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81528A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8153014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8153350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8153624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81538A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8153BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8153E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81540A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8154818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81556DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81558FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8155A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8155E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81564D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8156D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8156FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81593C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81596F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8159AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815A434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A815A608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815A7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815A964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815AB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815AD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815B410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815C344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815C768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815C8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815CE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815D284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815D6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815DDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815DFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815E258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815E3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815EDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815F484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815FA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815FD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A81603C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A816072C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81608F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8160C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8161150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A816147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8162484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8162668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8164154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8165C00(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose(&STACK[0x3E0], 8);
  _Block_object_dispose(&STACK[0x410], 8);
  _Block_object_dispose(&STACK[0x440], 8);
  _Block_object_dispose(&STACK[0x470], 8);
  _Block_object_dispose(&STACK[0x4A0], 8);
  _Unwind_Resume(a1);
}

void sub_1A8166C14(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

void sub_1A816784C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81686D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A8168C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8169418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A816BED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A816C10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A816C300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A816ECA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A816EF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A816F0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A816FF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81700FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81702E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A817056C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81709B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8171048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8171684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81718BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8171AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8171DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A817214C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81722A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8172428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8172C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8172FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___shouldUseLegacyAccessBehavior_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v4 = [v1 objectForKey:@"com.apple.private.calendar.has-adopted-modern-request-access-methods"];

  v2 = v4;
  if (v4)
  {
    v3 = [v4 BOOLValue] ^ 1;
    v2 = v4;
    _shouldUseLegacyAccessBehavior_forceLegacyBehavior = v3;
  }
}

void OUTLINED_FUNCTION_20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_24(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

id getREMAlarmTimeIntervalTriggerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMAlarmTimeIntervalTriggerClass_softClass;
  v7 = getREMAlarmTimeIntervalTriggerClass_softClass;
  if (!getREMAlarmTimeIntervalTriggerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMAlarmTimeIntervalTriggerClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMAlarmTimeIntervalTriggerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A81778F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getREMAlarmDateTriggerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMAlarmDateTriggerClass_softClass;
  v7 = getREMAlarmDateTriggerClass_softClass;
  if (!getREMAlarmDateTriggerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMAlarmDateTriggerClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMAlarmDateTriggerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A81779D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getREMAlarmLocationTriggerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMAlarmLocationTriggerClass_softClass;
  v7 = getREMAlarmLocationTriggerClass_softClass;
  if (!getREMAlarmLocationTriggerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMAlarmLocationTriggerClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMAlarmLocationTriggerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8177AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMAlarmTimeIntervalTriggerClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_3();
  result = objc_getClass("REMAlarmTimeIntervalTrigger");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMAlarmTimeIntervalTriggerClass_block_invoke_cold_1();
  }

  getREMAlarmTimeIntervalTriggerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ReminderKitLibrary_3()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_5)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __ReminderKitLibraryCore_block_invoke_5;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E78013E8;
    v2 = 0;
    ReminderKitLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_5)
  {
    ReminderKitLibrary_cold_1_3(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ReminderKitLibraryCore_block_invoke_5(uint64_t a1)
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_5 = result;
  return result;
}

Class __getREMAlarmDateTriggerClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_3();
  result = objc_getClass("REMAlarmDateTrigger");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMAlarmDateTriggerClass_block_invoke_cold_1();
  }

  getREMAlarmDateTriggerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMAlarmLocationTriggerClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_3();
  result = objc_getClass("REMAlarmLocationTrigger");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMAlarmLocationTriggerClass_block_invoke_cold_1();
  }

  getREMAlarmLocationTriggerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t a1)
{

  return NSRequestConcreteImplementation();
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1, uint64_t a2)
{

  return objc_opt_class();
}

id EKBundle(uint64_t a1)
{
  if (EKBundle_onceToken != -1)
  {
    EKBundle_cold_1();
  }

  v2 = EKBundle_eventKitBundle;

  return v2;
}

uint64_t __EKBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.eventkit"];
  v1 = EKBundle_eventKitBundle;
  EKBundle_eventKitBundle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id EKUtils_AdjustedAttendeeAddress(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 length])
    {
      if ([v2 hasPrefix:@"mailto:"])
      {
        [v2 substringFromIndex:7];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"mailto:", v2];
      }
      v3 = ;
    }

    else
    {
      v3 = v2;
    }

    v5 = v3;
  }

  else
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      EKUtils_AdjustedAttendeeAddress_cold_1(v4);
    }

    v5 = 0;
  }

  return v5;
}

BOOL EKUIAttendeeUtils_AttendeeHasResponded(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 participantStatus] > 1;
  }

  else
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      EKUIAttendeeUtils_AttendeeHasResponded_cold_1(v4);
    }

    v3 = 0;
  }

  return v3;
}

uint64_t identityIsEqualToIdentity(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 emailAddress];
  v6 = [v4 phoneNumber];
  v7 = [v4 URL];

  v8 = [v3 emailAddress];
  v9 = [v3 phoneNumber];
  v10 = [v3 URL];

  v11 = [v7 absoluteString];
  v12 = [v10 absoluteString];
  v13 = doURLsEmailsPhoneNumbersMatch();

  return v13;
}

__CFString *EKRedaction(const void *a1, CC_LONG a2, const void *a3, CC_LONG a4)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(&v12, 0, sizeof(v12));
  CC_SHA256_Init(&v12);
  if (a3 && a4)
  {
    CC_SHA256_Update(&v12, a3, a4);
LABEL_5:
    CC_SHA256_Update(&v12, a1, a2);
    CC_SHA256_Final(md, &v12);
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:md length:6 freeWhenDone:0];
    v9 = [v8 base64EncodedDataWithOptions:0];
    v13 = 62;
    [v9 getBytes:v14 length:8];
    v14[4] = 60;
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v13];

    goto LABEL_7;
  }

  if (os_variant_has_internal_diagnostics())
  {
    goto LABEL_5;
  }

  CC_SHA256_Final(md, &v12);
  v10 = @"<EKRedacted>";
LABEL_7:

  return v10;
}

__CFString *EKUUIDString()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  v2 = CFUUIDCreateString(v0, v1);
  CFRelease(v1);

  return v2;
}

uint64_t EKDatabasePerformMigrationIfNeeded()
{
  v0 = objc_alloc_init(EKEventStore);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v1 = [(EKEventStore *)v0 connection];
  v2 = [v1 CADOperationProxySync];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __EKDatabasePerformMigrationIfNeeded_block_invoke;
  v5[3] = &unk_1E77FD310;
  v5[4] = &v6;
  [v2 CADMigrateDatabaseIfNeeded:v5];

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_1A817FA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __EKDatabasePerformMigrationIfNeeded_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __EKDatabasePerformMigrationIfNeeded_block_invoke_cold_1(v2, v3);
    }
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }
}

void sub_1A8181158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t EKEventStore.EventStoreChanged.changedObjectIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void EKEventStore.EventStoreChanged.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 257;
}

uint64_t static EKEventStore.EventStoreChanged.makeMessage(_:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A81ACA04();
  if (!result)
  {
    v11 = 0;
    v7 = 0;
    v15 = 1;
    goto LABEL_30;
  }

  v3 = result;
  v23 = sub_1A81ACCC4();
  v24 = v4;
  sub_1A81ACEF4();
  if (*(v3 + 16) && (v5 = sub_1A81823E8(v22), (v6 & 1) != 0))
  {
    sub_1A8182480(*(v3 + 56) + 32 * v5, &v23);
    sub_1A818242C(v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2628, &qword_1A81C3F50);
    if (swift_dynamicCast())
    {
      v7 = v19;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_1A818242C(v22);
    v7 = 0;
  }

  v20 = sub_1A81ACCC4();
  sub_1A81ACEF4();
  if (!*(v3 + 16) || (v8 = sub_1A81823E8(v22), (v9 & 1) == 0))
  {
    sub_1A818242C(v22);
    goto LABEL_15;
  }

  sub_1A8182480(*(v3 + 56) + 32 * v8, &v23);
  sub_1A818242C(v22);
  sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v11 = 0;
    v10 = 0;
    goto LABEL_16;
  }

  sub_1A81ACD84();
  v10 = v20;
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = [v10 unsignedIntegerValue];

LABEL_16:
  v23 = sub_1A81ACCC4();
  v24 = v12;
  sub_1A81ACEF4();
  if (!*(v3 + 16) || (v13 = sub_1A81823E8(v22), (v14 & 1) == 0))
  {
    sub_1A818242C(v22);
    goto LABEL_21;
  }

  sub_1A8182480(*(v3 + 56) + 32 * v13, &v23);
  sub_1A818242C(v22);
  if (!swift_dynamicCast())
  {
LABEL_21:
    v15 = 1;
    goto LABEL_22;
  }

  v15 = v20;
LABEL_22:
  v21 = sub_1A81ACCC4();
  sub_1A81ACEF4();
  if (!*(v3 + 16) || (v16 = sub_1A81823E8(v22), (v17 & 1) == 0))
  {

    result = sub_1A818242C(v22);
    goto LABEL_30;
  }

  sub_1A8182480(*(v3 + 56) + 32 * v16, &v23);

  sub_1A818242C(v22);

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_30:
    v18 = 256;
    goto LABEL_31;
  }

  if (v21)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

LABEL_31:
  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v18 | v15;
  return result;
}

uint64_t static EKEventStore.EventStoreChanged.makeNotification(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2630, &qword_1A81C3F58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A81C3F40;
  sub_1A81ACCC4();

  sub_1A81ACEF4();
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v7 = sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
  *(inited + 96) = v7;
  *(inited + 72) = v6;
  sub_1A81ACCC4();
  sub_1A81ACEF4();
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 168) = v7;
  *(inited + 144) = v8;
  *&v18[0] = sub_1A81ACCC4();
  *(&v18[0] + 1) = v9;
  sub_1A81ACEF4();
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 240) = v7;
  *(inited + 216) = v10;
  sub_1A8182F48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2638, &qword_1A81C3F60);
  swift_arrayDestroy();
  if (v1)
  {
    sub_1A81ACCC4();
    *(&v16 + 1) = v11;
    sub_1A81ACEF4();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2628, &qword_1A81C3F50);
    *&v16 = v1;
    sub_1A8183084(&v16, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A8182834(v15, v18, isUniquelyReferenced_nonNull_native);
    sub_1A818242C(v18);
  }

  memset(v18, 0, 32);
  v13 = @"EKEventStoreChangedNotification";
  return sub_1A81AC9F4();
}

uint64_t static NSNotificationCenter.MessageIdentifier<>.changed.getter()
{
  v0 = sub_1A8183094();

  return MEMORY[0x1EEDC6400](&type metadata for EKEventStore.EventStoreChanged, v0);
}

unint64_t sub_1A81823E8(uint64_t a1)
{
  v2 = sub_1A81ACEC4();

  return sub_1A81825E0(a1, v2);
}

uint64_t sub_1A8182480(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t sub_1A8182524(uint64_t a1)
{
  v2 = sub_1A81ACE14();

  return sub_1A81826A8(a1, v2);
}

unint64_t sub_1A8182568(uint64_t a1, uint64_t a2)
{
  sub_1A81AD0C4();
  sub_1A81ACCD4();
  v4 = sub_1A81AD0E4();

  return sub_1A818277C(a1, a2, v4);
}

unint64_t sub_1A81825E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A8183394(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC5687D0](v9, a1);
      sub_1A818242C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1A81826A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A81ACE24();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1A818277C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1A81AD074())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_1A8182834(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A81823E8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A8192F50();
      goto LABEL_7;
    }

    sub_1A8191D90(v13, a3 & 1);
    v19 = sub_1A81823E8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A8183394(a2, v21);
      return sub_1A8192DDC(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1A81AD0B4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_1A8183084(a1, v17);
}

id sub_1A8182980(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A8182524(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1A81930F4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1A8192048(v13, a3 & 1);
    v8 = sub_1A8182524(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
      result = sub_1A81AD0B4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  else
  {
    sub_1A8192E58(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_1A8182AC8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A8182568(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A8193258();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A81922B8(v16, a4 & 1);
    v11 = sub_1A8182568(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1A81AD0B4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1A8183084(a1, v22);
  }

  else
  {
    sub_1A8192E9C(v11, a2, a3, a1, v21);
  }
}

id sub_1A8182C98(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(uint64_t, void *, uint64_t, uint64_t))
{
  v10 = v6;
  v13 = *v6;
  v14 = sub_1A8182524(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = sub_1A8182524(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
      v14 = sub_1A81AD0B4();
      __break(1u);
      return MEMORY[0x1EEE66BB8](v14, v26);
    }
  }

LABEL_8:
  v24 = *v10;
  if (v20)
  {
    v25 = *(v24 + 56);
    v26 = *(v25 + 8 * v14);
    *(v25 + 8 * v14) = a1;

    return MEMORY[0x1EEE66BB8](v14, v26);
  }

  a6(v14, a2, a1, v24);

  return a2;
}

uint64_t sub_1A8182E00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A8182568(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A8193574();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A81927F8(v16, a4 & 1);
    v11 = sub_1A8182568(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1A81AD0B4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1A8192F08(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1A8182F48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28A0, &qword_1A81C4380);
    v3 = sub_1A81AD044();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A81833F0(v4, v13, &qword_1EB2E2638, &qword_1A81C3F60);
      result = sub_1A81823E8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A8183084(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_1A8183084(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1A8183094()
{
  result = qword_1EB2E2640;
  if (!qword_1EB2E2640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E2640);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A81830FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
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

uint64_t sub_1A8183158(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A81831D0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

unint64_t sub_1A8183264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28B0, &qword_1A81C4390);
    v3 = sub_1A81AD044();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A81833F0(v4, &v13, &qword_1EB2E2658, &unk_1A81C4030);
      v5 = v13;
      v6 = v14;
      result = sub_1A8182568(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A8183084(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A81833F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A818346C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1A8183564()
{
  v0 = sub_1A81ACC64();
  __swift_allocate_value_buffer(v0, qword_1EB2E3378);
  __swift_project_value_buffer(v0, qword_1EB2E3378);
  return sub_1A81ACC54();
}

uint64_t sub_1A81835DC()
{
  v0 = sub_1A81ACC64();
  __swift_allocate_value_buffer(v0, qword_1EB2E3390);
  __swift_project_value_buffer(v0, qword_1EB2E3390);
  return sub_1A81ACC54();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id EKRecurrenceRule.init(recurrenceRule:)(uint64_t a1)
{
  v2 = sub_1A81ACB34();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A81ACBF4();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v53 - v8;
  v9 = sub_1A81ACA74();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v16 = sub_1A81ACC34();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A81ACBC4();
  sub_1A81ACA94();
  v20 = v16;
  v21 = a1;
  (*(v17 + 8))(v19, v20);
  (*(v10 + 104))(v13, *MEMORY[0x1E6969868], v9);
  sub_1A8183E78();
  v22 = sub_1A81ACCA4();
  v23 = *(v10 + 8);
  v23(v13, v9);
  v23(v15, v9);
  v24 = 0;
  if (v22)
  {
    v25 = v57;
    sub_1A81ACC04();
    v26 = v58;
    v27 = v25;
    v28 = v59;
    (*(v58 + 32))(v7, v27, v59);
    v29 = (*(v26 + 88))(v7, v28);
    if (v29 == *MEMORY[0x1E6969918])
    {
      v59 = 0;
    }

    else
    {
      if (v29 == *MEMORY[0x1E6969930])
      {
        v30 = 1;
      }

      else if (v29 == *MEMORY[0x1E6969940])
      {
        v30 = 2;
      }

      else
      {
        if (v29 != *MEMORY[0x1E6969938])
        {
          (*(v26 + 8))(v7, v28);
          v24 = 0;
          goto LABEL_32;
        }

        v30 = 3;
      }

      v59 = v30;
    }

    v58 = sub_1A81ACBD4();
    v31 = sub_1A81ACBE4();
    v32 = sub_1A8184EE8(v31);

    v33 = *(sub_1A81ACAD4() + 16);

    if (v33)
    {
      v34 = sub_1A81ACAD4();
    }

    else
    {
      v34 = 0;
    }

    v35 = sub_1A81ACB94();
    v36 = sub_1A8185634(v35);

    v37 = *(sub_1A81ACB84() + 16);

    if (v37)
    {
      v38 = sub_1A81ACB84();
    }

    else
    {
      v38 = 0;
    }

    v39 = *(sub_1A81ACAC4() + 16);

    if (v39)
    {
      v40 = sub_1A81ACAC4();
    }

    else
    {
      v40 = 0;
    }

    v41 = *(sub_1A81ACAB4() + 16);

    if (v41)
    {
      v42 = sub_1A81ACAB4();
    }

    else
    {
      v42 = 0;
    }

    v43 = v54;
    v44 = v21;
    sub_1A81ACB44();
    v45 = sub_1A81857E4();
    (*(v55 + 8))(v43, v56);
    if (v32)
    {
      sub_1A81831D0(0, &qword_1EB2E2688, off_1E77FBB08);
      v46 = sub_1A81ACD04();

      if (v34)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v46 = 0;
      if (v34)
      {
LABEL_25:
        sub_1A8183ED0(v34);

        sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
        v47 = sub_1A81ACD04();

        if (!v36)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    v47 = 0;
    if (!v36)
    {
LABEL_27:
      if (v38)
      {
        sub_1A8183ED0(v38);

        sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
        v48 = sub_1A81ACD04();

        if (v40)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v48 = 0;
        if (v40)
        {
LABEL_29:
          sub_1A8183ED0(v40);

          sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
          v49 = sub_1A81ACD04();

          if (!v42)
          {
LABEL_31:
            v50 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v24 = [v50 initRecurrenceWithFrequency:v59 interval:v58 daysOfTheWeek:v46 daysOfTheMonth:v47 monthsOfTheYear:v36 weeksOfTheYear:v48 daysOfTheYear:v49 setPositions:v42 end:v45];

            v21 = v44;
            goto LABEL_32;
          }

LABEL_30:
          sub_1A8183ED0(v42);

          sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
          v42 = sub_1A81ACD04();

          goto LABEL_31;
        }
      }

      v49 = 0;
      if (!v42)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_26:
    sub_1A8183ED0(v36);

    sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
    v36 = sub_1A81ACD04();

    goto LABEL_27;
  }

LABEL_32:
  v51 = sub_1A81ACC14();
  (*(*(v51 - 8) + 8))(v21, v51);
  return v24;
}

unint64_t sub_1A8183E78()
{
  result = qword_1EB2E2680;
  if (!qword_1EB2E2680)
  {
    sub_1A81ACA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E2680);
  }

  return result;
}

uint64_t sub_1A8183ED0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1A81ACF94();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_1A81ACDB4();
      sub_1A81ACF74();
      sub_1A81ACFA4();
      sub_1A81ACFB4();
      sub_1A81ACF84();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t EKRecurrenceRule.calendarRecurrenceRule.getter@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v2 = sub_1A81ACC24();
  v97 = *(v2 - 8);
  v98 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v99 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A81ACAA4();
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v96 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A81ACA74();
  v92 = *(v6 - 8);
  v93 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1A81ACC34();
  v84 = *(v102 - 8);
  v9 = MEMORY[0x1EEE9AC00](v102);
  v90 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v72 - v11;
  v75 = sub_1A81ACA54();
  v74 = *(v75 - 8);
  v13 = MEMORY[0x1EEE9AC00](v75);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v72 - v16;
  v91 = sub_1A81ACB34();
  v89 = *(v91 - 8);
  v17 = MEMORY[0x1EEE9AC00](v91);
  v88 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v72 - v19;
  v21 = sub_1A81ACBF4();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v86 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v72 - v25;
  v27 = [v1 frequency];
  v87 = v22;
  v28 = *(v22 + 104);
  if ((v27 - 1) > 2)
  {
    v29 = MEMORY[0x1E6969918];
  }

  else
  {
    v29 = qword_1E7801650[(v27 - 1)];
  }

  v30 = *v29;
  v101 = v26;
  v31 = v21;
  v28(v26, v30, v21);
  v85 = [v1 interval];
  v32 = [v1 daysOfTheWeek];
  if (v32)
  {
    v33 = v32;
    sub_1A81831D0(0, &qword_1EB2E2688, off_1E77FBB08);
    v34 = sub_1A81ACD14();
  }

  else
  {
    v34 = 0;
  }

  v83 = sub_1A81859BC(v34);

  v35 = [v1 daysOfTheMonth];
  if (v35 && (v36 = v35, sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98), v37 = sub_1A81ACD14(), v36, v38 = sub_1A81849D8(v37), , v38))
  {
    v82 = v38;
  }

  else
  {

    v82 = MEMORY[0x1E69E7CC0];
  }

  v39 = [v1 monthsOfTheYear];
  if (v39)
  {
    sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
    v40 = sub_1A81ACD14();

    v39 = sub_1A81849D8(v40);
  }

  v81 = sub_1A8185E10(v39);

  v41 = [v1 weeksOfTheYear];
  if (v41 && (v42 = v41, sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98), v43 = sub_1A81ACD14(), v42, v44 = sub_1A81849D8(v43), , v44))
  {
    v80 = v44;
  }

  else
  {

    v80 = MEMORY[0x1E69E7CC0];
  }

  v45 = [v1 daysOfTheYear];
  if (v45 && (v46 = v45, sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98), v47 = sub_1A81ACD14(), v46, v48 = sub_1A81849D8(v47), , v48))
  {
    v79 = v48;
  }

  else
  {

    v79 = MEMORY[0x1E69E7CC0];
  }

  v49 = [v1 setPositions];
  if (!v49 || (v50 = v49, sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98), v51 = sub_1A81ACD14(), v50, v52 = sub_1A81849D8(v51), , !v52))
  {

    v52 = MEMORY[0x1E69E7CC0];
  }

  v53 = [v1 recurrenceEnd];
  v78 = v52;
  if (v53)
  {
    v54 = v53;
    v55 = [v54 endDate];
    if (v55)
    {
      v56 = v55;
      sub_1A81ACA44();

      v57 = v74;
      v58 = v73;
      v59 = v75;
      (*(v74 + 32))(v73, v15, v75);
      v60 = v20;
      sub_1A81ACB24();

      (*(v57 + 8))(v58, v59);
    }

    else
    {
      [v54 occurrenceCount];
      v60 = v20;
      sub_1A81ACAF4();
    }
  }

  else
  {
    v60 = v20;
    sub_1A81ACB14();
  }

  v62 = v92;
  v61 = v93;
  (*(v92 + 104))(v8, *MEMORY[0x1E6969868], v93);
  v63 = v12;
  sub_1A81ACA84();
  (*(v62 + 8))(v8, v61);
  v64 = v84;
  (*(v84 + 16))(v90, v63, v102);
  v65 = v87;
  v66 = *(v87 + 16);
  v77 = v31;
  v66(v86, v101, v31);
  v67 = v89;
  v68 = *(v89 + 16);
  v76 = v60;
  v69 = v60;
  v70 = v91;
  v68(v88, v69, v91);
  (*(v94 + 104))(v96, *MEMORY[0x1E69698A0], v95);
  (*(v97 + 104))(v99, *MEMORY[0x1E69699C8], v98);
  sub_1A81ACBB4();
  (*(v64 + 8))(v63, v102);
  (*(v67 + 8))(v76, v70);
  return (*(v65 + 8))(v101, v77);
}

uint64_t sub_1A81849D8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A81ACE94())
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1A8184B60(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_1A81ACE94();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x1AC568850](0, a1);
LABEL_10:
  v6 = v5;
  sub_1A81ACDC4();

  return 0;
}

char *sub_1A8184B60(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A8184C08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A8184B80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A8184D0C(a1, a2, a3, *v3, &qword_1EB2E26A8, &unk_1A81C4070, MEMORY[0x1E6969910]);
  *v3 = result;
  return result;
}

void *sub_1A8184BC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A8184D0C(a1, a2, a3, *v3, &qword_1EB2E2698, &qword_1A81C4060, MEMORY[0x1E69698E8]);
  *v3 = result;
  return result;
}

char *sub_1A8184C08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2690, &qword_1A81C4058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1A8184D0C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1A8184EE8(uint64_t a1)
{
  v64 = sub_1A81ACA64();
  v2 = *(v64 - 8);
  v3 = MEMORY[0x1EEE9AC00](v64);
  v46 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v39[-v6];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v50 = &v39[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39[-v10];
  v12 = sub_1A81ACBA4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39[-v17];
  v19 = MEMORY[0x1E69E7CC0];
  v65 = MEMORY[0x1E69E7CC0];
  v63 = a1;
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_47;
  }

  v47 = v7;
  v20 = 0;
  v21 = v13 + 16;
  v61 = (v13 + 88);
  v60 = *MEMORY[0x1E6969900];
  v49 = *MEMORY[0x1E69698F0];
  v59 = (v13 + 8);
  v54 = (v2 + 32);
  v55 = (v13 + 96);
  v52 = (v2 + 88);
  v53 = (v2 + 16);
  v51 = *MEMORY[0x1E69696C8];
  v48 = *MEMORY[0x1E69696C0];
  v45 = *MEMORY[0x1E69696D0];
  v44 = *MEMORY[0x1E69696E8];
  v42 = *MEMORY[0x1E69696E0];
  v57 = (v2 + 8);
  v41 = *MEMORY[0x1E69696B8];
  v40 = *MEMORY[0x1E69696D8];
  v56 = v11;
  v22 = v58;
  v62 = v13 + 16;
  do
  {
    v43 = v19;
    v23 = v20;
    while (1)
    {
      if (v23 >= v22)
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v28 = *(v13 + 16);
      v19 = v21;
      v28(v18, v63 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23, v12);
      v20 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_52;
      }

      v28(v16, v18, v12);
      v29 = (*v61)(v16, v12);
      if (v29 == v60)
      {
        (*v55)(v16, v12);
        v30 = v64;
        (*v54)(v11, v16, v64);
        v31 = v50;
        (*v53)(v50, v11, v30);
        v32 = (*v52)(v31, v30);
        if (v32 == v51)
        {
          v24 = 0;
          goto LABEL_5;
        }

        if (v32 == v48)
        {
          v24 = 0;
          v25 = 2;
          goto LABEL_6;
        }

        if (v32 == v45)
        {
          v24 = 0;
          v25 = 3;
          goto LABEL_6;
        }

        if (v32 == v44)
        {
          v24 = 0;
          v25 = 4;
          goto LABEL_6;
        }

        if (v32 == v42)
        {
          v24 = 0;
          v25 = 5;
          goto LABEL_6;
        }

        if (v32 == v41)
        {
          v24 = 0;
          v25 = 6;
          goto LABEL_6;
        }

        v24 = 0;
        if (v32 != v40)
        {
          v37 = v50;
          goto LABEL_41;
        }
      }

      else
      {
        if (v29 != v49)
        {
          v19 = v59;
          v36 = *v59;
          (*v59)(v16, v12);
          v36(v18, v12);
          goto LABEL_7;
        }

        (*v55)(v16, v12);
        v24 = *v16;
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E26A0, &qword_1A81C4068);
        v11 = v47;
        v19 = v64;
        (*v54)(v47, (v16 + *(v33 + 48)), v64);
        v34 = v46;
        (*v53)(v46, v11, v19);
        v35 = (*v52)(v34, v19);
        if (v35 == v51)
        {
          goto LABEL_5;
        }

        if (v35 == v48)
        {
          v11 = v47;
          v25 = 2;
          goto LABEL_6;
        }

        if (v35 == v45)
        {
          v11 = v47;
          v25 = 3;
          goto LABEL_6;
        }

        if (v35 == v44)
        {
          v11 = v47;
          v25 = 4;
          goto LABEL_6;
        }

        if (v35 == v42)
        {
          v11 = v47;
          v25 = 5;
          goto LABEL_6;
        }

        if (v35 == v41)
        {
          v11 = v47;
          v25 = 6;
          goto LABEL_6;
        }

        if (v35 != v40)
        {
          v37 = v46;
          v11 = v47;
LABEL_41:
          (*v57)(v37, v64);
LABEL_5:
          v25 = 1;
          goto LABEL_6;
        }

        v11 = v47;
      }

      v25 = 7;
LABEL_6:
      (*v57)(v11, v64);
      v26 = [objc_allocWithZone(EKRecurrenceDayOfWeek) initWithDayOfTheWeek:v25 weekNumber:v24];
      v27 = (*v59)(v18, v12);
      v11 = v56;
      v22 = v58;
      if (v26)
      {
        break;
      }

LABEL_7:
      ++v23;
      v21 = v62;
      if (v20 == v22)
      {
        v19 = v43;
        goto LABEL_47;
      }
    }

    MEMORY[0x1AC5685F0](v27);
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A81ACD24();
    }

    sub_1A81ACD34();
    v19 = v65;
    v22 = v58;
    v21 = v62;
  }

  while (v20 != v58);
LABEL_47:
  if (v19 >> 62)
  {
LABEL_53:
    if (!sub_1A81ACE94())
    {
LABEL_49:

      return 0;
    }
  }

  else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_49;
  }

  return v19;
}

uint64_t sub_1A8185634(uint64_t a1)
{
  v19 = sub_1A81ACB64();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1A8184B60(0, v5, 0);
  v6 = v20;
  v8 = *(v2 + 16);
  v7 = v2 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v17 = *(v7 + 56);
  v18 = v8;
  v10 = (v7 - 8);
  do
  {
    v11 = v19;
    v12 = v7;
    v18(v4, v9, v19);
    v13 = sub_1A81ACB54();
    (*v10)(v4, v11);
    v20 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1A8184B60((v14 > 1), v15 + 1, 1);
      v6 = v20;
    }

    *(v6 + 16) = v15 + 1;
    *(v6 + 8 * v15 + 32) = v13;
    v9 += v17;
    --v5;
    v7 = v12;
  }

  while (v5);
  return v6;
}

id sub_1A81857E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2E2810, &qword_1A81C4330);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_1A81ACA54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A81ACB04();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1A8185F9C(v2);
    v7 = sub_1A81ACAE4();
    if (v8)
    {
      return 0;
    }

    else
    {
      return [objc_allocWithZone(EKRecurrenceEnd) initWithOccurrenceCount_];
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v10 = objc_allocWithZone(EKRecurrenceEnd);
    v11 = sub_1A81ACA34();
    v12 = [v10 initWithEndDate_];

    (*(v4 + 8))(v6, v3);
    return v12;
  }
}

uint64_t sub_1A81859BC(unint64_t a1)
{
  v38 = sub_1A81ACA64();
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A81ACBA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v27 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v40 = MEMORY[0x1E69E7CC0];
  sub_1A8184B80(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v9 = v40;
    v11 = a1;
    v36 = a1 & 0xC000000000000001;
    v23 = *MEMORY[0x1E69696D8];
    v33 = (v2 + 104);
    v26 = *MEMORY[0x1E69696B8];
    HIDWORD(v22) = *MEMORY[0x1E69696E0];
    v25 = *MEMORY[0x1E69696E8];
    LODWORD(v22) = *MEMORY[0x1E69696D0];
    v24 = *MEMORY[0x1E69696C0];
    v31 = v5 + 32;
    v32 = (v2 + 32);
    v28 = *MEMORY[0x1E69696C8];
    v12 = *MEMORY[0x1E6969900];
    v29 = *MEMORY[0x1E69698F0];
    v30 = v12;
    v34 = v4;
    v35 = a1;
    while (1)
    {
      if (v36)
      {
        v13 = MEMORY[0x1AC568850](v10, v11);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v8 = sub_1A81ACE94();
          goto LABEL_4;
        }

        if (v10 >= *(v27 + 16))
        {
          goto LABEL_31;
        }

        v13 = *(v11 + 8 * v10 + 32);
      }

      v2 = v13;
      v14 = [v13 dayOfTheWeek];
      a1 = v14;
      if (v14 <= 3)
      {
        v15 = v28;
        if (v14 != 1)
        {
          v15 = v24;
          if (v14 != 2)
          {
            v15 = v22;
            if (v14 != 3)
            {
              goto LABEL_34;
            }
          }
        }
      }

      else if (v14 > 5)
      {
        v15 = v26;
        if (v14 != 6)
        {
          v15 = v23;
          if (v14 != 7)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        v15 = v25;
        if (v14 != 4)
        {
          v15 = HIDWORD(v22);
        }
      }

      (*v33)(v37, v15, v38);
      v16 = [v2 weekNumber];
      v17 = v7;
      v18 = v30;
      if (v16)
      {
        v17 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E26A0, &qword_1A81C4068) + 48)];
        *v7 = v16;
        v18 = v29;
      }

      (*v32)(v17, v37, v38);
      v19 = v34;
      (*(v5 + 104))(v7, v18, v34);

      v40 = v9;
      v4 = *(v9 + 16);
      v20 = *(v9 + 24);
      a1 = v4 + 1;
      if (v4 >= v20 >> 1)
      {
        sub_1A8184B80((v20 > 1), v4 + 1, 1);
        v9 = v40;
      }

      ++v10;
      *(v9 + 16) = a1;
      (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v7, v19);
      v11 = v35;
      if (v8 == v10)
      {
        return v9;
      }
    }
  }

  __break(1u);
LABEL_34:
  type metadata accessor for EKWeekday(0);
  v39 = a1;
  result = sub_1A81AD094();
  __break(1u);
  return result;
}

uint64_t sub_1A8185E10(uint64_t a1)
{
  v2 = sub_1A81ACB64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1A8184BC4(0, v6, 0);
    v7 = v13;
    v8 = a1 + 32;
    do
    {
      v8 += 8;
      sub_1A81ACB74();
      v13 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1A8184BC4((v9 > 1), v10 + 1, 1);
        v7 = v13;
      }

      *(v7 + 16) = v10 + 1;
      (*(v3 + 32))(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v5, v2);
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1A8185F9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2E2810, &qword_1A81C4330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LocationSearchResults.contactsSearchResults.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t LocationSearchResults.recentsSearchResults.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t LocationSearchResults.frequentsSearchResults.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t LocationSearchResults.eventsSearchResults.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t LocationSearchResults.textualSearchResults.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t LocationSearchResults.conferenceRoomSearchResults.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t LocationSearchResults.mapSearchResults.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1A8186250()
{
  v0 = sub_1A81ACC64();
  __swift_allocate_value_buffer(v0, qword_1EB2E33A8);
  v1 = __swift_project_value_buffer(v0, qword_1EB2E33A8);
  if (qword_1EB2E2610 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB2E3390);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static LocationSearch.search(for:eventStore:supportedSearchTypes:eventID:startDate:endDate:sourceID:shouldIssueAvailabilityRequest:conferenceRoomNamesToExclude:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v19;
  *(v8 + 160) = v18;
  *(v8 + 168) = v20;
  *(v8 + 144) = v17;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v10 = sub_1A81ACA54();
  *(v8 + 176) = v10;
  *(v8 + 184) = *(v10 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2E2810, &qword_1A81C4330);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a4;
  *(v8 + 232) = v11;
  *(v8 + 240) = v12;
  *(v8 + 248) = sub_1A81ACD84();
  *(v8 + 256) = sub_1A81ACD74();
  v14 = sub_1A81ACD44();
  *(v8 + 264) = v14;
  *(v8 + 272) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1A81864AC, v14, v13);
}

uint64_t sub_1A81864AC()
{
  v2 = (v0 + 216);
  v1 = *(v0 + 216);
  v3 = *(v0 + 232);
  v4 = *(v0 + 224);
  v5 = *(v0 + 184);
  v51 = *(v0 + 240);
  v52 = *(v0 + 176);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v50 = *(v0 + 128);
  sub_1A81833F0(*(v0 + 136), v3, &unk_1EB2E2810, &qword_1A81C4330);
  sub_1A81833F0(v6, v4, &unk_1EB2E2810, &qword_1A81C4330);
  v54 = type metadata accessor for LocationSearch.SearchModelWrapper(0);
  v8 = objc_allocWithZone(v54);
  v9 = OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_continuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E26B0, &qword_1A81C4090);
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  *&v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_store] = v51;
  v11 = &v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_eventID];
  *v11 = v7;
  v11[1] = v50;
  sub_1A81833F0(v3, v1, &unk_1EB2E2810, &qword_1A81C4330);
  v12 = *(v5 + 48);
  if (v12(v1, 1, v52) == 1)
  {
    v13 = *(v0 + 240);

    v14 = v13;
LABEL_5:
    sub_1A8188C34(*v2, &unk_1EB2E2810, &qword_1A81C4330);
    v25 = 0;
    goto LABEL_7;
  }

  v2 = (v0 + 208);
  v15 = *(v0 + 208);
  v16 = *(v0 + 224);
  v17 = *(v0 + 176);
  v18 = *(*(v0 + 184) + 32);
  v18(*(v0 + 200), *(v0 + 216), v17);
  sub_1A81833F0(v16, v15, &unk_1EB2E2810, &qword_1A81C4330);
  v19 = v12(v15, 1, v17);
  v20 = *(v0 + 240);
  if (v19 == 1)
  {
    v21 = *(v0 + 200);
    v22 = *(v0 + 176);
    v23 = *(*(v0 + 184) + 8);
    v24 = v20;

    v23(v21, v22);
    goto LABEL_5;
  }

  v53 = *(v0 + 200);
  v26 = *(v0 + 184);
  v27 = *(v0 + 192);
  v28 = *(v0 + 176);
  v18(v27, *(v0 + 208), v28);
  v29 = objc_allocWithZone(MEMORY[0x1E6992F70]);

  v30 = v20;
  v31 = sub_1A81ACA34();
  v32 = sub_1A81ACA34();
  v25 = [v29 initWithStartDate:v31 endDate:v32];

  v33 = *(v26 + 8);
  v33(v27, v28);
  v33(v53, v28);
LABEL_7:
  v34 = *(v0 + 160);
  *&v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_dateRange] = v25;
  if (v34)
  {
    sub_1A81ACD74();
    sub_1A81ACD44();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v35 = *(v0 + 240);
    v36 = sub_1A81ACCB4();
    v37 = [v35 sourceWithIdentifier_];
  }

  else
  {
    v37 = 0;
  }

  v38 = *(v0 + 240);
  v40 = *(v0 + 224);
  v39 = *(v0 + 232);
  v41 = *(v0 + 168);
  v42 = *(v0 + 344);
  v43 = *(v0 + 112);
  *&v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_source] = v37;
  v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_shouldIssueAvailabilityRequest] = v42;
  *&v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_conferenceRoomNamesToExclude] = v41;
  v44 = objc_allocWithZone(EKLocationSearchModel);

  v45 = [v44 initWithEventStore_];
  *&v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_searchModel] = v45;
  [v45 setSupportedSearchTypes_];
  *(v0 + 72) = v8;
  *(v0 + 80) = v54;
  v46 = objc_msgSendSuper2((v0 + 72), sel_init);
  *(v0 + 280) = v46;
  [*&v46[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_searchModel] setDelegate_];

  sub_1A8188C34(v40, &unk_1EB2E2810, &qword_1A81C4330);
  sub_1A8188C34(v39, &unk_1EB2E2810, &qword_1A81C4330);
  *(v0 + 288) = sub_1A81ACD74();
  v48 = sub_1A81ACD44();
  *(v0 + 296) = v48;
  *(v0 + 304) = v47;

  return MEMORY[0x1EEE6DFA0](sub_1A8186988, v48, v47);
}

uint64_t sub_1A8186988()
{
  v1 = v0[35];
  v3 = v0[12];
  v2 = v0[13];
  v4 = sub_1A81ACD74();
  v0[39] = v4;
  v5 = swift_task_alloc();
  v0[40] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[41] = v6;
  *v6 = v0;
  v6[1] = sub_1A8186AA8;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 2, v4, v7, 0x6628686372616573, 0xEC000000293A726FLL, sub_1A8187084, v5, &type metadata for LocationSearchResults);
}

uint64_t sub_1A8186AA8()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1A8186D0C;
  }

  else
  {

    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1A8186BCC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A8186BCC()
{

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1A8186C30, v1, v2);
}

uint64_t sub_1A8186C30()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 88);

  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *(v2 + 48) = v3;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A8186D0C()
{

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1A8186D84, v1, v2);
}

uint64_t sub_1A8186D84()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t type metadata accessor for LocationSearch.SearchModelWrapper(uint64_t a1)
{
  result = qword_1EB2E2750;
  if (!qword_1EB2E2750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A8186E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2768, &qword_1A81C4230);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E26B0, &qword_1A81C4090);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_continuation;
  swift_beginAccess();
  sub_1A8188BC4(v8, a2 + v11);
  swift_endAccess();
  v12 = *(a2 + OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_searchModel);
  v13 = sub_1A81ACCB4();
  [v12 beginSearchForTerm_];
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1A81870B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1A81870F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
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

uint64_t sub_1A8187174(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1A81871D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationSearch(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LocationSearch(_WORD *result, int a2, int a3)
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

id sub_1A81874C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(a1 + *a5);

  return v7;
}

id sub_1A818760C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_conferenceRoomNamesToExclude);
  if (!v2)
  {
    v11 = 1;
    return (v11 & 1);
  }

  result = [a1 location];
  if (result)
  {
    v4 = result;
    v5 = [result displayName];

    if (v5)
    {
      v6 = sub_1A81ACCC4();
      v8 = v7;

      v13[0] = v6;
      v13[1] = v8;
      MEMORY[0x1EEE9AC00](v9);
      v12[2] = v13;
      v10 = sub_1A8188CA8(sub_1A8188D54, v12, v2);

      v11 = v10 ^ 1;
    }

    else
    {
      v11 = 0;
    }

    return (v11 & 1);
  }

  __break(1u);
  return result;
}

void sub_1A81878B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2768, &qword_1A81C4230);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v88 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v81 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E26B0, &qword_1A81C4090);
  v90 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v81 - v8;
  if (qword_1EB2E2618 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v9 = sub_1A81ACC64();
    v94 = __swift_project_value_buffer(v9, qword_1EB2E33A8);
    v10 = sub_1A81ACC44();
    v11 = sub_1A81ACDD4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A805E000, v10, v11, "search completed", v12, 2u);
      MEMORY[0x1AC569C60](v12, -1, -1);
    }

    v13 = OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_continuation;
    swift_beginAccess();
    v87 = v13;
    sub_1A81833F0(v1 + v13, v6, &qword_1EB2E2768, &qword_1A81C4230);
    v14 = v90;
    if ((*(v90 + 48))(v6, 1, v7) == 1)
    {
      sub_1A8188C34(v6, &qword_1EB2E2768, &qword_1A81C4230);
      v15 = sub_1A81ACC44();
      v16 = sub_1A81ACDE4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1A805E000, v15, v16, "searchCompleted: continuation is nil", v17, 2u);
        MEMORY[0x1AC569C60](v17, -1, -1);
      }

      return;
    }

    (*(v14 + 32))(v89, v6, v7);
    v93 = *(v1 + OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_searchModel);
    v18 = [v93 contactsSearchResults];
    if (v18)
    {
      v19 = v18;
      sub_1A81831D0(0, &qword_1EB2E2780, off_1E77FBBB0);
      v84 = sub_1A81ACD14();
    }

    else
    {
      v84 = 0;
    }

    v20 = [v93 recentsSearchResults];
    v96 = v1;
    v86 = v7;
    if (!v20)
    {
      v97 = 0;
      v98 = 0;
      goto LABEL_35;
    }

    v21 = v20;
    sub_1A81831D0(0, &unk_1EB2E2790, off_1E77FBAF0);
    v22 = sub_1A81ACD14();

    if (v22 >> 62)
    {
      break;
    }

    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_33;
    }

LABEL_14:
    v7 = 0;
    v98 = 0;
    v97 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1AC568850](v7, v22);
      }

      else
      {
        if (v7 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v24 = *(v22 + 8 * v7 + 32);
      }

      v25 = v24;
      v26 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v99 = v24;
      v27 = v98;
      sub_1A818851C(&v99, v1, &v100);
      v98 = v27;

      v6 = v101;
      v28 = v100;
      if (v101 == 255)
      {
        sub_1A8188C94(v100, 255);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1A8197D28(0, *(v97 + 2) + 1, 1, v97);
        }

        v30 = *(v97 + 2);
        v29 = *(v97 + 3);
        if (v30 >= v29 >> 1)
        {
          v97 = sub_1A8197D28((v29 > 1), v30 + 1, 1, v97);
        }

        v31 = v97;
        *(v97 + 2) = v30 + 1;
        v32 = &v31[16 * v30];
        *(v32 + 4) = v28;
        v32[40] = v6 & 1;
        v1 = v96;
      }

      ++v7;
      if (v26 == v23)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v23 = sub_1A81ACE94();
  if (v23)
  {
    goto LABEL_14;
  }

LABEL_33:
  v98 = 0;
  v97 = MEMORY[0x1E69E7CC0];
LABEL_34:

  v7 = v86;
LABEL_35:
  v33 = [v93 frequentsSearchResults];
  if (v33)
  {
    v34 = v33;
    sub_1A81831D0(0, &qword_1EB2E2780, off_1E77FBBB0);
    v83 = sub_1A81ACD14();
  }

  else
  {
    v83 = 0;
  }

  v35 = MEMORY[0x1E69E7CC0];
  v36 = [v93 eventsSearchResults];
  if (v36)
  {
    v37 = v36;
    sub_1A81831D0(0, &qword_1EB2E2788, off_1E77FBBC0);
    v38 = sub_1A81ACD14();

    v100 = v35;
    v39 = v38 & 0xFFFFFFFFFFFFFF8;
    if (v38 >> 62)
    {
      goto LABEL_93;
    }

    for (i = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A81ACE94())
    {
      v41 = 0;
      v85 = MEMORY[0x1E69E7CC0];
      if (!i)
      {
        break;
      }

      while (1)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x1AC568850](v41, v38);
        }

        else
        {
          if (v41 >= *(v39 + 16))
          {
            goto LABEL_90;
          }

          v43 = *(v38 + 8 * v41 + 32);
        }

        v44 = v43;
        v45 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        sub_1A81ACD84();
        sub_1A81ACD74();
        sub_1A81ACD44();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v42 = [v44 location];

        ++v41;
        if (v42)
        {
          MEMORY[0x1AC5685F0]();
          if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A81ACD24();
          }

          sub_1A81ACD34();
          v85 = v100;
          v41 = v45;
          if (i == v45)
          {
            goto LABEL_42;
          }
        }

        else if (i == v41)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      ;
    }

LABEL_42:

    v1 = v96;
    v7 = v86;
    v35 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v85 = 0;
  }

  v46 = [v93 textualSearchResults];
  if (v46)
  {
    v47 = v46;
    sub_1A81831D0(0, &qword_1EB2E2780, off_1E77FBBB0);
    v48 = sub_1A81ACD14();
  }

  else
  {
    v48 = 0;
  }

  v49 = [v93 conferenceRoomSearchResults];
  if (v49)
  {
    v50 = v49;
    sub_1A81831D0(0, &qword_1EB2E2778, off_1E77FB8B0);
    v51 = sub_1A81ACD14();

    v100 = v35;
    v38 = v51 & 0xFFFFFFFFFFFFFF8;
    if (v51 >> 62)
    {
      v53 = sub_1A81ACE94();
    }

    else
    {
      v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v81 = v48;
    if (v53)
    {
      v54 = 0;
      v39 = v51 & 0xC000000000000001;
      v82 = MEMORY[0x1E69E7CC0];
      *&v52 = 138412290;
      v91 = v52;
      v92 = v51;
      while (1)
      {
        while (1)
        {
          if (v39)
          {
            v55 = MEMORY[0x1AC568850](v54, v51);
          }

          else
          {
            if (v54 >= *(v38 + 16))
            {
              goto LABEL_92;
            }

            v55 = *(v51 + 8 * v54 + 32);
          }

          v56 = v55;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_91;
          }

          v96 = v54 + 1;
          sub_1A81ACD84();
          v95 = sub_1A81ACD74();
          sub_1A81ACD44();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v57 = [v56 location];
          if (v57)
          {
            break;
          }

LABEL_75:
          v60 = v56;
          v61 = sub_1A81ACC44();
          v62 = sub_1A81ACDE4();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = v39;
            v65 = v53;
            v66 = v1;
            v67 = v38;
            v68 = swift_slowAlloc();
            *v63 = v91;
            *(v63 + 4) = v60;
            *v68 = v60;
            v69 = v60;
            _os_log_impl(&dword_1A805E000, v61, v62, "failed to create conference room model from conference room: %@", v63, 0xCu);
            sub_1A8188C34(v68, &qword_1EB2E2870, &qword_1A81C4238);
            v70 = v68;
            v38 = v67;
            v1 = v66;
            v53 = v65;
            v39 = v64;
            MEMORY[0x1AC569C60](v70, -1, -1);
            v71 = v63;
            v51 = v92;
            MEMORY[0x1AC569C60](v71, -1, -1);
          }

          ++v54;
          if (v96 == v53)
          {
            goto LABEL_84;
          }
        }

        v58 = v57;
        v59 = [v57 preferredAddress];
        if (!v59)
        {

          goto LABEL_75;
        }

        v72 = v59;

        MEMORY[0x1AC5685F0]();
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A81ACD24();
        }

        sub_1A81ACD34();
        v82 = v100;
        v54 = v96;
        if (v96 == v53)
        {
          goto LABEL_84;
        }
      }
    }

    v82 = MEMORY[0x1E69E7CC0];
LABEL_84:

    v7 = v86;
    v48 = v81;
    v73 = v82;
  }

  else
  {
    v73 = 0;
  }

  v74 = [v93 mapCompletionSearchResults];
  if (v74)
  {
    v75 = v74;
    sub_1A81831D0(0, &qword_1EB2E2770, off_1E77FB9C0);
    v76 = sub_1A81ACD14();
  }

  else
  {
    v76 = 0;
  }

  v100 = v84;
  v101 = v97;
  v102 = v83;
  v103 = v85;
  v104 = v48;
  v105 = v73;
  v106 = v76;
  v77 = v89;
  sub_1A81ACD64();
  v78 = v90;
  (*(v90 + 8))(v77, v7);
  v79 = v88;
  (*(v78 + 56))(v88, 1, 1, v7);
  v80 = v87;
  swift_beginAccess();
  sub_1A8188BC4(v79, v1 + v80);
  swift_endAccess();
}

void sub_1A818851C(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = [v5 location];
  if (!v6)
  {
    v9 = *(a2 + OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_source);
    if (v9)
    {
      v10 = v9;
      v11 = [v5 conferenceRoomForSource_];
      if (v11)
      {
        v7 = v11;
        v12 = [v11 location];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 preferredAddress];
          if (v14)
          {
            v15 = v14;

            v8 = 1;
            goto LABEL_23;
          }
        }

        if (qword_1EB2E2618 != -1)
        {
          swift_once();
        }

        v23 = sub_1A81ACC64();
        __swift_project_value_buffer(v23, qword_1EB2E33A8);
        v24 = v7;
        v25 = sub_1A81ACC44();
        v26 = sub_1A81ACDE4();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v31 = v10;
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          *(v27 + 4) = v24;
          *v28 = v7;
          v29 = v24;
          _os_log_impl(&dword_1A805E000, v25, v26, "failed to create conference room model from conference room: %@", v27, 0xCu);
          sub_1A8188C34(v28, &qword_1EB2E2870, &qword_1A81C4238);
          v30 = v28;
          v10 = v31;
          MEMORY[0x1AC569C60](v30, -1, -1);
          MEMORY[0x1AC569C60](v27, -1, -1);
          v24 = v25;
          v25 = v29;
        }

LABEL_22:
        v7 = 0;
        v8 = -1;
        goto LABEL_23;
      }
    }

    if (qword_1EB2E2618 != -1)
    {
      swift_once();
    }

    v16 = sub_1A81ACC64();
    __swift_project_value_buffer(v16, qword_1EB2E33A8);
    v17 = v5;
    v18 = sub_1A81ACC44();
    v19 = sub_1A81ACDE4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_1A805E000, v18, v19, "recent has neither a location nor a conference room: %@", v20, 0xCu);
      sub_1A8188C34(v21, &qword_1EB2E2870, &qword_1A81C4238);
      MEMORY[0x1AC569C60](v21, -1, -1);
      MEMORY[0x1AC569C60](v20, -1, -1);
    }

    goto LABEL_22;
  }

  v7 = v6;

  v8 = 0;
LABEL_23:
  *a3 = v7;
  *(a3 + 8) = v8;
}

id sub_1A8188970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationSearch.SearchModelWrapper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A8188A54(uint64_t a1)
{
  sub_1A8188B18(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A8188B18(uint64_t a1)
{
  if (!qword_1EB2E2760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2E26B0, &qword_1A81C4090);
    v1 = sub_1A81ACE34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2E2760);
    }
  }
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

uint64_t sub_1A8188BC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2768, &qword_1A81C4230);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8188C34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A8188C94(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_1A8188CA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1A8188D54(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A81AD074() & 1;
  }
}

void *sub_1A8188DAC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1A81ACFE4();

    if (v4)
    {
      sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1A8182524(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

double sub_1A8188E70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1A8182568(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1A8182480(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1A8188ED4(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1A81ACE94())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2888, &qword_1A81C4370);
  v3 = sub_1A81ACF34();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_1A81ACE84();
  sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
  sub_1A819550C(&qword_1EB2E2890, &unk_1EB2E2860, off_1E77FBA90);
  result = sub_1A81ACDA4();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_1A81ACEB4();
    if (!v16)
    {
LABEL_34:
      sub_1A819529C(v1);

      return v3;
    }

    *&v27 = v16;
    sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
    swift_dynamicCast();
LABEL_25:
    sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
    swift_dynamicCast();
    result = sub_1A81ACEC4();
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v22);
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

id sub_1A8189310(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2820, &qword_1A81C4338);
  sub_1A819550C(&qword_1EB2E2828, &qword_1EB2E2650, off_1E77FBA00);
  v3 = sub_1A81ACC74();

  return v3;
}

id EKRemoteUISerializedObject.__allocating_init(serializedObjectIDDictionary:objectIDToChangeSetDictionaryMap:objectIDToPersistentDictionaryMap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_serializedObjectIDDictionary] = a1;
  *&v7[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToChangeSetDictionaryMap] = a2;
  *&v7[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToPersistentDictionaryMap] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id EKRemoteUISerializedObject.init(serializedObjectIDDictionary:objectIDToChangeSetDictionaryMap:objectIDToPersistentDictionaryMap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_serializedObjectIDDictionary] = a1;
  *&v3[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToChangeSetDictionaryMap] = a2;
  *&v3[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToPersistentDictionaryMap] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for EKRemoteUISerializedObject();
  return objc_msgSendSuper2(&v5, sel_init);
}

id EKRemoteUIDeserializedObject.__allocating_init(deserializedObject:tempObjectIDMap:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC8EventKit28EKRemoteUIDeserializedObject_deserializedObject] = a1;
  *&v5[OBJC_IVAR____TtC8EventKit28EKRemoteUIDeserializedObject_tempObjectIDMap] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id EKRemoteUIDeserializedObject.init(deserializedObject:tempObjectIDMap:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC8EventKit28EKRemoteUIDeserializedObject_deserializedObject] = a1;
  *&v2[OBJC_IVAR____TtC8EventKit28EKRemoteUIDeserializedObject_tempObjectIDMap] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EKRemoteUIDeserializedObject();
  return objc_msgSendSuper2(&v4, sel_init);
}

id EKRemoteUIPersistentObjectPointer.__allocating_init(objectID:isPendingInsert:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = a1;
  v5[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id EKRemoteUIPersistentObjectPointer.init(objectID:isPendingInsert:)(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = a1;
  v2[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EKRemoteUIPersistentObjectPointer();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t EKRemoteUIPersistentObjectPointer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A8195010(a1);
  v5 = v4;

  return v5;
}

uint64_t EKRemoteUIPersistentObjectPointer.init(coder:)(void *a1)
{
  sub_1A8195010(a1);
  v3 = v2;

  return v3;
}

void sub_1A81899E8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID);
  v4 = sub_1A81ACCB4();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert);
  v6 = sub_1A81ACCB4();
  [a1 encodeBool:v5 forKey:v6];
}

id sub_1A8189C24(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id EKRemoteUIObjectSerializer.serializedRepresentation(ekObject:obfuscateKeyProperties:)(void *a1, uint64_t a2)
{
  v9 = MEMORY[0x1E69E7CC8];
  v10 = MEMORY[0x1E69E7CC8];
  v2 = sub_1A8189CFC(a1, a2, &v10, &v9);
  v4 = v9;
  v3 = v10;
  v5 = type metadata accessor for EKRemoteUISerializedObject();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_serializedObjectIDDictionary] = v2;
  *&v6[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToChangeSetDictionaryMap] = v3;
  *&v6[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToPersistentDictionaryMap] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1A8189CFC(void *a1, char a2, void *a3, void *a4)
{
  v6 = [a1 persistentObject];
  if (!v6)
  {
    goto LABEL_270;
  }

  v7 = v6;
  [v6 isPendingInsert];

  v327 = v4;
  v8 = *(v4 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKIsPendingInsertKey);
  v9 = *(v4 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKIsPendingInsertKey + 8);
  *(&v356 + 1) = sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
  *&v355 = sub_1A81ACE04();
  sub_1A8183084(&v355, &v352);
  v10 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v367 = v10;
  sub_1A8182AC8(&v352, v8, v9, isUniquelyReferenced_nonNull_native);
  v302 = v367;
  v12 = [a1 changeSet];
  v330 = a1;
  if (!v12)
  {
    v74 = v10;
    v75 = v10;
LABEL_185:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2E28D0, &unk_1A81C43A8);
    v215 = swift_allocObject();
    *(v215 + 16) = xmmword_1A81C3F40;
    v216 = *(v327 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetSingleValueChangesKey + 8);
    *(v215 + 32) = *(v327 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetSingleValueChangesKey);
    *(v215 + 40) = v216;
    v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2820, &qword_1A81C4338);
    *(v215 + 48) = v75;
    v218 = *(v327 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueAdditionsKey);
    v219 = *(v327 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueAdditionsKey + 8);
    *(v215 + 72) = v217;
    *(v215 + 80) = v218;
    *(v215 + 88) = v219;
    *(v215 + 96) = v74;
    v220 = *(v327 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueRemovalsKey);
    v221 = *(v327 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueRemovalsKey + 8);
    *(v215 + 120) = v217;
    *(v215 + 128) = v220;
    *(v215 + 168) = v217;
    *(v215 + 136) = v221;
    *(v215 + 144) = v10;

    v222 = sub_1A8183264(v215);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2658, &unk_1A81C4030);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v223 = *(v327 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetKey);
    v224 = *(v327 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetKey + 8);
    *(&v356 + 1) = v217;
    *&v355 = v222;
    sub_1A8183084(&v355, &v352);

    v225 = swift_isUniquelyReferenced_nonNull_native();
    *&v367 = v302;
    sub_1A8182AC8(&v352, v223, v224, v225);
    v226 = v367;
    v227 = [v330 persistentObject];
    if (!v227)
    {
      goto LABEL_271;
    }

    v228 = v227;

    v229 = [v228 objectID];

    if (v229)
    {
      v230 = *(v327 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKPersistentObjectKey);
      v231 = *(v327 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKPersistentObjectKey + 8);
      *(&v356 + 1) = sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
      *&v355 = v229;
      sub_1A8183084(&v355, &v352);
      v232 = v229;
      v233 = swift_isUniquelyReferenced_nonNull_native();
      *&v367 = v226;
      sub_1A8182AC8(&v352, v230, v231, v233);
      v226 = v367;
      v234 = v330;
      v235 = [v330 backingObject];
      if (v235)
      {
        v236 = v235;
        v237 = sub_1A818C1A4(v235, a2 & 1, a4);
        v238 = swift_isUniquelyReferenced_nonNull_native();
        *&v355 = *a4;
        *a4 = 0x8000000000000000;
        sub_1A8182980(v237, v232, v238);

        *a4 = v355;
      }

      else
      {
      }
    }

    else
    {
      v234 = v330;
    }

    v239 = [v234 cachedMeltedObjects];
    if (!v239 || (v240 = v239, v241 = sub_1A81ACC94(), v240, v242 = sub_1A818D1F4(v241), , !v242))
    {
      v295 = MEMORY[0x1E69E7CC8];
      v296 = v327;
LABEL_250:
      v297 = *(v296 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKCachedMeltedObjectsKey);
      v298 = *(v296 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKCachedMeltedObjectsKey + 8);
      *(&v356 + 1) = v217;
      *&v355 = v295;
      sub_1A8183084(&v355, &v352);
      v299 = swift_isUniquelyReferenced_nonNull_native();
      *&v350 = v226;
      sub_1A8182AC8(&v352, v297, v298, v299);
      return v350;
    }

    v317 = v226;
    v329 = v217;
    v243 = 0;
    v244 = 1 << *(v242 + 32);
    if (v244 < 64)
    {
      v245 = ~(-1 << v244);
    }

    else
    {
      v245 = -1;
    }

    v246 = v245 & *(v242 + 64);
    v247 = (v244 + 63) >> 6;
    for (i = MEMORY[0x1E69E7CC8]; ; i = v348)
    {
      v338 = i;
      while (1)
      {
        while (1)
        {
          v249 = v243;
          if (v246)
          {
            v250 = v243;
LABEL_207:
            v252 = __clz(__rbit64(v246));
            v246 &= v246 - 1;
            v253 = v252 | (v250 << 6);
            v254 = (*(v242 + 48) + 16 * v253);
            v256 = *v254;
            v255 = v254[1];
            sub_1A8182480(*(v242 + 56) + 32 * v253, &v350);
            *&v352 = v256;
            *(&v352 + 1) = v255;
            sub_1A8183084(&v350, &v353);

            v243 = v250;
          }

          else
          {
            v251 = v247 <= v243 + 1 ? v243 + 1 : v247;
            v243 = v251 - 1;
            while (1)
            {
              v250 = v249 + 1;
              if (__OFADD__(v249, 1))
              {
                goto LABEL_253;
              }

              if (v250 >= v247)
              {
                break;
              }

              v246 = *(v242 + 64 + 8 * v250);
              ++v249;
              if (v246)
              {
                goto LABEL_207;
              }
            }

            v246 = 0;
            v353 = 0u;
            v354 = 0u;
            v352 = 0u;
          }

          v355 = v352;
          v356 = v353;
          v357 = v354;
          v257 = *(&v352 + 1);
          if (!*(&v352 + 1))
          {

            v296 = v327;
            v217 = v329;
            v226 = v317;
            v295 = v338;
            goto LABEL_250;
          }

          v258 = v355;
          sub_1A8183084(&v356, &v352);
          ObjCClassFromObject = swift_getObjCClassFromObject();
          v260 = sub_1A81ACCB4();
          LOBYTE(ObjCClassFromObject) = [ObjCClassFromObject isWeakRelationObject:v330 forKey:v260];

          if ((ObjCClassFromObject & 1) == 0)
          {
            break;
          }

LABEL_210:
          __swift_destroy_boxed_opaque_existential_0(&v352);
        }

        sub_1A8182480(&v352, &v350);
        sub_1A81831D0(0, &qword_1EB2E2848, off_1E77FB9F0);
        if (!swift_dynamicCast())
        {
          break;
        }

        v343 = *&v349[0];
        v261 = sub_1A8189CFC(*&v349[0], a2 & 1, a3, a4);
        v351 = v329;
        *&v350 = v261;
        sub_1A8183084(&v350, v349);
        v262 = swift_isUniquelyReferenced_nonNull_native();
        v348 = v338;
        v263 = sub_1A8182568(v258, v257);
        v265 = v338[2];
        v266 = (v264 & 1) == 0;
        v56 = __OFADD__(v265, v266);
        v267 = v265 + v266;
        if (v56)
        {
          goto LABEL_268;
        }

        v268 = v264;
        if (v338[3] >= v267)
        {
          if (v262)
          {
            goto LABEL_220;
          }

          v272 = v263;
          sub_1A8193258();
          v263 = v272;
          if ((v268 & 1) == 0)
          {
            goto LABEL_223;
          }

LABEL_221:
          v270 = v263;

          v338 = v348;
          v271 = (v348[7] + 32 * v270);
          __swift_destroy_boxed_opaque_existential_0(v271);
          sub_1A8183084(v349, v271);

          __swift_destroy_boxed_opaque_existential_0(&v352);
        }

        else
        {
          sub_1A81922B8(v267, v262);
          v263 = sub_1A8182568(v258, v257);
          if ((v268 & 1) != (v269 & 1))
          {
            goto LABEL_272;
          }

LABEL_220:
          if (v268)
          {
            goto LABEL_221;
          }

LABEL_223:
          v273 = v348;
          v348[(v263 >> 6) + 8] |= 1 << v263;
          v274 = (v273[6] + 16 * v263);
          *v274 = v258;
          v274[1] = v257;
          sub_1A8183084(v349, (v273[7] + 32 * v263));

          __swift_destroy_boxed_opaque_existential_0(&v352);
          v275 = v273[2];
          v56 = __OFADD__(v275, 1);
          v276 = v275 + 1;
          if (v56)
          {
            goto LABEL_269;
          }

          v338 = v273;
          v273[2] = v276;
        }
      }

      sub_1A8182480(&v352, &v350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28E0, &qword_1A81C43B8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_210;
      }

      v277 = *&v349[0];
      if ((*&v349[0] & 0xC000000000000001) != 0)
      {
        sub_1A81ACE84();
        sub_1A819550C(&qword_1EB2E28E8, &qword_1EB2E2848, off_1E77FB9F0);
        sub_1A81ACDA4();
        v278 = *(&v367 + 1);
        v277 = v367;
        v279 = v368;
        v280 = v369;
        v281 = v370;
      }

      else
      {
        v280 = 0;
        v282 = -1 << *(*&v349[0] + 32);
        v278 = *&v349[0] + 56;
        v279 = ~v282;
        v283 = -v282;
        if (v283 < 64)
        {
          v284 = ~(-1 << v283);
        }

        else
        {
          v284 = -1;
        }

        v281 = v284 & *(*&v349[0] + 56);
      }

      v285 = (v279 + 64) >> 6;
      v344 = MEMORY[0x1E69E7CC0];
      v311 = v278;
      v314 = v277;
      v309 = v285;
      if (v277 < 0)
      {
        goto LABEL_232;
      }

      while (1)
      {
        v289 = v280;
        v290 = v281;
        v286 = v280;
        if (!v281)
        {
          break;
        }

LABEL_239:
        v334 = (v290 - 1) & v290;
        v288 = *(*(v277 + 48) + ((v286 << 9) | (8 * __clz(__rbit64(v290)))));
        if (!v288)
        {
          goto LABEL_246;
        }

        while (1)
        {
          v326 = v288;
          v321 = sub_1A8189CFC(v288, a2 & 1, a3, a4);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v344 = sub_1A8197E34(0, v344[2] + 1, 1, v344);
          }

          v292 = v344[2];
          v291 = v344[3];
          v293 = v326;
          if (v292 >= v291 >> 1)
          {
            v344 = sub_1A8197E34((v291 > 1), v292 + 1, 1, v344);
            v293 = v326;
          }

          v344[2] = v292 + 1;
          v344[v292 + 4] = v321;
          v280 = v286;
          v281 = v334;
          v278 = v311;
          v277 = v314;
          v285 = v309;
          if ((v314 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_232:
          v286 = v280;
          v287 = sub_1A81ACEB4();
          if (v287)
          {
            *&v349[0] = v287;
            swift_dynamicCast();
            v288 = v350;
            v334 = v281;
            if (v350)
            {
              continue;
            }
          }

          goto LABEL_246;
        }
      }

      while (1)
      {
        v286 = v289 + 1;
        if (__OFADD__(v289, 1))
        {
          goto LABEL_264;
        }

        if (v286 >= v285)
        {
          break;
        }

        v290 = *(v278 + 8 * v286);
        ++v289;
        if (v290)
        {
          goto LABEL_239;
        }
      }

LABEL_246:
      sub_1A819529C(v314);
      v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2838, &qword_1A81C4348);
      *&v350 = v344;
      sub_1A8183084(&v350, v349);
      v294 = swift_isUniquelyReferenced_nonNull_native();
      v348 = v338;
      sub_1A8182AC8(v349, v258, v257, v294);

      __swift_destroy_boxed_opaque_existential_0(&v352);
    }
  }

  v304 = v12;
  v13 = [v12 singleValueChanges];
  if (v13)
  {
    *&v355 = 0;
    v14 = v13;
    sub_1A81ACC84();

    if (v355)
    {
      v15 = 0;
      v335 = v355;
      v16 = v355 + 64;
      v17 = 1 << *(v355 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v355 + 64);
      v20 = (v17 + 63) >> 6;
      v328 = MEMORY[0x1E69E7CC8];
      v340 = v355 + 64;
      while (1)
      {
        if (v19)
        {
          v23 = v15;
LABEL_19:
          v26 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          v27 = v26 | (v23 << 6);
          v28 = (*(v335 + 48) + 16 * v27);
          v30 = *v28;
          v29 = v28[1];
          sub_1A8182480(*(v335 + 56) + 32 * v27, &v367);
          *&v352 = v30;
          *(&v352 + 1) = v29;
          sub_1A8183084(&v367, &v353);
        }

        else
        {
          if (v20 <= v15 + 1)
          {
            v24 = v15 + 1;
          }

          else
          {
            v24 = v20;
          }

          v25 = v24 - 1;
          while (1)
          {
            v23 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_254;
            }

            if (v23 >= v20)
            {
              break;
            }

            v19 = *(v16 + 8 * v23);
            ++v15;
            if (v19)
            {
              v15 = v23;
              goto LABEL_19;
            }
          }

          v19 = 0;
          v353 = 0u;
          v354 = 0u;
          v15 = v25;
          v352 = 0u;
        }

        v355 = v352;
        v356 = v353;
        v357 = v354;
        v31 = *(&v352 + 1);
        if (!*(&v352 + 1))
        {

          goto LABEL_52;
        }

        v32 = v355;
        sub_1A8183084(&v356, &v352);
        sub_1A8182480(&v352, &v367);
        sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_32;
        }

        v33 = v363;
        v34 = [v363 objectID];
        if (v34)
        {
          v35 = v34;
          v36 = [v33 isPendingInsert];
          v37 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
          v38 = objc_allocWithZone(v37);
          *&v38[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v35;
          v38[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = v36;
          v345.receiver = v38;
          v345.super_class = v37;
          v331 = v35;
          v39 = objc_msgSendSuper2(&v345, sel_init);
          v40 = swift_getObjCClassFromObject();
          v41 = v33;
          v42 = sub_1A81ACCB4();
          v318 = [v40 isWeakRelationObject:v41 forKey:v42];
          v323 = v41;

          v369 = v37;
          *&v367 = v39;
          sub_1A8183084(&v367, &v363);
          v43 = v39;
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v358 = v328;
          v46 = sub_1A8182568(v32, v31);
          v47 = v328[2];
          v48 = (v45 & 1) == 0;
          v49 = v47 + v48;
          if (__OFADD__(v47, v48))
          {
            goto LABEL_263;
          }

          v50 = v45;
          if (v328[3] >= v49)
          {
            if (v44)
            {
              if (v45)
              {
                goto LABEL_42;
              }
            }

            else
            {
              sub_1A8193258();
              if (v50)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            sub_1A81922B8(v49, v44);
            v51 = sub_1A8182568(v32, v31);
            if ((v50 & 1) != (v52 & 1))
            {
              goto LABEL_272;
            }

            v46 = v51;
            if (v50)
            {
LABEL_42:

              v328 = v358;
              v72 = (v358[7] + 32 * v46);
              __swift_destroy_boxed_opaque_existential_0(v72);
              sub_1A8183084(&v363, v72);
              if ((v318 & 1) == 0)
              {
                goto LABEL_29;
              }

              goto LABEL_43;
            }
          }

          v53 = v358;
          v358[(v46 >> 6) + 8] |= 1 << v46;
          v54 = (v53[6] + 16 * v46);
          *v54 = v32;
          v54[1] = v31;
          sub_1A8183084(&v363, (v53[7] + 32 * v46));
          v55 = v53[2];
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_267;
          }

          v328 = v53;
          v53[2] = v57;
          if ((v318 & 1) == 0)
          {
LABEL_29:
            v58 = sub_1A818C1A4(v323, a2 & 1, a3);
            v59 = swift_isUniquelyReferenced_nonNull_native();
            *&v367 = *a3;
            sub_1A8182980(v58, v331, v59);

            *a3 = v367;
            __swift_destroy_boxed_opaque_existential_0(&v352);
            goto LABEL_44;
          }

LABEL_43:
          __swift_destroy_boxed_opaque_existential_0(&v352);

LABEL_44:
          v16 = v340;
        }

        else
        {

LABEL_32:
          sub_1A8182480(&v352, &v367);
          v60 = swift_isUniquelyReferenced_nonNull_native();
          *&v363 = v328;
          v61 = sub_1A8182568(v32, v31);
          v63 = v328[2];
          v64 = (v62 & 1) == 0;
          v56 = __OFADD__(v63, v64);
          v65 = v63 + v64;
          if (v56)
          {
            goto LABEL_258;
          }

          v66 = v62;
          if (v328[3] >= v65)
          {
            if (v60)
            {
              goto LABEL_37;
            }

            v73 = v61;
            sub_1A8193258();
            v61 = v73;
            if (v66)
            {
              goto LABEL_8;
            }

LABEL_38:
            v68 = v363;
            *(v363 + 8 * (v61 >> 6) + 64) |= 1 << v61;
            v69 = (v68[6] + 16 * v61);
            *v69 = v32;
            v69[1] = v31;
            sub_1A8183084(&v367, (v68[7] + 32 * v61));
            __swift_destroy_boxed_opaque_existential_0(&v352);
            v70 = v68[2];
            v56 = __OFADD__(v70, 1);
            v71 = v70 + 1;
            if (v56)
            {
              goto LABEL_262;
            }

            v328 = v68;
            v68[2] = v71;
            v16 = v340;
          }

          else
          {
            sub_1A81922B8(v65, v60);
            v61 = sub_1A8182568(v32, v31);
            if ((v66 & 1) != (v67 & 1))
            {
              goto LABEL_272;
            }

LABEL_37:
            if ((v66 & 1) == 0)
            {
              goto LABEL_38;
            }

LABEL_8:
            v21 = v61;

            v328 = v363;
            v22 = (*(v363 + 56) + 32 * v21);
            __swift_destroy_boxed_opaque_existential_0(v22);
            sub_1A8183084(&v367, v22);
            __swift_destroy_boxed_opaque_existential_0(&v352);
            v16 = v340;
          }
        }
      }
    }
  }

  v328 = MEMORY[0x1E69E7CC8];
LABEL_52:
  v76 = [v304 multiValueAdditions];
  if (!v76 || (*&v355 = 0, v77 = v76, sub_1A81ACC84(), v77, !v355))
  {
    v74 = MEMORY[0x1E69E7CC8];
LABEL_123:
    v150 = [v304 multiValueRemovals];
    if (v150 && (*&v355 = 0, v151 = v150, sub_1A81ACC84(), v151, v355))
    {
      v152 = 0;
      v308 = v355;
      v153 = v355 + 64;
      v154 = 1 << *(v355 + 32);
      if (v154 < 64)
      {
        v155 = ~(-1 << v154);
      }

      else
      {
        v155 = -1;
      }

      v156 = v155 & *(v355 + 64);
      v157 = (v154 + 63) >> 6;
      v158 = MEMORY[0x1E69E7CC8];
      v333 = v157;
      v337 = v355 + 64;
      v313 = v74;
LABEL_131:
      if (v156)
      {
        v161 = v152;
        goto LABEL_141;
      }

      if (v157 <= v152 + 1)
      {
        v162 = v152 + 1;
      }

      else
      {
        v162 = v157;
      }

      v163 = v162 - 1;
      do
      {
        v161 = v152 + 1;
        if (__OFADD__(v152, 1))
        {
          goto LABEL_256;
        }

        if (v161 >= v157)
        {
          v156 = 0;
          v353 = 0u;
          v354 = 0u;
          v152 = v163;
          v352 = 0u;
          goto LABEL_142;
        }

        v156 = *(v153 + 8 * v161);
        ++v152;
      }

      while (!v156);
      v152 = v161;
LABEL_141:
      v164 = __clz(__rbit64(v156));
      v156 &= v156 - 1;
      v165 = v164 | (v161 << 6);
      v166 = (*(v308 + 48) + 16 * v165);
      v168 = *v166;
      v167 = v166[1];
      sub_1A8182480(*(v308 + 56) + 32 * v165, &v367);
      *&v352 = v168;
      *(&v352 + 1) = v167;
      sub_1A8183084(&v367, &v353);

LABEL_142:
      v355 = v352;
      v356 = v353;
      v357 = v354;
      v169 = *(&v352 + 1);
      if (*(&v352 + 1))
      {
        v170 = v355;
        sub_1A8183084(&v356, &v352);
        sub_1A8182480(&v352, &v367);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28F0, &qword_1A81C43C0);
        if (swift_dynamicCast())
        {
          v316 = v170;
          v320 = v169;
          v325 = v158;
          v171 = v350;
          *&v349[0] = MEMORY[0x1E69E7CD0];
          if ((v350 & 0xC000000000000001) != 0)
          {
            sub_1A81ACE84();
            sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
            sub_1A819550C(&qword_1EB2E2890, &unk_1EB2E2860, off_1E77FBA90);
            sub_1A81ACDA4();
            v172 = *(&v363 + 1);
            v171 = v363;
            v173 = v364;
            v174 = v365;
            v175 = v366;
          }

          else
          {
            v174 = 0;
            v194 = -1 << *(v350 + 32);
            v172 = v350 + 56;
            v173 = ~v194;
            v195 = -v194;
            if (v195 < 64)
            {
              v196 = ~(-1 << v195);
            }

            else
            {
              v196 = -1;
            }

            v175 = v196 & *(v350 + 56);
          }

          v197 = (v173 + 64) >> 6;
          for (j = v171; ; v171 = j)
          {
            if (v171 < 0)
            {
              v203 = sub_1A81ACEB4();
              if (!v203)
              {
                goto LABEL_179;
              }

              *&v350 = v203;
              sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
              swift_dynamicCast();
              v202 = v367;
              v200 = v174;
              v201 = v175;
              if (!v367)
              {
                goto LABEL_179;
              }
            }

            else
            {
              v198 = v174;
              v199 = v175;
              v200 = v174;
              if (!v175)
              {
                while (1)
                {
                  v200 = v198 + 1;
                  if (__OFADD__(v198, 1))
                  {
                    goto LABEL_252;
                  }

                  if (v200 >= v197)
                  {
                    break;
                  }

                  v199 = *(v172 + 8 * v200);
                  ++v198;
                  if (v199)
                  {
                    goto LABEL_173;
                  }
                }

LABEL_179:
                sub_1A819529C(j);
                v211 = *&v349[0];
                v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
                *&v367 = v211;
                sub_1A8183084(&v367, &v350);
                v212 = swift_isUniquelyReferenced_nonNull_native();
                v348 = v325;
                sub_1A8182AC8(&v350, v316, v320, v212);

                __swift_destroy_boxed_opaque_existential_0(&v352);
                v158 = v348;
                v74 = v313;
LABEL_130:
                v157 = v333;
                v153 = v337;
                goto LABEL_131;
              }

LABEL_173:
              v201 = (v199 - 1) & v199;
              v202 = *(*(v171 + 48) + ((v200 << 9) | (8 * __clz(__rbit64(v199)))));
              if (!v202)
              {
                goto LABEL_179;
              }
            }

            v204 = [v202 objectID];
            if (v204)
            {
              v205 = v204;
              v206 = [v202 isPendingInsert];
              v207 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
              v208 = objc_allocWithZone(v207);
              *&v208[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v205;
              v208[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = v206;
              v347.receiver = v208;
              v347.super_class = v207;
              v209 = v205;
              v210 = objc_msgSendSuper2(&v347, sel_init);
              sub_1A8193768(&v367, v210);
            }

            else
            {
            }

            v174 = v200;
            v175 = v201;
          }
        }

        if (qword_1EB2E2608 != -1)
        {
          swift_once();
        }

        v176 = sub_1A81ACC64();
        __swift_project_value_buffer(v176, qword_1EB2E3378);

        v177 = sub_1A81ACC44();
        v178 = sub_1A81ACDE4();

        if (os_log_type_enabled(v177, v178))
        {
          v179 = swift_slowAlloc();
          v180 = swift_slowAlloc();
          *&v367 = v180;
          *v179 = 136315138;
          v181 = v170;
          *(v179 + 4) = sub_1A81911EC(v170, v169, &v367);
          _os_log_impl(&dword_1A805E000, v177, v178, "EKRemoteUIObjectSerializer: Cannot parse changeSet multiValueRemovals as Set<EKPersistentObject> for key: %s", v179, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v180);
          MEMORY[0x1AC569C60](v180, -1, -1);
          MEMORY[0x1AC569C60](v179, -1, -1);
        }

        else
        {

          v181 = v170;
        }

        sub_1A8182480(&v352, &v367);
        v182 = swift_isUniquelyReferenced_nonNull_native();
        *&v350 = v158;
        v183 = sub_1A8182568(v181, v169);
        v185 = v158[2];
        v186 = (v184 & 1) == 0;
        v56 = __OFADD__(v185, v186);
        v187 = v185 + v186;
        if (v56)
        {
          goto LABEL_261;
        }

        v188 = v184;
        if (v158[3] < v187)
        {
          sub_1A81922B8(v187, v182);
          v189 = v170;
          v183 = sub_1A8182568(v170, v169);
          if ((v188 & 1) != (v190 & 1))
          {
            goto LABEL_272;
          }

          v74 = v313;
          if ((v188 & 1) == 0)
          {
            goto LABEL_158;
          }

LABEL_129:
          v159 = v183;

          v158 = v350;
          v160 = (*(v350 + 56) + 32 * v159);
          __swift_destroy_boxed_opaque_existential_0(v160);
          sub_1A8183084(&v367, v160);
          __swift_destroy_boxed_opaque_existential_0(&v352);
          goto LABEL_130;
        }

        if (v182)
        {
          v189 = v170;
          v74 = v313;
          if (v184)
          {
            goto LABEL_129;
          }
        }

        else
        {
          v213 = v169;
          v214 = v183;
          sub_1A8193258();
          v183 = v214;
          v169 = v213;
          v189 = v170;
          v74 = v313;
          if (v188)
          {
            goto LABEL_129;
          }
        }

LABEL_158:
        v158 = v350;
        *(v350 + 8 * (v183 >> 6) + 64) |= 1 << v183;
        v191 = (v158[6] + 16 * v183);
        *v191 = v189;
        v191[1] = v169;
        sub_1A8183084(&v367, (v158[7] + 32 * v183));
        __swift_destroy_boxed_opaque_existential_0(&v352);
        v192 = v158[2];
        v56 = __OFADD__(v192, 1);
        v193 = v192 + 1;
        if (v56)
        {
          goto LABEL_266;
        }

        v158[2] = v193;
        goto LABEL_130;
      }

      v75 = v328;
      v10 = v158;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC8];
      v75 = v328;
    }

    goto LABEL_185;
  }

  v79 = 0;
  v305 = v355;
  v80 = v355 + 64;
  v81 = 1 << *(v355 + 32);
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  else
  {
    v82 = -1;
  }

  v83 = v82 & *(v355 + 64);
  v84 = (v81 + 63) >> 6;
  v74 = MEMORY[0x1E69E7CC8];
  *&v78 = 136315138;
  v301 = v78;
  v307 = v84;
  v310 = v355 + 64;
  while (1)
  {
    while (1)
    {
      if (v83)
      {
        v87 = v79;
LABEL_69:
        v315 = (v83 - 1) & v83;
        v90 = __clz(__rbit64(v83)) | (v87 << 6);
        v91 = (*(v305 + 48) + 16 * v90);
        v93 = *v91;
        v92 = v91[1];
        sub_1A8182480(*(v305 + 56) + 32 * v90, &v367);
        *&v352 = v93;
        *(&v352 + 1) = v92;
        sub_1A8183084(&v367, &v353);
      }

      else
      {
        if (v84 <= v79 + 1)
        {
          v88 = v79 + 1;
        }

        else
        {
          v88 = v84;
        }

        v89 = v88 - 1;
        while (1)
        {
          v87 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            goto LABEL_255;
          }

          if (v87 >= v84)
          {
            break;
          }

          v83 = *(v80 + 8 * v87);
          ++v79;
          if (v83)
          {
            v79 = v87;
            goto LABEL_69;
          }
        }

        v315 = 0;
        v353 = 0u;
        v354 = 0u;
        v79 = v89;
        v352 = 0u;
      }

      v355 = v352;
      v356 = v353;
      v357 = v354;
      v94 = *(&v352 + 1);
      if (!*(&v352 + 1))
      {

        goto LABEL_123;
      }

      v324 = v355;
      sub_1A8183084(&v356, &v352);
      sub_1A8182480(&v352, &v367);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28F0, &qword_1A81C43C0);
      if (swift_dynamicCast())
      {
        break;
      }

      if (qword_1EB2E2608 != -1)
      {
        swift_once();
      }

      v100 = sub_1A81ACC64();
      __swift_project_value_buffer(v100, qword_1EB2E3378);

      v101 = sub_1A81ACC44();
      v102 = sub_1A81ACDE4();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *&v367 = v104;
        *v103 = v301;
        v105 = v324;
        *(v103 + 4) = sub_1A81911EC(v324, v94, &v367);
        _os_log_impl(&dword_1A805E000, v101, v102, "EKRemoteUIObjectSerializer: Cannot parse changeSet multiValueAdditions as Set<EKPersistentObject> for key: %s", v103, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v104);
        MEMORY[0x1AC569C60](v104, -1, -1);
        MEMORY[0x1AC569C60](v103, -1, -1);
      }

      else
      {

        v105 = v324;
      }

      sub_1A8182480(&v352, &v367);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      *&v363 = v74;
      v107 = sub_1A8182568(v105, v94);
      v109 = v74[2];
      v110 = (v108 & 1) == 0;
      v56 = __OFADD__(v109, v110);
      v111 = v109 + v110;
      if (v56)
      {
        goto LABEL_260;
      }

      v112 = v108;
      if (v74[3] >= v111)
      {
        if (v106)
        {
          goto LABEL_84;
        }

        v149 = v107;
        sub_1A8193258();
        v107 = v149;
        if (v112)
        {
          goto LABEL_58;
        }

LABEL_85:
        v74 = v363;
        *(v363 + 8 * (v107 >> 6) + 64) |= 1 << v107;
        v114 = (v74[6] + 16 * v107);
        *v114 = v324;
        v114[1] = v94;
        sub_1A8183084(&v367, (v74[7] + 32 * v107));
        __swift_destroy_boxed_opaque_existential_0(&v352);
        v115 = v74[2];
        v56 = __OFADD__(v115, 1);
        v116 = v115 + 1;
        if (v56)
        {
          goto LABEL_265;
        }

        v74[2] = v116;
        v83 = v315;
      }

      else
      {
        sub_1A81922B8(v111, v106);
        v107 = sub_1A8182568(v324, v94);
        if ((v112 & 1) != (v113 & 1))
        {
          goto LABEL_272;
        }

LABEL_84:
        if ((v112 & 1) == 0)
        {
          goto LABEL_85;
        }

LABEL_58:
        v85 = v107;

        v74 = v363;
        v86 = (*(v363 + 56) + 32 * v85);
        __swift_destroy_boxed_opaque_existential_0(v86);
        sub_1A8183084(&v367, v86);
        __swift_destroy_boxed_opaque_existential_0(&v352);
        v83 = v315;
      }
    }

    v306 = v94;
    v312 = v74;
    v95 = v363;
    *&v350 = MEMORY[0x1E69E7CD0];
    if ((v363 & 0xC000000000000001) != 0)
    {
      sub_1A81ACE84();
      sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
      sub_1A819550C(&qword_1EB2E2890, &unk_1EB2E2860, off_1E77FBA90);
      sub_1A81ACDA4();
      v95 = v358;
      v96 = v359;
      v97 = v360;
      v98 = v361;
      v99 = v362;
    }

    else
    {
      v98 = 0;
      v117 = -1 << *(v363 + 32);
      v96 = v363 + 56;
      v97 = ~v117;
      v118 = -v117;
      v119 = v118 < 64 ? ~(-1 << v118) : -1;
      v99 = v119 & *(v363 + 56);
    }

    v120 = (v97 + 64) >> 6;
    v332 = v120;
    v336 = v96;
    v319 = v95;
    if ((v95 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v121 = sub_1A81ACEB4();
      if (!v121)
      {
        break;
      }

      *&v363 = v121;
      sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
      swift_dynamicCast();
      v122 = v367;
      v123 = v98;
      v341 = v99;
      v96 = v336;
      if (!v367)
      {
        break;
      }

LABEL_101:
      v126 = [v122 objectID];
      if (v126)
      {
        v127 = v126;
        v128 = [v122 isPendingInsert];
        v129 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
        v130 = objc_allocWithZone(v129);
        *&v130[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v127;
        v130[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = v128;
        v346.receiver = v130;
        v346.super_class = v129;
        v131 = v127;
        v132 = objc_msgSendSuper2(&v346, sel_init);
        sub_1A8193768(&v367, v132);

        v133 = sub_1A818C1A4(v122, a2 & 1, a3);
        v134 = swift_isUniquelyReferenced_nonNull_native();
        *&v367 = *a3;
        v135 = v367;
        *a3 = 0x8000000000000000;
        v137 = sub_1A8182524(v131);
        v138 = *(v135 + 16);
        v139 = (v136 & 1) == 0;
        v140 = v138 + v139;
        if (__OFADD__(v138, v139))
        {
          goto LABEL_257;
        }

        v141 = v136;
        if (*(v135 + 24) >= v140)
        {
          if (v134)
          {
            v144 = v367;
            if ((v136 & 1) == 0)
            {
              goto LABEL_106;
            }
          }

          else
          {
            sub_1A81930F4();
            v144 = v367;
            if ((v141 & 1) == 0)
            {
              goto LABEL_106;
            }
          }
        }

        else
        {
          sub_1A8192048(v140, v134);
          v142 = sub_1A8182524(v131);
          if ((v141 & 1) != (v143 & 1))
          {
            goto LABEL_273;
          }

          v137 = v142;
          v144 = v367;
          if ((v141 & 1) == 0)
          {
LABEL_106:
            v144[(v137 >> 6) + 8] |= 1 << v137;
            *(v144[6] + 8 * v137) = v131;
            *(v144[7] + 8 * v137) = v133;

            v145 = v144[2];
            v56 = __OFADD__(v145, 1);
            v146 = v145 + 1;
            if (v56)
            {
              goto LABEL_259;
            }

            v144[2] = v146;
            goto LABEL_113;
          }
        }

        *(v144[7] + 8 * v137) = v133;

LABEL_113:
        v99 = v341;
        *a3 = v144;
        v98 = v123;
        v84 = v307;
        v80 = v310;
        v95 = v319;
        v120 = v332;
        v96 = v336;
        if ((v319 & 0x8000000000000000) == 0)
        {
          goto LABEL_96;
        }
      }

      else
      {

        v98 = v123;
        v99 = v341;
        v120 = v332;
        if ((v95 & 0x8000000000000000) == 0)
        {
          goto LABEL_96;
        }
      }
    }

LABEL_117:
    sub_1A819529C(v95);
    v147 = v350;
    v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
    *&v367 = v147;
    sub_1A8183084(&v367, &v363);
    v148 = swift_isUniquelyReferenced_nonNull_native();
    *&v349[0] = v312;
    sub_1A8182AC8(&v363, v324, v306, v148);

    __swift_destroy_boxed_opaque_existential_0(&v352);
    v74 = *&v349[0];
    v83 = v315;
  }

LABEL_96:
  v124 = v98;
  v125 = v99;
  v123 = v98;
  if (v99)
  {
LABEL_100:
    v341 = (v125 - 1) & v125;
    v122 = *(*(v95 + 48) + ((v123 << 9) | (8 * __clz(__rbit64(v125)))));
    if (!v122)
    {
      goto LABEL_117;
    }

    goto LABEL_101;
  }

  while (1)
  {
    v123 = v124 + 1;
    if (__OFADD__(v124, 1))
    {
      break;
    }

    if (v123 >= v120)
    {
      goto LABEL_117;
    }

    v125 = *(v96 + 8 * v123);
    ++v124;
    if (v125)
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  sub_1A81AD0B4();
  __break(1u);
LABEL_273:
  sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
  result = sub_1A81AD0B4();
  __break(1u);
  return result;
}

id EKRemoteUIObjectSerializer.serializedRepresentation(ekObject:)(void *a1)
{
  v8 = MEMORY[0x1E69E7CC8];
  v9 = MEMORY[0x1E69E7CC8];
  v1 = sub_1A8189CFC(a1, 0, &v9, &v8);
  v3 = v8;
  v2 = v9;
  v4 = type metadata accessor for EKRemoteUISerializedObject();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_serializedObjectIDDictionary] = v1;
  *&v5[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToChangeSetDictionaryMap] = v2;
  *&v5[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToPersistentDictionaryMap] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1A818BFEC(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_12;
  }

  if (sub_1A81ACCC4() == a2 && v7 == a3)
  {

LABEL_14:
    v13 = [objc_opt_self() virtualObjectIDWithEntityType_];
    if (v13)
    {
      v14 = v13;
      v15 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
      v16 = objc_allocWithZone(v15);
      *&v16[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v14;
      v16[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = 0;
      v19.receiver = v16;
      v19.super_class = v15;
      v17 = v14;
      v18 = objc_msgSendSuper2(&v19, sel_init);
      *(a4 + 24) = v15;

      *a4 = v18;
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v9 = sub_1A81AD074();

  if (v9)
  {
    goto LABEL_14;
  }

  if (sub_1A81ACCC4() == a2 && v10 == a3)
  {
  }

  else
  {
    v12 = sub_1A81AD074();

    if ((v12 & 1) == 0)
    {
LABEL_12:
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return;
    }
  }

  *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
  *a4 = MEMORY[0x1E69E7CD0];
}

void *sub_1A818C1A4(void *a1, char a2, void *a3)
{
  v3 = [a1 updatedPropertiesWithOnlyPersistentObjects];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = v3;
  v5 = sub_1A81ACC94();

  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v148 = *MEMORY[0x1E6992568];
  v150 = v5;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  v149 = v5 + 64;
  v154 = v10;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v9)
        {
          v15 = v11;
LABEL_17:
          v159 = (v9 - 1) & v9;
          v18 = __clz(__rbit64(v9)) | (v15 << 6);
          v19 = (*(v150 + 48) + 16 * v18);
          v21 = *v19;
          v20 = v19[1];
          sub_1A8182480(*(v150 + 56) + 32 * v18, &v171);
          *&v173 = v21;
          *(&v173 + 1) = v20;
          sub_1A8183084(&v171, &v174);
        }

        else
        {
          if (v10 <= v11 + 1)
          {
            v16 = v11 + 1;
          }

          else
          {
            v16 = v10;
          }

          v17 = v16 - 1;
          while (1)
          {
            v15 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
              goto LABEL_130;
            }

            if (v15 >= v10)
            {
              break;
            }

            v9 = *(v6 + 8 * v15);
            ++v11;
            if (v9)
            {
              v11 = v15;
              goto LABEL_17;
            }
          }

          v159 = 0;
          v174 = 0u;
          v175 = 0u;
          v11 = v17;
          v173 = 0u;
        }

        v176 = v173;
        v177[0] = v174;
        v177[1] = v175;
        v22 = *(&v173 + 1);
        if (!*(&v173 + 1))
        {

          return v12;
        }

        v163 = v176;
        sub_1A8183084(v177, &v173);
        sub_1A8182480(&v173, &v171);
        sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
        v162 = v22;
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_30;
        }

        v23 = v168[0];
        v24 = [v168[0] objectID];
        if (!v24)
        {
          break;
        }

        v25 = v24;
        v26 = [v23 isPendingInsert];
        v27 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
        v28 = objc_allocWithZone(v27);
        *&v28[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v25;
        v28[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = v26;
        v164.receiver = v28;
        v164.super_class = v27;
        v160 = v25;
        v29 = objc_msgSendSuper2(&v164, sel_init);
        if (![swift_getObjCClassFromObject() meltedClass])
        {
          goto LABEL_141;
        }

        swift_getObjCClassMetadata();
        v30 = v23;
        v31 = sub_1A81ACCB4();
        v156 = [swift_getObjCClassFromMetadata() isWeakRelationObject:v30 forKey:v31];

        sub_1A818BFEC(v163, v162, v168);
        if (!*(&v169 + 1))
        {
          sub_1A8188C34(v168, &qword_1EB2E2830, &qword_1A81C4340);
          *(&v172 + 1) = v27;
          *&v171 = v29;
          sub_1A8183084(&v171, v168);
          v55 = v29;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v170 = v12;
          v57 = sub_1A8182568(v163, v162);
          v59 = v12[2];
          v60 = (v58 & 1) == 0;
          v47 = __OFADD__(v59, v60);
          v61 = v59 + v60;
          if (v47)
          {
            goto LABEL_137;
          }

          v62 = v58;
          if (v12[3] < v61)
          {
            sub_1A81922B8(v61, isUniquelyReferenced_nonNull_native);
            v57 = sub_1A8182568(v163, v162);
            if ((v62 & 1) != (v63 & 1))
            {
              goto LABEL_143;
            }

            goto LABEL_57;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_57:
            if (v62)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v139 = v57;
            sub_1A8193258();
            v57 = v139;
            if (v62)
            {
LABEL_58:
              v79 = v57;

              v12 = v170;
              v80 = (v170[7] + 32 * v79);
              __swift_destroy_boxed_opaque_existential_0(v80);
              sub_1A8183084(v168, v80);
              if (!v156)
              {
                goto LABEL_69;
              }

              goto LABEL_124;
            }
          }

          v140 = v170;
          v170[(v57 >> 6) + 8] |= 1 << v57;
          v141 = (v140[6] + 16 * v57);
          *v141 = v163;
          v141[1] = v162;
          sub_1A8183084(v168, (v140[7] + 32 * v57));
          v142 = v140[2];
          v47 = __OFADD__(v142, 1);
          v143 = v142 + 1;
          if (v47)
          {
            goto LABEL_139;
          }

LABEL_123:
          v12 = v140;
          v140[2] = v143;
          if (!v156)
          {
            goto LABEL_69;
          }

          goto LABEL_124;
        }

        sub_1A8183084(v168, &v171);
        sub_1A8182480(&v171, v168);
        sub_1A81831D0(0, &qword_1EB2E28B8, 0x1E695DFB0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_1A8182480(&v171, v168);
          v71 = swift_isUniquelyReferenced_nonNull_native();
          v170 = v12;
          v72 = sub_1A8182568(v163, v162);
          v74 = v12[2];
          v75 = (v73 & 1) == 0;
          v47 = __OFADD__(v74, v75);
          v76 = v74 + v75;
          if (v47)
          {
            goto LABEL_138;
          }

          v77 = v73;
          if (v12[3] < v76)
          {
            sub_1A81922B8(v76, v71);
            v72 = sub_1A8182568(v163, v162);
            if ((v77 & 1) != (v78 & 1))
            {
              goto LABEL_143;
            }

            goto LABEL_67;
          }

          if (v71)
          {
LABEL_67:
            if (v77)
            {
              goto LABEL_68;
            }
          }

          else
          {
            v144 = v72;
            sub_1A8193258();
            v72 = v144;
            if (v77)
            {
LABEL_68:
              v82 = v72;

              v12 = v170;
              v83 = (v170[7] + 32 * v82);
              __swift_destroy_boxed_opaque_existential_0(v83);
              sub_1A8183084(v168, v83);
              __swift_destroy_boxed_opaque_existential_0(&v171);
              if (!v156)
              {
                goto LABEL_69;
              }

              goto LABEL_124;
            }
          }

          v140 = v170;
          v170[(v72 >> 6) + 8] |= 1 << v72;
          v145 = (v140[6] + 16 * v72);
          *v145 = v163;
          v145[1] = v162;
          sub_1A8183084(v168, (v140[7] + 32 * v72));
          __swift_destroy_boxed_opaque_existential_0(&v171);
          v146 = v140[2];
          v47 = __OFADD__(v146, 1);
          v143 = v146 + 1;
          if (v47)
          {
            goto LABEL_140;
          }

          goto LABEL_123;
        }

        v32 = v12;
        v33 = sub_1A8182568(v163, v162);
        v35 = v34;

        if (v35)
        {
          v36 = swift_isUniquelyReferenced_nonNull_native();
          v170 = v12;
          if (!v36)
          {
            sub_1A8193258();
            v32 = v170;
          }

          sub_1A8183084((v32[7] + 32 * v33), v168);
          v12 = v32;
          sub_1A8192AA0(v33, v32);
          __swift_destroy_boxed_opaque_existential_0(&v171);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(&v171);
          *v168 = 0u;
          v169 = 0u;
        }

        sub_1A8188C34(v168, &qword_1EB2E2830, &qword_1A81C4340);
        if (!v156)
        {
LABEL_69:
          v84 = sub_1A818C1A4(v30, a2 & 1, a3);
          v85 = swift_isUniquelyReferenced_nonNull_native();
          *&v171 = *a3;
          sub_1A8182980(v84, v160, v85);

          *a3 = v171;
          __swift_destroy_boxed_opaque_existential_0(&v173);
          goto LABEL_125;
        }

LABEL_124:
        __swift_destroy_boxed_opaque_existential_0(&v173);

LABEL_125:
        v6 = v149;
        v9 = v159;
        v10 = v154;
      }

LABEL_30:
      sub_1A8182480(&v173, &v171);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28F0, &qword_1A81C43C0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_1A8182480(&v173, &v171);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v22;
      v42 = v40;
      v168[0] = v12;
      v43 = sub_1A8182568(v163, v41);
      v45 = v12[2];
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_133;
      }

      v49 = v44;
      if (v12[3] >= v48)
      {
        if ((v42 & 1) == 0)
        {
          v137 = v43;
          sub_1A8193258();
          v43 = v137;
        }

        v50 = v162;
        if ((v49 & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_6:
        v13 = v43;

        v12 = v168[0];
        v14 = (*(v168[0] + 7) + 32 * v13);
        __swift_destroy_boxed_opaque_existential_0(v14);
        sub_1A8183084(&v171, v14);
        __swift_destroy_boxed_opaque_existential_0(&v173);
        v9 = v159;
      }

      else
      {
        sub_1A81922B8(v48, v42);
        v50 = v162;
        v43 = sub_1A8182568(v163, v162);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_143;
        }

        if (v49)
        {
          goto LABEL_6;
        }

LABEL_43:
        v12 = v168[0];
        *(v168[0] + (v43 >> 6) + 8) |= 1 << v43;
        v52 = (v12[6] + 16 * v43);
        *v52 = v163;
        v52[1] = v50;
        sub_1A8183084(&v171, (v12[7] + 32 * v43));
        __swift_destroy_boxed_opaque_existential_0(&v173);
        v53 = v12[2];
        v47 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v47)
        {
          goto LABEL_135;
        }

        v12[2] = v54;
        v9 = v159;
      }
    }

    v37 = v168[0];
    v170 = MEMORY[0x1E69E7CD0];
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_74;
    }

    v38 = v37;
    if (v163 == sub_1A81ACCC4() && v39 == v22)
    {

LABEL_50:
      v65 = [objc_opt_self() virtualObjectIDWithEntityType_];
      if (!v65)
      {
        goto LABEL_142;
      }

      v66 = v65;
      v67 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
      v68 = objc_allocWithZone(v67);
      *&v68[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v66;
      v68[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = 0;
      v165.receiver = v68;
      v165.super_class = v67;
      v69 = v66;
      v70 = objc_msgSendSuper2(&v165, sel_init);
      *(&v172 + 1) = v67;
      *&v171 = v70;

      v37 = v38;
      goto LABEL_72;
    }

    v64 = sub_1A81AD074();

    if (v64)
    {
      goto LABEL_50;
    }

    if (v163 == sub_1A81ACCC4() && v81 == v22)
    {
    }

    else
    {
      v86 = sub_1A81AD074();

      if ((v86 & 1) == 0)
      {
LABEL_74:
        v171 = 0u;
        v172 = 0u;
        sub_1A8188C34(&v171, &qword_1EB2E2830, &qword_1A81C4340);
        if ((v37 & 0xC000000000000001) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_75;
      }
    }

    *(&v172 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
    *&v171 = MEMORY[0x1E69E7CD0];
LABEL_72:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v87 = v168[0];
    v170 = v168[0];
LABEL_107:
    *(&v172 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
    *&v171 = v87;
    sub_1A8183084(&v171, v168);
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v12;
    v124 = sub_1A8182568(v163, v162);
    v126 = v12[2];
    v127 = (v125 & 1) == 0;
    v47 = __OFADD__(v126, v127);
    v128 = v126 + v127;
    if (v47)
    {
      goto LABEL_134;
    }

    v129 = v125;
    if (v12[3] >= v128)
    {
      if ((v123 & 1) == 0)
      {
        v138 = v124;
        sub_1A8193258();
        v124 = v138;
      }

      v130 = v162;
      if (v129)
      {
        goto LABEL_111;
      }

LABEL_115:
      v12 = v167;
      v167[(v124 >> 6) + 8] |= 1 << v124;
      v134 = (v12[6] + 16 * v124);
      *v134 = v163;
      v134[1] = v130;
      sub_1A8183084(v168, (v12[7] + 32 * v124));
      __swift_destroy_boxed_opaque_existential_0(&v173);
      v135 = v12[2];
      v47 = __OFADD__(v135, 1);
      v136 = v135 + 1;
      if (v47)
      {
        goto LABEL_136;
      }

      v12[2] = v136;
      v9 = v159;
    }

    else
    {
      sub_1A81922B8(v128, v123);
      v130 = v162;
      v124 = sub_1A8182568(v163, v162);
      if ((v129 & 1) != (v131 & 1))
      {
        goto LABEL_143;
      }

      if ((v129 & 1) == 0)
      {
        goto LABEL_115;
      }

LABEL_111:
      v132 = v124;

      v12 = v167;
      v133 = (v167[7] + 32 * v132);
      __swift_destroy_boxed_opaque_existential_0(v133);
      sub_1A8183084(v168, v133);
      __swift_destroy_boxed_opaque_existential_0(&v173);
      v9 = v159;
    }
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
LABEL_75:
    sub_1A81ACE84();
    sub_1A819550C(&qword_1EB2E2890, &unk_1EB2E2860, off_1E77FBA90);
    sub_1A81ACDA4();
    v37 = v178;
    v88 = v179;
    v89 = v180;
    v90 = v181;
    v91 = v182;
    goto LABEL_81;
  }

LABEL_77:
  v90 = 0;
  v92 = -1 << *(v37 + 32);
  v88 = v37 + 56;
  v89 = ~v92;
  v93 = -v92;
  if (v93 < 64)
  {
    v94 = ~(-1 << v93);
  }

  else
  {
    v94 = -1;
  }

  v91 = v94 & *(v37 + 56);
LABEL_81:
  v95 = (v89 + 64) >> 6;
  v157 = v88;
  v155 = v95;
  v152 = v37;
  v153 = v12;
  while (2)
  {
    if (v37 < 0)
    {
      v101 = sub_1A81ACEB4();
      if (!v101 || (v168[0] = v101, swift_dynamicCast(), v100 = v171, v98 = v90, v99 = v91, !v171))
      {
LABEL_106:
        sub_1A819529C(v37);
        v87 = v170;
        v6 = v149;
        goto LABEL_107;
      }

LABEL_93:
      v161 = v99;
      v102 = [v100 objectID];
      if (!v102)
      {

        v90 = v98;
        v91 = v99;
LABEL_83:
        v88 = v157;
        v95 = v155;
        continue;
      }

      v103 = v102;
      v104 = [v100 isPendingInsert];
      v105 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
      v106 = objc_allocWithZone(v105);
      *&v106[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v103;
      v106[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = v104;
      v166.receiver = v106;
      v166.super_class = v105;
      v107 = v103;
      v108 = objc_msgSendSuper2(&v166, sel_init);
      sub_1A8193768(&v171, v108);

      v109 = sub_1A818C1A4(v100, a2 & 1, a3);
      v110 = swift_isUniquelyReferenced_nonNull_native();
      *&v171 = *a3;
      v111 = v171;
      v113 = sub_1A8182524(v107);
      v114 = *(v111 + 16);
      v115 = (v112 & 1) == 0;
      v116 = v114 + v115;
      if (__OFADD__(v114, v115))
      {
        goto LABEL_131;
      }

      v117 = v112;
      if (*(v111 + 24) < v116)
      {
        sub_1A8192048(v116, v110);
        v118 = sub_1A8182524(v107);
        if ((v117 & 1) != (v119 & 1))
        {
          goto LABEL_144;
        }

        v113 = v118;
        v120 = v171;
        if ((v117 & 1) == 0)
        {
          goto LABEL_103;
        }

LABEL_101:
        *(v120[7] + 8 * v113) = v109;

LABEL_105:
        *a3 = v120;
        v90 = v98;
        v91 = v161;
        v12 = v153;
        v10 = v154;
        v37 = v152;
        goto LABEL_83;
      }

      if (v110)
      {
        v120 = v171;
        if (v112)
        {
          goto LABEL_101;
        }
      }

      else
      {
        sub_1A81930F4();
        v120 = v171;
        if (v117)
        {
          goto LABEL_101;
        }
      }

LABEL_103:
      v120[(v113 >> 6) + 8] |= 1 << v113;
      *(v120[6] + 8 * v113) = v107;
      *(v120[7] + 8 * v113) = v109;

      v121 = v120[2];
      v47 = __OFADD__(v121, 1);
      v122 = v121 + 1;
      if (v47)
      {
        goto LABEL_132;
      }

      v120[2] = v122;
      goto LABEL_105;
    }

    break;
  }

  v96 = v90;
  v97 = v91;
  v98 = v90;
  if (v91)
  {
LABEL_89:
    v99 = (v97 - 1) & v97;
    v100 = *(*(v37 + 48) + ((v98 << 9) | (8 * __clz(__rbit64(v97)))));
    if (!v100)
    {
      goto LABEL_106;
    }

    goto LABEL_93;
  }

  while (1)
  {
    v98 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      break;
    }

    if (v98 >= v95)
    {
      goto LABEL_106;
    }

    v97 = *(v88 + 8 * v98);
    ++v96;
    if (v97)
    {
      goto LABEL_89;
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  sub_1A81AD0B4();
  __break(1u);
LABEL_144:
  sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
  result = sub_1A81AD0B4();
  __break(1u);
  return result;
}