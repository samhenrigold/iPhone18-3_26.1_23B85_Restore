id DALoggingwithCategory(unint64_t a1)
{
  if (a1 >= 0xC)
  {
    DALoggingwithCategory_cold_2();
  }

  if (DALoggingwithCategory_onceToken != -1)
  {
    DALoggingwithCategory_cold_1();
  }

  v2 = DALoggingwithCategory_log[a1];

  return v2;
}

void sub_2243C1394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose(&STACK[0x470], 8);
  _Block_object_dispose(&STACK[0x510], 8);
  _Block_object_dispose(&STACK[0x5B0], 8);
  _Block_object_dispose(&STACK[0x650], 8);
  _Block_object_dispose(&STACK[0x6F0], 8);
  _Block_object_dispose(&STACK[0x790], 8);
  _Block_object_dispose(&STACK[0x830], 8);
  _Block_object_dispose(&STACK[0x890], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2243C2558(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2243C3440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t buf, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t bufa, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243C393C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243C3F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243C41E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243C43D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243C4634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243C4BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243C4ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243C5248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243C543C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getESDConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getESDConnectionClass_softClass;
  v7 = getESDConnectionClass_softClass;
  if (!getESDConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getESDConnectionClass_block_invoke;
    v3[3] = &unk_2785203C8;
    v3[4] = &v4;
    __getESDConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2243C59C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243C8A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
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

void sub_2243CB158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243CC44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243CC9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243CCCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243CCED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243CD224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243CD728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243CD98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243CDDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243CE02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243CE678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2243CEB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243CEE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243CF30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2243CF858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243CFF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243D056C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243D0918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243D0BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243D1610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ExchangeSyncExpressLibraryCore(uint64_t a1)
{
  if (!ExchangeSyncExpressLibraryCore_frameworkLibrary)
  {
    ExchangeSyncExpressLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return ExchangeSyncExpressLibraryCore_frameworkLibrary;
}

uint64_t __ExchangeSyncExpressLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ExchangeSyncExpressLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getESDConnectionClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!ExchangeSyncExpressLibraryCore(&v3))
  {
    __getESDConnectionClass_block_invoke_cold_2(&v3);
  }

  if (v3)
  {
    free(v3);
  }

  result = objc_getClass("ESDConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getESDConnectionClass_block_invoke_cold_1();
  }

  getESDConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void DACPLoggingAppendDataToLogFile(int a1, const void *a2, CFDataRef theData, void *a4)
{
  if (_init_once == -1)
  {
    if (!theData)
    {
LABEL_17:
      if (!a4)
      {
        return;
      }

      if (_callbackQueue_onceToken != -1)
      {
        DACPLoggingAppendDataToLogFile_cold_4();
      }

      v9 = _callbackQueue_queue;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __DACPLoggingAppendDataToLogFile_block_invoke;
      v17[3] = &unk_278520A80;
      v17[4] = a4;
      v10 = v17;
      goto LABEL_21;
    }
  }

  else
  {
    DACPLoggingAppendDataToLogFile_cold_1();
    if (!theData)
    {
      goto LABEL_17;
    }
  }

  if (!CFDataGetLength(theData))
  {
    goto LABEL_17;
  }

  v8 = _settingsForFacility(a2);
  if (_maxLogFileLevel(v8) < a1)
  {
    if (!a4)
    {
      return;
    }

    if (_callbackQueue_onceToken != -1)
    {
      DACPLoggingAppendDataToLogFile_cold_4();
    }

    v9 = _callbackQueue_queue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __DACPLoggingAppendDataToLogFile_block_invoke_2;
    v16[3] = &unk_278520A80;
    v16[4] = a4;
    v10 = v16;
LABEL_21:
    dispatch_async(v9, v10);
    return;
  }

  Copy = CFDataCreateCopy(0, theData);
  if (a4)
  {
    a4 = _Block_copy(a4);
  }

  WorkSettingsFromSettings = _createWorkSettingsFromSettings(v8);
  atomic_store(0, (v8 + 156));
  if (_workGroup_once != -1)
  {
    DACPLoggingAppendDataToLogFile_cold_2();
  }

  v13 = _workGroup_group;
  if (_workQueue_once != -1)
  {
    v14 = _workGroup_group;
    DACPLoggingAppendDataToLogFile_cold_3();
    v13 = v14;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __DACPLoggingAppendDataToLogFile_block_invoke_3;
  block[3] = &unk_278520AA8;
  block[5] = WorkSettingsFromSettings;
  block[6] = Copy;
  block[4] = a4;
  dispatch_group_async(v13, _workQueue_queue, block);
}

unint64_t _settingsForFacility(const void *a1)
{
  explicit = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
  if (a1)
  {
    explicit = atomic_load_explicit(explicit, memory_order_acquire);
    if (explicit)
    {
      while (1)
      {
        v3 = *(explicit + 8);
        if (v3)
        {
          v5.length = CFArrayGetCount(*(explicit + 8));
          v5.location = 0;
          if (CFArrayContainsValue(v3, v5, a1))
          {
            break;
          }
        }

        explicit = atomic_load_explicit(explicit, memory_order_acquire);
        if (!explicit)
        {
          return atomic_load_explicit(&_logFileSettings, memory_order_acquire);
        }
      }
    }

    else
    {
      return atomic_load_explicit(&_logFileSettings, memory_order_acquire);
    }
  }

  return explicit;
}

uint64_t _maxLogFileLevel(unint64_t a1)
{
  while (1)
  {
    explicit = atomic_load_explicit((a1 + 56), memory_order_acquire);
    if (explicit != -3)
    {
      break;
    }

    explicit = atomic_load_explicit((a1 + 48), memory_order_acquire);
    if (explicit != -2)
    {
      break;
    }

    v2 = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
    v3 = a1 == v2;
    a1 = v2;
    if (v3)
    {
      _maxLogFileLevel_cold_1();
    }
  }

  return explicit;
}

void *_createWorkSettingsFromSettings(unint64_t a1)
{
  v2 = malloc_type_calloc(0x50uLL, 1uLL, 0xEAC47F0EuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = atomic_load_explicit((a1 + 8), memory_order_acquire);
    v2[1] = atomic_load_explicit((a1 + 16), memory_order_acquire);
    v2[2] = atomic_load_explicit((a1 + 24), memory_order_acquire);
    v4 = a1;
    while (1)
    {
      explicit = atomic_load_explicit((v4 + 32), memory_order_acquire);
      if (explicit != -2)
      {
        break;
      }

      v6 = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
      v7 = v4 == v6;
      v4 = v6;
      if (v7)
      {
        _createWorkSettingsFromSettings_cold_4();
      }
    }

    v2[3] = explicit;
    v8 = a1;
    while (1)
    {
      v9 = atomic_load_explicit((v8 + 40), memory_order_acquire);
      if (v9 != -2)
      {
        break;
      }

      v10 = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
      v7 = v8 == v10;
      v8 = v10;
      if (v7)
      {
        _createWorkSettingsFromSettings_cold_3();
      }
    }

    *(v2 + 8) = v9;
    v2[5] = atomic_load_explicit((a1 + 64), memory_order_acquire);
    v2[6] = atomic_load_explicit((a1 + 80), memory_order_acquire);
    v11 = atomic_load_explicit((a1 + 96), memory_order_acquire);
    v12 = *(a1 + 136);
    v2[7] = v11;
    v2[8] = v12;
    v13 = a1;
    while (1)
    {
      v14 = atomic_load_explicit((v13 + 144), memory_order_acquire);
      if (v14)
      {
        break;
      }

      v15 = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
      v7 = v13 == v15;
      v13 = v15;
      if (v7)
      {
        _createWorkSettingsFromSettings_cold_2();
      }
    }

    *(v2 + 72) = v14 == 2;
    v16 = a1;
    while (1)
    {
      v17 = *(v16 + 152);
      if (v17)
      {
        break;
      }

      v18 = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
      v7 = v16 == v18;
      v16 = v18;
      if (v7)
      {
        _createWorkSettingsFromSettings_cold_1();
      }
    }

    *(v2 + 73) = v17 == 2;
    *(v2 + 74) = atomic_load_explicit((a1 + 156), memory_order_acquire);
  }

  else
  {
    v19 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21[0] = 0;
      _os_log_impl(&dword_2243BD000, v19, OS_LOG_TYPE_ERROR, "Could not create a copy of the log file settings.", v21, 2u);
    }
  }

  return v3;
}

void __DACPLoggingAppendDataToLogFile_block_invoke_3(uint64_t a1)
{
  v1 = a1;
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (!v2)
  {
    v9 = DALoggingwithCategory(0);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v10 = "Cannot append data to log file because workSettings is NULL.";
    v11 = v9;
    v12 = 2;
LABEL_13:
    _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    goto LABEL_37;
  }

  v3 = v2[8];
  if (!v3)
  {
    v13 = DALoggingwithCategory(0);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v14 = *v2;
    *buf = 138412290;
    *&buf[4] = v14;
    v10 = "Cannot append data to log file because shared work settings is NULL. Facilities: %@";
    v11 = v13;
    v12 = 12;
    goto LABEL_13;
  }

  v4 = *(a1 + 48);
  if (v2[3] < 1)
  {
    goto LABEL_14;
  }

  if (*v3)
  {
    v5 = MEMORY[0x22AA4E440]();
    if (v5 < CFAbsoluteTimeGetCurrent())
    {
      v6 = *v2[8];
      if (v6)
      {
        CFRelease(v6);
      }

      goto LABEL_8;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

LABEL_8:
  Current = CFAbsoluteTimeGetCurrent();
  *v2[8] = CFDateCreate(0, Current + 13.0);
  v8 = v2[3];
LABEL_15:
  v15 = 0;
  v16 = 0;
  v31 = 0;
  do
  {
    if (v15)
    {
      CFRelease(v15);
    }

    v15 = *(v2[8] + 8);
    if (!v15)
    {
      _workQueueRefreshUUIDForWorkSettings(v2);
      v15 = *(v2[8] + 8);
      if (!v15)
      {
        goto LABEL_27;
      }
    }

    v17 = *(v2 + 74);
    v18 = *(v2 + 72);
    v19 = *(v2 + 8);
    v20 = +[DACPLogShared shared];
    *buf = 0;
    v21 = [(DACPLogShared *)v20 _logData:v4 UUID:v15 startNewFile:v17 != 0 sizeCheck:v8 wantsCompressed:v18 != 0 maxFileCount:v19 outDidCreateNewFile:&v31 outNewFilePath:buf];
    if (*buf)
    {
      CFRetain(*buf);
      v15 = *buf;
    }

    else
    {
      v15 = 0;
    }

    v22 = v2[8];
    v23 = *(v22 + 8);
    v24 = v23 == 0;
    if (!v21)
    {
      if (v23)
      {
        CFRelease(v23);
        v22 = v2[8];
      }

      *(v22 + 8) = 0;
LABEL_27:
      v24 = 1;
    }

    v16 += v24;
  }

  while (v24 && v16 < 3);
  if (v16 >= 3)
  {
    v25 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *v2;
      *buf = 138412290;
      *&buf[4] = v26;
      _os_log_impl(&dword_2243BD000, v25, OS_LOG_TYPE_ERROR, "Can't append data to log file, even after retrying. Giving up. Facilities: %@", buf, 0xCu);
    }
  }

  v27 = v2[6];
  if (v27 && v31)
  {
    (*(v27 + 16))(v27, v15);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v1 = a1;
LABEL_37:
  free(*(v1 + 40));
  v28 = *(v1 + 48);
  if (v28)
  {
    CFRelease(v28);
  }

  if (*(v1 + 32))
  {
    if (_callbackQueue_onceToken != -1)
    {
      __DACPLoggingAppendDataToLogFile_block_invoke_3_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __DACPLoggingAppendDataToLogFile_block_invoke_4;
    block[3] = &unk_278520A80;
    block[4] = *(v1 + 32);
    dispatch_async(_callbackQueue_queue, block);
  }
}

void __DACPLoggingAppendDataToLogFile_block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

void DACPLoggingSlurpFileIntoLogFile(int a1, const void *a2, const __CFString *a3, const __CFString *Copy, const __CFString *a5, void *a6)
{
  if (_init_once != -1)
  {
    DACPLoggingAppendDataToLogFile_cold_1();
  }

  v12 = _settingsForFacility(a2);
  if (_maxLogFileLevel(v12) >= a1)
  {
    if (Copy)
    {
      Copy = CFStringCreateCopy(0, Copy);
    }

    if (a3)
    {
      a3 = CFStringCreateCopy(0, a3);
    }

    if (a5)
    {
      a5 = CFStringCreateCopy(0, a5);
    }

    if (a6)
    {
      a6 = _Block_copy(a6);
    }

    WorkSettingsFromSettings = _createWorkSettingsFromSettings(v12);
    atomic_store(0, (v12 + 156));
    if (_workGroup_once != -1)
    {
      DACPLoggingAppendDataToLogFile_cold_2();
    }

    v14 = _workGroup_group;
    if (_workQueue_once != -1)
    {
      DACPLoggingAppendDataToLogFile_cold_3();
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __DACPLoggingSlurpFileIntoLogFile_block_invoke_2;
    v15[3] = &unk_278520AD0;
    v15[6] = Copy;
    v15[7] = a3;
    v15[8] = a5;
    v15[4] = a6;
    v15[5] = WorkSettingsFromSettings;
    dispatch_group_async(v14, _workQueue_queue, v15);
  }

  else if (a6)
  {
    if (_callbackQueue_onceToken != -1)
    {
      DACPLoggingAppendDataToLogFile_cold_4();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __DACPLoggingSlurpFileIntoLogFile_block_invoke;
    block[3] = &unk_278520A80;
    block[4] = a6;
    dispatch_async(_callbackQueue_queue, block);
  }
}

void __DACPLoggingSlurpFileIntoLogFile_block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v30 = *(a1 + 64);
  v31 = *(a1 + 56);
  if (v1[3] < 1)
  {
    goto LABEL_7;
  }

  if (*v1[8])
  {
    v3 = MEMORY[0x22AA4E440]();
    if (v3 < CFAbsoluteTimeGetCurrent())
    {
      v4 = *v1[8];
      if (v4)
      {
        CFRelease(v4);
      }

      goto LABEL_6;
    }

LABEL_7:
    v29 = 0;
    goto LABEL_8;
  }

LABEL_6:
  Current = CFAbsoluteTimeGetCurrent();
  *v1[8] = CFDateCreate(0, Current + 13.0);
  v29 = v1[3];
LABEL_8:
  v6 = 0;
  v7 = 0;
  v32 = 0;
  v8 = *(v1[8] + 8);
  do
  {
    if (!v8)
    {
      _workQueueRefreshUUIDForWorkSettings(v1);
      v8 = *(v1[8] + 8);
      if (!v8)
      {
        goto LABEL_28;
      }
    }

    if (v6)
    {
      CFRelease(v6);
      v8 = *(v1[8] + 8);
    }

    v9 = *(v1 + 74);
    v10 = *(v1 + 72);
    v11 = *(v1 + 8);
    v12 = malloc_type_malloc(0xC8uLL, 0xD9E101A0uLL);
    if (!v12)
    {
      __DACPLoggingSlurpFileIntoLogFile_block_invoke_2_cold_2();
      __DACPLoggingSlurpFileIntoLogFile_block_invoke_2_cold_3();
    }

    v13 = v12;
    v14 = 200;
    while (!CFStringGetCString(v2, v13, v14, 0x8000100u))
    {
      free(v13);
      if (v14 < 0x100000)
      {
        v14 *= 2;
        v13 = malloc_type_malloc(v14, 0x17D7A254uLL);
        if (v13)
        {
          continue;
        }
      }

      __DACPLoggingSlurpFileIntoLogFile_block_invoke_2_cold_1(v2);
      __DACPLoggingSlurpFileIntoLogFile_block_invoke_2_cold_3();
    }

    v15 = open(v13, 0);
    *cf = 0;
    HIDWORD(v27) = v11;
    LOBYTE(v27) = v10 != 0;
    v16 = [+[DACPLogShared shared](DACPLogShared _slurpToFileUUID:"_slurpToFileUUID:slurpeeFileDescriptor:prefix:suffix:startNewFile:sizeCheck:wantsCompressed:maxLogFileCount:outDidCreateNewFile:outNewFilePath:" slurpeeFileDescriptor:v8 prefix:v15 suffix:v31 startNewFile:v30 sizeCheck:v9 != 0 wantsCompressed:v29 maxLogFileCount:v27 outDidCreateNewFile:&v32 outNewFilePath:cf];
    if (*cf)
    {
      CFRetain(*cf);
      v6 = *cf;
    }

    else
    {
      v6 = 0;
    }

    if (v15 != -1)
    {
      close(v15);
    }

    free(v13);
    v17 = v1[8];
    v18 = *(v17 + 8);
    v19 = v18 == 0;
    if (!v16)
    {
      if (v18)
      {
        CFRelease(v18);
        v17 = v1[8];
      }

      *(v17 + 8) = 0;
LABEL_28:
      v19 = 1;
    }

    v7 += v19;
    if (!v19)
    {
      break;
    }

    v8 = 0;
  }

  while (v7 < 3);
  if (v7 >= 3)
  {
    v20 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *v1;
      *cf = 138412290;
      *&cf[4] = v21;
      _os_log_impl(&dword_2243BD000, v20, OS_LOG_TYPE_ERROR, "Can't slurp lookaside file into log file, even after retrying. Giving up. Facilities: %@", cf, 0xCu);
    }
  }

  v22 = v1[6];
  if (v22 && v32)
  {
    (*(v22 + 16))(v22, v6);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  free(*(a1 + 40));
  v23 = *(a1 + 48);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 56);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 32);
  if (v26)
  {
    (*(v26 + 16))();
    _Block_release(*(a1 + 32));
  }
}

void DACPLoggingAddCustomLogConfiguration(const __CFArray *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    DACPLoggingAddCustomLogConfiguration_cold_14();
  }

  if (!CFArrayGetCount(a1))
  {
    DACPLoggingAddCustomLogConfiguration_cold_13();
  }

  if (_init_once != -1)
  {
    DACPLoggingAppendDataToLogFile_cold_1();
  }

  if (CFDictionaryContainsKey(a2, @"logName"))
  {
    cf = CFDictionaryGetValue(a2, @"logName");
  }

  else
  {
    cf = 0;
  }

  if (CFDictionaryContainsKey(a2, @"logDirectory"))
  {
    Value = CFDictionaryGetValue(a2, @"logDirectory");
  }

  else
  {
    Value = 0;
  }

  if (CFDictionaryContainsKey(a2, @"maxLogFileSize"))
  {
    v4 = CFDictionaryGetValue(a2, @"maxLogFileSize");
  }

  else
  {
    v4 = 0;
  }

  if (CFDictionaryContainsKey(a2, @"maxLogFileCount"))
  {
    v5 = CFDictionaryGetValue(a2, @"maxLogFileCount");
  }

  else
  {
    v5 = 0;
  }

  if (CFDictionaryContainsKey(a2, @"wantsCompressedFiles"))
  {
    BOOLean = CFDictionaryGetValue(a2, @"wantsCompressedFiles");
  }

  else
  {
    BOOLean = 0;
  }

  if (CFDictionaryContainsKey(a2, @"consoleUsesRealLevels"))
  {
    v42 = CFDictionaryGetValue(a2, @"consoleUsesRealLevels");
  }

  else
  {
    v42 = 0;
  }

  if (CFDictionaryContainsKey(a2, @"maxConsoleLevel"))
  {
    v6 = CFDictionaryGetValue(a2, @"maxConsoleLevel");
  }

  else
  {
    v6 = 0;
  }

  if (CFDictionaryContainsKey(a2, @"maxLogFileLevel"))
  {
    v7 = CFDictionaryGetValue(a2, @"maxLogFileLevel");
  }

  else
  {
    v7 = 0;
  }

  if (CFDictionaryContainsKey(a2, @"consoleLevelDefaultsDomain"))
  {
    v36 = CFDictionaryGetValue(a2, @"consoleLevelDefaultsDomain");
  }

  else
  {
    v36 = 0;
  }

  if (CFDictionaryContainsKey(a2, @"consoleLevelDefaultsKey"))
  {
    v41 = CFDictionaryGetValue(a2, @"consoleLevelDefaultsKey");
  }

  else
  {
    v41 = 0;
  }

  if (CFDictionaryContainsKey(a2, @"logFileLevelDefaultsDomain"))
  {
    v35 = CFDictionaryGetValue(a2, @"logFileLevelDefaultsDomain");
  }

  else
  {
    v35 = 0;
  }

  if (CFDictionaryContainsKey(a2, @"logFileLevelDefaultsKey"))
  {
    v39 = CFDictionaryGetValue(a2, @"logFileLevelDefaultsKey");
  }

  else
  {
    v39 = 0;
  }

  if (CFDictionaryContainsKey(a2, @"enableNewlines"))
  {
    v37 = CFDictionaryGetValue(a2, @"enableNewlines");
  }

  else
  {
    v37 = 0;
  }

  if (CFDictionaryContainsKey(a2, @"createFileLogFormatBlock"))
  {
    v8 = CFDictionaryGetValue(a2, @"createFileLogFormatBlock");
  }

  else
  {
    v8 = 0;
  }

  if (CFDictionaryContainsKey(a2, @"createConsoleLogFormatBlock"))
  {
    v9 = CFDictionaryGetValue(a2, @"createConsoleLogFormatBlock");
  }

  else
  {
    v9 = 0;
  }

  if (CFDictionaryContainsKey(a2, @"didCreateNewFileBlock"))
  {
    aBlock = CFDictionaryGetValue(a2, @"didCreateNewFileBlock");
  }

  else
  {
    aBlock = 0;
  }

  if (CFDictionaryContainsKey(a2, @"willLogToConsoleBlock"))
  {
    v10 = CFDictionaryGetValue(a2, @"willLogToConsoleBlock");
  }

  else
  {
    v10 = 0;
  }

  if (CFDictionaryContainsKey(a2, @"willLogToFileBlock"))
  {
    v11 = CFDictionaryGetValue(a2, @"willLogToFileBlock");
    if (v8)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v11 = 0;
    if (v8)
    {
      goto LABEL_62;
    }
  }

  if (CFDictionaryContainsKey(a2, @"createLogFormatBlock"))
  {
    v8 = CFDictionaryGetValue(a2, @"createLogFormatBlock");
LABEL_62:
    if (v9)
    {
      goto LABEL_68;
    }

    goto LABEL_63;
  }

  v8 = 0;
  if (v9)
  {
    goto LABEL_68;
  }

LABEL_63:
  if (CFDictionaryContainsKey(a2, @"createLogFormatBlock"))
  {
    v9 = CFDictionaryGetValue(a2, @"createLogFormatBlock");
  }

  else
  {
    v9 = 0;
  }

LABEL_68:
  valuePtr = 10485760;
  if (v4 && !CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
  {
    DACPLoggingAddCustomLogConfiguration_cold_2();
  }

  v48 = 20;
  if (v5 && !CFNumberGetValue(v5, kCFNumberSInt32Type, &v48))
  {
    DACPLoggingAddCustomLogConfiguration_cold_3();
  }

  v47 = 5;
  if (v6 && !CFNumberGetValue(v6, kCFNumberSInt32Type, &v47))
  {
    DACPLoggingAddCustomLogConfiguration_cold_4();
  }

  v46 = -1;
  if (v7 && !CFNumberGetValue(v7, kCFNumberSInt32Type, &v46))
  {
    DACPLoggingAddCustomLogConfiguration_cold_5();
  }

  if (valuePtr <= -3)
  {
    DACPLoggingAddCustomLogConfiguration_cold_12();
  }

  if (v48 <= -3)
  {
    DACPLoggingAddCustomLogConfiguration_cold_11();
  }

  if (v47 <= -3)
  {
    DACPLoggingAddCustomLogConfiguration_cold_10();
  }

  if (v46 <= -3)
  {
    DACPLoggingAddCustomLogConfiguration_cold_9();
  }

  DefaultSettings = _createDefaultSettings();
  if (DefaultSettings)
  {
    v13 = DefaultSettings;
    *(DefaultSettings + 18) = 0;
    *(DefaultSettings + 1) = CFArrayCreateCopy(0, a1);
    if (cf)
    {
      DefaultLogFileName = CFRetain(cf);
    }

    else
    {
      DefaultLogFileName = _createDefaultLogFileName();
    }

    *(v13 + 16) = DefaultLogFileName;
    if (Value)
    {
      v16 = Value;
    }

    else
    {
      v16 = @"/var/mobile/Library/Logs/CrashReporter/DataAccess";
    }

    v17 = CFRetain(v16);
    v18 = valuePtr;
    *(v13 + 24) = v17;
    *(v13 + 32) = v18;
    v19 = v47;
    *(v13 + 40) = v48;
    *(v13 + 44) = v19;
    *(v13 + 48) = v46;
    v20 = v36;
    if (v36)
    {
      v20 = CFRetain(v36);
    }

    *(v13 + 104) = v20;
    if (v41)
    {
      v21 = CFRetain(v41);
    }

    else
    {
      v21 = 0;
    }

    *(v13 + 112) = v21;
    v22 = v35;
    if (v35)
    {
      v22 = CFRetain(v35);
    }

    *(v13 + 120) = v22;
    if (v39)
    {
      v23 = CFRetain(v39);
    }

    else
    {
      v23 = 0;
    }

    *(v13 + 128) = v23;
    if (v8)
    {
      v24 = _Block_copy(v8);
    }

    else
    {
      v24 = 0;
    }

    *(v13 + 64) = v24;
    if (v9)
    {
      v25 = _Block_copy(v9);
    }

    else
    {
      v25 = 0;
    }

    *(v13 + 72) = v25;
    v26 = aBlock;
    if (aBlock)
    {
      v26 = _Block_copy(aBlock);
    }

    *(v13 + 80) = v26;
    if (v10)
    {
      v27 = _Block_copy(v10);
    }

    else
    {
      v27 = 0;
    }

    *(v13 + 88) = v27;
    if (v11)
    {
      v28 = _Block_copy(v11);
    }

    else
    {
      v28 = 0;
    }

    *(v13 + 96) = v28;
    if (BOOLean)
    {
      if (CFBooleanGetValue(BOOLean))
      {
        v29 = 2;
      }

      else
      {
        v29 = 1;
      }
    }

    else
    {
      v29 = 0;
    }

    *(v13 + 144) = v29;
    if (v42)
    {
      if (CFBooleanGetValue(v42))
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }
    }

    else
    {
      v30 = 0;
    }

    *(v13 + 148) = v30;
    if (v37)
    {
      if (CFBooleanGetValue(v37))
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }
    }

    else
    {
      v31 = 0;
    }

    *(v13 + 152) = v31;
    v32 = &_logFileSettings;
    for (i = atomic_load_explicit(&_logFileSettings, memory_order_acquire); i; i = atomic_load_explicit(i, memory_order_acquire))
    {
      v32 = i;
    }

    atomic_store(v13, v32);
    if (v41 | v39 && _startObservingDefaultChanges_once != -1)
    {
      DACPLoggingAddCustomLogConfiguration_cold_6();
    }

    if (_recomputeQueue_onceToken != -1)
    {
      DACPLoggingAddCustomLogConfiguration_cold_7();
    }

    dispatch_sync(_recomputeQueue_queue, &__block_literal_global_0);
    if (_configurationQueue_once != -1)
    {
      DACPLoggingAddCustomLogConfiguration_cold_8();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __DACPLoggingAddCustomLogConfiguration_block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v13;
    dispatch_sync(_configurationQueue_queue, block);
  }

  else
  {
    v15 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v15, OS_LOG_TYPE_ERROR, "Could not create a new log file setting.", buf, 2u);
    }
  }
}

char *_createDefaultSettings()
{
  v0 = malloc_type_calloc(0xA0uLL, 1uLL, 0x734D9FD0uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 4) = 10485760;
    *(v0 + 40) = xmmword_2243ECFB0;
    *(v0 + 14) = -3;
    *(v0 + 18) = 0x100000002;
    *(v0 + 38) = 2;
    *(v0 + 17) = malloc_type_calloc(0x10uLL, 1uLL, 0x2B13B2E7uLL);
  }

  return v1;
}

CFStringRef _createDefaultLogFileName()
{
  v0 = getprogname();
  if (v0)
  {
    v1 = v0;
    v2 = strlen(v0);

    return CFStringCreateWithBytes(0, v1, v2, 0x8000100u, 0);
  }

  else
  {
    v4 = getpid();
    return CFStringCreateWithFormat(0, 0, @"pid_%d", v4);
  }
}

void _recomputeQueueRecomputeMaxAcceptedLevel()
{
  v7 = *MEMORY[0x277D85DE8];
  explicit = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
  if (explicit)
  {
    v1 = -1;
    do
    {
      v2 = _maxLogFileLevel(explicit);
      if (v2 <= v1)
      {
        v3 = v1;
      }

      else
      {
        v3 = v2;
      }

      v4 = _maxConsoleLevel(explicit);
      if (v4 <= v3)
      {
        v1 = v3;
      }

      else
      {
        v1 = v4;
      }

      explicit = atomic_load_explicit(explicit, memory_order_acquire);
    }

    while (explicit);
  }

  else
  {
    v1 = -1;
  }

  atomic_store(v1, _DACPLoggingMaxAcceptedLevel);
  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v1;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_INFO, "Recomputed max accepted logging level. New max: %d", v6, 8u);
  }
}

