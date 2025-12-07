uint64_t BPSPipelineSupportsPullBasedPublishers(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  os_unfair_lock_lock(&overrideLock);
  v2 = override;
  os_unfair_lock_unlock(&overrideLock);
  if (v2)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v4 = objc_opt_respondsToSelector();
    v5 = objc_opt_respondsToSelector();
    v6 = objc_opt_respondsToSelector();
    v7 = objc_opt_respondsToSelector();
    v8 = objc_opt_respondsToSelector();
    v3 = 0;
    if (v4 & 1) != 0 && (v5 & 1) != 0 && (v6 & 1) != 0 && (v7 & 1) != 0 && (v8)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v1 upstreamPublishers];
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            if (!BPSPipelineSupportsPullBasedPublishers(*(*(&v15 + 1) + 8 * v13)))
            {
              v3 = 0;
              goto LABEL_18;
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v3 = 1;
LABEL_18:
    }
  }

  return v3;
}

void sub_1C871E724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C871EAD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C871EB0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C871EB4C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id protocol witness for PublisherProtocol.inner.getter in conformance Publisher<A>()
{
  v0 = specialized BookmarkablePublisher.inner.getter();

  return v0;
}

uint64_t sub_1C871EC20()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C871EC58()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C871EC90()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C871ECC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C87287FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void BPSOverridePipelineSupportsPullBasedPublishers(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&overrideLock);
  v2 = override;
  override = v1;

  os_unfair_lock_unlock(&overrideLock);
}

uint64_t BPSPBApproxPercentileDigestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &OBJC_IVAR____BPSRemoveDuplicatesInner__last;
    v6 = &OBJC_IVAR____BPSRemoveDuplicatesInner__last;
    v7 = &OBJC_IVAR____BPSRemoveDuplicatesInner__last;
    v8 = &OBJC_IVAR____BPSRemoveDuplicatesInner__last;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v66) = 0;
        v12 = [a2 position] + 1;
        if (v12 >= [a2 position] && (v13 = objc_msgSend(a2, "position") + 1, v13 <= objc_msgSend(a2, "length")))
        {
          v14 = [a2 data];
          [v14 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v11 |= (v66 & 0x7F) << v9;
        if ((v66 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [a2 hasError] ? 0 : v11;
LABEL_16:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v17 = v16 & 7;
      if (v17 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v18 = v16 >> 3;
      if ((v16 >> 3) > 3)
      {
        switch(v18)
        {
          case 4:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + v5[135]) |= 1u;
            while (1)
            {
              LOBYTE(v66) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v66 & 0x7F) << v36;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v15 = v37++ >= 9;
              if (v15)
              {
                v25 = 0;
                goto LABEL_79;
              }
            }

            if ([a2 hasError])
            {
              v25 = 0;
            }

            else
            {
              v25 = v38;
            }

LABEL_79:
            v48 = 56;
            goto LABEL_84;
          case 5:
            if (v17 != 2)
            {
              LODWORD(v66) = 0;
              v58 = [a2 position] + 4;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 4, v59 <= objc_msgSend(a2, "length")))
              {
                v65 = [a2 data];
                [v65 getBytes:&v66 range:{objc_msgSend(a2, "position"), 4}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
              }

              else
              {
                [a2 _setError];
              }

              PBRepeatedFloatAdd();
              goto LABEL_104;
            }

            v66 = 0;
            v67 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v44 = [a2 position];
              if (v44 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v68 = 0;
              v45 = [a2 position] + 4;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 4, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v68 range:{objc_msgSend(a2, "position"), 4}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
              }

              else
              {
                [a2 _setError];
              }

              PBRepeatedFloatAdd();
            }

            goto LABEL_75;
          case 6:
            if (v17 != 2)
            {
              v49 = v7;
              v50 = v5;
              v51 = v6;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              while (1)
              {
                LOBYTE(v66) = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  v57 = [a2 data];
                  [v57 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v54 |= (v66 & 0x7F) << v52;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                v15 = v53++ >= 9;
                if (v15)
                {
                  goto LABEL_98;
                }
              }

              [a2 hasError];
LABEL_98:
              PBRepeatedUInt32Add();
              v6 = v51;
              v5 = v50;
              v7 = v49;
              v8 = &OBJC_IVAR____BPSRemoveDuplicatesInner__last;
              goto LABEL_104;
            }

            v66 = 0;
            v67 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v27 = [a2 position];
              if (v27 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v28 = 0;
              v29 = 0;
              v30 = 0;
              while (1)
              {
                LOBYTE(v68) = 0;
                v31 = [a2 position] + 1;
                if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
                {
                  v33 = [a2 data];
                  [v33 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v30 |= (v68 & 0x7F) << v28;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                v15 = v29++ >= 9;
                if (v15)
                {
                  goto LABEL_48;
                }
              }

              [a2 hasError];
LABEL_48:
              PBRepeatedUInt32Add();
            }

LABEL_75:
            PBReaderRecallMark();
            goto LABEL_104;
        }
      }

      else
      {
        switch(v18)
        {
          case 1:
            *(a1 + v5[135]) |= 8u;
            LODWORD(v66) = 0;
            v34 = [a2 position] + 4;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 4, v35 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:&v66 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v61 = v66;
            v62 = v6[136];
            goto LABEL_103;
          case 2:
            *(a1 + v5[135]) |= 4u;
            LODWORD(v66) = 0;
            v42 = [a2 position] + 4;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 4, v43 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v66 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v61 = v66;
            v62 = v7[137];
LABEL_103:
            *(a1 + v62) = v61;
            goto LABEL_104;
          case 3:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + v5[135]) |= 2u;
            while (1)
            {
              LOBYTE(v66) = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                v24 = [a2 data];
                [v24 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v66 & 0x7F) << v19;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v15 = v20++ >= 9;
              if (v15)
              {
                v25 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v25 = 0;
            }

            else
            {
              v25 = v21;
            }

LABEL_83:
            v48 = v8[138];
LABEL_84:
            *(a1 + v48) = v25;
            goto LABEL_104;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_104:
      v64 = [a2 position];
    }

    while (v64 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C87303F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8730A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C87314E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C8732294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8733A90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1C8737FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_1C873A720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

_BYTE *OUTLINED_FUNCTION_0_4(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_1C873E154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMDSLSubscribeOnClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!BiomeDSLLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __BiomeDSLLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8320FD0;
    v5 = 0;
    BiomeDSLLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BiomeDSLLibraryCore_frameworkLibrary)
  {
    __getBMDSLSubscribeOnClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("BMDSLSubscribeOn");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMDSLSubscribeOnClass_block_invoke_cold_1();
  }

  getBMDSLSubscribeOnClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BiomeDSLLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeDSLLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1C873ED0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMDSLSubscribeOnClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!BiomeDSLLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __BiomeDSLLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8321008;
    v5 = 0;
    BiomeDSLLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!BiomeDSLLibraryCore_frameworkLibrary_0)
  {
    __getBMDSLSubscribeOnClass_block_invoke_cold_2_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("BMDSLSubscribeOn");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMDSLSubscribeOnClass_block_invoke_cold_1_0();
  }

  getBMDSLSubscribeOnClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BiomeDSLLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeDSLLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t BPSDemandMax(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    BPSDemandMax_cold_1();
  }

  return result;
}

void sub_1C8748844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8748EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C87499C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C874CD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8751688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C8751814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id Subscribers.Sink.__allocating_init(receiveBookmarkCompletion:receiveInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ();
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);
  v14[4] = a3;
  v14[5] = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
  v14[3] = &block_descriptor_3;
  v11 = _Block_copy(v14);
  v12 = [v9 initWithReceiveBookmarkCompletion:v10 receiveInput:v11];
  _Block_release(v10);
  _Block_release(v11);

  return v12;
}

void thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id Subscribers.Sink.init(receiveBookmarkCompletion:receiveInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v21 = a1;
  v22 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ();
  v20 = &block_descriptor_6;
  v9 = _Block_copy(&aBlock);

  v21 = a3;
  v22 = a4;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
  v20 = &block_descriptor_9;
  v10 = _Block_copy(&aBlock);

  v13 = type metadata accessor for Subscribers.Sink(0, *((v8 & v7) + 0x50), v11, v12);
  v16.receiver = v4;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithReceiveBookmarkCompletion_receiveInput_, v9, v10);

  _Block_release(v10);
  _Block_release(v9);
  return v14;
}

id @objc Subscribers.Sink.init(receiveBookmarkCompletion:receiveInput:)(int a1, int a2, void *aBlock, const void *a4)
{
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  return Subscribers.Sink.init(receiveBookmarkCompletion:receiveInput:)(thunk for @escaping @callee_unowned @convention(block) (@unowned BPSCompletion, @unowned BMBookmark) -> ()partial apply, v7, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Swift.AnyObject) -> (), v8);
}

id Subscribers.Sink.__allocating_init(receiveCompletion:receiveInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  aBlock[3] = &block_descriptor_12;
  v10 = _Block_copy(aBlock);
  v14[4] = a3;
  v14[5] = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
  v14[3] = &block_descriptor_15;
  v11 = _Block_copy(v14);
  v12 = [v9 initWithReceiveCompletion:v10 receiveInput:v11];
  _Block_release(v10);
  _Block_release(v11);

  return v12;
}

void thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id Subscribers.Sink.init(receiveCompletion:receiveInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v21 = a1;
  v22 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v20 = &block_descriptor_18;
  v9 = _Block_copy(&aBlock);

  v21 = a3;
  v22 = a4;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
  v20 = &block_descriptor_21;
  v10 = _Block_copy(&aBlock);

  v13 = type metadata accessor for Subscribers.Sink(0, *((v8 & v7) + 0x50), v11, v12);
  v16.receiver = v4;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithReceiveCompletion_receiveInput_, v9, v10);

  _Block_release(v10);
  _Block_release(v9);
  return v14;
}

