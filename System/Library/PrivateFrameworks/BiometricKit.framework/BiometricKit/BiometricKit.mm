id setError(id result, void *a2)
{
  if (a2)
  {
    result = [BKErrorHelper errorWithCode:result];
    *a2 = result;
  }

  return result;
}

BOOL OUTLINED_FUNCTION_2@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_2_0@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_2_1@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x30u);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x30u);
}

void OUTLINED_FUNCTION_10_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x30u);
}

void sub_1C82AEF70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 184));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void _BKLogEventOrCode(uint64_t a1)
{
  if (_BKLogEventOrCode_onceToken != -1)
  {
    _BKLogEventOrCode_cold_1();
  }

  if (_BKLogEventOrCode_isDaemon == 1)
  {
    v2 = [NSClassFromString(&cfstr_Biometrickitev.isa) logger];
    [v2 logEventOrCode:a1];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___BKLogEventOrCode_block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_async(_BKLogEventOrCode_queue, block);
  }
}

void sub_1C82AF5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

unint64_t absoluteToNanoseconds(uint64_t a1)
{
  v2 = dword_1EDADB1D4;
  if (!dword_1EDADB1D4)
  {
    if (mach_timebase_info(&sTimebaseInfo))
    {
      absoluteToNanoseconds_cold_1();
      v2 = 1;
    }

    else
    {
      v2 = dword_1EDADB1D4;
    }
  }

  return sTimebaseInfo * a1 / v2;
}

uint64_t isInternalBuild(uint64_t a1, uint64_t a2)
{
  if (isInternalBuild_onceToken != -1)
  {
    isInternalBuild_cold_1();
  }

  return isInternalBuild_isInternal;
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

unint64_t nanosecondsToAbsolute(uint64_t a1)
{
  if (!dword_1EDADB1D4)
  {
    mach_timebase_info(&sTimebaseInfo);
    if (mach_timebase_info(&sTimebaseInfo))
    {
      nanosecondsToAbsolute_cold_1();
    }
  }

  return dword_1EDADB1D4 * a1 / sTimebaseInfo;
}

uint64_t dictionaryGetInteger(void *a1, void *a2, void **a3)
{
  v5 = a1;
  v6 = a2;
  if (v6 && a3)
  {
    v7 = [v5 objectForKeyedSubscript:v6];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 integerValue];

        v7 = 0;
      }

      else
      {
        dictionaryGetInteger_cold_1(v7);
        v8 = 0;
        v7 = 258;
      }
    }

    else
    {
      v8 = *a3;
    }
  }

  else
  {
    v7 = 258;
    if (dictionaryGetInteger_cold_2(a3 == 0))
    {
      goto LABEL_8;
    }

    v8 = 0;
  }

  *a3 = v8;
LABEL_8:

  return v7;
}

uint64_t dictionaryGetBool(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = a2;
  if (v6 && a3)
  {
    v7 = [v5 objectForKeyedSubscript:v6];
    if (v7)
    {
      v8 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 BOOLValue];
        v10 = 0;
      }

      else
      {
        dictionaryGetBool_cold_1(&v12, &v13);
        v10 = v12;
        v9 = v13;
      }

      goto LABEL_9;
    }

    v10 = 0;
  }

  else
  {
    v10 = 258;
    if (dictionaryGetBool_cold_2(a3 == 0))
    {
      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_9:
  *a3 = v9;
LABEL_10:

  return v10;
}

uint64_t dictionaryGetDouble(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  if (v6 && a3)
  {
    v7 = [v5 objectForKeyedSubscript:v6];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 doubleValue];
        v9 = v8;

        v7 = 0;
      }

      else
      {
        dictionaryGetDouble_cold_1(v7);
        v9 = 0;
        v7 = 258;
      }
    }

    else
    {
      v9 = *a3;
    }
  }

  else
  {
    v9 = 0;
    v7 = 258;
    if (dictionaryGetDouble_cold_2(a3 == 0))
    {
      goto LABEL_8;
    }
  }

  *a3 = v9;
LABEL_8:

  return v7;
}

__CFString *getUUIDString(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *uu = 0;
    v6 = 0;
    [v1 getUUIDBytes:uu];
    if (uuid_is_null(uu))
    {
      v3 = @"0";
    }

    else
    {
      v3 = [v2 UUIDString];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t isEphemeralMultiUser(uint64_t a1, uint64_t a2)
{
  if (isEphemeralMultiUser_onceToken != -1)
  {
    isEphemeralMultiUser_cold_1();
  }

  return isEphemeralMultiUser_ephemeralMultiUser;
}

uint64_t isTouchIDPlatformWithFailure(_BYTE *a1)
{
  *&v8[5] = *MEMORY[0x1E69E9840];
  if ((isTouchIDPlatformWithFailure_checked & 1) == 0)
  {
    v2 = MEMORY[0x1E69E9C10];
    if (__osLogTrace)
    {
      v3 = __osLogTrace;
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      *v8 = a1;
      _os_log_impl(&dword_1C82AD000, v3, OS_LOG_TYPE_DEFAULT, "isTouchIDPlatformWithFailure(%p)\n", &v7, 0xCu);
    }

    isTouchIDPlatformWithFailure_checked = 1;
    isTouchIDPlatformWithFailure_result = MGGetBoolAnswer();
    if (__osLogTrace)
    {
      v4 = __osLogTrace;
    }

    else
    {
      v4 = v2;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a1)
      {
        v5 = *a1;
      }

      else
      {
        v5 = -1;
      }

      v7 = 67109376;
      v8[0] = isTouchIDPlatformWithFailure_result;
      LOWORD(v8[1]) = 1024;
      *(&v8[1] + 2) = v5;
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_DEFAULT, "isTouchIDPlatformWithFailure -> %u, failure:%d\n", &v7, 0xEu);
    }
  }

  if (a1)
  {
    *a1 = 0;
  }

  return isTouchIDPlatformWithFailure_result;
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x30u);
}

uint64_t isFaceIDPlatform(uint64_t a1, uint64_t a2)
{
  if (isFaceIDPlatform_onceToken != -1)
  {
    isFaceIDPlatform_cold_1();
  }

  return isFaceIDPlatform_faceIDPlatform;
}

BiometricKitEnrollProgressInfo *GenerateEnrollProgressInfo(double *a1, int a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (*a1 == -1)
  {
    GenerateEnrollProgressInfo_cold_2(&v43, buf);
    v9 = v43;
    v8 = *buf;
    goto LABEL_46;
  }

  v7 = objc_alloc_init(BiometricKitEnrollProgressInfo);
  v8 = v7;
  v9 = 0;
  v10 = *a1;
  if (*a1 <= 1)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_32;
      }

      [(BiometricKitEnrollProgressInfo *)v7 setMessage:1];
      v13 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 2)];
      [v6 setObject:v13 forKey:@"BKEPDNewComponentID"];

      v14 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1)];
      [v6 setObject:v14 forKey:@"BKEPDNewNodeID"];
    }

    else
    {
      [(BiometricKitEnrollProgressInfo *)v7 setMessage:0];
    }

    v9 = 0;
  }

  else
  {
    switch(v10)
    {
      case 2:
        [(BiometricKitEnrollProgressInfo *)v7 setMessage:2];
        v15 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 2)];
        [v6 setObject:v15 forKey:@"BKEPDExtendedComponentID"];

        v16 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1)];
        [v6 setObject:v16 forKey:@"BKEPDNewNodeID"];

LABEL_11:
        v9 = __makeCoordinates(a1 + 2);
        if (v9)
        {
          [v6 setObject:v9 forKey:@"BKEPDNewNodeCoordinates"];
        }

        break;
      case 3:
        [(BiometricKitEnrollProgressInfo *)v7 setMessage:3];
        v17 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 2)];
        [v6 setObject:v17 forKey:@"BKEPDResultComponentID"];

        v18 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1)];
        [v6 setObject:v18 forKey:@"BKEPDNewNodeID"];

        v9 = __makeCoordinates(a1 + 2);
        if (v9)
        {
          [v6 setObject:v9 forKey:@"BKEPDNewNodeCoordinates"];
        }

        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (v19)
        {
          v21 = v19;
          v41 = a2;
          v42 = v5;
          if (*(a1 + 10) >= 1)
          {
            v22 = 0;
            v23 = a1 + 7;
            *&v20 = 136316162;
            v40 = v20;
            do
            {
              v24 = objc_alloc_init(BiometricKitEnrollProgressMergedComponent);
              v25 = v24;
              if (v24)
              {
                [(BiometricKitEnrollProgressMergedComponent *)v24 setComponentID:*(v23 - 2)];
                v26 = __makeCoordinates(v23);
                [(BiometricKitEnrollProgressMergedComponent *)v25 setTransformationCoordinates:v26];
              }

              else
              {
                if (__osLog)
                {
                  v27 = __osLog;
                }

                else
                {
                  v27 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = v40;
                  *&buf[4] = "result";
                  v45 = 2048;
                  v46 = 0;
                  v47 = 2080;
                  v48 = &unk_1C82F52EE;
                  v49 = 2080;
                  v50 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricKitEnrollProgressInfo.m";
                  v51 = 1024;
                  v52 = 92;
                  _os_log_impl(&dword_1C82AD000, v27, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                }
              }

              [v21 insertObject:v25 atIndex:{v22, v40}];

              ++v22;
              v23 += 4;
            }

            while (v22 < *(a1 + 10));
          }

          v28 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v21];

          if (v28)
          {
            [v6 setObject:v28 forKey:@"BKEPDMergedInComponents"];
          }

          a2 = v41;
          v5 = v42;
        }

        else
        {
          GenerateEnrollProgressInfo_cold_1();
        }

        break;
      case 4:
        [(BiometricKitEnrollProgressInfo *)v7 setMessage:4];
        v11 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 2)];
        [v6 setObject:v11 forKey:@"BKEPDExtendedComponentID"];

        v12 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1)];
        [v6 setObject:v12 forKey:@"BKEPDNewNodeID"];

        goto LABEL_11;
    }
  }

