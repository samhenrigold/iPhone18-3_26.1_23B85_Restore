id _ACDLogSystem(uint64_t a1)
{
  if (_ACDLogSystem_onceToken != -1)
  {
    _ACDLogSystem_cold_1();
  }

  v2 = _ACDLogSystem_log;

  return v2;
}

id ac_unfair_lock_perform_with_result(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v4 = v3[2](v3);
  os_unfair_lock_unlock(a1);

  return v4;
}

void sub_221D30F34(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1);
  objc_exception_rethrow();
}

id ac_unfair_lock_perform_with_result_0(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v4 = v3[2](v3);
  os_unfair_lock_unlock(a1);

  return v4;
}

void sub_221D30FCC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1);
  objc_exception_rethrow();
}

id ac_unfair_lock_perform_with_result_1(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v4 = v3[2](v3);
  os_unfair_lock_unlock(a1);

  return v4;
}

void sub_221D31064(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1);
  objc_exception_rethrow();
}

id _ACDConnectionLogSystem(uint64_t a1)
{
  if (_ACDConnectionLogSystem_onceToken != -1)
  {
    _ACDConnectionLogSystem_cold_1();
  }

  v2 = _ACDConnectionLogSystem_log;

  return v2;
}

void sub_221D312A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t syncDataTypeForDataclass(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277CB9150]])
  {
    v2 = kACDSyncDataTypeMailAccounts;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CB9108]])
  {
    v2 = kACDSyncDataTypeContacts;
  }

  else if (([v1 isEqualToString:*MEMORY[0x277CB90F0]] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277CB9190]))
  {
    v2 = kACDSyncDataTypeCalendars;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CB90D0]])
  {
    v2 = kACDSyncDataTypeBookmarks;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CB9178]])
  {
    v2 = kACDSyncDataTypeNotes;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *tetheredSyncSourceTypeForDataType(uint64_t a1)
{
  if (lockdown_connect())
  {
    v1 = lockdown_copy_value();
    if (v1)
    {
      v2 = v1;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v2))
      {
        v4 = CFDictionaryGetValue(v2, @"SyncingOS");
        v5 = v4;
        if (v4)
        {
          v6 = v4;
        }

        else
        {
          v6 = @"iPhone";
        }
      }

      else
      {
        v6 = @"iPhone";
      }

      CFRelease(v2);
    }

    else
    {
      v6 = @"iPhone";
    }

    lockdown_disconnect();
  }

  else
  {
    v6 = @"iPhone";
  }

  return v6;
}

id _ACDKeychainLogSystem(uint64_t a1)
{
  if (_ACDKeychainLogSystem_onceToken != -1)
  {
    _ACDKeychainLogSystem_cold_1();
  }

  v2 = _ACDKeychainLogSystem_log;

  return v2;
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

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
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

id OUTLINED_FUNCTION_9_1(uint64_t a1)
{
  v2 = (a1 + 56);

  return objc_loadWeakRetained(v2);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_26(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_15(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_5_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_6_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x26u);
}

const char *OUTLINED_FUNCTION_6_5()
{

  return sel_getName(v0);
}

id OUTLINED_FUNCTION_0_4(id a1)
{

  return a1;
}

uint64_t sub_221D32DA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_221D32DD8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_221D32E10()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_221D32E60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_221D32EA0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_221D32F10()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_221D32F6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_221D32FB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_221D32FFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A48, &qword_221DB1E98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

void sub_221D34184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D35280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_221D35FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D36570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D36D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221D37368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221D37B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D38688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221D39070(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 3);
  objc_exception_rethrow();
}

void sub_221D3937C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_221D39460(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D39620(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D398E8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D39AFC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 3);
  objc_exception_rethrow();
}

void sub_221D3A744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221D45404(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D455B4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 3);
  objc_exception_rethrow();
}

void sub_221D45708(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_221D457EC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D45DD8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D46070(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 3);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_221D461E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_221D462C8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D46914(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 3);
  objc_exception_rethrow();
}

void sub_221D46B04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_221D46BE8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D46E54(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D47010(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D47390(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D47660(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

id _ACDManagedObjectModel(uint64_t a1)
{
  if (_ACDManagedObjectModel_onceToken != -1)
  {
    _ACDManagedObjectModel_cold_1();
  }

  v2 = _ACDManagedObjectModel_managedObjectModel;

  return v2;
}

void sub_221D486E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221D4890C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_221D48A84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __CFString *a11, id a12, __CFString *a13, id a14, __int128 buf)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    v17 = _ACDLogSystem(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_221D2F000, v17, OS_LOG_TYPE_DEFAULT, "Caught an exception during the first attempt to open the Accounts DB: %@", &buf, 0xCu);
    }

    if (v15)
    {
      v18 = [v16 userInfo];
      v19 = *MEMORY[0x277CBE2C8];
      v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277CBE2C8]];

      v23 = MEMORY[0x277CCA9B8];
      if (v20)
      {
        v21 = [v20 integerValue];
        a13 = @"TriggeringException";
        a14 = v16;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a14 forKeys:&a13 count:1];
        [v23 errorWithDomain:v19 code:v21 userInfo:v22];
      }

      else
      {
        a11 = @"TriggeringException";
        a12 = v16;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a12 forKeys:&a11 count:1];
        [v23 errorWithDomain:*MEMORY[0x277CB8DC0] code:1 userInfo:v22];
      }
      *v15 = ;
    }

    objc_end_catch();
    JUMPOUT(0x221D48A24);
  }

  _Unwind_Resume(a1);
}

void sub_221D490CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221D49918(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __CFString *a11, id a12, __CFString *a13, id a14, __int128 buf)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    v17 = _ACDLogSystem(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_221D2F000, v17, OS_LOG_TYPE_DEFAULT, "Caught an exception during the first attempt to open the Accounts DB: %@", &buf, 0xCu);
    }

    if (v15)
    {
      v18 = [v16 userInfo];
      v19 = *MEMORY[0x277CBE2C8];
      v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277CBE2C8]];

      v23 = MEMORY[0x277CCA9B8];
      if (v20)
      {
        v21 = [v20 integerValue];
        a13 = @"TriggeringException";
        a14 = v16;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a14 forKeys:&a13 count:1];
        [v23 errorWithDomain:v19 code:v21 userInfo:v22];
      }

      else
      {
        a11 = @"TriggeringException";
        a12 = v16;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a12 forKeys:&a11 count:1];
        [v23 errorWithDomain:*MEMORY[0x277CB8DC0] code:1 userInfo:v22];
      }
      *v15 = ;
    }

    objc_end_catch();
    JUMPOUT(0x221D498B8);
  }

  _Unwind_Resume(a1);
}

void sub_221D49F4C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D4A644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D4A838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D4AE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D4FD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id -[ACDAccountStore _block_accountWithIdentifier:](ACDAccountStore *self, SEL a2, id a3)
{
  v4 = [(ACDAccountStore *)self _accountWithIdentifier:a3];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:v4 accountStore:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_221D4FFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D50150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D50438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D50690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D50994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D50DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221D51CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D5209C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D524A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_221D53064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D534D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id -[ACDAccountStore _block_accountsWithAccountType:options:error:](ACDAccountStore *self, SEL a2, id a3, unint64_t a4, id *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  databaseConnection = self->_databaseConnection;
  v10 = [v8 objectID];
  v11 = [(ACDDatabaseConnection *)databaseConnection managedObjectIDForURI:v10];

  if (v11)
  {
    v31 = v8;
    v13 = [(ACDAccountStore *)self _predicateForFetchingAccountsWithManagedAccountTypeID:v11 options:a4];
    v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:1];
    v15 = self->_databaseConnection;
    v16 = [MEMORY[0x277CB8F30] keypathsRequiredForInitialization];
    v30 = v13;
    v17 = [(ACDDatabaseConnection *)v15 fetchObjectsForEntityNamed:@"Account" withPredicate:v13 sortDescriptor:v14 prefetchKeypaths:v16];

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:*(*(&v32 + 1) + 8 * i) accountStore:self];
          if (v24)
          {
            [v18 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v21);
    }

    v25 = 0;
    v8 = v31;
  }

  else
  {
    v26 = _ACDLogSystem(v12);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStore _block_accountsWithAccountType:options:error:];
    }

    v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:4 userInfo:0];
    v25 = v27;
    v18 = 0;
    if (a5 && v27)
    {
      v28 = v27;
      v18 = 0;
      *a5 = v25;
    }
  }

  return v18;
}