id @objc Subscribers.Sink.init(receiveCompletion:receiveInput:)(int a1, int a2, void *aBlock, const void *a4)
{
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  return Subscribers.Sink.init(receiveCompletion:receiveInput:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Swift.AnyObject) -> (), v7, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Swift.AnyObject) -> (), v8);
}

id Subscribers.Sink.__allocating_init(receiveBookmarkedCompletion:receiveInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ();
  aBlock[3] = &block_descriptor_24;
  v10 = _Block_copy(aBlock);
  v14[4] = a3;
  v14[5] = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
  v14[3] = &block_descriptor_27;
  v11 = _Block_copy(v14);
  v12 = [v9 initWithReceiveBookmarkedCompletion:v10 receiveInput:v11];
  _Block_release(v10);
  _Block_release(v11);

  return v12;
}

id Subscribers.Sink.init(receiveBookmarkedCompletion:receiveInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v21 = a1;
  v22 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ();
  v20 = &block_descriptor_30;
  v9 = _Block_copy(&aBlock);

  v21 = a3;
  v22 = a4;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
  v20 = &block_descriptor_33;
  v10 = _Block_copy(&aBlock);

  v13 = type metadata accessor for Subscribers.Sink(0, *((v8 & v7) + 0x50), v11, v12);
  v16.receiver = v4;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithReceiveBookmarkedCompletion_receiveInput_, v9, v10);

  _Block_release(v10);
  _Block_release(v9);
  return v14;
}

id @objc Subscribers.Sink.init(receiveBookmarkedCompletion:receiveInput:)(int a1, int a2, void *aBlock, const void *a4)
{
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  return Subscribers.Sink.init(receiveBookmarkedCompletion:receiveInput:)(thunk for @escaping @callee_unowned @convention(block) (@unowned BPSCompletion, @unowned BMBookmark) -> ()partial apply, v7, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Swift.AnyObject) -> (), v8);
}

id Subscribers.DrivableSink.__allocating_init(receiveBookmarkCompletion:shouldContinue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ();
  aBlock[3] = &block_descriptor_36;
  v10 = _Block_copy(aBlock);
  v14[4] = a3;
  v14[5] = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
  v14[3] = &block_descriptor_39;
  v11 = _Block_copy(v14);
  v12 = [v9 initWithReceiveBookmarkCompletion:v10 shouldContinue:v11];
  _Block_release(v10);
  _Block_release(v11);

  return v12;
}

id Subscribers.DrivableSink.init(receiveBookmarkCompletion:shouldContinue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v21 = a1;
  v22 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ();
  v20 = &block_descriptor_42;
  v9 = _Block_copy(&aBlock);

  v21 = a3;
  v22 = a4;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
  v20 = &block_descriptor_45;
  v10 = _Block_copy(&aBlock);

  v13 = type metadata accessor for Subscribers.DrivableSink(0, *((v8 & v7) + 0x50), v11, v12);
  v16.receiver = v4;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithReceiveBookmarkCompletion_shouldContinue_, v9, v10);

  _Block_release(v10);
  _Block_release(v9);
  return v14;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

id @objc Subscribers.DrivableSink.init(receiveBookmarkCompletion:shouldContinue:)(int a1, int a2, void *aBlock, const void *a4)
{
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  return Subscribers.DrivableSink.init(receiveBookmarkCompletion:shouldContinue:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned BPSCompletion, @unowned BMBookmark) -> (), v7, thunk for @escaping @callee_unowned @convention(block) (@unowned Swift.AnyObject) -> (@unowned ObjCBool)partial apply, v8);
}

