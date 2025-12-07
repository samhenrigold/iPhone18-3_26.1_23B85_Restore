uint64_t SAMachTimeFromSecondsUsingLiveTimebase(double a1)
{
  if (_MergedGlobals_7 != -1)
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_9);
  }

  if (HIDWORD(qword_1EDD032B0))
  {
    v2 = qword_1EDD032B0 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  result = (a1 * 1000000000.0);
  if (HIDWORD(qword_1EDD032B0) != qword_1EDD032B0)
  {
    return __udivti3();
  }

  return result;
}

id DictGetNumber(void *a1, uint64_t a2)
{
  v4 = objc_opt_class();

  return _DictGet(a1, a2, v4);
}

id SACachedNSString(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EDD03290 != -1)
  {
    dispatch_once(&qword_1EDD03290, &__block_literal_global_113);
  }

  os_unfair_lock_lock(&stru_1EDD0326C);
  v2 = [qword_1EDD03288 member:a1];
  if (!v2)
  {
    v3 = [a1 copy];
    if (!v3)
    {
      v5 = *__error();
      v6 = _sa_logt();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v8 = [a1 UTF8String];
        _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "Unable to copy %s", buf, 0xCu);
      }

      *__error() = v5;
      _SASetCrashLogMessage(1502, "Unable to copy %s", [a1 UTF8String]);
      _os_crash();
      __break(1u);
    }

    v2 = v3;
    [qword_1EDD03288 addObject:v3];
  }

  os_unfair_lock_unlock(&stru_1EDD0326C);

  return v2;
}

id CopyCleanSegmentName(void *a1)
{
  if ([a1 hasSuffix:@" SEGMENT"])
  {
    os_unfair_lock_lock(&stru_1EDD031D4);
    v2 = qword_1EDD031E0;
    if (!qword_1EDD031E0)
    {
      v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
      v4 = qword_1EDD031E0;
      qword_1EDD031E0 = v3;

      v2 = qword_1EDD031E0;
    }

    v5 = [v2 objectForKeyedSubscript:a1];
    if (!v5)
    {
      v6 = [a1 stringByReplacingOccurrencesOfString:@" SEGMENT" withString:&stru_1F5BBF440];
      v5 = SACachedNSString(v6);

      [qword_1EDD031E0 setObject:v5 forKeyedSubscript:a1];
    }

    os_unfair_lock_unlock(&stru_1EDD031D4);
  }

  else
  {
    v5 = SACachedNSString(a1);
  }

  return v5;
}

void __SACachedNSString_block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v1 = qword_1EDD03288;
  qword_1EDD03288 = v0;
}

id _DictGet(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = [a1 objectForKeyedSubscript:a2];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id DictGetString(void *a1, uint64_t a2)
{
  v4 = objc_opt_class();

  return _DictGet(a1, a2, v4);
}

id uuidForString(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  if (!uuid_parse([a1 UTF8String], uu))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
    goto LABEL_10;
  }

  if ([a1 length] >= 0x20)
  {
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    v3 = [a1 substringWithRange:{0, 8}];
    v4 = [a1 substringWithRange:{8, 4}];
    v5 = [a1 substringWithRange:{12, 4}];
    v6 = [a1 substringWithRange:{16, 4}];
    v7 = [a1 substringWithRange:{20, 12}];
    v8 = [v2 initWithFormat:@"%@-%@-%@-%@-%@", v3, v4, v5, v6, v7];

    if (!uuid_parse([v8 UTF8String], uu))
    {
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];

      goto LABEL_10;
    }
  }

  v9 = *__error();
  v10 = _sa_logt();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = a1;
    _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "Unable to parse uuid %@", buf, 0xCu);
  }

  v11 = 0;
  *__error() = v9;
LABEL_10:

  return v11;
}

id DictGetArrayOfClass(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = _DictGet(a1, a2, v5);
  v7 = v6;
  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = v8;
  }

  else
  {
LABEL_12:
    v13 = 0;
  }

  return v13;
}

uint64_t SAFilepathMatches(void *a1, void *a2, _BYTE *a3)
{
  if (!a1)
  {
LABEL_5:
    result = 1;
    if (a3)
    {
      *a3 = 1;
    }

    return result;
  }

  if (![a1 isAbsolutePath])
  {
    v6 = [a2 length];
    if (v6 > [a1 length])
    {
      result = [a2 hasSuffix:a1];
      if (!result)
      {
        return result;
      }

      goto LABEL_5;
    }
  }

  if (a3)
  {
    *a3 = 0;
  }

  return [a1 hasSuffix:a2];
}

char *___debugMicrostackshots_block_invoke()
{
  result = getenv("SA_LOG_MICROSTACKSHOTS");
  if (result && (*result != 48 || result[1]))
  {
    byte_1EDD02EF3 = 1;
  }

  return result;
}

id uuidForBytes(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a1];

  return v1;
}

char *SAFilepathForCString(char *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    if (!*a1)
    {
LABEL_11:
      a1 = 0;
      goto LABEL_15;
    }

    if (*a1 == 47 && a1[1])
    {
      goto LABEL_10;
    }

    v2 = a1 - 1;
    do
    {
      v4 = *++v2;
      v3 = v4;
    }

    while ((v4 - 48) > 0xFFFFFFFD);
    if (v3)
    {
      if (strcmp(v2, "<unknown>"))
      {
        a1 = v2;
LABEL_10:
        a1 = SANSStringForCString(a1);
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    v5 = *__error();
    v6 = _sa_logt();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315138;
      v10 = v1;
      _os_log_debug_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_DEBUG, "%s is not a filepath", &v9, 0xCu);
    }

    v7 = __error();
    a1 = 0;
    *v7 = v5;
  }

LABEL_15:

  return a1;
}

id SANSStringForCString(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a1];
  v3 = v2;
  if (!v2)
  {
    if (a1)
    {
      v4 = *__error();
      v5 = _sa_logt();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315138;
        v9 = a1;
        _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "Unable to get NSString for cstr '%s'", &v8, 0xCu);
      }

      *__error() = v4;
    }

    v2 = @"(badstring)";
  }

  v6 = SACachedNSString(v2);

  return v6;
}

double SATimeOfBootForLiveMachine()
{
  if (qword_1EDD032A0 != -1)
  {
    dispatch_once(&qword_1EDD032A0, &__block_literal_global_142);
  }

  return *&qword_1EDD03298;
}

id DictForChunkViaNSPropertyList(uint64_t a1)
{
  v1 = ktrace_chunk_size();
  v2 = ktrace_chunk_map_data();
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = MEMORY[0x1E696AE40];
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v2 length:v1 freeWhenDone:0];
  v5 = [v3 propertyListWithData:v4 options:0 format:0 error:0];

  ktrace_chunk_unmap_data();
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_5:
      v5 = 0;
    }
  }

  return v5;
}

id DictGetDictOfClasses(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_class();
  v9 = _DictGet(a1, a2, v8);
  v10 = v9;
  if (v9 && (v15 = 0, v16 = &v15, v17 = 0x2020000000, v18 = 1, v14[0] = MEMORY[0x1E69E9820], v14[1] = 3221225472, v14[2] = __DictDoAllClassesMatch_block_invoke, v14[3] = &unk_1E86F6FF0, v14[5] = a3, v14[6] = a4, v14[4] = &v15, [v9 enumerateKeysAndObjectsUsingBlock:v14], v11 = *(v16 + 24), _Block_object_dispose(&v15, 8), v11 == 1))
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1E0E31BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DictDoAllClassesMatch_block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0 || (result = objc_opt_isKindOfClass(), (result & 1) == 0))
  {
    *(*(a1[4] + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

id DictGetDict(void *a1, uint64_t a2)
{
  v4 = objc_opt_class();

  return _DictGet(a1, a2, v4);
}

uint64_t SABinarySearchArray(void *a1, __int16 a2, uint64_t a3)
{
  v5 = [a1 count];
  v6 = [MEMORY[0x1E695DFB0] null];
  if (v5)
  {
    v32 = v6;
    v30 = a2 & 0x200;
    if (v5 < 0x101)
    {
      goto LABEL_9;
    }

    v7 = v5 - 1;
    v8 = [a1 objectAtIndex:v5 - 1];
    v9 = *(a3 + 16);
    if (v8 == v32)
    {
      v10 = v9(a3);
      if ((v10 & 0x8000000000000000) == 0)
      {
LABEL_5:
        if (v10 | a2 & 0x100)
        {
          v11 = [a1 objectAtIndex:0];

          v12 = (*(a3 + 16))(a3, v11);
          if (v12 < 0)
          {
            v13 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v12 | v30;
            if (v12 | v30)
            {

LABEL_9:
              v28 = a2;
              v29 = a2 & 0x300;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 2 << flsl(v5);
              v18 = a3;
              v19 = (a3 + 16);
              do
              {
                v7 = v14 + v17 / 2;
                if (v7 < v5)
                {
                  v20 = [a1 objectAtIndex:v14 + v17 / 2];
                  v21 = *v19;
                  if (v20 == v32)
                  {
                    v15 = v21(v18);
                  }

                  else
                  {
                    v15 = -(v21)(v18, v20);
                  }

                  if (!(v15 | v29))
                  {

                    goto LABEL_52;
                  }

                  if (v15)
                  {
                    v22 = 1;
                  }

                  else
                  {
                    v22 = v30 == 0;
                  }

                  v16 |= v15 == 0;
                  v23 = !v22 || v15 <= -1;
                  if (v23)
                  {
                    v14 += v17 / 2;
                  }
                }

                v23 = v17 <= 1;
                v17 /= 2;
              }

              while (!v23);
              LODWORD(v24) = v30 != 0;
              if (v15)
              {
                LODWORD(v24) = 0;
              }

              if (v15 < 0)
              {
                v24 = 1;
              }

              else
              {
                v24 = v24;
              }

              v25 = v14 + v24;
              v26 = v14 + (v15 >> 63);
              if ((v16 & 1) == 0)
              {
                v26 = 0x7FFFFFFFFFFFFFFFLL;
              }

              if ((v28 & 0x400) != 0)
              {
                v7 = v25;
              }

              else
              {
                v7 = v26;
              }

              goto LABEL_52;
            }
          }

          if ((a2 & 0x400) != 0)
          {
            v7 = 0;
          }

          else
          {
            v7 = v13;
          }

          v8 = v11;
LABEL_51:

LABEL_52:
          v6 = v32;
          goto LABEL_53;
        }

LABEL_43:
        if ((a2 & 0x400) != 0)
        {
          v7 = v5;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v10 = -(v9)(a3, v8);
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    v7 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_43;
  }

  if ((a2 & 0x400) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_53:

  return v7;
}

void sub_1E0E326A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
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

id _SABinaryCreateLoadInfoArrayFromDyldImageInfos(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, NSObject *a6)
{
  LODWORD(v6) = a6;
  v34 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (a4 || !a5)
    {
      goto LABEL_12;
    }

    v11 = *__error();
    v6 = _sa_logt();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v33 = a5;
      _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "%d text exec load infos, but NULL pointer", buf, 8u);
    }

    *__error() = v11;
    _SASetCrashLogMessage(3193, "%d text exec load infos, but NULL pointer", a5);
    _os_crash();
    __break(1u);
  }

  v12 = 0;
  if (!a4 || !a5)
  {
    goto LABEL_26;
  }

  if (!a1 && a2)
  {
    v28 = *__error();
    v29 = _sa_logt();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v33 = a2;
      _os_log_error_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_ERROR, "%d load infos, but NULL pointer", buf, 8u);
    }

    *__error() = v28;
    _SASetCrashLogMessage(3192, "%d load infos, but NULL pointer", a2);
    _os_crash();
    __break(1u);
  }

LABEL_12:
  v30 = a4;
  v31 = a5;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(a5 + a2)];
  if (a2)
  {
    v14 = 0;
    v15 = a2;
    v16 = a1 + 8;
    do
    {
      v17 = uuidForBytes(v16);
      v18 = 0;
      if (!v14 && (v6 & 1) == 0)
      {
        if ([a3 isAbsolutePath])
        {
          v18 = a3;
        }

        else
        {
          v18 = 0;
        }
      }

      v19 = [SABinary binaryWithUUID:v17 absolutePath:v18];
      v20 = [SABinaryLoadInfo binaryLoadInfoWithBinary:v19 loadAddress:*(v16 - 8) isInKernelAddressSpace:v6 exclave:0];
      [v13 addObject:v20];

      ++v14;
      v16 += 24;
    }

    while (v15 != v14);
  }

  if (v31)
  {
    v21 = v31;
    v22 = v30 + 8;
    do
    {
      v23 = uuidForBytes(v22);
      v24 = [SABinary binaryWithUUID:v23 absolutePath:0];
      v25 = [(SABinary *)v24 segmentWithCleanName:0 length:0x7FFFFFFFFFFFFFFFLL offsetIntoBinary:?];
      v26 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v25 loadAddress:*(v22 - 8) isInKernelAddressSpace:v6 exclave:0];
      [v13 addObject:v26];

      v22 += 24;
      --v21;
    }

    while (v21);
  }

  if (v6)
  {
    [v13 sortUsingComparator:&__block_literal_global_771];
  }

  v12 = [v13 copy];

LABEL_26:

  return v12;
}

void sub_1E0E33110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E37C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1E0E37E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E44950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_CopyStringForTime(int a1, int8x16_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  memset(&v21, 0, sizeof(v21));
  v20 = (*MEMORY[0x1E695E468] + *a2.i64);
  localtime_r(&v20, &v21);
  v3 = strftime(v26, 0x40uLL, "%Y-%m-%d %T", &v21);
  if (!v3)
  {
    return &stru_1F5BBF440;
  }

  v5 = v3;
  if (v3 >= 0x40)
  {
    v13 = *__error();
    v14 = _sa_logt();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315138;
      v25 = v26;
      _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "%s", __str, 0xCu);
    }

    *__error() = v13;
    _SASetCrashLogMessage(89, "%s", v26);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (a1 >= 1)
  {
    *v4.i64 = *a2.i64 - trunc(*a2.i64);
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    snprintf(__str, 0x10uLL, "%0.*f", a1, *vbslq_s8(vnegq_f64(v6), v4, a2).i64);
    v5 += strlcpy(&v26[v5], &__str[1], 64 - v5);
    if (v5 >= 0x40)
    {
      goto LABEL_19;
    }
  }

  v7 = strftime(&v26[v5], 64 - v5, " %z", &v21);
  if (!v7)
  {
    v26[v5] = 0;
  }

  if (v7 + v5 >= 0x40)
  {
LABEL_16:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315138;
      v25 = v26;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "%s", __str, 0xCu);
    }

    *__error() = v15;
    _SASetCrashLogMessage(117, "%s", v26);
    _os_crash();
    __break(1u);
LABEL_19:
    v17 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = v26;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    *__error() = v17;
    _SASetCrashLogMessage(101, "%s", v26);
    _os_crash();
    __break(1u);
  }

  v8 = SANSStringForCString(v26);
  v9 = v8;
  v10 = &stru_1F5BBF440;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  return v11;
}

id KTraceStringFromArguments(uint64_t a1, uint64_t a2, unsigned int a3)
{
  is_kernel_64_bit = ktrace_is_kernel_64_bit();
  v6 = 5 - a3;
  if (is_kernel_64_bit)
  {
    v7 = (8 * v6);
    v8 = (a2 + 24);
    if (a3 == 1)
    {
      v8 = (a2 + 8);
    }

    v9 = 0;
    if (a3 == 2)
    {
      v10 = (a2 + 16);
    }

    else
    {
      v10 = v8;
    }

    goto LABEL_12;
  }

  v7 = (4 * v6);
  v11 = malloc_type_calloc(v7, 1uLL, 0x100004077774924uLL);
  v9 = v11;
  if (a3 <= 1)
  {
    *v11 = *(a2 + 8);
    v12 = (v11 + 1);
LABEL_10:
    v12->i32[0] = *(a2 + 16);
    v12 = (v12 + 4);
    goto LABEL_11;
  }

  v12 = v11;
  if (a3 == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  *v12 = vmovn_s64(*(a2 + 24));
  v10 = v11;
LABEL_12:
  v13 = 0;
  while (*(v10 + v13))
  {
    if (v7 == ++v13)
    {
      v13 = v7;
LABEL_17:
      v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithBytes:v10 length:v13 encoding:4];
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  if (v13)
  {
    goto LABEL_17;
  }

  v14 = 0;
  if (v9)
  {
LABEL_18:
    free(v9);
  }

LABEL_19:

  return v14;
}

id _sa_logt()
{
  if (qword_1EDD02EE0 != -1)
  {
    dispatch_once(&qword_1EDD02EE0, &__block_literal_global_0);
  }

  v1 = qword_1EDD02ED8;

  return v1;
}

void sub_1E0E46DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double SASecondsFromMachTimeUsingLiveTimebase(uint64_t a1)
{
  if (_MergedGlobals_7 != -1)
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_9);
  }

  if (HIDWORD(qword_1EDD032B0))
  {
    v2 = qword_1EDD032B0 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    a1 = 0;
  }

  else if (qword_1EDD032B0 != HIDWORD(qword_1EDD032B0))
  {
    a1 = __udivti3();
  }

  return a1 / 1000000000.0;
}

id SAExecutablePath(int a1, const char *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    v4 = 0;
    goto LABEL_31;
  }

  if (a2)
  {
    if (*a2)
    {
      v3 = a2;
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

  v5 = 0;
  LODWORD(v6) = 0;
  do
  {
    if (v6)
    {
      v6 = (2 * v6);
    }

    else
    {
      v6 = 1024;
    }

    if (v5)
    {
      free(v5);
    }

    v5 = malloc_type_calloc(v6, 1uLL, 0xAD1672FDuLL);
    v7 = proc_pidpath(a1, v5, v6);
  }

  while (v7 >= v6);
  if (!v7)
  {
    if (kill(a1, 0))
    {
      v4 = 0;
    }

    else
    {
      v13 = *__error();
      v14 = _sa_logt();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = *__error();
        v17 = 67109376;
        *v18 = a1;
        *&v18[4] = 1024;
        *&v18[6] = v16;
        _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "unable to get path for %d: %{errno}d", &v17, 0xEu);
      }

      v4 = 0;
      *__error() = v13;
    }

    goto LABEL_30;
  }

  if (v3)
  {
    v8 = rindex(v5, 47);
    if (!v8)
    {
      v11 = *__error();
      v12 = _sa_logt();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315650;
        *v18 = v3;
        *&v18[8] = 1024;
        v19 = a1;
        v20 = 2080;
        v21 = v5;
        _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s [%d] path %s has no path components", &v17, 0x1Cu);
      }

      goto LABEL_26;
    }

    v9 = v8;
    v10 = strlen(v3);
    if (strncmp(v3, v9 + 1, v10))
    {
      v11 = *__error();
      v12 = _sa_logt();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136315650;
        *v18 = v3;
        *&v18[8] = 1024;
        v19 = a1;
        v20 = 2080;
        v21 = v5;
        _os_log_debug_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_DEBUG, "%s [%d] exec'ed into %s", &v17, 0x1Cu);
      }

LABEL_26:

      v4 = 0;
      *__error() = v11;
      goto LABEL_30;
    }
  }

  v4 = SANSStringForCString(v5);
LABEL_30:
  free(v5);
LABEL_31:

  return v4;
}

id SACopySanitizedStringWhitespaceOnlyNullable(void *a1)
{
  if (a1)
  {
    a1 = SACopySanitizedString(a1, 1, 0);
    v1 = vars8;
  }

  return a1;
}

__CFString *_shared_cache_display_string(uint64_t a1)
{
  if (!a1 || ([MEMORY[0x1E695DFB0] null], v2 = objc_claimAutoreleasedReturnValue(), v2, v2 == a1))
  {
    v3 = @"None";
    goto LABEL_17;
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [a1 slidBaseAddress];
  v5 = [a1 slide];
  v6 = [a1 uuid];
  v7 = v6;
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      [(__CFString *)v3 appendFormat:@"%@", v6, v11, v12];
    }

    else
    {
      -[__CFString appendFormat:](v3, "appendFormat:", @"%@ slide 0x%llx", v6, [a1 slide], v12);
    }
  }

  else
  {
    v8 = [a1 slidBaseAddress];
    if (v5 == -1)
    {
      [(__CFString *)v3 appendFormat:@"%@ slid base address 0x%llx", v7, v8, v12];
    }

    else
    {
      -[__CFString appendFormat:](v3, "appendFormat:", @"%@ slid base address 0x%llx, slide 0x%llx", v7, v8, [a1 slide]);
    }
  }

  v9 = *(a1 + 28);
  if (v9)
  {
    [(__CFString *)v3 appendFormat:@" (System Primary)"];
    v9 = *(a1 + 28);
    if ((v9 & 2) == 0)
    {
LABEL_13:
      if ((v9 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_13;
  }

  [(__CFString *)v3 appendFormat:@" (DriverKit)"];
  if ((*(a1 + 28) & 4) != 0)
  {
LABEL_14:
    [(__CFString *)v3 appendFormat:@" (Rosetta)"];
  }

LABEL_15:
  if (*(a1 + 25))
  {
    [(__CFString *)v3 appendFormat:@" (Exclave)"];
  }

LABEL_17:

  return v3;
}

id SACopySanitizedString(void *a1, int a2, unint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 && [v5 rangeOfString:@"[^\\S ]" options:1024] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v6 stringByReplacingOccurrencesOfString:@"[^\\S ]" withString:@" " options:1024 range:{0, objc_msgSend(v6, "length")}];

    v6 = v7;
  }

  if (a3 && [v6 length] > a3)
  {
    v8 = [v6 substringWithRange:{0, a3}];

    v6 = v8;
  }

  return v6;
}

id SAFormattedBytesEx(unint64_t a1, int a2, int a3, int a4, unint64_t a5)
{
  v8 = 1000;
  if (a2)
  {
    v8 = 1024;
    v9 = 0x100000;
  }

  else
  {
    v9 = 1000000;
  }

  if (a2)
  {
    v10 = 0x40000000;
  }

  else
  {
    v10 = 1000000000;
  }

  if (a3)
  {
    v11 = "i";
  }

  else
  {
    v11 = "";
  }

  if (10 * v8 <= a1 || v8 <= a5)
  {
    if (10 * v9 <= a1 || v9 <= a5)
    {
      v20 = a1;
      v21 = objc_alloc(MEMORY[0x1E696AEC0]);
      v22 = " ";
      if (!a4)
      {
        v22 = "";
      }

      if (10 * v10 <= a1 || v10 <= a5)
      {
        if (floor(v20 / v10) == v20 / v10)
        {
          v16 = [v21 initWithFormat:@"%.0f%sG%sB", v20 / v10, v22, v11];
        }

        else
        {
          v16 = [v21 initWithFormat:@"%.2f%sG%sB", v20 / v10, v22, v11];
        }
      }

      else if (floor(v20 / v9) == v20 / v9)
      {
        v16 = [v21 initWithFormat:@"%.0f%sM%sB", v20 / v9, v22, v11];
      }

      else
      {
        v16 = [v21 initWithFormat:@"%.2f%sM%sB", v20 / v9, v22, v11];
      }
    }

    else
    {
      v17 = a1 / v8;
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = " ";
      if (!a4)
      {
        v19 = "";
      }

      v16 = [v18 initWithFormat:@"%lld%sK%sB", v17, v19, v11];
    }
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = "  ";
    if (!a4)
    {
      v14 = "";
    }

    v15 = " ";
    if ((a3 & a4) == 0)
    {
      v15 = "";
    }

    v16 = [v13 initWithFormat:@"%lld%s%sB", a1, v14, v15];
  }

  return v16;
}