void sub_221D53B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D53E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D541F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D54560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D548CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D54F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D552D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D555E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D558F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D55AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D55D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221D56258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_221D567DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D56C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221D57024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D57CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221D59EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D5A348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D5B12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D5B6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id -[ACDAccountStore _block_accountsWithAccountTypeIdentifiers:preloadedProperties:](ACDAccountStore *self, SEL a2, id a3, id a4)
{
  v115 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 count];
    v9 = MEMORY[0x277CCAC30];
    if (v8 == 1)
    {
      v10 = [v6 firstObject];
      v11 = [v9 predicateWithFormat:@"accountType.identifier == %@", v10];
    }

    else
    {
      v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountType.identifier IN %@", v6];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = 0x277CB8000uLL;
  v13 = [MEMORY[0x277CB8F30] keypathsRequiredForInitialization];
  v14 = [v13 mutableCopy];

  v15 = *MEMORY[0x277CB8E70];
  if ([v7 containsObject:*MEMORY[0x277CB8E70]])
  {
    [v14 addObject:v15];
  }

  v16 = *MEMORY[0x277CB8E80];
  if ([v7 containsObject:*MEMORY[0x277CB8E80]])
  {
    [v14 addObject:v16];
  }

  v17 = [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"Account" withPredicate:v11 sortDescriptor:0 prefetchKeypaths:v14];
  if ([v17 count])
  {
    v80 = v14;
    v81 = v11;
    v82 = v6;
    v89 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v86 = [v7 containsObject:v15];
    v85 = [v7 containsObject:v16];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v79 = v17;
    obj = v17;
    v18 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v107;
      v83 = v7;
      v84 = *v107;
      do
      {
        v21 = 0;
        v87 = v19;
        do
        {
          if (*v107 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v106 + 1) + 8 * v21);
          v23 = [objc_alloc(*(v12 + 3888)) initWithManagedAccount:v22];
          if (v23)
          {
            [v89 addObject:v23];
            if ([v7 count])
            {
              if (v86)
              {
                v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v102 = 0u;
                v103 = 0u;
                v104 = 0u;
                v105 = 0u;
                v25 = [v22 enabledDataclasses];
                v26 = [v25 countByEnumeratingWithState:&v102 objects:v113 count:16];
                if (v26)
                {
                  v27 = v26;
                  v28 = *v103;
                  do
                  {
                    for (i = 0; i != v27; ++i)
                    {
                      if (*v103 != v28)
                      {
                        objc_enumerationMutation(v25);
                      }

                      v30 = [*(*(&v102 + 1) + 8 * i) name];
                      [v24 addObject:v30];
                    }

                    v27 = [v25 countByEnumeratingWithState:&v102 objects:v113 count:16];
                  }

                  while (v27);
                }

                v31 = [MEMORY[0x277CB8FB8] setWithSet:v24];
                [v23 setTrackedEnabledDataclasses:v31];

                v32 = [v23 accountType];
                v33 = [v22 accountType];
                v34 = [v33 syncableDataclassStrings];
                [v32 setSyncableDataclasses:v34];

                v35 = [v23 parentAccount];

                if (v35)
                {
                  v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  v98 = 0u;
                  v99 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  v37 = [v22 parentAccount];
                  v38 = [v37 enabledDataclasses];

                  v39 = [v38 countByEnumeratingWithState:&v98 objects:v112 count:16];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = *v99;
                    do
                    {
                      for (j = 0; j != v40; ++j)
                      {
                        if (*v99 != v41)
                        {
                          objc_enumerationMutation(v38);
                        }

                        v43 = [*(*(&v98 + 1) + 8 * j) name];
                        [v36 addObject:v43];
                      }

                      v40 = [v38 countByEnumeratingWithState:&v98 objects:v112 count:16];
                    }

                    while (v40);
                  }

                  v44 = [MEMORY[0x277CB8FB8] setWithSet:v36];
                  v45 = [v23 parentAccount];
                  [v45 setTrackedEnabledDataclasses:v44];

                  v46 = [v23 parentAccount];
                  v47 = [v46 accountType];
                  v48 = [v22 parentAccount];
                  v49 = [v48 accountType];
                  v50 = [v49 syncableDataclassStrings];
                  [v47 setSyncableDataclasses:v50];

                  v7 = v83;
                }

                v12 = 0x277CB8000;
                v20 = v84;
                v19 = v87;
              }

              if (v85)
              {
                v51 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v94 = 0u;
                v95 = 0u;
                v96 = 0u;
                v97 = 0u;
                v52 = [v22 provisionedDataclasses];
                v53 = [v52 countByEnumeratingWithState:&v94 objects:v111 count:16];
                if (v53)
                {
                  v54 = v53;
                  v55 = *v95;
                  do
                  {
                    for (k = 0; k != v54; ++k)
                    {
                      if (*v95 != v55)
                      {
                        objc_enumerationMutation(v52);
                      }

                      v57 = [*(*(&v94 + 1) + 8 * k) name];
                      [v51 addObject:v57];
                    }

                    v54 = [v52 countByEnumeratingWithState:&v94 objects:v111 count:16];
                  }

                  while (v54);
                }

                v58 = [MEMORY[0x277CB8FB8] setWithSet:v51];
                [v23 setTrackedProvisionedDataclasses:v58];

                v59 = [v23 accountType];
                v60 = [v22 accountType];
                v61 = [v60 supportedDataclassStrings];
                [v59 setSupportedDataclasses:v61];

                v62 = [v23 parentAccount];

                if (v62)
                {
                  v63 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  v90 = 0u;
                  v91 = 0u;
                  v92 = 0u;
                  v93 = 0u;
                  v64 = [v22 parentAccount];
                  v65 = [v64 provisionedDataclasses];

                  v66 = [v65 countByEnumeratingWithState:&v90 objects:v110 count:16];
                  if (v66)
                  {
                    v67 = v66;
                    v68 = *v91;
                    do
                    {
                      for (m = 0; m != v67; ++m)
                      {
                        if (*v91 != v68)
                        {
                          objc_enumerationMutation(v65);
                        }

                        v70 = [*(*(&v90 + 1) + 8 * m) name];
                        [v63 addObject:v70];
                      }

                      v67 = [v65 countByEnumeratingWithState:&v90 objects:v110 count:16];
                    }

                    while (v67);
                  }

                  v71 = [MEMORY[0x277CB8FB8] setWithSet:v63];
                  v72 = [v23 parentAccount];
                  [v72 setTrackedProvisionedDataclasses:v71];

                  v73 = [v23 parentAccount];
                  v74 = [v73 accountType];
                  v75 = [v22 parentAccount];
                  v76 = [v75 accountType];
                  v77 = [v76 supportedDataclassStrings];
                  [v74 setSupportedDataclasses:v77];

                  v7 = v83;
                }

                v12 = 0x277CB8000;
                v20 = v84;
                v19 = v87;
              }
            }
          }

          ++v21;
        }

        while (v21 != v19);
        v19 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
      }

      while (v19);
    }

    v11 = v81;
    v6 = v82;
    v17 = v79;
    v14 = v80;
  }

  else
  {
    v89 = 0;
  }

  return v89;
}

void sub_221D5D3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_23(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2112;
  *(a4 + 14) = v4;
  return result;
}

id ExplicitAllowedPluginsByChangeType(uint64_t a1)
{
  if (ExplicitAllowedPluginsByChangeType_onceToken != -1)
  {
    ExplicitAllowedPluginsByChangeType_cold_1();
  }

  v2 = ExplicitAllowedPluginsByChangeType_explicitAllowedPluginsForChangeType;

  return v2;
}

void __ExplicitAllowedPluginsByChangeType_block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = &unk_28353F138;
  v3[0] = &unk_28353F210;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = ExplicitAllowedPluginsByChangeType_explicitAllowedPluginsForChangeType;
  ExplicitAllowedPluginsByChangeType_explicitAllowedPluginsForChangeType = v0;
}

__CFString *ACDStringFromChangeType(int a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_27848C7F0[a1 - 1];
  }
}

void sub_221D60344(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_221D6036C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x221D60378);
}

void sub_221D60CF8(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_221D60D20(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x221D60D2CLL);
}

void sub_221D61434(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x221D61440);
}

void sub_221D61B48(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x221D61B54);
}

void sub_221D630C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D634BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _ACDNotificationLogSystem(uint64_t a1)
{
  if (_ACDNotificationLogSystem_onceToken != -1)
  {
    _ACDNotificationLogSystem_cold_1();
  }

  v2 = _ACDNotificationLogSystem_log;

  return v2;
}

id _ACDPluginLogSystem(uint64_t a1)
{
  if (_ACDPluginLogSystem_onceToken != -1)
  {
    _ACDPluginLogSystem_cold_1();
  }

  v2 = _ACDPluginLogSystem_log;

  return v2;
}

id _ACDSaveLogSystem(uint64_t a1)
{
  if (_ACDSaveLogSystem_onceToken != -1)
  {
    _ACDSaveLogSystem_cold_1();
  }

  v2 = _ACDSaveLogSystem_log;

  return v2;
}

id _ACDEntitlementLogSystem(uint64_t a1)
{
  if (_ACDEntitlementLogSystem_onceToken != -1)
  {
    _ACDEntitlementLogSystem_cold_1();
  }

  v2 = _ACDEntitlementLogSystem_log;

  return v2;
}

id _ACDNotificationSignpostSystem(uint64_t a1)
{
  if (_ACDNotificationSignpostSystem_onceToken != -1)
  {
    _ACDNotificationSignpostSystem_cold_1();
  }

  v2 = _ACDNotificationSignpostSystem_log;

  return v2;
}

void ACDLogAccessRequest(void *a1, void *a2, int a3, uint64_t a4, double a5)
{
  v9 = a2;
  v10 = MEMORY[0x277CBEB38];
  v11 = a1;
  v12 = [[v10 alloc] initWithCapacity:5];
  v13 = [ACDTCCUtilities _TCCServiceForAccountTypeID:v11];

  if (v9 && v13)
  {
    [v12 setObject:&unk_28353F168 forKey:v9];
    [v12 setObject:&unk_28353F168 forKey:v13];
    if (a3)
    {
      v14 = &unk_28353F168;
    }

    else
    {
      v14 = &unk_28353F180;
    }

    [v12 setObject:v14 forKey:@"response"];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:a4];
    [v12 setObject:v15 forKey:@"jitVisible"];

    v16 = [MEMORY[0x277CCABB0] numberWithInt:-a5];
    [v12 setObject:v16 forKey:@"jitVisibleTime"];

    if (ACDLogAccessRequest_onceToken != -1)
    {
      ACDLogAccessRequest_cold_1();
    }

    if (ACDLogAccessRequest__loadedCRLogStructuredData)
    {
      ACDLogAccessRequest__loadedCRLogStructuredData(167, v12);
    }

    else
    {
      v18 = _ACDLogSystem(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        ACDLogAccessRequest_cold_2(v18);
      }
    }
  }
}

void *__ACDLogAccessRequest_block_invoke()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 2);
  result = dlsym(v0, "CRLogStructuredData");
  ACDLogAccessRequest__loadedCRLogStructuredData = result;
  return result;
}

void _ACDLazyArrayInitializeIfNecessary(void *a1)
{
  v1 = a1;
  v6 = v1;
  if (!v1)
  {
    _ACDLazyArrayInitializeIfNecessary_cold_1();
    v1 = 0;
  }

  os_unfair_lock_lock(v1 + 2);
  v2 = *&v6[4]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = (*(v2 + 16))();
    v4 = *&v6[6]._os_unfair_lock_opaque;
    *&v6[6]._os_unfair_lock_opaque = v3;

    v5 = *&v6[4]._os_unfair_lock_opaque;
    *&v6[4]._os_unfair_lock_opaque = 0;
  }

  os_unfair_lock_unlock(v6 + 2);
}

void _ACCOUNTS_IS_VALIDATING_PLUGIN_RESPONSE(int a1, uint64_t a2, void *a3, const char *a4)
{
  v7 = a3;
  v8 = v7;
  if (!a2 && a1)
  {
    v9 = _ACDPluginLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      _ACCOUNTS_IS_VALIDATING_PLUGIN_RESPONSE_cold_1(v8, a4, v9);
    }
  }
}

void sub_221D6CBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D6D16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_221D6D414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D6D798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

id decodeString(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 length];
  v3 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = v11 - v4;
  v6 = [v1 UTF8String];
  if (v3 < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = v3 & 0x7FFFFFFF;
    do
    {
      v5[v7] = *(v6 + v7) - ((v7 + 1) & 1);
      ++v7;
    }

    while (v8 != v7);
  }

  v5[v8] = 0;
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];

  return v9;
}

void sub_221D715D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id obj, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_sync_exit(obj);
  objc_destroyWeak(&a66);
  objc_destroyWeak(&a65);
  objc_destroyWeak(&STACK[0x238]);
  objc_destroyWeak(&STACK[0x230]);
  objc_destroyWeak(&STACK[0x240]);
  objc_destroyWeak(&STACK[0x248]);
  _Unwind_Resume(a1);
}

void __HandleLanguageChangeNotification(uint64_t a1, void *a2)
{
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __HandleLanguageChangeNotification_cold_1();
  }

  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v4 _handleLanguageChangedDarwinNotification];
  }
}

void sub_221D74B40(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 18);
  objc_exception_rethrow();
}