LABEL_32:
  if (*(a1 + 2413) != -1)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v6 setObject:v29 forKey:@"BKEPDRemovedNodeID"];

    if (*(a1 + 2414) != -1)
    {
      v30 = [MEMORY[0x1E696AD98] numberWithInt:?];
      [v6 setObject:v30 forKey:@"BKEPDRemovedComponentID"];
    }
  }

  if (a1[1208] != -1.0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v6 setObject:v31 forKey:@"BKTDLargestCompArea"];
  }

  v32 = *(a1 + 4830);
  if (v32 != 0xFFFF)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:v32];
    [v6 setObject:v33 forKey:@"BKTDLargestCompNodes"];
  }

  if (a1[1210] != -1.0)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v6 setObject:v34 forKey:@"BKTDTotalArea"];
  }

  v35 = *(a1 + 4836);
  if (v35 != 0xFFFF)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
    [v6 setObject:v36 forKey:@"BKTDTotalNodes"];
  }

  if (*(a1 + 2422) != -1)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v6 setObject:v37 forKey:@"BKEPDRedundantNode"];
  }

  v38 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v6];
  [(BiometricKitEnrollProgressInfo *)v8 setMessageDetails:v38];

  [(BiometricKitEnrollProgressInfo *)v8 setProgress:a2];
  [(BiometricKitEnrollProgressInfo *)v8 setCaptureImage:v5];
  [(BiometricKitEnrollProgressInfo *)v8 setRenderedImage:0];
  [(BiometricKitEnrollProgressInfo *)v8 setCurrentPrimaryComponentID:*(a1 + 2412)];
LABEL_46:

  return v8;
}

BiometricKitEnrollProgressCoordinates *__makeCoordinates(double *a1)
{
  v2 = objc_alloc_init(BiometricKitEnrollProgressCoordinates);
  v3 = v2;
  if (v2)
  {
    [(BiometricKitEnrollProgressCoordinates *)v2 setX:*a1];
    [(BiometricKitEnrollProgressCoordinates *)v3 setY:a1[1]];
    [(BiometricKitEnrollProgressCoordinates *)v3 setAngle:a1[2]];
  }

  else
  {
    __makeCoordinates_cold_1();
  }

  return v3;
}

id GenerateTemplateTopologyInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v21 = v4;
  v6 = v5;
  v7 = v3;
  v22 = [MEMORY[0x1E695DF70] array];
  if (*v7 >= 1)
  {
    v8 = 0;
    v9 = (v7 + 7);
    do
    {
      v25 = 0;
      memset(&v24[16], 0, 480);
      *v24 = 0u;
      v10 = *(v7 + 8);
      v23 = *(v9 - 2);
      v11 = *(v9 - 2);
      v26 = v10;
      *v24 = v11;
      *&v24[8] = *v9;
      *&v24[24] = *(v9 + 2);
      v27 = -1;
      v31 = 0xBFF0000000000000;
      v30 = -1;
      v29 = 0xBFF0000000000000;
      v28 = -1;
      v32 = -1;
      v12 = GenerateEnrollProgressInfo(&v23, 255, *(v6 + 8 * v8));
      if (v12)
      {
        [v22 addObject:v12];
      }

      ++v8;
      v9 += 10;
    }

    while (v8 < *v7);
  }

  if (v21)
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v7[1]];
    [v13 setObject:v14 forKey:@"BKTDLargestCompArea"];

    v15 = [MEMORY[0x1E696AD98] numberWithInt:*(v7 + 1)];
    [v13 setObject:v15 forKey:@"BKTDLargestCompNodes"];

    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v7[3]];
    [v13 setObject:v16 forKey:@"BKTDTotalArea"];

    v17 = [MEMORY[0x1E696AD98] numberWithInt:*(v7 + 4)];
    [v13 setObject:v17 forKey:@"BKTDTotalNodes"];

    if (*(v7 + 9) != -1)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithInt:?];
      [v13 setObject:v18 forKey:@"BKTemplateUpdated"];
    }

    v19 = v13;
    *v21 = v13;
  }

  return v22;
}

void sub_1C82B6884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B6A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B6B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B6CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B6E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B700C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B7190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B7330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B74C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B7648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B7E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B81E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B88F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B9068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B92D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C82B95C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B9730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B98B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B9A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B9BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B9D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B9EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BA224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void sub_1C82BA418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BA558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BA6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BA864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BA9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BAAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BAC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BAE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BB00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BB1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BB3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BB59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BB780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BBC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BBF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BC0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BC304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C82BC524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C82BC77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C82BC9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1C82BCC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1C82BCE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BD018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BKLogCode(uint64_t a1, unsigned int a2)
{
  v3 = a1;
  v6 = *MEMORY[0x1E69E9840];
  if ((a1 - 15) <= 0xFFFFFFF1)
  {
    if (__osLog)
    {
      v4 = __osLog;
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "illegal class %d\n\n", v5, 8u);
    }

    v3 = 15;
  }

  _BKLogEventOrCode(a2 | (v3 << 32));
}

void sub_1C82BDC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BE420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BF57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BFDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82C1E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_7_0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 addObserver:v5 selector:a4 name:a5 object:0];
}