void _configurationQueueRereadDefaultsForSetting(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 8);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_2243BD000, v2, OS_LOG_TYPE_INFO, "Rereading configuration for %@", &v11, 0xCu);
  }

  explicit = atomic_load_explicit((a1 + 104), memory_order_acquire);
  v5 = atomic_load_explicit((a1 + 112), memory_order_acquire);
  v6 = atomic_load_explicit((a1 + 120), memory_order_acquire);
  v7 = atomic_load_explicit((a1 + 128), memory_order_acquire);
  if (!v5)
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    DefaultsValue = _configurationQueueReadDefaultsValue(v6, v7);
    goto LABEL_8;
  }

  v8 = _configurationQueueReadDefaultsValue(explicit, v5);
  v9 = v8;
  if (v7)
  {
    DefaultsValue = _configurationQueueReadDefaultsValue(v6, v7);
    atomic_store(v9, (a1 + 52));
LABEL_8:
    atomic_store(DefaultsValue, (a1 + 56));
    goto LABEL_10;
  }

  atomic_store(v8, (a1 + 52));
LABEL_10:
  if (_recomputeQueue_onceToken != -1)
  {
    DACPLoggingAddCustomLogConfiguration_cold_7();
  }

  dispatch_async(_recomputeQueue_queue, &__block_literal_global_118);
}