void sub_221D757F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D76430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D768E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D76DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D775F8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D77994(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_221D7AEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D7DC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSimulateCrashSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CrashReporterSupportLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CrashReporterSupportLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27848D018;
    v6 = 0;
    CrashReporterSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CrashReporterSupportLibraryCore_frameworkLibrary;
  if (!CrashReporterSupportLibraryCore_frameworkLibrary)
  {
    __getSimulateCrashSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "SimulateCrash");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSimulateCrashSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CrashReporterSupportLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CrashReporterSupportLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_221D7EA08(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (a2 == 1)
  {
    v21 = objc_begin_catch(exc_buf);
    v22 = _ACDLogSystem(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabaseMigrator runReturningError:];
    }

    v23 = MEMORY[0x277CCA9B8];
    *(v19 - 72) = @"TriggeringException";
    *(v19 - 64) = v21;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 - 64 forKeys:v19 - 72 count:1];
    [v23 errorWithDomain:*MEMORY[0x277CB8DC0] code:10000 userInfo:v24];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    if (!v17)
    {
      JUMPOUT(0x221D7E980);
    }

    JUMPOUT(0x221D7E974);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 104), 8);
  _Unwind_Resume(exc_buf);
}

void sub_221D7F690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D7F8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D7FB90(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x221D7FA44);
  }

  _Unwind_Resume(a1);
}

void sub_221D8790C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D87A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221D87D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_221D88040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_221D88364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_221D88688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_221D88994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221D89FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_221D8A230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ACDAccountSyncEnabled(uint64_t a1)
{
  v1 = _ACDLogSystem(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    ACDAccountSyncEnabled_cold_1();
  }

  return 0;
}

uint64_t ACDAccountSyncAccountIsSyncable(uint64_t a1)
{
  v1 = _ACDLogSystem(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    ACDAccountSyncEnabled_cold_1();
  }

  return 0;
}

uint64_t ACDAccountSyncDevices(uint64_t a1)
{
  v1 = _ACDLogSystem(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    ACDAccountSyncDevices_cold_1();
  }

  return MEMORY[0x277CBEBF8];
}

uint64_t ACDAccountSyncRemoveTombstones(uint64_t a1)
{
  v1 = _ACDLogSystem(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    ACDAccountSyncRemoveTombstones_cold_1();
  }

  return MEMORY[0x277CBEBF8];
}

uint64_t ACDAccountSyncMarkAccountCreated(uint64_t a1)
{
  v1 = _ACDLogSystem(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    ACDAccountSyncMarkAccountCreated_cold_1();
  }

  return 0;
}

uint64_t ACDAccountSyncMarkAccountDeleted(uint64_t a1)
{
  v1 = _ACDLogSystem(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    ACDAccountSyncMarkAccountDeleted_cold_1();
  }

  return 0;
}

uint64_t SetTetheredSyncingDisabledForDatatype(uint64_t a1, char a2, CFStringRef *a3)
{
  valuePtr = a2;
  v5 = lockdown_connect();
  if (v5 && (v6 = lockdown_copy_value()) != 0)
  {
    v7 = v6;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v7) && CFDictionaryGetCount(v7) >= 1)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Mutable = MutableCopy;
    CFRelease(v7);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v11 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  Value = CFDictionaryGetValue(Mutable, @"DisableTethered");
  if (Value && CFNumberCompare(v11, Value, 0) == kCFCompareEqualTo)
  {
    v13 = 0;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  CFDictionarySetValue(Mutable, @"DisableTethered", v11);
  v13 = 1;
  if (v11)
  {
LABEL_12:
    CFRelease(v11);
  }

LABEL_13:
  if (!v13 || (v14 = lockdown_set_value(), !v14))
  {
    v16 = 0;
    if (!v5)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v15 = v14;
  NSLog(&cfstr_CouldNotSetThe.isa, a1, Mutable, @"com.apple.mobile.tethered_sync", v14);
  if (a3)
  {
    *a3 = CFStringCreateWithFormat(0, 0, @"Could not set the lockdown key %@ with %@ for %@: %d", a1, Mutable, @"com.apple.mobile.tethered_sync", v15);
  }

  v16 = 0xFFFFFFFFLL;
  if (v5)
  {
LABEL_20:
    lockdown_disconnect();
  }

LABEL_21:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v16;
}

uint64_t GetTetheredSyncingDisabledForDataType(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    *a2 = 0;
    result = lockdown_connect();
    if (result)
    {
      v4 = lockdown_copy_value();
      if (v4)
      {
        v5 = v4;
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(v5))
        {
          Value = CFDictionaryGetValue(v5, @"DisableTethered");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberCharType, a2);
          }
        }

        lockdown_disconnect();
        CFRelease(v5);
      }

      else
      {
        lockdown_disconnect();
      }

      return 0;
    }
  }

  else
  {
    NSLog(&cfstr_NoOutDisabledB.isa);
    return 4294967293;
  }

  return result;
}

uint64_t SetAccountNameEnabledForDataType(const __CFString *a1, uint64_t a2, int a3, CFStringRef *a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = lockdown_connect();
  if (v8 && (v9 = lockdown_copy_value()) != 0)
  {
    v10 = v9;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v10) && CFDictionaryGetCount(v10) >= 1)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v10);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Mutable = MutableCopy;
    CFRelease(v10);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  Value = CFDictionaryGetValue(Mutable, @"AccountNames");
  if (Value)
  {
    v16 = CFArrayCreateMutableCopy(0, 0, Value);
  }

  else
  {
    v16 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  }

  v17 = v16;
  v18 = _externalSourcesArrayIndexOfExternalSource(v16, a1);
  if (a3 || v18 < 0)
  {
    v14 = 0;
    if (a3 != 1 || v18 != -1)
    {
      goto LABEL_24;
    }

    CFArrayAppendValue(v17, a1);
  }

  else
  {
    CFArrayRemoveValueAtIndex(v17, v18);
  }

  CFDictionarySetValue(Mutable, @"AccountNames", v17);
  v19 = lockdown_set_value();
  if (!v19)
  {
    v14 = 0;
    if (!v8)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v20 = v19;
  NSLog(&cfstr_CouldNotSetThe.isa, a2, Mutable, @"com.apple.mobile.data_sync", v19);
  if (a4)
  {
    *a4 = CFStringCreateWithFormat(0, 0, @"Could not set the lockdown key %@ with %@ for %@: %d", a2, Mutable, @"com.apple.mobile.data_sync", v20);
  }

  v14 = 0xFFFFFFFFLL;
LABEL_24:
  if (v8)
  {
LABEL_25:
    lockdown_disconnect();
  }

LABEL_26:
  if (v17)
  {
    CFRelease(v17);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

CFIndex _externalSourcesArrayIndexOfExternalSource(const __CFArray *a1, const __CFString *a2)
{
  if (!a1)
  {
    return -1;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return -1;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    if (ValueAtIndex)
    {
      if (CFStringCompare(a2, ValueAtIndex, 0) == kCFCompareEqualTo)
      {
        break;
      }
    }

    if (v5 == ++v6)
    {
      return -1;
    }
  }

  return v6;
}

uint64_t SetExternalSourceEnabledForDataType(const __CFString *a1, uint64_t a2, int a3, CFStringRef *a4)
{
  v8 = lockdown_connect();
  if (v8 && (v9 = lockdown_copy_value()) != 0)
  {
    v10 = v9;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v10) && CFDictionaryGetCount(v10) >= 1)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v10);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Mutable = MutableCopy;
    CFRelease(v10);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  Value = CFDictionaryGetValue(Mutable, @"Sources");
  if (Value)
  {
    v15 = CFArrayCreateMutableCopy(0, 0, Value);
  }

  else
  {
    v15 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  }

  v16 = v15;
  v17 = _externalSourcesArrayIndexOfExternalSource(v15, a1);
  if (a3 || v17 < 0)
  {
    v18 = 0;
    if (a3 != 1 || v17 != -1)
    {
      goto LABEL_22;
    }

    CFArrayAppendValue(v16, a1);
  }

  else
  {
    CFArrayRemoveValueAtIndex(v16, v17);
  }

  CFDictionarySetValue(Mutable, @"Sources", v16);
  v19 = lockdown_set_value();
  if (v19)
  {
    v20 = v19;
    NSLog(&cfstr_CouldNotSetThe.isa, a2, Mutable, @"com.apple.mobile.data_sync", v19);
    if (a4)
    {
      *a4 = CFStringCreateWithFormat(0, 0, @"Could not set the lockdown key %@ with %@ for %@: %d", a2, Mutable, @"com.apple.mobile.data_sync", v20);
    }

    v18 = 0xFFFFFFFFLL;
LABEL_22:
    if (!v8)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v18 = 0;
  if (v8)
  {
LABEL_23:
    lockdown_disconnect();
  }

LABEL_24:
  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v18;
}

uint64_t CopyExternalSourcesEnabledForDataType(const void *a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v4 = _copyLockdownDataSourceDictForDataType(a1);
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      Value = CFDictionaryGetValue(v4, @"Sources");
      *a2 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    CFRelease(v5);
  }

  return 0;
}

const void *_copyLockdownDataSourceDictForDataType(const void *a1)
{
  if (!lockdown_connect())
  {
    return 0;
  }

  v2 = lockdown_copy_value();
  if (!v2)
  {
LABEL_9:
    lockdown_disconnect();
    return 0;
  }

  v3 = v2;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v3) || CFDictionaryGetCount(v3) <= 0)
  {
    CFRelease(v3);
    goto LABEL_9;
  }

  lockdown_disconnect();
  Value = CFDictionaryGetValue(v3, a1);
  v6 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v3);
  return v6;
}

uint64_t CopyAccountNamesEnabledForDataType(const void *a1, void *a2)
{
  v3 = _copyLockdownDataSourceDictForDataType(a1);
  if (v3)
  {
    v4 = v3;
    if (a2)
    {
      Value = CFDictionaryGetValue(v3, @"AccountNames");
      *a2 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    CFRelease(v4);
  }

  return 0;
}

id _ACDSetForKeyInBundle(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a1 objectForInfoDictionaryKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v10 = [v9 initWithArray:{v4, v12}];
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  return v10;
}

uint64_t sub_221D8BF30()
{
  v1 = v0;
  v2 = sub_221DAC2E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84FA0];
  v11 = MEMORY[0x277D84FA0];
  v7 = MEMORY[0x223DAA530](v1);
  if (v7 == sub_221DAC248())
  {
    swift_unknownObjectRetain();
    v8 = sub_221DAC2F8();
    MEMORY[0x28223BE20](v8);
    *(&v10 - 2) = v5;
    *(&v10 - 1) = &v11;
    sub_221DAC2D8();
    (*(v3 + 8))(v5, v2);
    return v11;
  }

  return v6;
}

uint64_t sub_221D8C080(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x223DAA530](a2);
  result = sub_221DAC268();
  if (v3 == result)
  {
    result = MEMORY[0x223DA9020](a1);
    if (v5)
    {
      sub_221D90F7C(&v6, result, v5);
    }
  }

  return result;
}