double ComponentSetInit(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double ComponentSetRelease(int *a1)
{
  if (*a1 >= 1)
  {
    v2 = 0;
    do
    {
      free(*(*(a1 + 1) + 8 * v2++));
    }

    while (v2 < *a1);
  }

  free(*(a1 + 1));
  if (a1[5] >= 1)
  {
    v3 = 0;
    do
    {
      free(*(*(a1 + 5) + 8 * v3++));
    }

    while (v3 < a1[5]);
  }

  free(*(a1 + 5));
  result = 0.0;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

double ConvertVectorForGUI(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2] + 1.57079633;
  *a2 = *a1 * 6.123234e-17 + 0.0 - v2;
  result = v3 + -1.57079633;
  a2[1] = *a1 + 0.0 + v2 * 6.123234e-17;
  a2[2] = result;
  return result;
}

uint64_t ComponentSetUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v6 = v3;
  v176 = *MEMORY[0x1E69E9840];
  memset(v161, 0, 480);
  memset(v160, 0, sizeof(v160));
  if (*(v3 + 56) == 1)
  {
    ComponentSetUpdate_cold_26();
LABEL_196:
    v106 = *buf;
LABEL_139:
    *(v6 + 56) = 1;
    return v106;
  }

  v7 = v5;
  v8 = v4;
  v9 = v4[3];
  v10 = v4[4];
  ++*(v3 + 52);
  if (v5)
  {
    *(v5 + 40) = 0;
    *v5 = -1;
    *(v5 + 9656) = -1;
    *(v5 + 9648) = -1;
    *(v5 + 8) = -1;
  }

  if (!v4[23])
  {
    ComponentSetUpdate_cold_25();
    goto LABEL_196;
  }

  if (__TranslateNodePlacement(v4, v160))
  {
    ComponentSetUpdate_cold_1();
    goto LABEL_196;
  }

  *(v6 + 24) = v9;
  *(v6 + 25) = v10;
  if (v10 == -1)
  {
    goto LABEL_38;
  }

  if (v10 >= v8[2])
  {
    ComponentSetUpdate_cold_2(buf);
    return *buf;
  }

  if (v9 != v10)
  {
    ComponentSetUpdate_cold_3(buf);
    return *buf;
  }

  v11 = *v6;
  if (v11 < 1)
  {
LABEL_13:
    if (__osLog)
    {
      v16 = __osLog;
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v167 = "removedVertex";
      v168 = 2048;
      v169 = 0;
      v170 = 2080;
      v171 = &unk_1C82F52EE;
      v172 = 2080;
      v173 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
      v174 = 1024;
      v175 = 609;
      _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }
  }

  else
  {
    v12 = *(v6 + 1);
    v13 = v12;
    v14 = *v6;
    while (1)
    {
      v15 = *v13;
      if ((*v13)[13] == v9)
      {
        break;
      }

      ++v13;
      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    if (v7)
    {
      *(v7 + 2413) = v15[12];
    }

    if (v15[14] == v9)
    {
      v17 = 0;
      do
      {
        v18 = *v12;
        if (*v12 != v15 && *(v18 + 28) == v9)
        {
          v19 = *(v18 + 26);
          if (v19 != -1 && (!v17 || *(v17 + 26) > v19))
          {
            v17 = *v12;
          }
        }

        ++v12;
        --v11;
      }

      while (v11);
      if (v17)
      {
        if (__RebaseComponent(v6, v15, v17))
        {
          ComponentSetUpdate_cold_4();
          goto LABEL_196;
        }

        if (*(*(*(v6 + 5) + 8 * v15[15]) + 26) <= 1)
        {
          ComponentSetUpdate_cold_5();
        }
      }

      else
      {
        v20 = v15[15];
        if (v7)
        {
          *(v7 + 2414) = v20;
        }

        v15[14] = -1;
        if (*(*(*(v6 + 5) + 8 * v20) + 26) != 1)
        {
          ComponentSetUpdate_cold_6();
        }
      }
    }

    v21 = *(*(v6 + 5) + 8 * v15[15]);
    --*(v21 + 26);
    v15[13] = -1;
  }

LABEL_38:
  if (v9 == -1)
  {
    ++v6[4];
    if (v7)
    {
      *v7 = 0;
    }

    goto LABEL_182;
  }

  if (v9 >= v8[2])
  {
    ComponentSetUpdate_cold_7(buf);
    return *buf;
  }

  if (*v6 == v6[1])
  {
    v22 = malloc_type_realloc(*(v6 + 1), 8 * *v6 + 128, 0x2004093837F09uLL);
    if (!v22)
    {
      ComponentSetUpdate_cold_22(buf);
      goto LABEL_209;
    }

    *(v6 + 1) = v22;
    v23 = &v22[8 * v6[1]];
    *(v23 + 6) = 0u;
    *(v23 + 7) = 0u;
    *(v23 + 4) = 0u;
    *(v23 + 5) = 0u;
    *(v23 + 2) = 0u;
    *(v23 + 3) = 0u;
    *v23 = 0u;
    *(v23 + 1) = 0u;
    v6[1] += 16;
  }

  v24 = v6[5];
  if (v24 == v6[6])
  {
    v25 = malloc_type_realloc(*(v6 + 5), 8 * v24 + 128, 0x2004093837F09uLL);
    if (!v25)
    {
      ComponentSetUpdate_cold_21(buf);
      goto LABEL_209;
    }

    *(v6 + 5) = v25;
    v26 = &v25[8 * v6[6]];
    *(v26 + 6) = 0u;
    *(v26 + 7) = 0u;
    *(v26 + 4) = 0u;
    *(v26 + 5) = 0u;
    *(v26 + 2) = 0u;
    *(v26 + 3) = 0u;
    *v26 = 0u;
    *(v26 + 1) = 0u;
    v6[6] += 16;
  }

  v27 = malloc_type_calloc(0x20uLL, 1uLL, 0x1000040E0EAB150uLL);
  if (!v27)
  {
    ComponentSetUpdate_cold_20();
    goto LABEL_209;
  }

  v28 = v27;
  v29 = *v6;
  *(*(v6 + 1) + 8 * v29) = v27;
  *(v27 + 12) = v29;
  v30 = (v29 + 1);
  *v6 = v30;
  v31 = &v160[2 * v9] + 1;
  v32 = *v31;
  *v27 = *v31;
  v33 = v31[1];
  v27[1] = v33;
  v34 = v31[2];
  v27[2] = v34;
  v35 = *(v31 + 12);
  *(v27 + 14) = v35;
  *(v27 + 13) = v9;
  if (v35 != v9)
  {
    *(v27 + 15) = -1;
    if (v29 < 1)
    {
      goto LABEL_61;
    }

    v41 = *(v6 + 1);
    while (1)
    {
      v42 = *v41;
      if (*(*v41 + 26) == v35)
      {
        break;
      }

      ++v41;
      if (!--v29)
      {
        goto LABEL_61;
      }
    }

    LODWORD(v39) = *(v42 + 30);
    *(v27 + 15) = *(v42 + 30);
    if ((v39 & 0x80000000) != 0)
    {
LABEL_61:
      ComponentSetUpdate_cold_8();
      goto LABEL_69;
    }

    v40 = 0;
LABEL_64:
    v43 = *(*(v6 + 5) + 8 * v39);
    ++*(v43 + 24);
    ++*(v43 + 26);
    if (v7)
    {
      *(v7 + 1) = *(v28 + 24);
      *(v7 + 2) = v39;
      v44 = *(v43 + 16);
      v45 = __sincos_stret(v44);
      v7[4] = v44 + *(v28 + 16);
      v46 = *(v28 + 8);
      v7[2] = *v43 + v45.__cosval * *v28 - v45.__sinval * v46;
      v7[3] = *(v43 + 8) + v45.__sinval * *v28 + v45.__cosval * v46;
      if (v40)
      {
        v47 = 1;
      }

      else
      {
        v47 = 2;
      }

      *v7 = v47;
    }

    goto LABEL_69;
  }

  if (SLOWORD(v160[0]) < 1)
  {
LABEL_53:
    *(v27 + 15) = v6[5];
    v38 = malloc_type_calloc(0x20uLL, 1uLL, 0x1000040F6D918ACuLL);
    v39 = *(v28 + 30);
    *(*(v6 + 5) + 8 * v39) = v38;
    if (*(*(v6 + 5) + 8 * v39))
    {
      ++v6[5];
      v40 = 1;
      goto LABEL_64;
    }

    ComponentSetUpdate_cold_19();
    goto LABEL_209;
  }

  v36 = 0;
  v37 = v161;
  while (v9 == v36 || *v37 != v9)
  {
    ++v36;
    v37 += 16;
    if (SLOWORD(v160[0]) == v36)
    {
      goto LABEL_53;
    }
  }

  if ((v29 & 0x80000000) != 0)
  {
LABEL_159:
    if (__osLog)
    {
      v130 = __osLog;
    }

    else
    {
      v130 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v167 = "v";
      v168 = 2048;
      v169 = 0;
      v170 = 2080;
      v171 = &unk_1C82F52EE;
      v172 = 2080;
      v173 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
      v174 = 1024;
      v175 = 512;
      goto LABEL_164;
    }

    goto LABEL_69;
  }

  v126 = v36;
  v127 = *(v6 + 1);
  v128 = v127;
  v129 = v30;
  while (*(*v128 + 26) != v126)
  {
    ++v128;
    if (!--v129)
    {
      goto LABEL_159;
    }
  }

  v131 = *(*v128 + 28);
  do
  {
    v132 = *v127;
    if (*(*v127 + 26) == v131)
    {
      if (v131 == -1)
      {
        ComponentSetUpdate_cold_11();
        goto LABEL_69;
      }

      *(v27 + 15) = *(v132 + 30);
      if (fabs(v32) >= 0.1 || fabs(v33) >= 0.1 || vabdd_f64(v34 / 6.28318531, floor(v34 / 6.28318531)) >= 0.01)
      {
        ComponentSetUpdate_cold_9();
        goto LABEL_69;
      }

      v133 = &v160[2 * v131] + 1;
      v134 = *v133;
      v135 = v133[1];
      v136 = v133[2];
      v137 = __sincos_stret(v136);
      *v28 = -(v135 * v137.__sinval + v137.__cosval * v134);
      *(v28 + 8) = -(v135 * v137.__cosval + -v137.__sinval * v134);
      *(v28 + 16) = -v136;
      if (!__RebaseComponent(v6, v132, v28))
      {
        v40 = 0;
        LOWORD(v39) = *(v28 + 30);
        goto LABEL_64;
      }

      ComponentSetUpdate_cold_10();
LABEL_209:
      v106 = *buf;
      if (__osLog)
      {
        v147 = __osLog;
      }

      else
      {
        v147 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v167 = "!result";
        v168 = 2048;
        v169 = 0;
        v170 = 2080;
        v171 = &unk_1C82F52EE;
        v172 = 2080;
        v173 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
        v174 = 1024;
        v175 = 921;
        _os_log_impl(&dword_1C82AD000, v147, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      goto LABEL_139;
    }

    ++v127;
    --v30;
  }

  while (v30);
  if (__osLog)
  {
    v130 = __osLog;
  }

  else
  {
    v130 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v167 = "oldBaseVertex";
    v168 = 2048;
    v169 = 0;
    v170 = 2080;
    v171 = &unk_1C82F52EE;
    v172 = 2080;
    v173 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
    v174 = 1024;
    v175 = 514;
LABEL_164:
    _os_log_impl(&dword_1C82AD000, v130, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

LABEL_69:
  v48 = *v6;
  if (*v6 < 1)
  {
    goto LABEL_182;
  }

  v152 = v8;
  v49 = 0;
  v50 = 0;
  v155 = v7 + 6;
  v51 = 0.1;
  v52 = 6.28318531;
  v154 = vdupq_n_s64(0x3FB999999999999AuLL);
  while (2)
  {
    v53 = *(v6 + 1);
    v54 = v53[v49];
    v55 = *(v54 + 28);
    if (v55 != -1)
    {
      v157 = v53[v49];
      if (*(v54 + 26) == v55)
      {
        v56 = &v160[2 * v55] + 1;
        v57 = *(v56 + 12);
        if (v57 != v55)
        {
          v156 = v50;
          v58 = v48;
          v59 = *(v6 + 1);
          v60 = v48;
          while (1)
          {
            v61 = *v59;
            if (*(*v59 + 26) == v57)
            {
              break;
            }

            ++v59;
            if (!--v60)
            {
              v103 = MEMORY[0x1E69E9C10];
              if (__osLog)
              {
                v104 = __osLog;
              }

              else
              {
                v104 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                v167 = "baseVertex";
                v168 = 2048;
                v169 = 0;
                v170 = 2080;
                v171 = &unk_1C82F52EE;
                v172 = 2080;
                v173 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
                v174 = 1024;
                v175 = 741;
LABEL_132:
                _os_log_impl(&dword_1C82AD000, v104, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                goto LABEL_133;
              }

              goto LABEL_133;
            }
          }

          v62 = *(v157 + 30);
          v159 = *(v61 + 30);
          if (v62 == *(v61 + 30))
          {
            ComponentSetUpdate_cold_17();
          }

          else
          {
            v63 = v7;
            v64 = v62;
            v65 = v62;
            v153 = v63;
            if (!v63)
            {
              goto LABEL_83;
            }

            v66 = *(v63 + 10);
            if (v66 >= 300)
            {
              ComponentSetUpdate_cold_13();
            }

            else
            {
              *(v63 + 10) = v66 + 1;
              if ((*v63 - 4) <= 0xFFFFFFFD)
              {
                ComponentSetUpdate_cold_12();
              }

              else
              {
                v67 = v52;
                v68 = v51;
                v69 = &v155[8 * v66];
                v158 = v69;
                *v63 = 3;
                *v69 = v65;
                *(v69 + 1) = v159;
                logb = *(v6 + 5);
                isa = logb[v159].isa;
                v71 = isa[2];
                v72 = __sincos_stret(v71);
                v73 = v56[1];
                v74 = v71 + v56[2];
                v75 = *isa + v72.__cosval * *v56 - v72.__sinval * v73;
                v148 = isa[1] + v72.__sinval * *v56 + v72.__cosval * v73;
                v76 = logb[v64].isa;
                v77 = *v76;
                v78 = v76[1];
                v79 = v76[2];
                v80 = __sincos_stret(v74);
                v158[1] = v75 + v80.__cosval * v77 - v80.__sinval * v78;
                v158[2] = v148 + v80.__sinval * v77 + v80.__cosval * v78;
                v158[3] = v74 + v79;
                v51 = v68;
                v52 = v67;
LABEL_83:
                if (fabs(*v157) >= v51 || fabs(*(v157 + 8)) >= v51 || vabdd_f64(*(v157 + 16) / v52, floor(*(v157 + 16) / v52)) >= 0.01)
                {
                  ComponentSetUpdate_cold_14();
                }

                else
                {
                  do
                  {
                    v81 = *v53;
                    if (*(*v53 + 30) == v64)
                    {
                      v82 = v56[2];
                      v83 = __sincos_stret(v82);
                      v84 = *(v81 + 8);
                      v85 = v82 + *(v81 + 16);
                      v86 = v56[1] + v83.__sinval * *v81 + v83.__cosval * v84;
                      *v81 = *v56 + v83.__cosval * *v81 - v83.__sinval * v84;
                      *(v81 + 8) = v86;
                      *(v81 + 16) = v85;
                      *(v81 + 28) = *(v61 + 28);
                    }

                    ++v53;
                    --v58;
                  }

                  while (v58);
                  v87 = vmovn_s64(vcgtq_f64(v154, vabdq_f64(*v157, *v56)));
                  if ((v87.i32[0] & v87.i32[1] & 1) != 0 && (v88 = vabdd_f64(*(v157 + 16), v56[2]) / v52, vabdd_f64(v88, floor(v88)) < 0.01))
                  {
                    v89 = 0;
                    do
                    {
                      v90 = *(*(v6 + 1) + 8 * v89);
                      if (*(v90 + 30) == v65)
                      {
                        v91 = *(v6 + 5);
                        v92 = *(v91 + 8 * v64);
                        v93 = *(v92 + 24);
                        if (v93 <= 0)
                        {
                          v96 = (__osLog ? __osLog : MEMORY[0x1E69E9C10]);
                          log = v96;
                          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136316162;
                            v167 = "set->components[replaceComponentIndex]->nodeCount > 0";
                            v168 = 2048;
                            v169 = 0;
                            v170 = 2080;
                            v171 = &unk_1C82F52EE;
                            v172 = 2080;
                            v173 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
                            v174 = 1024;
                            v175 = 701;
                            _os_log_impl(&dword_1C82AD000, log, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                            v91 = *(v6 + 5);
                            v92 = *(v91 + 8 * v64);
                            LOWORD(v93) = *(v92 + 24);
                          }
                        }

                        *(v92 + 24) = v93 - 1;
                        v94 = *(v91 + 8 * v159);
                        ++*(v94 + 24);
                        if (*(v90 + 26) != -1)
                        {
                          v95 = *(v92 + 26);
                          if (v95 <= 0)
                          {
                            v97 = (__osLog ? __osLog : MEMORY[0x1E69E9C10]);
                            loga = v97;
                            if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136316162;
                              v167 = "set->components[replaceComponentIndex]->mapiNodeCount > 0";
                              v168 = 2048;
                              v169 = 0;
                              v170 = 2080;
                              v171 = &unk_1C82F52EE;
                              v172 = 2080;
                              v173 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
                              v174 = 1024;
                              v175 = 706;
                              _os_log_impl(&dword_1C82AD000, loga, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                              v98 = *(v6 + 5);
                              v92 = *(v98 + 8 * v64);
                              LOWORD(v95) = *(v92 + 26);
                              v94 = *(v98 + 8 * v159);
                            }
                          }

                          *(v92 + 26) = v95 - 1;
                          ++*(v94 + 26);
                        }

                        *(v90 + 30) = v159;
                        v48 = *v6;
                      }

                      ++v89;
                    }

                    while (v89 < v48);
                    v99 = *(*(v6 + 5) + 8 * v64);
                    if (*(v99 + 24))
                    {
                      if (__osLog)
                      {
                        v101 = __osLog;
                      }

                      else
                      {
                        v101 = MEMORY[0x1E69E9C10];
                      }

                      v100 = v156;
                      if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136316162;
                        v167 = "set->components[replaceComponentIndex]->nodeCount == 0";
                        v168 = 2048;
                        v169 = 0;
                        v170 = 2080;
                        v171 = &unk_1C82F52EE;
                        v172 = 2080;
                        v173 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
                        v174 = 1024;
                        v175 = 713;
                        _os_log_impl(&dword_1C82AD000, v101, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                        v99 = *(*(v6 + 5) + 8 * v64);
                      }
                    }

                    else
                    {
                      v100 = v156;
                    }

                    if (*(v99 + 26))
                    {
                      v102 = (__osLog ? __osLog : MEMORY[0x1E69E9C10]);
                      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136316162;
                        v167 = "set->components[replaceComponentIndex]->mapiNodeCount == 0";
                        v168 = 2048;
                        v169 = 0;
                        v170 = 2080;
                        v171 = &unk_1C82F52EE;
                        v172 = 2080;
                        v173 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
                        v174 = 1024;
                        v175 = 714;
                        _os_log_impl(&dword_1C82AD000, v102, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                      }
                    }

                    v7 = v153;
                    if (*(v61 + 30) == *(v157 + 30))
                    {
                      v50 = v100 + 1;
                      v48 = *v6;
                      goto LABEL_115;
                    }

                    ComponentSetUpdate_cold_16();
                  }

                  else
                  {
                    ComponentSetUpdate_cold_15();
                  }
                }
              }
            }
          }

          v103 = MEMORY[0x1E69E9C10];
          if (__osLog)
          {
            v104 = __osLog;
          }

          else
          {
            v104 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v167 = "!result";
            v168 = 2048;
            v169 = 0;
            v170 = 2080;
            v171 = &unk_1C82F52EE;
            v172 = 2080;
            v173 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
            v174 = 1024;
            v175 = 743;
            goto LABEL_132;
          }

LABEL_133:
          if (__osLog)
          {
            v105 = __osLog;
          }

          else
          {
            v105 = v103;
          }

          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v167 = "!result";
            v168 = 2048;
            v169 = 0;
            v170 = 2080;
            v171 = &unk_1C82F52EE;
            v172 = 2080;
            v173 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
            v174 = 1024;
            v175 = 926;
            _os_log_impl(&dword_1C82AD000, v105, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }

          v106 = 22;
          goto LABEL_139;
        }
      }
    }

LABEL_115:
    if (++v49 < v48)
    {
      continue;
    }

    break;
  }

  v8 = v152;
  if (v7)
  {
    if (v50)
    {
      v107 = *(v7 + 10);
      if (v107 >= 1)
      {
        v108 = 0;
        v109 = 0;
        v110 = 0;
        v111 = *(v7 + 2);
        v112 = v7 + 9;
        while (1)
        {
          v113 = v7;
          v114 = &v155[8 * v108];
          v115 = *(v114 + 1);
          v116 = v107;
          v117 = v112;
          if (v115 == v111)
          {
LABEL_150:
            v124 = v109;
          }

          else
          {
            while (v115 != *(v117 - 6))
            {
              v117 += 4;
              if (!--v116)
              {
                v103 = MEMORY[0x1E69E9C10];
                if ((v110 & 1) == 0)
                {
                  ComponentSetUpdate_cold_18();
                }

                goto LABEL_133;
              }
            }

            if (*(v117 - 5) == v111)
            {
              v118 = *v117;
              v119 = __sincos_stret(*v117);
              v120 = v114[2];
              v121 = v118 + v114[3];
              v122 = v114[1];
              v123 = *(v117 - 1) + v119.__sinval * v122 + v119.__cosval * v120;
              v114[1] = *(v117 - 2) + v119.__cosval * v122 - v119.__sinval * v120;
              v114[2] = v123;
              v114[3] = v121;
              *(v114 + 1) = v111;
              v110 = 1;
              goto LABEL_150;
            }

            v124 = 1;
          }

          v7 = v113;
          ++v108;
          v109 = v124;
          if (v108 == v107)
          {
            v108 = 0;
            v109 = 0;
            v125 = v110 & v124;
            v110 = 0;
            if ((v125 & 1) == 0)
            {
              break;
            }
          }
        }

        v103 = MEMORY[0x1E69E9C10];
        if (v124)
        {
          goto LABEL_133;
        }
      }
    }
  }

LABEL_182:
  if (__FindLargestComponent(v6, 1, v6 + 8))
  {
    ComponentSetUpdate_cold_23();
    goto LABEL_196;
  }

  if (__FindLargestComponent(v6, 0, v6 + 7))
  {
    ComponentSetUpdate_cold_24();
    goto LABEL_196;
  }

  if (!v7)
  {
    return 0;
  }

  *(v7 + 2412) = v6[8];
  v138 = v7[3];
  v139 = v7[4] + 1.57079633;
  v140 = v7[2];
  v7[2] = v140 * 6.123234e-17 + 0.0 - v138;
  v7[3] = v140 + 0.0 + v138 * 6.123234e-17;
  v7[4] = v139 + -1.57079633;
  v141 = *(v7 + 10);
  if (v141 >= 1)
  {
    v142 = v7 + 9;
    do
    {
      v143 = *(v142 - 1);
      v144 = *v142 + 1.57079633;
      v145 = *(v142 - 2);
      *(v142 - 2) = v145 * 6.123234e-17 + 0.0 - v143;
      *(v142 - 1) = v145 + 0.0 + v143 * 6.123234e-17;
      *v142 = v144 + -1.57079633;
      v142 += 4;
      --v141;
    }

    while (v141);
  }

  v106 = 0;
  *(v7 + 4830) = v162;
  *(v7 + 1208) = v163;
  *(v7 + 4836) = v164;
  *(v7 + 1210) = v165;
  *(v7 + 2422) = v8[1529] & 1;
  return v106;
}

uint64_t __TranslateNodePlacement(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __TranslateNodePlacement_cold_4();
    return v30;
  }

  if (*a1 != 3060)
  {
    __TranslateNodePlacement_cold_1();
    return v30;
  }

  if (*(a1 + 2) != 3)
  {
    __TranslateNodePlacement_cold_2();
    return v30;
  }

  if (!a2)
  {
    __TranslateNodePlacement_cold_3();
    return v30;
  }

  v4 = *(a1 + 4);
  *a2 = v4;
  *(a2 + 2) = *(a1 + 6);
  v5 = *(a1 + 46);
  if (v4 >= 1)
  {
    v6 = a2 + 8;
    v7 = v5;
    v8 = (a1 + 56);
    v9 = a2 + 16;
    v10 = v4;
    do
    {
      v11 = *(v8 - 3) * 100.0 / v7;
      *(v9 - 8) = v11;
      v12 = *(v8 - 2) * 100.0 / v7;
      *v9 = v12;
      v13 = *(v8 - 4) * 3.14159265;
      v14 = v13 * 0.00390625;
      *(v9 + 8) = v13 * 0.00390625;
      if (*v8)
      {
        v15 = __sincos_stret(v13 * 0.00390625);
        *(v9 - 8) = -(v12 * v15.__sinval + v15.__cosval * v11);
        *v9 = -(v12 * v15.__cosval + -v15.__sinval * v11);
        *(v9 + 8) = -v14;
      }

      *(v9 + 16) = *(v8 - 1);
      v8 += 10;
      v9 += 32;
      --v10;
    }

    while (v10);
    for (i = 0; i != v4; ++i)
    {
      v17 = v6 + 32 * i;
      v18 = *(v17 + 24);
      if ((v18 & 0x80000000) == 0)
      {
        v19 = 300;
        while (1)
        {
          v20 = v6 + 32 * v18;
          v21 = *(v20 + 24);
          if (v21 == v18)
          {
            break;
          }

          v22 = *(v20 + 16);
          v23 = __sincos_stret(v22);
          v24 = *(v17 + 8);
          v25 = v22 + *(v17 + 16);
          v26 = *(v20 + 8) + v23.__sinval * *v17 + v23.__cosval * v24;
          *v17 = *v20 + v23.__cosval * *v17 - v23.__sinval * v24;
          *(v17 + 8) = v26;
          *(v17 + 16) = v25;
          *(v17 + 24) = v21;
          LOWORD(v18) = v21;
          if (!--v19)
          {
            if (__osLog)
            {
              v29 = __osLog;
            }

            else
            {
              v29 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = 136316162;
              v31 = "found";
              v32 = 2048;
              v33 = 0;
              v34 = 2080;
              v35 = &unk_1C82F52EE;
              v36 = 2080;
              v37 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
              v38 = 1024;
              v39 = 181;
              _os_log_impl(&dword_1C82AD000, v29, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v30, 0x30u);
            }

            return 22;
          }
        }
      }
    }
  }

  result = 0;
  *(a2 + 9608) = *(a1 + 3048);
  v28 = 100.0 / v5 * (100.0 / v5);
  *(a2 + 9616) = v28 * (16 * *(a1 + 3050));
  *(a2 + 9624) = *(a1 + 3052);
  *(a2 + 9632) = v28 * (16 * *(a1 + 3054));
  return result;
}

uint64_t __FindLargestComponent(unsigned int *a1, int a2, _DWORD *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(a1[5], 2uLL, 0x1000040BDFB0063uLL);
  if (v6)
  {
    v8 = v6;
    v9 = *a1;
    v10 = a1[5];
    if (v9 < 1)
    {
LABEL_9:
      if (v10 < 1)
      {
        v21 = 0;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        if (a2)
        {
          v15 = 26;
        }

        else
        {
          v15 = 24;
        }

        v16 = MEMORY[0x1E69E9C10];
        *&v7 = 136316162;
        do
        {
          v17 = v12;
          v18 = v8[v12];
          if (v18 != *(*(*(a1 + 5) + 8 * v12) + v15))
          {
            v19 = (__osLog ? __osLog : v16);
            log = v19;
            v24 = v7;
            v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
            v7 = v24;
            v16 = MEMORY[0x1E69E9C10];
            if (v20)
            {
              *buf = v24;
              v26 = "histogram[i] == (mapiNodesOnly?set->components[i]->mapiNodeCount:set->components[i]->nodeCount)";
              v27 = 2048;
              v28 = 0;
              v29 = 2080;
              v30 = &unk_1C82F52EE;
              v31 = 2080;
              v32 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
              v33 = 1024;
              v34 = 832;
              _os_log_impl(&dword_1C82AD000, log, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
              v7 = v24;
              v16 = MEMORY[0x1E69E9C10];
              v18 = v8[v17];
              v10 = a1[5];
            }
          }

          if (v18 > v13)
          {
            v14 = v17;
            v13 = v18;
          }

          v12 = v17 + 1;
        }

        while (v10 > (v17 + 1));
        v21 = v14;
      }

      *a3 = v21;
    }

    else
    {
      v11 = *(a1 + 1);
      while (v10 > *(*v11 + 30))
      {
        if (!a2 || *(*v11 + 26) != -1)
        {
          ++v6[*(*v11 + 30)];
        }

        v11 += 8;
        if (!--v9)
        {
          goto LABEL_9;
        }
      }

      __FindLargestComponent_cold_1();
    }

    free(v8);
    return 0;
  }

  else
  {
    __FindLargestComponent_cold_2();
    return *buf;
  }
}

uint64_t FindRectangleForComponent(unsigned int *a1, unsigned __int16 a2, _WORD *a3, _WORD *a4, _WORD *a5, _WORD *a6)
{
  v6 = *a1;
  if (v6 < 1)
  {
    LOWORD(v17) = 1;
    LOWORD(v15) = -1;
    LOWORD(v16) = 1;
    LOWORD(v14) = -1;
  }

  else
  {
    v7 = *(a1 + 1);
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v12 = *v7;
      if (*(*v7 + 15) == a2)
      {
        v13 = v12[1];
        if (v8 > *v12)
        {
          v8 = *v12;
        }

        if (v9 < *v12)
        {
          v9 = *v12;
        }

        if (v11 > v13)
        {
          v11 = v12[1];
        }

        if (v10 < v13)
        {
          v10 = v12[1];
        }
      }

      ++v7;
      --v6;
    }

    while (v6);
    v14 = (v8 + -1.0);
    v15 = (v11 + -1.0);
    v16 = (v9 + 1.0);
    v17 = (v10 + 1.0);
  }

  *a3 = v14;
  *a4 = v15;
  *a5 = v16;
  *a6 = v17;
  return 0;
}

uint64_t GenerateTemplateTopology(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v18 = *MEMORY[0x1E69E9840];
  memset(v11, 0, 512);
  bzero(v17, 0x4B0uLL);
  v10 = 0;
  if (!v6)
  {
    GenerateTemplateTopology_cold_4();
    return v16;
  }

  if (!v5)
  {
    GenerateTemplateTopology_cold_3();
    return v16;
  }

  if (__TranslateNodePlacement(v6, v11))
  {
    GenerateTemplateTopology_cold_1();
    return v16;
  }

  if (__GenerateTemplateTopology(v11, v5, v17, &v10))
  {
    GenerateTemplateTopology_cold_2();
    return v16;
  }

  if (v10 < 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    for (i = 1; i != v10; ++i)
    {
      if (v17[v7] < v17[i])
      {
        v7 = i;
      }
    }
  }

  result = 0;
  *(v5 + 4) = v12;
  *(v5 + 8) = v13;
  *(v5 + 16) = v14;
  *(v5 + 24) = v15;
  *(v5 + 32) = v7;
  *(v5 + 36) = -1;
  return result;
}

uint64_t __GenerateTemplateTopology(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  bzero(v19, 0x4B0uLL);
  if (!a1)
  {
    __GenerateTemplateTopology_cold_2();
    return v18;
  }

  if (!a2)
  {
    __GenerateTemplateTopology_cold_1();
    return v18;
  }

  v8 = 0;
  v9 = 0;
  v10 = (a2 + 18);
  v11 = a1 + 16;
  do
  {
    v12 = *(v11 + 16);
    if (v12 == -1)
    {
      break;
    }

    *(v10 - 7) = v8;
    if (v8 == v12)
    {
      v13 = v9++;
      v14 = 1;
    }

    else
    {
      v13 = v19[v12];
      v14 = 2;
    }

    *(v10 - 8) = v14;
    v19[v8] = v13;
    *(v10 - 6) = v13;
    v15 = *v11;
    v16 = *(v11 + 8) + 1.57079633;
    *(v10 - 2) = *(v11 - 8) * 6.123234e-17 + 0.0 - *v11;
    *(v10 - 1) = *(v11 - 8) + 0.0 + v15 * 6.123234e-17;
    *v10 = v16 + -1.57079633;
    if (a3)
    {
      ++*(a3 + 4 * v13);
    }

    v11 += 32;
    ++v8;
    v10 += 5;
  }

  while (v8 != 300);
  *a2 = v8;
  result = 0;
  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t GenerateMatchTemplateTopology(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  bzero(v25, 0x25A8uLL);
  if (v6)
  {
    if (v5)
    {
      if (__TranslateNodePlacement((v6 + 6), v25))
      {
        GenerateMatchTemplateTopology_cold_1();
      }

      else
      {
        v7 = v6[29];
        v8 = v6[4];
        v9 = v6[5];
        v10 = v6[3];
        if (__GenerateTemplateTopology(v25, v5, 0, 0))
        {
          GenerateMatchTemplateTopology_cold_2();
        }

        else
        {
          v11 = (*v5)++;
          v12 = v5 + 40 + 40 * v11;
          *v12 = 4;
          *(v12 + 4) = v11;
          if (v6[2] < 300)
          {
            v13 = v8 * 100.0 / v7;
            v14 = v9 * 100.0 / v7;
            v15 = v10 * 3.14159265 * 0.00390625;
            v16 = v5 + 40 + 40 * v6[2];
            v17 = *(v16 + 8);
            *(v12 + 8) = v17;
            v18 = v13 * 6.123234e-17 + 0.0 - v14;
            v19 = v13 + 0.0 + v14 * 6.123234e-17;
            v20 = v15 + 1.57079633 + -1.57079633;
            v21 = *(v16 + 32);
            v22 = __sincos_stret(v21);
            result = 0;
            v24 = *(v16 + 24);
            *(v12 + 16) = *(v16 + 16) + v22.__cosval * v18 - v22.__sinval * v19;
            *(v12 + 24) = v24 + v22.__sinval * v18 + v22.__cosval * v19;
            *(v12 + 32) = v20 + v21;
            *(v5 + 32) = v17;
            *(v5 + 4) = v25[4804];
            *(v5 + 8) = v26;
            *(v5 + 16) = v27;
            *(v5 + 24) = v28;
            *(v5 + 36) = v6[9] != -1;
            return result;
          }

          GenerateMatchTemplateTopology_cold_3();
        }
      }
    }

    else
    {
      GenerateMatchTemplateTopology_cold_4();
    }
  }

  else
  {
    GenerateMatchTemplateTopology_cold_5();
  }

  return v29;
}

uint64_t __RebaseComponent(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 30);
  if (v3 == *(a3 + 30))
  {
    v4 = *(a2 + 26);
    if (v4 == 0xFFFF)
    {
      __RebaseComponent_cold_7();
    }

    else
    {
      v6 = *(a3 + 26);
      if (v6 == 0xFFFF)
      {
        __RebaseComponent_cold_6();
      }

      else if (v4 == *(a2 + 28))
      {
        if (fabs(*a2) >= 0.1 || fabs(*(a2 + 8)) >= 0.1 || vabdd_f64(*(a2 + 16) / 6.28318531, floor(*(a2 + 16) / 6.28318531)) >= 0.01)
        {
          __RebaseComponent_cold_3();
        }

        else
        {
          v8 = *(a2 + 30);
          v9 = *(*(a1 + 5) + 8 * v3);
          v10 = v9[2];
          v11 = __sincos_stret(v10);
          v12 = *(a3 + 8);
          v13 = v10 + *(a3 + 16);
          v14 = v9[1] + v11.__sinval * *a3 + v11.__cosval * v12;
          *v9 = *v9 + v11.__cosval * *a3 - v11.__sinval * v12;
          v9[1] = v14;
          v9[2] = v13;
          v15 = *a3;
          v16 = *(a3 + 8);
          v17 = *(a3 + 16);
          v18 = __sincos_stret(v17);
          v19 = *a1;
          if (v19 >= 1)
          {
            v20 = *(a1 + 1);
            do
            {
              v21 = *v20;
              if (*(*v20 + 30) == v8)
              {
                *(v21 + 28) = v6;
                v22 = *(v21 + 8);
                v23 = *(v21 + 16) - v17;
                v24 = -v18.__sinval * *v21 - (v16 * v18.__cosval + -v18.__sinval * v15) + v18.__cosval * v22;
                *v21 = v18.__cosval * *v21 - (v16 * v18.__sinval + v18.__cosval * v15) + v18.__sinval * v22;
                *(v21 + 8) = v24;
                *(v21 + 16) = v23;
              }

              ++v20;
              --v19;
            }

            while (v19);
            v15 = *a3;
          }

          if (fabs(v15) >= 0.1 || fabs(*(a3 + 8)) >= 0.1 || vabdd_f64(*(a3 + 16) / 6.28318531, floor(*(a3 + 16) / 6.28318531)) >= 0.01)
          {
            __RebaseComponent_cold_4();
          }

          else
          {
            if (v6 == *(a3 + 28))
            {
              return 0;
            }

            __RebaseComponent_cold_5();
          }
        }
      }

      else
      {
        __RebaseComponent_cold_2();
      }
    }
  }

  else
  {
    __RebaseComponent_cold_1();
  }

  return v26;
}

BOOL OUTLINED_FUNCTION_12()
{
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v0;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_17()
{
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v0;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void __initializeOSLog_block_invoke()
{
  v0 = os_log_create("com.apple.BiometricKit", "Framework-Internal");
  v1 = __osLog;
  __osLog = v0;

  if (!__osLog && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __initializeOSLog_block_invoke_cold_1();
  }

  v2 = os_log_create("com.apple.BiometricKit", "Framework-API");
  v3 = __osLogTrace;
  __osLogTrace = v2;

  if (!__osLogTrace && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __initializeOSLog_block_invoke_cold_2();
  }
}

void updateCallback(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1C82AD000, v3, OS_LOG_TYPE_DEBUG, "updateCallback(observer:%p)\n", &v5, 0xCu);
  }

  v4 = a2;
  [v4 synchronize];
  [v4 updateNotification];
}

void sub_1C82CC64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C82CCE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C82CEB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C82CF1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C82CF7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_11@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

id OUTLINED_FUNCTION_13_0()
{

  return setError(1, v0);
}

id OUTLINED_FUNCTION_14_0()
{

  return setErrorWithOSStatus(v1, v0);
}

uint64_t SaveRawImageAsPGM(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*a1 bytes];
  if (v7 && (v8 = v7, (v9 = fopen([v5 UTF8String], "w")) != 0))
  {
    v10 = v9;
    fwrite("P5\n", 3uLL, 1uLL, v9);
    if (v6)
    {
      v11 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#"];
      fprintf(v10, "#%s\n", [v11 UTF8String]);
    }

    fprintf(v10, "%i %i 255\n", *(a1 + 8), *(a1 + 12));
    fwrite(v8, *(a1 + 8), *(a1 + 12), v10);
    fclose(v10);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

FILE *LoadRawImageAsPGM(uint64_t a1, id a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = -1;
  v15 = -1;
  v13 = -1;
  *a1 = 0;
  v4 = a2;
  result = fopen([a2 UTF8String], "rb");
  if (result)
  {
    v6 = result;
    if (!ReadLine(v16, result))
    {
      return fclose(v6);
    }

    if (*v16 ^ 0x3550 | v17)
    {
      return fclose(v6);
    }

    if (!ReadLine(v16, v6))
    {
      return fclose(v6);
    }

    sscanf(v16, "%i%i%i", &v15, &v14, &v13);
    if (v15 < 1)
    {
      return fclose(v6);
    }

    v7 = v14;
    if (v14 == -1)
    {
      if (!ReadLine(v16, v6))
      {
        return fclose(v6);
      }

      sscanf(v16, "%i%i", &v14, &v13);
      v7 = v14;
      if (v14 < 1)
      {
        return fclose(v6);
      }
    }

    if (v13 == -1)
    {
      if (!ReadLine(v16, v6))
      {
        return fclose(v6);
      }

      sscanf(v16, "%i", &v13);
      if (v13 != 255)
      {
        return fclose(v6);
      }

      v7 = v14;
    }

    if (((v7 * v15) >> 64))
    {
      LoadRawImageAsPGM_cold_2();
    }

    else
    {
      v8 = malloc_type_malloc(v15 * v7, 0x553C162AuLL);
      if (v8)
      {
        v9 = v8;
        v10 = fread(v8, v15, v14, v6);
        v11 = v14;
        if (v10 == v14)
        {
          v12 = v15;
          *(a1 + 8) = v15;
          *(a1 + 12) = v11;
          *a1 = CFRetain([MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v9 length:v12 * v11]);
        }

        else
        {
          LoadRawImageAsPGM_cold_1(v9);
        }
      }
    }

    return fclose(v6);
  }

  return result;
}

const char *ReadLine(char *a1, FILE *a2)
{
  while (1)
  {
    v4 = fgets(a1, 1024, a2);
    if (!v4)
    {
      break;
    }

    v5 = v4;
    do
    {
      v6 = v5;
      v8 = *v5++;
      v7 = v8;
    }

    while (v8 && v7 < 33);
    v9 = strlen(v6);
    if (v9 != 1)
    {
      v10 = v9 - 2;
      do
      {
        if (v5[v10] > 32)
        {
          break;
        }

        v5[v10--] = 0;
      }

      while (v10 != -1);
    }

    if (v7 != 35)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t AppendCommentToPGM(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3];
  v6 = v5;
  if (v5 && [v5 length])
  {
    v7 = [v6 bytes];
    v8 = &v7[[v6 length]];
    v9 = v7;
    while (1)
    {
      v10 = memchr(v9, 10, [v6 length]);
      if (!v10)
      {
        AppendCommentToPGM_cold_1(&v17);
        v15 = v17;
        goto LABEL_14;
      }

      v9 = v10 + 1;
      if ((v10 + 1) >= v8)
      {
        break;
      }

      if (*v9 != 35)
      {
        goto LABEL_9;
      }
    }

    v9 = v10;
LABEL_9:
    v11 = fopen([v3 UTF8String], "w");
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = v11;
    v13 = v9 - v7;
    fwrite(v7, v9 - v7, 1uLL, v11);
    if (v4)
    {
      v14 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#"];
      fprintf(v12, "#%s\n", [v14 UTF8String]);
    }

    v15 = 1;
    fwrite(v9, [v6 length] - v13, 1uLL, v12);
    fclose(v12);
  }

  else
  {
LABEL_13:
    v15 = 0;
  }

LABEL_14:

  return v15;
}

void RIESClear(char *a1)
{
  v2 = -4800;
  do
  {
    v3 = *&a1[v2 + 4800];
    if (v3)
    {
      CFRelease(v3);
    }

    v2 += 16;
  }

  while (v2);

  bzero(a1, 0x12C0uLL);
}

void RIESAdd(uint64_t a1, _OWORD *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    RIESAdd_cold_1();
  }

  else
  {
    v4 = (a1 + 16 * a3);
    if (*v4)
    {
      CFRelease(*v4);
    }

    *v4 = *a2;
    v5 = *v4;
    if (*v4)
    {

      CFRetain(v5);
    }
  }
}

void RIESSave(void *a1, void *a2)
{
  v6 = DirectoryNameForIdentity(a2);
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  [v3 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

  for (i = 0; i != 300; ++i)
  {
    if (*a1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%i.pgm", v6, i];
      SaveRawImageAsPGM(a1, v5, 0);
    }

    a1 += 2;
  }
}

id DirectoryNameForIdentity(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 uuid];
  v3 = [v2 UUIDString];
  v4 = [v1 stringWithFormat:@"%@/%@", @"/var/mobile/BiometricKit/biometrickitd", v3];

  return v4;
}

void RIESLoad(uint64_t a1, void *a2)
{
  v5 = DirectoryNameForIdentity(a2);
  for (i = 0; i != 300; ++i)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%i.pgm", v5, i];
    LoadRawImageAsPGM(a1, v4);

    a1 += 16;
  }
}

void RIESDelete(void *a1)
{
  v2 = DirectoryNameForIdentity(a1);
  v1 = [MEMORY[0x1E696AC08] defaultManager];
  [v1 removeItemAtPath:v2 error:0];
}

void RIESUpdate(void *a1, void *a2, uint64_t a3)
{
  v7 = DirectoryNameForIdentity(a1);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%i.pgm", v7, a3];
  if (*a2)
  {
    SaveRawImageAsPGM(a2, v5, 0);
  }

  else
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    [v6 removeItemAtPath:v5 error:0];
  }
}

double roundMostSignificant(int a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v3 = roundMostSignificant_formatter;
  if (!roundMostSignificant_formatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v5 = roundMostSignificant_formatter;
    roundMostSignificant_formatter = v4;

    [roundMostSignificant_formatter setMaximumSignificantDigits:a1];
    [roundMostSignificant_formatter setUsesSignificantDigits:1];
    v3 = roundMostSignificant_formatter;
  }

  v6 = [v3 stringFromNumber:v2];
  v7 = [v3 numberFromString:v6];
  [v7 doubleValue];
  v9 = v8;

  return v9;
}

id rotateBitmap90Data8(char *a1, unsigned int a2, unsigned int a3)
{
  if (a1)
  {
    if (a2 < 1 || a3 <= 0)
    {
      rotateBitmap90Data8_cold_2();
    }

    else
    {
      v5 = a1;
      v6 = (a3 * a2);
      v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = a3 - 1;
        do
        {
          v11 = a2;
          v12 = v10;
          v13 = v5;
          do
          {
            v14 = *v13++;
            *(v7 + v12) = v14;
            v12 += a3;
            --v11;
          }

          while (v11);
          ++v9;
          v5 += a2;
          --v10;
        }

        while (v9 != a3);
        v15 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:v6];
        free(v8);
        goto LABEL_10;
      }

      rotateBitmap90Data8_cold_1();
    }
  }

  else
  {
    rotateBitmap90Data8_cold_3();
  }

  v15 = v17;
LABEL_10:

  return v15;
}

id rotateBitmap90Data16(__int16 *a1, unsigned int a2, unsigned int a3)
{
  if (a1)
  {
    if (a2 < 1 || a3 <= 0)
    {
      rotateBitmap90Data16_cold_2();
    }

    else
    {
      v5 = a1;
      v6 = 2 * (a3 * a2);
      v7 = malloc_type_malloc(v6, 0x1000040BDFB0063uLL);
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = 2 * a3;
        v11 = v10 - 2;
        do
        {
          v12 = a2;
          v13 = v11;
          v14 = v5;
          do
          {
            v15 = *v14++;
            *&v7[v13] = v15;
            v13 += v10;
            --v12;
          }

          while (v12);
          ++v9;
          v5 += a2;
          v11 -= 2;
        }

        while (v9 != a3);
        v16 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:v6];
        free(v8);
        goto LABEL_10;
      }

      rotateBitmap90Data16_cold_1();
    }
  }

  else
  {
    rotateBitmap90Data16_cold_3();
  }

  v16 = v18;
LABEL_10:

  return v16;
}