BOOL DACPLoggingFlush(dispatch_time_t timeout)
{
  if (_init_once != -1)
  {
    DACPLoggingAppendDataToLogFile_cold_1();
  }

  if (_workGroup_once != -1)
  {
    DACPLoggingAppendDataToLogFile_cold_2();
  }

  return dispatch_group_wait(_workGroup_group, timeout) == 0;
}

void DACPLoggingSetCustomMaxConsoleLevel(const void *a1, unsigned int a2)
{
  if (_init_once != -1)
  {
    DACPLoggingAppendDataToLogFile_cold_1();
  }

  if (atomic_exchange_explicit((_settingsForFacility(a1) + 44), a2, memory_order_release) != a2)
  {
    if (_recomputeQueue_onceToken != -1)
    {
      DACPLoggingSetCustomMaxConsoleLevel_cold_2();
    }

    v4 = _recomputeQueue_queue;

    dispatch_sync(v4, &__block_literal_global_120);
  }
}

uint64_t DACPLoggingCustomMaxConsoleLevel(const void *a1)
{
  if (_init_once != -1)
  {
    DACPLoggingAppendDataToLogFile_cold_1();
  }

  v2 = _settingsForFacility(a1);

  return _maxConsoleLevel(v2);
}

uint64_t _maxConsoleLevel(unint64_t a1)
{
  while (1)
  {
    explicit = atomic_load_explicit((a1 + 52), memory_order_acquire);
    if (atomic_load_explicit((a1 + 52), memory_order_acquire) != -3)
    {
      break;
    }

    explicit = atomic_load_explicit((a1 + 44), memory_order_acquire);
    if (explicit != -2)
    {
      break;
    }

    v2 = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
    v3 = a1 == v2;
    a1 = v2;
    if (v3)
    {
      _maxConsoleLevel_cold_1();
    }
  }

  return explicit;
}