uint64_t saos_printf_seconds(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = __exp10((9 - a3));
  if (v6 <= a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [a1 appendString:@"<"];
    a2 = v6;
  }

  return [a1 printWithFormat:@"%.*fs", a3, a2 / 1000000000.0] + v7;
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

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t saos_printf_time_scaled(void *a1, unint64_t a2)
{
  v4 = a2 / 0x3B9ACA00;
  if (a2 % 0x3B9ACA00)
  {
    v4 = a2 / 0xF4240;
    v5 = a2 % 0xF4240;
    v6 = a2 / 0x3E8;
    if (a2 % 0x3E8)
    {
      v7 = "n";
    }

    else
    {
      v7 = "u";
    }

    if (a2 % 0x3E8)
    {
      v6 = a2;
    }

    v8 = v5 == 0;
    if (v5)
    {
      v9 = v7;
    }

    else
    {
      v9 = "m";
    }

    if (!v8)
    {
      v4 = v6;
    }
  }

  else
  {
    v9 = "";
  }

  return [a1 printWithFormat:@"%llu%ss", v4, v9, v2, v3];
}

uint64_t saos_printf_cycles_instructions(void *a1, unint64_t a2, unint64_t a3, int a4)
{
  if (a4)
  {
    if (a3)
    {
      v4 = a2 / a3;
    }

    else
    {
      v4 = 0.0;
    }

    return [a1 printWithFormat:@" (%llu cycles, %llu instructions, %fc/i)", a2, a3, *&v4, v15, v16];
  }

  v5 = a2;
  if (a2 > 0x71AFD498D0000)
  {
    v6 = 1.0e15;
    v7 = "P";
LABEL_14:
    v9 = v5 / v6;
    goto LABEL_15;
  }

  if (a2 > 0x1D1A94A2000)
  {
    v6 = 1.0e12;
    v7 = "T";
    goto LABEL_14;
  }

  if (a2 > 0x77359400)
  {
    v6 = 1000000000.0;
    v7 = "G";
    goto LABEL_14;
  }

  if (a2 > 0x1E8480)
  {
    v6 = 1000000.0;
    v7 = "M";
    goto LABEL_14;
  }

  v9 = v5 / 1000.0;
  if (a2 <= 0x7D0)
  {
    v9 = a2;
  }

  v7 = "";
  if (a2 > 0x7D0)
  {
    v7 = "K";
  }

LABEL_15:
  v10 = a3;
  if (a3 <= 0x71AFD498D0000)
  {
    if (a3 <= 0x1D1A94A2000)
    {
      if (a3 <= 0x77359400)
      {
        if (a3 <= 0x1E8480)
        {
          v13 = v10 / 1000.0;
          if (a3 <= 0x7D0)
          {
            v13 = a3;
          }

          v12 = "";
          if (a3 > 0x7D0)
          {
            v12 = "K";
          }

          goto LABEL_24;
        }

        v11 = 1000000.0;
        v12 = "M";
      }

      else
      {
        v11 = 1000000000.0;
        v12 = "G";
      }
    }

    else
    {
      v11 = 1.0e12;
      v12 = "T";
    }
  }

  else
  {
    v11 = 1.0e15;
    v12 = "P";
  }

  v13 = v10 / v11;
LABEL_24:
  v14 = v5 / v10;
  if (!a3)
  {
    v14 = 0.0;
  }

  return [a1 printWithFormat:@" (%.1f%s cycles, %.1f%s instructions, %.2fc/i)", *&v9, v7, *&v13, v12, *&v14];
}

id SAFormattedBytesDouble(int a1, int a2, double a3)
{
  v4 = 1000.0;
  if (a1)
  {
    v4 = 1024.0;
    v5 = 1048576.0;
  }

  else
  {
    v5 = 1000000.0;
  }

  if (a1)
  {
    v6 = 1073741820.0;
  }

  else
  {
    v6 = 1000000000.0;
  }

  if (a2)
  {
    v7 = "i";
  }

  else
  {
    v7 = "";
  }

  if (v4 * 10.0 <= a3)
  {
    if (v5 * 10.0 <= a3)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v6 * 10.0 <= a3)
      {
        if (floor(a3 / v6) == a3 / v6)
        {
          v12 = [v15 initWithFormat:@"%.0f G%sB", a3 / v6, v7];
        }

        else
        {
          v12 = [v15 initWithFormat:@"%.2f G%sB", a3 / v6, v7];
        }
      }

      else if (floor(a3 / v5) == a3 / v5)
      {
        v12 = [v15 initWithFormat:@"%.0f M%sB", a3 / v5, v7];
      }

      else
      {
        v12 = [v15 initWithFormat:@"%.2f M%sB", a3 / v5, v7];
      }
    }

    else
    {
      v13 = a3 / v4;
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (floor(v13) == v13)
      {
        v12 = [v14 initWithFormat:@"%.0f K%sB", *&v13, v7];
      }

      else
      {
        v12 = [v14 initWithFormat:@"%.2f K%sB", *&v13, v7];
      }
    }
  }

  else
  {
    v9 = floor(a3);
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = " ";
    if (!a2)
    {
      v11 = "";
    }

    if (v9 == a3)
    {
      v12 = [v10 initWithFormat:@"%.0f  %sB", *&a3, v11];
    }

    else
    {
      v12 = [v10 initWithFormat:@"%.2f  %sB", *&a3, v11];
    }
  }

  return v12;
}

uint64_t _saos_printf_indent_and_kernel_dot(void *a1, uint64_t a2, int a3, int a4)
{
  v4 = a2;
  v12 = *MEMORY[0x1E69E9840];
  if (a2 >= 0x7FFFFFFF)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = v4;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "indent %u", buf, 8u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(343, "indent %u", v4);
    _os_crash();
    __break(1u);
  }

  if (a4)
  {
    v5 = "";
    if (a3)
    {
      v5 = "*";
    }

    return [a1 printWithFormat:@"%d%s ", (a2 >> 1) - 1, v5];
  }

  else
  {
    v7 = "";
    if (a3)
    {
      v7 = "*";
    }

    return [a1 printWithFormat:@"%*s", a2, v7];
  }
}

id SAFormattedSignedBytes(uint64_t a1, int a2, int a3)
{
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (a1 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = -a1;
  }

  if (a1 < 0)
  {
    v8 = @"-%@";
  }

  else
  {
    v8 = @"+%@";
  }

  v9 = SAFormattedBytesEx(v7, a2, a3, 1, 0);
  v10 = [v6 initWithFormat:v8, v9];

  return v10;
}

BOOL _microstackshot_state_has_change_to_display(int a1, int a2, char a3, int a4)
{
  v5 = a1 == a2;
  result = a1 != a2;
  if (v5 || (a3 & 1) != 0)
  {
    return result;
  }

  v7 = a2 ^ a1;
  if (!a4)
  {
    if ((v7 & 0x3FA2) == 0)
    {
      return (v7 & 0x1C000) != 0;
    }

    return 1;
  }

  if ((v7 & 0x10) != 0)
  {
    return 1;
  }

  v8 = (a1 & a2 & 0x10) == 0;
  if ((v7 & 0xC) == 0)
  {
    v8 = 1;
  }

  result = 1;
  if ((v7 & 0x3FA2) == 0 && v8)
  {
    return (v7 & 0x1C000) != 0;
  }

  return result;
}

uint64_t saos_printf_frame_with_state(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  _saos_printf_indent_and_kernel_dot(a1, a2, a5, 0);
  [a1 printWithFormat:@"%-*lu  ", a3, a4];
  [a1 appendString:a6];
  _saos_printf_state_appended(a1, a7, a8);

  return [a1 appendString:@"\n"];
}

void *_saos_printf_state_appended(void *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  if (a3 || (a2 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    objc_msgSend(result, "appendString:", @" (");
    _saos_printf_state_appended_noparens(v5, a2, 0, a3);

    return [v5 appendString:@""]);
  }

  return result;
}

uint64_t saos_printf_call_tree_node_without_count(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _saos_printf_indent_and_kernel_dot(a1, a2, 0, 0);
  [a1 printWithFormat:@"%*s  ", a3, ""];
  return [a1 printWithFormat:@"<%@>\n", a4];
}

unint64_t _saos_printf_state_appended_noparens(void *a1, unint64_t a2, unint64_t *a3, uint64_t a4)
{
  v8 = HIDWORD(a2);
  v9 = HIWORD(a2);
  v10 = HIBYTE(a2);
  if (!a3)
  {
    v13 = a4 != 0;
    if ((a2 & 0x1FFFFFFFFFFFFFFFLL) != 0 || a4)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v16 = [a1 appendString:@"suspended"];
        if ((v10 & 4) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v16 = 0;
        if ((a2 & 0x400000000000000) == 0)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_23;
    }

    return 0;
  }

  v11 = *a3;
  v12 = *a3 ^ a2;
  if ((v12 & 0x1FFF000000000000) == 0)
  {
    v13 = a4 != 0;
    if (a4 || a2 != v11 || (v12 & 0xFFFF00000000) != 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v13 = a4 != 0;
LABEL_4:
  v14 = HIBYTE(v11);
  v15 = v14 ^ HIBYTE(a2);
  if (((v14 ^ HIBYTE(a2)) & 0x10) == 0)
  {
    v16 = 0;
    if (((v14 ^ HIBYTE(a2)) & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_16:
    if ((v10 & 4) != 0)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (!(v14 & 4 | v15 & 8))
    {
LABEL_29:
      v18 = v9 != 0;
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v17 = @"suspended";
  }

  else
  {
    v17 = @"unsuspended";
  }

  v16 = [a1 appendString:v17];
  LOBYTE(v14) = *(a3 + 7);
  v15 = v14 ^ v10;
  if (((v14 ^ v10) & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_23:
  if (v16 >= 1)
  {
    LODWORD(v16) = [a1 appendString:{@", "}] + v16;
  }

  if ((v10 & 4) != 0)
  {
    v19 = @"running";
    goto LABEL_39;
  }

  v16 = [a1 appendString:@"not running"] + v16;
  if (a3)
  {
    LOBYTE(v14) = *(a3 + 7);
    v15 = v14 ^ v10;
    goto LABEL_28;
  }

LABEL_31:
  if ((v10 & 8) == 0)
  {
    if (!v9)
    {
      goto LABEL_60;
    }

    goto LABEL_47;
  }

LABEL_34:
  if (v16 >= 1)
  {
    LODWORD(v16) = [a1 appendString:{@", "}] + v16;
  }

  if ((v10 & 8) != 0)
  {
    v19 = @"runnable";
  }

  else
  {
    v19 = @"not runnable";
  }

LABEL_39:
  v16 = [a1 appendString:v19] + v16;
  v18 = v9 != 0;
  if (!a3)
  {
    if (!v9)
    {
      goto LABEL_60;
    }

    goto LABEL_47;
  }

LABEL_40:
  if ((v18 ^ (*(a3 + 6) != 0)))
  {
    goto LABEL_48;
  }

  v20 = !v18;
  if (!*(a3 + 6))
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0 && *(a3 + 6) != BYTE6(a2))
  {
LABEL_47:
    v18 = 1;
LABEL_48:
    if (v16 >= 1)
    {
      LODWORD(v16) = [a1 appendString:{@", "}] + v16;
    }

    if (v18)
    {
      v21 = [a1 printWithFormat:@"on cpu %u", (v9 - 1)];
    }

    else
    {
      v21 = [a1 printWithFormat:@"on cpu UNKNOWN", v24];
    }

    v16 = (v21 + v16);
    if (a3)
    {
      goto LABEL_54;
    }

LABEL_60:
    if ((v10 & 2) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_61;
  }

LABEL_54:
  v22 = *(a3 + 7);
  if (((v22 ^ v10) & 2) == 0)
  {
    goto LABEL_65;
  }

  if ((v10 & 2) == 0)
  {
    if ((a2 & 0x100000000000000) == 0)
    {
      if (v16 >= 1)
      {
        LODWORD(v16) = [a1 appendString:{@", "}] + v16;
      }

      v16 = [a1 printWithFormat:@"not e-core"] + v16;
    }

LABEL_64:
    LOBYTE(v22) = *(a3 + 7);
LABEL_65:
    if ((HIBYTE(a2) & 1) == (v22 & 1))
    {
      goto LABEL_75;
    }

    if ((a2 & 0x100000000000000) == 0)
    {
      if ((v10 & 2) == 0)
      {
        if (v16 >= 1)
        {
          LODWORD(v16) = [a1 appendString:{@", "}] + v16;
        }

        v16 = [a1 printWithFormat:@"not p-core"] + v16;
      }

      goto LABEL_75;
    }

    goto LABEL_72;
  }

LABEL_61:
  if (v16 >= 1)
  {
    LODWORD(v16) = [a1 appendString:{@", "}] + v16;
  }

  v16 = [a1 printWithFormat:@"e-core"] + v16;
  if (a3)
  {
    goto LABEL_64;
  }

LABEL_71:
  if ((a2 & 0x100000000000000) == 0)
  {
    goto LABEL_77;
  }

LABEL_72:
  if (v16 >= 1)
  {
    LODWORD(v16) = [a1 appendString:{@", "}] + v16;
  }

  v16 = [a1 printWithFormat:@"p-core"] + v16;
  if (!a3)
  {
LABEL_77:
    if ((a2 & 0xFFFF00000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_78;
  }

LABEL_75:
  if (*(a3 + 2) == v8)
  {
    goto LABEL_81;
  }

LABEL_78:
  if (v16 >= 1)
  {
    LODWORD(v16) = [a1 appendString:{@", "}] + v16;
  }

  v16 = [a1 printWithFormat:@"%uMhz", 100 * v8] + v16;
  if (a3)
  {
LABEL_81:
    if (*a3 == a2)
    {
      goto LABEL_87;
    }

    goto LABEL_84;
  }

LABEL_83:
  if (a2)
  {
LABEL_84:
    if (v16 >= 1)
    {
      LODWORD(v16) = [a1 appendString:{@", "}] + v16;
    }

    v16 = [a1 printWithFormat:@"%llu pmi cycle interval", 1000000 * a2] + v16;
LABEL_87:
    if (!v13)
    {
      return v16;
    }

    goto LABEL_88;
  }

  if (!v13)
  {
    return v16;
  }

LABEL_88:
  if (v16 >= 1)
  {
    LODWORD(v16) = [a1 appendString:{@", "}] + v16;
  }

  return [a1 printWithFormat:@"blocked by %@", a4] + v16;
}

char *init_io_histograms()
{
  v0 = malloc_type_malloc(0xF38uLL, 0x10000403AFA9047uLL);
  v1 = v0;
  if (v0)
  {
    bzero(v0, 0xF38uLL);
    for (i = 0; i != 2912; i += 728)
    {
      *&v1[i + 984] = 29;
      bzero(&v1[i + 992], 0x2B8uLL);
      memmove(&v1[i + 992], &io_latency_histogram_template, 0x2B8uLL);
    }

    *v1 = 9;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0u;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0u;
    *(v1 + 152) = 0u;
    *(v1 + 168) = 0u;
    *(v1 + 184) = 0u;
    *(v1 + 200) = 0u;
    *(v1 + 40) = 0u;
    v3 = v1 + 40;
    *(v1 + 2) = 4096;
    v4 = 8;
    *(v1 + 27) = 0;
    do
    {
      v5 = *(v3 - 3);
      *(v3 - 1) = v5;
      *v3 = 2 * v5;
      v3 += 3;
      --v4;
    }

    while (v4);
  }

  return v1;
}

unsigned int *update_histograms_stats(unsigned int *result, unsigned int a2, unint64_t a3, unint64_t a4, int a5)
{
  if (result)
  {
    v5 = &result[16 * a2];
    v6 = v5 + 182;
    v7.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v7.i64[1] = a4;
    *(v5 + 182) = vaddq_s64(*(v5 + 182), v7);
    *(v5 + 93) += a4 * a4;
    if (*(v5 + 94) < a4)
    {
      *(v5 + 94) = a4;
    }

    v8 = 14;
    if (a5)
    {
      v8 = 10;
    }

    v9 = 12;
    if (a5)
    {
      v9 = 8;
    }

    *&v6[v8] += a3;
    ++*&v6[v9];
    v10 = &result[182 * a2];
    v11 = v10[246];
    if (v11)
    {
      v12 = 0;
      v13 = &result[182 * a2 + 252];
      while (*(v13 - 1) < a4)
      {
        ++v12;
        v13 += 6;
        if (v11 == v12)
        {
          goto LABEL_16;
        }
      }

      ++*v13;
    }

    else
    {
      LODWORD(v12) = 0;
    }

    if (v12 == v11)
    {
LABEL_16:
      ++*(v10 + 213);
    }

    v14 = *result;
    if (v14)
    {
      v15 = result + 6;
      while (*(v15 - 1) < a3)
      {
        v15 += 6;
        if (!--v14)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v15 = result + 180;
    }

    ++*v15;
  }

  return result;
}

uint64_t safe_snprintf(char **a1, _DWORD *a2, const char *a3, _DWORD *a4, const char *a5, ...)
{
  va_start(va, a5);
  v6 = vsnprintf(*a1, *a4, a5, va);
  if ((v6 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v9 = *a4 - v6;
  v8 = *a4 > v6;
  if (*a4 < v6)
  {
    v9 = 0;
  }

  *a4 = v9;
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a1 += v7;
  return result;
}

uint64_t print_io_histograms(unsigned int *a1, char *a2, const char *a3, _DWORD *a4, const char *a5)
{
  v52 = a3;
  v51 = a2;
  result = 0xFFFFFFFFLL;
  if (a1 && a3 >= 0x2000)
  {
    if ((safe_snprintf(&v51, a2, a3, a4, a5, &v52, "IO Size Histogram:\n") & 0x80000000) == 0 && (safe_snprintf(&v51, v7, v8, v9, v10, &v52, "     %s      %s            %s                     %s\n", "Begin", "End", "Frequency", "CDF") & 0x80000000) == 0)
    {
      if (*a1)
      {
        v15 = 0;
        v16 = 0;
        v17 = a1 + 4;
        do
        {
          v16 += *(v17 + 1);
          if ((safe_snprintf(&v51, v11, v12, v13, v14, &v52, "%*lluKB%*lluKB\t\t%*llu\t\t%*llu\n", 8, *(v17 - 1) >> 10, 8, *v17 >> 10, 8, *(v17 + 1), 8, v16) & 0x80000000) != 0)
          {
            return 0xFFFFFFFFLL;
          }

          v17 += 6;
          ++v15;
          v18 = *a1;
        }

        while (v15 < v18);
        v19 = v18 - 1;
      }

      else
      {
        v16 = 0;
        v19 = -1;
      }

      if ((safe_snprintf(&v51, v11, v12, v13, v14, &v52, "%*s%*lluKB\t\t%*llu\t\t%*llu\n", 10, ">", 8, *&a1[6 * v19 + 4] >> 10, 8, *(a1 + 90), 8, *(a1 + 90) + v16) & 0x80000000) == 0)
      {
        v24 = 0;
        v25 = a1 + 182;
        v50 = a1 + 246;
        for (i = a1 + 252; ; i += 182)
        {
          if (*&v25[16 * v24])
          {
            if ((safe_snprintf(&v51, v20, v21, v22, v23, &v52, "Tier %u Latency Histogram:\n", v24) & 0x80000000) != 0 || (safe_snprintf(&v51, v27, v28, v29, v30, &v52, "      %s        %s                %s                    %s\n", "Begin", "End", "Freq", "CDF") & 0x80000000) != 0)
            {
              return 0xFFFFFFFFLL;
            }

            v35 = &v50[182 * v24];
            if (*v35)
            {
              v36 = 0;
              v37 = 0;
              v38 = i;
              while (1)
              {
                v37 += *v38;
                if ((safe_snprintf(&v51, v31, v32, v33, v34, &v52, "%*lluus%*lluus\t\t%*llu\t\t%*llu\n", 9, *(v38 - 2), 9, *(v38 - 1), 9, *v38, 9, v37) & 0x80000000) != 0)
                {
                  return 0xFFFFFFFFLL;
                }

                v38 += 6;
                ++v36;
                v39 = *v35;
                if (v36 >= v39)
                {
                  v40 = v39 - 1;
                  goto LABEL_22;
                }
              }
            }

            v37 = 0;
            v40 = -1;
LABEL_22:
            if ((safe_snprintf(&v51, v31, v32, v33, v34, &v52, "%*s%*lluus\t\t%*llu\t\t%*llu\n", 10, ">", 9, *&v35[6 * v40 + 4], 9, *(v35 + 90), 9, *(v35 + 90) + v37) & 0x80000000) != 0)
            {
              return 0xFFFFFFFFLL;
            }
          }

          if (++v24 == 4)
          {
            v41 = 0;
            while (!*v25 || (safe_snprintf(&v51, v20, v21, v22, v23, &v52, "Tier %u Aggregate Stats:\n", v41) & 0x80000000) == 0 && (safe_snprintf(&v51, v42, v43, v44, v45, &v52, "\tNum IOs %llu Latency Mean %lluus Max Latency %lluus Latency SD %lluus\n", *v25, *(v25 + 1) / *v25, *(v25 + 3), sqrt((*(v25 + 2) / *v25 - *(v25 + 1) / *v25 * (*(v25 + 1) / *v25)))) & 0x80000000) == 0 && (safe_snprintf(&v51, v46, v47, v48, v49, &v52, "\tReads %llu (%llu KB) Writes %llu (%llu KB)\n", *(v25 + 4), *(v25 + 5) >> 10, *(v25 + 6), *(v25 + 7) >> 10) & 0x80000000) == 0)
            {
              result = 0;
              ++v41;
              v25 += 16;
              if (v41 == 4)
              {
                return result;
              }
            }

            return 0xFFFFFFFFLL;
          }
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

BOOL _AvoidSuspendingPid(_BOOL8 result)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    proc_name(result, buffer, 0x21u);
    if (*buffer == 0x64796669746F6ELL)
    {
      return 1;
    }

    return *buffer == 0x676F646863746177 && *&buffer[8] == 100 || *buffer == 0x72616F62656B6177 && *&buffer[3] == 0x646472616F6265;
  }

  return result;
}

uint64_t _TimerTier(int a1)
{
  if ((a1 - 16711681) >= 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (a1 - 16711681);
  }
}

void sub_1E0E4C3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E4CF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SAGetStackshotDataFromTailspinStackshotChunk(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    if ([a1 length] >= 0x10)
    {
      v2 = [v1 bytes];
      v3 = *v2 + 16;
      if (v3 <= [v1 length])
      {
        a1 = [v1 subdataWithRange:{16, *v2}];
      }

      else
      {
        v4 = *__error();
        v5 = _sa_logt();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *v2;
          v9 = 134218496;
          v10 = v6;
          v11 = 2048;
          v12 = 16;
          v13 = 2048;
          v14 = [v1 length];
          _os_log_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_DEFAULT, "WARNING: Malformed tailspin stackshot chunk: stackshot data is %llu bytes (+ %lu header), but chunk is only %lu bytes", &v9, 0x20u);
        }

        v7 = __error();
        a1 = 0;
        *v7 = v4;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void ___sa_logt_block_invoke()
{
  v0 = os_log_create("com.apple.sampleanalysis", "logging");
  v1 = qword_1EDD02ED8;
  qword_1EDD02ED8 = v0;
}

CFTypeRef SACFBundleCopyStringForKey(__CFBundle *a1, const __CFString *a2)
{
  result = CFBundleGetValueForInfoDictionaryKey(a1, a2);
  if (result)
  {
    v4 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFStringGetTypeID())
    {

      return v4;
    }

    else
    {
      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", v4];
    }
  }

  return result;
}

void *SANSDictionaryCopyStringForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  if (!v2)
  {
    return v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", v2];

  return v4;
}

uint64_t is_apple_internal_setting()
{
  if (qword_1EDD02EE8 != -1)
  {
    dispatch_once(&qword_1EDD02EE8, &__block_literal_global_12);
  }

  return _MergedGlobals_2;
}

uint64_t __is_apple_internal_setting_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  _MergedGlobals_2 = result;
  return result;
}

uint64_t _SASetCrashLogMessage(int a1, const char *a2, ...)
{
  va_start(va, a2);
  result = snprintf(_SASetCrashLogMessage_crash_string, 0x400uLL, "%d ", a1);
  if ((result - 1) <= 0x3FE)
  {
    result = vsnprintf(&_SASetCrashLogMessage_crash_string[result], 1024 - result, a2, va);
  }

  qword_1ECE87E50 = _SASetCrashLogMessage_crash_string;
  return result;
}

id CopyBootArgs()
{
  v16 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00]();
  v1 = &v10 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v1 = 0;
  v11 = v0;
  if (sysctlbyname("kern.bootargs", v1, &v11, 0, 0))
  {
    v2 = *__error();
    v3 = _sa_logt();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      v8 = __error();
      v9 = strerror(*v8);
      *buf = 67109378;
      v13 = v7;
      v14 = 2080;
      v15 = v9;
      _os_log_error_impl(&dword_1E0E2F000, v3, OS_LOG_TYPE_ERROR, "Unable to get kern.bootargs: %d %s", buf, 0x12u);
    }

    v4 = __error();
    v5 = 0;
    *v4 = v2;
  }

  else
  {
    v5 = SANSStringForCString(v1);
  }

  return v5;
}

id CopyKernelVersion()
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&v7, 0, 512);
  v7.version[0] = 0;
  if (uname(&v7))
  {
    v0 = *__error();
    v1 = _sa_logt();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = *__error();
      v6[0] = 67109120;
      v6[1] = v2;
      _os_log_impl(&dword_1E0E2F000, v1, OS_LOG_TYPE_DEFAULT, "WARNING: unable to get kernel strings: %d", v6, 8u);
    }

    v3 = __error();
    v4 = 0;
    *v3 = v0;
  }

  else if (v7.version[0])
  {
    v4 = SANSStringForCString(v7.version);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void GetOSVersions(uint64_t a1)
{
  v2 = _CFCopySupplementalVersionDictionary();
  if (v2)
  {
    v3 = v2;
    v4 = CFDictionaryGetValue(v2, *MEMORY[0x1E695E1F0]);
    v5 = CFDictionaryGetValue(v3, *MEMORY[0x1E695E208]);
    v6 = CFDictionaryGetValue(v3, *MEMORY[0x1E695E200]);
    v7 = CFDictionaryGetValue(v3, *MEMORY[0x1E695E1E8]);
    if (v4)
    {
      v8 = SACachedNSString(v4);

      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = 0;
      if (v5)
      {
LABEL_4:
        v13 = SACachedNSString(v5);

        if (v6)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    v13 = 0;
    if (v6)
    {
LABEL_5:
      v9 = SACachedNSString(v6);

      if (v7)
      {
LABEL_6:
        v10 = SACachedNSString(v7);

LABEL_14:
        (*(a1 + 16))(a1, v13, v9, v10, v8);
        CFRelease(v3);

        return;
      }

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

LABEL_12:
    v9 = 0;
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  v11 = *__error();
  v12 = _sa_logt();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "unable to get system versions dictionary", buf, 2u);
  }

  *__error() = v11;
  (*(a1 + 16))(a1, 0, 0, 0, 0);
}

void sub_1E0E55378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E5551C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E5931C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x520], 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x288], 8);
  _Unwind_Resume(a1);
}

void sub_1E0E5965C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void KCLogIter(unsigned int *a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (qword_1EDD02F68 != -1)
  {
    dispatch_once(&qword_1EDD02F68, &__block_literal_global_2042);
  }

  if (byte_1EDD02EF1 == 1)
  {
    if ((*a1 & 0xFFFFFFF0) == 0x20)
    {
      v6 = 17;
    }

    else
    {
      v6 = *a1;
    }

    if ((v6 - 1) <= 5)
    {
      v7 = (a1 + 4);
      v8 = a1 + 12;
      v9 = a1[1];
      v10 = a1[2] & 0xF;
      v11 = v9 >= v10;
      v12 = v9 - v10;
      if (!v11)
      {
        v12 = 0;
      }

      v13 = v12 - 32;
LABEL_31:
      if (v6 != 17)
      {
        if (v6 != 19)
        {
          if (v6 == 20)
          {
            v17 = dword_1EDD02EF4 - 2;
            if (dword_1EDD02EF4 < 2)
            {
              v18 = *__error();
              v19 = _sa_logt();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "Invalid kcdata: end container at indent 0", buf, 2u);
              }

              v20 = __error();
              v17 = 0;
              *v20 = v18;
            }

            dword_1EDD02EF4 = v17;
            v21 = *(a1 + 1);
            v22 = *__error();
            v23 = " -- skipping";
            if (!v3)
            {
              v23 = "";
            }

            fprintf(*MEMORY[0x1E69E9858], "%*s%s: id %llu%s\n", dword_1EDD02EF4, "", v7, v21, v23);
            *__error() = v22;
          }

          else
          {
            v28 = dword_1EDD02EF4;

            KCLogItem(v6, v13, v8, v7, v28, v3);
          }

          return;
        }

        if ((a1 + 4) <= a2)
        {
          v24 = a1[1];
          if (a1 + v24 + 16 <= a2 && v24 >= 4 && *a1 == 19)
          {
            v29 = *(a1 + 1);
            v30 = a1[4];
            v31 = *__error();
            v32 = *MEMORY[0x1E69E9858];
            v33 = dword_1EDD02EF4;
            v34 = DescriptionForKCDataType(v30);
            v35 = " -- skipping";
            if (!v3)
            {
              v35 = "";
            }

            fprintf(v32, "%*s%s: id %llu, type %s%s\n", v33, "", v7, v29, v34, v35);
            *__error() = v31;
            dword_1EDD02EF4 += 2;
            return;
          }
        }

        v25 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: (invalid container)%s\n");
LABEL_49:
        *__error() = v25;
        return;
      }

      if ((a1 + 4) > a2 || (v26 = a1[1], a1 + v26 + 16 > a2) || (v27 = *a1, *a1 != 17) && (v27 & 0xFFFFFFF0) != 0x20)
      {
LABEL_48:
        v25 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: (invalid array)%s\n");
        goto LABEL_49;
      }

      v36 = *(a1 + 1);
      if (!v36)
      {
        if (v26)
        {
          goto LABEL_48;
        }

        v37 = HIDWORD(v36);
        if (v27 != 17)
        {
          goto LABEL_71;
        }

LABEL_90:
        if (v37 <= 2313)
        {
          if (v37 <= 2073)
          {
            if (v37 == 48)
            {
              v39 = 20;
              goto LABEL_107;
            }

            if (v37 == 49)
            {
              v39 = 24;
              goto LABEL_107;
            }

            goto LABEL_71;
          }

          if (v37 != 2074)
          {
            if (v37 == 2311)
            {
              v39 = 4;
              goto LABEL_107;
            }

            goto LABEL_71;
          }
        }

        else if (v37 <= 2315)
        {
          if (v37 != 2314)
          {
            goto LABEL_104;
          }
        }

        else if (v37 != 2316)
        {
          if (v37 != 2317)
          {
            if (v37 == 2369)
            {
              v39 = 48;
              goto LABEL_107;
            }

LABEL_71:
            v39 = 0;
LABEL_107:
            v42 = *__error();
            v43 = *MEMORY[0x1E69E9858];
            v44 = dword_1EDD02EF4;
            v45 = DescriptionForKCDataType(v37);
            v46 = " -- skipping";
            if (!v3)
            {
              v46 = "";
            }

            fprintf(v43, "%*s%s: of type %s, count %u size %u%s\n", v44, "", v7, v45, v36, v39, v46);
            *__error() = v42;
            if (v36)
            {
              v47 = 0;
              v48 = MEMORY[0x1E69E9820];
              v36 = v36;
              do
              {
                v50 = v48;
                v51 = 3221225472;
                v52 = __KCLogIter_block_invoke;
                v53 = &__block_descriptor_41_e13_v20__0I8r_v12l;
                v54 = v37;
                v55 = v39;
                v56 = v3;
                KCLogItem(v37, v39, v8 + v47, 0, (dword_1EDD02EF4 + 2), v3);
                v47 += v39;
                --v36;
              }

              while (v36);
            }

            return;
          }

LABEL_104:
          v39 = 16;
          goto LABEL_107;
        }

        v39 = 8;
        goto LABEL_107;
      }

      if (v27 != 17)
      {
        v40 = *a1 & 0xF;
        v11 = v26 >= v40;
        v41 = v26 - v40;
        if (!v11)
        {
          goto LABEL_48;
        }

        if (v41 < v36)
        {
          goto LABEL_48;
        }

        v39 = v41 / v36;
        if (v41 % v36)
        {
          goto LABEL_48;
        }

        v37 = HIDWORD(v36);
        goto LABEL_107;
      }

      v37 = HIDWORD(v36);
      if (SHIDWORD(v36) <= 2313)
      {
        if (SHIDWORD(v36) <= 2073)
        {
          if (HIDWORD(v36) == 48)
          {
            v38 = 20;
          }

          else
          {
            if (HIDWORD(v36) != 49)
            {
              goto LABEL_48;
            }

            v38 = 24;
          }

          goto LABEL_88;
        }

        if (HIDWORD(v36) != 2074)
        {
          if (HIDWORD(v36) != 2311)
          {
            goto LABEL_48;
          }

          v38 = 4;
          goto LABEL_88;
        }
      }

      else if (SHIDWORD(v36) <= 2315)
      {
        if (HIDWORD(v36) != 2314)
        {
LABEL_85:
          v38 = 16;
LABEL_88:
          if (v26 / v38 < v36 || v26 % v36 >= 0x10)
          {
            goto LABEL_48;
          }

          goto LABEL_90;
        }
      }

      else if (HIDWORD(v36) != 2316)
      {
        if (HIDWORD(v36) != 2317)
        {
          if (HIDWORD(v36) != 2369)
          {
            goto LABEL_48;
          }

          v38 = 48;
          goto LABEL_88;
        }

        goto LABEL_85;
      }

      v38 = 8;
      goto LABEL_88;
    }

    if (v6 > 2309)
    {
      if (v6 == 2310)
      {
        v15 = a1[1];
        if (v15 == 112)
        {
          if ((a1[2] & 0x8F) == 0)
          {
            v13 = 104;
            goto LABEL_30;
          }

          v15 = 112;
        }

LABEL_27:
        v11 = v15 >= (a1[2] & 0xF);
        v16 = v15 - (a1[2] & 0xF);
        if (v11)
        {
          v13 = v16;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_30;
      }

      if (v6 != 2312)
      {
LABEL_23:
        v15 = a1[1];
        goto LABEL_27;
      }

      v15 = a1[1];
      if (v15 != 32)
      {
        goto LABEL_27;
      }

      if ((a1[2] & 0x8F) != 0)
      {
        v15 = 32;
        goto LABEL_27;
      }

      v13 = 24;
    }

    else
    {
      if (v6 != 17 && v6 != 19)
      {
        goto LABEL_23;
      }

      v13 = a1[1];
    }

LABEL_30:
    v8 = a1 + 4;
    v7 = DescriptionForKCDataType(v6);
    goto LABEL_31;
  }
}

uint64_t SkipToContainerEnd(int **a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1 + 4;
  if (v4 > v3 || (v5 = v2[1], (v4 + v5) > v3) || ((v6 = *v2, v5 >= 4) ? (v7 = v6 == 19) : (v7 = 0), !v7))
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "invalid skipped container", buf, 2u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(6945, "invalid skipped container");
    a1 = _os_crash();
    __break(1u);
  }

  v10 = a2;
  v11 = a1;
  v12 = objc_alloc(MEMORY[0x1E695DF70]);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*v11 + 1)];
  v14 = [v12 initWithObjects:{v13, 0}];

  v15 = v11[1];
  v16 = *v11 + (*v11)[1];
  v17 = (v16 + 16);
  *v11 = (v16 + 16);
  v18 = (v16 + 32);
  if (v18 <= v15)
  {
    while (v18 + v17[1] <= v15 && *v17 != -242132755)
    {
      KCLogIter(v17, v15, v10);
      v19 = *v11;
      v20 = **v11;
      if ((v20 & 0xFFFFFFF0) == 0x20)
      {
        v20 = 17;
      }

      if (v20 == 20)
      {
        v22 = *(v19 + 1);
        v23 = [v14 lastObject];
        v24 = [v23 unsignedLongLongValue];

        if (v24 != v22)
        {
          v26 = *__error();
          v27 = _sa_logt();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            *buf = 134218240;
            v33 = v22;
            v34 = 2048;
            v35 = v24;
            _os_log_fault_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_FAULT, "Unexpected end container %llu (expected %llu)", buf, 0x16u);
          }

          v28 = 1;
          goto LABEL_25;
        }

        if ([v14 count] == 1)
        {
          v28 = 0;
          goto LABEL_26;
        }

        [v14 removeLastObject];
      }

      else if (v20 == 19)
      {
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v19 + 1)];
        [v14 addObject:v21];
      }

      v15 = v11[1];
      v25 = *v11 + (*v11)[1];
      v17 = (v25 + 16);
      *v11 = (v25 + 16);
      v18 = (v25 + 32);
      if (v18 > v15)
      {
        break;
      }
    }
  }

  v26 = *__error();
  v27 = _sa_logt();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    v30 = [v14 firstObject];
    v31 = [v30 unsignedLongLongValue];
    *buf = 134217984;
    v33 = v31;
    _os_log_fault_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_FAULT, "Didn't find endof skipped container %llu", buf, 0xCu);
  }

  v28 = 2;