unint64_t localizeAbsolute(uint64_t a1, unsigned int *a2)
{
  v4 = dword_1EDADB1D4;
  if (!dword_1EDADB1D4)
  {
    mach_timebase_info(&sTimebaseInfo);
    v4 = dword_1EDADB1D4;
  }

  return *a2 * a1 / a2[1] * v4 / sTimebaseInfo;
}

uint64_t dictionaryGetData(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (v6 && a3)
  {
    v7 = [v5 objectForKeyedSubscript:v6];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        v7 = 0;
        v9 = v8;
      }

      else
      {
        dictionaryGetData_cold_1(v7, &v12, &v13, &v14);
        v7 = v12;
        v8 = v13;
        v9 = v14;
      }

      goto LABEL_8;
    }

LABEL_7:
    v8 = 0;
    v9 = 0;
LABEL_8:
    v10 = v8;
    *a3 = v8;

    goto LABEL_9;
  }

  v7 = 258;
  if ((dictionaryGetData_cold_2(a3 == 0) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:

  return v7;
}

void *getSensorPatchVersion()
{
  v0 = IOServiceMatching("AppleBiometricSensor");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v0);
  v2 = MatchingService;
  if (MatchingService)
  {
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"patch-version", *MEMORY[0x1E695E480], 0);
    v4 = CFProperty;
    if (CFProperty)
    {
      v5 = [CFProperty integerValue];
      v6 = v4;
      v7 = v2;
    }

    else
    {
      getSensorPatchVersion_cold_1(v2, &v9, &v11, &v10);
      v5 = v9;
      v6 = v11;
      v7 = v10;
    }

    IOObjectRelease(v7);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    getSensorPatchVersion_cold_2(&v11);
    return v11;
  }

  return v5;
}