void DACPLoggingSetCustomMaxLogFileLevel(const void *a1, unsigned int a2)
{
  if (_init_once != -1)
  {
    DACPLoggingAppendDataToLogFile_cold_1();
  }

  if (atomic_exchange_explicit((_settingsForFacility(a1) + 48), a2, memory_order_release) != a2)
  {
    if (_recomputeQueue_onceToken != -1)
    {
      DACPLoggingSetCustomMaxConsoleLevel_cold_2();
    }

    v4 = _recomputeQueue_queue;

    dispatch_sync(v4, &__block_literal_global_122);
  }
}

uint64_t DACPLoggingCustomMaxLogFileLevel(const void *a1)
{
  if (_init_once != -1)
  {
    DACPLoggingAppendDataToLogFile_cold_1();
  }

  v2 = _settingsForFacility(a1);

  return _maxLogFileLevel(v2);
}

void _setCustomCreateLogFormatBlock(const void *a1, const void *a2, int a3, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (_init_once != -1)
  {
    DACPLoggingAppendDataToLogFile_cold_1();
  }

  v8 = _settingsForFacility(a1);
  if (a3)
  {
    v9 = a2 ? _Block_copy(a2) : 0;
    v10 = atomic_exchange_explicit((v8 + 64), v9, memory_order_release);
    v11 = v8 + 157;
    LOBYTE(v11) = atomic_load_explicit((v8 + 157), memory_order_acquire);
    if (v10)
    {
      if (!v11)
      {
        CFRelease(v10);
        if (!a4)
        {
          return;
        }

        goto LABEL_12;
      }

      v12 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        explicit = atomic_load_explicit((v8 + 8), memory_order_acquire);
        v19 = 138412290;
        v20 = explicit;
        _os_log_impl(&dword_2243BD000, v12, OS_LOG_TYPE_DEFAULT, "Leaking old createFileLogFormatBlock because it was set after logging has begun for facilities %@", &v19, 0xCu);
      }
    }
  }

  if (!a4)
  {
    return;
  }