BOOL sub_221D8C188(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_221D8C1B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_221D8C1E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_221D8C2D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_221D8C304@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *XPCEventSubscriber.init(handle:descriptor:flags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v43 = a1;
  v44 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8828, &qword_221DB1560);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v39 - v7;
  v8 = sub_221DAC288();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a3;
  swift_unknownObjectRetain();
  v42 = a2;
  sub_221DAC2A8();
  v46 = v10;
  result = sub_221DAC278();
  v12 = result;
  v13 = result[2];
  if (v13)
  {
    v14 = 0;
    v47 = result + 4;
    v15 = MEMORY[0x277D84F98];
    while (v14 < v12[2])
    {
      v16 = &v47[2 * v14];
      v17 = *v16;
      v18 = v16[1];
      v19 = objc_opt_self();

      result = [v19 allIdentifiers];
      if (!result)
      {
        goto LABEL_21;
      }

      v20 = result;
      ++v14;
      v21 = sub_221DAC518();

      if (*(v21 + 16) && (sub_221DAC718(), sub_221DAC3F8(), v22 = sub_221DAC728(), v23 = -1 << *(v21 + 32), v24 = v22 & ~v23, ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(v21 + 48) + 16 * v24);
          v27 = *v26 == v17 && v26[1] == v18;
          if (v27 || (sub_221DAC6C8() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v28 = v45;
        sub_221DAC298();
        sub_221D8C6C0(v28, v49);
        LOBYTE(v28) = v49[0];
        v30 = v50;
        v29 = v51;
        v31 = v15;
        v32 = v12;
        v33 = v13;
        v34 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v31;
        v36 = v34;
        v13 = v33;
        v12 = v32;
        sub_221D93114(v28, v30, v29, v36, v17, v18, isUniquelyReferenced_nonNull_native);

        v15 = v48;
        if (v14 == v13)
        {
          goto LABEL_19;
        }
      }

      else
      {
LABEL_3:

        if (v14 == v13)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F98];
LABEL_19:
    swift_unknownObjectRelease();

    result = (*(v40 + 8))(v46, v41);
    v37 = v44;
    v38 = v39;
    *v44 = v43;
    v37[1] = v38;
    v37[2] = v15;
  }

  return result;
}

uint64_t sub_221D8C6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_221DAC2E8();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8828, &qword_221DB1560);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  sub_221D965DC(a1, &v48 - v15, &unk_27CFE8828, &qword_221DB1560);
  v17 = sub_221DAC288();
  v18 = *(v17 - 8);
  v55 = *(v18 + 48);
  v56 = v18 + 48;
  v19 = v55(v16, 1, v17);
  v54 = v18;
  if (v19 == 1)
  {
    sub_221D96328(v16, &unk_27CFE8828, &qword_221DB1560);
    v20 = 0;
  }

  else
  {
    v20 = sub_221DAC2B8();
    (*(v18 + 8))(v16, v17);
  }

  v58 = v20 & 1;
  v57 = MEMORY[0x277D84FA0];
  sub_221D965DC(a1, v14, &unk_27CFE8828, &qword_221DB1560);
  if (v55(v14, 1, v17) == 1)
  {
    sub_221D96328(v14, &unk_27CFE8828, &qword_221DB1560);
  }

  else
  {
    v21 = sub_221DAC2C8();
    (*(v54 + 8))(v14, v17);
    if (v21)
    {
      v22 = MEMORY[0x223DAA530](v21);
      if (v22 == sub_221DAC248())
      {
        swift_unknownObjectRetain();
        v47 = sub_221DAC2F8();
        MEMORY[0x28223BE20](v47);
        *(&v48 - 2) = v5;
        *(&v48 - 1) = &v57;
        sub_221DAC2D8();
        swift_unknownObjectRelease();
        (*(v49 + 8))(v5, v3);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v23 = v54;
  v24 = v57;
  sub_221D965DC(a1, v11, &unk_27CFE8828, &qword_221DB1560);
  v25 = v55(v11, 1, v17);

  v52 = a1;
  v49 = v24;
  v50 = v17;
  if (v25 == 1)
  {
    sub_221D96328(v11, &unk_27CFE8828, &qword_221DB1560);
  }

  else
  {
    v26 = sub_221DAC2C8();
    (*(v23 + 8))(v11, v17);
    if (v26)
    {
      v27 = sub_221D8BF30();
      swift_unknownObjectRelease();
      goto LABEL_14;
    }
  }

  v27 = MEMORY[0x277D84FA0];
LABEL_14:
  v28 = 1 << *(v27 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v27 + 56);
  v31 = (v28 + 63) >> 6;

  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  if (v30)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      return result;
    }

    if (v35 >= v31)
    {
      break;
    }

    v30 = *(v27 + 56 + 8 * v35);
    ++v33;
    if (v30)
    {
      v33 = v35;
      do
      {
LABEL_21:

        v36 = sub_221DAC388();

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_221D90520(0, v34[2] + 1, 1, v34);
          v34 = result;
        }

        v38 = v34[2];
        v37 = v34[3];
        if (v38 >= v37 >> 1)
        {
          result = sub_221D90520((v37 > 1), v38 + 1, 1, v34);
          v34 = result;
        }

        v30 &= v30 - 1;
        v34[2] = v38 + 1;
        v34[v38 + 4] = v36;
      }

      while (v30);
    }
  }

  v39 = sub_221D954CC(v34);

  v40 = v51;
  v41 = v52;
  sub_221D965DC(v52, v51, &unk_27CFE8828, &qword_221DB1560);
  v42 = v50;
  if (v55(v40, 1, v50) == 1)
  {
    sub_221D96328(v40, &unk_27CFE8828, &qword_221DB1560);
    v43 = MEMORY[0x277D84FA0];
    v44 = v53;
    v45 = v49;
  }

  else
  {
    v46 = sub_221DAC2C8();
    (*(v54 + 8))(v40, v42);
    v44 = v53;
    v45 = v49;
    if (v46)
    {
      v43 = sub_221D8BF30();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = MEMORY[0x277D84FA0];
    }
  }

  sub_221D96328(v41, &unk_27CFE8828, &qword_221DB1560);

  *v44 = v58;
  *(v44 + 8) = v45;
  *(v44 + 16) = v43;
  *(v44 + 24) = v39;
  return result;
}

void XPCEventSubscriber.caresAbout(account:changeType:)(void *a1, unsigned int a2)
{
  v5 = *(v2 + 16);
  v6 = [a1 accountType];
  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 identifier];

  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = sub_221DAC3B8();
  v11 = v10;

  if (*(v5 + 16))
  {
    sub_221D9295C(v9, v11);
    v13 = v12;

    if (v13)
    {

      sub_221D8CEE4(a1, a2);
    }
  }

  else
  {
  }
}