void __isFaceIDPlatform_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/arm-io/pearl-sep");
  if (v0)
  {
    isFaceIDPlatform_faceIDPlatform = 1;
    IOObjectRelease(v0);
  }

  if (__osLog)
  {
    v1 = __osLog;
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = isFaceIDPlatform_faceIDPlatform;
    _os_log_impl(&dword_1C82AD000, v1, OS_LOG_TYPE_DEFAULT, "isFaceIDPlatform: %u\n", v2, 8u);
  }
}

void __isEphemeralMultiUser_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DF068] sharedManager];
  isEphemeralMultiUser_ephemeralMultiUser = [v0 isSharedIPad];

  if (isEphemeralMultiUser_ephemeralMultiUser == 1)
  {
    if (__osLog)
    {
      v1 = __osLog;
    }

    else
    {
      v1 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2[0] = 67109120;
      v2[1] = isEphemeralMultiUser_ephemeralMultiUser;
      _os_log_impl(&dword_1C82AD000, v1, OS_LOG_TYPE_DEFAULT, "isEphemeralMultiUser: %u\n", v2, 8u);
    }
  }
}

uint64_t getCurrentUserID()
{
  v0 = [MEMORY[0x1E69DF068] sharedManager];
  v1 = [v0 currentUser];

  if (v1)
  {
    v2 = [v1 uid];
  }

  else
  {
    getCurrentUserID_cold_1(&v4);
    v2 = v4;
  }

  return v2;
}