id Subscribers.DrivableSink.__allocating_init(receiveCompletion:shouldContinue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  aBlock[3] = &block_descriptor_48;
  v10 = _Block_copy(aBlock);
  v14[4] = a3;
  v14[5] = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
  v14[3] = &block_descriptor_51;
  v11 = _Block_copy(v14);
  v12 = [v9 initWithReceiveCompletion:v10 shouldContinue:v11];
  _Block_release(v10);
  _Block_release(v11);

  return v12;
}

id Subscribers.DrivableSink.init(receiveCompletion:shouldContinue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v21 = a1;
  v22 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v20 = &block_descriptor_54;
  v9 = _Block_copy(&aBlock);

  v21 = a3;
  v22 = a4;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
  v20 = &block_descriptor_57;
  v10 = _Block_copy(&aBlock);

  v13 = type metadata accessor for Subscribers.DrivableSink(0, *((v8 & v7) + 0x50), v11, v12);
  v16.receiver = v4;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithReceiveCompletion_shouldContinue_, v9, v10);

  _Block_release(v10);
  _Block_release(v9);
  return v14;
}

id @objc Subscribers.DrivableSink.init(receiveCompletion:shouldContinue:)(int a1, int a2, void *aBlock, const void *a4)
{
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  return Subscribers.DrivableSink.init(receiveCompletion:shouldContinue:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned BPSCompletion) -> (), v7, thunk for @escaping @callee_unowned @convention(block) (@unowned Swift.AnyObject) -> (@unowned ObjCBool)partial apply, v8);
}

id Subscribers.DrivableSink.__allocating_init(receiveBookmarkedCompletion:shouldContinue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ();
  aBlock[3] = &block_descriptor_60;
  v10 = _Block_copy(aBlock);
  v14[4] = a3;
  v14[5] = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
  v14[3] = &block_descriptor_63;
  v11 = _Block_copy(v14);
  v12 = [v9 initWithReceiveBookmarkedCompletion:v10 shouldContinue:v11];
  _Block_release(v10);
  _Block_release(v11);

  return v12;
}

id Subscribers.DrivableSink.init(receiveBookmarkedCompletion:shouldContinue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v21 = a1;
  v22 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ();
  v20 = &block_descriptor_66;
  v9 = _Block_copy(&aBlock);

  v21 = a3;
  v22 = a4;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
  v20 = &block_descriptor_69;
  v10 = _Block_copy(&aBlock);

  v13 = type metadata accessor for Subscribers.DrivableSink(0, *((v8 & v7) + 0x50), v11, v12);
  v16.receiver = v4;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithReceiveBookmarkedCompletion_shouldContinue_, v9, v10);

  _Block_release(v10);
  _Block_release(v9);
  return v14;
}

id @objc Subscribers.DrivableSink.init(receiveBookmarkedCompletion:shouldContinue:)(int a1, int a2, void *aBlock, const void *a4)
{
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  return Subscribers.DrivableSink.init(receiveBookmarkedCompletion:shouldContinue:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned BPSCompletion, @unowned BMBookmark) -> (), v7, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Swift.AnyObject) -> (@unowned ObjCBool), v8);
}

id Subscribers.Sink.__deallocating_deinit(uint64_t (*a1)(void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id PublisherProtocol.sink(completion:receiveInput:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = *(a6 + 24);
  v12 = v31(a5, a6);
  v13 = BPSPipelineSupportsPullBasedPublishers(v12);
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    v15 = swift_allocObject();
    v15[2] = a5;
    v15[3] = a6;
    v15[4] = a3;
    v15[5] = a4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v19 = objc_allocWithZone(type metadata accessor for Subscribers.Sink(0, AssociatedTypeWitness, v17, v18));
    v42 = partial apply for closure #1 in PublisherProtocol.sink(completion:receiveInput:);
    v43 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ();
    v41 = &block_descriptor_84;
    v20 = _Block_copy(&aBlock);
    v36 = partial apply for closure #2 in PublisherProtocol.sink(completion:receiveInput:);
    v37 = v15;
    v32 = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
    v35 = &block_descriptor_87;
    v21 = _Block_copy(&v32);

    v22 = [v19 initWithReceiveBookmarkCompletion:v20 receiveInput:v21];
    _Block_release(v20);
    _Block_release(v21);

    [v22 subscribeTo_];
  }

  else
  {
    v23 = swift_allocObject();
    v23[2] = a5;
    v23[3] = a6;
    v23[4] = a3;
    v23[5] = a4;
    v24 = swift_getAssociatedTypeWitness();
    v27 = objc_allocWithZone(type metadata accessor for Subscribers.Sink(0, v24, v25, v26));
    v42 = a1;
    v43 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
    v41 = &block_descriptor_72;
    v28 = _Block_copy(&aBlock);
    v36 = partial apply for closure #3 in PublisherProtocol.sink(completion:receiveInput:);
    v37 = v23;
    v32 = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
    v35 = &block_descriptor_75;
    v29 = _Block_copy(&v32);

    v22 = [v27 initWithReceiveCompletion:v28 receiveInput:v29];
    _Block_release(v28);
    _Block_release(v29);

    [v31(a5 a6)];
  }

  swift_unknownObjectRelease();
  return v22;
}

id PublisherProtocol.sink(completion:shouldContinue:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = *(a6 + 24);
  v12 = v31(a5, a6);
  v13 = BPSPipelineSupportsPullBasedPublishers(v12);
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    v15 = swift_allocObject();
    v15[2] = a5;
    v15[3] = a6;
    v15[4] = a3;
    v15[5] = a4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v19 = objc_allocWithZone(type metadata accessor for Subscribers.DrivableSink(0, AssociatedTypeWitness, v17, v18));
    v42 = partial apply for closure #1 in PublisherProtocol.sink(completion:receiveInput:);
    v43 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
    v41 = &block_descriptor_105;
    v20 = _Block_copy(&aBlock);
    v36 = partial apply for closure #2 in PublisherProtocol.sink(completion:shouldContinue:);
    v37 = v15;
    v32 = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
    v35 = &block_descriptor_108;
    v21 = _Block_copy(&v32);

    v22 = [v19 initWithReceiveCompletion:v20 shouldContinue:v21];
    _Block_release(v20);
    _Block_release(v21);

    [v22 subscribeTo_];
  }

  else
  {
    v23 = swift_allocObject();
    v23[2] = a5;
    v23[3] = a6;
    v23[4] = a3;
    v23[5] = a4;
    v24 = swift_getAssociatedTypeWitness();
    v27 = objc_allocWithZone(type metadata accessor for Subscribers.DrivableSink(0, v24, v25, v26));
    v42 = a1;
    v43 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
    v41 = &block_descriptor_93;
    v28 = _Block_copy(&aBlock);
    v36 = partial apply for closure #3 in PublisherProtocol.sink(completion:shouldContinue:);
    v37 = v23;
    v32 = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
    v35 = &block_descriptor_96;
    v29 = _Block_copy(&v32);

    v22 = [v27 initWithReceiveCompletion:v28 shouldContinue:v29];
    _Block_release(v28);
    _Block_release(v29);

    [v31(a5 a6)];
  }

  swift_unknownObjectRelease();
  return v22;
}