LABEL_25:

  *__error() = v26;
LABEL_26:

  return v28;
}

void sub_1E0E6AF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E725F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPreferredLanguages()
{
  v0 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x1E695E890], @"mobile", *MEMORY[0x1E695E898]);
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = v0;
      if (![v1 count])
      {
LABEL_7:

        goto LABEL_12;
      }

      v2 = 0;
      v3 = 1;
      while (1)
      {
        v4 = [v1 objectAtIndexedSubscript:v2];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          break;
        }

        v6 = (v2 + 1 >= [v1 count]) | ~v3;
        v2 = 1;
        v3 = 0;
        if (v6)
        {
          goto LABEL_7;
        }
      }

      v7 = *__error();
      v8 = _sa_logt();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *v10 = 0;
        _os_log_fault_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_FAULT, "Found the preferred languages array but contents are not NSString", v10, 2u);
      }

      *__error() = v7;
    }
  }

  v1 = [MEMORY[0x1E695DF58] preferredLanguages];
LABEL_12:

  return v1;
}

uint64_t __SAProcName_block_invoke()
{
  getpid();
  result = sandbox_check();
  if ((result + 1) <= 2)
  {
    _MergedGlobals_3 = (4u >> ((result + 1) & 7)) & 1;
  }

  return result;
}

void sub_1E0E73E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E7B414(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *context, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a2 == 1)
  {
    v22 = objc_begin_catch(a1);
    if (a17 != 46)
    {
      v23 = v22;
      if (*(a22 + 552) && (v24 = *(a22 + 528)) != 0)
      {
        v25 = *MEMORY[0x1E69E9848];
        [v24 UTF8String];
        [*(a22 + 552) UTF8String];
        if (a17 < 47)
        {
          v26 = "Unable to decode binary format: Binary version %lu is no longer supported. Try %s build %s\n";
        }

        else
        {
          v26 = "Unable to decode binary format: Binary version %lu is newer than decoder version %lu. Try %s build %s or later\n";
        }

        fprintf(v25, v26);
      }

      else
      {
        v27 = *MEMORY[0x1E69E9848];
        if (a17 < 47)
        {
          fprintf(v27, "Unable to decode binary format: Binary format version %lu is no longer supported. Try an older build\n");
        }

        else
        {
          fprintf(v27, "Unable to decode binary format: Binary version %lu is newer than decoder version %lu. Try a newer build\n");
        }
      }

      *a16 = 0;
      *gSASerializationEncodedDataIsEmbedded() = 0;

      objc_end_catch();
      JUMPOUT(0x1E0E7A170);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

char *__IgnoreSlidBaseAddress_block_invoke()
{
  result = getenv("SA_WORKAROUND_73965546");
  if (result && (*result != 48 || result[1]))
  {
    byte_1EDD02EF2 = 1;
  }

  return result;
}

void __SAKCDataReadAheadJetsamCoalitionInfo_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3[3]];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*a3];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

void __SAKCDataReadAheadJetsamCoalitionInfo_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 40) setObject:v4 forKeyedSubscript:a2];
    v4 = v5;
  }
}

void __ReadAheadTaskLevelInfo_block_invoke(uint64_t a1, unsigned int a2, unsigned __int8 *src)
{
  v3 = *(a1 + 32) + 24 * a2;
  *v3 = *src;
  uuid_copy((v3 + 8), src + 4);
}

uint64_t __ReadAheadTaskLevelInfo_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 17) & 0x20) != 0)
  {
    **(result + 32) = *a3;
  }

  return result;
}

uint64_t TrialLibraryCore(uint64_t a1)
{
  if (!TrialLibraryCore_frameworkLibrary)
  {
    TrialLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return TrialLibraryCore_frameworkLibrary;
}

uint64_t __TrialLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  TrialLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getTRIAllocationStatusClass_block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = TrialLibraryCore(&v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = abort_report_np("%s", v6);
  }

  free(v3);
LABEL_3:
  result = objc_getClass("TRIAllocationStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTRIAllocationStatusClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v5 = abort_report_np("Unable to find class %s", "TRIAllocationStatus");
    return DarwinupLibraryCore(v5);
  }

  return result;
}

uint64_t DarwinupLibraryCore(uint64_t a1)
{
  if (!DarwinupLibraryCore_frameworkLibrary)
  {
    DarwinupLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return DarwinupLibraryCore_frameworkLibrary;
}

uint64_t __DarwinupLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  DarwinupLibraryCore_frameworkLibrary = result;
  return result;
}

void __getDUSessionClass_block_invoke(uint64_t a1)
{
  DarwinupLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DUSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EDD02F80 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "DUSession");
    DarwinupLibrary();
  }
}

void DarwinupLibrary()
{
  v2 = 0;
  v0 = DarwinupLibraryCore(&v2);
  v1 = v2;
  if (!v0)
  {
    v1 = abort_report_np("%s", v2);
    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    free(v1);
  }
}

void __getDURootClass_block_invoke(uint64_t a1)
{
  DarwinupLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DURoot");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EDD02F88 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "DURoot");
    __getAutomatedDeviceGroup_block_invoke();
  }
}

void __getAutomatedDeviceGroup_block_invoke()
{
  v0 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_2088);
  v1 = qos_class_self();
  v2 = dispatch_get_global_queue(v1, 0);
  dispatch_async(v2, v0);

  v3 = dispatch_time(0, 2000000000);
  if (dispatch_block_wait(v0, v3))
  {
    v4 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_DEFAULT, "WARNING: Timed out waiting for automated device group", v6, 2u);
    }

    *__error() = v4;
  }
}

void __getAutomatedDeviceGroup_block_invoke_2()
{
  v0 = [MEMORY[0x1E69B7C10] automatedDeviceGroup];
  v1 = v0;
  if (v0)
  {
    obj = v0;
    v2 = [v0 length];
    v1 = obj;
    if (v2)
    {
      objc_storeStrong(&qword_1EDD02F90, obj);
      v1 = obj;
    }
  }
}