id getBootArgs()
{
  v0 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/options");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"boot-args", 0, 0);
    IOObjectRelease(v1);
  }

  else
  {
    CFProperty = 0;
  }

  return CFProperty;
}

uint64_t __isInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  isInternalBuild_isInternal = result;
  return result;
}

BOOL OUTLINED_FUNCTION_9@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void sub_1C82D490C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __statusToFingerprintCaptureError(int a1)
{
  v1 = 3;
  v2 = 4;
  v3 = 5;
  if (a1 != 98)
  {
    v3 = 0;
  }

  if (a1 != 88)
  {
    v2 = v3;
  }

  if (a1 != 87)
  {
    v1 = v2;
  }

  v4 = 6;
  v5 = 1;
  v6 = 2;
  if (a1 != 86)
  {
    v6 = 0;
  }

  if (a1 != 85)
  {
    v5 = v6;
  }

  if (a1 != 78)
  {
    v4 = v5;
  }

  if (a1 <= 86)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t __faceDetectFeedback(uint64_t result)
{
  if ((result - 2) >= 0xC)
  {
    return 1;
  }

  return result;
}

uint64_t __passcodeShortcutReason(uint64_t result)
{
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

void sub_1C82E2CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C82E2FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

id setErrorWithOSStatus(id result, void *a2)
{
  if (a2)
  {
    result = [BKErrorHelper errorWithOSStatus:result];
    *a2 = result;
  }

  return result;
}

void GenerateEnrollProgressInfo_cold_1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void GenerateEnrollProgressInfo_cold_2(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v6 = &unk_1C82F52EE;
    OUTLINED_FUNCTION_1();
    v7 = 128;
    _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v5, 0x30u);
  }

  *a2 = 0;
  *a1 = 0;
}

