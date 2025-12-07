void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id sDefaultHandler_block_invoke(uint64_t a1, void *a2, __CFString *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = @"nil event";
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  v7 = [v4 logObject];

  if (v7)
  {
    v8 = [v4 logObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 name];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_26CEDD000, v8, OS_LOG_TYPE_DEFAULT, "State machine named [%@] processed unhandled event [%@]", &v12, 0x16u);
    }
  }

  v10 = [v4 currentState];

  return v10;
}

void TVPPerformBlockOnMainThreadIfNeeded(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v1[2](v1);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __TVPPerformBlockOnMainThreadIfNeeded_block_invoke;
      block[3] = &unk_279D7BF30;
      v3 = v1;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void sub_26CEDFDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CEE1C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CEE2C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_26CEE4C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CEE58EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CEE5BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CEE7D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CEE8AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CEEB81C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_26CEEBCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CEED0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CEEDF1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_26CEEEEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CEEF118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CEF1E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CEF2C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53)
{
  objc_destroyWeak((v54 + 40));
  objc_destroyWeak((v53 + 32));
  objc_destroyWeak(&a31);
  objc_destroyWeak(&a36);
  objc_destroyWeak(&a41);
  objc_destroyWeak(&a47);
  objc_destroyWeak(&a53);
  objc_destroyWeak((v55 - 216));
  objc_destroyWeak((v55 - 208));
  _Unwind_Resume(a1);
}