uint64_t SAHelperLibraryCore(uint64_t a1)
{
  if (!SAHelperLibraryCore_frameworkLibrary)
  {
    SAHelperLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SAHelperLibraryCore_frameworkLibrary;
}

uint64_t __SAHelperLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SAHelperLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSAModelGatherInfoSymbolLoc_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = SAHelperLibraryCore(&v5);
  v3 = v5;
  if (!v2)
  {
    v3 = abort_report_np("%s", v5);
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    free(v3);
  }

  result = dlsym(v2, "SAModelGatherInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EDD02FA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const char *DescriptionForKCDataType(uint64_t a1)
{
  if (a1 <= 56)
  {
    if (a1 <= 47)
    {
      if (a1 <= 16)
      {
        if (a1 == -568875622)
        {
          return "Begin delta stackshot";
        }

        if (a1 == -242132755)
        {
          return "buffer end";
        }
      }

      else
      {
        switch(a1)
        {
          case 0x11:
            return "Array";
          case 0x13:
            return "Container begin";
          case 0x14:
            return "Container end";
        }
      }
    }

    else
    {
      if (a1 <= 50)
      {
        if (a1 == 48)
        {
          return "load info 32-bit";
        }

        if (a1 == 49)
        {
          return "load info 64-bit";
        }

        return "mach timebase";
      }

      switch(a1)
      {
        case '3':
          return "machabstime";
        case '4':
          return "time val";
        case '5':
          return "usecs since epoch";
      }
    }

LABEL_24:
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UNKNOWN TYPE (0x%x)", a1];
    v3 = [v2 UTF8String];
    if (v3)
    {
      v1 = v3;
    }

    else
    {
      v1 = "UNKNOWN TYPE";
    }
  }

  else
  {
    switch(a1)
    {
      case 2305:
        return "iostats";
      case 2306:
        return "memstats";
      case 2307:
        return "task container";
      case 2308:
        return "thread container";
      case 2309:
        return "task snapshot";
      case 2310:
        return "thread snapshot";
      case 2311:
        return "donating pids";
      case 2312:
        return "shared cache load info";
      case 2313:
        return "thread name";
      case 2314:
        return "stack kernel 32-bit";
      case 2315:
        return "stack kernel 64-bit";
      case 2316:
        return "stack user 32-bit";
      case 2317:
        return "stack user 64-bit";
      case 2318:
        return "boot args";
      case 2319:
        return "os version";
      case 2320:
        return "kernel page size";
      case 2321:
        return "jetsam level";
      case 2322:
        return "delta timestamp used";
      case 2323:
        return "stack kernel lr 32-bit";
      case 2324:
        return "stack kernel lr 64-bit";
      case 2325:
        return "stack user lr 32-bit";
      case 2326:
        return "stack user lr 64-bit";
      case 2327:
        return "nonrunnable thread";
      case 2328:
        return "nonrunnable task";
      case 2329:
        return "cpu times";
      case 2330:
        return "stackshot duration";
      case 2331:
      case 2334:
      case 2335:
      case 2340:
      case 2341:
      case 2342:
      case 2343:
      case 2359:
      case 2360:
      case 2361:
      case 2362:
      case 2363:
      case 2364:
      case 2365:
      case 2366:
      case 2367:
      case 2389:
      case 2390:
      case 2391:
        goto LABEL_24;
      case 2332:
        return "kernelcache_loadinfo";
      case 2333:
        return "thread waitinfo";
      case 2336:
        return "jetsam coalition snapshot";
      case 2337:
        return "jetsam coalition";
      case 2338:
        return "thread policy version";
      case 2339:
        return "instruction cycles";
      case 2344:
        return "dispatch queue label";
      case 2345:
        return "thread turnstileinfo";
      case 2346:
        return "architecture";
      case 2347:
        return "latency info";
      case 2348:
        return "latency info task";
      case 2349:
        return "latency info thread";
      case 2350:
        return "text exec load info";
      case 2351:
        return "aot shared cache load info";
      case 2352:
        return "task transitioning snapshot";
      case 2353:
        return "task transitioning container";
      case 2354:
        return "swift async start index";
      case 2355:
        return "swift async stack";
      case 2356:
        return "port label container";
      case 2357:
        return "port label";
      case 2358:
        return "port label name";
      case 2368:
        return "task delta snapshot";
      case 2369:
        return "thread delta snapshot";
      case 2370:
        return "shared cache container";
      case 2371:
        return "shared cache info";
      case 2372:
        return "aot shared cache info";
      case 2373:
        return "shared cache id";
      case 2374:
        return "codesigning info";
      case 2375:
        return "os build version";
      case 2376:
        return "exclaves thread info";
      case 2377:
        return "exclave container";
      case 2378:
        return "exclaves scresult container";
      case 2379:
        return "exclaves scresult info";
      case 2380:
        return "exclaves ipc stack entry container";
      case 2381:
        return "exclaves ipc stack entry info";
      case 2382:
        return "exclaves ipc stack entry info ecstack";
      case 2383:
        return "exclave address space container";
      case 2384:
        return "exclave address space info";
      case 2385:
        return "exclave address space name";
      case 2386:
        return "exclaves text layout container";
      case 2387:
        return "exclaves text layout info";
      case 2388:
        return "exclaves text layout segments";
      case 2392:
        return "memory status";
      default:
        if (a1 == 57)
        {
          v1 = "aot info";
        }

        else
        {
          if (a1 != 1503811591)
          {
            goto LABEL_24;
          }

          v1 = "Begin stackshot";
        }

        break;
    }
  }

  return v1;
}

int *KCLogItem(uint64_t a1, unsigned int a2, const unsigned __int8 *a3, const char *a4, uint64_t a5, int a6)
{
  v8 = a4;
  v11 = a1;
  v102 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v8 = DescriptionForKCDataType(a1);
  }

  if (v11 > 52)
  {
    switch(v11)
    {
      case 2309:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: %s [%d]%s\n");
        goto LABEL_94;
      case 2310:
        v15 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: thread_v%d 0x%llx dispatch queue %lld%s\n", a5);
        goto LABEL_100;
      case 2311:
        goto LABEL_36;
      case 2312:
        if (a2 < 0x28)
        {
          goto LABEL_85;
        }

        if (qword_1EDD02F70 != -1)
        {
          dispatch_once(&qword_1EDD02F70, &__block_literal_global_2047);
        }

        if (byte_1EDD02EF2)
        {
LABEL_85:
          v16 = *__error();
          v72 = *MEMORY[0x1E69E9858];
          add_explicit = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
          v74 = add_explicit & 3;
          v75 = -add_explicit;
          v20 = v75 < 0;
          v76 = v75 & 3;
          if (v20)
          {
            v77 = v74;
          }

          else
          {
            v77 = -v76;
          }

          uuid_unparse(a3 + 8, &uuid_string_string[37 * v77]);
          fprintf(v72, "%*s%s: %s slide 0x%llx%s\n");
        }

        else
        {
          v16 = *__error();
          v54 = *MEMORY[0x1E69E9858];
          v82 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
          v83 = v82 & 3;
          v84 = -v82;
          v20 = v84 < 0;
          v85 = v84 & 3;
          if (v20)
          {
            v86 = v83;
          }

          else
          {
            v86 = -v85;
          }

          v87 = &uuid_string_string[37 * v86];
          uuid_unparse(a3 + 8, v87);
          v88 = " -- skipping";
          if (!a6)
          {
            v88 = "";
          }

          v92 = *a3;
          v93 = v88;
          v90 = v87;
          v91 = *(a3 + 4);
          v89 = v8;
          v63 = "%*s%s: %s slid base address 0x%llx, slide 0x%llx%s\n";
LABEL_66:
          fprintf(v54, v63, a5, "", v89, v90, v91, v92, v93, v94, v95);
        }

        goto LABEL_89;
      case 2313:
      case 2318:
      case 2319:
      case 2344:
      case 2358:
      case 2375:
      case 2385:
        goto LABEL_5;
      case 2314:
      case 2316:
      case 2323:
      case 2325:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: 0x%x%s\n");
        goto LABEL_94;
      case 2315:
      case 2317:
      case 2324:
      case 2326:
      case 2327:
      case 2382:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: 0x%llx%s\n");
        goto LABEL_94;
      case 2320:
      case 2321:
      case 2338:
      case 2354:
      case 2373:
        goto LABEL_24;
      case 2322:
      case 2337:
        goto LABEL_19;
      case 2328:
      case 2329:
      case 2330:
      case 2331:
      case 2334:
      case 2335:
      case 2340:
      case 2341:
      case 2342:
      case 2343:
      case 2347:
      case 2348:
      case 2349:
      case 2353:
      case 2355:
      case 2356:
      case 2359:
      case 2360:
      case 2361:
      case 2362:
      case 2363:
      case 2364:
      case 2365:
      case 2366:
      case 2367:
      case 2370:
      case 2377:
      case 2378:
      case 2380:
      case 2383:
      case 2386:
      case 2389:
      case 2390:
      case 2391:
        goto LABEL_46;
      case 2332:
        v16 = *__error();
        v65 = *MEMORY[0x1E69E9858];
        v66 = a3 + 8;
        v67 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
        v68 = v67 & 3;
        v69 = -v67;
        v20 = v69 < 0;
        v70 = v69 & 3;
        if (v20)
        {
          v71 = v68;
        }

        else
        {
          v71 = -v70;
        }

        uuid_unparse(v66, &uuid_string_string[37 * v71]);
        fprintf(v65, "%*s%s: 0x%llx %s%s\n");
        goto LABEL_89;
      case 2333:
        v15 = *__error();
        v80 = *MEMORY[0x1E69E9858];
        if (a2 < 0x1F)
        {
          fprintf(v80, "%*s%s: type:0x%x owner:0x%llx waiter:0x%llx context:0x%llx%s\n", a5, "");
        }

        else
        {
          fprintf(v80, "%*s%s: type:0x%x owner:0x%llx waiter:0x%llx context:0x%llx portlabel_id:%d flags:0x%x%s\n", a5, "", v8);
        }

        goto LABEL_100;
      case 2336:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: id %llu, flags 0x%llx, thread_group %llu, leader uniquepid %llu%s\n", a5, "");
        goto LABEL_94;
      case 2339:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: %llu instructions, %llu cycles%s\n");
        goto LABEL_94;
      case 2345:
        v15 = *__error();
        v64 = *MEMORY[0x1E69E9858];
        if (a2 < 0x1C)
        {
          fprintf(v64, "%*s%s: flags:0x%llx waiter:0x%llx context:0x%llx priority:%d hops:%d%s\n", a5, "");
        }

        else
        {
          fprintf(v64, "%*s%s: flags:0x%llx waiter:0x%llx context:0x%llx priority:%d hops:%d portlabel_id:%d%s\n", a5, "", v8);
        }

        goto LABEL_100;
      case 2346:
        v15 = *__error();
        v79 = *MEMORY[0x1E69E9858];
        CSArchitectureGetFamilyName();
        fprintf(v79, "%*s%s: %s (0x%x, 0x%x)%s\n", a5);
        goto LABEL_100;
      case 2350:
        goto LABEL_26;
      case 2351:
      case 2372:
        v98 = *__error();
        v97 = *MEMORY[0x1E69E9858];
        v29 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
        v30 = v29 & 3;
        v31 = -v29;
        v20 = v31 < 0;
        v32 = v31 & 3;
        if (v20)
        {
          v33 = v30;
        }

        else
        {
          v33 = -v32;
        }

        uuid_unparse(a3 + 32, &uuid_string_string[37 * v33]);
        v34 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
        v35 = v34 & 3;
        v36 = -v34;
        v20 = v36 < 0;
        v37 = v36 & 3;
        if (v20)
        {
          v38 = v35;
        }

        else
        {
          v38 = -v37;
        }

        uuid_unparse(a3 + 8, &uuid_string_string[37 * v38]);
        fprintf(v97, "%*s%s: 0x%llx %s -> 0x%llx %s%s\n", a5, "");
        goto LABEL_44;
      case 2352:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: %s [%d] (transitioning 0x%llx)%s\n", a5);
        goto LABEL_94;
      case 2357:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: id:%d flags:0x%x domain:%d%s\n", a5);
        goto LABEL_94;
      case 2368:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: [%llu]%s\n");
        goto LABEL_94;
      case 2369:
        v15 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: thread_delta_v%d 0x%llx%s\n");
        goto LABEL_100;
      case 2371:
        v16 = *__error();
        v54 = *MEMORY[0x1E69E9858];
        v55 = *(a3 + 10);
        v56 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
        v57 = v56 & 3;
        v58 = -v56;
        v20 = v58 < 0;
        v59 = v58 & 3;
        if (v20)
        {
          v60 = v57;
        }

        else
        {
          v60 = -v59;
        }

        v61 = &uuid_string_string[37 * v60];
        uuid_unparse(a3 + 8, v61);
        v62 = " -- skipping";
        if (!a6)
        {
          v62 = "";
        }

        v94 = *(a3 + 11);
        v95 = v62;
        v92 = *(a3 + 4);
        v93 = *a3;
        v90 = v55;
        v91 = v61;
        v89 = v8;
        v63 = "%*s%s: id %d: %s slid base address 0x%llx, slide 0x%llx, flags 0x%x%s\n";
        goto LABEL_66;
      case 2374:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: flags 0x%llx, trust level %u%s\n");
        goto LABEL_94;
      case 2376:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: scid %llu, thread offset %u, flags 0x%x%s\n", a5);
        goto LABEL_94;
      case 2379:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: id %llu, flags 0x%llx%s\n");
        goto LABEL_94;
      case 2381:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: asid 0x%llx, tnid %llu, invocationid %llu, flags 0x%llx%s\n", a5, "");
        goto LABEL_94;
      case 2384:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: id 0x%llx, flags 0x%llx, layoutid %llu, slide 0x%llx, %s\n", a5, "");
        goto LABEL_94;
      case 2387:
        v15 = *__error();
        v78 = *MEMORY[0x1E69E9858];
        if (a2 < 0x14)
        {
          fprintf(v78, "%*s%s: layoutid %llu, flags 0x%llx%s\n");
        }

        else
        {
          fprintf(v78, "%*s%s: layoutid %llu, flags 0x%llx, sharedcache_index %u%s\n", a5);
        }

        goto LABEL_100;
      case 2388:
        v16 = *__error();
        v17 = *MEMORY[0x1E69E9858];
        goto LABEL_55;
      case 2392:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: memlimit:%u effectivepri:%u requestedpri:%u assertionpri:%u%s\n", a5, "");
        goto LABEL_94;
      default:
        if (v11 == 53)
        {
          v81 = *a3;
          memset(&v100, 0, sizeof(v100));
          v99 = v81 / 0xF4240;
          localtime_r(&v99, &v100);
          if (!strftime(v101, 0x20uLL, "%Y-%m-%d %T", &v100))
          {
            v101[0] = 0;
          }

          v16 = *__error();
          fprintf(*MEMORY[0x1E69E9858], "%*s%s: %s.%03llu%s\n");
          goto LABEL_89;
        }

        if (v11 != 57)
        {
          goto LABEL_46;
        }

        v98 = *__error();
        v96 = *MEMORY[0x1E69E9858];
        v18 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
        v19 = v18 & 3;
        v21 = -v18;
        v20 = v21 < 0;
        v22 = v21 & 3;
        if (v20)
        {
          v23 = v19;
        }

        else
        {
          v23 = -v22;
        }

        uuid_unparse(a3 + 24, &uuid_string_string[37 * v23]);
        v24 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
        v25 = v24 & 3;
        v26 = -v24;
        v20 = v26 < 0;
        v27 = v26 & 3;
        if (v20)
        {
          v28 = v25;
        }

        else
        {
          v28 = -v27;
        }

        uuid_unparse(a3 + 40, &uuid_string_string[37 * v28]);
        fprintf(v96, "%*s%s: %#18llx - %#18llx -> %#18llx %s-%s%s\n", a5, "", v8);
LABEL_44:
        result = __error();
        *result = v98;
        break;
    }

    return result;
  }

  if (v11 <= 47)
  {
    if (v11 <= 2)
    {
      if (v11 == 1)
      {
LABEL_5:
        v12 = a3[a2 - 1];
        v13 = *__error();
        v14 = *MEMORY[0x1E69E9858];
        if (v12)
        {
          fprintf(v14, "%*s%s: (invalid string)%s\n");
        }

        else
        {
          fprintf(v14, "%*s%s: %s%s\n");
        }

        goto LABEL_94;
      }

      if (v11 == 2)
      {
LABEL_24:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: %u%s\n");
        goto LABEL_94;
      }

      goto LABEL_46;
    }

    if (v11 != 3)
    {
      if (v11 == 4)
      {
LABEL_36:
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: %d%s\n");
        goto LABEL_94;
      }

      if (v11 == 5)
      {
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: %lld%s\n");
LABEL_94:
        result = __error();
        *result = v13;
        return result;
      }

LABEL_46:
      v40 = *__error();
      v41 = " -- skipping";
      if (!a6)
      {
        v41 = "";
      }

      fprintf(*MEMORY[0x1E69E9858], "%*s%s: %s\n", a5, "", v8, v41);
      result = __error();
      *result = v40;
      return result;
    }

LABEL_19:
    v13 = *__error();
    fprintf(*MEMORY[0x1E69E9858], "%*s%s: %llu%s\n");
    goto LABEL_94;
  }

  if (v11 <= 49)
  {
    if (v11 == 48)
    {
      v16 = *__error();
      v42 = *MEMORY[0x1E69E9858];
      v43 = a3 + 4;
      v44 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
      v45 = v44 & 3;
      v46 = -v44;
      v20 = v46 < 0;
      v47 = v46 & 3;
      if (v20)
      {
        v48 = v45;
      }

      else
      {
        v48 = -v47;
      }

      uuid_unparse(v43, &uuid_string_string[37 * v48]);
      fprintf(v42, "%*s%s: %#18x %s%s\n");
    }

    else
    {
LABEL_26:
      v16 = *__error();
      v17 = *MEMORY[0x1E69E9858];
      a3 += 8;
LABEL_55:
      v49 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
      v50 = v49 & 3;
      v51 = -v49;
      v20 = v51 < 0;
      v52 = v51 & 3;
      if (v20)
      {
        v53 = v50;
      }

      else
      {
        v53 = -v52;
      }

      uuid_unparse(a3, &uuid_string_string[37 * v53]);
      fprintf(v17, "%*s%s: %#18llx %s%s\n");
    }

LABEL_89:
    result = __error();
    *result = v16;
    return result;
  }

  if (v11 == 50)
  {
    v13 = *__error();
    fprintf(*MEMORY[0x1E69E9858], "%*s%s: %d/%d%s\n");
    goto LABEL_94;
  }

  if (v11 == 51)
  {
    goto LABEL_19;
  }

  memset(&v100, 0, sizeof(v100));
  v99 = *a3;
  localtime_r(&v99, &v100);
  if (!strftime(v101, 0x20uLL, "%Y-%m-%d %T", &v100))
  {
    v101[0] = 0;
  }

  v15 = *__error();
  fprintf(*MEMORY[0x1E69E9858], "%*s%s: %s.%03llu%s\n");
LABEL_100:
  result = __error();
  *result = v15;
  return result;
}

uint64_t *StringForKPDecodeContentBits(uint64_t *result)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *result;
  if (!*result)
  {
    strcpy(&qword_1EDD02FD0, "empty");
    return result;
  }

  v2 = result;
  if (v1)
  {
    strcpy(&qword_1EDD02FD0, "timestamp");
    v1 = *result;
    if ((*result & 2) == 0)
    {
      v3 = &word_1EDD02FD8 + 1;
      if ((v1 & 4) == 0)
      {
        if ((v1 & 8) == 0)
        {
          if ((v1 & 0x10) == 0)
          {
            if ((v1 & 0x20) == 0)
            {
              if ((v1 & 0x40) == 0)
              {
                if ((v1 & 0x80) == 0)
                {
                  if ((v1 & 0x200000000) == 0)
                  {
                    if ((v1 & 0x100) == 0)
                    {
                      if ((v1 & 0x200) == 0)
                      {
                        if ((v1 & 0x400) == 0)
                        {
                          if ((v1 & 0x800) == 0)
                          {
                            if ((v1 & 0x1000) == 0)
                            {
                              if ((v1 & 0x2000) == 0)
                              {
                                if ((v1 & 0x4000) == 0)
                                {
                                  if ((v1 & 0x8000) == 0)
                                  {
                                    if ((v1 & 0x10000) == 0)
                                    {
                                      if ((v1 & 0x20000) == 0)
                                      {
                                        if ((v1 & 0x40000) == 0)
                                        {
                                          if ((v1 & 0x80000) == 0)
                                          {
                                            if ((v1 & 0x100000) == 0)
                                            {
                                              if ((v1 & 0x200000) == 0)
                                              {
                                                if ((v1 & 0x400000) == 0)
                                                {
                                                  if ((v1 & 0x1000000) == 0)
                                                  {
                                                    if ((v1 & 0x2000000) == 0)
                                                    {
                                                      if ((v1 & 0x4000000) == 0)
                                                      {
                                                        if ((v1 & 0x8000000) == 0)
                                                        {
                                                          if ((v1 & 0x10000000) == 0)
                                                          {
                                                            if ((v1 & 0x20000000) == 0)
                                                            {
                                                              if ((v1 & 0x40000000) == 0)
                                                              {
                                                                if ((v1 & 0x80000000) == 0)
                                                                {
                                                                  if ((v1 & 0x100000000) == 0)
                                                                  {
                                                                    if ((v1 & 0x8000000000000000) == 0)
                                                                    {
                                                                      goto LABEL_234;
                                                                    }

                                                                    goto LABEL_231;
                                                                  }

                                                                  goto LABEL_227;
                                                                }

                                                                goto LABEL_223;
                                                              }

                                                              goto LABEL_219;
                                                            }

                                                            goto LABEL_215;
                                                          }

                                                          goto LABEL_211;
                                                        }

                                                        goto LABEL_207;
                                                      }

                                                      goto LABEL_203;
                                                    }

                                                    goto LABEL_199;
                                                  }

                                                  goto LABEL_195;
                                                }

                                                goto LABEL_191;
                                              }

                                              goto LABEL_187;
                                            }

                                            goto LABEL_183;
                                          }

                                          goto LABEL_179;
                                        }

                                        goto LABEL_175;
                                      }

                                      goto LABEL_171;
                                    }

                                    goto LABEL_167;
                                  }

                                  goto LABEL_163;
                                }

                                goto LABEL_159;
                              }

                              goto LABEL_155;
                            }

                            goto LABEL_151;
                          }

                          goto LABEL_147;
                        }

                        goto LABEL_143;
                      }

                      goto LABEL_139;
                    }

                    goto LABEL_135;
                  }

                  goto LABEL_131;
                }

                goto LABEL_127;
              }

              goto LABEL_123;
            }

            goto LABEL_119;
          }

          goto LABEL_115;
        }

        goto LABEL_111;
      }

      goto LABEL_107;
    }

    v3 = &word_1EDD02FD8 + snprintf(&word_1EDD02FD8 + 1, _MergedGlobals_4 - (&word_1EDD02FD8 + 1) + 552, ", ") + 1;
LABEL_73:
    result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "cpuno");
    v3 += result;
    v1 = *v2;
    if ((*v2 & 4) == 0)
    {
      if ((v1 & 8) != 0)
      {
        goto LABEL_110;
      }

      goto LABEL_75;
    }

    if (v3 == &qword_1EDD02FD0)
    {
      v3 = &qword_1EDD02FD0;
LABEL_109:
      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "tid");
      v3 += result;
      v1 = *v2;
      if ((*v2 & 8) != 0)
      {
LABEL_110:
        if (v3 == &qword_1EDD02FD0)
        {
          v3 = &qword_1EDD02FD0;
LABEL_113:
          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "threadname");
          v3 += result;
          v1 = *v2;
          if ((*v2 & 0x10) != 0)
          {
LABEL_114:
            if (v3 == &qword_1EDD02FD0)
            {
              v3 = &qword_1EDD02FD0;
LABEL_117:
              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "kevent");
              v3 += result;
              v1 = *v2;
              if ((*v2 & 0x20) != 0)
              {
LABEL_118:
                if (v3 == &qword_1EDD02FD0)
                {
                  v3 = &qword_1EDD02FD0;
LABEL_121:
                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "threadinfo");
                  v3 += result;
                  v1 = *v2;
                  if ((*v2 & 0x40) != 0)
                  {
LABEL_122:
                    if (v3 == &qword_1EDD02FD0)
                    {
                      v3 = &qword_1EDD02FD0;
LABEL_125:
                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "kstack");
                      v3 += result;
                      v1 = *v2;
                      if ((*v2 & 0x80) != 0)
                      {
LABEL_126:
                        if (v3 == &qword_1EDD02FD0)
                        {
                          v3 = &qword_1EDD02FD0;
LABEL_129:
                          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "ustack");
                          v3 += result;
                          v1 = *v2;
                          if ((*v2 & 0x200000000) != 0)
                          {
LABEL_130:
                            if (v3 == &qword_1EDD02FD0)
                            {
                              v3 = &qword_1EDD02FD0;
LABEL_133:
                              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "exstack");
                              v3 += result;
                              v1 = *v2;
                              if ((*v2 & 0x100) != 0)
                              {
LABEL_134:
                                if (v3 == &qword_1EDD02FD0)
                                {
                                  v3 = &qword_1EDD02FD0;
LABEL_137:
                                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "trigger");
                                  v3 += result;
                                  v1 = *v2;
                                  if ((*v2 & 0x200) != 0)
                                  {
LABEL_138:
                                    if (v3 == &qword_1EDD02FD0)
                                    {
                                      v3 = &qword_1EDD02FD0;
LABEL_141:
                                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "pmc_thread");
                                      v3 += result;
                                      v1 = *v2;
                                      if ((*v2 & 0x400) != 0)
                                      {
LABEL_142:
                                        if (v3 == &qword_1EDD02FD0)
                                        {
                                          v3 = &qword_1EDD02FD0;
LABEL_145:
                                          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "pmc_cpu");
                                          v3 += result;
                                          v1 = *v2;
                                          if ((*v2 & 0x800) != 0)
                                          {
LABEL_146:
                                            if (v3 == &qword_1EDD02FD0)
                                            {
                                              v3 = &qword_1EDD02FD0;
LABEL_149:
                                              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "pmc_config");
                                              v3 += result;
                                              v1 = *v2;
                                              if ((*v2 & 0x1000) != 0)
                                              {
LABEL_150:
                                                if (v3 == &qword_1EDD02FD0)
                                                {
                                                  v3 = &qword_1EDD02FD0;
LABEL_153:
                                                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "meminfo");
                                                  v3 += result;
                                                  v1 = *v2;
                                                  if ((*v2 & 0x2000) != 0)
                                                  {
LABEL_154:
                                                    if (v3 == &qword_1EDD02FD0)
                                                    {
                                                      v3 = &qword_1EDD02FD0;
LABEL_157:
                                                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "sample");
                                                      v3 += result;
                                                      v1 = *v2;
                                                      if ((*v2 & 0x4000) != 0)
                                                      {
LABEL_158:
                                                        if (v3 == &qword_1EDD02FD0)
                                                        {
                                                          v3 = &qword_1EDD02FD0;
LABEL_161:
                                                          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "cswitch");
                                                          v3 += result;
                                                          v1 = *v2;
                                                          if ((*v2 & 0x8000) != 0)
                                                          {
LABEL_162:
                                                            if (v3 == &qword_1EDD02FD0)
                                                            {
                                                              v3 = &qword_1EDD02FD0;
LABEL_165:
                                                              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "config_ws");
                                                              v3 += result;
                                                              v1 = *v2;
                                                              if ((*v2 & 0x10000) != 0)
                                                              {
LABEL_166:
                                                                if (v3 == &qword_1EDD02FD0)
                                                                {
                                                                  v3 = &qword_1EDD02FD0;
LABEL_169:
                                                                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "lost_evts");
                                                                  v3 += result;
                                                                  v1 = *v2;
                                                                  if ((*v2 & 0x20000) != 0)
                                                                  {
LABEL_170:
                                                                    if (v3 == &qword_1EDD02FD0)
                                                                    {
                                                                      v3 = &qword_1EDD02FD0;
LABEL_173:
                                                                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "straggler");
                                                                      v3 += result;
                                                                      v1 = *v2;
                                                                      if ((*v2 & 0x40000) != 0)
                                                                      {
LABEL_174:
                                                                        if (v3 == &qword_1EDD02FD0)
                                                                        {
                                                                          v3 = &qword_1EDD02FD0;
LABEL_177:
                                                                          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "signpost");
                                                                          v3 += result;
                                                                          v1 = *v2;
                                                                          if ((*v2 & 0x80000) != 0)
                                                                          {
LABEL_178:
                                                                            if (v3 == &qword_1EDD02FD0)
                                                                            {
                                                                              v3 = &qword_1EDD02FD0;
LABEL_181:
                                                                              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "id_string");
                                                                              v3 += result;
                                                                              v1 = *v2;
                                                                              if ((*v2 & 0x100000) != 0)
                                                                              {
LABEL_182:
                                                                                if (v3 == &qword_1EDD02FD0)
                                                                                {
                                                                                  v3 = &qword_1EDD02FD0;
LABEL_185:
                                                                                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "tinfo_sched");
                                                                                  v3 += result;
                                                                                  v1 = *v2;
                                                                                  if ((*v2 & 0x200000) != 0)
                                                                                  {
LABEL_186:
                                                                                    if (v3 == &qword_1EDD02FD0)
                                                                                    {
                                                                                      v3 = &qword_1EDD02FD0;
LABEL_189:
                                                                                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "task_snapshot");
                                                                                      v3 += result;
                                                                                      v1 = *v2;
                                                                                      if ((*v2 & 0x400000) != 0)
                                                                                      {
LABEL_190:
                                                                                        if (v3 == &qword_1EDD02FD0)
                                                                                        {
                                                                                          v3 = &qword_1EDD02FD0;
LABEL_193:
                                                                                          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "thread_snapshot");
                                                                                          v3 += result;
                                                                                          v1 = *v2;
                                                                                          if ((*v2 & 0x1000000) != 0)
                                                                                          {
LABEL_194:
                                                                                            if (v3 == &qword_1EDD02FD0)
                                                                                            {
                                                                                              v3 = &qword_1EDD02FD0;
LABEL_197:
                                                                                              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "timer_fire");
                                                                                              v3 += result;
                                                                                              v1 = *v2;
                                                                                              if ((*v2 & 0x2000000) != 0)
                                                                                              {
LABEL_198:
                                                                                                if (v3 == &qword_1EDD02FD0)
                                                                                                {
                                                                                                  v3 = &qword_1EDD02FD0;
LABEL_201:
                                                                                                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "system_memory");
                                                                                                  v3 += result;
                                                                                                  v1 = *v2;
                                                                                                  if ((*v2 & 0x4000000) != 0)
                                                                                                  {
LABEL_202:
                                                                                                    if (v3 == &qword_1EDD02FD0)
                                                                                                    {
                                                                                                      v3 = &qword_1EDD02FD0;
LABEL_205:
                                                                                                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "thread_inscyc");
                                                                                                      v3 += result;
                                                                                                      v1 = *v2;
                                                                                                      if ((*v2 & 0x8000000) != 0)
                                                                                                      {
LABEL_206:
                                                                                                        if (v3 == &qword_1EDD02FD0)
                                                                                                        {
                                                                                                          v3 = &qword_1EDD02FD0;
LABEL_209:
                                                                                                          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "tinfo_sched_v2");
                                                                                                          v3 += result;
                                                                                                          v1 = *v2;
                                                                                                          if ((*v2 & 0x10000000) != 0)
                                                                                                          {
LABEL_210:
                                                                                                            if (v3 == &qword_1EDD02FD0)
                                                                                                            {
                                                                                                              v3 = &qword_1EDD02FD0;
LABEL_213:
                                                                                                              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "thread_dispatch_label");
                                                                                                              v3 += result;
                                                                                                              v1 = *v2;
                                                                                                              if ((*v2 & 0x20000000) != 0)
                                                                                                              {
LABEL_214:
                                                                                                                if (v3 == &qword_1EDD02FD0)
                                                                                                                {
                                                                                                                  v3 = &qword_1EDD02FD0;
LABEL_217:
                                                                                                                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "specific_thread_name");
                                                                                                                  v3 += result;
                                                                                                                  v1 = *v2;
                                                                                                                  if ((*v2 & 0x40000000) != 0)
                                                                                                                  {
LABEL_218:
                                                                                                                    if (v3 == &qword_1EDD02FD0)
                                                                                                                    {
                                                                                                                      v3 = &qword_1EDD02FD0;
LABEL_221:
                                                                                                                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "pmi");
                                                                                                                      v3 += result;
                                                                                                                      v1 = *v2;
                                                                                                                      if ((*v2 & 0x80000000) != 0)
                                                                                                                      {
LABEL_222:
                                                                                                                        if (v3 == &qword_1EDD02FD0)
                                                                                                                        {
                                                                                                                          v3 = &qword_1EDD02FD0;
                                                                                                                          goto LABEL_225;
                                                                                                                        }

LABEL_223:
                                                                                                                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                                        goto LABEL_225;
                                                                                                                      }

LABEL_103:
                                                                                                                      if ((v1 & 0x100000000) != 0)
                                                                                                                      {
                                                                                                                        goto LABEL_226;
                                                                                                                      }

LABEL_104:
                                                                                                                      if ((v1 & 0x8000000000000000) == 0)
                                                                                                                      {
                                                                                                                        goto LABEL_234;
                                                                                                                      }

                                                                                                                      goto LABEL_230;
                                                                                                                    }

LABEL_219:
                                                                                                                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                                    goto LABEL_221;
                                                                                                                  }

LABEL_102:
                                                                                                                  if ((v1 & 0x80000000) != 0)
                                                                                                                  {
                                                                                                                    goto LABEL_222;
                                                                                                                  }

                                                                                                                  goto LABEL_103;
                                                                                                                }

LABEL_215:
                                                                                                                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                                goto LABEL_217;
                                                                                                              }

LABEL_101:
                                                                                                              if ((v1 & 0x40000000) != 0)
                                                                                                              {
                                                                                                                goto LABEL_218;
                                                                                                              }

                                                                                                              goto LABEL_102;
                                                                                                            }

LABEL_211:
                                                                                                            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                            goto LABEL_213;
                                                                                                          }

LABEL_100:
                                                                                                          if ((v1 & 0x20000000) != 0)
                                                                                                          {
                                                                                                            goto LABEL_214;
                                                                                                          }

                                                                                                          goto LABEL_101;
                                                                                                        }

LABEL_207:
                                                                                                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                        goto LABEL_209;
                                                                                                      }

LABEL_99:
                                                                                                      if ((v1 & 0x10000000) != 0)
                                                                                                      {
                                                                                                        goto LABEL_210;
                                                                                                      }

                                                                                                      goto LABEL_100;
                                                                                                    }

LABEL_203:
                                                                                                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                    goto LABEL_205;
                                                                                                  }

LABEL_98:
                                                                                                  if ((v1 & 0x8000000) != 0)
                                                                                                  {
                                                                                                    goto LABEL_206;
                                                                                                  }

                                                                                                  goto LABEL_99;
                                                                                                }

LABEL_199:
                                                                                                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                goto LABEL_201;
                                                                                              }

LABEL_97:
                                                                                              if ((v1 & 0x4000000) != 0)
                                                                                              {
                                                                                                goto LABEL_202;
                                                                                              }

                                                                                              goto LABEL_98;
                                                                                            }

LABEL_195:
                                                                                            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                            goto LABEL_197;
                                                                                          }

LABEL_96:
                                                                                          if ((v1 & 0x2000000) != 0)
                                                                                          {
                                                                                            goto LABEL_198;
                                                                                          }

                                                                                          goto LABEL_97;
                                                                                        }

LABEL_191:
                                                                                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                        goto LABEL_193;
                                                                                      }

LABEL_95:
                                                                                      if ((v1 & 0x1000000) != 0)
                                                                                      {
                                                                                        goto LABEL_194;
                                                                                      }

                                                                                      goto LABEL_96;
                                                                                    }

LABEL_187:
                                                                                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                    goto LABEL_189;
                                                                                  }

LABEL_94:
                                                                                  if ((v1 & 0x400000) != 0)
                                                                                  {
                                                                                    goto LABEL_190;
                                                                                  }

                                                                                  goto LABEL_95;
                                                                                }

LABEL_183:
                                                                                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                goto LABEL_185;
                                                                              }

LABEL_93:
                                                                              if ((v1 & 0x200000) != 0)
                                                                              {
                                                                                goto LABEL_186;
                                                                              }

                                                                              goto LABEL_94;
                                                                            }

LABEL_179:
                                                                            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                            goto LABEL_181;
                                                                          }

LABEL_92:
                                                                          if ((v1 & 0x100000) != 0)
                                                                          {
                                                                            goto LABEL_182;
                                                                          }

                                                                          goto LABEL_93;
                                                                        }

LABEL_175:
                                                                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                        goto LABEL_177;
                                                                      }

LABEL_91:
                                                                      if ((v1 & 0x80000) != 0)
                                                                      {
                                                                        goto LABEL_178;
                                                                      }

                                                                      goto LABEL_92;
                                                                    }

LABEL_171:
                                                                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                    goto LABEL_173;
                                                                  }

LABEL_90:
                                                                  if ((v1 & 0x40000) != 0)
                                                                  {
                                                                    goto LABEL_174;
                                                                  }

                                                                  goto LABEL_91;
                                                                }

LABEL_167:
                                                                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                goto LABEL_169;
                                                              }

LABEL_89:
                                                              if ((v1 & 0x20000) != 0)
                                                              {
                                                                goto LABEL_170;
                                                              }

                                                              goto LABEL_90;
                                                            }