id PublisherProtocol<>.sink(with:completion:receiveInput:)(uint64_t a1, uint64_t (*a2)(uint64_t a1, void *a2), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = *(a7 + 24);
  v13 = v36(a6, a7);
  v14 = BPSPipelineSupportsPullBasedPublishers(v13);
  swift_unknownObjectRelease();
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v16 = swift_allocObject();
    v16[2] = a6;
    v16[3] = a7;
    v16[4] = a4;
    v16[5] = a5;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v20 = objc_allocWithZone(type metadata accessor for Subscribers.Sink(0, AssociatedTypeWitness, v18, v19));
    v48 = partial apply for closure #1 in PublisherProtocol<>.sink(with:completion:receiveInput:);
    v49 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ();
    v47 = &block_descriptor_126;
    v21 = _Block_copy(&aBlock);
    v42 = partial apply for closure #3 in PublisherProtocol.sink(completion:receiveInput:);
    v43 = v16;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
    v41 = &block_descriptor_129;
    v22 = _Block_copy(&v38);

    v23 = [v20 initWithReceiveBookmarkCompletion:v21 receiveInput:v22];
    _Block_release(v21);
    _Block_release(v22);

    v36(a6, a7);
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      if (a1)
      {
        v25 = v24;
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (v26)
        {
          [v25 applyBookmarkNode_];
        }
      }
    }

    swift_unknownObjectRelease();
    [v23 subscribeTo_];
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = swift_allocObject();
    v27[2] = a6;
    v27[3] = a7;
    v27[4] = a4;
    v27[5] = a5;
    v28 = swift_getAssociatedTypeWitness();
    v31 = objc_allocWithZone(type metadata accessor for Subscribers.Sink(0, v28, v29, v30));
    v48 = a2;
    v49 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ();
    v47 = &block_descriptor_114;
    v32 = _Block_copy(&aBlock);
    v42 = partial apply for closure #3 in PublisherProtocol.sink(completion:receiveInput:);
    v43 = v27;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
    v41 = &block_descriptor_117;
    v33 = _Block_copy(&v38);

    v23 = [v31 initWithReceiveBookmarkedCompletion:v32 receiveInput:v33];
    _Block_release(v32);
    _Block_release(v33);

    v34 = [v36(a6 a7)];
    swift_unknownObjectRelease();
    [v34 subscribe_];
  }

  return v23;
}

uint64_t closure #2 in PublisherProtocol.sink(completion:receiveInput:)(uint64_t a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  swift_dynamicCast();
  a2();
  return swift_unknownObjectRelease();
}

id PublisherProtocol<>.sink(with:completion:shouldContinue:)(uint64_t a1, uint64_t (*a2)(uint64_t a1, uint64_t a2), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = *(a7 + 24);
  v13 = v36(a6, a7);
  v14 = BPSPipelineSupportsPullBasedPublishers(v13);
  swift_unknownObjectRelease();
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v16 = swift_allocObject();
    v16[2] = a6;
    v16[3] = a7;
    v16[4] = a4;
    v16[5] = a5;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v20 = objc_allocWithZone(type metadata accessor for Subscribers.DrivableSink(0, AssociatedTypeWitness, v18, v19));
    v48 = partial apply for closure #1 in PublisherProtocol<>.sink(with:completion:shouldContinue:);
    v49 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ();
    v47 = &block_descriptor_147;
    v21 = _Block_copy(&aBlock);
    v42 = partial apply for closure #3 in PublisherProtocol.sink(completion:shouldContinue:);
    v43 = v16;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
    v41 = &block_descriptor_150;
    v22 = _Block_copy(&v38);

    v23 = [v20 initWithReceiveBookmarkCompletion:v21 shouldContinue:v22];
    _Block_release(v21);
    _Block_release(v22);

    v36(a6, a7);
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      if (a1)
      {
        v25 = v24;
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (v26)
        {
          [v25 applyBookmarkNode_];
        }
      }
    }

    swift_unknownObjectRelease();
    [v23 subscribeTo_];
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = swift_allocObject();
    v27[2] = a6;
    v27[3] = a7;
    v27[4] = a4;
    v27[5] = a5;
    v28 = swift_getAssociatedTypeWitness();
    v31 = objc_allocWithZone(type metadata accessor for Subscribers.DrivableSink(0, v28, v29, v30));
    v48 = a2;
    v49 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark?) -> ();
    v47 = &block_descriptor_135;
    v32 = _Block_copy(&aBlock);
    v42 = partial apply for closure #3 in PublisherProtocol.sink(completion:shouldContinue:);
    v43 = v27;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
    v41 = &block_descriptor_138;
    v33 = _Block_copy(&v38);

    v23 = [v31 initWithReceiveBookmarkedCompletion:v32 shouldContinue:v33];
    _Block_release(v32);
    _Block_release(v33);

    v34 = [v36(a6 a7)];
    swift_unknownObjectRelease();
    [v34 subscribe_];
  }

  return v23;
}

uint64_t closure #1 in PublisherProtocol<>.sink(with:completion:receiveInput:)(uint64_t a1, void *a2, void (*a3)(uint64_t, id))
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v6 = objc_allocWithZone(BMBookmarkNode);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10BMBookmark_pMd, &_sSo10BMBookmark_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v5 = [v6 initWithValue:0 upstreams:isa name:0];
  }

  swift_unknownObjectRetain();
  a3(a1, v5);

  return swift_unknownObjectRelease();
}

uint64_t closure #2 in PublisherProtocol.sink(completion:shouldContinue:)(uint64_t a1, uint64_t (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  swift_dynamicCast();
  LOBYTE(a2) = a2();
  swift_unknownObjectRelease();
  return a2 & 1;
}

uint64_t getEnumTagSinglePayload for Subscribers(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Subscribers(_WORD *result, int a2, int a3)
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

void type metadata accessor for NSComparisonResult()
{
  if (!lazy cache variable for type metadata for NSComparisonResult)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSComparisonResult);
    }
  }
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