uint64_t sub_221D8CEE4(id a1, unsigned int a2)
{
  if (*v2)
  {
    return 1;
  }

  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  if (*(v4 + 16))
  {
    v8 = MEMORY[0x223DA9410](*(v4 + 40), a2, 4);
    v9 = -1 << *(v4 + 32);
    v10 = v8 & ~v9;
    if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      while (*(*(v4 + 48) + 4 * v10) != a2)
      {
        v10 = (v10 + 1) & v11;
        if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      return 1;
    }
  }

LABEL_7:
  v12 = [a1 dirtyProperties];
  if (v12)
  {
    v13 = v12;
    v14 = sub_221DAC518();

    v15 = *(sub_221D93888(v5, v14, sub_221D93FAC, sub_221D93FAC) + 2);

    if (v15)
    {
      return 1;
    }
  }

  v16 = [a1 dirtyAccountProperties];
  if (v16)
  {
    v17 = v16;
    v18 = sub_221DAC518();

    v19 = *(sub_221D93888(v5, v18, sub_221D93FAC, sub_221D93FAC) + 2);

    if (v19)
    {
      return 1;
    }
  }

  v20 = [a1 dirtyDataclassProperties];
  if (v20)
  {
    v21 = v20;
    type metadata accessor for Dataclass(0);
    sub_221D961A8(&unk_2813031F0, type metadata accessor for Dataclass, &unk_221DB1B2C);
    v22 = sub_221DAC518();

    v23 = *(sub_221D93888(v6, v22, sub_221D93AFC, sub_221D93AFC) + 2);

    if (v23)
    {
      return 1;
    }
  }

  v24 = v6 + 56;
  v25 = 1 << *(v6 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v6 + 56);
  v28 = (v25 + 63) >> 6;

  v30 = 0;
  v49 = v6;
  while (v27)
  {
LABEL_22:
    v32 = *(*(v6 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v27)))));
    v33 = [a1 changeTypeForEnabledDataclass_];
    if (!v33)
    {
      goto LABEL_28;
    }

    v34 = v33;
    v35 = sub_221DAC3B8();
    v37 = v36;
    if (v35 == sub_221DAC3B8() && v37 == v38)
    {
    }

    else
    {
      v40 = sub_221DAC6C8();

      if ((v40 & 1) == 0)
      {
LABEL_28:

LABEL_40:

        return 1;
      }
    }

    v41 = [a1 changeTypeForProvisionedDataclass_];
    if (!v41)
    {

      return 1;
    }

    v42 = v41;
    v27 &= v27 - 1;
    v43 = sub_221DAC3B8();
    v45 = v44;
    if (v43 == sub_221DAC3B8() && v45 == v46)
    {

      v6 = v49;
    }

    else
    {
      v48 = sub_221DAC6C8();

      v6 = v49;
      if ((v48 & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v28)
    {

      return 0;
    }

    v27 = *(v24 + 8 * v31);
    ++v30;
    if (v27)
    {
      v30 = v31;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t XPCEventSubscriber.description.getter()
{
  sub_221DAC648();

  v0 = sub_221DAC6A8();
  MEMORY[0x223DA9120](v0);

  MEMORY[0x223DA9120](0x203A7367616C660ALL, 0xE800000000000000);
  v1 = XPCEventSubscriberFlags.description.getter();
  MEMORY[0x223DA9120](v1);

  MEMORY[0x223DA9120](0xD000000000000010, 0x8000000221DBE170);
  v2 = sub_221DAC368();
  MEMORY[0x223DA9120](v2);

  return 0x203A656C646E6168;
}

uint64_t XPCEventSubscriberAccountType.description.getter()
{
  v1 = *v0;
  sub_221DAC648();
  MEMORY[0x223DA9120](0x6E616863206C6C61, 0xED0000203A736567);
  if (v1)
  {
    v2 = 7562617;
  }

  else
  {
    v2 = 28526;
  }

  if (v1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xE200000000000000;
  }

  MEMORY[0x223DA9120](v2, v3);

  MEMORY[0x223DA9120](0x2065676E6168630ALL, 0xEF203A7365707974);
  v4 = sub_221DAC528();
  MEMORY[0x223DA9120](v4);

  MEMORY[0x223DA9120](0xD000000000000017, 0x8000000221DBE190);
  v5 = sub_221DAC528();
  MEMORY[0x223DA9120](v5);

  MEMORY[0x223DA9120](0xD000000000000018, 0x8000000221DBE1B0);
  type metadata accessor for Dataclass(0);
  sub_221D961A8(&unk_2813031F0, type metadata accessor for Dataclass, &unk_221DB1B2C);
  v6 = sub_221DAC528();
  MEMORY[0x223DA9120](v6);

  return 0;
}

uint64_t XPCEventSubscriberFlags.description.getter()
{
  if ((*v0 & 2) != 0)
  {
    v1 = sub_221D90648(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_221D90648((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0x64656C7469746E65;
    *(v4 + 5) = 0xE800000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8838, &qword_221DB1568);
  sub_221D968F4(&unk_281303220, &qword_27CFE8838, &qword_221DB1568, MEMORY[0x277D83958]);
  v5 = sub_221DAC378();

  return v5;
}

uint64_t sub_221D8D810()
{
  v1 = sub_221DAC238();
  v0[17] = v1;
  v0[18] = *(v1 - 8);
  v0[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221D8D8CC, 0, 0);
}

uint64_t sub_221D8D8CC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = sub_221DA02C0();
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_221DAC218();
  v6 = sub_221DAC548();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_221D2F000, v5, v6, "ACDXPCEventPublisher: registering in task", v7, 2u);
    MEMORY[0x223DAA350](v7, -1, -1);
  }

  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];

  (*(v9 + 8))(v8, v10);
  if (qword_281303830 != -1)
  {
    swift_once();
  }

  v11 = qword_281303838;
  v0[20] = qword_281303838;

  return MEMORY[0x2822009F8](sub_221D8DA34, v11, 0);
}

uint64_t sub_221D8DA34()
{
  v1 = v0[20];
  if ((*(v1 + 128) & 1) == 0)
  {
    *(v1 + 128) = 1;
    v0[6] = sub_221D8E618;
    v0[7] = 0;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_221D8E798;
    v0[5] = &block_descriptor;
    v2 = _Block_copy(v0 + 2);
    xpc_event_publisher_set_error_handler();
    _Block_release(v2);
    v0[12] = sub_221D969E0;
    v0[13] = v1;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_221D8EB30;
    v0[11] = &block_descriptor_61;
    v3 = _Block_copy(v0 + 8);

    xpc_event_publisher_set_handler();
    _Block_release(v3);
    xpc_event_publisher_activate();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_221D8DBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_221D965DC(a3, v25 - v10, &qword_27CFE89D0, &qword_221DB1570);
  v12 = sub_221DAC4E8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_221D96328(v11, &qword_27CFE89D0, &qword_221DB1570);
  }

  else
  {
    sub_221DAC4D8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_221DAC4B8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_221DAC3D8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t static ACDXPCEventPublisherWrapper.notifySubscribersOfAccountChange(_:type:)(void *a1, int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  if (a1)
  {
    v8 = sub_221DAC4E8();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    v10 = a1;
    sub_221D8DBBC(0, 0, v7, &unk_221DB1580, v9);

    return sub_221D96328(v7, &qword_27CFE89D0, &qword_221DB1570);
  }

  return result;
}

uint64_t sub_221D8DFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_221D8DFE4, 0, 0);
}

uint64_t sub_221D8DFE4()
{
  if (qword_281303830 != -1)
  {
    swift_once();
  }

  v1 = qword_281303838;
  *(v0 + 24) = qword_281303838;

  return MEMORY[0x2822009F8](sub_221D8E07C, v1, 0);
}

uint64_t sub_221D8E07C()
{
  sub_221D8F678(*(v0 + 16), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

id ACDXPCEventPublisherWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ACDXPCEventPublisherWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ACDXPCEventPublisherWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ACDXPCEventPublisherWrapper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ACDXPCEventPublisherWrapper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_221D8E308()
{
  type metadata accessor for ACDXPCEventPublisher(0);
  v0 = swift_allocObject();
  result = sub_221D8E348();
  qword_281303838 = v0;
  return result;
}

id sub_221D8E348()
{
  v10 = sub_221DAC588();
  v1 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_221DAC578();
  MEMORY[0x28223BE20](v4);
  v5 = sub_221DAC338();
  MEMORY[0x28223BE20](v5 - 8);
  swift_defaultActor_initialize();
  *(v0 + 128) = 0;
  *(v0 + OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_initialBarrierRecieved) = 0;
  v6 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_initialBarrierQueue) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_pendingSubscribers) = v6;
  *(v0 + OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher__subscribers) = MEMORY[0x277D84F98];
  v7 = sub_221D968A8();
  v9[0] = "angeType";
  v9[1] = v7;
  sub_221DAC328();
  v11 = v6;
  sub_221D961A8(&unk_281303208, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE88C0, &qword_221DB1BC0);
  sub_221D968F4(&qword_281303218, &unk_27CFE88C0, &qword_221DB1BC0, MEMORY[0x277D83970]);
  sub_221DAC5D8();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v10);
  *(v0 + 120) = sub_221DAC598();
  result = xpc_event_publisher_create();
  if (result)
  {
    *(v0 + 112) = result;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221D8E618(int a1)
{
  v2 = sub_221DAC238();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221DA02C0();
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_221DAC218();
  v8 = sub_221DAC558();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_221D2F000, v7, v8, "ACDXPCEventPublisher: error %d", v9, 8u);
    MEMORY[0x223DAA350](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_221D8E798(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_221D8E7EC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_221DAC238();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_221DA02C0();
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_221DAC218();
  v17 = sub_221DAC548();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = a3;
    v19 = a4;
    v20 = a1;
    v21 = v18;
    *v18 = 134217984;
    *(v18 + 4) = a2;
    _os_log_impl(&dword_221D2F000, v16, v17, "ACDXPCEventPublisher: Pending subscriber %llu", v18, 0xCu);
    v22 = v21;
    a1 = v20;
    a4 = v19;
    a3 = v26;
    MEMORY[0x223DAA350](v22, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v23 = sub_221DAC4E8();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = a4;
  *(v24 + 40) = a1;
  *(v24 + 48) = a2;
  *(v24 + 56) = a3;
  swift_unknownObjectRetain();

  sub_221D8DBBC(0, 0, v10, &unk_221DB1BE8, v24);

  return sub_221D96328(v10, &qword_27CFE89D0, &qword_221DB1570);
}

uint64_t sub_221D8EAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 40) = a5;
  *(v7 + 16) = a4;
  return MEMORY[0x2822009F8](sub_221D8EAC8, a4, 0);
}

uint64_t sub_221D8EAC8()
{
  sub_221D8EBB0(*(v0 + 40), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221D8EB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

unint64_t sub_221D8EBB0(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_221DAC238();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  result = MEMORY[0x28223BE20](v10);
  v15 = v47 - v14 + 16;
  if (a1 == 2)
  {
    v29 = sub_221DA02C0();
    swift_beginAccess();
    (*(v9 + 16))(v12, v29, v8);

    v30 = sub_221DAC218();
    v31 = sub_221DAC568();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      v33 = OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_initialBarrierQueue;
      swift_beginAccess();
      *(v32 + 4) = *(*(v4 + v33) + 16);

      _os_log_impl(&dword_221D2F000, v30, v31, "ACDXPCEventPublisher: Initial barrier received, posting queued changes %ld", v32, 0xCu);
      MEMORY[0x223DAA350](v32, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v12, v8);
    *(v4 + OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_initialBarrierRecieved) = 1;
    v34 = OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_initialBarrierQueue;
    result = swift_beginAccess();
    v35 = *(v4 + v34);
    v36 = *(v35 + 16);
    if (!v36)
    {
      return result;
    }

    v37 = (v35 + 40);
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      v37 += 4;
      v40 = v38;
      sub_221D8F678(v40, v39);

      --v36;
    }

    while (v36);
  }

  if (a1 != 1)
  {
    if (a1)
    {
      return result;
    }

    v16 = OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_pendingSubscribers;
    v17 = *(v4 + OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_pendingSubscribers);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v16) = v17;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

  v21 = sub_221DA02C0();
  swift_beginAccess();
  (*(v9 + 16))(v15, v21, v8);
  v22 = sub_221DAC218();
  v23 = sub_221DAC568();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = a2;
    _os_log_impl(&dword_221D2F000, v22, v23, "ACDXPCEventPublisher: Removing subscriber %llu", v24, 0xCu);
    MEMORY[0x223DAA350](v24, -1, -1);
  }

  (*(v9 + 8))(v15, v8);
  v25 = OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_pendingSubscribers;
  v17 = *(v4 + OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_pendingSubscribers);
  v26 = *(v17 + 2);
  if (!v26)
  {
LABEL_16:
    v28 = *(v17 + 2);
LABEL_28:
    sub_221D964DC(v26, v28);
    swift_beginAccess();
    sub_221D8F0E4(v47, a2);
    swift_endAccess();
  }

  a3 = 0;
  v27 = -40;
  while (*&v17[8 * a3 + 32] != a2)
  {
    ++a3;
    v27 -= 8;
    if (v26 == a3)
    {
      goto LABEL_16;
    }
  }

  v16 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    goto LABEL_43;
  }

  v41 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v25) = v17;
  if ((v41 & 1) == 0)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v42 = *(v17 + 2);
    if (v16 != v42)
    {
      break;
    }

LABEL_27:
    *(v4 + v25) = v17;
    v28 = *(v17 + 2);
    v26 = a3;
    if (v28 >= a3)
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v17 = sub_221D954B8(v17);
  }

  v43 = v17 + 32;
  v44 = &v17[-v27];
  while (v16 < v42)
  {
    if (*v44 != a2)
    {
      if (v16 != a3)
      {
        if (a3 >= v42)
        {
          __break(1u);
          break;
        }

        v45 = *&v43[8 * a3];
        *&v43[8 * a3] = *v44;
        *v44 = v45;
        v42 = *(v17 + 2);
      }

      ++a3;
    }

    ++v16;
    v44 += 8;
    if (v16 == v42)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_41:
  v17 = sub_221D90888(0, *(v17 + 2) + 1, 1, v17);
  *(v4 + v16) = v17;
LABEL_5:
  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = sub_221D90888((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  *&v17[8 * v20 + 32] = a2;
  *(v4 + v16) = v17;

  return sub_221D8F184(a3, a2);
}

uint64_t sub_221D8F0E4@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  result = sub_221D929D4(a2);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_221D93714();
      v9 = v12;
    }

    v10 = *(v9 + 56) + 24 * v7;
    v11 = *(v10 + 16);
    *a1 = *v10;
    *(a1 + 16) = v11;
    result = sub_221D92F98(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

unint64_t sub_221D8F184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_221DAC238();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v13 = 0;
  v14 = OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_pendingSubscribers;
  v15 = *(v2 + OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_pendingSubscribers);
  v16 = *(v15 + 2);
  do
  {
    if (v16 == v13)
    {
      v20 = sub_221DA02C0();
      swift_beginAccess();
      (*(v7 + 16))(v10, v20, v6);
      v21 = sub_221DAC218();
      v22 = sub_221DAC568();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = a2;
        _os_log_impl(&dword_221D2F000, v21, v22, "ACDXPCEventPublisher: Unexpected reply from previously pending subscriber %llu", v23, 0xCu);
        MEMORY[0x223DAA350](v23, -1, -1);
      }

      return (*(v7 + 8))(v10, v6);
    }

    v17 = &v15[8 * v13++];
  }

  while (*(v17 + 4) != a2);
  v52 = a1;
  if (v16)
  {
    v18 = 0;
    a1 = -40;
    do
    {
      if (*&v15[8 * v18 + 32] == a2)
      {
        v25 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_35;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v14) = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_36;
        }

        while (1)
        {
          v27 = *(v15 + 2);
          if (v25 == v27)
          {
            a1 = v52;
LABEL_17:
            *(v3 + v14) = v15;
            v19 = *(v15 + 2);
            v16 = v18;
            if (v19 >= v18)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v45 = v15 + 32;
            v46 = &v15[-a1];
            a1 = v52;
            while (v25 < v27)
            {
              if (*v46 != a2)
              {
                if (v25 != v18)
                {
                  if (v18 >= v27)
                  {
                    __break(1u);
                    break;
                  }

                  v47 = *&v45[8 * v18];
                  *&v45[8 * v18] = *v46;
                  *v46 = v47;
                  v27 = *(v15 + 2);
                }

                ++v18;
              }

              ++v25;
              v46 += 8;
              if (v25 == v27)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v15 = sub_221D954B8(v15);
        }
      }

      ++v18;
      a1 -= 8;
    }

    while (v16 != v18);
    v19 = v16;
    a1 = v52;
  }

  else
  {
    v19 = 0;
  }

LABEL_18:
  result = sub_221D964DC(v16, v19);
  if (a1)
  {
    v54[0] = 2;
    swift_unknownObjectRetain_n();
    XPCEventSubscriber.init(handle:descriptor:flags:)(a2, a1, v54, v55);
    v28 = v55[0];
    v51 = v55[1];
    v29 = v55[2];
    v30 = sub_221DA02C0();
    swift_beginAccess();
    (*(v7 + 16))(v12, v30, v6);

    v31 = v6;
    v32 = sub_221DAC218();
    v33 = sub_221DAC568();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v28;
      v36 = v35;
      *v34 = 134218242;
      *(v34 + 4) = a2;
      *(v34 + 12) = 2080;
      v53 = v35;
      v54[0] = v50;
      v54[1] = v51;
      v54[2] = v29;
      v49 = v31;
      v37 = XPCEventSubscriber.description.getter();
      v39 = sub_221D909D4(v37, v38, &v53);
      v48 = v12;
      v40 = v29;
      v41 = v39;

      *(v34 + 14) = v41;
      v29 = v40;
      _os_log_impl(&dword_221D2F000, v32, v33, "ACDXPCEventPublisher: Added new subscriber %llu\n%s", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v36);
      v42 = v36;
      v28 = v50;
      MEMORY[0x223DAA350](v42, -1, -1);
      MEMORY[0x223DAA350](v34, -1, -1);

      (*(v7 + 8))(v48, v49);
    }

    else
    {

      (*(v7 + 8))(v12, v31);
    }

    v43 = OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher__subscribers;
    swift_beginAccess();
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v53 = *(v3 + v43);
    *(v3 + v43) = 0x8000000000000000;
    sub_221D932D8(v28, v51, v29, a2, v44);
    *(v3 + v43) = v53;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_221D8F678(void *a1, int a2)
{
  i = v2;
  LODWORD(v4) = a2;
  v80 = *MEMORY[0x277D85DE8];
  v6 = sub_221DAC238();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v74 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v74 - v14;
  if (*(i + OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_initialBarrierRecieved))
  {
    v16 = OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher__subscribers;
    swift_beginAccess();
    v76 = v16;
    v17 = *(*(i + v16) + 16);
    v18 = sub_221DA02C0();
    v19 = (v7 + 16);
    if (v17)
    {
      v75 = i;
      swift_beginAccess();
      (*v19)(v13, v18, v6);
      v20 = a1;
      v21 = sub_221DAC218();
      v22 = sub_221DAC548();

      v23 = os_log_type_enabled(v21, v22);
      v77 = v4;
      v78 = v20;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v4 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v79[0] = v25;
        *v24 = 138412546;
        v26 = v78;
        *(v24 + 4) = v78;
        *v4 = v26;
        *(v24 + 12) = 2080;
        v27 = v26;
        v28 = sub_221DA0380(v77);
        v30 = sub_221D909D4(v28, v29, v79);

        *(v24 + 14) = v30;
        _os_log_impl(&dword_221D2F000, v21, v22, "ACDXPCEventPublisher: Publishing changes for account %@, type: %s", v24, 0x16u);
        sub_221D96328(v4, &unk_27CFE8890, &unk_221DB1B70);
        v31 = v4;
        LODWORD(v4) = v77;
        MEMORY[0x223DAA350](v31, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x223DAA350](v25, -1, -1);
        MEMORY[0x223DAA350](v24, -1, -1);
      }

      (*(v7 + 8))(v13, v6);
      v32 = v76;
      v33 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v33, "MessageType", "AccountChange");
      xpc_dictionary_set_uint64(v33, "ChangeType", v4);
      v34 = objc_opt_self();
      v79[0] = 0;
      v35 = [v34 archivedDataWithRootObject:v78 requiringSecureCoding:1 error:v79];
      v36 = v79[0];
      v37 = v75;
      v76 = v33;
      if (v35)
      {
        v38 = sub_221DAC1B8();
        v40 = v39;

        swift_unknownObjectRetain();
        sub_221D96280(v38, v40);
        sub_221D951E0(v38, v40, v33, v38, v40);
        v74[0] = 0;
        sub_221D962D4(v38, v40);
      }

      else
      {
        v35 = v36;
        v54 = sub_221DAC198();

        swift_willThrow();
        v74[0] = 0;
      }

      v55 = *&v32[v37];
      v45 = v55 + 64;
      v56 = 1 << *(v55 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = v57 & *(v55 + 64);
      v59 = (v56 + 63) >> 6;

      v46 = 0;
LABEL_20:
      for (i = 24; ; i = 24)
      {
        do
        {
          if (!v58)
          {
            while (1)
            {
              v60 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                break;
              }

              if (v60 >= v59)
              {

                swift_unknownObjectRelease();
                return;
              }

              v58 = *(v45 + 8 * v60);
              ++v46;
              if (v58)
              {
                v46 = v60;
                goto LABEL_26;
              }
            }

            __break(1u);
            goto LABEL_37;
          }

LABEL_26:
          v61 = __clz(__rbit64(v58));
          v58 &= v58 - 1;
          v62 = *(v55 + 56) + 24 * (v61 | (v46 << 6));
        }

        while ((*(v62 + 8) & 2) == 0);
        v63 = *(v62 + 16);

        v64 = [v78 accountType];
        if (!v64)
        {
          break;
        }

        v65 = v64;
        v66 = v55;
        v67 = [v64 identifier];

        if (!v67)
        {
          goto LABEL_39;
        }

        v35 = sub_221DAC3B8();
        v4 = v68;

        if (!*(v63 + 16))
        {

LABEL_34:

          v55 = v66;
          goto LABEL_20;
        }

        v35 = sub_221D9295C(v35, v4);
        v70 = v69;

        if ((v70 & 1) == 0)
        {
          goto LABEL_34;
        }

        v71 = *(v63 + 56) + 32 * v35;
        v72 = *(v71 + 8);
        v73 = *(v71 + 16);
        v4 = *(v71 + 24);
        LOBYTE(v79[0]) = *v71;
        v74[1] = v72;
        v79[1] = v72;
        v79[2] = v73;
        v79[3] = v4;

        v35 = sub_221D8CEE4(v78, v77);

        v55 = v66;
        if (v35)
        {
          xpc_event_publisher_fire();
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      (*v19)(v10, v18, v6);
      v51 = sub_221DAC218();
      v52 = sub_221DAC548();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_221D2F000, v51, v52, "ACDXPCEventPublisher: no subscribers, not publishing change", v53, 2u);
        MEMORY[0x223DAA350](v53, -1, -1);
      }

      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    v41 = sub_221DA02C0();
    swift_beginAccess();
    (*(v7 + 16))(v15, v41, v6);
    v42 = sub_221DAC218();
    v43 = sub_221DAC548();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_221D2F000, v42, v43, "ACDXPCEventPublisher: queuing change because initial barrier not received", v44, 2u);
      MEMORY[0x223DAA350](v44, -1, -1);
    }

    (*(v7 + 8))(v15, v6);
    v45 = OBJC_IVAR____TtC14AccountsDaemonP33_FDFD93D7EED093E0E5ECCF78D163DEF220ACDXPCEventPublisher_initialBarrierQueue;
    swift_beginAccess();
    v35 = *(i + v45);
    v46 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(i + v45) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_37:
      v35 = sub_221D90754(0, *(v35 + 16) + 1, 1, v35);
      *(i + v45) = v35;
    }

    v49 = *(v35 + 16);
    v48 = *(v35 + 24);
    if (v49 >= v48 >> 1)
    {
      v35 = sub_221D90754((v48 > 1), v49 + 1, 1, v35);
    }

    *(v35 + 16) = v49 + 1;
    v50 = v35 + 16 * v49;
    *(v50 + 32) = v46;
    *(v50 + 40) = v4;
    *(i + v45) = v35;
    swift_endAccess();
  }
}