LABEL_163:
                                                            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                            goto LABEL_165;
                                                          }

LABEL_88:
                                                          if ((v1 & 0x10000) != 0)
                                                          {
                                                            goto LABEL_166;
                                                          }

                                                          goto LABEL_89;
                                                        }

LABEL_159:
                                                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                        goto LABEL_161;
                                                      }

LABEL_87:
                                                      if ((v1 & 0x8000) != 0)
                                                      {
                                                        goto LABEL_162;
                                                      }

                                                      goto LABEL_88;
                                                    }

LABEL_155:
                                                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                    goto LABEL_157;
                                                  }

LABEL_86:
                                                  if ((v1 & 0x4000) != 0)
                                                  {
                                                    goto LABEL_158;
                                                  }

                                                  goto LABEL_87;
                                                }

LABEL_151:
                                                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                goto LABEL_153;
                                              }

LABEL_85:
                                              if ((v1 & 0x2000) != 0)
                                              {
                                                goto LABEL_154;
                                              }

                                              goto LABEL_86;
                                            }

LABEL_147:
                                            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                            goto LABEL_149;
                                          }

LABEL_84:
                                          if ((v1 & 0x1000) != 0)
                                          {
                                            goto LABEL_150;
                                          }

                                          goto LABEL_85;
                                        }

LABEL_143:
                                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                        goto LABEL_145;
                                      }

LABEL_83:
                                      if ((v1 & 0x800) != 0)
                                      {
                                        goto LABEL_146;
                                      }

                                      goto LABEL_84;
                                    }

LABEL_139:
                                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                    goto LABEL_141;
                                  }

LABEL_82:
                                  if ((v1 & 0x400) != 0)
                                  {
                                    goto LABEL_142;
                                  }

                                  goto LABEL_83;
                                }

LABEL_135:
                                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                goto LABEL_137;
                              }

LABEL_81:
                              if ((v1 & 0x200) != 0)
                              {
                                goto LABEL_138;
                              }

                              goto LABEL_82;
                            }

LABEL_131:
                            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                            goto LABEL_133;
                          }

LABEL_80:
                          if ((v1 & 0x100) != 0)
                          {
                            goto LABEL_134;
                          }

                          goto LABEL_81;
                        }

LABEL_127:
                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                        goto LABEL_129;
                      }

LABEL_79:
                      if ((v1 & 0x200000000) != 0)
                      {
                        goto LABEL_130;
                      }

                      goto LABEL_80;
                    }

LABEL_123:
                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                    goto LABEL_125;
                  }

LABEL_78:
                  if ((v1 & 0x80) != 0)
                  {
                    goto LABEL_126;
                  }

                  goto LABEL_79;
                }

LABEL_119:
                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                goto LABEL_121;
              }

LABEL_77:
              if ((v1 & 0x40) != 0)
              {
                goto LABEL_122;
              }

              goto LABEL_78;
            }

LABEL_115:
            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
            goto LABEL_117;
          }

LABEL_76:
          if ((v1 & 0x20) != 0)
          {
            goto LABEL_118;
          }

          goto LABEL_77;
        }

LABEL_111:
        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
        goto LABEL_113;
      }

LABEL_75:
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_114;
      }

      goto LABEL_76;
    }

LABEL_107:
    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
    goto LABEL_109;
  }

  v3 = &qword_1EDD02FD0;
  if ((v1 & 2) != 0)
  {
    goto LABEL_73;
  }

  if ((v1 & 4) != 0)
  {
    goto LABEL_109;
  }

  if ((v1 & 8) != 0)
  {
    goto LABEL_113;
  }

  if ((v1 & 0x10) != 0)
  {
    goto LABEL_117;
  }

  if ((v1 & 0x20) != 0)
  {
    goto LABEL_121;
  }

  if ((v1 & 0x40) != 0)
  {
    goto LABEL_125;
  }

  if ((v1 & 0x80) != 0)
  {
    goto LABEL_129;
  }

  if ((v1 & 0x200000000) != 0)
  {
    goto LABEL_133;
  }

  if ((v1 & 0x100) != 0)
  {
    goto LABEL_137;
  }

  if ((v1 & 0x200) != 0)
  {
    goto LABEL_141;
  }

  if ((v1 & 0x400) != 0)
  {
    goto LABEL_145;
  }

  if ((v1 & 0x800) != 0)
  {
    goto LABEL_149;
  }

  if ((v1 & 0x1000) != 0)
  {
    goto LABEL_153;
  }

  if ((v1 & 0x2000) != 0)
  {
    goto LABEL_157;
  }

  if ((v1 & 0x4000) != 0)
  {
    goto LABEL_161;
  }

  if ((v1 & 0x8000) != 0)
  {
    goto LABEL_165;
  }

  if ((v1 & 0x10000) != 0)
  {
    goto LABEL_169;
  }

  if ((v1 & 0x20000) != 0)
  {
    goto LABEL_173;
  }

  if ((v1 & 0x40000) != 0)
  {
    goto LABEL_177;
  }

  if ((v1 & 0x80000) != 0)
  {
    goto LABEL_181;
  }

  if ((v1 & 0x100000) != 0)
  {
    goto LABEL_185;
  }

  if ((v1 & 0x200000) != 0)
  {
    goto LABEL_189;
  }

  if ((v1 & 0x400000) != 0)
  {
    goto LABEL_193;
  }

  if ((v1 & 0x1000000) != 0)
  {
    goto LABEL_197;
  }

  if ((v1 & 0x2000000) != 0)
  {
    goto LABEL_201;
  }

  if ((v1 & 0x4000000) != 0)
  {
    goto LABEL_205;
  }

  if ((v1 & 0x8000000) != 0)
  {
    goto LABEL_209;
  }

  if ((v1 & 0x10000000) != 0)
  {
    goto LABEL_213;
  }

  if ((v1 & 0x20000000) != 0)
  {
    goto LABEL_217;
  }

  if ((v1 & 0x40000000) != 0)
  {
    goto LABEL_221;
  }

  if ((v1 & 0x80000000) == 0)
  {
    if ((v1 & 0x100000000) == 0)
    {
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_234;
      }

      goto LABEL_233;
    }

    goto LABEL_229;
  }

LABEL_225:
  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "system_memory_status");
  v3 += result;
  v1 = *v2;
  if ((*v2 & 0x100000000) == 0)
  {
    goto LABEL_104;
  }

LABEL_226:
  if (v3 != &qword_1EDD02FD0)
  {
LABEL_227:
    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
    goto LABEL_229;
  }

  v3 = &qword_1EDD02FD0;
LABEL_229:
  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "async_stack");
  v3 += result;
  v1 = *v2;
  if ((*v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_234;
  }

LABEL_230:
  if (v3 == &qword_1EDD02FD0)
  {
    v3 = &qword_1EDD02FD0;
    goto LABEL_233;
  }

LABEL_231:
  v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
LABEL_233:
  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "malformed");
  v3 += result;
  v1 = *v2;
LABEL_234:
  v4 = v1 & 0x7FFFFFFC00000000;
  v11 = v1 & 0x7FFFFFFC00000000;
  if ((v1 & 0x7FFFFFFC00000000) != 0)
  {
    do
    {
      v5 = __clz(__rbit64(v4));
      v6 = buf[(v5 >> 3) - 8];
      v7 = 1 << (v5 & 7);
      if ((v7 & v6) == 0)
      {
        v9 = *__error();
        v10 = _sa_logt();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v13 = v5;
          v14 = 2048;
          v15 = v4;
          _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "bitNum %d unset, but contents 0x%llx", buf, 0x12u);
        }

        *__error() = v9;
        _SASetCrashLogMessage(623, "bitNum %d unset, but contents 0x%llx", v5, v4);
        _os_crash();
        __break(1u);
      }

      buf[(v5 >> 3) - 8] = v6 & ~v7;
      if (v3 == &qword_1EDD02FD0)
      {
        v8 = &qword_1EDD02FD0;
      }

      else
      {
        v8 = &v3[snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ")];
      }

      result = snprintf(v8, _MergedGlobals_4 - v8 + 552, "UNKNOWN(%d)", v5);
      v3 = &v8[result];
      v4 = v11;
    }

    while (v11);
  }

  return result;
}

