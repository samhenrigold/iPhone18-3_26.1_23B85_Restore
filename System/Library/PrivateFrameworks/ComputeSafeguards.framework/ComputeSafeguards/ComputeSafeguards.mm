id getMainQueue(uint64_t a1)
{
  if (getMainQueue_onceToken != -1)
  {
    getMainQueue_cold_1();
  }

  v2 = mainQueue;

  return v2;
}

id CSNumberForKeyWithErrors(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = objc_opt_class();
  v9 = CSObjectOfClassForKeyWithErrors(v7, v6, v8, v5);

  return v9;
}

id CSObjectOfClassForKeyWithErrors(void *a1, void *a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = CSObjectOfClassForKey(v7, v8, a3);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = +[CSLogger defaultCategory];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v23 = v8;
      v24 = 2114;
      v25 = objc_opt_class();
      v26 = 2114;
      v27 = a3;
      v19 = v25;
      _os_log_error_impl(&dword_243DC3000, v13, OS_LOG_TYPE_ERROR, "Detected misconfigured properties dictionary. Property %{public}@ had class %{public}@ when class %{public}@ was expected", buf, 0x20u);
    }

    if (v9)
    {
      v14 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA470];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Detected misconfigured properties dictionary. Property %@ had class %@ when class %@ was expected", v8, objc_opt_class(), a3];
      v21 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v17 = [v14 errorWithDomain:@"CSUtilitiesErrorDomain" code:1 userInfo:v16];

      [v9 addObject:v17];
    }
  }

  return v11;
}

void *CSObjectOfClassForKey(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = [a1 objectForKey:a2];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

_BYTE *OUTLINED_FUNCTION_3_0(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x18u);
}

void OUTLINED_FUNCTION_3_2(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

unint64_t getCurrentTime()
{
  clock_serv = 0;
  v3 = 0;
  v0 = MEMORY[0x245D52A80]();
  host_get_clock_service(v0, 1, &clock_serv);
  clock_get_time(clock_serv, &v3);
  LODWORD(v1) = v3.tv_sec;
  return (v1 + v3.tv_nsec * 0.000000001);
}

id processLogger(uint64_t a1)
{
  if (processLogger_onceToken != -1)
  {
    processLogger_cold_1();
  }

  v2 = processLogger_logger;

  return v2;
}

void sub_243DC7360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_243DCD410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243DCD5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243DCD720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243DCD8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243DCDFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243DCE140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243DCEEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_243DCF3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243DCFF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_243DD00CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243DD0288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243DD0FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_243DD187C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

id mobileUserADG()
{
  v0 = CFPreferencesCopyValue(@"AutomatedDeviceGroup", @"com.apple.da", @"mobile", *MEMORY[0x277CBF030]);
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_243DDBC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_243DDC7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose((v56 - 208), 8);
  _Block_object_dispose((v56 - 176), 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_6_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

void OUTLINED_FUNCTION_7_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 8u);
}

uint64_t __processLogger_block_invoke()
{
  processLogger_logger = [CSLogger logForCategory:@"CSProcess"];

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_4_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_243DE31E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_243DE336C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243DE34E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_243DE497C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void __getMainQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.computesafeguards.mainqueue", v2);
  v1 = mainQueue;
  mainQueue = v0;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t isInternalBuild(uint64_t a1, uint64_t a2)
{
  if (isInternalBuild_onceToken != -1)
  {
    isInternalBuild_cold_1();
  }

  return isInternalBuild_internalBuild;
}

void __isInternalBuild_block_invoke()
{
  v0 = MGCopyAnswer();
  isInternalBuild_internalBuild = CFBooleanGetValue(v0) != 0;

  CFRelease(v0);
}

id CSNumberForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = CSObjectOfClassForKey(v4, v3, v5);

  return v6;
}

id CSStringForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = CSObjectOfClassForKey(v4, v3, v5);

  return v6;
}

id CSStringForKeyWithErrors(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = objc_opt_class();
  v9 = CSObjectOfClassForKeyWithErrors(v7, v6, v8, v5);

  return v9;
}

id CSURLForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = CSObjectOfClassForKey(v4, v3, v5);

  return v6;
}

id CSURLForKeyWithErrors(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = objc_opt_class();
  v9 = CSObjectOfClassForKeyWithErrors(v7, v6, v8, v5);

  return v9;
}

id CSArrayForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = CSObjectOfClassForKey(v4, v3, v5);

  return v6;
}

id CSArrayForKeyWithErrors(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = objc_opt_class();
  v9 = CSObjectOfClassForKeyWithErrors(v7, v6, v8, v5);

  return v9;
}

id CSDictionaryForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = CSObjectOfClassForKey(v4, v3, v5);

  return v6;
}

id CSDictionaryForKeyWithErrors(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = objc_opt_class();
  v9 = CSObjectOfClassForKeyWithErrors(v7, v6, v8, v5);

  return v9;
}

uint64_t CSBoolForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id getProcessUUID(uint64_t a1)
{
  v1 = a1;
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  *__error() = 0;
  if (proc_pidinfo(v1, 17, 0, &v5, 56) == 56)
  {
    v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v5];
  }

  else
  {
    v3 = [CSLogger defaultCategory:v5];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      getProcessUUID_cold_1();
    }

    v2 = 0;
  }

  return v2;
}

uint64_t getCoalitionID(uint64_t a1)
{
  v1 = a1;
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  *__error() = 0;
  if (proc_pidinfo(v1, 20, 1uLL, v4, 40) == 40)
  {
    return *&v4[0];
  }

  v3 = +[CSLogger defaultCategory];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    getCoalitionID_cold_1();
  }

  return 0;
}

id getDateFormatter(uint64_t a1)
{
  if (getDateFormatter_onceToken != -1)
  {
    getDateFormatter_cold_1();
  }

  v2 = getDateFormatter_formatter;

  return v2;
}

uint64_t __getDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = getDateFormatter_formatter;
  getDateFormatter_formatter = v0;

  v2 = getDateFormatter_formatter;
  v3 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v2 setTimeZone:v3];

  v4 = getDateFormatter_formatter;

  return [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

const char *PEIssueTypeString(char a1)
{
  if ((a1 + 1) > 2u)
  {
    return "IllegalValue";
  }

  else
  {
    return off_278DF5610[(a1 + 1)];
  }
}

const char *PEMitigationTypeString(char a1)
{
  if ((a1 + 1) > 8u)
  {
    return "IllegalValue";
  }

  else
  {
    return off_278DF5628[(a1 + 1)];
  }
}

const char *PEReasonString(char a1)
{
  if ((a1 + 1) > 0x1Cu)
  {
    return "IllegalValue";
  }

  else
  {
    return off_278DF5670[(a1 + 1)];
  }
}

const char *PESuggestionReasonString(int a1)
{
  if ((a1 + 1) > 4)
  {
    return "IllegalValue";
  }

  else
  {
    return off_278DF5758[a1 + 1];
  }
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

void sub_243DED6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return [v0 ruleID];
}

void getProcessUUID_cold_1()
{
  __error();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5(&dword_243DC3000, v0, v1, "getProcessUUID: proc_pidinfo(PROC_PIDUNIQIDENTIFIERINFO) failed %d for pid %d", v2, v3, v4, v5);
}

void getCoalitionID_cold_1()
{
  __error();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5(&dword_243DC3000, v0, v1, "getCoalitionID: proc_pidinfo(PROC_PIDCOALITIONINFO) failed %d for pid %d", v2, v3, v4, v5);
}