LABEL_12:
  if (a2)
  {
    v14 = _Block_copy(a2);
  }

  else
  {
    v14 = 0;
  }

  v15 = atomic_exchange_explicit((v8 + 72), v14, memory_order_release);
  v16 = v8 + 157;
  LOBYTE(v16) = atomic_load_explicit((v8 + 157), memory_order_acquire);
  if (v15)
  {
    if (v16)
    {
      v17 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = atomic_load_explicit((v8 + 8), memory_order_acquire);
        v19 = 138412290;
        v20 = v18;
        _os_log_impl(&dword_2243BD000, v17, OS_LOG_TYPE_DEFAULT, "Leaking old createConsoleLogFormatBlock because it was set after logging has begun for facilities %@", &v19, 0xCu);
      }
    }

    else
    {
      CFRelease(v15);
    }
  }
}

uint64_t ___init_block_invoke()
{
  _processName = _createDefaultLogFileName();
  getpid();
  DefaultSettings = _createDefaultSettings();
  if (DefaultSettings)
  {
    v1 = DefaultSettings;
    *(DefaultSettings + 2) = CFRetain(_processName);
    *(v1 + 24) = CFRetain(@"/var/mobile/Library/Logs/CrashReporter/DataAccess");
    atomic_store(v1, &_logFileSettings);
  }

  else
  {
    v2 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_2243BD000, v2, OS_LOG_TYPE_ERROR, "Cannot allocate global log settings.", v4, 2u);
    }
  }

  atexit(_flushAtExit);
  if (_configurationQueue_once != -1)
  {
    DACPLoggingAddCustomLogConfiguration_cold_8();
  }

  dispatch_async(_configurationQueue_queue, &__block_literal_global_71);
  return _rereadObfuscationPreferences();
}