uint64_t sub_221D8FE84()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221D8FF00()
{
  v0 = sub_221DAC3B8();
  v1 = MEMORY[0x223DA9180](v0);

  return v1;
}

uint64_t sub_221D8FF3C(uint64_t a1)
{
  sub_221DAC3B8();
  sub_221DAC3F8();
}

uint64_t sub_221D8FF90(uint64_t a1)
{
  sub_221DAC3B8();
  sub_221DAC718();
  sub_221DAC3F8();
  v1 = sub_221DAC728();

  return v1;
}

uint64_t sub_221D9000C(uint64_t a1, id *a2)
{
  result = sub_221DAC398();
  *a2 = 0;
  return result;
}

uint64_t sub_221D90084(uint64_t a1, id *a2)
{
  v3 = sub_221DAC3A8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_221D90104@<X0>(uint64_t *a2@<X8>)
{
  sub_221DAC3B8();
  v3 = sub_221DAC388();

  *a2 = v3;
  return result;
}

uint64_t sub_221D9015C(void *a1, uint64_t *a2)
{
  v2 = sub_221DAC3B8();
  v4 = v3;
  if (v2 == sub_221DAC3B8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_221DAC6C8();
  }

  return v7 & 1;
}

_DWORD *sub_221D901E4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_221D90200@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_221DAC388();

  *a2 = v3;
  return result;
}

