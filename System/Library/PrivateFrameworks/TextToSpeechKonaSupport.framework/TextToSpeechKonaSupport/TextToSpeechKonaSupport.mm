void sub_26E787238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  objc_sync_exit(v9);
  a9.super_class = AXKonaSpeechEngine;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26E7880A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, void *a43, void *a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54, ...)
{
  va_start(va, a54);

  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26E788BDC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_26E788DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  objc_sync_exit(v20);

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_26E789024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v18 = v17;
  objc_sync_exit(v18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26E7891A0(_Unwind_Exception *a1)
{
  v3 = v2;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void _GLOBAL__sub_I_AXKonaSpeechEngine_mm()
{
  v12[14] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = *MEMORY[0x277CD8708];
  v11[0] = @"en-US";
  v11[1] = @"en-GB";
  v12[0] = v1;
  v12[1] = v1;
  v2 = *MEMORY[0x277CD8810];
  v11[2] = @"es-ES";
  v11[3] = @"es-MX";
  v12[2] = v2;
  v12[3] = v2;
  v3 = *MEMORY[0x277CD8718];
  v11[4] = @"fr-FR";
  v11[5] = @"fr-CA";
  v12[4] = v3;
  v12[5] = v3;
  v4 = *MEMORY[0x277CD8728];
  v11[6] = @"de-DE";
  v11[7] = @"it-IT";
  v5 = *MEMORY[0x277CD8768];
  v12[6] = v4;
  v12[7] = v5;
  v6 = *MEMORY[0x277CD87D8];
  v11[8] = @"pt-BR";
  v11[9] = @"fi-FI";
  v7 = *MEMORY[0x277CD8710];
  v12[8] = v6;
  v12[9] = v7;
  v8 = *MEMORY[0x277CD8770];
  v11[10] = @"ja-JP";
  v11[11] = @"ko-KR";
  v9 = *MEMORY[0x277CD8790];
  v12[10] = v8;
  v12[11] = v9;
  v10 = *MEMORY[0x277CD87F8];
  v11[12] = @"zh-CN";
  v11[13] = @"zh-TW";
  v12[12] = v10;
  v12[13] = v10;
  kKonaLangToNLLang = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:14];
  objc_autoreleasePoolPop(v0);
}