void sub_1E0E86A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  _Block_object_dispose((v58 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_1E0E90BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, void *a56, void *a57, void *a58)
{
  _Block_object_dispose(&STACK[0x540], 8);
  _Block_object_dispose((v60 - 256), 8);

  _Block_object_dispose(&STACK[0x430], 8);
  _Block_object_dispose(&STACK[0x460], 8);
  _Block_object_dispose(&STACK[0x480], 8);
  _Block_object_dispose(&STACK[0x4A0], 8);
  _Block_object_dispose(&STACK[0x4C0], 8);
  _Block_object_dispose(&STACK[0x4E0], 8);

  _Block_object_dispose(&STACK[0x510], 8);
  _Unwind_Resume(a1);
}

id DictForChunkViaNSUnarchiver(uint64_t a1)
{
  v1 = ktrace_chunk_size();
  v2 = ktrace_chunk_map_data();
  if (v2)
  {
    v3 = v2;
    v14 = MEMORY[0x1E696ACD0];
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v4 initWithObjects:{v5, v6, v7, v8, objc_opt_class(), 0}];
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v3 length:v1 freeWhenDone:0];
    v15 = 0;
    v11 = [v14 unarchivedObjectOfClasses:v9 fromData:v10 error:&v15];
    v12 = v15;

    ktrace_chunk_unmap_data();
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1E0E94E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t flatbuffers::Verifier::VerifyOffset(flatbuffers::Verifier *this, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*this + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

BOOL flatbuffers::Verifier::VerifyTableStart(flatbuffers::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

BOOL flatbuffers::Verifier::VerifyVectorOrString(flatbuffers::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

BOOL flatbuffers::Verifier::VerifyString(flatbuffers::Verifier *a1, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = flatbuffers::Verifier::VerifyVectorOrString(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = *(a1 + 1);
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::TranslatedImageInfo>(flatbuffers::Verifier *this, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2 + 1;
  while (1)
  {
    v7 = a2[v4 + 1];
    v8 = &a2[v4] + v7;
    result = flatbuffers::Verifier::VerifyTableStart(this, v8 + 4);
    if (!result)
    {
      break;
    }

    v10 = v7 - *(v8 + 1);
    v11 = *(&a2[v4 + 1] + v10);
    if (v11 >= 5)
    {
      if (*(&a2[v4 + 2] + v10))
      {
        result = 0;
        v12 = *(this + 1);
        if (v12 < 9 || v12 - 8 < &v6[v4] + v7 + *(&a2[v4 + 2] + v10) - *this)
        {
          break;
        }
      }

      if (v11 >= 7)
      {
        if (*(&a2[v4 + 2] + v10 + 2))
        {
          result = 0;
          v13 = *(this + 1);
          if (v13 < 9 || v13 - 8 < &v6[v4] + v7 + *(&a2[v4 + 2] + v10 + 2) - *this)
          {
            break;
          }
        }

        if (v11 >= 9)
        {
          if (*(&a2[v4 + 3] + v10))
          {
            result = 0;
            v14 = *(this + 1);
            if (v14 < 9 || v14 - 8 < &v6[v4] + v7 + *(&a2[v4 + 3] + v10) - *this)
            {
              break;
            }
          }
        }
      }
    }

    result = flatbuffers::Table::VerifyOffset((v8 + 4), this, 0xAu);
    if (!result)
    {
      break;
    }

    if (v11 >= 0xB)
    {
      if (*(&a2[v4 + 3] + v10 + 2))
      {
        v15 = v7 + *(&a2[v4 + 3] + v10 + 2);
        if (!flatbuffers::Verifier::VerifyVectorOrString(this, &a2[v4 + 1] + v15 + *(&a2[v4 + 1] + v15), 1uLL, 0))
        {
          return 0;
        }
      }
    }

    --*(this + 4);
    ++v5;
    ++v4;
    if (v5 >= *a2)
    {
      return 1;
    }
  }

  return result;
}

BOOL FlatbufferSymbols::TimeRange::Verify(FlatbufferSymbols::TimeRange *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 1), v9 >= 9) && v9 - 8 >= this + v8 - *a2))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL FlatbufferSymbols::MachoMetadata::Verify(FlatbufferSymbols::MachoMetadata *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || (!v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 9) && v13 - 8 >= this + v11[4] - *a2) && (v12 < 0xB || !v11[5] || (result = 0, v14 = *(a2 + 1), v14 >= 9) && v14 - 8 >= this + v11[5] - *a2))
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
              if (result && (v12 < 0xD || !v11[6] || (result = FlatbufferSymbols::CPUArchitecture::Verify((this + v11[6] + *(this + v11[6])), a2))))
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                if (result)
                {
                  v15 = (this - *this);
                  if (*v15 >= 0xFu && (v16 = v15[7]) != 0)
                  {
                    v17 = this + v16 + *(this + v16);
                  }

                  else
                  {
                    v17 = 0;
                  }

                  result = flatbuffers::Verifier::VerifyString(a2, v17);
                  if (result)
                  {
                    result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                    if (result)
                    {
                      v18 = (this - *this);
                      if (*v18 >= 0x11u && (v19 = v18[8]) != 0)
                      {
                        v20 = this + v19 + *(this + v19);
                      }

                      else
                      {
                        v20 = 0;
                      }

                      result = flatbuffers::Verifier::VerifyString(a2, v20);
                      if (result)
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                        if (result)
                        {
                          v21 = (this - *this);
                          if (*v21 >= 0x13u && (v22 = v21[9]) != 0)
                          {
                            v23 = this + v22 + *(this + v22);
                          }

                          else
                          {
                            v23 = 0;
                          }

                          result = flatbuffers::Verifier::VerifyString(a2, v23);
                          if (result)
                          {
                            result = flatbuffers::Table::VerifyOffset(this, a2, 0x14u);
                            if (result)
                            {
                              v24 = (this - *this);
                              if (*v24 >= 0x15u && (v25 = v24[10]) != 0)
                              {
                                v26 = this + v25 + *(this + v25);
                              }

                              else
                              {
                                v26 = 0;
                              }

                              result = flatbuffers::Verifier::VerifyString(a2, v26);
                              if (result)
                              {
                                result = flatbuffers::Table::VerifyOffset(this, a2, 0x16u);
                                if (result)
                                {
                                  v27 = (this - *this);
                                  if (*v27 >= 0x17u && (v28 = v27[11]) != 0)
                                  {
                                    v29 = this + v28 + *(this + v28);
                                  }

                                  else
                                  {
                                    v29 = 0;
                                  }

                                  result = flatbuffers::Verifier::VerifyString(a2, v29);
                                  if (result)
                                  {
                                    result = flatbuffers::Table::VerifyOffset(this, a2, 0x18u);
                                    if (result)
                                    {
                                      v30 = (this - *this);
                                      if (*v30 >= 0x19u && (v31 = v30[12]) != 0)
                                      {
                                        v32 = this + v31 + *(this + v31);
                                      }

                                      else
                                      {
                                        v32 = 0;
                                      }

                                      result = flatbuffers::Verifier::VerifyString(a2, v32);
                                      if (result)
                                      {
                                        --*(a2 + 4);
                                        return 1;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL FlatbufferSymbols::CPUArchitecture::Verify(FlatbufferSymbols::CPUArchitecture *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2) && (v6 < 9 || (v9 = v5[4]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v9 - *a2)))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL FlatbufferSymbols::DyldSharedCacheMetadata::Verify(FlatbufferSymbols::DyldSharedCacheMetadata *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || (!v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 9) && v13 - 8 >= this + v11[4] - *a2) && (v12 < 0xB || !v11[5] || (result = 0, v14 = *(a2 + 1), v14 >= 9) && v14 - 8 >= this + v11[5] - *a2))
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
              if (result && (v12 < 0xD || !v11[6] || (result = FlatbufferSymbols::CPUArchitecture::Verify((this + v11[6] + *(this + v11[6])), a2))))
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                if (result)
                {
                  v15 = (this - *this);
                  if (*v15 >= 0xFu && (v16 = v15[7]) != 0)
                  {
                    v17 = this + v16 + *(this + v16);
                  }

                  else
                  {
                    v17 = 0;
                  }

                  result = flatbuffers::Verifier::VerifyString(a2, v17);
                  if (result)
                  {
                    result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                    if (result)
                    {
                      v18 = (this - *this);
                      if (*v18 >= 0x11u && (v19 = v18[8]) != 0)
                      {
                        v20 = this + v19 + *(this + v19);
                      }

                      else
                      {
                        v20 = 0;
                      }

                      result = flatbuffers::Verifier::VerifyString(a2, v20);
                      if (result)
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                        if (result)
                        {
                          v21 = (this - *this);
                          if (*v21 >= 0x13u && (v22 = v21[9]) != 0)
                          {
                            v23 = this + v22 + *(this + v22);
                          }

                          else
                          {
                            v23 = 0;
                          }

                          result = flatbuffers::Verifier::VerifyString(a2, v23);
                          if (result)
                          {
                            v24 = (this - *this);
                            if (*v24 < 0x15u || (v25 = v24[10]) == 0 || (result = 0, v26 = *(a2 + 1), v26 >= 9) && v26 - 8 >= this + v25 - *a2)
                            {
                              --*(a2 + 4);
                              return 1;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SymbolNameEntry>(flatbuffers::Verifier *this, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2 + 1;
  while (1)
  {
    v7 = a2[v4 + 1];
    v8 = &a2[v4] + v7;
    result = flatbuffers::Verifier::VerifyTableStart(this, v8 + 4);
    if (!result)
    {
      break;
    }

    v10 = v7 - *(v8 + 1);
    if (*(&a2[v4 + 1] + v10) < 5u)
    {
      return 0;
    }

    v11 = *(&a2[v4 + 2] + v10);
    if (!v11)
    {
      return 0;
    }

    v12 = v7 + v11;
    result = flatbuffers::Verifier::VerifyOffset(this, &v6[v4] + v7 + v11 - *this);
    if (!result)
    {
      return result;
    }

    result = flatbuffers::Verifier::VerifyString(this, &a2[v4 + 1] + v12 + *(&a2[v4 + 1] + v12));
    if (!result)
    {
      return result;
    }

    result = flatbuffers::Table::VerifyOffset((v8 + 4), this, 6u);
    if (!result)
    {
      return result;
    }

    v13 = &a2[v4] + v7 - *(v8 + 1);
    if (*(v13 + 2) >= 7u)
    {
      v14 = *(v13 + 5);
      if (v14)
      {
        if ((FlatbufferSymbols::Symbol::Verify((&a2[v4 + 1] + v7 + v14 + *(&a2[v4 + 1] + v7 + v14)), this) & 1) == 0)
        {
          return 0;
        }
      }
    }

    --*(this + 4);
    ++v5;
    ++v4;
    if (v5 >= *a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t FlatbufferSymbols::Symbol::Verify(FlatbufferSymbols::Symbol *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v5[2] - *a2) && (v6 < 7 || !v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 9) && v8 - 8 >= this + v5[3] - *a2))
    {
      result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
      if (result)
      {
        v9 = v6 >= 9 && v5[4] ? this + v5[4] + *(this + v5[4]) : 0;
        result = flatbuffers::Verifier::VerifyString(a2, v9);
        if (result)
        {
          result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
          if (result)
          {
            v10 = (this - *this);
            if (*v10 >= 0xBu && (v11 = v10[5]) != 0)
            {
              v12 = this + v11 + *(this + v11);
            }

            else
            {
              v12 = 0;
            }

            result = flatbuffers::Verifier::VerifyString(a2, v12);
            if (result)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
              if (result)
              {
                v13 = *this;
                if (*(this - v13) < 0xDu)
                {
                  goto LABEL_29;
                }

                if (*(this - v13 + 12))
                {
                  result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v13 + 12) + *(this + *(this - v13 + 12)), 4uLL, 0);
                  if (!result)
                  {
                    return result;
                  }

                  v13 = *this;
                  if (*(this - v13) < 0xDu)
                  {
                    goto LABEL_29;
                  }
                }

                v14 = *(this - v13 + 12);
                if (!v14)
                {
LABEL_29:
                  v15 = 0;
                }

                else
                {
                  v15 = (this + v14 + *(this + v14));
                }

                result = flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SourceInfo>(a2, v15);
                if (result)
                {
                  result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                  if (result)
                  {
                    v16 = (this - *this);
                    if (*v16 < 0xFu || (v17 = v16[7]) == 0 || (result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v17 + *(this + v17), 1uLL, 0), result))
                    {
                      result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                      if (result)
                      {
                        v18 = *this;
                        if (*(this - v18) < 0x11u)
                        {
                          goto LABEL_42;
                        }

                        if (*(this - v18 + 16))
                        {
                          result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v18 + 16) + *(this + *(this - v18 + 16)), 4uLL, 0);
                          if (!result)
                          {
                            return result;
                          }

                          v18 = *this;
                          if (*(this - v18) < 0x11u)
                          {
                            goto LABEL_42;
                          }
                        }

                        v19 = *(this - v18 + 16);
                        if (!v19)
                        {
LABEL_42:
                          v20 = 0;
                        }

                        else
                        {
                          v20 = (this + v19 + *(this + v19));
                        }

                        result = flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::InlineSymbol>(a2, v20);
                        if (result)
                        {
                          v21 = (this - *this);
                          if (*v21 < 0x13u || (v22 = v21[9]) == 0 || (result = 0, v23 = *(a2 + 1), v23 >= 9) && v23 - 8 >= this + v22 - *a2)
                          {
                            --*(a2 + 4);
                            return 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SourceInfo>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = FlatbufferSymbols::SourceInfo::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::InlineSymbol>(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2 + 1;
  while (1)
  {
    v7 = a2[v4 + 1];
    v8 = &a2[v4] + v7;
    result = flatbuffers::Verifier::VerifyTableStart(a1, v8 + 4);
    if (!result)
    {
      return result;
    }

    v10 = v7 - *(v8 + 1);
    v11 = *(&a2[v4 + 1] + v10);
    if (v11 >= 5)
    {
      if (*(&a2[v4 + 2] + v10))
      {
        result = 0;
        v12 = *(a1 + 8);
        if (v12 < 9 || v12 - 8 < &v6[v4] + v7 + *(&a2[v4 + 2] + v10) - *a1)
        {
          return result;
        }
      }

      if (v11 >= 7)
      {
        if (*(&a2[v4 + 2] + v10 + 2))
        {
          result = 0;
          v13 = *(a1 + 8);
          if (v13 < 9 || v13 - 8 < &v6[v4] + v7 + *(&a2[v4 + 2] + v10 + 2) - *a1)
          {
            return result;
          }
        }
      }
    }

    result = flatbuffers::Table::VerifyOffset((v8 + 4), a1, 8u);
    if (!result)
    {
      return result;
    }

    if (v11 >= 9 && *(&a2[v4 + 3] + v10))
    {
      v14 = v7 + *(&a2[v4 + 3] + v10);
      v15 = &a2[v4 + 1] + v14 + *(&a2[v4 + 1] + v14);
    }

    else
    {
      v15 = 0;
    }

    result = flatbuffers::Verifier::VerifyString(a1, v15);
    if (!result)
    {
      return result;
    }

    result = flatbuffers::Table::VerifyOffset((v8 + 4), a1, 0xAu);
    if (!result)
    {
      return result;
    }

    v16 = &a2[v4] + v7 - *(v8 + 1);
    if (*(v16 + 2) >= 0xBu && (v17 = *(v16 + 7)) != 0)
    {
      v18 = &a2[v4 + 1] + v7 + v17 + *(&a2[v4 + 1] + v7 + v17);
    }

    else
    {
      v18 = 0;
    }

    result = flatbuffers::Verifier::VerifyString(a1, v18);
    if (!result)
    {
      return result;
    }

    result = flatbuffers::Table::VerifyOffset((v8 + 4), a1, 0xCu);
    if (!result)
    {
      return result;
    }

    v19 = &a2[v4] + v7 - *(v8 + 1);
    if (*(v19 + 2) >= 0xDu)
    {
      v20 = *(v19 + 8);
      if (v20)
      {
        result = FlatbufferSymbols::SourceInfo::Verify((&a2[v4 + 1] + v7 + v20 + *(&a2[v4 + 1] + v7 + v20)), a1);
        if (!result)
        {
          return result;
        }
      }
    }

    result = flatbuffers::Table::VerifyOffset((v8 + 4), a1, 0xEu);
    if (!result)
    {
      return result;
    }

    v21 = *(v8 + 1);
    v22 = &a2[v4] + v7 - v21;
    if (*(v22 + 2) < 0xFu)
    {
      goto LABEL_36;
    }

    v23 = *(v22 + 9);
    if (v23)
    {
      result = flatbuffers::Verifier::VerifyVectorOrString(a1, &a2[v4 + 1] + v7 + v23 + *(&a2[v4 + 1] + v7 + v23), 4uLL, 0);
      if (!result)
      {
        return result;
      }

      v21 = *(v8 + 1);
      if (*(&a2[v4 + 1] + v7 - v21) < 0xFu)
      {
        goto LABEL_36;
      }
    }

    v24 = *(a2 + v7 + v4 * 4 - v21 + 18);
    if (!v24)
    {
LABEL_36:
      v25 = 0;
    }

    else
    {
      v25 = (&a2[v4 + 1] + v7 + v24 + *(&a2[v4 + 1] + v7 + v24));
    }

    result = flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::InlineSymbol>(a1, v25);
    if (!result)
    {
      return result;
    }

    v26 = &a2[v4] + v7 - *(v8 + 1);
    if (*(v26 + 2) >= 0x11u)
    {
      v27 = *(v26 + 10);
      if (v27)
      {
        result = 0;
        v28 = *(a1 + 8);
        if (v28 < 9 || v28 - 8 < &v6[v4] + v7 + v27 - *a1)
        {
          return result;
        }
      }
    }

    --*(a1 + 16);
    ++v5;
    ++v4;
    if (v5 >= *a2)
    {
      return 1;
    }
  }
}

BOOL FlatbufferSymbols::SourceInfo::Verify(FlatbufferSymbols::SourceInfo *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7 || (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2) && (v9 < 9 || (!v8[4] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v8[4] - *a2) && (v9 < 0xB || (!v8[5] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v8[5] - *a2) && (v9 < 0xD || (!v8[6] || (result = 0, v13 = *(a2 + 1), v13 >= 9) && v13 - 8 >= this + v8[6] - *a2) && (v9 < 0xF || (v14 = v8[7]) == 0 || (result = 0, v15 = *(a2 + 1), v15 >= 5) && v15 - 4 >= this + v14 - *a2)))))
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_1E0E9C804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  objc_sync_exit(v42);
  objc_sync_exit(obj);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9D3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  objc_sync_exit(v35);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 184), 8);
  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9E728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9E9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9EC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9EDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9F070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9F490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0EA1350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id obj)
{
  objc_sync_exit(v19);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_1E0EA2A24(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 176), 8);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1E0EA4CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id obj, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v36);
  _Unwind_Resume(a1);
}

void sub_1E0EA66E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1E0EA710C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0EA888C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0EA8AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E0EA8C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CopyLoadInfosForLiveProcess(_BOOL8 a1, uint64_t a2, id *a3, void *a4, id *a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v8 = a8;
  v12 = a3;
  v14 = a1;
  v209[10] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (!a1)
  {
    v23 = (a6 | a7) != 0;
    if (!a3 && !(a6 | a7))
    {
      return v23;
    }

    v209[0] = @"OSBundleLoadAddress";
    v209[1] = @"OSBundleLoadSize";
    v209[2] = @"OSBundleExecLoadAddress";
    v209[3] = @"OSBundleExecLoadSize";
    v209[4] = @"OSBundleUUID";
    v209[5] = @"OSBundleExecutablePath";
    v209[6] = @"OSBundleCPUType";
    v209[7] = @"OSBundleCPUSubtype";
    v168 = *MEMORY[0x1E695E4F0];
    v170 = *MEMORY[0x1E695E500];
    v209[8] = *MEMORY[0x1E695E500];
    v209[9] = v168;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v209 count:10];
    v25 = OSKextCopyLoadedKextInfo();
    if ([v25 count])
    {
      v164 = a6;
      v166 = a7;
      v158 = v24;
      v159 = v12;
      v172 = v23;
      if (v12)
      {
        v178 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      else
      {
        v178 = 0;
      }

      v191 = 0u;
      v192 = 0u;
      v189 = 0u;
      v190 = 0u;
      v157 = v25;
      v74 = v25;
      v75 = [v74 countByEnumeratingWithState:&v189 objects:buf count:16];
      if (v75)
      {
        v76 = v75;
        v187 = *v190;
        do
        {
          v77 = 0;
          v183 = v76;
          do
          {
            if (*v190 != v187)
            {
              objc_enumerationMutation(v74);
            }

            v78 = *(*(&v189 + 1) + 8 * v77);
            v79 = [v74 objectForKeyedSubscript:v78];
            v80 = objc_opt_class();
            v81 = _DictGet(v79, @"OSBundleUUID", v80);
            v82 = v81;
            if (!v81)
            {
              v83 = *__error();
              v84 = _sa_logt();
              if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_89;
              }

              *v193 = 138412290;
              *v194 = v78;
              v86 = v84;
              v87 = "No UUID for kext %@, not including in load info";
              v88 = 12;
              goto LABEL_122;
            }

            if ([v81 length] <= 0xF)
            {
              v83 = *__error();
              v84 = _sa_logt();
              if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
LABEL_89:

                *__error() = v83;
                goto LABEL_134;
              }

              v85 = [v82 length];
              *v193 = 138412546;
              *v194 = v78;
              *&v194[8] = 2048;
              v195 = v85;
              v86 = v84;
              v87 = "UUID too short for kext %@ (%lu), not including in load info";
              v88 = 22;
LABEL_122:
              _os_log_error_impl(&dword_1E0E2F000, v86, OS_LOG_TYPE_ERROR, v87, v193, v88);
              goto LABEL_89;
            }

            v89 = uuidForBytes([v82 bytes]);
            v90 = objc_opt_class();
            v91 = _DictGet(v79, @"OSBundleLoadAddress", v90);
            v92 = [v91 unsignedLongLongValue];

            v93 = objc_opt_class();
            v94 = _DictGet(v79, @"OSBundleExecLoadAddress", v93);
            v95 = [v94 unsignedLongLongValue];

            if (v92 | v95)
            {
              v96 = objc_opt_class();
              v97 = _DictGet(v79, @"OSBundleLoadSize", v96);
              v175 = [v97 unsignedLongLongValue];

              v98 = objc_opt_class();
              v99 = _DictGet(v79, @"OSBundleExecLoadSize", v98);
              v177 = [v99 unsignedLongLongValue];

              v100 = objc_opt_class();
              v101 = _DictGet(v79, @"OSBundleExecutablePath", v100);
              v181 = v101;
              if ([v101 isAbsolutePath])
              {
                v102 = v101;
              }

              else
              {
                v102 = 0;
              }

              v185 = v89;
              v103 = [SABinary binaryWithUUID:v89 absolutePath:v102];
              v104 = [v103 bundleIdentifier];

              if (!v104)
              {
                v105 = objc_opt_class();
                v106 = _DictGet(v79, v168, v105);
                v107 = v106;
                if (v106 && ([v106 isEqual:@"__kernel__"] & 1) == 0)
                {
                  v109 = SACachedNSString(v107);
                  if (v103)
                  {
                    objc_setProperty_atomic_copy(v103, v108, v109, 88);
                  }
                }
              }

              v110 = [v103 bundleVersion];

              if (!v110)
              {
                v111 = objc_opt_class();
                v112 = _DictGet(v79, v170, v111);
                v113 = v112;
                if (v112)
                {
                  v115 = SACachedNSString(v112);
                  if (v103)
                  {
                    objc_setProperty_atomic_copy(v103, v114, v115, 96);
                  }
                }
              }

              if (v172 && [v78 isEqual:@"__kernel__"])
              {
                if (v164)
                {
                  v116 = v103;
                  *v164 = v103;
                }

                if (v166)
                {
                  v117 = objc_opt_class();
                  v118 = _DictGet(v79, @"OSBundleCPUType", v117);
                  v119 = objc_opt_class();
                  v120 = _DictGet(v79, @"OSBundleCPUSubtype", v119);
                  v121 = v120;
                  if (v118 && v120)
                  {
                    v122 = v118;
                    v123 = [v118 intValue];
                    v124 = [v121 intValue];
                    *v166 = v123;
                    v166[1] = v124;
                    v118 = v122;
                  }

                  else
                  {
                    v162 = *__error();
                    v129 = _sa_logt();
                    if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                    {
                      v155 = v118 != 0;
                      v156 = v118;
                      v134 = [v118 intValue];
                      v135 = [v121 intValue];
                      *v193 = 67109888;
                      *v194 = v155;
                      *&v194[4] = 1024;
                      *&v194[6] = v121 != 0;
                      LOWORD(v195) = 1024;
                      *(&v195 + 2) = v134;
                      v118 = v156;
                      HIWORD(v195) = 1024;
                      v196 = v135;
                      _os_log_error_impl(&dword_1E0E2F000, v129, OS_LOG_TYPE_ERROR, "No cpu type(%d)/subtype(%d) 0x%x/0x%x for main kernel binary", v193, 0x1Au);
                    }

                    *__error() = v162;
                  }
                }
              }

              v89 = v185;
              if (v178)
              {
                if (v92)
                {
                  v130 = [(SABinary *)v103 segmentWithCleanName:v175 length:0x7FFFFFFFFFFFFFFFLL offsetIntoBinary:?];
                  v131 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v130 loadAddress:v92 isInKernelAddressSpace:1 exclave:0];
                  [v178 addObject:v131];

                  v89 = v185;
                }

                if (v95)
                {
                  v132 = [(SABinary *)v103 segmentWithCleanName:v177 length:0x7FFFFFFFFFFFFFFFLL offsetIntoBinary:?];
                  v133 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v132 loadAddress:v95 isInKernelAddressSpace:1 exclave:0];
                  [v178 addObject:v133];

                  v89 = v185;
                }
              }

              v76 = v183;
            }

            else
            {
              v125 = [v78 hasPrefix:@"com.apple.kpi."];
              v126 = *__error();
              v127 = _sa_logt();
              v128 = v127;
              if (v125)
              {
                v76 = v183;
                if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
                {
                  *v193 = 138412290;
                  *v194 = v78;
                  _os_log_debug_impl(&dword_1E0E2F000, v128, OS_LOG_TYPE_DEBUG, "Ignoring kext %@", v193, 0xCu);
                }
              }

              else
              {
                v76 = v183;
                if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                {
                  *v193 = 138412290;
                  *v194 = v78;
                  _os_log_error_impl(&dword_1E0E2F000, v128, OS_LOG_TYPE_ERROR, "No load address for kext %@, not including in load info", v193, 0xCu);
                }
              }

              *__error() = v126;
            }

LABEL_134:
            ++v77;
          }

          while (v76 != v77);
          v76 = [v74 countByEnumeratingWithState:&v189 objects:buf count:16];
        }

        while (v76);
      }

      if (v159 && v178)
      {
        objc_opt_self();
        [v178 sortUsingComparator:&__block_literal_global_361];
        *v159 = [v178 copy];
      }

      v23 = 0;
      v25 = v157;
      v24 = v158;
    }

    else
    {
      v47 = *__error();
      v48 = _sa_logt();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v48, OS_LOG_TYPE_ERROR, "OSKext provided no load infos", buf, 2u);
      }

      *__error() = v47;
      v23 = 0xFFFFFFFFLL;
    }

    return v23;
  }

  v15 = CopyDyldSnapshotForPid(a1);
  if (!v15)
  {
    v17 = a7;
    v26 = kill(v14, 0);
    v18 = *__error();
    v27 = _sa_logt();
    v19 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v198 = v14;
        _os_log_debug_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_DEBUG, "[%d]: Process no longer alive, unable to inspect for load infos", buf, 8u);
      }

      *__error() = v18;
      return 4294967294;
    }

    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 67109120;
    v198 = v14;
    v20 = "[%d]: Process alive, but unable to inspect for load infos via dyld introspection, trying CoreSymbolication";
    v21 = v19;
    v22 = 8;
    goto LABEL_142;
  }

  InfosForDyldSnapshot = _CopyLoadInfosForDyldSnapshot(v15, v14, 0, a2, v12, a5, a6, a7);
  dyld_process_snapshot_dispose();
  if (InfosForDyldSnapshot)
  {
    v17 = a7;
    v18 = *__error();
    v19 = _sa_logt();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_31:

      *__error() = v18;
      SymbolicatorForLiveProcess = CreateSymbolicatorForLiveProcess(v14, v8);
      v35 = v34;
      if (!CSIsNull())
      {
        v40 = *__error();
        v41 = _sa_logt();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v198 = v14;
          _os_log_debug_impl(&dword_1E0E2F000, v41, OS_LOG_TYPE_DEBUG, "[%d]: Inspected live process via CS", buf, 8u);
        }

        *__error() = v40;
        if (a5)
        {
          *a5 = [SASharedCache sharedCacheWithCSSymbolicator:v35 dataGatheringOptions:a2];
        }

        if (v12)
        {
          v42 = objc_opt_self();
          *v12 = [(SABinaryLoadInfo *)v42 binaryLoadInfoForSymbolicator:v35 isKernel:0 dataGatheringOptions:a2 excludeRange:0 ignoreSharedCache:0, 1];
        }

        if (v17)
        {
          *v17 = CSSymbolicatorGetArchitecture();
        }

        if (a6)
        {
          AOutSymbolOwner = CSSymbolicatorGetAOutSymbolOwner();
          v45 = v44;
          if ((CSIsNull() & 1) == 0)
          {
            v46 = [SABinary binaryWithSymbolOwner:v45 fromDisk:0];
            if (v46)
            {
              v46 = v46;
              *a6 = v46;
            }
          }
        }

        goto LABEL_148;
      }

      v36 = kill(v14, 0);
      v37 = *__error();
      v38 = _sa_logt();
      v39 = v38;
      if (v36)
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v198 = v14;
          _os_log_debug_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_DEBUG, "[%d]: Process no longer alive, unable to inspect for load infos", buf, 8u);
        }
      }

      else if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v198 = v14;
        _os_log_error_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_ERROR, "[%d]: Process alive, but unable to inspect for load infos via CoreSymbolication", buf, 8u);
      }

      *__error() = v37;
      return 0xFFFFFFFFLL;
    }

    *buf = 67109376;
    v198 = v14;
    v199 = 1024;
    LODWORD(v200) = InfosForDyldSnapshot;
    v20 = "[%d]: Failed to get load infos via dyld introspection (%d), trying CoreSymbolication";
    v21 = v19;
    v22 = 14;
LABEL_142:
    _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    goto LABEL_31;
  }

  if (SACompareDyldToCSLevel() < 1)
  {
    return 0;
  }

  v165 = CreateSymbolicatorForLiveProcess(v14, v8);
  v167 = v28;
  v29 = CSIsNull();
  v30 = *__error();
  v31 = _sa_logt();
  v32 = v31;
  if (v29)
  {
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v198 = v14;
      _os_log_error_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_ERROR, "[%d]: Unable to inspect live process via CS to compare to dyld", buf, 8u);
    }

    v23 = 0;
    *__error() = v30;
    return v23;
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v198 = v14;
    _os_log_debug_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_DEBUG, "[%d]: Inspected live process via CS to compare to dyld", buf, 8u);
  }

  *__error() = v30;
  v163 = v14;
  if (a5)
  {
    v49 = [SASharedCache sharedCacheWithCSSymbolicator:v165 dataGatheringOptions:v167, a2];
    if (v49 != *a5)
    {
      v147 = *__error();
      v148 = _sa_logt();
      if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
      {
        v151 = [v49 debugDescription];
        v152 = [*a5 debugDescription];
        *buf = 67109634;
        v198 = v14;
        v199 = 2112;
        v200 = v151;
        v201 = 2112;
        v202 = v152;
        _os_log_fault_impl(&dword_1E0E2F000, v148, OS_LOG_TYPE_FAULT, "[%d]: CS shared cache %@ vs dyld shared cache %@", buf, 0x1Cu);
      }

      *__error() = v147;
    }
  }

  if (!v12)
  {
    goto LABEL_148;
  }

  v50 = objc_opt_self();
  v51 = [(SABinaryLoadInfo *)v50 binaryLoadInfoForSymbolicator:v165 isKernel:v167 dataGatheringOptions:0 excludeRange:a2 ignoreSharedCache:0, 0, 1];
  v52 = [v51 count];
  if (v52 != [*v12 count])
  {
    v149 = *__error();
    v150 = _sa_logt();
    if (os_log_type_enabled(v150, OS_LOG_TYPE_FAULT))
    {
      v153 = [v51 debugDescription];
      v154 = [*v12 debugDescription];
      *buf = 67109634;
      v198 = v14;
      v199 = 2112;
      v200 = v153;
      v201 = 2112;
      v202 = v154;
      _os_log_fault_impl(&dword_1E0E2F000, v150, OS_LOG_TYPE_FAULT, "[%d]: CS load infos %@ vs dyld load infos %@", buf, 0x1Cu);
    }

    *__error() = v149;
  }

  v53 = [v51 count];
  if (v53 != [*v12 count] || !objc_msgSend(v51, "count"))
  {
    goto LABEL_147;
  }

  v54 = 0;
  while (1)
  {
    v55 = [v51 objectAtIndexedSubscript:v54];
    v56 = [v55 loadAddress];
    v57 = [*v12 objectAtIndexedSubscript:v54];
    if (v56 != [v57 loadAddress])
    {
      break;
    }

    v182 = [v51 objectAtIndexedSubscript:v54];
    v58 = [v182 binary];
    v59 = [v58 uuid];
    v60 = [*v12 objectAtIndexedSubscript:v54];
    v186 = [v60 binary];
    v184 = [v186 uuid];
    if ([v59 isEqual:?])
    {
      v14 = [v51 objectAtIndexedSubscript:v54];
      v180 = [v14 segment];
      if (v180 || ([*v12 objectAtIndexedSubscript:v54], v160 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v160, "segment"), (v161 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        [v51 objectAtIndexedSubscript:v54];
        v61 = v176 = v55;
        [v61 segment];
        v169 = v174 = v58;
        [v169 name];
        v62 = v173 = v59;
        [*v12 objectAtIndexedSubscript:v54];
        v63 = v171 = v57;
        [v63 segment];
        v64 = v51;
        v66 = v65 = v12;
        [v66 name];
        v67 = v14;
        v69 = v68 = v60;
        v179 = [v62 isEqual:v69] ^ 1;

        v60 = v68;
        v14 = v67;

        v12 = v65;
        v51 = v64;

        v57 = v171;
        v59 = v173;

        v58 = v174;
        v55 = v176;
        v70 = v180;
        if (!v180)
        {
LABEL_72:
          v71 = v51;
          v72 = v70;

          v70 = v72;
          v51 = v71;
        }

        LODWORD(v14) = v163;
        v73 = v179;
        goto LABEL_74;
      }

      v161 = 0;
      v179 = 0;
      v70 = 0;
      goto LABEL_72;
    }

    v73 = 1;
LABEL_74:

    if (v73)
    {
      goto LABEL_144;
    }

    if (++v54 >= [v51 count])
    {
      goto LABEL_147;
    }
  }

LABEL_144:
  v136 = *__error();
  v137 = _sa_logt();
  if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
  {
    v188 = [v51 objectAtIndexedSubscript:v54];
    v139 = [v188 debugDescription];
    v140 = [*v12 objectAtIndexedSubscript:v54];
    v141 = [v140 debugDescription];
    v142 = [v51 debugDescription];
    v143 = v12;
    v144 = v142;
    [*v143 debugDescription];
    v146 = v145 = v51;
    *buf = 67110402;
    v198 = v14;
    v199 = 2048;
    v200 = v54;
    v201 = 2112;
    v202 = v139;
    v203 = 2112;
    v204 = v141;
    v205 = 2112;
    v206 = v144;
    v207 = 2112;
    v208 = v146;
    _os_log_fault_impl(&dword_1E0E2F000, v137, OS_LOG_TYPE_FAULT, "[%d]: index %lu CS load info %@ vs dyld %@\n%@\nvs\n%@", buf, 0x3Au);

    v51 = v145;
  }

  *__error() = v136;
LABEL_147:

LABEL_148:
  CSRelease();
  return 0;
}

uint64_t CreateSymbolicatorForLiveProcess(_BOOL8 a1, int a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (qword_1EDD03278 != -1)
  {
    dispatch_once(&qword_1EDD03278, &__block_literal_global_5);
  }

  v4 = qword_1EDD03270;
  objc_sync_enter(v4);
  v5 = qword_1EDD03270;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  LOBYTE(v5) = [v5 containsObject:v6];

  objc_sync_exit(v4);
  if ((v5 & 1) != 0 || _AvoidSuspendingPid(a1))
  {
    v7 = 0;
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3010000000;
    v26 = 0;
    v27 = 0;
    v25 = "";
    if (a1)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __CreateSymbolicatorForLiveProcess_block_invoke_2;
      block[3] = &unk_1E86F6F08;
      v20 = a1;
      v21 = a2 | 0x80000;
      block[4] = &v22;
      block[5] = &v28;
      v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
      v8[2]();
    }

    else
    {
      v9 = CSSymbolicatorCreateWithMachKernelFlagsAndNotification();
      v10 = v23;
      v23[4] = v9;
      v10[5] = v11;
    }

    if (CSIsNull())
    {
      v12 = qword_1EDD03270;
      objc_sync_enter(v12);
      v13 = qword_1EDD03270;
      v14 = [MEMORY[0x1E696AD98] numberWithInt:a1];
      [v13 addObject:v14];

      objc_sync_exit(v12);
    }

    else if (a1)
    {
      ++_MergedGlobals_6;
      *&qword_1EDD03280 = v29[3] + *&qword_1EDD03280;
      v15 = *__error();
      v16 = _sa_logt();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(v29 + 3);
        *buf = 67110144;
        v33 = a1;
        v34 = 2048;
        v35 = v18;
        v36 = 1024;
        v37 = _MergedGlobals_6;
        v38 = 2048;
        v39 = qword_1EDD03280;
        v40 = 2048;
        v41 = *&qword_1EDD03280 / _MergedGlobals_6;
        _os_log_debug_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_DEBUG, "[%d]: Inspected live process via cs introspection in %fs (%d totaling %fs, %fs avg)", buf, 0x2Cu);
      }

      *__error() = v15;
    }

    v7 = v23[4];
    _Block_object_dispose(&v22, 8);
  }

  _Block_object_dispose(&v28, 8);
  return v7;
}