id Publishers.HandleEvents.inner.getter()
{
  v0 = specialized BookmarkablePublisher.inner.getter();

  return v0;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Collect<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Filter<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.FlatMap<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Last<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Map<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Merge<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.MergeMany<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.OrderedMerge<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Reduce<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Scan<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Sequence<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Multicast<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Correlate<A, B, C, D>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.CombineLatest<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Debounce<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Future<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.HandleEvents<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.RemoveDuplicates<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Throttle<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Timer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Zip<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.ZipMany<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Publishers.Buffer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata instantiation function for Publishers.Collect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Filter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.FlatMap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Last(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Map(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Merge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.MergeMany(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.OrderedMerge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Reduce(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Scan(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Sequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Multicast(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Correlate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.CombineLatest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Debounce(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Future(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.HandleEvents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.RemoveDuplicates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Throttle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Timer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Zip(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.ZipMany(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Publishers.Buffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Publishers.Collect(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Publishers.Collect(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id Publisher.inner.getter()
{
  v0 = specialized BookmarkablePublisher.inner.getter();

  return v0;
}

uint64_t instantiation function for generic protocol witness table for Publisher<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata instantiation function for Publisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void PublisherProtocol.merge<A>(with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v33 = a2;
  v40 = a5;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v30 = v12;
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1CCA7C710](v11, v14);
  if (!v15)
  {
LABEL_17:
    v25 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v27 = [v25 initWithArray_];

    [v27 addObject_];
    swift_unknownObjectRelease();
    v28 = [objc_allocWithZone(BPSMergeMany) initWithPublishers_];

    *a6 = v28;
    return;
  }

  v16 = v15;
  v43 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
  if (v16 < 0)
  {
    goto LABEL_20;
  }

  v31 = a4;
  v32 = a6;
  v17 = 0;
  v18 = v43;
  v36 = *(v40 + 24);
  v37 = v40 + 24;
  v38 = v16;
  v39 = a1 & 0xFFFFFFFFFFFFFF8;
  v34 = a1 & 0xC000000000000001;
  v35 = (v10 + 16);
  while (1)
  {
    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && v34)
    {
      v24 = _ArrayBuffer._getElementSlowPath(_:)();
      if (v30 != 8)
      {
        goto LABEL_21;
      }

      *&v41 = v24;
      (*v35)(v13, &v41, a3);
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    v20 = v39;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v20 = a1;
    }

    if (v17 >= *(v20 + 16))
    {
      goto LABEL_19;
    }

    (*(v10 + 16))(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, a3);
LABEL_11:
    v21 = v36(a3, v40);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *&v41 = v21;
    (*(v10 + 8))(v13, a3);
    v43 = v18;
    v23 = *(v18 + 16);
    v22 = *(v18 + 24);
    if (v23 >= v22 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      v18 = v43;
    }

    ++v17;
    *(v18 + 16) = v23 + 1;
    outlined init with take of Any(&v41, (v18 + 32 * v23 + 32));
    if (v38 == v17)
    {
      a4 = v31;
      a6 = v32;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void PublisherProtocol.mergeAny<A>(with:)(uint64_t a1@<X1>, void *a2@<X8>, uint64_t a3@<X0>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a3);
  specialized _arrayForceCast<A, B>(_:)(v8, v9);
  v10 = objc_allocWithZone(MEMORY[0x1E695DF70]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithArray_];

  if ((_swift_isClassOrObjCExistentialType() & 1) == 0)
  {
    (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
    v13 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    goto LABEL_4;
  }

  if (v7 == 8)
  {
    v13 = *v3;
    swift_unknownObjectRetain();
LABEL_4:
    [v12 addObject_];
    swift_unknownObjectRelease();
    v14 = [objc_allocWithZone(BPSMergeMany) initWithPublishers_];

    *a2 = v14;
    return;
  }

  __break(1u);
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v23 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  _swift_isClassOrObjCExistentialType();
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (v3 < 0 || (v3 & 0x4000000000000000) != 0))
  {
    goto LABEL_21;
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v10 = v3 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v10 = v3;
  }

  for (i = *(v10 + 16); ; i = MEMORY[0x1CCA7C780](v18))
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v12;
    }

    v25 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if ((i & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_21:
    if (v3 < 0)
    {
      v18 = v3;
    }

    else
    {
      v18 = v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v13 = 0;
  v12 = v25;
  v20 = v5;
  v21 = v3 & 0xC000000000000001;
  v22 = (v4 + 16);
  while ((_swift_isClassOrObjCExistentialType() & 1) == 0 || !v21)
  {
    v14 = v3;
    (*(v4 + 16))(v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, a2);
LABEL_13:
    (*(v4 + 32))(v23, v8, a2);
    swift_dynamicCast();
    v25 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v12 = v25;
    }

    ++v13;
    *(v12 + 16) = v16 + 1;
    outlined init with take of Any(v24, (v12 + 32 * v16 + 32));
    v3 = v14;
    if (i == v13)
    {
      return v12;
    }
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  if (v20 == 8)
  {
    v14 = v3;
    *&v24[0] = result;
    (*v22)(v8, v24, a2);
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t PublisherProtocol.scan<A>(_:nextPartialResult:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, Class *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = (*(a6 + 24))(a4, a6);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a2;
  v18[6] = a3;
  v19 = objc_allocWithZone(*a8);
  aBlock[4] = a10;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed A, @in_guaranteed Any) -> (@owned A);
  aBlock[3] = a11;
  v20 = _Block_copy(aBlock);

  v21 = [v19 initWithUpstream:v17 initialResult:a1 nextPartialResult:v20];
  swift_unknownObjectRelease();
  _Block_release(v20);

  *a9 = v21;
  return result;
}

uint64_t closure #1 in PublisherProtocol.scan<A>(_:nextPartialResult:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  outlined init with copy of Any(a2, v11);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  v9 = a3(a1);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t PublisherProtocol.map<A>(transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = (*(a4 + 24))(a3, a4);
  v9 = objc_allocWithZone(BPSMap);
  v13[4] = a1;
  v13[5] = a2;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@owned B);
  v13[3] = &block_descriptor_9_0;
  v10 = _Block_copy(v13);

  v11 = [v9 initWithUpstream:v8 transform:v10];
  swift_unknownObjectRelease();
  _Block_release(v10);

  *a5 = v11;
  return result;
}

uint64_t PublisherProtocol.filter(isIncluded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = (*(a4 + 24))(a3, a4);
  v9 = objc_allocWithZone(BPSFilter);
  v13[4] = a1;
  v13[5] = a2;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
  v13[3] = &block_descriptor_12_0;
  v10 = _Block_copy(v13);

  v11 = [v9 initWithUpstream:v8 isIncluded:v10];
  swift_unknownObjectRelease();
  _Block_release(v10);

  *a5 = v11;
  return result;
}

uint64_t PublisherProtocol.flatMap<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v15 = (*(a6 + 24))(a3, a6);
  v17 = BPSDemandMax(1, v16);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a1;
  v18[8] = a2;
  v19 = objc_allocWithZone(BPSFlatMap);
  aBlock[4] = partial apply for closure #1 in PublisherProtocol.flatMap<A, B>(_:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@owned B);
  aBlock[3] = &block_descriptor_18_0;
  v20 = _Block_copy(aBlock);

  v21 = [v19 initWithUpstream:v15 maxPublishers:v17 transform:v20];
  swift_unknownObjectRelease();
  _Block_release(v20);

  *a8 = v21;
  return result;
}

uint64_t closure #1 in PublisherProtocol.flatMap<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a6 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  v15 = (*(a8 + 24))(a6, a8);
  (*(v10 + 8))(v13, a6);
  return v15;
}

uint64_t PublisherProtocol.orderedMerge<A>(with:comparator:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v14 = (*(a5 + 24))(a3, a5);
  v15 = (*(a6 + 24))(a4, a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a1;
  v16[7] = a2;
  v17 = objc_allocWithZone(BPSOrderedMerge);
  v21[4] = partial apply for closure #1 in PublisherProtocol.orderedMerge<A>(with:comparator:);
  v21[5] = v16;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any) -> (@unowned NSComparisonResult);
  v21[3] = &block_descriptor_24_0;
  v18 = _Block_copy(v21);

  v19 = [v17 initWithA:v14 b:v15 comparator:v18];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(v18);

  *a7 = v19;
  return result;
}

uint64_t PublisherProtocol.orderedMergeAny<A>(with:comparator:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v12 = (*(a5 + 24))(a3, a5);
  v13 = (*(a6 + 24))(a4, a6);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = objc_allocWithZone(BPSOrderedMerge);
  v19[4] = partial apply for closure #1 in PublisherProtocol.orderedMergeAny<A>(with:comparator:);
  v19[5] = v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any) -> (@unowned NSComparisonResult);
  v19[3] = &block_descriptor_30_0;
  v16 = _Block_copy(v19);

  v17 = [v15 initWithA:v12 b:v13 comparator:v16];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(v16);

  *a7 = v17;
  return result;
}

uint64_t PublisherProtocol.orderedMergeManyAny<A>(with:comparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v42 = a6;
  v49 = a7;
  v41 = a4;
  v13 = *(a5 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v37 = v15;
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1CCA7C710](v14, v17);
  v40 = a3;
  if (v18)
  {
    v19 = v18;
    v55 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 & ~(v18 >> 63), 0);
    if (v19 < 0)
    {
      goto LABEL_21;
    }

    v38 = a2;
    v39 = a8;
    v21 = 0;
    v22 = v55;
    v45 = *(v49 + 24);
    v46 = v49 + 24;
    v47 = v19;
    v48 = a1 & 0xFFFFFFFFFFFFFF8;
    v43 = a1 & 0xC000000000000001;
    v44 = (v13 + 16);
    while (1)
    {
      if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && v43)
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v37 != 8)
        {
          goto LABEL_22;
        }

        *&aBlock = result;
        (*v44)(v16, &aBlock, a5);
        swift_unknownObjectRelease();
      }

      else
      {
        result = _swift_isClassOrObjCExistentialType();
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        v23 = v48;
        if ((result & 1) == 0)
        {
          v23 = a1;
        }

        if (v21 >= *(v23 + 16))
        {
          goto LABEL_20;
        }

        (*(v13 + 16))(v16, a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, a5);
      }

      v24 = v45(a5, v49);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      *&aBlock = v24;
      (*(v13 + 8))(v16, a5);
      v55 = v22;
      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v22 = v55;
      }

      ++v21;
      *(v22 + 16) = v26 + 1;
      outlined init with take of Any(&aBlock, (v22 + 32 * v26 + 32));
      if (v47 == v21)
      {
        a2 = v38;
        a8 = v39;
        break;
      }
    }
  }

  v27 = objc_allocWithZone(MEMORY[0x1E695DF70]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v29 = [v27 initWithArray_];

  [v29 addObject_];
  swift_unknownObjectRelease();
  *&aBlock = 0;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BPSPublisher_pMd, &_sSo12BPSPublisher_pMR);
  result = static Array._forceBridgeFromObjectiveC(_:result:)();
  if (!aBlock)
  {
    goto LABEL_23;
  }

  v31 = swift_allocObject();
  v32 = v40;
  *(v31 + 16) = a2;
  *(v31 + 24) = v32;
  v33 = objc_allocWithZone(BPSOrderedMerge);

  v34 = Array._bridgeToObjectiveC()().super.isa;

  v53 = partial apply for closure #2 in PublisherProtocol.orderedMergeManyAny<A>(with:comparator:);
  v54 = v31;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v51 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any) -> (@unowned NSComparisonResult);
  AssociatedTypeWitness = &block_descriptor_36_0;
  v35 = _Block_copy(&aBlock);
  v36 = [v33 initWithPublishers:v34 comparator:v35];

  _Block_release(v35);

  *a8 = v36;
  return result;
}

uint64_t PublisherProtocol.orderedMerge<A>(withOthers:comparator:)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v45 = a7;
  v39 = a4;
  v13 = a1;
  v15 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v33 = v17;
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1CCA7C710](v16, v19);
  v21 = MEMORY[0x1E69E7CC0];
  if (!v20)
  {
LABEL_15:
    v47 = v21;
    v13 = v39;
    (*(a6 + 24))(v39, a6);
    MEMORY[0x1CCA7C6B0]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v22 = v20;
  v38 = v8;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v22 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v34 = a2;
  v35 = a6;
  v36 = a3;
  v37 = a8;
  a6 = 0;
  v42 = *(v45 + 24);
  v43 = v45 + 24;
  v44 = v13 & 0xFFFFFFFFFFFFFF8;
  v40 = v13 & 0xC000000000000001;
  v41 = (v15 + 16);
  a2 = (v15 + 8);
  a3 = v22;
  while (1)
  {
    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && v40)
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v33 != 8)
      {
        goto LABEL_21;
      }

      v47 = result;
      (*v41)(v18, &v47, a5);
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if ((a6 & 0x8000000000000000) != 0)
    {
      break;
    }

    v25 = v44;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v25 = v13;
    }

    if (a6 >= *(v25 + 16))
    {
      goto LABEL_18;
    }

    (*(v15 + 16))(v18, v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * a6, a5);
LABEL_11:
    ++a6;
    a8 = v42(a5, v45);
    (*a2)(v18, a5);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v22 == a6)
    {
      v21 = aBlock[0];
      a8 = v37;
      a6 = v35;
      a3 = v36;
      a2 = v34;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_16:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v26 = swift_allocObject();
  v26[2] = v13;
  v26[3] = a5;
  v27 = v45;
  v26[4] = a6;
  v26[5] = v27;
  v26[6] = a2;
  v26[7] = a3;
  v28 = objc_allocWithZone(BPSOrderedMerge);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BPSPublisher_pMd, &_sSo12BPSPublisher_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = partial apply for closure #2 in PublisherProtocol.orderedMerge<A>(withOthers:comparator:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any) -> (@unowned NSComparisonResult);
  aBlock[3] = &block_descriptor_42_0;
  v30 = _Block_copy(aBlock);
  v31 = [v28 initWithPublishers:isa comparator:v30];

  _Block_release(v30);

  *a8 = v31;
  return result;
}

uint64_t closure #1 in PublisherProtocol.orderedMerge<A>(with:comparator:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  outlined init with copy of Any(a1, v14);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  v9 = v13;
  outlined init with copy of Any(a2, v12);
  swift_dynamicCast();
  v10 = a3(v9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t PublisherProtocol.last()@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, void *a3@<X8>)
{
  v4 = [objc_allocWithZone(*a2) initWithUpstream_];
  result = swift_unknownObjectRelease();
  *a3 = v4;
  return result;
}

uint64_t PublisherProtocol.debounce(for:getTimestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  v10 = (*(a4 + 24))(a3, a4);
  v11 = objc_allocWithZone(BPSDebounce);
  v15[4] = a1;
  v15[5] = a2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@out Date);
  v15[3] = &block_descriptor_45_0;
  v12 = _Block_copy(v15);

  v13 = [v11 initWithUpstream:v10 for:v12 getTimestamp:a6];
  swift_unknownObjectRelease();
  _Block_release(v12);

  *a5 = v13;
  return result;
}

uint64_t PublisherProtocol.throttle(for:latest:getTimestamp:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>, double a7@<D0>)
{
  v12 = (*(a5 + 24))(a4, a5);
  v13 = objc_allocWithZone(BPSThrottle);
  v17[4] = a2;
  v17[5] = a3;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@out Date);
  v17[3] = &block_descriptor_48_0;
  v14 = _Block_copy(v17);

  v15 = [v13 initWithUpstream:v12 interval:a1 & 1 latest:v14 getTimestamp:a7];
  swift_unknownObjectRelease();
  _Block_release(v14);

  *a6 = v15;
  return result;
}