BOOL _flushAtExit()
{
  v0 = dispatch_time(0, 5000000000);

  return DACPLoggingFlush(v0);
}

uint64_t _rereadObfuscationPreferences()
{
  CFPreferencesAppSynchronize(@".GlobalPreferences");
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppBooleanValue(@"DACPLoggingUnobfuscate", @".GlobalPreferences", &keyExistsAndHasValidFormat);
  return CPIsInternalDevice();
}

dispatch_queue_t ___callbackQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.DACPLogging.callbackQueue", 0);
  _callbackQueue_queue = result;
  return result;
}

dispatch_group_t ___workGroup_block_invoke()
{
  result = dispatch_group_create();
  _workGroup_group = result;
  return result;
}

void ___workQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.DACPLogging.workQueue", 0);
  _workQueue_queue = v0;
  global_queue = dispatch_get_global_queue(-2, 0);

  dispatch_set_target_queue(v0, global_queue);
}

void _workQueueRefreshUUIDForWorkSettings(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [+[DACPLogShared shared](DACPLogShared _getUUIDForFolder:"_getUUIDForFolder:baseName:" baseName:a1[2], a1[1]];
  v3 = DALoggingwithCategory(0);
  v4 = v3;
  if (v2)
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *v12 = 138412290;
    *&v12[4] = v2;
    v5 = "Got UUID: %@";
    v6 = v4;
    v7 = OS_LOG_TYPE_INFO;
    v8 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *v12 = 0;
    v5 = "Could not get file UUID.";
    v6 = v4;
    v7 = OS_LOG_TYPE_ERROR;
    v8 = 2;
  }

  _os_log_impl(&dword_2243BD000, v6, v7, v5, v12, v8);
LABEL_7:
  v9 = [v2 copy];
  v10 = a1[8];
  v11 = *(v10 + 8);
  if (v11)
  {
    CFRelease(v11);
    v10 = a1[8];
  }

  *(v10 + 8) = v9;
}

uint64_t ___startObservingDefaultChanges_block_invoke()
{
  if (_configurationQueue_once != -1)
  {
    ___startObservingDefaultChanges_block_invoke_cold_1();
  }

  notify_register_dispatch("com.apple.managedconfiguration.defaultsdidchange", &_startObservingDefaultChanges_token, _configurationQueue_queue, &__block_literal_global_105);
  if (_configurationQueue_once != -1)
  {
    ___startObservingDefaultChanges_block_invoke_cold_1();
  }

  v0 = _configurationQueue_queue;

  return notify_register_dispatch("com.apple.AppSupport.loggingDefaultsChanged", &_startObservingDefaultChanges_token, v0, &__block_literal_global_108);
}

uint64_t _configurationQueueRereadAllDefaults()
{
  v0 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2243BD000, v0, OS_LOG_TYPE_INFO, "Re-reading all defaults values.", v3, 2u);
  }

  for (i = atomic_load_explicit(&_logFileSettings, memory_order_acquire); i; i = atomic_load_explicit(i, memory_order_acquire))
  {
    _configurationQueueRereadDefaultsForSetting(i);
  }

  if (_recomputeQueue_onceToken != -1)
  {
    DACPLoggingAddCustomLogConfiguration_cold_7();
  }

  dispatch_async(_recomputeQueue_queue, &__block_literal_global_110);
  return _rereadObfuscationPreferences();
}

dispatch_queue_t ___recomputeQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.DACPLogging.recomputeQueue", 0);
  _recomputeQueue_queue = result;
  return result;
}

dispatch_queue_t ___configurationQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.DACPLogging.configurationQueue", 0);
  _configurationQueue_queue = result;
  return result;
}

uint64_t _configurationQueueReadDefaultsValue(const __CFString *a1, const __CFString *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = 4294967293;
  valuePtr = -3;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = @".GlobalPreferences";
  }

  CFPreferencesAppSynchronize(v5);
  v6 = CFPreferencesCopyAppValue(a2, v5);
  if (!v6)
  {
    return v4;
  }

  v7 = v6;
  v8 = CFGetTypeID(v6);
  if (v8 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr))
    {
      v9 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        *buf = 138412546;
        v17 = a1;
        v18 = 2112;
        v19 = a2;
        v10 = "Defaults domain %@ and key %@ cannot be converted into an integer.";
LABEL_15:
        _os_log_impl(&dword_2243BD000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = CFGetTypeID(v7);
    if (v11 != CFStringGetTypeID())
    {
      v9 = DALoggingwithCategory(0);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 138412546;
      v17 = a1;
      v18 = 2112;
      v19 = a2;
      v10 = "Defaults domain %@ and key %@ is not a number.";
      goto LABEL_15;
    }

    IntValue = CFStringGetIntValue(v7);
    if ((IntValue - 0x7FFFFFFF) <= 1)
    {
      v9 = DALoggingwithCategory(0);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    valuePtr = IntValue;
  }

LABEL_17:
  CFRelease(v7);
  v4 = valuePtr;
  if (valuePtr <= -4)
  {
    v13 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v17 = a1;
      v18 = 2112;
      v19 = a2;
      v20 = 1024;
      v21 = valuePtr;
      _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_ERROR, "Rejecting domain %@ key %@ value of %d.", buf, 0x1Cu);
    }

    return 4294967293;
  }

  return v4;
}

uint64_t DACustomLogDirectory(uint64_t a1, uint64_t a2)
{
  if (DACustomLogDirectory_onceToken != -1)
  {
    DACustomLogDirectory_cold_1();
  }

  return DACustomLogDirectory_retval;
}

CFTypeRef __DACustomLogDirectory_block_invoke()
{
  result = CFRetain(@"/var/mobile/Library/Logs/CrashReporter/DataAccess");
  DACustomLogDirectory_retval = result;
  return result;
}

