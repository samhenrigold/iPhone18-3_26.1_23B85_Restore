void sub_2485E77B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _PASValidatedFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v18[1] = &a9;
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v18[0] = 0;
  v11 = [[v9 alloc] initWithValidatedFormat:v10 validFormatSpecifiers:@"%@%@" locale:0 arguments:&a9 error:v18];

  v12 = v18[0];
  if (!v11)
  {
    v13 = objc_alloc(MEMORY[0x277CBEAD8]);
    v14 = *MEMORY[0x277CBE660];
    v19 = *MEMORY[0x277CCA7E8];
    v20[0] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v16 = [v13 initWithName:v14 reason:@"An error occurred while formatting the string." userInfo:v15];

    [v16 raise];
  }

  return v11;
}

void sub_2485ED3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2485EE8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2485F1F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IPGregorianCalendar_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  IPGregorianCalendar_calendar = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];

  return MEMORY[0x2821F96F8]();
}

void __IPDebuggingModeEnabled_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  IPDebuggingModeEnabled_sEnabled = [v0 BOOLForKey:@"IPFeatureManagerLog"];
}

id IPSOSLogHandle(uint64_t a1, uint64_t a2)
{
  v2 = _IPLogHandle;
  if (!_IPLogHandle)
  {
    IPInitLogging(0, a2);
    v2 = _IPLogHandle;
  }

  return v2;
}

uint64_t __IPLocalizedString_block_invoke()
{
  IPLocalizedString_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *humanReadableFeatureType(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return @"Unknown Data";
  }

  else
  {
    return off_278F22F48[a1];
  }
}

void __IPDebuggingModeEnabled_block_invoke_0()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  IPDebuggingModeEnabled_sEnabled_0 = [v0 BOOLForKey:@"IPFeatureManagerLog"];
}

void sub_2485F9A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t IPDDResultRangeCompare(uint64_t a1, uint64_t a2)
{
  Range = DDResultGetRange();
  v4 = v3;
  v5 = DDResultGetRange();
  v7 = 1;
  if (v4 < v6)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  if (v4 == v6)
  {
    v8 = 0;
  }

  if (Range == v5)
  {
    v7 = v8;
  }

  if (Range >= v5)
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

uint64_t __IPGregorianCalendar_block_invoke_0()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  IPGregorianCalendar_calendar_0 = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];

  return MEMORY[0x2821F96F8]();
}

uint64_t lengthOfPatternAfterUncapturing(void *a1, _BYTE *a2, uint64_t a3)
{
  v19 = a2;
  v4 = a1;
  v5 = [v4 length];
  v20 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v5;
  while (1)
  {
    v9 = objc_msgSend(v4, "rangeOfString:options:range:", @"("), 2, v6, v8, v19;
    v10 = v9;
    v12 = v11;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v9 - v6;
    }

    if (a3)
    {
      [v4 getCharacters:a3 + 2 * v7 range:{v6, v8}];
    }

    v7 += v8;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v6 = v10 + v12;
    v8 = v5 - (v10 + v12);
    if (v10 - 1 >= 0)
    {
      v13 = 0;
      v14 = v10;
      while ([v4 characterAtIndex:--v14] == 92)
      {
        v13 ^= 1u;
        if (v14 <= 0)
        {
          v13 = v10;
          break;
        }
      }

      if (v13)
      {
        continue;
      }
    }

    if (!v8)
    {
      goto LABEL_24;
    }

    v15 = [v4 characterAtIndex:v6];
    if (v15 == 63)
    {
      if (a3)
      {
        *(a3 + 2 * v7) = 40;
      }

      ++v7;
    }

    else if (v15 == 41 && (v8 == 1 || ((v16 = [v4 characterAtIndex:v6 + 1], (v16 - 63) > 0x3D) || ((1 << (v16 - 63)) & 0x3000000000000001) == 0) && v16 != 42))
    {
      v20 = 1;
      --v8;
      ++v6;
    }

    else
    {
LABEL_24:
      if (a3)
      {
        v17 = a3 + 2 * v7;
        *v17 = 4128808;
        *(v17 + 4) = 58;
      }

      v7 += 3;
      v20 = 1;
    }
  }

  if (v19)
  {
    *v19 = v20 & 1;
  }

  return v7;
}

void sub_2485FDB30(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    NSLog(&cfstr_ErrorIpregexto.isa);

    objc_end_catch();
    JUMPOUT(0x2485FDB04);
  }

  _Unwind_Resume(exception_object);
}

void sub_2485FE5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2485FEA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void IPInitLogging(uint64_t result, uint64_t a2)
{
  if (IPInitLogging_once != -1)
  {
    IPInitLogging_cold_1();
  }
}

uint64_t __IPInitLogging_block_invoke()
{
  _IPLogHandle = os_log_create("com.apple.DataDetectorsNaturalLanguage", "default");

  return MEMORY[0x2821F96F8]();
}

void sub_248601EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2486027F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void __IPDebuggingModeEnabled_block_invoke_1()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  IPDebuggingModeEnabled_sEnabled_1 = [v0 BOOLForKey:@"IPFeatureManagerLog"];
}

uint64_t __IPLocalizedString_block_invoke_0()
{
  IPLocalizedString_bundle_0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void sub_248603208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id getCalendar(uint64_t a1)
{
  if (getCalendar__onceToken != -1)
  {
    getCalendar_cold_1();
  }

  v2 = getCalendar__ipExprOnceResult;

  return v2;
}

void sub_24860660C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24860851C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __IPDebuggingModeEnabled_block_invoke_2()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  IPDebuggingModeEnabled_sEnabled_2 = [v0 BOOLForKey:@"IPFeatureManagerLog"];
}

void __getCalendar_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CBEA80] currentCalendar];
  v2 = getCalendar__ipExprOnceResult;
  getCalendar__ipExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}