uint64_t PublisherProtocol.merge<A>(with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, Class *a5@<X5>, void *a6@<X8>)
{
  v10 = (*(a3 + 24))(a1, a3);
  v11 = [objc_allocWithZone(*a5) initWithA:v10 b:{(*(a4 + 24))(a2, a4)}];
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  *a6 = v11;
  return result;
}

void PublisherProtocol.zip<A>(with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v36 = a5;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1CCA7C710](v14, v16);
  v18 = MEMORY[0x1E69E7CC0];
  if (!v17)
  {
LABEL_15:
    v38 = v18;
    (*(a4 + 24))(a2, a4);
    MEMORY[0x1CCA7C6B0]();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v19 = v17;
  v30 = v6;
  v38 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v19 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v26 = v13;
  v27 = a2;
  v28 = a4;
  v29 = a6;
  a6 = 0;
  v33 = *(v36 + 24);
  v34 = v36 + 24;
  v35 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = a1 & 0xC000000000000001;
  v32 = (v12 + 16);
  while (1)
  {
    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && v31)
    {
      v22 = _ArrayBuffer._getElementSlowPath(_:)();
      if (v26 != 8)
      {
        goto LABEL_21;
      }

      v37 = v22;
      (*v32)(v15, &v37, a3);
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if ((a6 & 0x8000000000000000) != 0)
    {
      break;
    }

    v21 = v35;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v21 = a1;
    }

    if (a6 >= *(v21 + 16))
    {
      goto LABEL_18;
    }

    (*(v12 + 16))(v15, a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * a6, a3);
LABEL_11:
    ++a6;
    v33(a3, v36);
    (*(v12 + 8))(v15, a3);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v19 == a6)
    {
      v18 = v38;
      a6 = v29;
      a2 = v27;
      a4 = v28;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_16:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BPSPublisher_pMd, &_sSo12BPSPublisher_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = [objc_allocWithZone(BPSZipMany) initWithPublishers_];

  *a6 = v24;
}