void __makeCoordinates_cold_1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void ComponentSetUpdate_cold_1()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_14();
}

void ComponentSetUpdate_cold_2(_DWORD *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *a1 = 0;
}

void ComponentSetUpdate_cold_3(_DWORD *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *a1 = 0;
}

void ComponentSetUpdate_cold_4()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_17())
  {
    LODWORD(v15) = 136316162;
    *(&v15 + 4) = "!result";
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v15, "!result" >> 32);
  }

  if (OUTLINED_FUNCTION_17())
  {
    LODWORD(v14) = 136316162;
    *(&v14 + 4) = "!result";
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v8, v9, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v10, v11, v12, v13, v14);
  }

  *v0 = v1;
}

void ComponentSetUpdate_cold_5()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void ComponentSetUpdate_cold_6()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void ComponentSetUpdate_cold_7(_DWORD *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *a1 = 0;
}

void ComponentSetUpdate_cold_8()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void ComponentSetUpdate_cold_9()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void ComponentSetUpdate_cold_10()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_14();
}

void ComponentSetUpdate_cold_11()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void ComponentSetUpdate_cold_12()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void ComponentSetUpdate_cold_13()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void ComponentSetUpdate_cold_14()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void ComponentSetUpdate_cold_15()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void ComponentSetUpdate_cold_16()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void ComponentSetUpdate_cold_17()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void ComponentSetUpdate_cold_18()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void ComponentSetUpdate_cold_19()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_15();
}