void setDALogLevel(uint64_t a1)
{
  v1 = a1;
  v12 = *MEMORY[0x277D85DE8];
  if (_initLogging_logPred != -1)
  {
    setDALogLevel_cold_1();
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = _allDALogFacilities(a1);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        DACPLoggingSetCustomMaxLogFileLevel(*(*(&v7 + 1) + 8 * i), v1);
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

id _allDALogFacilities(uint64_t a1)
{
  if (_allDALogFacilities_pred != -1)
  {
    _allDALogFacilities_cold_1();
  }

  v2 = _allDALogFacilities__sAllDAFacilities;

  return v2;
}

void setDALogOutputLevel(uint64_t a1)
{
  v1 = a1;
  v12 = *MEMORY[0x277D85DE8];
  if (_initLogging_logPred != -1)
  {
    setDALogLevel_cold_1();
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = _allDALogFacilities(a1);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        DACPLoggingSetCustomMaxConsoleLevel(*(*(&v7 + 1) + 8 * i), v1);
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

uint64_t getDALogLevel(uint64_t a1)
{
  if (_initLogging_logPred != -1)
  {
    setDALogLevel_cold_1();
  }

  return DACPLoggingCustomMaxLogFileLevel(@"DA");
}

uint64_t getDAOutputLevel(uint64_t a1)
{
  if (_initLogging_logPred != -1)
  {
    setDALogLevel_cold_1();
  }

  return DACPLoggingCustomMaxConsoleLevel(@"DA");
}

uint64_t DAShouldLogPassword()
{
  if ((DAShouldLogPassword__haveCheckedShouldLogPassword & 1) == 0)
  {
    DAShouldLogPassword__haveCheckedShouldLogPassword = 1;
    v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    DAShouldLogPassword__shouldLogPassword = [v0 BOOLForKey:@"DAShouldLogPassword"];
  }

  return DAShouldLogPassword__shouldLogPassword;
}

uint64_t __DALoggingwithCategory_block_invoke()
{
  v0 = os_log_create("com.apple.dataaccess", "DA");
  v1 = DALoggingwithCategory_log[0];
  DALoggingwithCategory_log[0] = v0;

  v2 = os_log_create("com.apple.dataaccess", "EAS");
  v3 = qword_280B605C8;
  qword_280B605C8 = v2;

  v4 = os_log_create("com.apple.dataaccess", "CalDAV");
  v5 = qword_280B605D0;
  qword_280B605D0 = v4;

  v6 = os_log_create("com.apple.dataaccess", "LDAP");
  v7 = qword_280B605D8;
  qword_280B605D8 = v6;

  v8 = os_log_create("com.apple.dataaccess", "PubCal");
  v9 = qword_280B605E0;
  qword_280B605E0 = v8;

  v10 = os_log_create("com.apple.dataaccess", "SubCal");
  v11 = qword_280B605E8;
  qword_280B605E8 = v10;

  v12 = os_log_create("com.apple.dataaccess", "CardDAV");
  v13 = qword_280B605F0;
  qword_280B605F0 = v12;

  v14 = os_log_create("com.apple.dataaccess", "IMAPNotes");
  v15 = qword_280B605F8;
  qword_280B605F8 = v14;

  v16 = os_log_create("com.apple.dataaccess", "CoreDAV");
  v17 = qword_280B60600;
  qword_280B60600 = v16;

  v18 = os_log_create("com.apple.dataaccess", "PC");
  v19 = qword_280B60608;
  qword_280B60608 = v18;

  v20 = os_log_create("com.apple.dataaccess", "Accounts");
  v21 = qword_280B60610;
  qword_280B60610 = v20;

  qword_280B60618 = os_log_create("com.apple.dataaccess", "General");

  return MEMORY[0x2821F96F8]();
}

uint64_t DAGreenTeaLogger(uint64_t a1, uint64_t a2)
{
  if (DAGreenTeaLogger_onceToken != -1)
  {
    DAGreenTeaLogger_cold_1();
  }

  return DAGreenTeaLogger_greenTeaLogger;
}

uint64_t __DAGreenTeaLogger_block_invoke()
{
  result = ct_green_tea_logger_create();
  DAGreenTeaLogger_greenTeaLogger = result;
  return result;
}

void DAGreenTeaLog(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  if (DAGreenTeaLogger_onceToken != -1)
  {
    DAGreenTeaLogger_cold_1();
  }

  v2 = getCTGreenTeaOsLogHandle();
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v1;
    _os_log_impl(&dword_2243BD000, v3, OS_LOG_TYPE_INFO, "%{public}@", &v4, 0xCu);
  }
}

uint64_t DALogSimulateCrashReport(void *a1)
{
  v5 = a1;
  if (!DALogSimulateCrashReport___CrashReportHandle)
  {
    v1 = dlopen([@"/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport" fileSystemRepresentation], 1);
    DALogSimulateCrashReport___CrashReportHandle = v1;
    if (v1)
    {
      DALogSimulateCrashReport_DASimulateCrash = dlsym(v1, "SimulateCrash");
    }
  }

  v2 = DALogSimulateCrashReport_DASimulateCrash;
  if (DALogSimulateCrashReport_DASimulateCrash)
  {
    v3 = getpid();
    v2(v3, 464366555, v5);
  }

  return MEMORY[0x2821F96F8]();
}

void ___initLogging_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v1 = _allDALogFacilities(a1);
  v2 = [v1 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v35;
    do
    {
      v5 = 0;
      do
      {
        if (*v35 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v34 + 1) + 8 * v5);
        if (([v6 isEqualToString:@"Accounts"] & 1) == 0)
        {
          v45 = v6;
          v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
          v43[0] = @"logDirectory";
          if (DACustomLogDirectory_onceToken != -1)
          {
            ___initLogging_block_invoke_cold_1();
          }

          v44[0] = DACustomLogDirectory_retval;
          v44[1] = @"dataaccess";
          v43[1] = @"logName";
          v43[2] = @"consoleLevelDefaultsKey";
          v43[3] = @"logFileLevelDefaultsKey";
          v44[2] = @"DAOutputLevel";
          v44[3] = @"DALogLevel";
          DACPLoggingAddCustomLogConfiguration(v7, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4]);
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v3);
  }

  v42 = @"Accounts";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  v40[0] = @"logDirectory";
  if (DACustomLogDirectory_onceToken != -1)
  {
    ___initLogging_block_invoke_cold_1();
  }

  v41[0] = DACustomLogDirectory_retval;
  v41[1] = @"DAAccountMigration";
  v40[1] = @"logName";
  v40[2] = @"consoleLevelDefaultsKey";
  v40[3] = @"logFileLevelDefaultsKey";
  v41[2] = @"DAOutputLevel";
  v41[3] = @"DALogLevel";
  DACPLoggingAddCustomLogConfiguration(v8, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4]);
  v9 = [DABehaviorOptions DAManagedDefaultForKey:@"DALogLevel"];

  if (!v9)
  {
    v10 = +[DABehaviorOptions isAppleInternalInstall];
    if (v10)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = _allDALogFacilities(v10);
      v12 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(v11);
            }

            DACPLoggingSetCustomMaxLogFileLevel(*(*(&v30 + 1) + 8 * i), 7u);
          }

          v13 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v13);
      }
    }
  }

  v16 = [MEMORY[0x277CCAC38] processInfo];
  v17 = [v16 processName];
  v18 = _CPLog_to_os_log_type_block_invoke_sProcessName;
  _CPLog_to_os_log_type_block_invoke_sProcessName = v17;

  v19 = getpid();
  _CPLog_to_os_log_type_block_invoke_sPID = v19;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = _allDALogFacilities(v19);
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v26 + 1) + 8 * j);
        DACPLoggingSetCustomCreateFileLogFormatBlock(v25, &__block_literal_global_55);
        DACPLoggingSetCustomCreateConsoleLogFormatBlock(v25, &__block_literal_global_90);
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v22);
  }
}