uint64_t sub_221D90248@<X0>(uint64_t *a1@<X8>)
{
  result = sub_221DAC3B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_221D90274(uint64_t a1)
{
  v2 = sub_221D961A8(&unk_2813031F0, type metadata accessor for Dataclass, &unk_221DB1B2C);
  v3 = sub_221D961A8(&qword_27CFE8888, type metadata accessor for Dataclass, &unk_221DB1A64);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_221D90330(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_221D90428;

  return v6(a1);
}

uint64_t sub_221D90428()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_221D90520(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8958, &qword_221DB1C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Dataclass(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_221D90648(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8930, &qword_221DB1BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_221D90754(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE88A0, &qword_221DB1B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE88A8, &qword_221DB1B88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_221D90888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE88B8, &qword_221DB1B98);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_221D909D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_221D90AA0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_221D963D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_221D90AA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_221D90BAC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_221DAC658();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_221D90BAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_221D90BF8(a1, a2);
  sub_221D90D28(&unk_283536D68);
  return v3;
}

void *sub_221D90BF8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_221D90E14(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_221DAC658();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_221DAC418();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_221D90E14(v10, 0);
        result = sub_221DAC638();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_221D90D28(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_221D90E88(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_221D90E14(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A50, &qword_221DB1EC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_221D90E88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A50, &qword_221DB1EC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_221D90F7C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_221DAC718();
  sub_221DAC3F8();
  v8 = sub_221DAC728();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_221DAC6C8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_221D91A64(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_221D910CC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_221DAC3B8();
  sub_221DAC718();
  sub_221DAC3F8();
  v7 = sub_221DAC728();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_221DAC3B8();
      v13 = v12;
      if (v11 == sub_221DAC3B8() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_221DAC6C8();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_221D91BE4(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_221D91278(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x223DA9410](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_221D91DCC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_221D91360(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8938, &qword_221DB1BF8);
  result = sub_221DAC618();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_221DAC718();
      sub_221DAC3F8();
      result = sub_221DAC728();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_221D915C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8940, &qword_221DB1C00);
  result = sub_221DAC618();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_221DAC3B8();
      sub_221DAC718();
      sub_221DAC3F8();
      v18 = sub_221DAC728();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_221D9183C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8950, &qword_221DB1C08);
  result = sub_221DAC618();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = MEMORY[0x223DA9410](*(v5 + 40), v17, 4);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_221D91A64(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_221D91360(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_221D91EF0();
      goto LABEL_16;
    }

    sub_221D922DC(v8 + 1);
  }

  v10 = *v4;
  sub_221DAC718();
  sub_221DAC3F8();
  result = sub_221DAC728();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_221DAC6C8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_221DAC6D8();
  __break(1u);
  return result;
}

uint64_t sub_221D91BE4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_221D915C0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_221D9204C();
      goto LABEL_16;
    }

    sub_221D92514(v7 + 1);
  }

  v9 = *v3;
  sub_221DAC3B8();
  sub_221DAC718();
  sub_221DAC3F8();
  v10 = sub_221DAC728();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for Dataclass(0);
    do
    {
      v13 = sub_221DAC3B8();
      v15 = v14;
      if (v13 == sub_221DAC3B8() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_221DAC6C8();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_221DAC6D8();
  __break(1u);
  return result;
}

uint64_t sub_221D91DCC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_221D9183C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_221D9219C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_221D92768(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x223DA9410](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_221DAC6D8();
  __break(1u);
  return result;
}

void *sub_221D91EF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8938, &qword_221DB1BF8);
  v2 = *v0;
  v3 = sub_221DAC608();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_221D9204C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8940, &qword_221DB1C00);
  v2 = *v0;
  v3 = sub_221DAC608();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_221D9219C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8950, &qword_221DB1C08);
  v2 = *v0;
  v3 = sub_221DAC608();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_221D922DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8938, &qword_221DB1BF8);
  result = sub_221DAC618();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_221DAC718();

      sub_221DAC3F8();
      result = sub_221DAC728();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_221D92514(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8940, &qword_221DB1C00);
  result = sub_221DAC618();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_221DAC3B8();
      sub_221DAC718();
      v18 = v17;
      sub_221DAC3F8();
      v19 = sub_221DAC728();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_221D92768(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8950, &qword_221DB1C08);
  result = sub_221DAC618();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      result = MEMORY[0x223DA9410](*(v5 + 40), v16, 4);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_221D9295C(uint64_t a1, uint64_t a2)
{
  sub_221DAC718();
  sub_221DAC3F8();
  v4 = sub_221DAC728();

  return sub_221D9344C(a1, a2, v4);
}

unint64_t sub_221D929D4(uint64_t a1)
{
  v2 = sub_221DAC708();

  return sub_221D93504(a1, v2);
}

uint64_t sub_221D92A18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8960, &qword_221DB1C18);
  v38 = v4;
  result = sub_221DAC678();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v41 = *v22;
      v24 = *(v5 + 56) + 32 * v21;
      v40 = *v24;
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);
      v27 = *(v24 + 24);
      if ((v38 & 1) == 0)
      {
      }

      sub_221DAC718();
      sub_221DAC3F8();
      result = sub_221DAC728();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v40;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_221D92D08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE88B0, &qword_221DB1B90);
  result = sub_221DAC678();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v33 = *v22;
      v23 = *(v22 + 16);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_221DAC708();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v33;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_221D92F98(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_221DAC5E8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_221DAC708();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = v16 + 24 * v3;
          v18 = (v16 + 24 * v6);
          if (v3 != v6 || v17 >= v18 + 24)
          {
            v9 = *v18;
            *(v17 + 16) = *(v18 + 2);
            *v17 = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_221D93114(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_221D9295C(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_221D92A18(v22, a7 & 1);
      v17 = sub_221D9295C(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_221DAC6E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_221D93570();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    *v28 = a1 & 1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
    *(v28 + 24) = a4;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 16 * v17);
  *v30 = a5;
  v30[1] = a6;
  v31 = v27[7] + 32 * v17;
  *v31 = a1 & 1;
  *(v31 + 8) = a2;
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

unint64_t sub_221D932D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_221D929D4(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_221D92D08(v18, a5 & 1);
      result = sub_221D929D4(a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_221DAC6E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_221D93714();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a4;
    v25 = (v23[7] + 24 * result);
    *v25 = a1;
    v25[1] = a2;
    v25[2] = a3;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v24 = (v23[7] + 24 * result);
  *v24 = a1;
  v24[1] = a2;
  v24[2] = a3;
}

unint64_t sub_221D9344C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_221DAC6C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_221D93504(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_221D93570()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8960, &qword_221DB1C18);
  v2 = *v0;
  v3 = sub_221DAC668();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v25;
        *(v28 + 24) = v26;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_221D93714()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE88B0, &qword_221DB1B90);
  v2 = *v0;
  v3 = sub_221DAC668();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 16) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_221D93888(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_221D93A64(v15, v10, a2, a1, a4);

    MEMORY[0x223DAA350](v15, -1, -1);
  }

  return v13;
}

void *sub_221D93A64(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void sub_221D93AFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_28:
    v59 = 0;
    v29 = 0;
    v30 = v5 + 56;
    v31 = 1 << *(v5 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(v5 + 56);
    v34 = (v31 + 63) >> 6;
    v35 = v4 + 56;
    v53 = v34;
    while (v33)
    {
      v36 = __clz(__rbit64(v33));
      v61 = (v33 - 1) & v33;
LABEL_40:
      v56 = v36 | (v29 << 6);
      v39 = *(*(v5 + 48) + 8 * v56);
      sub_221DAC3B8();
      sub_221DAC718();
      v58 = v39;
      sub_221DAC3F8();
      v40 = sub_221DAC728();

      v41 = -1 << *(a4 + 32);
      v42 = v40 & ~v41;
      if ((*(v35 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        v43 = ~v41;
        while (1)
        {
          v44 = sub_221DAC3B8();
          v46 = v45;
          if (v44 == sub_221DAC3B8() && v46 == v47)
          {

            goto LABEL_51;
          }

          v49 = sub_221DAC6C8();

          if (v49)
          {
            break;
          }

          v42 = (v42 + 1) & v43;
          if (((*(v35 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

LABEL_51:
        *(a1 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        v33 = v61;
        v28 = __OFADD__(v59++, 1);
        v5 = a3;
        v34 = v53;
        if (v28)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_32:

        v33 = v61;
        v5 = a3;
        v34 = v53;
      }
    }

    v37 = v29;
    while (1)
    {
      v29 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v29 >= v34)
      {
        goto LABEL_54;
      }

      v38 = *(v30 + 8 * v29);
      ++v37;
      if (v38)
      {
        v36 = __clz(__rbit64(v38));
        v61 = (v38 - 1) & v38;
        goto LABEL_40;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v59 = 0;
    v60 = a3 + 56;
    v51 = v11;
    v52 = a4 + 56;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v57 = (v10 - 1) & v10;
LABEL_14:
      v15 = *(*(v4 + 48) + 8 * (v12 | (v6 << 6)));
      sub_221DAC3B8();
      sub_221DAC718();
      v55 = v15;
      sub_221DAC3F8();
      v16 = sub_221DAC728();
      v5 = a3;

      v17 = -1 << *(a3 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v60 + 8 * (v18 >> 6))) != 0)
      {
        v21 = ~v17;
        while (1)
        {
          v22 = sub_221DAC3B8();
          v24 = v23;
          if (v22 == sub_221DAC3B8() && v24 == v25)
          {

            goto LABEL_25;
          }

          v27 = sub_221DAC6C8();

          if (v27)
          {
            break;
          }

          v18 = (v18 + 1) & v21;
          v19 = v18 >> 6;
          v5 = a3;
          v20 = 1 << v18;
          if (((1 << v18) & *(v60 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

        v5 = a3;
LABEL_25:
        v7 = v52;
        a1[v19] |= v20;
        v10 = v57;
        v28 = __OFADD__(v59++, 1);
        v4 = a4;
        v11 = v51;
        if (v28)
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:

        v4 = a4;
        v11 = v51;
        v7 = v52;
        v10 = v57;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
LABEL_54:

        sub_221D94388(a1, a2, v59, v5);
        return;
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v57 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t *sub_221D93FAC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_221DAC718();

      sub_221DAC3F8();
      v26 = sub_221DAC728();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_221DAC6C8() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_221D945CC(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_221DAC718();

      sub_221DAC3F8();
      v39 = sub_221DAC728();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_221DAC6C8() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_221D94388(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8940, &qword_221DB1C00);
  result = sub_221DAC628();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v29 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_221DAC3B8();
    sub_221DAC718();
    v17 = v16;
    sub_221DAC3F8();
    v18 = sub_221DAC728();

    v19 = -1 << *(v9 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v28;
    v10 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v29 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_221D945CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8938, &qword_221DB1BF8);
  result = sub_221DAC628();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_221DAC718();

    sub_221DAC3F8();
    result = sub_221DAC728();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unsigned __int8 *sub_221D947F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_221DAC478();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_221D94D6C(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_221DAC658();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_221D94D6C(uint64_t a1, unint64_t a2)
{
  v2 = sub_221DAC488();
  v6 = sub_221D94DEC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_221D94DEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_221DAC5B8();
    if (!v9 || (v10 = v9, v11 = sub_221D90E14(v9, 0), v12 = sub_221D94F44(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_221DAC3E8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_221DAC3E8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_221DAC658();
LABEL_4:

  return sub_221DAC3E8();
}

unint64_t sub_221D94F44(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_221D95164(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_221DAC448();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_221DAC658();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_221D95164(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_221DAC428();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_221D95164(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_221DAC458();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DA9150](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_221D951E0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v8)
    {
      goto LABEL_17;
    }

    v33[0] = a1;
    LOWORD(v33[1]) = a2;
    BYTE2(v33[1]) = BYTE2(a2);
    BYTE3(v33[1]) = BYTE3(a2);
    BYTE4(v33[1]) = BYTE4(a2);
    v9 = a5 >> 62;
    BYTE5(v33[1]) = BYTE5(a2);
    if ((a5 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v22 = 0;
        goto LABEL_39;
      }

      v24 = *(a4 + 16);
      v23 = *(a4 + 24);
      v22 = v23 - v24;
      if (!__OFSUB__(v23, v24))
      {
        goto LABEL_39;
      }

      __break(1u);
      goto LABEL_32;
    }

    if (!v9)
    {
LABEL_26:
      v22 = BYTE6(a5);
LABEL_39:
      v27 = v33;
      v28 = a3;
LABEL_52:
      xpc_dictionary_set_data(v28, "AccountData", v27, v22);
      goto LABEL_53;
    }

    LODWORD(v8) = HIDWORD(a4) - a4;
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
      goto LABEL_37;
    }

    __break(1u);
  }

  if (v8 != 2)
  {
    v23 = a5 >> 62;
    memset(v33, 0, 14);
    if ((a5 >> 62) <= 1)
    {
      if (!v23)
      {
        goto LABEL_26;
      }

LABEL_36:
      LODWORD(v8) = HIDWORD(a4) - a4;
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
LABEL_37:
        v22 = v8;
        goto LABEL_39;
      }

      goto LABEL_57;
    }

LABEL_32:
    v22 = 0;
    if (v23 != 2)
    {
      goto LABEL_39;
    }

    v26 = *(a4 + 16);
    v25 = *(a4 + 24);
    v22 = v25 - v26;
    if (!__OFSUB__(v25, v26))
    {
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_36;
  }

  v10 = *(a1 + 16);
  v11 = sub_221DAC158();
  if (!v11)
  {
LABEL_27:
    sub_221DAC168();
    goto LABEL_53;
  }

  v12 = v11;
  v13 = sub_221DAC178();
  if (__OFSUB__(v10, v13))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v14 = (v10 - v13 + v12);
  a1 = sub_221DAC168();
  if (!v14)
  {
    goto LABEL_53;
  }

  v15 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v15 != 2)
    {
LABEL_48:
      v22 = 0;
      goto LABEL_51;
    }

    v29 = *(a4 + 16);
    v21 = *(a4 + 24);
    v22 = v21 - v29;
    if (!__OFSUB__(v21, v29))
    {
      goto LABEL_51;
    }

    __break(1u);
LABEL_44:
    if (v21 == 2)
    {
      v31 = *(a4 + 16);
      v30 = *(a4 + 24);
      v22 = v30 - v31;
      if (!__OFSUB__(v30, v31))
      {
        goto LABEL_51;
      }

      __break(1u);
    }

    goto LABEL_48;
  }

  if (!v15)
  {
LABEL_23:
    v22 = BYTE6(a5);
LABEL_51:
    v28 = a3;
    v27 = v14;
    goto LABEL_52;
  }

  v16 = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    goto LABEL_50;
  }

  __break(1u);
LABEL_17:
  v17 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_55;
  }

  v18 = sub_221DAC158();
  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = v18;
  v20 = sub_221DAC178();
  if (__OFSUB__(v17, v20))
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v14 = (v17 - v20 + v19);
  sub_221DAC168();
  if (v14)
  {
    v21 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      if (!v21)
      {
        goto LABEL_23;
      }

      v16 = HIDWORD(a4) - a4;
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
LABEL_50:
        v22 = v16;
        goto LABEL_51;
      }

LABEL_58:
      __break(1u);
    }

    goto LABEL_44;
  }

LABEL_53:
  swift_unknownObjectRelease();
  return sub_221D962D4(a4, a5);
}

uint64_t sub_221D954CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Dataclass(0);
  v4 = v3;
  v5 = sub_221D961A8(&unk_2813031F0, type metadata accessor for Dataclass, &unk_221DB1B2C);
  result = MEMORY[0x223DA9250](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_221D910CC(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_221D95588(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x223DAA530](a2);
  if (v4 == sub_221DAC258())
  {
    sub_221D96A98();
    sub_221DAC318();
    if ((v34 & 1) == 0)
    {
      v16 = v33;
      if (v33 <= 5)
      {
        if ((v33 & 0x8000000000000000) == 0)
        {
          return sub_221D91278(&v33, v16);
        }

        __break(1u);
        goto LABEL_77;
      }
    }
  }

  v5 = MEMORY[0x223DAA530](a2);
  result = sub_221DAC268();
  if (v5 == result)
  {
    result = MEMORY[0x223DA9020](a1);
    if (v7)
    {
      v8 = HIBYTE(v7) & 0xF;
      v9 = result & 0xFFFFFFFFFFFFLL;
      if ((v7 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v10 = result & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
      }

      if ((v7 & 0x1000000000000000) == 0)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
          v33 = result;
          v34 = v7 & 0xFFFFFFFFFFFFFFLL;
          if (result == 43)
          {
            if (v8)
            {
              v9 = v8 - 1;
              if (v8 != 1)
              {
                LODWORD(v12) = 0;
                v23 = &v33 + 1;
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    break;
                  }

                  v25 = 10 * v12;
                  if ((v25 & 0xFFFFFFFF00000000) != 0)
                  {
                    break;
                  }

                  v12 = v25 + v24;
                  if (__CFADD__(v25, v24))
                  {
                    break;
                  }

                  ++v23;
                  if (!--v9)
                  {
                    goto LABEL_69;
                  }
                }
              }

              goto LABEL_68;
            }

LABEL_81:
            __break(1u);
            return result;
          }

          if (result != 45)
          {
            if (v8)
            {
              LODWORD(v12) = 0;
              v28 = &v33;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                v30 = 10 * v12;
                if ((v30 & 0xFFFFFFFF00000000) != 0)
                {
                  break;
                }

                v12 = v30 + v29;
                if (__CFADD__(v30, v29))
                {
                  break;
                }

                v28 = (v28 + 1);
                if (!--v8)
                {
                  goto LABEL_67;
                }
              }
            }

            goto LABEL_68;
          }

          if (v8)
          {
            v9 = v8 - 1;
            if (v8 != 1)
            {
              LODWORD(v12) = 0;
              v17 = &v33 + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  break;
                }

                v19 = 10 * v12;
                if ((v19 & 0xFFFFFFFF00000000) != 0)
                {
                  break;
                }

                v12 = v19 - v18;
                if (v19 < v18)
                {
                  break;
                }

                ++v17;
                if (!--v9)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_68;
          }

          goto LABEL_79;
        }

        if ((result & 0x1000000000000000) != 0)
        {
          result = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_12:
          v11 = *result;
          if (v11 == 43)
          {
            if (v9 >= 1)
            {
              if (--v9)
              {
                v12 = 0;
                if (result)
                {
                  v20 = (result + 1);
                  while (1)
                  {
                    v21 = *v20 - 48;
                    if (v21 > 9)
                    {
                      goto LABEL_68;
                    }

                    v22 = 10 * v12;
                    if ((v22 & 0xFFFFFFFF00000000) != 0)
                    {
                      goto LABEL_68;
                    }

                    v12 = v22 + v21;
                    if (__CFADD__(v22, v21))
                    {
                      goto LABEL_68;
                    }

                    ++v20;
                    if (!--v9)
                    {
                      goto LABEL_69;
                    }
                  }
                }

                goto LABEL_67;
              }

              goto LABEL_68;
            }

            goto LABEL_80;
          }

          if (v11 != 45)
          {
            if (v9)
            {
              v12 = 0;
              if (result)
              {
                while (1)
                {
                  v26 = *result - 48;
                  if (v26 > 9)
                  {
                    goto LABEL_68;
                  }

                  v27 = 10 * v12;
                  if ((v27 & 0xFFFFFFFF00000000) != 0)
                  {
                    goto LABEL_68;
                  }

                  v12 = v27 + v26;
                  if (__CFADD__(v27, v26))
                  {
                    goto LABEL_68;
                  }

                  ++result;
                  if (!--v9)
                  {
                    goto LABEL_69;
                  }
                }
              }

              goto LABEL_67;
            }

LABEL_68:
            v12 = 0;
            LOBYTE(v9) = 1;
LABEL_69:
            v35 = v9;
            v31 = v9;

            if (v31)
            {
              return result;
            }

            goto LABEL_70;
          }

          if (v9 >= 1)
          {
            if (--v9)
            {
              v12 = 0;
              if (result)
              {
                v13 = (result + 1);
                while (1)
                {
                  v14 = *v13 - 48;
                  if (v14 > 9)
                  {
                    goto LABEL_68;
                  }

                  v15 = 10 * v12;
                  if ((v15 & 0xFFFFFFFF00000000) != 0)
                  {
                    goto LABEL_68;
                  }

                  v12 = v15 - v14;
                  if (v15 < v14)
                  {
                    goto LABEL_68;
                  }

                  ++v13;
                  if (!--v9)
                  {
                    goto LABEL_69;
                  }
                }
              }

LABEL_67:
              LOBYTE(v9) = 0;
              goto LABEL_69;
            }

            goto LABEL_68;
          }

          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

LABEL_77:
        result = sub_221DAC658();
        v9 = v32;
        goto LABEL_12;
      }

      v12 = sub_221D947F0(result, v7, 10);

      if ((v12 & 0x100000000) == 0)
      {
LABEL_70:
        v16 = v12;
        return sub_221D91278(&v33, v16);
      }
    }
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

uint64_t _s14AccountsDaemon27ACDXPCEventPublisherWrapperC26registerSubscriberListeneryyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_221DAC238();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_221DA02C0();
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_221DAC218();
  v9 = sub_221DAC548();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_221D2F000, v8, v9, "ACDXPCEventPublisher: registering", v10, 2u);
    MEMORY[0x223DAA350](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v11 = sub_221DAC4E8();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_221D8DBBC(0, 0, v2, &unk_221DB1BD0, v12);

  return sub_221D96328(v2, &qword_27CFE89D0, &qword_221DB1570);
}

uint64_t sub_221D95BB0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221D96B50;

  return sub_221D8DFC0(v4, v5, v6, v2, v3);
}

unint64_t sub_221D95C74()
{
  result = qword_27CFE8840;
  if (!qword_27CFE8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE8840);
  }

  return result;
}

unint64_t sub_221D95CCC()
{
  result = qword_27CFE8848;
  if (!qword_27CFE8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE8848);
  }

  return result;
}

unint64_t sub_221D95D24()
{
  result = qword_27CFE8850;
  if (!qword_27CFE8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE8850);
  }

  return result;
}

unint64_t sub_221D95D7C()
{
  result = qword_27CFE8858;
  if (!qword_27CFE8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE8858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCEventSubscriberFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCEventSubscriberFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_221D95E4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221D95E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_221D95EF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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