void sub_26CEF7598(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26CEFAD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_26CEFAEC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_26CEFB3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_26CEFB554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_26CEFE258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CEFE914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CF03110(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_26CF03470(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_26CF03628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_26CF03B2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_26CF0441C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CF044CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_26CF09230(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_26CF0B634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CF10278(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_26CF14934(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v5 + 64));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak(&STACK[0x248]);
  objc_destroyWeak(&STACK[0x2A0]);
  objc_destroyWeak(&STACK[0x2E8]);
  objc_destroyWeak(&STACK[0x320]);
  objc_destroyWeak(&STACK[0x360]);
  objc_destroyWeak(&STACK[0x3A8]);
  objc_destroyWeak(&STACK[0x3F0]);
  objc_destroyWeak(&STACK[0x438]);
  objc_destroyWeak(&STACK[0x468]);
  objc_destroyWeak(&STACK[0x498]);
  objc_destroyWeak(&STACK[0x4C8]);
  objc_destroyWeak(&STACK[0x548]);
  objc_destroyWeak(&STACK[0x578]);
  objc_destroyWeak(&STACK[0x5A8]);
  objc_destroyWeak(&STACK[0x5D8]);
  objc_destroyWeak(&STACK[0x610]);
  objc_destroyWeak(&STACK[0x638]);
  objc_destroyWeak(&STACK[0x668]);
  objc_destroyWeak(&STACK[0x698]);
  objc_destroyWeak(&STACK[0x6D0]);
  objc_destroyWeak(&STACK[0x6F8]);
  objc_destroyWeak(&STACK[0x720]);
  objc_destroyWeak(&STACK[0x748]);
  objc_destroyWeak(&STACK[0x790]);
  objc_destroyWeak(&STACK[0x7C0]);
  objc_destroyWeak(&STACK[0x808]);
  objc_destroyWeak(&STACK[0x830]);
  objc_destroyWeak(&STACK[0x860]);
  objc_destroyWeak(&STACK[0x890]);
  objc_destroyWeak(&STACK[0x8F8]);
  objc_destroyWeak(&STACK[0x960]);
  objc_destroyWeak(&STACK[0x9A0]);
  objc_destroyWeak(&STACK[0x9E0]);
  objc_destroyWeak(&STACK[0xA20]);
  objc_destroyWeak(&STACK[0xA80]);
  objc_destroyWeak(&STACK[0xAB0]);
  objc_destroyWeak(&STACK[0xAD8]);
  objc_destroyWeak(&STACK[0xB08]);
  objc_destroyWeak(&STACK[0xB80]);
  objc_destroyWeak(&STACK[0xBE8]);
  objc_destroyWeak(&STACK[0xC18]);
  objc_destroyWeak(&STACK[0xC48]);
  objc_destroyWeak(&STACK[0xC70]);
  objc_destroyWeak(&STACK[0xCA0]);
  objc_destroyWeak(&STACK[0xCE0]);
  objc_destroyWeak(&STACK[0xD20]);
  objc_destroyWeak(&STACK[0xD60]);
  objc_destroyWeak(&STACK[0xDC0]);
  objc_destroyWeak(&STACK[0xE00]);
  objc_destroyWeak(&STACK[0xE58]);
  objc_destroyWeak(&STACK[0xEA0]);
  objc_destroyWeak(&STACK[0xED0]);
  objc_destroyWeak(&STACK[0xF10]);
  objc_destroyWeak(&STACK[0xF50]);
  objc_destroyWeak(&STACK[0xF78]);
  objc_destroyWeak(&STACK[0xFA0]);
  objc_destroyWeak(&STACK[0xFE8]);
  objc_destroyWeak(&STACK[0x1018]);
  objc_destroyWeak(&STACK[0x1040]);
  objc_destroyWeak(&STACK[0x1068]);
  objc_destroyWeak(&STACK[0x1090]);
  objc_destroyWeak(&STACK[0x10B8]);
  objc_destroyWeak(&STACK[0x10E0]);
  objc_destroyWeak(&STACK[0x1110]);
  objc_destroyWeak(&STACK[0x1140]);
  objc_destroyWeak(&STACK[0x1168]);
  objc_destroyWeak(&STACK[0x1190]);
  objc_destroyWeak(&STACK[0x11B8]);
  objc_destroyWeak(&STACK[0x1200]);
  objc_destroyWeak(&STACK[0x1228]);
  objc_destroyWeak(&STACK[0x1250]);
  objc_destroyWeak(&STACK[0x1278]);
  objc_destroyWeak(&STACK[0x12A0]);
  objc_destroyWeak(&STACK[0x12C8]);
  objc_destroyWeak(&STACK[0x12F0]);
  objc_destroyWeak(&STACK[0x1318]);
  objc_destroyWeak(&STACK[0x1340]);
  objc_destroyWeak(&STACK[0x1348]);
  _Unwind_Resume(a1);
}

void sub_26CF18FBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_26CF19148(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_26CF197B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CF1994C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v1 + 56));
  _Unwind_Resume(a1);
}

void sub_26CF19EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CF1A044(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_26CF1A55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CF1A6D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_26CF1AD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CF1AF04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_26CF24B4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_26CF2AEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CF2B100(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_26CF2B3A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_26CF2B690(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_26CF2BAEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void TVPPerformBlockOnMainThread(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __TVPPerformBlockOnMainThread_block_invoke;
  block[3] = &unk_279D7BF30;
  v4 = v1;
  v2 = v1;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __TVPPerformBlockOnMainThread_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

double __ATVGetUpTimeMicros_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 * 0.001 / v1;
  ATVGetUpTimeMicros_sTimerToMicrosMultiplier = *&result;
  return result;
}

void sub_26CF32BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CF33198(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id TVPSKDErrorWithCode(uint64_t a1)
{
  v11[28] = *MEMORY[0x277D85DE8];
  v10[0] = &unk_287E597C8;
  v10[1] = &unk_287E597E0;
  v11[0] = @"Failed to fetch certificate";
  v11[1] = @"Internal certificate retrieval failure";
  v10[2] = &unk_287E597F8;
  v10[3] = &unk_287E59810;
  v11[2] = @"Empty or invalid certificate";
  v11[3] = @"Failed to fetch asset ID";
  v10[4] = &unk_287E59828;
  v10[5] = &unk_287E59840;
  v11[4] = @"Internal asset ID retrieval failure";
  v11[5] = @"Empty asset ID";
  v10[6] = &unk_287E59858;
  v10[7] = &unk_287E59870;
  v11[6] = @"Failed to fetch keys";
  v11[7] = @"Internal key retrieval failure";
  v10[8] = &unk_287E59888;
  v10[9] = &unk_287E598A0;
  v11[8] = @"Empty or invalid key response";
  v11[9] = @"Certificate data type error";
  v10[10] = &unk_287E598B8;
  v10[11] = &unk_287E598D0;
  v11[10] = @"Asset ID data type error";
  v11[11] = @"Key data type error";
  v10[12] = &unk_287E598E8;
  v10[13] = &unk_287E59900;
  v11[12] = @"Received non-zero status";
  v11[13] = @"Too many devices in use";
  v10[14] = &unk_287E59918;
  v10[15] = &unk_287E59930;
  v11[14] = @"Content not owned or rented";
  v11[15] = @"Too many devices playing this rental";
  v10[16] = &unk_287E59948;
  v10[17] = &unk_287E59960;
  v11[16] = @"Rental expired";
  v11[17] = @"Invalid token";
  v10[18] = &unk_287E59978;
  v10[19] = &unk_287E59990;
  v11[18] = @"Network unavailable";
  v11[19] = @"Store bag unavailable";
  v10[20] = &unk_287E599A8;
  v10[21] = &unk_287E599C0;
  v11[20] = @"Store cert URL unavailable";
  v11[21] = @"Store key server URL unavailable";
  v10[22] = &unk_287E599D8;
  v10[23] = &unk_287E599F0;
  v11[22] = @"Not available in this region";
  v11[23] = @"Content not downloadable";
  v10[24] = &unk_287E59A08;
  v10[25] = &unk_287E59A20;
  v11[24] = @"Too many devices with downloads";
  v11[25] = @"Too many downloads of this content";
  v10[26] = &unk_287E59A38;
  v10[27] = &unk_287E59A50;
  v11[26] = @"Too many titles downloaded";
  v11[27] = @"AirPlay receiver does not support content";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:28];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v8 = *MEMORY[0x277CCA450];
    v9 = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ATV.secureKeyDelivery" code:a1 userInfo:v5];

  return v6;
}

BOOL TVPErrorIsSKDError(void *a1)
{
  v1 = a1;
  v2 = [v1 code] < -345000 && objc_msgSend(v1, "code") > -346000;

  return v2;
}

uint64_t TVPErrorIsFatalSKDError(void *a1)
{
  v1 = a1;
  if (TVPErrorIsSKDError(v1))
  {
    v2 = [v1 code];
    if ((v2 + 345028) <= 0xF)
    {
      v3 = 0xFCFFu >> (v2 - 60);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_26CF37B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CF37FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
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

void sub_26CF38188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CF38320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CF39514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 + 32));
  objc_destroyWeak((v66 + 40));
  objc_destroyWeak((v67 + 32));
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a39);
  objc_destroyWeak(&a44);
  objc_destroyWeak(&a49);
  objc_destroyWeak(&a61);
  objc_destroyWeak(&a65);
  objc_destroyWeak(&STACK[0x208]);
  objc_destroyWeak(&STACK[0x240]);
  objc_destroyWeak(&STACK[0x268]);
  objc_destroyWeak((v68 - 192));
  objc_destroyWeak((v68 - 184));
  _Unwind_Resume(a1);
}

void sub_26CF3AA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CF3B214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CF3B46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CF3DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CF3EF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v37 + 40));
  objc_destroyWeak((v38 - 136));
  _Block_object_dispose((v38 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_26CF3FF9C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Unwind_Resume(a1);
}