void sub_1E0EB7360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void __CreateSymbolicatorForLiveProcess_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = qword_1EDD03270;
  qword_1EDD03270 = v0;
}

void __CreateSymbolicatorForLiveProcess_block_invoke_2(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = SASecondsFromMachTimeUsingLiveTimebase(v2);
  v4 = CSSymbolicatorCreateWithPidFlagsAndNotification();
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 32) = v4;
  *(v5 + 40) = v6;
  if ((CSIsNull() & 1) == 0)
  {
    v7 = mach_absolute_time();
    *(*(*(a1 + 40) + 8) + 24) = SASecondsFromMachTimeUsingLiveTimebase(v7) - v3;
  }
}

uint64_t CreateSymbolOwnerForUUIDAtPath(void *a1, void *a2, int a3)
{
  v108 = *MEMORY[0x1E69E9840];
  v97 = 0uLL;
  [a1 getUUIDBytes:&v97];
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __CreateSymbolOwnerForUUIDAtPath_block_invoke;
  v94[3] = &__block_descriptor_52_e32___CSTypeRef_QQ_16__0__NSString_8l;
  v95 = a3 | 0x80000;
  v96 = v97;
  v70 = MEMORY[0x1E12EBE50](v94);
  v5 = (v70)[2](v70, a2);
  if (CSIsNull())
  {
    if ([a2 isAbsolutePath])
    {
      v6 = [a2 substringFromIndex:1];
    }

    else
    {
      v6 = a2;
    }

    v72 = v6;
    v7 = SAGetHomeDirectoryURL();
    v63 = v7;
    if (v7)
    {
      v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"Library" relativeToURL:v7];
      v9 = [v8 absoluteURL];
    }

    else
    {
      v9 = 0;
    }

    v71 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v71 URLsForDirectory:5 inDomains:3];
    v11 = v10;
    if (v9)
    {
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v90 objects:v107 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v91;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v91 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if ([*(*(&v90 + 1) + 8 * i) isEqual:v9])
            {
              v11 = v12;
              goto LABEL_19;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v90 objects:v107 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count") + 1}];
      [v11 addObject:v9];
      [v11 addObjectsFromArray:v12];
LABEL_19:
    }

    v62 = v9;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v17 = v11;
    v57 = [v17 countByEnumeratingWithState:&v86 objects:v106 count:16];
    if (v57)
    {
      v18 = *v87;
      v19 = *MEMORY[0x1E695DC30];
      v73 = *MEMORY[0x1E695DB78];
      v20 = 0x1E695D000uLL;
      v61 = v17;
      v56 = *v87;
      v59 = *MEMORY[0x1E695DC30];
      do
      {
        v21 = 0;
        v22 = 0x1E695D000uLL;
        do
        {
          if (*v87 != v18)
          {
            objc_enumerationMutation(v17);
          }

          v58 = v21;
          v23 = [*(v22 + 4088) fileURLWithPath:@"Developer/Xcode" isDirectory:1 relativeToURL:{*(*(&v86 + 1) + 8 * v21), v56}];
          v105 = v19;
          v24 = [*(v20 + 3784) arrayWithObjects:&v105 count:1];
          v64 = v23;
          v25 = [v71 enumeratorAtURL:v23 includingPropertiesForKeys:v24 options:1 errorHandler:0];

          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v26 = v25;
          v68 = [v26 countByEnumeratingWithState:&v82 objects:v104 count:16];
          if (v68)
          {
            v27 = *v83;
            v65 = v26;
            v60 = *v83;
            do
            {
              for (j = 0; j != v68; ++j)
              {
                if (*v83 != v27)
                {
                  objc_enumerationMutation(v26);
                }

                v29 = *(*(&v82 + 1) + 8 * j);
                v80 = 0;
                v81 = 0;
                v30 = [v29 getResourceValue:&v81 forKey:v19 error:&v80];
                v31 = v81;
                v69 = v80;
                if (v30)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v31 containsString:@"DeviceSupport"])
                  {
                    v66 = j;
                    v67 = v31;
                    v99 = v73;
                    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
                    v33 = [v71 enumeratorAtURL:v29 includingPropertiesForKeys:v32 options:1 errorHandler:0];

                    v78 = 0u;
                    v79 = 0u;
                    v76 = 0u;
                    v77 = 0u;
                    v34 = v33;
                    v35 = [v34 countByEnumeratingWithState:&v76 objects:v98 count:16];
                    if (v35)
                    {
                      v36 = v35;
                      v37 = *v77;
                      do
                      {
                        v38 = 0;
                        do
                        {
                          if (*v77 != v37)
                          {
                            objc_enumerationMutation(v34);
                          }

                          v39 = *(*(&v76 + 1) + 8 * v38);
                          v74 = 0;
                          v75 = 0;
                          v40 = [v39 getResourceValue:&v75 forKey:v73 error:&v74];
                          v41 = v75;
                          v42 = v74;
                          if (v40)
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) != 0 && [v41 BOOLValue])
                            {
                              v43 = [*(v22 + 4088) fileURLWithPath:v72 relativeToURL:v39];
                              v44 = [v43 path];

                              if (v44 && [v71 fileExistsAtPath:v44])
                              {
                                v5 = (v70)[2](v70, v44);
                                if ((CSIsNull() & 1) == 0)
                                {
                                  goto LABEL_68;
                                }
                              }

                              else
                              {
                                v47 = *(v22 + 4088);
                                v48 = [v47 fileURLWithPath:@"Symbols" relativeToURL:v39];
                                v49 = [v47 fileURLWithPath:v72 relativeToURL:v48];
                                v50 = [v49 path];

                                if (v50)
                                {
                                  if ([v71 fileExistsAtPath:v50])
                                  {
                                    v5 = v70[2](v70, v50);
                                    if (!CSIsNull())
                                    {
                                      v44 = v50;
LABEL_68:

                                      v17 = v61;
                                      goto LABEL_69;
                                    }
                                  }

                                  v44 = v50;
                                }

                                else
                                {
                                  v44 = 0;
                                }
                              }

                              v22 = 0x1E695D000;
                            }
                          }

                          else
                          {
                            v45 = *__error();
                            v46 = _sa_logt();
                            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138412546;
                              v101 = v39;
                              v102 = 2112;
                              v103 = v42;
                              _os_log_error_impl(&dword_1E0E2F000, v46, OS_LOG_TYPE_ERROR, "Error getting isDir for %@: %@", buf, 0x16u);
                            }

                            *__error() = v45;
                          }

                          ++v38;
                        }

                        while (v36 != v38);
                        v51 = [v34 countByEnumeratingWithState:&v76 objects:v98 count:16];
                        v36 = v51;
                      }

                      while (v51);
                    }

                    v19 = v59;
                    v27 = v60;
                    v26 = v65;
                    j = v66;
                    v31 = v67;
                  }
                }

                else
                {
                  v52 = j;
                  v53 = *__error();
                  v54 = _sa_logt();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v101 = v29;
                    v102 = 2112;
                    v103 = v69;
                    _os_log_error_impl(&dword_1E0E2F000, v54, OS_LOG_TYPE_ERROR, "Error getting name for %@: %@", buf, 0x16u);
                  }

                  *__error() = v53;
                  j = v52;
                }
              }

              v68 = [v26 countByEnumeratingWithState:&v82 objects:v104 count:16];
              v20 = 0x1E695D000;
            }

            while (v68);
          }

          v21 = v58 + 1;
          v17 = v61;
          v18 = v56;
        }

        while (v58 + 1 != v57);
        v5 = 0;
        v57 = [v61 countByEnumeratingWithState:&v86 objects:v106 count:16];
      }

      while (v57);
    }

    else
    {
      v5 = 0;
    }

LABEL_69:
  }

  return v5;
}

uint64_t __CreateSymbolOwnerForUUIDAtPath_block_invoke(uint64_t a1, id a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3010000000;
  v10 = 0;
  v11 = 0;
  v9 = "";
  v3 = a2;
  [a2 UTF8String];
  CSSymbolicatorForeachSymbolicatorWithPathFlagsAndNotification();
  v4 = v7[4];
  _Block_object_dispose(&v6, 8);
  return v4;
}

void sub_1E0EB7DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CreateSymbolOwnerForUUIDAtPath_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CSIsNull();
  if (result)
  {
    CSSymbolicatorGetSymbolOwnerWithCFUUIDBytesAtTime();
    result = CSIsNull();
    if ((result & 1) == 0)
    {
      result = CSRetain();
      v5 = *(*(a1 + 32) + 8);
      *(v5 + 32) = result;
      *(v5 + 40) = v6;
    }
  }

  return result;
}

id SAGetHomeDirectoryURL()
{
  v0 = NSHomeDirectoryForUser(&cfstr_Mobile.isa);
  if (v0)
  {
    v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v0 isDirectory:1];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t CreateSymbolOwnerForArchitectureAtPath(uint64_t a1, id a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [a2 UTF8String];
    CSSymbolicatorCreateWithPathArchitectureFlagsAndNotification();
    SymbolOwner = CSSymbolicatorGetSymbolOwner();
    if (CSIsNull())
    {
      v5 = *__error();
      v6 = _sa_logt();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        *&buf[4] = a2;
        *&buf[12] = 2048;
        *&buf[14] = CSSymbolicatorGetSymbolOwnerCountAtTime();
        *&buf[22] = 2082;
        FamilyName = CSArchitectureGetFamilyName();
        _os_log_fault_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_FAULT, "No symbol owner at %@: %zu exist for arch %{public}s", buf, 0x20u);
      }

      *__error() = v5;
    }

    else
    {
      SymbolOwner = CSRetain();
    }

    CSRelease();
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3010000000;
    v22 = 0;
    v23 = 0;
    FamilyName = "";
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v7 = a2;
    [a2 UTF8String];
    CSSymbolicatorForeachSymbolicatorWithPathFlagsAndNotification();
    if (*(v13 + 6) != 1)
    {
      v8 = *__error();
      v9 = _sa_logt();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = *(v13 + 6);
        *v16 = 138412546;
        v17 = a2;
        v18 = 1024;
        v19 = v11;
        _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "Unable to uniquely identify symbol owner at %@: %d symbol owners exist", v16, 0x12u);
      }

      *__error() = v8;
    }

    SymbolOwner = *(*&buf[8] + 32);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(buf, 8);
  }

  return SymbolOwner;
}

void sub_1E0EB81D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __CreateSymbolOwnerForArchitectureAtPath_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(*(a1[5] + 8) + 24))
  {
    result = CSIsNull();
    if ((result & 1) == 0)
    {
      result = CSRelease();
      v5 = *(a1[6] + 8);
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
    }
  }

  else
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwner();
    v7 = *(a1[6] + 8);
    *(v7 + 32) = SymbolOwner;
    *(v7 + 40) = v8;
    if (CSIsNull())
    {
      v9 = *__error();
      v10 = _sa_logt();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v13 = a1[4];
        v14 = 138412546;
        v15 = v13;
        v16 = 2048;
        SymbolOwnerCountAtTime = CSSymbolicatorGetSymbolOwnerCountAtTime();
        _os_log_fault_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_FAULT, "No symbol owner at %@: %zu exist", &v14, 0x16u);
      }

      result = __error();
      *result = v9;
    }

    else
    {
      result = CSRetain();
      v11 = *(a1[6] + 8);
      *(v11 + 32) = result;
      *(v11 + 40) = v12;
    }
  }

  ++*(*(a1[5] + 8) + 24);
  return result;
}

uint64_t CreateSymbolOwnerForExclaveUUID(void *a1, int a2)
{
  v4[0] = 0;
  v4[1] = 0;
  [a1 getUUIDBytes:v4];
  CSSymbolicatorCreateWithExclaveUUIDAndFlags();
  SymbolOwner = 0;
  if ((CSIsNull() & 1) == 0)
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwner();
    if ((CSIsNull() & 1) == 0)
    {
      CSRetain();
    }

    CSRelease();
  }

  return SymbolOwner;
}

uint64_t _SASpawnPlatformBinaryWithSigningIdentifier(const char *a1, void *a2, char *const *a3, char **a4, cpu_type_t *a5, void *a6, int a7, _DWORD *a8, unsigned __int8 a9, _DWORD *a10, unsigned __int8 a11, _DWORD *a12)
{
  v78 = *MEMORY[0x1E69E9840];
  *v77 = -1;
  *v75 = -1;
  *v76 = -1;
  if (a8 && a7)
  {
    v58 = *__error();
    v59 = _sa_logt();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v59, OS_LOG_TYPE_ERROR, "Cannot specify inheritStdout and provide stdout_out", buf, 2u);
    }

    *__error() = v58;
    _SASetCrashLogMessage(761, "Cannot specify inheritStdout and provide stdout_out");
    _os_crash();
    __break(1u);
    goto LABEL_112;
  }

  v15 = a10;
  v14 = a9;
  if (a10)
  {
    v21 = a9 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
LABEL_112:
    v60 = *__error();
    v61 = _sa_logt();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v61, OS_LOG_TYPE_ERROR, "Cannot specify inheritStderr and provide stderr_out", buf, 2u);
    }

    *__error() = v60;
    _SASetCrashLogMessage(762, "Cannot specify inheritStderr and provide stderr_out");
    _os_crash();
    __break(1u);
    goto LABEL_115;
  }

  v12 = a12;
  v13 = a11;
  if (a12)
  {
    v22 = a11 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
LABEL_115:
    v32 = *__error();
    v62 = _sa_logt();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "Cannot specify inheritStdin and provide stdin_out", buf, 2u);
    }

    *__error() = v32;
    _SASetCrashLogMessage(763, "Cannot specify inheritStdin and provide stdin_out");
    _os_crash();
    __break(1u);
    goto LABEL_118;
  }

  v66 = a1;
  v67 = a3;
  __envp = a4;
  v72 = 0;
  v23 = posix_spawn_file_actions_init(&v72);
  if (v23)
  {
    v24 = v23;
    v25 = *__error();
    v26 = _sa_logt();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v74) = v24;
      _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "Unable to create posix file actions: %{errno}d", buf, 8u);
    }

    *__error() = v25;