uint64_t PublisherProtocol.correlate<A, B, C>(_:comparator:correlateHandler:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v13 = (*(a7 + 24))(a4);
  v14 = (*(a8 + 24))(a5, a8);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = objc_allocWithZone(BPSCorrelate);
  v20[4] = partial apply for closure #2 in PublisherProtocol.orderedMergeManyAny<A>(with:comparator:);
  v20[5] = v15;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any) -> (@unowned NSComparisonResult);
  v20[3] = &block_descriptor_54_0;
  v17 = _Block_copy(v20);

  v18 = [v16 initWithPrior:v13 current:v14 comparator:v17 correlateHandler:a3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(v17);

  *a6 = v18;
  return result;
}

uint64_t closure #1 in PublisherProtocol.orderedMergeAny<A>(with:comparator:)(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = __swift_project_boxed_opaque_existential_0(a1, v5);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (*(*(v5 - 8) + 64) != 8)
    {
      __break(1u);
      goto LABEL_11;
    }

    v8 = *v6;
    swift_unknownObjectRetain();
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
    v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  v9 = a2[3];
  v10 = __swift_project_boxed_opaque_existential_0(a2, v9);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    (*(v16 + 16))(&v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v9);
    v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    goto LABEL_7;
  }

  if (*(*(v9 - 8) + 64) == 8)
  {
    v11 = *v10;
    swift_unknownObjectRetain();
LABEL_7:
    v12 = a3(v8, v11);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v12;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t PublisherProtocol.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v24 = (*(a13 + 24))(a12);
  if (a1)
  {
    v30 = a1;
    v31 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
    v29 = &block_descriptor_69_0;
    a1 = _Block_copy(&aBlock);

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a3)
  {
LABEL_3:
    v30 = a3;
    v31 = a4;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
    v29 = &block_descriptor_66_0;
    a3 = _Block_copy(&aBlock);
  }

LABEL_4:
  if (a5)
  {
    v30 = a5;
    v31 = a6;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
    v29 = &block_descriptor_63_0;
    a5 = _Block_copy(&aBlock);
  }

  if (a7)
  {
    v30 = a7;
    v31 = a8;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed () -> ();
    v29 = &block_descriptor_60_0;
    a7 = _Block_copy(&aBlock);
  }

  if (a10)
  {
    v30 = a10;
    v31 = a11;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed (@unowned BPSDemand) -> ();
    v29 = &block_descriptor_57_0;
    v21 = _Block_copy(&aBlock);
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_allocWithZone(BPSHandleEvents) initWithUpstream:v24 receiveSubscription:a1 receiveOutput:a3 receiveCompletion:a5 receiveCancel:a7 receiveRequest:v21];
  _Block_release(v21);
  _Block_release(a7);
  _Block_release(a5);
  _Block_release(a3);
  _Block_release(a1);
  result = swift_unknownObjectRelease();
  *a9 = v22;
  return result;
}