void ComponentSetUpdate_cold_20()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_15();
}

void ComponentSetUpdate_cold_21(_DWORD *a1)
{
  if (OUTLINED_FUNCTION_12())
  {
    v15 = 136316162;
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v15);
  }

  if (OUTLINED_FUNCTION_12())
  {
    LODWORD(v14) = 136316162;
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v8, v9, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v10, v11, v12, v13, v14);
  }

  *a1 = 12;
}

void ComponentSetUpdate_cold_22(_DWORD *a1)
{
  if (OUTLINED_FUNCTION_12())
  {
    v15 = 136316162;
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v15);
  }

  if (OUTLINED_FUNCTION_12())
  {
    LODWORD(v14) = 136316162;
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v8, v9, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v10, v11, v12, v13, v14);
  }

  *a1 = 12;
}

void ComponentSetUpdate_cold_23()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_14();
}

void ComponentSetUpdate_cold_24()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_14();
}

void ComponentSetUpdate_cold_25()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void ComponentSetUpdate_cold_26()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __TranslateNodePlacement_cold_1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __TranslateNodePlacement_cold_2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __TranslateNodePlacement_cold_3()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __TranslateNodePlacement_cold_4()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __FindLargestComponent_cold_1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void __FindLargestComponent_cold_2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_15();
}

void GenerateTemplateTopology_cold_1()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_14();
}

void GenerateTemplateTopology_cold_2()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_14();
}

void GenerateTemplateTopology_cold_3()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void GenerateTemplateTopology_cold_4()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __GenerateTemplateTopology_cold_1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __GenerateTemplateTopology_cold_2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void GenerateMatchTemplateTopology_cold_1()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_14();
}

void GenerateMatchTemplateTopology_cold_2()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_14();
}

void GenerateMatchTemplateTopology_cold_3()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void GenerateMatchTemplateTopology_cold_4()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void GenerateMatchTemplateTopology_cold_5()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __RebaseComponent_cold_1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __RebaseComponent_cold_2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __RebaseComponent_cold_3()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __RebaseComponent_cold_4()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __RebaseComponent_cold_5()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __RebaseComponent_cold_6()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void __RebaseComponent_cold_7()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_1();
}

void LoadRawImageAsPGM_cold_1(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  free(a1);
}

void LoadRawImageAsPGM_cold_2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void AppendCommentToPGM_cold_1(_BYTE *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *a1 = 0;
}

void RIESAdd_cold_1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void rotateBitmap90Data8_cold_1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_6();
}

void rotateBitmap90Data8_cold_2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_6();
}

void rotateBitmap90Data8_cold_3()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_6();
}

void rotateBitmap90Data16_cold_1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_6();
}

void rotateBitmap90Data16_cold_2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_6();
}

void rotateBitmap90Data16_cold_3()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_6();
}

void absoluteToNanoseconds_cold_1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  dword_1EDADB1D4 = 1;
}

void nanosecondsToAbsolute_cold_1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  sTimebaseInfo = 1;
}

void dictionaryGetBool_cold_1(_DWORD *a1, _BYTE *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v6 = &unk_1C82F52EE;
    OUTLINED_FUNCTION_1();
    v7 = 524;
    _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v5, 0x30u);
  }

  *a2 = 0;
  *a1 = 258;
}

uint64_t dictionaryGetBool_cold_2(char a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  return a1 & 1;
}

void dictionaryGetInteger_cold_1(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

uint64_t dictionaryGetInteger_cold_2(char a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  return a1 & 1;
}

void dictionaryGetDouble_cold_1(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

uint64_t dictionaryGetDouble_cold_2(char a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  return a1 & 1;
}

void dictionaryGetData_cold_1(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  if (OUTLINED_FUNCTION_9(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_2(&dword_1C82AD000, v8, v9, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v10, v11, v12, v13);
  }

  *a4 = a1;
  *a3 = 0;
  *a2 = 258;
}

uint64_t dictionaryGetData_cold_2(char a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  return a1 & 1;
}

void getSensorPatchVersion_cold_1(int a1, void *a2, void *a3, _DWORD *a4)
{
  if (OUTLINED_FUNCTION_9(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_2(&dword_1C82AD000, v8, v9, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v10, v11, v12, v13);
  }

  *a4 = a1;
  *a3 = 0;
  *a2 = -1;
}

void getSensorPatchVersion_cold_2(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *a1 = -1;
}

void getCurrentUserID_cold_1(_DWORD *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *a1 = -1;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}