LABEL_74:
    if ((v77[0] & 0x80000000) == 0)
    {
      close(v77[0]);
    }

    if ((v77[1] & 0x80000000) == 0)
    {
      close(v77[1]);
    }

    if ((v76[0] & 0x80000000) == 0)
    {
      close(v76[0]);
    }

    if ((v76[1] & 0x80000000) == 0)
    {
      close(v76[1]);
    }

    v47 = v75[0];
    if (v75[0] < 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  if (a7)
  {
    v27 = posix_spawn_file_actions_addinherit_np(&v72, 1);
    if (v27)
    {
      v24 = v27;
      v28 = *__error();
      v29 = _sa_logt();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v74) = v24;
        v30 = "Unable to inherit stdout: %{errno}d";
LABEL_43:
        _os_log_error_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_ERROR, v30, buf, 8u);
        goto LABEL_44;
      }

      goto LABEL_44;
    }

LABEL_32:
    v32 = -1;
    goto LABEL_33;
  }

  if (a8)
  {
    if (pipe(v77))
    {
      v24 = *__error();
      v28 = *__error();
      v29 = _sa_logt();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v74) = v24;
        v30 = "Unable to open pipe: %{errno}d";
        goto LABEL_43;
      }

LABEL_44:

      *__error() = v28;
      posix_spawn_file_actions_destroy(&v72);
      goto LABEL_74;
    }

    v36 = posix_spawn_file_actions_adddup2(&v72, v77[1], 1);
    if (v36)
    {
      v24 = v36;
      v28 = *__error();
      v29 = _sa_logt();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v74) = v24;
        v30 = "Unable to set posix file dup2: %{errno}d";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    goto LABEL_32;
  }

  v31 = open("/dev/null", 1);
  if (v31 < 0)
  {
    v24 = *__error();
    v28 = *__error();
    v29 = _sa_logt();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v74) = v24;
      v30 = "Unable to open /dev/null: %{errno}d";
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v32 = v31;
  v33 = posix_spawn_file_actions_adddup2(&v72, v31, 1);
  if (v33)
  {
    v24 = v33;
    v34 = *__error();
    v35 = _sa_logt();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 67109120;
    LODWORD(v74) = v24;
    goto LABEL_108;
  }

LABEL_33:
  if (a9)
  {
    v37 = posix_spawn_file_actions_addinherit_np(&v72, 2);
    if (v37)
    {
      v24 = v37;
      v38 = *__error();
      v39 = _sa_logt();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v74) = v24;
        v40 = "Unable to inherit stderr: %{errno}d";
LABEL_70:
        _os_log_error_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_ERROR, v40, buf, 8u);
        goto LABEL_71;
      }

      goto LABEL_71;
    }

    goto LABEL_53;
  }

  if (!a10)
  {
    if (v32 < 0)
    {
      v32 = open("/dev/null", 1);
      if (v32 < 0)
      {
        v24 = *__error();
        v28 = *__error();
        v29 = _sa_logt();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_44;
        }

        *buf = 67109120;
        LODWORD(v74) = v24;
        v30 = "Unable to open /dev/null: %{errno}d";
        goto LABEL_43;
      }
    }

    v41 = posix_spawn_file_actions_adddup2(&v72, v32, 2);
    if (!v41)
    {
      goto LABEL_53;
    }

    v24 = v41;
    v34 = *__error();
    v35 = _sa_logt();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
LABEL_49:

      *__error() = v34;
      posix_spawn_file_actions_destroy(&v72);
LABEL_73:
      close(v32);
      goto LABEL_74;
    }

    *buf = 67109120;
    LODWORD(v74) = v24;
LABEL_108:
    _os_log_error_impl(&dword_1E0E2F000, v35, OS_LOG_TYPE_ERROR, "Unable to set posix file dup2: %{errno}d", buf, 8u);
    goto LABEL_49;
  }

  if (pipe(v76))
  {
    v24 = *__error();
    v38 = *__error();
    v39 = _sa_logt();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v74) = v24;
      v40 = "Unable to open pipe: %{errno}d";
      goto LABEL_70;
    }

LABEL_71:

    *__error() = v38;
    goto LABEL_72;
  }

  v42 = posix_spawn_file_actions_adddup2(&v72, v76[1], 2);
  if (v42)
  {
    v24 = v42;
    v38 = *__error();
    v39 = _sa_logt();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v74) = v24;
      v40 = "Unable to set posix file dup2: %{errno}d";
      goto LABEL_70;
    }

    goto LABEL_71;
  }

LABEL_53:
  if (a11)
  {
    v43 = posix_spawn_file_actions_addinherit_np(&v72, 0);
    if (v43)
    {
      v24 = v43;
      v38 = *__error();
      v39 = _sa_logt();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v74) = v24;
        v40 = "Unable to inherit stdin: %{errno}d";
        goto LABEL_70;
      }

      goto LABEL_71;
    }
  }

  else if (a12)
  {
    if (pipe(v75))
    {
      v24 = *__error();
      v38 = *__error();
      v39 = _sa_logt();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v74) = v24;
        v40 = "Unable to open pipe: %{errno}d";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    v45 = posix_spawn_file_actions_adddup2(&v72, v75[0], 0);
    if (v45)
    {
      v24 = v45;
      v38 = *__error();
      v39 = _sa_logt();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v74) = v24;
        v40 = "Unable to set posix file dup2: %{errno}d";
        goto LABEL_70;
      }

      goto LABEL_71;
    }
  }

  else
  {
    v44 = posix_spawn_file_actions_addclose(&v72, 0);
    if (v44)
    {
      v24 = v44;
      v38 = *__error();
      v39 = _sa_logt();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v74) = v24;
        v40 = "Unable to set posix close: %{errno}d";
        goto LABEL_70;
      }

      goto LABEL_71;
    }
  }

  v71 = 0;
  v46 = posix_spawnattr_init(&v71);
  if (v46)
  {
    v24 = v46;
    v38 = *__error();
    v39 = _sa_logt();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v74) = v24;
      v40 = "Unable to create posix attr: %{errno}d";
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  if (a5)
  {
    v49 = posix_spawnattr_setbinpref_np(&v71, 1uLL, a5, 0);
    if (v49)
    {
      v24 = v49;
      v50 = *__error();
      v51 = _sa_logt();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v74) = v24;
        v64 = "Unable to set posix arch preference: %{errno}d";
        goto LABEL_143;
      }

LABEL_90:

      *__error() = v50;
LABEL_106:
      posix_spawnattr_destroy(&v71);
LABEL_72:
      posix_spawn_file_actions_destroy(&v72);
      if (v32 < 0)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }
  }

  if (a6)
  {
    v14 = 16449;
  }

  else
  {
    v14 = 16385;
  }

  a6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{&unk_1F5BDCA00, @"validation-category", 0}];
  if (a2)
  {
    v52 = SANSStringForCString(a2);
    [a6 setObject:v52 forKey:@"signing-identifier"];
  }

  v70 = 0;
  a2 = [MEMORY[0x1E69E5150] withVersion:1 withConstraintCategory:0 withRequirements:a6 withError:&v70];
  v13 = v70;
  if (!a2)
  {
    v56 = *__error();
    v57 = _sa_logt();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v65 = [v13 description];
      *buf = 138412290;
      v74 = v65;
      _os_log_error_impl(&dword_1E0E2F000, v57, OS_LOG_TYPE_ERROR, "Unable to set code requirement: %@", buf, 0xCu);
    }

    *__error() = v56;
    v24 = 76;
    goto LABEL_106;
  }

  a5 = [a2 externalRepresentation];
  [(cpu_type_t *)a5 bytes];
  [(cpu_type_t *)a5 length];
  v53 = amfi_launch_constraint_set_spawnattr();
  if (v53)
  {
    v24 = v53;
    v54 = *__error();
    v55 = _sa_logt();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v74) = v24;
      _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "Unable to set amfi posix launch constraint: %{errno}d", buf, 8u);
    }

    *__error() = v54;
    goto LABEL_106;
  }

LABEL_118:

  v63 = posix_spawnattr_setflags(&v71, v14);
  if (v63)
  {
    v24 = v63;
    v50 = *__error();
    v51 = _sa_logt();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v74) = v24;
      v64 = "Unable to set posix flags: %{errno}d";
LABEL_143:
      _os_log_error_impl(&dword_1E0E2F000, v51, OS_LOG_TYPE_ERROR, v64, buf, 8u);
      goto LABEL_90;
    }

    goto LABEL_90;
  }

  v69 = -1;
  v24 = posix_spawn(&v69, v66, &v72, &v71, v67, __envp);
  posix_spawnattr_destroy(&v71);
  posix_spawn_file_actions_destroy(&v72);
  if ((v32 & 0x80000000) == 0)
  {
    close(v32);
  }

  if ((v77[1] & 0x80000000) == 0)
  {
    close(v77[1]);
    v77[1] = -1;
  }

  if ((v76[1] & 0x80000000) == 0)
  {
    close(v76[1]);
    v76[1] = -1;
  }

  if ((v75[0] & 0x80000000) == 0)
  {
    close(v75[0]);
    v75[0] = -1;
  }

  if (v24 || v69 < 1)
  {
    if ((v77[0] & 0x80000000) == 0)
    {
      close(v77[0]);
    }

    v47 = v76[0];
    if (v76[0] < 0)
    {
      goto LABEL_84;
    }

LABEL_83:
    close(v47);
LABEL_84:
    if ((v75[1] & 0x80000000) == 0)
    {
      close(v75[1]);
    }

    *__error() = v24;
    return 0xFFFFFFFFLL;
  }

  if (a8)
  {
    *a8 = v77[0];
  }

  if (v15)
  {
    *v15 = v76[0];
  }

  if (v12)
  {
    *v12 = v75[1];
  }

  *__error() = 0;
  return v69;
}

uint64_t SASpawnPlatformBinaryWithSigningIdentifier(const char *a1, void *a2, char *const *a3, char **a4, cpu_type_t *a5, int a6, _DWORD *a7, unsigned __int8 a8, _DWORD *a9, unsigned __int8 a10, _DWORD *a11)
{
  if (a2)
  {
    return _SASpawnPlatformBinaryWithSigningIdentifier(a1, a2, a3, a4, a5, 0, a6, a7, a8, a9, a10, a11);
  }

  v12 = *__error();
  v13 = _sa_logt();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "SASpawnPlatformBinaryWithSigningIdentifier requires a signing identifier", buf, 2u);
  }

  *__error() = v12;
  _SASetCrashLogMessage(1055, "SASpawnPlatformBinaryWithSigningIdentifier requires a signing identifier");
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t __SASymbolOwnerForeachSegment_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  Name = CSRegionGetName();
  result = SACompareDyldToCSLevel();
  if (result >= 2)
  {
    Range = CSRegionGetRange();
    v8 = v7;
    v9 = Range + v7;
    v10 = CSSymbolOwnerGetName();
    result = printf("CS   %#18llx - %#18llx (%#10llx) %16s %s\n", Range, v9, v8, Name, v10);
  }

  if (Name)
  {
    result = SAShouldIgnoreSegmentWithCName(Name);
    if ((result & 1) == 0)
    {
      v11 = *(a1[4] + 16);

      return v11();
    }
  }

  return result;
}

BOOL SASymbolOwnerIsContiguous(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  BaseAddress = CSSymbolOwnerGetBaseAddress();
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = -1;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __SASymbolOwnerIsContiguous_block_invoke;
  v18[3] = &unk_1E86F6FC8;
  v18[4] = &v31;
  v18[5] = &v23;
  v18[6] = &v27;
  v18[7] = &v19;
  SASymbolOwnerForeachSegment(a1, a2, v18);
  if (BaseAddress && BaseAddress != v28[3])
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      Name = CSSymbolOwnerGetName();
      v16 = v28[3];
      CSSymbolOwnerGetSegmentWithAddress();
      v17 = CSRegionGetName();
      *buf = 136315906;
      v36 = Name;
      v37 = 2048;
      v38 = BaseAddress;
      v39 = 2048;
      v40 = v16;
      v41 = 2080;
      v42 = v17;
      _os_log_debug_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_DEBUG, "SymbolOwner %s base address 0x%llx != start address 0x%llx for segment %s", buf, 0x2Au);
    }

    *__error() = v9;
  }

  if (a3)
  {
    v11 = v28[3];
    v12 = v24[3] - v11;
    *a3 = v11;
    a3[1] = v12;
  }

  if (a4)
  {
    *a4 = v32[3];
  }

  v13 = BaseAddress == v28[3] && v20[3] == v24[3] - BaseAddress;
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  return v13;
}

unint64_t __SASymbolOwnerIsContiguous_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  ++*(*(a1[4] + 8) + 24);
  result = CSRegionGetRange();
  v6 = *(a1[5] + 8);
  if (*(v6 + 24) < result + v5)
  {
    *(v6 + 24) = result + v5;
  }

  v7 = *(a1[6] + 8);
  if (*(v7 + 24) > result)
  {
    *(v7 + 24) = result;
  }

  *(*(a1[7] + 8) + 24) += v5;
  return result;
}

uint64_t SAArchitectureForTranslatedTask(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (CSArchitectureIsArm64())
    {
      return 0x301000007;
    }

    else if ((CSArchitectureIsX86_64() & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __SAArchitectureForTranslatedTask_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v1;
      if (SAArchitectureForTranslatedTask_onceToken != -1)
      {
        dispatch_once(&SAArchitectureForTranslatedTask_onceToken, block);
      }

      return 0;
    }
  }

  return v1;
}

int *__SAArchitectureForTranslatedTask_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *__error();
  v2 = _sa_logt();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    FamilyName = CSArchitectureGetFamilyName();
    _os_log_error_impl(&dword_1E0E2F000, v2, OS_LOG_TYPE_ERROR, "Unknown translation architecture %s", &v4, 0xCu);
  }

  result = __error();
  *result = v1;
  return result;
}

id DictGetArray(void *a1, uint64_t a2)
{
  v4 = objc_opt_class();

  return _DictGet(a1, a2, v4);
}

uint64_t SAResampleThreads(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v64 = *MEMORY[0x1E69E9840];
  if (getpid() != a1)
  {
    if (SAResampleThreads_timedOut)
    {
      return 49;
    }

    context = objc_autoreleasePoolPush();
    target_task = 0;
    v6 = task_read_for_pid();
    if (v6)
    {
      if (!kill(v5, 0))
      {
        v7 = *__error();
        v8 = _sa_logt();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v58 = 67109376;
          *&v58[4] = v5;
          LOWORD(v59) = 1024;
          *(&v59 + 2) = v6;
          _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "[%d] task_read_for_pid failed: %d", v58, 0xEu);
        }

        *__error() = v7;
      }

      goto LABEL_21;
    }

    v32 = [objc_alloc(MEMORY[0x1E69D4F40]) initWithTask:target_task options:96];
    if (v32)
    {
      act_list = 0;
      act_listCnt = 0;
      v6 = task_threads(target_task, &act_list, &act_listCnt);
      if (!v6)
      {
        if (act_listCnt)
        {
          v14 = 0;
          v6 = 0;
          v31 = 1;
          do
          {
            v15 = act_list[v14];
            if (SAResampleThreads_timedOut == 1)
            {
              mach_port_deallocate(*MEMORY[0x1E69E9A60], act_list[v14]);
            }

            else
            {
              *thread_info_out = 0;
              v46 = 0;
              v47 = 0;
              thread_info_outCnt = 6;
              if (thread_info(v15, 4u, thread_info_out, &thread_info_outCnt) || (v16 = *thread_info_out, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*thread_info_out], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(a2, "containsObject:", v17), v17, !v18))
              {
                mach_port_deallocate(*MEMORY[0x1E69E9A60], v15);
              }

              else
              {
                *v58 = 0;
                v59 = v58;
                v60 = 0x3032000000;
                v61 = __Block_byref_object_copy__3;
                v62 = __Block_byref_object_dispose__3;
                v63 = 0;
                v40 = 0;
                v41 = &v40;
                v42 = 0x2020000000;
                v43 = 0;
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __SAResampleThreads_block_invoke;
                block[3] = &unk_1E86F7018;
                v36 = v58;
                v35 = v32;
                v37 = &v40;
                v38 = v15;
                v39 = target_task;
                v19 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
                v20 = dispatch_get_global_queue(33, 0);
                dispatch_async(v20, v19);

                v21 = dispatch_time(0, 1000000000);
                if (dispatch_block_wait(v19, v21))
                {
                  SAResampleThreads_timedOut = 1;
                  proc_name(v5, buffer, 0x21u);
                  v22 = *__error();
                  v23 = _sa_logt();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    v52 = buffer;
                    v53 = 1024;
                    v54 = v5;
                    v55 = 2048;
                    v56 = v16;
                    _os_log_error_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_ERROR, "Timed out resampling %s [%d] thread 0x%llx", buf, 0x1Cu);
                  }

                  *__error() = v22;
                  v24 = (v41 + 3);
                  __swp(v24, v24);
                  if (v24)
                  {
                    v25 = *__error();
                    v26 = _sa_logt();
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "Timed out sampler, but lost race", buf, 2u);
                    }

                    *__error() = v25;
                    mach_port_deallocate(*MEMORY[0x1E69E9A60], v15);
                  }

                  else
                  {
                    v31 = 0;
                  }

                  v6 = 49;
                }

                else
                {
                  if ((v41[3] & 1) == 0)
                  {
                    v29 = *__error();
                    oslog = _sa_logt();
                    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
                    {
                      *buffer = 0;
                      _os_log_fault_impl(&dword_1E0E2F000, oslog, OS_LOG_TYPE_FAULT, "racebit not true", buffer, 2u);
                    }

                    *__error() = v29;
                  }

                  mach_port_deallocate(*MEMORY[0x1E69E9A60], v15);
                  v27 = [*(v59 + 5) backtrace];
                  v28 = [*(v59 + 5) backtraceLength];
                  if (v27 && v28)
                  {
                    (*(a3 + 16))(a3, v16, v27, v28);
                  }
                }

                _Block_object_dispose(&v40, 8);
                _Block_object_dispose(v58, 8);
              }
            }

            ++v14;
          }

          while (v14 < act_listCnt);
          mach_vm_deallocate(*MEMORY[0x1E69E9A60], act_list, 4 * act_listCnt);
          if ((v31 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          mach_vm_deallocate(*MEMORY[0x1E69E9A60], act_list, 0);
          v6 = 0;
        }

LABEL_19:
        mach_port_deallocate(*MEMORY[0x1E69E9A60], target_task);
LABEL_20:

LABEL_21:
        objc_autoreleasePoolPop(context);
        return v6;
      }

      v9 = *__error();
      v10 = _sa_logt();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v58 = 67109376;
        *&v58[4] = v5;
        LOWORD(v59) = 1024;
        *(&v59 + 2) = v6;
        _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "[%d] task_threads failed: %d", v58, 0xEu);
      }

      v11 = __error();
    }

    else
    {
      v9 = *__error();
      v12 = _sa_logt();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v58 = 67109120;
        *&v58[4] = v5;
        _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "[%d] unable to create VMUSampler", v58, 8u);
      }

      v11 = __error();
      v6 = 0;
    }

    *v11 = v9;
    goto LABEL_19;
  }

  return 16;
}

void sub_1E0EBA004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 192), 8);
  _Unwind_Resume(a1);
}

void __SAResampleThreads_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sampleThread:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = (*(*(a1 + 48) + 8) + 24);
  __swp(v5, v5);
  if (v5)
  {
    v6 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_INFO, "Sampler completed after timeout", v9, 2u);
    }

    *__error() = v6;
    v8 = MEMORY[0x1E69E9A60];
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 56));
    mach_port_deallocate(*v8, *(a1 + 60));
  }
}

void *SAIsEmbeddedPlatform(void *result)
{
  if (result)
  {
    v1 = result;
    if ([result containsString:@"macOS"] & 1) != 0 || (objc_msgSend(v1, "containsString:", @"Mac"))
    {
      return 0;
    }

    else
    {
      return ([v1 containsString:@"OS X"] ^ 1);
    }
  }

  return result;
}

double __SATimeOfBootForLiveMachine_block_invoke()
{
  v0 = time(0);
  v1 = mach_continuous_time();
  result = v0 - ceil(SASecondsFromMachTimeUsingLiveTimebase(v1)) - *MEMORY[0x1E695E468];
  qword_1EDD03298 = *&result;
  return result;
}

uint64_t SAMicrostackshotStateForFlagsTaskAndThreadState(int a1, void *a2, void *a3)
{
  if ((a1 & 0x40) != 0)
  {
    v5 = 16;
  }

  else
  {
    v5 = 20;
  }

  if ((a1 & 0x80u) != 0)
  {
    v5 |= 8u;
  }

  if ((a1 & 0x20) == 0)
  {
    v5 = 0;
  }

  v6 = v5 | ~(8 * a1) & 0x80;
  if ([a2 isSuppressed])
  {
    v6 |= 0x20u;
  }

  if ([a2 isForeground])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [a3 threadQos];
  v9 = v7 | 0x600;
  v10 = v7 | 0x700;
  if (v8 != 6)
  {
    v10 = v7;
  }

  if (v8 != 5)
  {
    v9 = v10;
  }

  v11 = v7 | 0x300;
  v12 = v7 | 0x400;
  if (v8 != 4)
  {
    v12 = v7;
  }

  if (v8 != 3)
  {
    v11 = v12;
  }

  if (v8 <= 4)
  {
    v9 = v11;
  }

  v13 = v7 | 0x500;
  v14 = v7 | 0x100;
  v15 = v7 | 0x200;
  if (v8 != 2)
  {
    v15 = v7;
  }

  if (v8 != 1)
  {
    v14 = v15;
  }

  if (v8)
  {
    v13 = v14;
  }

  if (v8 <= 2)
  {
    v16 = v13;
  }

  else
  {
    v16 = v9;
  }

  v17 = [a3 threadRequestedQos];
  v18 = v16 | 0x3000;
  v19 = v16 | 0x3800;
  if (v17 != 6)
  {
    v19 = v16;
  }

  if (v17 != 5)
  {
    v18 = v19;
  }

  v20 = v16 | 0x1800;
  v21 = v16 | 0x2000;
  if (v17 != 4)
  {
    v21 = v16;
  }

  if (v17 != 3)
  {
    v20 = v21;
  }

  if (v17 <= 4)
  {
    v18 = v20;
  }

  v22 = v16 | 0x2800;
  v23 = v16 | 0x800;
  v24 = v16 | 0x1000;
  if (v17 != 2)
  {
    v24 = v16;
  }

  if (v17 != 1)
  {
    v23 = v24;
  }

  if (v17)
  {
    v22 = v23;
  }

  if (v17 <= 2)
  {
    v25 = v22;
  }

  else
  {
    v25 = v18;
  }

  v26 = [a3 threadRequestedQosOverride];
  v27 = v25 | 0x18000;
  v28 = v25 | 0x1C000;
  if (v26 != 6)
  {
    v28 = v25;
  }

  if (v26 != 5)
  {
    v27 = v28;
  }

  v29 = v25 | 0xC000;
  v30 = v25 | 0x10000;
  if (v26 != 4)
  {
    v30 = v25;
  }

  if (v26 != 3)
  {
    v29 = v30;
  }

  if (v26 <= 4)
  {
    v27 = v29;
  }

  v31 = v25 | 0x14000;
  v32 = v25 | 0x4000;
  v33 = v25 | 0x8000;
  if (v26 != 2)
  {
    v33 = v25;
  }

  if (v26 != 1)
  {
    v32 = v33;
  }

  if (v26)
  {
    v31 = v32;
  }

  if (v26 <= 2)
  {
    return v31;
  }

  else
  {
    return v27;
  }
}