uint64_t ___initLogging_block_invoke_2(int a1, unsigned int a2, const __CFDate *a3, int a4, uint64_t a5, char *__s, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (__s)
  {
    v16 = strrchr(__s, 47);
    if (v16)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  if (a2 > 7)
  {
    v18 = @"Unknown";
  }

  else
  {
    v18 = _CPLog_to_os_log_type_block_invoke_3_levelLabels[a2];
  }

  if (_logFormater_logPred != -1)
  {
    ___initLogging_block_invoke_2_cold_1();
  }

  if (_logFormater___logFormatter)
  {
    StringWithDate = CFDateFormatterCreateStringWithDate(*MEMORY[0x277CBECE8], _logFormater___logFormatter, a3);
  }

  else
  {
    StringWithDate = [(__CFDate *)a3 description];
  }

  v20 = StringWithDate;
  explicit = atomic_load_explicit(_DACPLoggingMaxAcceptedLevel, memory_order_acquire);
  v22 = objc_alloc(MEMORY[0x277CCACA8]);
  if (explicit < 7)
  {
    v24 = [v22 initWithFormat:@"%@|%@|%d|%p|%@|%@|%@", v20, _CPLog_to_os_log_type_block_invoke_sProcessName, _CPLog_to_os_log_type_block_invoke_sPID, a9, a5, v18, a10, v27, v28, v29];
  }

  else
  {
    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = __s;
    }

    v24 = [v22 initWithFormat:@"%@|%@|%d|%p|%@|%@|%s|%s:%lu| %@", v20, _CPLog_to_os_log_type_block_invoke_sProcessName, _CPLog_to_os_log_type_block_invoke_sPID, a9, a5, v18, a7, v23, a8, a10];
  }

  v25 = v24;
  if (v20)
  {
    CFRelease(v20);
  }

  return v25;
}

uint64_t ___initLogging_block_invoke_3(int a1, unsigned int a2, const __CFDate *a3, int a4, uint64_t a5, char *__s, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (__s)
  {
    v16 = strrchr(__s, 47);
    if (v16)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  if (a2 > 7)
  {
    v18 = @"Unknown";
  }

  else
  {
    v18 = _CPLog_to_os_log_type_block_invoke_3_levelLabels[a2];
  }

  if (_logFormater_logPred != -1)
  {
    ___initLogging_block_invoke_2_cold_1();
  }

  if (_logFormater___logFormatter)
  {
    StringWithDate = CFDateFormatterCreateStringWithDate(*MEMORY[0x277CBECE8], _logFormater___logFormatter, a3);
  }

  else
  {
    StringWithDate = [(__CFDate *)a3 description];
  }

  v20 = StringWithDate;
  explicit = atomic_load_explicit(_DACPLoggingMaxAcceptedLevel, memory_order_acquire);
  v22 = objc_alloc(MEMORY[0x277CCACA8]);
  if (explicit < 7)
  {
    v24 = [v22 initWithFormat:@"%p|%@|%@|%@", a9, a5, v18, a10, v27, v28, v29];
  }

  else
  {
    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = __s;
    }

    v24 = [v22 initWithFormat:@"%p|%@|%@|%s|%s:%lu| %@", a9, a5, v18, a7, v23, a8, a10];
  }

  v25 = v24;
  if (v20)
  {
    CFRelease(v20);
  }

  return v25;
}

void ___logFormater_block_invoke()
{
  v0 = CFDateFormatterCreate(*MEMORY[0x277CBECE8], [MEMORY[0x277CBEAF8] currentLocale], kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);
  _logFormater___logFormatter = v0;
  if (v0)
  {

    CFDateFormatterSetFormat(v0, @"yyyy-MM-dd HH:mm:ss.SSS");
  }

  else
  {
    NSLog(&cfstr_CouldNotCreate.isa);
  }
}

uint64_t ___allDALogFacilities_block_invoke()
{
  _allDALogFacilities__sAllDAFacilities = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"EAS", @"CalDAV", @"LDAP", @"SubCal", @"DA", @"CardDAV", @"IMAP", @"CoreDAV", @"PC", @"EASPARSING", @"Accounts", 0}];

  return MEMORY[0x2821F96F8]();
}

id _fileOpsQueue(uint64_t a1)
{
  if (_fileOpsQueue_onceToken != -1)
  {
    _fileOpsQueue_cold_1();
  }

  v2 = _fileOpsQueue_queue;

  return v2;
}

void sub_2243D9AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _homeDirectoryPathComponentsForUID(uid_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = getpwuid(a1);
  if (v2)
  {
    v3 = realpath_DARWIN_EXTSN(v2->pw_dir, 0);
    if (v3)
    {
      v4 = v3;
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
      v6 = [v5 pathComponents];

      free(v4);
      goto LABEL_8;
    }
  }

  else
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = a1;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_ERROR, "Could not gather information for user %d. Not granting access to write logs.", v9, 8u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_2243DA40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 176), 8);
  _Block_object_dispose((v30 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_2243DAA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 176), 8);
  _Block_object_dispose((v32 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t ___fileOpsQueue_block_invoke()
{
  _fileOpsQueue_queue = dispatch_queue_create("fileOpsQueue", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t ___fileDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _fileDateFormatter_formatter;
  _fileDateFormatter_formatter = v0;

  [_fileDateFormatter_formatter setDateStyle:1];
  v2 = _fileDateFormatter_formatter;

  return [v2 setDateFormat:@"yyyy_MM_dd_HH_mm_ssZZZ"];
}

uint64_t DAECalendarAvailabilityTypeAsString(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_278520D50 + a1);
  }
}

void __getESDConnectionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getESDConnectionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DADConnection.m" lineNumber:49 description:{@"Unable to find class %s", "ESDConnection"}];

  __break(1u);
}

void __getESDConnectionClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ExchangeSyncExpressLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DADConnection.m" lineNumber:48 description:{@"%s", *a1}];

  __break(1u);
}

void __DACPLoggingSlurpFileIntoLogFile_block_invoke_2_cold_1(const __CFString *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v2, OS_LOG_TYPE_ERROR, "Cannot encode string into UTF-8.", buf, 2u);
  }

  Length = CFStringGetLength(a1);
  if (Length)
  {
    v4 = Length;
    v5 = malloc_type_malloc(2 * Length, 0x75780B8BuLL);
    if (v5)
    {
      v6 = v5;
      v15.location = 0;
      v15.length = v4;
      CFStringGetCharacters(a1, v15, v5);
      Mutable = CFStringCreateMutable(0, 0);
      if (Mutable)
      {
        v8 = Mutable;
        CFStringAppend(Mutable, @"UTF-16 Bytes: ");
        if (v4 >= 1)
        {
          v9 = v6;
          do
          {
            v10 = *v9++;
            CFStringAppendFormat(v8, 0, @"%04x ", v10);
            --v4;
          }

          while (v4);
        }

        v11 = DALoggingwithCategory(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v13 = v8;
          _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        CFRelease(v8);
      }

      free(v6);
    }
  }
}

void __DACPLoggingSlurpFileIntoLogFile_block_invoke_2_cold_2()
{
  v0 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_2243BD000, v0, OS_LOG_TYPE_ERROR, "Could not allocate buffer for logging.", v1, 2u);
  }
}