uint64_t PublisherProtocol.buffer(size:prefetch:whenFull:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = [objc_allocWithZone(BPSBuffer) initWithUpstream:(*(a5 + 24))(a4 size:a5) prefetch:a1 whenFull:{a2, a3}];
  result = swift_unknownObjectRelease();
  *a6 = v7;
  return result;
}

uint64_t PublisherProtocol.compactMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a1;
  v12[6] = a2;
  v13 = *(a5 + 24);

  v14 = v13(a3, a5);
  v16 = BPSDemandMax(1, v15);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = type metadata accessor for Publishers.Sequence(0, a4, v18, v19);
  v17[5] = a5;
  v17[6] = swift_getWitnessTable();
  v17[7] = partial apply for closure #1 in PublisherProtocol.compactMap<A>(_:);
  v17[8] = v12;
  v20 = objc_allocWithZone(BPSFlatMap);
  v24[4] = closure #1 in PublisherProtocol.flatMap<A, B>(_:)partial apply;
  v24[5] = v17;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@owned B);
  v24[3] = &block_descriptor_79;
  v21 = _Block_copy(v24);

  v22 = [v20 initWithUpstream:v14 maxPublishers:v16 transform:v21];
  swift_unknownObjectRelease();
  _Block_release(v21);

  *a6 = v22;
  return result;
}

void closure #1 in PublisherProtocol.compactMap<A>(_:)(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v5 = a1();
  if (v5)
  {
    v6 = v5;
    getContiguousArrayStorageType<A>(for:)(a2, a2);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C8763B40;
    *(v7 + 32) = v6;
    v8 = objc_allocWithZone(BPSSequence);
    swift_unknownObjectRetain();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [v8 initWithSequence_];

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = objc_allocWithZone(BPSSequence);
    v12 = Array._bridgeToObjectiveC()().super.isa;
    v10 = [v11 initWithSequence_];
  }

  *a3 = v10;
}

void Array<A>.bmPublisher.getter(void *a1@<X8>)
{
  v2 = objc_allocWithZone(BPSSequence);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithSequence_];

  *a1 = v4;
}

id thunk for @escaping @callee_guaranteed (@guaranteed A, @in_guaranteed Any) -> (@owned A)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v7[3] = MEMORY[0x1E69E7C98] + 8;
  v7[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = v4(a2, v7);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v7);

  return v5;
}

id thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@owned B)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();

  return v4;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any) -> (@unowned NSComparisonResult)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);

  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

Class thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@out Date)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);

  v8 = swift_unknownObjectRetain();
  v7(v8);

  swift_unknownObjectRelease();
  v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v9.super.isa;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned BPSDemand) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

id BookmarkablePublisher.inner.getter()
{
  v0 = specialized BookmarkablePublisher.inner.getter();

  return v0;
}

uint64_t BookmarkablePublisher.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for BMBookmarkablePublisherImpl(0, a3, a4, a5);
  v8 = objc_allocWithZone(v7);
  *&v8[direct field offset for BMBookmarkablePublisherImpl.inner] = a1;
  v10.receiver = v8;
  v10.super_class = v7;
  objc_msgSendSuper2(&v10, sel_init);
  objc_opt_self();
  result = swift_dynamicCastObjCClassUnconditional();
  *a2 = result;
  return result;
}

id protocol witness for PublisherProtocol.inner.getter in conformance BookmarkablePublisher<A>()
{
  v0 = specialized BookmarkablePublisher.inner.getter();

  return v0;
}

void @objc BMBookmarkablePublisherImpl.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  BMBookmarkablePublisherImpl.subscribe(_:)(a3);
  swift_unknownObjectRelease();
}

Class @objc BMBookmarkablePublisherImpl.bookmarkableUpstreams.getter(void *a1)
{
  v1 = a1;
  v2 = BMBookmarkablePublisherImpl.bookmarkableUpstreams.getter();

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BPSPublisherCMd, &_sSo12BPSPublisherCMR);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t BMBookmarkablePublisherImpl.bookmarkableUpstreams.getter()
{
  v1 = [*(v0 + direct field offset for BMBookmarkablePublisherImpl.inner) bookmarkableUpstreams];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BPSPublisherCMd, &_sSo12BPSPublisherCMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id static BMBookmarkablePublisherImpl.publisher(with:upstreams:bookmarkState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BPSPublisherCMd, &_sSo12BPSPublisherCMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v10 = (*MEMORY[0x1E69E7D40] & *type metadata accessor for BMBookmarkablePublisherImpl(0, *(v3 + 80), v8, v9));
  v13.receiver = ObjCClassFromMetadata;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, sel_publisherWithPublisher_upstreams_bookmarkState_, a1, isa, a3);

  return v11;
}

id @objc static BMBookmarkablePublisherImpl.publisher(with:upstreams:bookmarkState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BPSPublisherCMd, &_sSo12BPSPublisherCMR);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = static BMBookmarkablePublisherImpl.publisher(with:upstreams:bookmarkState:)(v8, v7, a5);

  swift_unknownObjectRelease();

  return v9;
}

id BMBookmarkablePublisherImpl.withBookmark(_:)(uint64_t a1)
{
  v2 = [*(v1 + direct field offset for BMBookmarkablePublisherImpl.inner) withBookmark_];

  return v2;
}

id @objc BMBookmarkablePublisherImpl.withBookmark(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = BMBookmarkablePublisherImpl.withBookmark(_:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

BOOL @objc BMBookmarkablePublisherImpl.canStoreInternalStateInBookmark()(void *a1)
{
  v1 = a1;
  v2 = BMBookmarkablePublisherImpl.canStoreInternalStateInBookmark()();

  return v2;
}

BOOL @objc BMBookmarkablePublisherImpl.canStorePassThroughValueInBookmark()(void *a1)
{
  v1 = a1;
  v2 = BMBookmarkablePublisherImpl.canStorePassThroughValueInBookmark()();

  return v2;
}

id BMBookmarkablePublisherImpl.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BMBookmarkablePublisherImpl(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t instantiation function for generic protocol witness table for BookmarkablePublisher<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata instantiation function for BookmarkablePublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void __getBMDSLSubscribeOnClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMDSLSubscribeOnClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BPSSink.m" lineNumber:22 description:{@"Unable to find class %s", "BMDSLSubscribeOn"}];

  __break(1u);
}

void __getBMDSLSubscribeOnClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeDSLLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BPSSink.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getBMDSLSubscribeOnClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMDSLSubscribeOnClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BPSDrivableSink.m" lineNumber:22 description:{@"Unable to find class %s", "BMDSLSubscribeOn"}];

  __break(1u);
}

void __getBMDSLSubscribeOnClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeDSLLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BPSDrivableSink.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}