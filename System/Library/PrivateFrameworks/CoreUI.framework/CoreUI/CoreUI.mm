id __RunTimeThemeRefForBytes_block_invoke(void *a1, void *a2)
{
  v4 = [a2 objectForKey:a1[4]];
  if (v4)
  {
    result = [v4 unsignedIntegerValue];
    *(*(a1[5] + 8) + 24) = result;
  }

  else
  {
    v6 = [[CUIStructuredThemeStore alloc] initWithBytes:a1[7] length:a1[8]];
    if (v6)
    {
      v7 = v6;
      *(*(a1[5] + 8) + 24) = _RegisterThemeProvider(v6);

      v8 = [NSNumber numberWithUnsignedInteger:*(*(a1[5] + 8) + 24)];
      v9 = a1[4];

      return [a2 setObject:v8 forKey:v9];
    }

    else
    {
      result = [[NSString alloc] initWithFormat:@"RunTimeThemeRefForBytes() failed to initialize CUIStructuredThemeStore"];
      *(*(a1[6] + 8) + 40) = result;
    }
  }

  return result;
}

uint64_t BOMStreamFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 80) & 2) != 0 && BOMStreamFlush(result))
    {
      return 1;
    }

    else
    {
      v2 = *(v1 + 48);
      if (v2)
      {
        if (*(v1 + 80))
        {
          free(v2);
        }
      }

      free(v1);
      return 0;
    }
  }

  return result;
}

uint64_t BOMStreamReadUInt32(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = BOMExceptionHandlerMessage("%s read called on read-only buffer", "BOMStreamReadUInt32");
    v3 = *__error();
    v4 = v2;
    v5 = 0;
    v6 = 278;
LABEL_5:
    _BOMExceptionHandlerCall(v4, v5, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v6, v3);
    v10 = 0;
    goto LABEL_7;
  }

  v7 = *(a1 + 56);
  v8 = v7 + 1;
  if ((v7 + 1) > *(a1 + 64))
  {
    v9 = BOMExceptionHandlerMessage("%s buffer overflow", "BOMStreamReadUInt32");
    v3 = *__error();
    v4 = v9;
    v5 = 1;
    v6 = 280;
    goto LABEL_5;
  }

  v10 = *v7;
  *(a1 + 56) = v8;
LABEL_7:
  v11 = bswap32(v10);
  if (*(a1 + 4) == 2)
  {
    return v10;
  }

  else
  {
    return v11;
  }
}

void *BOMStreamWithAddress(uint64_t a1, uint64_t a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040879040B4uLL);
  if (v6)
  {
    __CFSetLastAllocationEventName();
    *v6 = 0x100000002;
    v6[4] = a2;
    *(v6 + 10) = a3;
    v6[6] = a1;
    *(v6 + 80) &= ~1u;
    if (a2 < 0)
    {
      _CUILog(4, "%s: stream invalid: overflow", "BOMStreamWithAddress");
LABEL_7:
      BOMStreamFree(v6);
      return 0;
    }

    v6[7] = a1;
    v6[8] = a1 + a2;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = __error();
    v8 = strerror(*v7);
    _CUILog(4, "%s malloc: %s", "BOMStreamWithAddress", v8);
  }

  return v6;
}

uint64_t _ReadBlockTable(uint64_t a1, uint64_t a2)
{
  result = BOMStreamReadUInt32(a2);
  if (result)
  {
    v5 = result;
    if (result >> 29 || (v6 = (8 * result), v6 > *(a1 + 1064)))
    {
      v7 = BOMExceptionHandlerMessage("bad value for block table count");
      v8 = __error();
      _BOMExceptionHandlerCall(v7, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1610, *v8);
      return 1;
    }

    else if (*(a1 + 1052))
    {
      _ExpandBlockTable(a1, result);
      v10 = 0;
      v11 = 4 * v5;
      v12 = 4;
      do
      {
        *(*(a1 + 1072) + v12 - 4) = BOMStreamReadUInt32(a2);
        *(*(a1 + 1072) + v12) = BOMStreamReadUInt32(a2);
        *(*(a1 + 1080) + v10) &= ~1u;
        v12 += 8;
        v10 += 4;
      }

      while (v11 != v10);
      return 0;
    }

    else
    {
      DataPointer = BOMStreamGetDataPointer(a2, v6);
      result = 0;
      *(a1 + 1072) = DataPointer;
      *(a1 + 1068) = v5;
    }
  }

  return result;
}

uint64_t _ReadFreeList(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 1052) & 1) == 0)
  {
    v3 = _BOMFreeListAllocate();
    result = 0;
    *(a1 + 1088) = v3;
    return result;
  }

  UInt32 = BOMStreamReadUInt32(a2);
  *(a1 + 1088) = _BOMFreeListAllocate();
  if (!UInt32)
  {
    return 0;
  }

  v7 = (8 * UInt32);
  if (v7 < 1)
  {
    v13 = BOMExceptionHandlerMessage("_ReadFreeList: tring to read %d byte for freelist table.", v7);
    v14 = __error();
    _BOMExceptionHandlerCall(v13, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1755, *v14);
  }

  else
  {
    v8 = malloc_type_malloc(v7, 0x2D95399uLL);
    if (v8)
    {
      v9 = v8;
      BOMStreamReadBuffer(a2, v8, v7);
      v10 = *(a1 + 1088);
      v11 = *(v10 + 16);
      v12 = BOMStreamGetByteOrder(a2) == 1;
      v11(v10, v9, v7, v12);
      free(v9);
      return 0;
    }
  }

  return 1;
}

uint64_t BOMStreamGetDataPointer(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  result = *(a1 + 56);
  *(a1 + 56) = result + a2;
  return result;
}

void *_BOMFreeListAllocate()
{
  v0 = malloc_type_malloc(0x48uLL, 0x1080040D23F5C74uLL);
  if (v0)
  {
    __CFSetLastAllocationEventName();
    v0[2] = _dense_initialize;
    v0[3] = _dense_serialize;
    v0[4] = _dense_deallocate;
    v0[7] = _dense_clear;
    v0[5] = _dense_addFreeRange;
    v0[6] = _dense_allocateRange;
    v0[8] = _dense_print;
    v1 = malloc_type_malloc(0x18uLL, 0x10A0040DF6760FDuLL);
    if (v1)
    {
      v2 = v1;
      v3 = malloc_type_calloc(0x20uLL, 8uLL, 0x2004093837F09uLL);
      *v2 = v3;
      if (v3)
      {
        v2[1] = 0;
        *(v2 + 4) = 32;
        *v0 = v2;
        *(v0 + 2) = 0;
        return v0;
      }

      free(v0);
      v4 = v2;
    }

    else
    {
      v4 = v0;
    }

    free(v4);
    return 0;
  }

  return v0;
}

void *BOMStorageOpenInRAM(const void *a1, unint64_t a2, char a3)
{
  if (a2 <= 0x1FF)
  {
    v3 = BOMExceptionHandlerMessage("stream invalid; root page is outside of address range");
    v4 = *__error();
    v5 = v3;
    v6 = 489;
LABEL_14:
    _BOMExceptionHandlerCall(v5, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v6, v4);
    return 0;
  }

  v8 = a2;
  v10 = BOMStreamWithAddress(a1, 512, 0);
  if (!v10)
  {
    v26 = BOMExceptionHandlerMessage("can't read from memory %p", a1);
    v4 = *__error();
    v5 = v26;
    v6 = 497;
    goto LABEL_14;
  }

  v11 = v10;
  if (BOMStreamReadUInt32(v10) == 1112493395 && BOMStreamReadUInt32(v11) == 1953460837)
  {
    UInt32 = BOMStreamReadUInt32(v11);
    if (UInt32 == 1)
    {
      v13 = malloc_type_calloc(1uLL, 0x470uLL, 0x10A0040835A29DFuLL);
      if (!v13)
      {
        v29 = __error();
        v30 = strerror(*v29);
        _CUILog(4, "%s: malloc: %s", "BOMStorage BOMStorageOpenInRAM(void *, size_t, Boolean)", v30);
        BOMStreamFree(v11);
        return v13;
      }

      v13[140] = BomSys_default();
      *(v13 + 257) = -1;
      *(v13 + 258) = v8;
      *(v13 + 259) = v8;
      *(v13 + 263) = *(v13 + 263) & 0xFFFFFFF6 | a3 & 1;
      *(v13 + 264) = BOMStreamReadUInt32(v11);
      *(v13 + 265) = BOMStreamReadUInt32(v11);
      *(v13 + 266) = BOMStreamReadUInt32(v11);
      *(v13 + 274) = BOMStreamReadUInt32(v11);
      *(v13 + 275) = BOMStreamReadUInt32(v11);
      *(v13 + 263) |= 6u;
      BOMStreamFree(v11);
      v14 = *(v13 + 265);
      v15 = *(v13 + 266);
      v16 = __CFADD__(v15, v14);
      v17 = v15 + v14;
      if (v16)
      {
        v18 = BOMExceptionHandlerMessage(" <memory>: stream invalid; overflow of admin offset+size");
        v19 = *__error();
        v20 = v18;
        v21 = 552;
      }

      else
      {
        v31 = *(v13 + 258);
        if (v17 <= v31)
        {
          v33 = *(v13 + 274);
          v34 = *(v13 + 275);
          v16 = __CFADD__(v34, v33);
          v35 = v34 + v33;
          if (v16)
          {
            v36 = BOMExceptionHandlerMessage("<memory>: stream invalid; overflow of toc offset+size");
            v19 = *__error();
            v20 = v36;
            v21 = 566;
          }

          else
          {
            if (v35 <= v31)
            {
              *(v13 + 262) = v31;
              v13[130] = a1;
              _CreateBlockTable(v13);
              v38 = *(v13 + 265);
              if (v38)
              {
                v39 = BOMStreamWithAddress(v13[130] + v38, *(v13 + 266), 0);
                if (!v39)
                {
                  v41 = __error();
                  v42 = strerror(*v41);
                  v43 = BOMExceptionHandlerMessage("can't read from <memory>: %s", v42);
                  v19 = *__error();
                  v20 = v43;
                  v21 = 592;
                  goto LABEL_26;
                }

                v40 = v39;
                if (_ReadBlockTable(v13, v39) || _ReadFreeList(v13, v40))
                {
                  goto LABEL_27;
                }

                BOMStreamFree(v40);
              }

              else
              {
                v13[136] = _BOMFreeListAllocate();
              }

              __strlcpy_chk();
              return v13;
            }

            v37 = BOMExceptionHandlerMessage("<memory>: stream invalid; toc range is outside file");
            v19 = *__error();
            v20 = v37;
            v21 = 573;
          }
        }

        else
        {
          v32 = BOMExceptionHandlerMessage("<memory>: stream invalid; admin range is outside of file");
          v19 = *__error();
          v20 = v32;
          v21 = 559;
        }
      }

LABEL_26:
      _BOMExceptionHandlerCall(v20, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v21, v19);
LABEL_27:
      free(v13);
      return 0;
    }

    v28 = BOMExceptionHandlerMessage("<memory> has an unknown version: 0x%X", UInt32);
    v23 = *__error();
    v24 = v28;
    v25 = 517;
  }

  else
  {
    v22 = BOMExceptionHandlerMessage("%s is not a BOMStorage file", "<memory>");
    v23 = *__error();
    v24 = v22;
    v25 = 504;
  }

  _BOMExceptionHandlerCall(v24, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v25, v23);
  BOMStreamFree(v11);
  return 0;
}

void *_CreateBlockTable(void *result)
{
  if (*(result + 1052))
  {
    v1 = result;
    result[134] = malloc_type_calloc(1uLL, 0x800uLL, 0x100004000313F17uLL);
    result = malloc_type_calloc(1uLL, 0x400uLL, 0x1000040BEE6EA24uLL);
    v1[135] = result;
    *(v1 + 267) = 256;
  }

  return result;
}

void PerformBlockWithThemeRefCache(uint64_t a1)
{
  if (PerformBlockWithThemeRefCache___onceToken != -1)
  {
    PerformBlockWithThemeRefCache_cold_1();
  }

  os_unfair_lock_lock(&PerformBlockWithThemeRefCache___themeRefCacheLookupMutex);
  (*(a1 + 16))(a1, PerformBlockWithThemeRefCache___themeRefsByUniqueKey);

  os_unfair_lock_unlock(&PerformBlockWithThemeRefCache___themeRefCacheLookupMutex);
}

void BOMExceptionHandlerSet(void *a1)
{
  if (__BOMExceptionHandlerKey___onceHandler != -1)
  {
    BOMExceptionHandlerSet_cold_1();
  }

  if (pthread_setspecific(__BOMExceptionHandlerKey___key, a1))
  {

    _CUILog(4, "BOMExceptionHandlerSet couldn't pthread_setspecific");
  }
}

void _CUILog(int a1, const char *a2, ...)
{
  va_start(va, a2);
  if (_CUILog___onceDefaultToken != -1)
  {
    _CUILog_cold_1();
  }

  if (a1 != 3 || _CUILog___showDebugLogs == 1)
  {
    v4 = objc_autoreleasePoolPush();
    if (__logToStderr == 1)
    {
      va_copy(buf, va);
      v5 = [[NSString alloc] initWithUTF8String:a2];
      v6 = [[NSString alloc] initWithFormat:v5 arguments:va];

      if (a1 <= 2)
      {
        if (a1 != 1 && a1 != 2)
        {
          goto LABEL_40;
        }

        goto LABEL_20;
      }

      if (a1 == 3)
      {
LABEL_20:
        fprintf(__stderrp, "%s\n", [v6 UTF8String]);
        goto LABEL_40;
      }

      if (a1 != 4)
      {
LABEL_40:

        objc_autoreleasePoolPop(v4);
        return;
      }

      fprintf(__stderrp, "%s\n", [v6 UTF8String]);
LABEL_30:
      qword_1ED4EBC50 = [v6 UTF8String];
      goto LABEL_40;
    }

    v7 = [[NSString alloc] initWithUTF8String:a2];
    v6 = [[NSString alloc] initWithFormat:v7 arguments:va];

    if (a1 > 2)
    {
      if (a1 != 3)
      {
        if (a1 != 4)
        {
          goto LABEL_40;
        }

        if (__onceToken != -1)
        {
          _CUILog_cold_2();
        }

        v11 = __handle;
        if (os_log_type_enabled(__handle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v6;
          _os_log_impl(&dword_18DF47000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          if (__onceToken != -1)
          {
            _CUILog_cold_2();
          }
        }

        v12 = __handle;
        if (os_log_type_enabled(__handle, OS_LOG_TYPE_FAULT))
        {
          _CUILog_cold_4(v6, v12);
        }

        goto LABEL_30;
      }

      if (__onceToken != -1)
      {
        _CUILog_cold_2();
      }

      v14 = __handle;
      if (!os_log_type_enabled(__handle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_40;
      }

      *buf = 138543362;
      *&buf[4] = v6;
      v9 = v14;
      v10 = OS_LOG_TYPE_DEBUG;
    }

    else if (a1 == 1)
    {
      if (__onceToken != -1)
      {
        _CUILog_cold_2();
      }

      v13 = __handle;
      if (!os_log_type_enabled(__handle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *buf = 138543362;
      *&buf[4] = v6;
      v9 = v13;
      v10 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_40;
      }

      if (__onceToken != -1)
      {
        _CUILog_cold_2();
      }

      v8 = __handle;
      if (!os_log_type_enabled(__handle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      *buf = 138543362;
      *&buf[4] = v6;
      v9 = v8;
      v10 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_18DF47000, v9, v10, "%{public}@", buf, 0xCu);
    goto LABEL_40;
  }
}

id _LookupThemeProvider(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = ___LookupThemeProvider_block_invoke;
  v5[3] = &unk_1E7251588;
  v5[4] = &v6;
  v5[5] = a1;
  __PerformBlockWithThemeRegistry(v5);
  v2 = v7[5];
  if (!v2)
  {
    _CUILog(4, "CoreUI: CUIThemeStore: No theme registered with id=%lu", a1);
    v2 = v7[5];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_18DF4A33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PerformBlockWithThemeRegistry(uint64_t a1)
{
  if (__PerformBlockWithThemeRegistry___onceToken != -1)
  {
    __PerformBlockWithThemeRegistry_cold_1();
  }

  os_unfair_lock_lock(&__PerformBlockWithThemeRegistry___lock);
  (*(a1 + 16))(a1, __PerformBlockWithThemeRegistry___themeRegistry);

  os_unfair_lock_unlock(&__PerformBlockWithThemeRegistry___lock);
}

uint64_t BOMStorageCopyFromBlockRange(uint64_t a1, unsigned int a2, uint64_t a3, size_t __len, void *__dst)
{
  if (!a1 || !a2 || !__dst)
  {
    if (a1)
    {
      if (a2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v16 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlockRange: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1112, *v16);
      if (a2)
      {
LABEL_8:
        if (!__dst)
        {
          goto LABEL_17;
        }

        return 1;
      }
    }

    v17 = __error();
    _BOMExceptionHandlerCall("BOMStorageCopyFromBlockRange: !bid", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1114, *v17);
    if (!__dst)
    {
LABEL_17:
      v8 = *__error();
      v9 = "BOMStorageCopyFromBlockRange: !data";
      v10 = 1116;
      goto LABEL_43;
    }

    return 1;
  }

  if (*(a1 + 1056) < a2)
  {
    v8 = *__error();
    v9 = "BOMStorageCopyRangeFromBlockRange: bad block (bid > storage->blocks)";
    v10 = 1122;
LABEL_43:
    _BOMExceptionHandlerCall(v9, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v10, v8);
    return 1;
  }

  v13 = *(a1 + 1068);
  if (v13 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", a2);
    v13 = *(a1 + 1068);
  }

  else
  {
    v14 = *(*(a1 + 1072) + 8 * a2);
    v15 = bswap32(v14);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v14 = v15;
    }

    if (v14 != -1)
    {
      goto LABEL_25;
    }
  }

  if (v13 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
    v13 = *(a1 + 1068);
  }

  else
  {
    v18 = *(*(a1 + 1072) + 8 * a2 + 4);
    v19 = bswap32(v18);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v18 = v19;
    }

    if (v18 == -1)
    {
      v8 = *__error();
      v9 = "BOMStorageCopyRangeFromBlockRange: reading from free block";
      v10 = 1127;
      goto LABEL_43;
    }
  }

LABEL_25:
  if (v13 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", a2);
    v13 = *(a1 + 1068);
    v21 = -1;
  }

  else
  {
    v20 = bswap32(*(*(a1 + 1072) + 8 * a2));
    if (*(a1 + 1052))
    {
      v21 = *(*(a1 + 1072) + 8 * a2);
    }

    else
    {
      v21 = v20;
    }
  }

  if (v13 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
    v22 = 0;
  }

  else
  {
    v22 = *(*(a1 + 1072) + 8 * a2 + 4);
    v23 = bswap32(v22);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v22 = v23;
    }
  }

  if (__CFADD__(v22, v21))
  {
    v8 = *__error();
    v9 = "BOMStorageCopyRangeFromBlockRange: 32-bit overflow with block address+size";
    v10 = 1137;
    goto LABEL_43;
  }

  if (v22 + v21 > *(a1 + 1032))
  {
    v8 = *__error();
    v9 = "BOMStorageCopyRangeFromBlockRange: block extends past end of storage";
    v10 = 1141;
    goto LABEL_43;
  }

  if (__CFADD__(__len, a3))
  {
    BOMStorageCopyFromBlockRange_cold_1();
    return 1;
  }

  if (__len + a3 > v22)
  {
    v8 = *__error();
    v9 = "BOMStorageCopyRangeFromBlockRange: length extends beyond block size";
    v10 = 1156;
    goto LABEL_43;
  }

  if (v22)
  {
    if (!v21)
    {
      v8 = *__error();
      v9 = "BOMStorageCopyRangeFromBlockRange: bad block address";
      v10 = 1164;
      goto LABEL_43;
    }

    v25 = *(a1 + 1080);
    if (v25 && (*(v25 + 4 * a2) & 1) != 0)
    {
      v26 = *(a1 + 1052);
    }

    else
    {
      v26 = *(a1 + 1052);
      if ((v26 & 1) != 0 && *(a1 + 1028) != -1)
      {
        goto LABEL_55;
      }
    }

    if ((v26 & 2) != 0)
    {
      v29 = (*(a1 + 1040) + v21 + a3);
      goto LABEL_64;
    }

LABEL_55:
    v27 = *(a1 + 1028);
    if ((v26 & 2) == 0)
    {
      v28 = BOMStreamWithFile(v27, v21, v22, 0, 0);
      BOMStreamReadBuffer(v28, __dst, __len);
      BOMStreamFree(v28);
      return 0;
    }

    v30 = BOMStreamWithFile(v27, v21, v22, 0, (*(a1 + 1040) + v21));
    if (!v30)
    {
      v8 = *__error();
      v9 = "BOMStorageCopyRangeFromBlockRange: !stream";
      v10 = 1189;
      goto LABEL_43;
    }

    BOMStreamFree(v30);
    v31 = *(a1 + 1080);
    if (v31)
    {
      *(v31 + 4 * a2) |= 1u;
    }

    else
    {
      v32 = BOMExceptionHandlerMessage("BOM blockShadowTable is null");
      v33 = __error();
      _BOMExceptionHandlerCall(v32, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1196, *v33);
    }

    v29 = (*(a1 + 1040) + v21 + a3);
LABEL_64:
    memmove(__dst, v29, __len);
  }

  return 0;
}

uint64_t BOMStorageCopyFromBlock(uint64_t a1, unsigned int a2, void *__dst)
{
  if (!a1 || !a2)
  {
    if (a1)
    {
      if (!a2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlock: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1010, *v12);
      if (!a2)
      {
LABEL_13:
        v5 = *__error();
        v6 = "BOMStorageCopyFromBlock: !bid";
        v7 = 1012;
        goto LABEL_14;
      }
    }

    return 1;
  }

  if (*(a1 + 1056) < a2)
  {
    v5 = *__error();
    v6 = "BOMStorageCopyFromBlock: bid > storage->blocks";
    v7 = 1016;
LABEL_14:
    _BOMExceptionHandlerCall(v6, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v7, v5);
    return 1;
  }

  if (*(a1 + 1068) <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
    v11 = 0;
  }

  else
  {
    v9 = *(*(a1 + 1072) + 8 * a2 + 4);
    v10 = bswap32(v9);
    if (*(a1 + 1052))
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }
  }

  return BOMStorageCopyFromBlockRange(a1, a2, 0, v11, __dst);
}

uint64_t BOMStorageSizeOfBlock(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 1056) < a2)
    {
      return 0;
    }

    v5 = *(a1 + 1068);
    if (v5 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", a2);
      v5 = *(a1 + 1068);
    }

    else
    {
      v6 = *(*(a1 + 1072) + 8 * a2);
      v7 = bswap32(v6);
      if ((*(a1 + 1052) & 1) == 0)
      {
        v6 = v7;
      }

      if (v6 != -1)
      {
LABEL_16:
        if (v5 > a2)
        {
          v10 = *(*(a1 + 1072) + 8 * a2 + 4);
          v11 = bswap32(v10);
          if (*(a1 + 1052))
          {
            return v10;
          }

          else
          {
            return v11;
          }
        }

        _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
        return 0;
      }
    }

    if (v5 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
      v5 = *(a1 + 1068);
    }

    else
    {
      v8 = *(*(a1 + 1072) + 8 * a2 + 4);
      v9 = bswap32(v8);
      if ((*(a1 + 1052) & 1) == 0)
      {
        v8 = v9;
      }

      if (v8 == -1)
      {
        return 0;
      }
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t (*BOMStreamReadBuffer(uint64_t a1, void *__dst, size_t __len))(void *)
{
  if (*(a1 + 40) == 1)
  {
    v3 = BOMExceptionHandlerMessage("%s read called on read-only buffer", "BOMStreamReadBuffer");
    v4 = *__error();
    v5 = v3;
    v6 = 0;
    v7 = 332;
  }

  else
  {
    v10 = *(a1 + 56);
    if (__CFADD__(__len, v10))
    {
      return BOMStreamReadBuffer_cold_1();
    }

    if (v10 + __len <= *(a1 + 64))
    {
      result = memmove(__dst, v10, __len);
      *(a1 + 56) += __len;
      return result;
    }

    v11 = BOMExceptionHandlerMessage("%s buffer overflow", "BOMStreamReadBuffer");
    v4 = *__error();
    v5 = v11;
    v6 = 1;
    v7 = 347;
  }

  return _BOMExceptionHandlerCall(v5, v6, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v7, v4);
}

uint64_t _tocGet(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 1096);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 1100);
  if (!v5)
  {
    return 0;
  }

  v6 = (*(a1 + 1052) & 2) != 0 ? BOMStreamWithAddress(*(a1 + 1040) + v4, *(a1 + 1100), 0) : BOMStreamWithFile(*(a1 + 1028), v4, v5, 0, 0);
  v7 = v6;
  if (!v6)
  {
    return 0;
  }

  UInt32 = BOMStreamReadUInt32(v6);
  if (UInt32)
  {
    v9 = UInt32;
    while (1)
    {
      v10 = BOMStreamReadUInt32(v7);
      UInt8 = BOMStreamReadUInt8(v7);
      BOMStreamReadBuffer(v7, __s2, UInt8);
      __s2[UInt8] = 0;
      if (!strncmp(a2, __s2, 0xFFuLL))
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  BOMStreamFree(v7);
  v12 = *(a1 + 1068);
  if (v10 <= v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 1052);
  if ((v14 & 2) != 0 && (v14 & 5) == 0 && v13)
  {
    v15 = *(a1 + 1040);
    if (v12 <= v13)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", v13);
      v12 = *(a1 + 1068);
      v16 = 0xFFFFFFFFLL;
    }

    else
    {
      v16 = bswap32(*(*(a1 + 1072) + 8 * v13));
    }

    if (v12 <= v13)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", v13);
      v20 = 0;
    }

    else
    {
      v18 = *(*(a1 + 1072) + 8 * v13 + 4);
      v19 = bswap32(v18);
      if (*(a1 + 1052))
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }
    }

    madvise((v15 + v16), v20, 3);
    return v10;
  }

  return v13;
}

uint64_t BOMStreamReadUInt8(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = BOMExceptionHandlerMessage("%s read called on read-only buffer", "BOMStreamReadUInt8");
    v2 = *__error();
    v3 = v1;
    v4 = 0;
    v5 = 318;
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = v6 + 1;
    if ((v6 + 1) <= *(a1 + 64))
    {
      v9 = *v6;
      *(a1 + 56) = v7;
      return v9;
    }

    v8 = BOMExceptionHandlerMessage("%s buffer overflow", "BOMStreamReadUInt8");
    v2 = *__error();
    v3 = v8;
    v4 = 1;
    v5 = 320;
  }

  _BOMExceptionHandlerCall(v3, v4, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v5, v2);
  return 0;
}

void *BOMTreeIteratorNew(uint64_t a1, void *a2, size_t a3, BOOL *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A00408C39C337uLL);
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  *v8 = a1;
  BOMTreeIteratorSet(v8, a2, a3, a4);
  v10 = *(a1 + 296);
  if (!v10)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    *(a1 + 296) = Mutable;
    if (!Mutable)
    {
      v15 = __error();
      _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 2688, *v15);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v11 = BOMCFArrayMaxRange(v10);
  v13 = v12;
  v17.location = v11;
  v17.length = v13;
  if (!CFArrayContainsValue(*(a1 + 296), v17, v9))
  {
    Mutable = *(a1 + 296);
LABEL_6:
    CFArrayAppendValue(Mutable, v9);
  }

LABEL_8:
  if ((*(*v9 + 356) & 4) == 0)
  {
    v9[3] = malloc_type_malloc(v9[4], 0xE2286860uLL);
  }

  v9[5] = malloc_type_malloc(v9[6], 0x62594550uLL);
  __CFSetLastAllocationEventName();
  return v9;
}

uint64_t BOMTreeIteratorIsAtEnd(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 57);
  if ((v2 & 8) != 0)
  {
    return 1;
  }

  if ((v2 & 1) != 0 || (v3 = *(a1 + 8)) == 0 || *v3 != *(a1 + 16))
  {
    v4 = _revalidateIterator(a1);
    v2 = *(a1 + 57);
    if (!v4)
    {
      v2 |= 8u;
      *(a1 + 57) = v2;
    }
  }

  return (v2 >> 3) & 1;
}

uint64_t *BOMTreeIteratorKey(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 57) & 8) != 0)
    {
      return 0;
    }

    if (((*(result + 57) & 1) != 0 || (v2 = result[1]) == 0 || *v2 != *(result + 4)) && !_revalidateIterator(result))
    {
      result = 0;
      *(v1 + 57) |= 8u;
      return result;
    }

    v3 = *v1;
    v4 = *(*v1 + 356);
    if ((v4 & 4) == 0)
    {
      if ((*(v1 + 57) & 2) != 0)
      {
        return v1[3];
      }

      if ((v4 & 0x40) != 0)
      {
        v8 = *(v3 + 348);
        if (v8 >= 1)
        {
LABEL_18:
          v9 = v1[4];
          if (v8 > v9)
          {
            v10 = v1[3];
            if (v10)
            {
              free(v10);
              v1[3] = 0;
              v9 = v1[4];
            }

            if (v8 <= 2 * v9)
            {
              v11 = 2 * v9;
            }

            else
            {
              v11 = v8;
            }

            v1[4] = v11;
            v1[3] = malloc_type_malloc(v11, 0xCCA19725uLL);
          }

          v12 = *v1;
          if ((*(*v1 + 356) & 0x40) == 0)
          {
            v13 = *(*(v1[1] + 24) + 8 * *(v1 + 5) + 4);
            goto LABEL_31;
          }

          v14 = *(v12 + 348);
          v15 = v1[1];
          if (v14 < 1)
          {
            v13 = bswap32(*(*(v15 + 24) + 8 * *(v1 + 5) + 4));
LABEL_31:
            if (BOMStorageCopyFromBlock(*v12, v13, v1[3]))
            {
              return 0;
            }

            goto LABEL_34;
          }

          v16 = *(v15 + 32);
          if (v16)
          {
            memcpy(v1[3], (v16 + *(v1 + 5) * v14), v14);
LABEL_34:
            *(v1 + 57) |= 2u;
            return v1[3];
          }

          return 0;
        }

        v5 = bswap32(*(*(v1[1] + 24) + 8 * *(v1 + 5) + 4));
      }

      else
      {
        v5 = *(*(v1[1] + 24) + 8 * *(v1 + 5) + 4);
      }

      v8 = BOMStorageSizeOfBlock(*v3, v5);
      goto LABEL_18;
    }

    v6 = *(*(v1[1] + 24) + 8 * *(v1 + 5) + 4);
    v7 = bswap32(v6);
    if ((v4 & 0x40) != 0)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

uint64_t _findIndexForKey(uint64_t a1, uint64_t a2, void *__s1, size_t a4, BOOL *a5)
{
  if (*(a2 + 16))
  {
    v9 = 0;
    v10 = *(a2 + 16) - 1;
    while (1)
    {
      v11 = v9 + ((v10 - v9) >> 1);
      v12 = *(*(a2 + 24) + 8 * v11 + 4);
      v13 = *(a1 + 356);
      v14 = bswap32(v12);
      if ((v13 & 0x40) != 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = *(*(a2 + 24) + 8 * v11 + 4);
      }

      if (!v15)
      {
        v18 = 0;
        v16 = 0;
        goto LABEL_28;
      }

      if ((v13 & 4) != 0)
      {
        v16 = 0;
        if ((v13 & 0x40) != 0)
        {
          v18 = v14;
        }

        else
        {
          v18 = v12;
        }

        goto LABEL_28;
      }

      if ((v13 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      v16 = *(a1 + 348);
      if (v16 < 1)
      {
        break;
      }

LABEL_12:
      v17 = *(a1 + 344);
      v18 = *(a1 + 336);
      if (v16 > v17)
      {
        v19 = (2 * v17);
        if (v16 > v19)
        {
          LODWORD(v19) = v16;
        }

        *(a1 + 344) = v19;
        if (v18)
        {
          free(v18);
          *(a1 + 336) = 0;
          LODWORD(v19) = *(a1 + 344);
        }

        v18 = malloc_type_malloc(v19, 0x67B7B83AuLL);
        *(a1 + 336) = v18;
      }

      if ((*(a1 + 356) & 0x40) != 0)
      {
        v21 = *(a1 + 348);
        if (v21 >= 1)
        {
          memcpy(v18, (*(a2 + 32) + v21 * v11), v21);
          goto LABEL_28;
        }

        v20 = bswap32(*(*(a2 + 24) + 8 * v11 + 4));
      }

      else
      {
        v20 = *(*(a2 + 24) + 8 * v11 + 4);
      }

      BOMStorageCopyFromBlock(*a1, v20, v18);
LABEL_28:
      if ((*(a1 + 356) & 4) != 0)
      {
        if (v18 <= __s1)
        {
          v24 = 0;
        }

        else
        {
          v24 = -1;
        }

        if (v18 < __s1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v24;
        }

        goto LABEL_44;
      }

      if (v18 == __s1)
      {
        if (!a5)
        {
          return v11;
        }

        v23 = 0;
        v25 = 1;
        goto LABEL_48;
      }

      if (__s1)
      {
        if (!v18)
        {
          v23 = 1;
          goto LABEL_44;
        }

        if (a4 >= v16)
        {
          v22 = v16;
        }

        else
        {
          v22 = a4;
        }

        v23 = memcmp(__s1, v18, v22);
        if (v23)
        {
          goto LABEL_44;
        }

        if (v16 <= a4)
        {
          v23 = v16 < a4;
          goto LABEL_44;
        }
      }

      v23 = -1;
LABEL_44:
      if (!a5)
      {
        goto LABEL_49;
      }

      v25 = v23 == 0;
LABEL_48:
      *a5 = v25;
LABEL_49:
      if (v10 == v9)
      {
        if (v23 <= 0)
        {
          return v11;
        }

        else
        {
          return (v11 + 1);
        }
      }

      if (v23 >= 1)
      {
        if (v11 == v10)
        {
          v9 += (v10 - v9) >> 1;
        }

        else
        {
          v9 = v11 + 1;
        }
      }

      else
      {
        if ((v23 & 0x80000000) == 0)
        {
          return v11;
        }

        v10 = v11 - ((v10 - v9) > 1);
      }
    }

    v12 = v14;
LABEL_11:
    v16 = BOMStorageSizeOfBlock(*a1, v12);
    goto LABEL_12;
  }

  v11 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  return v11;
}

uint64_t _findPagesForKey(uint64_t a1, uint64_t a2, void *__s1, size_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  if (a2)
  {
    BOMStackPush(a2, v8);
  }

  if ((*(v8 + 4) & 1) == 0)
  {
    do
    {
      v9 = *(*(v8 + 24) + 8 * _findIndexForKey(a1, v8, __s1, a4, 0));
      v10 = bswap32(v9);
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = v9;
      }

      Page = _findPage(a1, v11);
      v8 = Page;
      if (!Page)
      {
        break;
      }

      if (a2)
      {
        BOMStackPush(a2, Page);
        v13 = *(v8 + 4) | 8;
      }

      else
      {
        v13 = *(Page + 2);
      }

      *(v8 + 4) = v13 & 0xFFFB;
    }

    while ((v13 & 1) == 0);
  }

  return v8;
}

uint64_t BOMTreeGetValueSize(uint64_t a1, void *__s1, size_t a3, uint64_t *a4)
{
  result = 1;
  if (a1 && __s1 && a4 && (a3 || (*(a1 + 356) & 4) != 0))
  {
    PagesForKey = _findPagesForKey(a1, 0, __s1, a3);
    if (PagesForKey && (v10 = PagesForKey, v15 = 0, IndexForKey = _findIndexForKey(a1, PagesForKey, __s1, a3, &v15), v15))
    {
      v12 = bswap32(*(*(v10 + 24) + 8 * IndexForKey));
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = *(*(v10 + 24) + 8 * IndexForKey);
      }

      v14 = BOMStorageSizeOfBlock(*a1, v13);
      result = 0;
      *a4 = v14;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

_DWORD *BOMTreeIteratorSet(void *a1, void *__s1, size_t a3, BOOL *a4)
{
  *(a1 + 57) &= 0xF6u;
  result = _findPagesForKey(*a1, 0, __s1, a3);
  a1[1] = result;
  if (result)
  {
    *(a1 + 4) = *result;
    result = _findIndexForKey(*a1, result, __s1, a3, a4);
    *(a1 + 5) = result;
    *(a1 + 56) = 1;
    v9 = a1[1];
    if (result >= *(v9 + 16))
    {
      *(a1 + 5) = 0;
      v10 = *(v9 + 8);
      if (!v10 || (*(a1 + 4) = v10, result = _findPage(*a1, v10), (a1[1] = result) == 0))
      {
        *(a1 + 57) |= 8u;
      }
    }
  }

  else
  {
    *(a1 + 57) |= 8u;
    *(a1 + 56) = 0;
  }

  return result;
}

_DWORD *BOMStreamWithBlockID(uint64_t a1, unsigned int a2, size_t a3, int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040879040B4uLL);
  if (!v8)
  {
    v14 = __error();
    v15 = strerror(*v14);
    _CUILog(4, "%s: malloc: %s", "BOMStreamWithBlockID", v15);
    return v8;
  }

  __CFSetLastAllocationEventName();
  v8[1] = 1;
  v9 = BOMStorageSizeOfBlock(a1, a2);
  *(v8 + 9) = BOMStorageGetSys(a1);
  *v8 = 0;
  *(v8 + 1) = a1;
  v8[4] = a2;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  *(v8 + 4) = v10;
  v8[10] = a4;
  if (v9 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v9;
  }

  v12 = malloc_type_calloc(1uLL, v11, 0x74A48935uLL);
  *(v8 + 6) = v12;
  if (!v12)
  {
    v16 = __error();
    v17 = strerror(*v16);
    _CUILog(4, "%s: malloc: %s", "BOMStreamWithBlockID", v17);
    goto LABEL_16;
  }

  *(v8 + 80) |= 1u;
  v13 = *(v8 + 4);
  *(v8 + 7) = v12;
  *(v8 + 8) = &v12[v13];
  if ((v8[10] | 2) != 2)
  {
    goto LABEL_12;
  }

  if (BOMStorageCopyFromBlock(a1, a2, v12))
  {
LABEL_16:
    BOMStreamFree(v8);
    return 0;
  }

  v13 = *(v8 + 4);
LABEL_12:
  if (!v13)
  {
    goto LABEL_16;
  }

  return v8;
}

uint64_t BOMStorageGetSys(uint64_t result)
{
  if (result)
  {
    return *(result + 1120);
  }

  return result;
}

uint64_t BOMStorageIsOpenForWriting(uint64_t result)
{
  if (result)
  {
    return *(result + 1052) & 1;
  }

  return result;
}

uint64_t CUIRenditionKeyInitializeAttributeIndexWithKeyFormat(uint64_t result, uint64_t a2)
{
  *(result + 192) = 0;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 80) = 0u;
  if (*(a2 + 8))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a2 + 12 + 4 * v2);
      *(result + 8 + v5) = v2;
      if (v5 <= 0x1C)
      {
        *(result + 80 + 4 * v4++) = v5;
      }

      v3 |= 1 << v5;
      ++v2;
      LODWORD(v5) = *(a2 + 8);
      if (v5 >= 0x40)
      {
        v5 = 64;
      }

      else
      {
        v5 = v5;
      }
    }

    while (v2 < v5);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 76) = v4;
  *result = v3;
  return result;
}

uint64_t *BOMTreeOpenWithName(uint64_t a1, char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = a3;
  NamedBlock = BOMStorageGetNamedBlock();
  if (!NamedBlock)
  {
    return 0;
  }

  return _BOMTreeOpen(a1, a2, NamedBlock, v4);
}

uint64_t *_BOMTreeOpen(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v5 = a3;
  v8 = _newBOMTree(a1, a2);
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  *v8 = a1;
  v8[4] = v5;
  v10 = BOMStorageSizeOfBlock(a1, v5);
  v11 = *v9;
  if ((*(v9 + 356) & 0x40) != 0)
  {
    v13 = BOMStorageReadFromBlock(v11, v5);
    if (v13)
    {
      v14 = v13;
      v12 = BOMStreamWithAddress(v13, v10, 0);
      if (!BOMStorageInRam(*v9))
      {
        madvise(v14, v10, 3);
        if (!v12)
        {
          goto LABEL_25;
        }

        goto LABEL_8;
      }

      if (v12)
      {
        goto LABEL_8;
      }
    }

LABEL_25:
    BOMTreeFree(v9);
    return 0;
  }

  v12 = BOMStreamWithBlockID(v11, v5, v10, 0);
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_8:
  if (BOMStreamReadUInt32(v12) != 1953654117)
  {
    if (a2)
    {
      _CUILog(4, "%s: '%s' is not a BOMTree");
    }

    else
    {
      _CUILog(4, "%s: '<Tree %d>' is not a BOMTree");
    }

    goto LABEL_24;
  }

  if (BOMStreamReadUInt32(v12) != 1)
  {
    if (a2)
    {
      _CUILog(4, "%s: BOMTree '%s' has an unknown version: 0x%X");
    }

    else
    {
      _CUILog(4, "%s: BOMTree '<Tree %d>' has an unknown version: 0x%X");
    }

LABEL_24:
    BOMStreamFree(v12);
    goto LABEL_25;
  }

  UInt32 = BOMStreamReadUInt32(v12);
  *(v9 + 304) = BOMStreamReadUInt32(v12);
  *(v9 + 20) = BOMStreamReadUInt32(v12);
  *(v9 + 356) = *(v9 + 356) & 0xFFFFFFFB | (4 * (BOMStreamReadUInt8(v12) & 1));
  if (!BOMStreamAtEOF(v12))
  {
    *(v9 + 348) = BOMStreamReadUInt32(v12);
    if (!BOMStreamAtEOF(v12))
    {
      *(v9 + 352) = BOMStreamReadUInt32(v12);
    }
  }

  BOMStreamFree(v12);
  v16 = *(v9 + 304) - 16;
  *(v9 + 308) = v16 >> 3;
  *(v9 + 312) = (v16 >> 3) + 1;
  *(v9 + 316) = v16 >> 4;
  v17 = _NewPage(v9, UInt32);
  *(v9 + 24) = v17;
  if (!v17 || _ReadPage(v9, v17))
  {
    goto LABEL_25;
  }

  *(v9 + 356) = *(v9 + 356) & 0xFFFFFFFD | (2 * (a4 & 1));
  return v9;
}

_DWORD *_newBOMTree(uint64_t a1, char *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x168uLL, 0x10B0040E869A47AuLL);
  if (v4)
  {
    __CFSetLastAllocationEventName();
    *v4 = a1;
    if (BOMStorageMemoryMapped(a1))
    {
      v5 = (BOMStorageIsOpenForWriting(a1) == 0) << 6;
    }

    else
    {
      v5 = 0;
    }

    v8 = v4[89] & 0xFFFFFFBF | v5;
    v4[89] = v8;
    if (a2)
    {
      v9 = strdup(a2);
      *(v4 + 1) = v9;
      v4[89] = v8 & 0xFFFFFFDF | (32 * (v9 != a2));
    }
  }

  else
  {
    v6 = __error();
    v7 = strerror(*v6);
    _CUILog(4, "%s: calloc: %s creating tree '%s'", "BOMTree _newBOMTree(BOMStorage, const char *)", v7, a2);
  }

  return v4;
}

BOOL BOMStorageMemoryMapped(_BOOL8 result)
{
  if (result)
  {
    return (*(result + 1052) & 6) == 2;
  }

  return result;
}

BOOL BOMStreamAtEOF(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = BOMExceptionHandlerMessage("%s Can't check EOF on a writeable stream", "BOMStreamAtEOF");
    v3 = __error();
    _BOMExceptionHandlerCall(v2, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", 359, *v3);
  }

  return *(a1 + 56) == *(a1 + 64);
}

void *_NewPage(uint64_t *a1, int a2)
{
  v3 = *a1;
  if ((*(a1 + 356) & 0x40) != 0)
  {
    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x10300401C741A23uLL);
    v6 = 0;
    if (!v8)
    {
      return 0;
    }

    v7 = v8;
  }

  else
  {
    v4 = *(a1 + 77);
    if (v4 <= *(a1 + 78))
    {
      v4 = *(a1 + 78);
    }

    v5 = malloc_type_calloc(1uLL, 8 * (v4 + 1), 0x100004000313F17uLL);
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = malloc_type_calloc(1uLL, 0x28uLL, 0x10300401C741A23uLL);
    if (!v7)
    {
      free(v6);
      return v7;
    }
  }

  if (!a2)
  {
    a2 = BOMStorageNewBlock(v3);
  }

  v7[3] = v6;
  *v7 = a2;
  return v7;
}

uint64_t _ReadPage(uint64_t *a1, unsigned int *a2)
{
  v4 = *a2;
  v5 = BOMStorageSizeOfBlock(*a1, *a2);
  v6 = *a1;
  if ((*(a1 + 356) & 0x40) != 0)
  {
    v8 = BOMStorageReadFromBlock(v6, v4);
    if (v8)
    {
      v9 = v8;
      v7 = BOMStreamWithAddress(v8, v5, 0);
      if (BOMStorageInRam(*a1))
      {
        if (v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        madvise(v9, v5, 3);
        if (v7)
        {
          goto LABEL_7;
        }
      }
    }

    return 1;
  }

  v7 = BOMStreamWithBlockID(v6, v4, v5, 0);
  if (!v7)
  {
    return 1;
  }

LABEL_7:
  UInt16 = BOMStreamReadUInt16(v7);
  v11 = a2[1] & 0xFFFE;
  if (UInt16)
  {
    ++v11;
  }

  *(a2 + 2) = v11;
  *(a2 + 8) = BOMStreamReadUInt16(v7);
  a2[2] = BOMStreamReadUInt32(v7);
  a2[3] = BOMStreamReadUInt32(v7);
  v12 = *(a2 + 8);
  v13 = *(a1 + 77);
  if (v13 < v12)
  {
    v19 = BOMExceptionHandlerMessage("(tree (%s) page->numKeys(%d) > tree->maxKeys(%d)", a1[1], *(a2 + 8), v13);
    v20 = __error();
    _BOMFatalException(v19, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 1338, *v20);
  }

  if ((*(a1 + 356) & 0x40) != 0)
  {
    *(a2 + 3) = BOMStreamGetDataPointer(v7, (8 * v12) | 4);
  }

  else
  {
    if (*(a2 + 8))
    {
      v14 = 0;
      v15 = 0;
      do
      {
        *(*(a2 + 3) + v14) = BOMStreamReadUInt32(v7);
        *(*(a2 + 3) + v14 + 4) = BOMStreamReadUInt32(v7);
        ++v15;
        v14 += 8;
      }

      while (v15 < *(a2 + 8));
    }

    *(*(a2 + 3) + 8 * *(a2 + 8)) = BOMStreamReadUInt32(v7);
  }

  if ((*(a1 + 89) & 0x44) == 0x40 && (v16 = *(a1 + 87), v16 >= 1))
  {
    DataPointer = BOMStreamGetDataPointer(v7, v16 * *(a2 + 8));
  }

  else
  {
    DataPointer = 0;
  }

  *(a2 + 4) = DataPointer;
  BOMStreamFree(v7);
  return 0;
}

uint64_t BOMStreamReadUInt16(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = BOMExceptionHandlerMessage("%s read called on read-only buffer", "BOMStreamReadUInt16");
    v3 = *__error();
    v4 = v2;
    v5 = 0;
    v6 = 298;
LABEL_5:
    _BOMExceptionHandlerCall(v4, v5, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v6, v3);
    v10 = 0;
    goto LABEL_7;
  }

  v7 = *(a1 + 56);
  v8 = v7 + 1;
  if ((v7 + 1) > *(a1 + 64))
  {
    v9 = BOMExceptionHandlerMessage("%s buffer overflow", "BOMStreamReadUInt16");
    v3 = *__error();
    v4 = v9;
    v5 = 1;
    v6 = 300;
    goto LABEL_5;
  }

  v10 = *v7;
  *(a1 + 56) = v8;
LABEL_7:
  v11 = __rev16(v10);
  if (*(a1 + 4) == 2)
  {
    return v10;
  }

  else
  {
    return v11;
  }
}

unint64_t BOMTreeGetValue(uint64_t a1, void *__s1, size_t a3)
{
  result = 0;
  v18 = 0;
  if (a1 && __s1)
  {
    if (!a3 && (*(a1 + 356) & 4) == 0)
    {
      return 0;
    }

    result = _findPagesForKey(a1, 0, __s1, a3);
    if (!result)
    {
      return result;
    }

    v7 = result;
    IndexForKey = _findIndexForKey(a1, result, __s1, a3, &v18);
    if (!v18)
    {
      return 0;
    }

    v9 = IndexForKey;
    v10 = bswap32(*(*(v7 + 24) + 8 * IndexForKey));
    v11 = (*(a1 + 356) & 0x40) != 0 ? v10 : *(*(v7 + 24) + 8 * IndexForKey);
    result = BOMStorageSizeOfBlock(*a1, v11);
    if (result)
    {
      v12 = result;
      v13 = *(a1 + 320);
      if (v13)
      {
        if (result <= *(a1 + 328))
        {
          goto LABEL_19;
        }

        free(*(a1 + 320));
        *(a1 + 320) = 0;
        v14 = (2 * *(a1 + 328));
        if (v12 <= v14)
        {
          result = v14;
        }

        else
        {
          result = v12;
        }

        *(a1 + 328) = result;
        v15 = 4263778202;
      }

      else
      {
        *(a1 + 328) = result;
        result = result;
        v15 = 1261575674;
      }

      v13 = malloc_type_malloc(result, v15);
      *(a1 + 320) = v13;
LABEL_19:
      v16 = bswap32(*(*(v7 + 24) + 8 * v9));
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = *(*(v7 + 24) + 8 * v9);
      }

      if (!BOMStorageCopyFromBlock(*a1, v17, v13))
      {
        return *(a1 + 320);
      }

      return 0;
    }
  }

  return result;
}

uint64_t BOMTreeStorage(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t BOMTreeIteratorNext(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 57) & 8) == 0)
    {
      if ((*(result + 57) & 1) == 0 && (v2 = *(result + 8)) != 0 && *v2 == *(result + 16) || (result = _revalidateIterator(result), result))
      {
        if (*(v1 + 56))
        {
          v3 = *(v1 + 20) + 1;
          *(v1 + 20) = v3;
          v4 = *(v1 + 8);
          if (v3 >= *(v4 + 16))
          {
            *(v1 + 20) = 0;
            v5 = *(v4 + 8);
            if (!v5 || (*(v1 + 16) = v5, result = _findPage(*v1, v5), (*(v1 + 8) = result) == 0))
            {
              *(v1 + 57) |= 8u;
            }
          }
        }

        else
        {
          *(v1 + 56) = 1;
        }

        v6 = *(v1 + 57) & 0xF9;
      }

      else
      {
        v6 = *(v1 + 57) | 8;
      }

      *(v1 + 57) = v6;
    }
  }

  return result;
}

void BOMTreeIteratorFree(_BYTE *a1)
{
  if (a1)
  {
    v2 = a1[57];
    a1[56] = 0;
    v3 = v2 | 9;
    a1[57] = v3;
    v4 = *(a1 + 3);
    if (v4 && (*(*a1 + 356) & 4) == 0)
    {
      free(v4);
      *(a1 + 3) = 0;
      v3 = a1[57];
    }

    v5 = v3 & 0xFD;
    a1[57] = v5;
    v6 = *(a1 + 5);
    if (v6)
    {
      free(v6);
      *(a1 + 5) = 0;
      v5 = a1[57];
    }

    a1[57] = v5 & 0xFB;
    *(a1 + 4) = -1;
    *(a1 + 1) = 0;
    v7 = *a1;
    v8 = *(*a1 + 296);
    if (v8)
    {
      v9 = BOMCFArrayMaxRange(v8);
      v11 = v10;
      v14.location = v9;
      v14.length = v11;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(v7 + 296), v14, a1);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(*(v7 + 296), FirstIndexOfValue);
        if (!CFArrayGetCount(*(v7 + 296)))
        {
          CFRelease(*(v7 + 296));
          *(v7 + 296) = 0;
        }
      }
    }

    free(a1);
  }
}

_DWORD *CUIBitVectorFromData(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = 4 * v2;
  if (4 * v2 + 4 != a2)
  {
    return 0;
  }

  v5 = malloc_type_malloc(v3 + 8, 0xE343BF1CuLL);
  bzero(v5, v3 + 8);
  __CFSetLastAllocationEventName();
  *v5 = 0;
  v5[1] = v2;
  if (v2)
  {
    v6 = a1 + 1;
    v7 = 2;
    do
    {
      v8 = *v6++;
      v5[v7++] = v8;
      --v2;
    }

    while (v2);
  }

  return v5;
}

BOOL CUIRenditionKeyHasIdentifier(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1 + 12);
  for (i = 0xFFFFFFFFLL; ; --i)
  {
    v5 = *v3++;
    if (v5 == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return i != 0;
}

uint64_t _RegisterThemeProvider(void *a1)
{
  if ([a1 conformsToProtocol:&unk_1F01081B0])
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = ___RegisterThemeProvider_block_invoke;
    v4[3] = &unk_1E7251518;
    v4[4] = a1;
    v4[5] = &v5;
    __PerformBlockWithThemeRegistry(v4);
    [a1 setThemeIndex:v6[3]];
    v2 = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    _CUILog(4, "provider must conform to the CUIStructuredThemeStorage protocol");
    return 0;
  }

  return v2;
}

void sub_18DF4C98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *CUIDefaultThemeRenditionKeyFormat(int a1, unsigned int a2)
{
  switch(a1)
  {
    case 4:
      return "tmfk";
    case 2:
      if (a2 >= 6)
      {
        if (a2 >= 0xB)
        {
          if (a2 == 11)
          {
            return "tmfk";
          }

          else if (a2 >= 0xD)
          {
            if (a2 == 13)
            {
              return "tmfk";
            }

            else if (a2 >= 0xF)
            {
              if (a2 == 15)
              {
                return "tmfk";
              }

              else if (a2 >= 0x11)
              {
                return "tmfk";
              }

              else
              {
                return "tmfk";
              }
            }

            else
            {
              return "tmfk";
            }
          }

          else
          {
            return "tmfk";
          }
        }

        else
        {
          return "tmfk";
        }
      }

      else
      {
        return "tmfk";
      }

    case 1:
      v4 = "tmfk";
      v5 = "tmfk";
      if (a2 < 0xF)
      {
        v5 = "tmfk";
      }

      if (a2 != 13)
      {
        v4 = v5;
      }

      if (a2 >= 0xD)
      {
        return v4;
      }

      else
      {
        return "tmfk";
      }

    default:
      _CUILog(4, "CoreUI: Unable to provide key format for custom theme semantics", v2, v3);
      return 0;
  }
}

uint64_t CUIMaxScaleForTargetPlatform(uint64_t a1)
{
  if ((a1 - 1) >= 2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void *CUIRenditionKeyCopy(void *a1, char *a2, unsigned int a3)
{
  if (!a1 || !a2)
  {
    CUIRenditionKeyCopy_cold_2();
  }

    ;
  }

  if (i >= a3)
  {
    CUIRenditionKeyCopy_cold_1();
  }

  return memmove(a1, a2, 4 * i + 4);
}

uint64_t CUIRenditionKeyTokenCount(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    while (*(a1 + 4 * v1))
    {
      ++v1;
    }
  }

  return v1;
}

uint64_t _CUIColorSpaceGetSRGB(uint64_t a1, uint64_t a2)
{
  if (_CUIColorSpaceGetSRGB___once != -1)
  {
    _CUIColorSpaceGetSRGB_cold_1();
  }

  return _CUIColorSpaceGetSRGB_sSRGBColorSpace;
}

id OUTLINED_FUNCTION_5_0()
{

  return [v0 appendBytes:&STACK[0x258] length:8];
}

id OUTLINED_FUNCTION_5_2()
{

  return [v0 setThemeDisplayGamut:v1];
}

__CFString *OUTLINED_FUNCTION_1_1(uint64_t a1, uint64_t a2)
{

  return CUIPlatformNameForPlatform(a2);
}

id OUTLINED_FUNCTION_1_4()
{

  return [v0 setThemeSizeClassVertical:v1];
}

id OUTLINED_FUNCTION_2_3()
{

  return [v0 setThemeSizeClassHorizontal:v1];
}

void OUTLINED_FUNCTION_6(int a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{

  _Block_object_dispose(a2, 8);
}

id OUTLINED_FUNCTION_6_1()
{
  v3 = *(v1 - 160);

  return [v0 setThemeDirection:v3];
}

uint64_t BOMTreeValueExists(uint64_t a1, void *__s1, size_t a3)
{
  result = 0;
  v7 = 0;
  if (a1 && __s1)
  {
    if (a3 || (*(a1 + 356) & 4) != 0)
    {
      result = _findPagesForKey(a1, 0, __s1, a3);
      if (result)
      {
        _findIndexForKey(a1, result, __s1, a3, &v7);
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int16 *CUIRenditionKeyValueForAttribute(unsigned __int16 *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (result[1])
    {
      v3 = 0;
    }

    else
    {
      v3 = v2 == 0;
    }

    if (v3)
    {
      return 0;
    }

    else
    {
      v4 = 0;
      v5 = result + 3;
      while (v2 != a2)
      {
        ++v4;
        v6 = *v5;
        v2 = *(v5 - 1);
        v5 += 2;
        if (v6)
        {
          v7 = 0;
        }

        else
        {
          v7 = v2 == 0;
        }

        if (v7)
        {
          return 0;
        }
      }

      return result[2 * v4 + 1];
    }
  }

  return result;
}

uint64_t CUIFillCARKeyArrayForRenditionKey2(uint64_t result, int *a2, uint64_t a3, uint64_t *a4)
{
  if (!result || !a2)
  {
    CUIFillCARKeyArrayForRenditionKey2_cold_1();
  }

  v5 = a4;
  v6 = result;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  if (!a4)
  {
    v5 = v13;
    result = CUIRenditionKeyInitializeAttributeIndexWithKeyFormat(v13, a3);
  }

  v7 = *a2;
  if (*a2)
  {
    v10 = *v5;
    v9 = v5 + 1;
    v8 = v10;
    v11 = a2 + 1;
    do
    {
      if ((v8 & (1 << v7)) != 0)
      {
        *(v6 + 2 * *(v9 + v7)) = *(v11 - 1);
      }

      v12 = *v11++;
      LOWORD(v7) = v12;
    }

    while (v12);
  }

  return result;
}

id OUTLINED_FUNCTION_3_0()
{

  return [v0 appendBytes:&STACK[0x258] length:8];
}

id OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return [v16 countByEnumeratingWithState:&a9 objects:va count:{16, a6, a7, a8}];
}

id OUTLINED_FUNCTION_4_3()
{

  return [v0 setThemeIdiom:v1];
}

id OUTLINED_FUNCTION_7_2()
{
  v3 = *(v1 - 120);

  return [v0 setThemeDeploymentTarget:v3];
}

uint64_t __bppFromBlockPixelFormat(uint64_t a1)
{
  if (a1 < 7)
  {
    return dword_18E022150[a1];
  }

  [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"CUIThemeRendition.m", 503, @"CoreUI: %s unknown pixel format %d", "unsigned int __bppFromBlockPixelFormat(enum CSIRenditionBlockPixelFormat)", a1];
  return 0;
}

uint64_t _StreamSys_init_read(unint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (!(a1 | a2) || BomSys_init(&v4, a2))
  {
    return 0xFFFFFFFFLL;
  }

  BomSys_set_read(v4, __StreamSys_read);
  BomSys_set_close(v4, __StreamSys_close);
  result = 0;
  if (a1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t BomSys_init(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v5 = *&off_1F00D6B40;
  v4[4] = xmmword_1F00D6B30;
  v4[5] = v5;
  v6 = *&off_1F00D6B60;
  v4[6] = xmmword_1F00D6B50;
  v4[7] = v6;
  v7 = *&off_1F00D6B00;
  *v4 = gDefaultSys;
  v4[1] = v7;
  v8 = *&off_1F00D6B20;
  v4[2] = xmmword_1F00D6B10;
  v4[3] = v8;
  *(v4 + 1) = a2;
  *a1 = v4;
  __CFSetLastAllocationEventName();
  return 0;
}

void BomSys_set_close(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", "void BomSys_set_close(BomSys *, BomSys_close_call)");
  }

  else if (a2)
  {
    *(a1 + 3) = a2;
  }

  else
  {
    *(a1 + 3) = BomSys_close;
  }
}

uint64_t BOMFileNewFromFDWithSys(void *a1, uint64_t a2, char a3, unsigned __int8 *a4, __int128 *a5)
{
  v10 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1032040657EF821uLL);
  __CFSetLastAllocationEventName();
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  if (a5)
  {
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  a5 = BomSys_default();
  if ((a3 & 0x10) != 0)
  {
LABEL_4:
    (*(a5 + 4))(*(a5 + 1), a2, 48, 1);
  }

LABEL_5:
  *v10 = *a4 == 119;
  v10[2] = a2;
  if (_BOMFileInit(v10, a3 & 0xF, a5))
  {
LABEL_6:
    v11 = v10;
LABEL_7:
    _freeBOMFile(v11);
    return 0xFFFFFFFFLL;
  }

  if ((a3 & 0x20) != 0)
  {
    if (getenv("BOM_ASYNC_DEBUG"))
    {
      gBOMAsyncDebug = 1;
    }

    else if (gBOMAsyncDebug != 1)
    {
LABEL_17:
      v13 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1032040657EF821uLL);
      __CFSetLastAllocationEventName();
      if (!v13)
      {
        goto LABEL_6;
      }

      if (*v10 == 1)
      {
        v14 = 5;
      }

      else
      {
        v14 = 4;
      }

      *v13 = v14;
      v13[1] = v10;
      if (_BOMFileInit(v13, 0, a5))
      {
        v11 = v13;
        goto LABEL_7;
      }

      v10 = v13;
      goto LABEL_12;
    }

    fprintf(__stderrp, "async compression enabled for %d\n", a2);
    goto LABEL_17;
  }

LABEL_12:
  result = 0;
  *a1 = v10;
  return result;
}

uint64_t _BOMFileInit(uint64_t a1, int a2, __int128 *a3)
{
  if (!a3)
  {
    a3 = BomSys_default();
  }

  *(a1 + 240) = a3;
  if (a2 == 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  if (a2 == 5)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  v7 = a2 == 1;
  if (a2 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  v9 = v7;
  *(a1 + 24) = v8;
  v10 = *a1;
  result = 0xFFFFFFFFLL;
  if (*a1 > 2)
  {
    switch(v10)
    {
      case 5:
        if (gBufferPoolOnce != -1)
        {
          _BOMFileInit_cold_2();
        }

        v16 = BOMBufferAllocate(gBOMAsyncBufferSize);
        if (!v16)
        {
          return 0xFFFFFFFFLL;
        }

        BOMBufferPoolAddBuffer(gBufferPool, v16);
        *(a1 + 88) = BOMBufferFIFOCreate();
        *(a1 + 96) = 0;
        *(a1 + 224) = 0;
        if (pthread_mutex_init((a1 + 160), 0) || pthread_cond_init((a1 + 112), 0))
        {
          return 1;
        }

        v17 = _asyncWriteThread;
        break;
      case 4:
        if (gBufferPoolOnce != -1)
        {
          _BOMFileInit_cold_1();
        }

        v18 = BOMBufferAllocate(gBOMAsyncBufferSize);
        if (!v18)
        {
          return 0xFFFFFFFFLL;
        }

        BOMBufferPoolAddBuffer(gBufferPool, v18);
        *(a1 + 88) = BOMBufferFIFOCreate();
        *(a1 + 96) = 0;
        *(a1 + 224) = 0;
        if (pthread_mutex_init((a1 + 160), 0) || pthread_cond_init((a1 + 112), 0))
        {
          return 1;
        }

        v17 = _asyncReadThread;
        break;
      case 3:
        goto LABEL_26;
      default:
        return result;
    }

    return pthread_create((a1 + 104), 0, v17, a1) != 0;
  }

  if ((v10 - 1) >= 2)
  {
    if (v10)
    {
      return result;
    }

LABEL_26:
    if (v9)
    {
      *&__src[7] = 0;
      *__src = 0;
      Raw = _BOMFileReadRaw(a1, __src, 11);
      if (Raw == -1)
      {
        return 0xFFFFFFFFLL;
      }

      v8 = *(a1 + 24) == 1 && __src[0] == 31 && __src[1] == 139 && __src[2] == 8;
      *(a1 + 24) = v8;
      *(a1 + 64) = Raw;
      *(a1 + 72) = 1;
      memcpy((a1 + 76), __src, Raw);
    }

    if ((v8 - 3) < 2)
    {
      return _BOMFileCompressionLibrary_Setup(a1, 0);
    }

    if (v8)
    {
      return _BOMFileSetupGzip(a1, 0);
    }

    return 0;
  }

  if ((v8 - 3) >= 2)
  {
    if (!v8)
    {
      return 0;
    }

    *&__src[7] = 196608;
    *__src = 559903;
    if (!_BOMFileSetupGzip(a1, 1) && _BOMFileWriteRaw(a1, __src, 10) > 9)
    {
      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return _BOMFileCompressionLibrary_Setup(a1, 1);
}

uint64_t _BOMFileCompressionLibrary_Setup(uint64_t a1, int a2)
{
  if (!*(a1 + 32))
  {
    v4 = malloc_type_malloc(0x28uLL, 0x10D00405C4BD7A1uLL);
    *(a1 + 32) = v4;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!*(a1 + 40))
  {
    v5 = malloc_type_malloc(0x20000uLL, 0x57B472E8uLL);
    *(a1 + 40) = v5;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(a1 + 24);
  switch(v6)
  {
    case 1:
      v7 = COMPRESSION_ZLIB;
      break;
    case 4:
      v7 = COMPRESSION_LZFSE;
      break;
    case 3:
      v7 = 2304;
      break;
    default:
      return 0xFFFFFFFFLL;
  }

  if (compression_stream_init(*(a1 + 32), (a2 == 0), v7))
  {
LABEL_12:
    free(*(a1 + 32));
    *(a1 + 32) = 0;
    return 0xFFFFFFFFLL;
  }

  v9 = crc32(0, 0, 0);
  result = 0;
  *(a1 + 48) = v9;
  *(a1 + 56) = 0;
  return result;
}

uint64_t BOMFileClose(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  if ((*a1 - 1) <= 1)
  {
    v3 = *(a1 + 24);
    if ((v3 - 3) >= 2)
    {
      if (v3 == 1)
      {
        v6 = *(a1 + 32);
        if (v6->avail_out)
        {
          goto LABEL_11;
        }

        v7 = 1;
        for (i = 0x20000; ; i = 0x20000 - avail_out)
        {
          v13 = *(a1 + 40);
          while (i)
          {
            v14 = _BOMFileWriteRaw(a1, v13, i);
            i -= v14;
            v13 += v14;
            if (v14 == -1)
            {
              return 0xFFFFFFFFLL;
            }
          }

          v6->next_out = *(a1 + 40);
          v6->avail_out = 0x20000;
          if (!v7)
          {
            break;
          }

LABEL_11:
          v11 = deflate(v6, 4);
          if (v11)
          {
            if (v11 != 1)
            {
              return 0xFFFFFFFFLL;
            }

            v7 = 0;
            avail_out = v6->avail_out;
          }

          else
          {
            avail_out = v6->avail_out;
            v7 = avail_out == 0;
          }
        }

        v15 = 0;
        v16 = *(a1 + 48);
        *(a1 + 48) = v16;
        *buffer = v16;
        while (v15 != 4)
        {
          v17 = _BOMFileWriteRaw(a1, buffer, 4 - v15);
          v15 += v17;
          if (v17 < 0)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v18 = 0;
        total_in = v6->total_in;
        v6->total_in = total_in;
        *v38 = total_in;
        while (v18 != 4)
        {
          v20 = _BOMFileWriteRaw(a1, v38, 4 - v18);
          v18 += v20;
          if (v20 < 0)
          {
            return 0xFFFFFFFFLL;
          }
        }

        deflateEnd(v6);
      }
    }

    else
    {
      v4 = *(a1 + 32);
      if (v4->dst_size)
      {
        goto LABEL_30;
      }

      v5 = 1;
      while (1)
      {
        v22 = 0x20000 - v4->dst_size;
        v23 = *(a1 + 40);
        while (v22)
        {
          v24 = _BOMFileWriteRaw(a1, v23, v22);
          v22 -= v24;
          v23 += v24;
          if (v24 == -1)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v4->dst_ptr = *(a1 + 40);
        v4->dst_size = 0x20000;
        if ((v5 & 1) == 0)
        {
          break;
        }

LABEL_30:
        v5 = 1;
        v21 = compression_stream_process(v4, 1);
        if (v21 == 1)
        {
          v5 = 0;
        }

        else
        {
          v9 = v21;
          if (v21 == -1)
          {
            return v9;
          }
        }
      }

      compression_stream_destroy(v4);
    }

    v2 = *a1;
  }

  if (v2 == 3 || v2 == 0)
  {
    v26 = *(a1 + 24);
    if ((v26 - 3) >= 2)
    {
      if (v26 == 1)
      {
        v28 = *(a1 + 32);
        v27 = *(a1 + 40);
        v29 = *(v28 + 8);
        *(a1 + 64) = v29;
        *(a1 + 72) = 0;
        memmove(v27, *v28, v29);
        if (inflateEnd(*(a1 + 32)))
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    else
    {
      compression_stream_destroy(*(a1 + 32));
    }
  }

  v30 = *a1;
  if ((*a1 & 0xFFFFFFFE) != 4)
  {
    goto LABEL_93;
  }

  if (v30 == 5)
  {
    v31 = *(a1 + 96);
    if (v31)
    {
      *(a1 + 96) = 0;
    }

    else
    {
      v31 = BOMBufferPoolRequestBuffer(gBufferPool);
      v31[1] = 0;
      v31[2] = 0;
    }

    *(v31 + 12) |= 1u;
    BOMBufferFIFOEnqueue(*(a1 + 88), v31);
    if (!pthread_mutex_lock((a1 + 160)))
    {
      v35 = *(a1 + 224);
      if (!v35)
      {
        v35 = 1;
        *(a1 + 224) = 1;
      }

      if (gBOMAsyncDebug != 1)
      {
        goto LABEL_70;
      }

      fwrite("waiting for async write thread to finish...", 0x2BuLL, 1uLL, __stderrp);
      while (1)
      {
        v35 = *(a1 + 224);
LABEL_70:
        if (v35 == 2)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 112), (a1 + 160)))
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (!pthread_mutex_unlock((a1 + 160)) && !pthread_join(*(a1 + 104), 0))
      {
        if (gBOMAsyncDebug == 1)
        {
          fwrite("async write thread terminated. Draining FIFO...", 0x2FuLL, 1uLL, __stderrp);
        }

        while (BOMBufferFIFOCount(*(a1 + 88)))
        {
          v36 = BOMBufferFIFODequeue(*(a1 + 88));
          BOMBufferPoolReturnBuffer(gBufferPool, v36);
        }

        if ((gBOMAsyncDebug & 1) == 0)
        {
          goto LABEL_92;
        }

LABEL_91:
        fwrite("done\n", 5uLL, 1uLL, __stderrp);
LABEL_92:
        v30 = *a1;
LABEL_93:
        v9 = 0;
        if (v30 > 2)
        {
          if ((v30 - 4) < 2)
          {
            v9 = BOMFileClose(*(a1 + 8));
LABEL_103:
            *(a1 + 8) = 0;
            goto LABEL_104;
          }

          if (v30 != 3)
          {
            goto LABEL_104;
          }

          CFReadStreamClose(*(a1 + 8));
        }

        else
        {
          if (v30 < 2)
          {
            v9 = (*(*(a1 + 240) + 24))(*(*(a1 + 240) + 8), *(a1 + 8));
            *(a1 + 8) = -1;
LABEL_104:
            _freeBOMFile(a1);
            return v9;
          }

          if (v30 != 2)
          {
            goto LABEL_104;
          }

          CFWriteStreamClose(*(a1 + 8));
        }

        v9 = 0;
        goto LABEL_103;
      }
    }
  }

  else if (!pthread_mutex_lock((a1 + 160)))
  {
    v32 = *(a1 + 96);
    if (v32)
    {
      BOMBufferPoolReturnBuffer(gBufferPool, v32);
      *(a1 + 96) = 0;
    }

    while (BOMBufferFIFOCount(*(a1 + 88)))
    {
      v33 = BOMBufferFIFODequeue(*(a1 + 88));
      BOMBufferPoolReturnBuffer(gBufferPool, v33);
    }

    v34 = *(a1 + 224);
    if (!v34)
    {
      v34 = 1;
      *(a1 + 224) = 1;
    }

    if (gBOMAsyncDebug != 1)
    {
      goto LABEL_82;
    }

    fwrite("waiting for async read thread to finish...", 0x2AuLL, 1uLL, __stderrp);
    while (1)
    {
      v34 = *(a1 + 224);
LABEL_82:
      if (v34 == 2)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 112), (a1 + 160)))
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (!pthread_mutex_unlock((a1 + 160)) && !pthread_join(*(a1 + 104), 0))
    {
      while (BOMBufferFIFOCount(*(a1 + 88)))
      {
        v37 = BOMBufferFIFODequeue(*(a1 + 88));
        BOMBufferPoolReturnBuffer(gBufferPool, v37);
      }

      if (gBOMAsyncDebug != 1)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }
  }

  return 0xFFFFFFFFLL;
}

void BomSys_free(void *a1)
{
  if (a1 != &gDefaultNOMMAPSys && a1 != 0 && a1 != &gDefaultSys)
  {
    free(a1);
  }
}

void BomSys_set_read(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", "void BomSys_set_read(BomSys *, BomSys_read_call)");
  }

  else if (a2)
  {
    *(a1 + 5) = a2;
  }

  else
  {
    *(a1 + 5) = BomSys_read;
  }
}

uint64_t _BOMFileNewFromCFReadStreamSys(void *a1, __int128 *a2, char a3)
{
  if (BOMFileNewFromFDWithSys(a1, 0, a3, "r", a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

size_t BOMFileRead(int *a1, UInt8 *buffer, unint64_t bufferLength)
{
  if (!a1)
  {
    return -1;
  }

  v3 = bufferLength;
  v4 = buffer;
  v6 = *a1;
  if (!*a1)
  {
LABEL_5:
    if (!bufferLength)
    {
      return 0;
    }

    if (!buffer)
    {
      return -1;
    }

    v7 = a1[6];
    if ((v7 - 3) < 2)
    {
      v20 = *(a1 + 4);
      v20->dst_ptr = buffer;
      v20->dst_size = bufferLength;
      while (1)
      {
        v21 = *(a1 + 56);
        if (v20->src_size)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21 == 0;
        }

        if (v22)
        {
          Raw = _BOMFileReadRaw(a1, *(a1 + 5), 0x20000);
          if (Raw)
          {
            if (Raw == -1)
            {
              goto LABEL_56;
            }

            v20->src_ptr = *(a1 + 5);
            v20->src_size = Raw;
            v21 = *(a1 + 56);
          }

          else
          {
            v21 = 1;
            *(a1 + 56) = 1;
          }
        }

        v24 = compression_stream_process(v20, v21 != 0);
        if (v24 == COMPRESSION_STATUS_END)
        {
          break;
        }

        if (v24 == COMPRESSION_STATUS_ERROR)
        {
LABEL_56:
          *(a1 + 56) = 1;
          return -1;
        }

        dst_size = v20->dst_size;
        if (!dst_size)
        {
          return v3 - dst_size;
        }
      }

      dst_size = v20->dst_size;
    }

    else
    {
      if (!v7)
      {
        v25 = *(a1 + 8);
        if (v25)
        {
          if (a1[18])
          {
            v26 = a1 + 19;
          }

          else
          {
            v26 = *(a1 + 5);
          }

          if (v25 >= bufferLength)
          {
            v28 = bufferLength;
          }

          else
          {
            v28 = *(a1 + 8);
          }

          memcpy(buffer, v26, v28);
          v29 = *(a1 + 8);
          v3 -= v28;
          a1[59] -= v28;
          v4 += v28;
          *(a1 + 8) = v29 - v28;
          if (v29 != v28)
          {
            memmove(v26, v26 + v28, v29 - v28);
          }
        }

        else
        {
          v28 = 0;
        }

        v30 = _BOMFileReadRaw(a1, v4, v3);
        v10 = v30;
        if (v30 != -1)
        {
          if (!v30)
          {
            *(a1 + 56) = 1;
          }

          return v30 + v28;
        }

        return v10;
      }

      if (v7 != 1)
      {
        return -1;
      }

      v8 = *(a1 + 4);
      v8->next_out = buffer;
      v8->avail_out = bufferLength;
      while (1)
      {
        if (!v8->avail_in && !*(a1 + 56))
        {
          v9 = _BOMFileReadRaw(a1, *(a1 + 5), 0x20000);
          v10 = v9;
          if (v9)
          {
            if (v9 == -1)
            {
              return v10;
            }
          }

          else
          {
            *(a1 + 56) = 1;
          }

          a1[59] = v9;
          v8->avail_in = v9;
          v8->next_in = *(a1 + 5);
        }

        v11 = inflate(v8, 0);
        if (v11)
        {
          if (v11 != 1)
          {
            goto LABEL_56;
          }

          *(a1 + 56) = 1;
        }

        dst_size = v8->avail_out;
        if (dst_size != v3)
        {
          break;
        }

        if (*(a1 + 56))
        {
          dst_size = v3;
          return v3 - dst_size;
        }
      }
    }

    return v3 - dst_size;
  }

  if (v6 != 4)
  {
    if (v6 != 3)
    {
      return -1;
    }

    goto LABEL_5;
  }

  v10 = 0;
  if (!bufferLength)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v13 = *(a1 + 12);
    if (!v13)
    {
      v13 = BOMBufferFIFODequeue(*(a1 + 11));
      *(a1 + 12) = v13;
    }

    v14 = v13[1];
    if (v3 >= v13[2] - v14)
    {
      v15 = v13[2] - v14;
    }

    else
    {
      v15 = v3;
    }

    memcpy(v4, (v13[3] + v14), v15);
    v16 = v13[2];
    v17 = v13[1] + v15;
    v13[1] = v17;
    v10 += v15;
    if (v16 != v17)
    {
      goto LABEL_36;
    }

    if (!v17)
    {
      if (pthread_mutex_lock((a1 + 40)))
      {
        goto LABEL_37;
      }

      v19 = a1[56];
      v18 = a1[57];
      if (pthread_mutex_unlock((a1 + 40)))
      {
        goto LABEL_37;
      }

      if ((v19 - 1) <= 1)
      {
        break;
      }
    }

    BOMBufferPoolReturnBuffer(gBufferPool, v13);
    *(a1 + 12) = 0;
LABEL_36:
    v4 += v15;
    v3 -= v15;
    if (!v3)
    {
      goto LABEL_37;
    }
  }

  if (v18)
  {
    *__error() = v18;
    return -1;
  }

LABEL_37:
  *(a1 + 2) += v10;
  return v10;
}

uint64_t _BOMFileReadRaw(uint64_t a1, UInt8 *buffer, CFIndex bufferLength)
{
  v6 = 0;
  do
  {
    if (*a1 == 3)
    {
      v7 = CFReadStreamRead(*(a1 + 8), buffer, bufferLength);
    }

    else if (*a1)
    {
      v7 = -1;
    }

    else
    {
      v7 = (*(*(a1 + 240) + 40))(*(*(a1 + 240) + 8), *(a1 + 8), buffer, bufferLength);
    }

    v8 = v7 & ~(v7 >> 63);
    v6 += v8;
    if (v7 < 1)
    {
      break;
    }

    buffer += v8;
    bufferLength -= v8;
  }

  while (bufferLength);
  *(a1 + 16) += v6;
  if (v7 < 0)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

void _freeBOMFile(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    free(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    free(v3);
    a1[5] = 0;
  }

  v4 = a1[11];
  if (v4)
  {
    BOMBufferFIFODestroy(v4);
  }

  free(a1);
}

uint64_t BOMTreeIteratorValue(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 57);
    if ((v2 & 8) != 0)
    {
      return 0;
    }

    if ((*(result + 57) & 1) == 0 && (v3 = *(result + 8)) != 0 && *v3 == *(result + 16) || (v4 = _revalidateIterator(result), v2 = *(v1 + 57), v4))
    {
      if ((v2 & 4) == 0)
      {
        v5 = bswap32(*(*(*(v1 + 8) + 24) + 8 * *(v1 + 20)));
        if ((*(*v1 + 356) & 0x40) != 0)
        {
          v6 = v5;
        }

        else
        {
          v6 = *(*(*(v1 + 8) + 24) + 8 * *(v1 + 20));
        }

        v7 = BOMStorageSizeOfBlock(**v1, v6);
        v8 = *(v1 + 48);
        if (v7 > v8)
        {
          v9 = v7;
          v10 = *(v1 + 40);
          if (v10)
          {
            free(v10);
            *(v1 + 40) = 0;
            v8 = *(v1 + 48);
          }

          if (v9 <= 2 * v8)
          {
            v11 = 2 * v8;
          }

          else
          {
            v11 = v9;
          }

          *(v1 + 48) = v11;
          *(v1 + 40) = malloc_type_malloc(v11, 0x6CF44FC8uLL);
        }

        v12 = bswap32(*(*(*(v1 + 8) + 24) + 8 * *(v1 + 20)));
        if ((*(*v1 + 356) & 0x40) != 0)
        {
          v13 = v12;
        }

        else
        {
          v13 = *(*(*(v1 + 8) + 24) + 8 * *(v1 + 20));
        }

        if (BOMStorageCopyFromBlock(**v1, v13, *(v1 + 40)))
        {
          return 0;
        }

        *(v1 + 57) |= 4u;
      }

      return *(v1 + 40);
    }

    else
    {
      result = 0;
      *(v1 + 57) = v2 | 8;
    }
  }

  return result;
}

uint64_t BOMTreeIteratorKeySize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 57) & 8) != 0)
    {
      return 0;
    }

    if (((*(result + 57) & 1) != 0 || (v2 = *(result + 8)) == 0 || *v2 != *(result + 16)) && !_revalidateIterator(result))
    {
      result = 0;
      *(v1 + 57) |= 8u;
      return result;
    }

    v3 = *v1;
    v4 = *(*v1 + 356);
    if ((v4 & 4) != 0)
    {
      return 0;
    }

    if ((v4 & 0x40) != 0)
    {
      result = *(v3 + 348);
      if (result >= 1)
      {
        return result;
      }

      v5 = bswap32(*(*(*(v1 + 8) + 24) + 8 * *(v1 + 20) + 4));
    }

    else
    {
      v5 = *(*(*(v1 + 8) + 24) + 8 * *(v1 + 20) + 4);
    }

    v6 = *v3;

    return BOMStorageSizeOfBlock(v6, v5);
  }

  return result;
}

uint64_t CUIBitVectorIsBitSet(os_unfair_lock_s *a1, unsigned int a2)
{
  os_unfair_lock_lock(a1);
  if (a2 >> 5 >= a1[1]._os_unfair_lock_opaque)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = (a1[(a2 >> 5) + 2]._os_unfair_lock_opaque >> a2) & 1;
  }

  os_unfair_lock_unlock(a1);
  return v4;
}

uint64_t CUIBitVectorNumberOfBitsSetInBucket(uint64_t a1, unsigned int a2)
{
  v2 = vcnt_s8(*(a1 + 4 * (a2 >> 5) + 8));
  v2.i16[0] = vaddlv_u8(v2);
  return v2.u32[0];
}

int8x16_t _extractMetrics(uint64_t a1, uint64_t a2, double *a3, double *a4, double *a5, int8x16_t *a6, void *a7, double *a8, int8x16_t *a9, double *a10, int8x16_t *a11)
{
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        if (a4)
        {
          v11 = *(a1 + 12);
          v12 = HIDWORD(*(a1 + 4));
          v13 = vadd_s32(v11, *(a1 + 4));
          v14 = *(a1 + 20);
          *a3 = *(a1 + 4);
          a3[1] = v11.i32[1];
          *a4 = v11.i32[0];
          a4[1] = v12;
          v15 = vadd_s32(v13, v14);
          v16.i64[0] = v15.i32[0];
          v16.i64[1] = v15.i32[1];
          result = vcvtq_f64_s64(v16);
          *a2 = result;
          if (a6)
          {
            if (a5)
            {
              v18 = *a1;
              if (*a1 >= 2u)
              {
                v19 = *(a1 + 40);
                *a5 = *(a1 + 28);
                a5[1] = v19;
                v20 = *(a1 + 32);
                v21.i64[0] = v20;
                v21.i64[1] = SHIDWORD(v20);
                v22 = vcvtq_f64_s64(v21);
                result = vextq_s8(v22, v22, 8uLL);
                *a6 = result;
                if (a7)
                {
                  if (v18 >= 3)
                  {
                    *result.i64 = *(a2 + 8) - *(a1 + 56);
                    *a7 = result.i64[0];
                    if (a9)
                    {
                      if (a8)
                      {
                        if (v18 >= 4)
                        {
                          v23 = *(a1 + 88);
                          *a8 = *(a1 + 76);
                          a8[1] = v23;
                          v24 = *(a1 + 80);
                          v25.i64[0] = v24;
                          v25.i64[1] = SHIDWORD(v24);
                          v26 = vcvtq_f64_s64(v25);
                          result = vextq_s8(v26, v26, 8uLL);
                          *a9 = result;
                          if (a11)
                          {
                            if (a10)
                            {
                              if (v18 >= 5)
                              {
                                v27 = *(a1 + 112);
                                *a10 = *(a1 + 100);
                                a10[1] = v27;
                                v28 = *(a1 + 104);
                                v29.i64[0] = v28;
                                v29.i64[1] = SHIDWORD(v28);
                                v30 = vcvtq_f64_s64(v29);
                                result = vextq_s8(v30, v30, 8uLL);
                                *a11 = result;
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

unsigned __int16 *CUIRenditionKeySetValueForAttribute(unsigned __int16 *result, int a2, int a3, unsigned int a4)
{
  if (result)
  {
    if (!a4)
    {
      CUIRenditionKeySetValueForAttribute_cold_3();
    }

    v4 = *result;
    if (result[1] | v4)
    {
      LODWORD(v5) = 0;
      v6 = result + 3;
      while (v4 != a2)
      {
        LODWORD(v5) = v5 + 1;
        v7 = *v6;
        v4 = *(v6 - 1);
        v6 += 2;
        if (v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = v4 == 0;
        }

        if (v8)
        {
          goto LABEL_11;
        }
      }

      if (a3)
      {
        result[2 * v5 + 1] = a3;
      }

      else
      {
        v11 = 0;
        if (result[1])
        {
          goto LABEL_22;
        }

        while (1)
        {
          v12 = v11;
          if (!result[2 * v11])
          {
            break;
          }

          do
          {
LABEL_22:
            ++v11;
          }

          while (result[2 * v11 + 1]);
        }

        if (a4 <= v11)
        {
          CUIRenditionKeySetValueForAttribute_cold_1();
        }

        if (v11 > v5)
        {
          v5 = v5;
          v13 = &result[2 * v5 + 2];
          do
          {
            *(v13 - 1) = *v13;
            ++v5;
            v13 += 2;
          }

          while (v5 < v12);
        }
      }
    }

    else
    {
LABEL_11:
      if (a3)
      {
        v9 = 0;
        if (result[1])
        {
          goto LABEL_14;
        }

        while (result[2 * v9])
        {
          do
          {
LABEL_14:
            ++v9;
          }

          while (result[2 * v9 + 1]);
        }

        if ((a4 - 1) <= v9)
        {
          CUIRenditionKeySetValueForAttribute_cold_2();
        }

        v10 = &result[2 * v9];
        *v10 = a2;
        v10[1] = a3;
        *(v10 + 1) = 0;
      }
    }
  }

  return result;
}

unsigned __int16 *_CUIRenditionKeySetIntegerValueForAttribute(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 16)
  {
    _CUIRenditionKeySetIntegerValueForAttribute_cold_1(a2, a3);
  }

  return CUIRenditionKeySetValueForAttribute(a1, a2, a3, 0x16u);
}

void CUIUpdateImageProviderForATECompressedData(int a1, _DWORD *a2, int *a3, _DWORD *a4)
{
  if (a1 <= 1195456543)
  {
    if (a1 != 1095911234)
    {
      if (a1 != 1195454774)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a1 == 1195456544)
  {
LABEL_8:
    *a2 = 8;
    v4 = 2;
    goto LABEL_9;
  }

  if (a1 == 1380401751)
  {
LABEL_7:
    *a2 = 8;
    v4 = 4;
LABEL_9:
    *a3 = v4;
    *a4 = 1;
    return;
  }

LABEL_10:
  _CUILog(4, "CoreUI: %s got a pixelFormat that it doesn't understand", "void CUIUpdateImageProviderForATECompressedData(enum CSIPixelFormat, u_int32_t *, u_int32_t *, CGImageComponentType *)");
}

uint64_t _CUIColorSpaceGetDisplayP3(uint64_t a1, uint64_t a2)
{
  if (_CUIColorSpaceGetDisplayP3___once != -1)
  {
    _CUIColorSpaceGetDisplayP3_cold_1();
  }

  return _CUIColorSpaceGetDisplayP3_sDisplayP3ColorSpace;
}

uint64_t CUIPlatformForPlatformString(void *a1)
{
  if ([a1 isEqualToString:kCUIPlatformMac[0]] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"osx"))
  {
    return 0;
  }

  if ([a1 isEqualToString:kCUIPlatformMaciOS])
  {
    return 2;
  }

  if ([a1 isEqualToString:kCUIPlatformiOS] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"iphoneos"))
  {
    return 1;
  }

  if ([a1 isEqualToString:kCUIPlatformAppleTV])
  {
    return 3;
  }

  if ([a1 isEqualToString:kCUIPlatformWatch])
  {
    return 4;
  }

  if ([a1 isEqualToString:kCUIPlatformVision])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"xros"])
  {
    return 5;
  }

  return -1;
}

uint64_t CUIValidateIdiomSubtypes(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = 1;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if ((a1 - 6) >= 2)
      {
        if (a1 != 8)
        {
          return result;
        }

        if (v3 == 3648)
        {
          v5 = 3648;
          goto LABEL_58;
        }
      }

LABEL_57:
      v5 = 0;
      *a2 = 0;
LABEL_58:
      if (v5 != v3)
      {
        _CUILog(4, "CoreUI: %s passed a device subtype '%d' and idiom '%d':%s that are not a matching pair, subtype is not valid with given idiom. Assuming subtype should be 0 instead.", "_Bool CUIValidateIdiomSubtypes(NSInteger, NSUInteger *)", v3, a1, gThemeIdioms[3 * a1 + 2]);
        return 0;
      }

      return result;
    }

    if (a1 == 4)
    {
      goto LABEL_57;
    }

    if (v3 <= 483)
    {
      if (((v3 - 384) > 0x3E || ((1 << (v3 + 0x80)) & 0x4000400000000041) == 0) && v3 != 320 && v3 != 340)
      {
        goto LABEL_57;
      }

      return result;
    }

    if ((v3 - 484) > 0x1E)
    {
      goto LABEL_57;
    }

    v6 = 1 << (v3 + 28);
    v7 = 1074008065;
LABEL_42:
    if ((v6 & v7) != 0)
    {
      return result;
    }

    goto LABEL_57;
  }

  if ((a1 - 1) < 2)
  {
    if (v3 <= 2435)
    {
      if (v3 > 2223)
      {
        if (v3 <= 2339)
        {
          if (v3 != 2224 && v3 != 2266)
          {
            goto LABEL_57;
          }
        }

        else if (((v3 - 2340) > 0x30 || ((1 << (v3 - 36)) & 0x1000000100001) == 0) && v3 != 2420)
        {
          goto LABEL_57;
        }
      }

      else if (v3 > 1791)
      {
        if (v3 != 1792 && v3 != 2160)
        {
          goto LABEL_57;
        }
      }

      else if ((v3 - 568) >= 3 && v3 != 163)
      {
        goto LABEL_57;
      }
    }

    else if (v3 > 2751)
    {
      if (v3 <= 2867)
      {
        if ((v3 - 2752) > 0x2C)
        {
          goto LABEL_57;
        }

        v6 = 1 << (v3 + 64);
        v7 = 0x100004000001;
        goto LABEL_42;
      }

      if (v3 != 2868 && v3 != 3024 && v3 != 32401)
      {
        goto LABEL_57;
      }
    }

    else if (v3 <= 2621)
    {
      if (v3 != 2436 && v3 != 2532 && v3 != 2556)
      {
        goto LABEL_57;
      }
    }

    else if (((v3 - 2688) > 0x30 || ((1 << (v3 + 0x80)) & 0x1100000000001) == 0) && v3 != 2622)
    {
      goto LABEL_57;
    }
  }

  else if (!a1 || a1 == 3 && v3 != 720 && v3 != 3840)
  {
    goto LABEL_57;
  }

  return result;
}

id __PerformBlockWithThemeRefCache_block_invoke()
{
  result = objc_alloc_init(NSMutableDictionary);
  PerformBlockWithThemeRefCache___themeRefsByUniqueKey = result;
  return result;
}

void __RunTimeThemeRefForBundleIdentifierAndName_block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKey:*(a1 + 32)];
  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 24) = [v4 unsignedIntegerValue];
    return;
  }

  if ([*(a1 + 40) hasPrefix:kCUIMutableStructureThemeStoreBundlePrefix])
  {
    v5 = [[CUIMutableStructuredThemeStore alloc] initWithIdentifier:*(a1 + 32)];
  }

  else
  {
    v6 = [NSBundle bundleWithIdentifier:*(a1 + 40)];
    v7 = [(NSBundle *)v6 pathForResource:*(a1 + 48) ofType:@"car" inDirectory:0];
    if (!v7)
    {
      *(*(*(a1 + 64) + 8) + 40) = [[NSString alloc] initWithFormat:@"RunTimeThemeRefForBundleIdentifierAndName() couldn't find %@.car in bundle with identifier: %@", *(a1 + 48), *(a1 + 40)];
      return;
    }

    v8 = v7;
    v5 = [[CUIStructuredThemeStore alloc] initWithPath:v7];
    [(CUIStructuredThemeStore *)v5 setBundleID:*(a1 + 40)];
    [(CUIStructuredThemeStore *)v5 setMainBundle:v6 == +[NSBundle mainBundle]];
    if (!v5)
    {
      *(*(*(a1 + 64) + 8) + 40) = [[NSString alloc] initWithFormat:@"RunTimeThemeRefForBundleIdentifierAndName() failed to initialize CUIStructuredThemeStore at path: %@ in bundle: %@", v8, *(a1 + 40)];
      _CUILog(4, "CoreUI: RunTimeThemeRefForBundleIdentifierAndName() failed to initialize CUIStructuredThemeStore at path: '%@' in bundle '%@'", v8, *(a1 + 40));
      return;
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = _RegisterThemeProvider(v5);

  v9 = [NSNumber numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
  v10 = *(a1 + 32);

  [a2 setObject:v9 forKey:v10];
}

void CUIBitVectorDestroy(os_unfair_lock_s *a1)
{
  if (a1)
  {
    os_unfair_lock_lock(a1);

    free(a1);
  }
}

unsigned int *BOMStorageOpenWithSys(const char *a1, int a2, __int128 *a3)
{
  v3 = a3;
  if (!a3)
  {
    v3 = BomSys_default();
  }

  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  memset(v69, 0, sizeof(v69));
  v6 = (*(v3 + 2))(*(v3 + 1), a1, 2 * (a2 != 0), 420);
  if (v6 != -1)
  {
    v7 = v6;
    if ((*(v3 + 9))(*(v3 + 1), v6, v69) != -1)
    {
      v8 = BOMStreamWithFileAndSys(v7, 0, 0x200uLL, 0, 0, v3);
      if (!v8)
      {
        v32 = __error();
        v33 = strerror(*v32);
        v34 = BOMExceptionHandlerMessage("can't read from: '%s' %s", a1, v33);
        v18 = *__error();
        v19 = v34;
        v20 = 287;
        goto LABEL_18;
      }

      v9 = v8;
      if (BOMStreamReadUInt32(v8) == 1112493395 && BOMStreamReadUInt32(v9) == 1953460837)
      {
        UInt32 = BOMStreamReadUInt32(v9);
        if (UInt32 == 1)
        {
          v11 = malloc_type_calloc(1uLL, 0x470uLL, 0x10A0040835A29DFuLL);
          if (!v11)
          {
            v37 = __error();
            v38 = strerror(*v37);
            v39 = BOMExceptionHandlerMessage("calloc: %s", v38);
            v40 = __error();
            _BOMExceptionHandlerCall(v39, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 318, *v40);
            BOMStreamFree(v9);
            (*(v3 + 3))(*(v3 + 1), v7);
            return v11;
          }

          __CFSetLastAllocationEventName();
          *(v11 + 140) = v3;
          v11[257] = v7;
          v12 = v70;
          v11[258] = v70;
          v11[259] = v12;
          v11[263] = v11[263] & 0xFFFFFFF6 | a2 & 1;
          v11[264] = BOMStreamReadUInt32(v9);
          v11[265] = BOMStreamReadUInt32(v9);
          v11[266] = BOMStreamReadUInt32(v9);
          v11[274] = BOMStreamReadUInt32(v9);
          v11[275] = BOMStreamReadUInt32(v9);
          v11[263] &= ~4u;
          *(v11 + 141) = 0;
          BOMStreamFree(v9);
          v13 = v11[265];
          v14 = v11[266];
          v15 = __CFADD__(v14, v13);
          v16 = v14 + v13;
          if (v15)
          {
            v17 = BOMExceptionHandlerMessage("%s: stream invalid; overflow of admin offset+size", a1);
            v18 = *__error();
            v19 = v17;
            v20 = 347;
          }

          else
          {
            v41 = v11[258];
            if (v16 <= v41)
            {
              v43 = v11[274];
              v44 = v11[275];
              v15 = __CFADD__(v44, v43);
              v45 = v44 + v43;
              if (v15)
              {
                v46 = BOMExceptionHandlerMessage("%s: stream invalid; overflow of toc offset+size", a1);
                v18 = *__error();
                v19 = v46;
                v20 = 361;
              }

              else
              {
                if (v45 <= v41)
                {
                  if (a2)
                  {
                    if (v41 <= 0x800)
                    {
                      v48 = 2048;
                    }

                    else
                    {
                      v48 = v11[258];
                    }

                    v11[262] = v48;
                    _CreateMapAddress(v11, v48);
                    v49 = *(v11 + 130);
                    if (!v49)
                    {
                      goto LABEL_19;
                    }

                    v11[263] |= 0xAu;
                    v50 = v11[274];
                    if (v50)
                    {
                      v51 = BOMStreamWithFileAndSys(v11[257], v50, v11[275], 0, (v49 + v50), v3);
                      if (!v51)
                      {
                        goto LABEL_19;
                      }

                      BOMStreamFree(v51);
                    }
                  }

                  else
                  {
                    v52 = *(v3 + 12);
                    if (!v52)
                    {
                      goto LABEL_50;
                    }

                    v53 = v52(*(v3 + 1), 0);
                    v54 = CUILogRenditionLogEnabled();
                    if (v54)
                    {
                      v56 = CUILogHandle(v54, v55);
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136446466;
                        v74 = a1;
                        v75 = 2050;
                        v76 = v53;
                        _os_log_impl(&dword_18DF47000, v56, OS_LOG_TYPE_INFO, "CoreUI %{public}s %{public}p", buf, 0x16u);
                      }
                    }

                    if (v53 == -1)
                    {
LABEL_50:
                      v11[262] = 0;
                      *(v11 + 130) = 0;
                      v11[263] &= ~2u;
                      v60 = __error();
                      v61 = strerror(*v60);
                      _CUILog(1, "mmap failed for '%s' using regular file reading '%s'", a1, v61);
                    }

                    else
                    {
                      (*(*(v11 + 140) + 24))(*(*(v11 + 140) + 8), v11[257]);
                      v11[257] = -1;
                      v57 = v11[263];
                      v11[262] = v11[258];
                      *(v11 + 130) = v53;
                      v11[263] = v57 | 0xA;
                      v58 = v11[265];
                      if (v58 && (v57 & 4) == 0)
                      {
                        madvise((v53 + v58), v11[266], 3);
                      }

                      v59 = v11[274];
                      if (v59 && (v11[263] & 4) == 0)
                      {
                        madvise((*(v11 + 130) + v59), v11[275], 3);
                      }
                    }
                  }

                  _CreateBlockTable(v11);
                  v62 = v11[265];
                  if (v62)
                  {
                    if (!a2 && (v11[263] & 2) != 0)
                    {
                      v64 = BOMStreamWithAddress(*(v11 + 130) + v62, v11[266], 0);
                    }

                    else
                    {
                      v63 = malloc_type_calloc(1uLL, v11[266], 0x5DFBE76CuLL);
                      *(v11 + 141) = v63;
                      if (!v63)
                      {
                        v65 = __error();
                        v66 = strerror(*v65);
                        _CUILog(4, "%s: malloc: %s", "BOMStorage BOMStorageOpenWithSys(const char *, Boolean, BomSys *)", v66);
                        return 0;
                      }

                      v64 = BOMStreamWithFileAndSys(v7, v11[265], v11[266], 0, v63, v3);
                    }

                    v67 = v64;
                    if (!v64)
                    {
                      v68 = BOMExceptionHandlerMessage("can't read from %s unable to create a BOMStream", a1);
                      v18 = *__error();
                      v19 = v68;
                      v20 = 455;
                      goto LABEL_18;
                    }

                    if (_ReadBlockTable(v11, v64) || _ReadFreeList(v11, v67))
                    {
                      goto LABEL_19;
                    }

                    BOMStreamFree(v67);
                  }

                  else
                  {
                    *(v11 + 136) = _BOMFreeListAllocate();
                  }

                  __strlcpy_chk();
                  return v11;
                }

                v47 = BOMExceptionHandlerMessage("%s: stream invalid; toc range is outside of file", a1);
                v18 = *__error();
                v19 = v47;
                v20 = 368;
              }
            }

            else
            {
              v42 = BOMExceptionHandlerMessage("%s: stream invalid; admin range is outside of file", a1);
              v18 = *__error();
              v19 = v42;
              v20 = 354;
            }
          }

LABEL_18:
          _BOMExceptionHandlerCall(v19, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v20, v18);
          goto LABEL_19;
        }

        v36 = BOMExceptionHandlerMessage("%s has an unknown version: 0x%X", a1, UInt32);
        v29 = *__error();
        v30 = v36;
        v31 = 308;
      }

      else
      {
        v28 = BOMExceptionHandlerMessage("%s is not a BOMStorage file\n", a1);
        v29 = *__error();
        v30 = v28;
        v31 = 294;
      }

      _BOMExceptionHandlerCall(v30, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v31, v29);
      BOMStreamFree(v9);
LABEL_19:
      (*(v3 + 3))(*(v3 + 1), v7);
      return 0;
    }

    v25 = __error();
    v26 = strerror(*v25);
    v27 = BOMExceptionHandlerMessage("fstat: %s", v26);
    v18 = *__error();
    v19 = v27;
    v20 = 278;
    goto LABEL_18;
  }

  v21 = __error();
  v22 = strerror(*v21);
  v23 = BOMExceptionHandlerMessage("can't open: '%s' %s", a1, v22);
  v24 = __error();
  _BOMExceptionHandlerCall(v23, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 271, *v24);
  return 0;
}

void *BOMStreamWithFileAndSys(int a1, uint64_t a2, size_t a3, int a4, char *a5, __int128 *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040879040B4uLL);
  if (v12)
  {
    if (!a6)
    {
      a6 = BomSys_default();
    }

    __CFSetLastAllocationEventName();
    v12[9] = a6;
    *v12 = 0x100000001;
    *(v12 + 5) = a1;
    v12[3] = a2;
    v12[4] = a3;
    *(v12 + 10) = a4;
    if (a5)
    {
      v12[6] = a5;
      *(v12 + 80) &= ~1u;
      if ((a3 & 0x8000000000000000) != 0)
      {
LABEL_15:
        v16 = __error();
        strerror(*v16);
        _CUILog(4, "%s: malloc: %s");
LABEL_18:
        BOMStreamFree(v12);
        return 0;
      }
    }

    else
    {
      v15 = malloc_type_calloc(1uLL, a3, 0x22400796uLL);
      v12[6] = v15;
      if (!v15)
      {
        goto LABEL_15;
      }

      a5 = v15;
      *(v12 + 80) |= 1u;
      a3 = v12[4];
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_15;
      }
    }

    v12[7] = a5;
    v12[8] = &a5[a3];
    if ((*(v12 + 10) | 2) == 2)
    {
      if ((*(a6 + 7))(*(a6 + 1), *(v12 + 5), v12[3], 0) == -1)
      {
        v17 = __error();
        strerror(*v17);
        _CUILog(4, "%s: lseek: %s");
        goto LABEL_18;
      }

      a3 = (*(a6 + 5))(*(a6 + 1), *(v12 + 5), v12[6], v12[4]);
      if (a3 != v12[4])
      {
        v18 = __error();
        strerror(*v18);
        _CUILog(4, "%s: read: %s");
        goto LABEL_18;
      }
    }

    if (!a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = __error();
    v14 = strerror(*v13);
    _CUILog(4, "%s: malloc: %s", "BOMStreamWithFileAndSys", v14);
  }

  return v12;
}

uint64_t BOMStorageReadFromBlock(uint64_t a1, unsigned int a2)
{
  if (!a1 || !a2)
  {
    if (a1)
    {
      if (!a2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlock: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1029, *v10);
      if (!a2)
      {
LABEL_13:
        v4 = *__error();
        v5 = "BOMStorageCopyFromBlock: !bid";
        v6 = 1032;
        goto LABEL_27;
      }
    }

    return 0;
  }

  if (*(a1 + 1056) < a2)
  {
    v4 = *__error();
    v5 = "BOMStorageCopyRangeFromBlockRange: bad block (bid > storage->blocks)";
    v6 = 1039;
LABEL_27:
    _BOMExceptionHandlerCall(v5, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v6, v4);
    return 0;
  }

  v7 = *(a1 + 1068);
  if (v7 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", a2);
    v7 = *(a1 + 1068);
    v9 = -1;
  }

  else
  {
    v8 = bswap32(*(*(a1 + 1072) + 8 * a2));
    if (*(a1 + 1052))
    {
      v9 = *(*(a1 + 1072) + 8 * a2);
    }

    else
    {
      v9 = v8;
    }
  }

  if (v7 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
    v11 = 0;
  }

  else
  {
    v11 = *(*(a1 + 1072) + 8 * a2 + 4);
    v12 = bswap32(v11);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v11 = v12;
    }

    if (v9 == -1 && v11 == -1)
    {
      v4 = *__error();
      v5 = "BOMStorageCopyRangeFromBlockRange: reading from free block";
      v6 = 1048;
      goto LABEL_27;
    }
  }

  if (__CFADD__(v11, v9))
  {
    v4 = *__error();
    v5 = "BOMStorageCopyRangeFromBlockRange: 32-bit overflow with block address+size";
    v6 = 1054;
    goto LABEL_27;
  }

  if (v11 + v9 > *(a1 + 1032))
  {
    v4 = *__error();
    v5 = "BOMStorageCopyRangeFromBlockRange: block extends past end of storage";
    v6 = 1058;
    goto LABEL_27;
  }

  if (!v11)
  {
    return 0;
  }

  v14 = *(a1 + 1080);
  if (v14 && (*(v14 + 4 * a2) & 1) != 0)
  {
    v15 = *(a1 + 1052);
LABEL_39:
    if ((v15 & 2) == 0)
    {
      return 0;
    }

    return *(a1 + 1040) + v9;
  }

  v15 = *(a1 + 1052);
  if ((v15 & 1) == 0)
  {
    goto LABEL_39;
  }

  v16 = *(a1 + 1028);
  if (v16 == -1)
  {
    goto LABEL_39;
  }

  if ((v15 & 2) == 0)
  {
    return 0;
  }

  v17 = BOMStreamWithFile(v16, v9, v11, 0, (*(a1 + 1040) + v9));
  if (!v17)
  {
    v4 = *__error();
    v5 = "BOMStorageCopyRangeFromBlockRange: !stream";
    v6 = 1086;
    goto LABEL_27;
  }

  BOMStreamFree(v17);
  v18 = *(a1 + 1080);
  if (v18)
  {
    *(v18 + 4 * a2) |= 1u;
  }

  else
  {
    v19 = BOMExceptionHandlerMessage("BOM blockShadowTable is null");
    v20 = __error();
    _BOMExceptionHandlerCall(v19, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1093, *v20);
  }

  return *(a1 + 1040) + v9;
}

uint64_t BOMStorageInRam(uint64_t result)
{
  if (result)
  {
    return (*(result + 1052) >> 2) & 1;
  }

  return result;
}

uint64_t BOMTreeReadValue(uint64_t a1, void *__s1, size_t a3)
{
  result = 0;
  v11 = 0;
  if (a1 && __s1)
  {
    if (!a3 && (*(a1 + 356) & 4) == 0)
    {
      return 0;
    }

    result = _findPagesForKey(a1, 0, __s1, a3);
    if (!result)
    {
      return result;
    }

    v7 = result;
    IndexForKey = _findIndexForKey(a1, result, __s1, a3, &v11);
    if (v11)
    {
      v9 = bswap32(*(*(v7 + 24) + 8 * IndexForKey));
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = *(*(v7 + 24) + 8 * IndexForKey);
      }

      return BOMStorageReadFromBlock(*a1, v10);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _CUICopySortedKeySignature(char *__dst, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = -1;
  if (__dst && a2 >= 0x65)
  {
    v9 = stpncpy(__dst, "{", a2 - 1);
    v10 = (&__dst[a2] - v9);
    if (&__dst[a2] == v9 || (a4 & 0xFFFFFFFFFFFFFFFELL) < 1)
    {
      v28 = v9;
    }

    else
    {
      v11 = a3 + 2;
      do
      {
        v12 = *(v11 - 2);
        v13 = (v12 >> 8) & 0xF;
        if (v12 >= 0xA000)
        {
          v14 = 87;
        }

        else
        {
          v14 = 48;
        }

        v15 = v14 + (v12 >> 12);
        if (v13 >= 0xA)
        {
          v16 = 87;
        }

        else
        {
          v16 = 48;
        }

        v17 = v16 + v13;
        v18 = v12 & 0xF;
        v19 = v12 >> 4;
        if (v19 >= 0xA)
        {
          v20 = 87;
        }

        else
        {
          v20 = 48;
        }

        v21 = v20 + v19;
        if (v18 >= 0xA)
        {
          v22 = 87;
        }

        else
        {
          v22 = 48;
        }

        v23 = v22 + v18;
        v25 = v15 == 48 && v17 == 48;
        v26 = v21 == 48 && v25;
        v27 = v9 + 1;
        if (v26 && v23 == 48)
        {
          *v9 = 48;
        }

        else if (v26)
        {
          *v9 = v23;
        }

        else if (v25)
        {
          *v9 = v21;
          v27 = v9 + 2;
          v9[1] = v23;
        }

        else if (v15 == 48)
        {
          v27 = v9 + 3;
          *v9 = v17;
          v9[1] = v21;
          v9[2] = v23;
        }

        else
        {
          *v9 = v15;
          v9[1] = v17;
          v9[2] = v21;
          v27 = v9 + 4;
          v9[3] = v23;
        }

        *v27 = 45;
        v28 = v27 + 1;
        v10 -= 5;
        if (v10)
        {
          v29 = v11 >= a3 + (a4 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          v29 = 1;
        }

        v11 += 2;
        v9 = v28;
      }

      while (!v29);
    }

    if ((v10 - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v28 -= 2;
    }

    else
    {
      *(v28 - 1) = 125;
    }

    *v28 = 0;
    return v28 - __dst;
  }

  return result;
}

unint64_t CUICopyKeySignatureWithPrefix(char *a1, unint64_t a2, int *a3, uint64_t a4, uint64_t *a5, unsigned int a6)
{
  if (!a4)
  {
    CUICopyKeySignatureWithPrefix_cold_1();
  }

  memset(v38, 0, 44);
  v12 = *(a4 + 8);
  if (v12 < 0x16)
  {
    v13 = v38;
  }

  else
  {
    v13 = malloc_type_calloc(v12, 2uLL, 0x1000040BDFB0063uLL);
  }

  CUIFillCARKeyArrayForRenditionKey2(v13, a3, a4, a5);
  if (a2)
  {
    v15 = a1 + 1;
    do
    {
      v16 = a6;
      v14 = v15;
      a6 /= 0xAu;
      *(v15 - 1) = (v16 - 10 * a6) | 0x30;
      if (v16 < 0xA)
      {
        break;
      }

      ++v15;
      --a2;
    }

    while (a2);
  }

  else
  {
    v14 = a1;
  }

  v17 = v14 - a1;
  if ((v14 - a1) >= 2)
  {
    v18 = 1;
    v19 = a1;
    do
    {
      v20 = *v19;
      v21 = v17 - v18;
      *v19++ = a1[v21];
      a1[v21] = v20;
    }

    while (v17 >> 1 > v18++);
  }

  v23 = _CUICopySortedKeySignature(v14, a2, v13, 2 * *(a4 + 8));
  if (v23 < 0)
  {
    if (v13 != v38)
    {
      free(v13);
    }

    return -1;
  }

  v24 = v23;
  if (v13 != v38)
  {
    free(v13);
  }

  if (a2 - v24 < 0x11)
  {
    return -1;
  }

  if (v24 < 0x61)
  {
    return v24;
  }

  v25 = 0;
  v26 = 0;
  do
  {
    v27 = &a3[v25];
    v28 = *(v27 + 1);
    if (!*(v27 + 1))
    {
      break;
    }

    v29 = *v27;
    if (a5 && (*a5 & (1 << v29)) != 0)
    {
      LODWORD(v30) = *(a5 + v29 + 8);
LABEL_23:
      v31 = 8 * v25;
      if (v30 >= 4)
      {
        v31 = 4 * v25 + 16;
      }

      v32 = (v28 << v31) ^ v26;
      if (v30 <= 0xB)
      {
        v26 = v32;
      }

      goto LABEL_32;
    }

    v33 = *(a4 + 8);
    if (v33)
    {
      v30 = 0;
      while (*(a4 + 12 + 4 * v30) != v29)
      {
        if (v33 == ++v30)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_23;
    }

LABEL_32:
    ++v25;
  }

  while (v25 != 21);
  v24 += 16;
  v34 = &v14[v24];
  v14[v24] = 0;
  v35 = 16;
  do
  {
    if (v26)
    {
      if ((v26 & 0xF) >= 0xA)
      {
        v36 = (v26 & 0xF) + 87;
      }

      else
      {
        v36 = v26 & 0xF | 0x30;
      }

      *--v34 = v36;
      v26 >>= 4;
    }

    else
    {
      *--v34 = 48;
    }

    --v35;
  }

  while (v35);
  return v24;
}

void _UnRegisterThemeRef(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = ___UnRegisterThemeRef_block_invoke;
  v1[3] = &__block_descriptor_40_e20_v16__0__NSMapTable_8l;
  v1[4] = a1;
  __PerformBlockWithThemeRegistry(v1);
}

uint64_t BOMTreeFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 356) & 1) != 0 && BOMTreeCommit(result))
    {
      return 1;
    }

    else
    {
      v2 = *(v1 + 296);
      if (v2 && CFArrayGetCount(v2))
      {
        _CUILog(4, "%s: BOMTree '%s' still has iterators active", "int BOMTreeFree(BOMTree)", *(v1 + 8));
      }

      for (i = 32; i != 288; i += 8)
      {
        v4 = *(v1 + i);
        if (v4)
        {
          if ((v4[2] & 2) != 0)
          {
            _WritePage(v1, *(v1 + i));
          }

          _FreePage(v1, v4);
          *(v1 + i) = 0;
        }
      }

      _FreePage(v1, *(v1 + 24));
      *(v1 + 24) = 0;
      v5 = *(v1 + 8);
      if (v5 && (*(v1 + 356) & 0x20) != 0)
      {
        free(v5);
        *(v1 + 8) = 0;
      }

      v6 = *(v1 + 296);
      if (v6)
      {
        CFRelease(v6);
        *(v1 + 296) = 0;
      }

      v7 = *(v1 + 336);
      if (v7)
      {
        free(v7);
        *(v1 + 336) = 0;
      }

      v8 = *(v1 + 320);
      if (v8)
      {
        free(v8);
      }

      free(v1);
      return 0;
    }
  }

  return result;
}

void _FreePage(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = -1;
    *(a2 + 1) = -1;
    *(a2 + 4) = 0;
    if ((*(a1 + 356) & 0x40) == 0)
    {
      free(*(a2 + 3));
    }

    free(a2);
  }
}

void __csiImageProviderReleaseData(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 40));

  *(a1 + 24) = 0;
  v2 = *(a1 + 88);
  if (v2)
  {
    [+[_CSIRenditionBlockData sharedCache](_CSIRenditionBlockData v1)];
  }

  *(a1 + 88) = 0;
  v4 = *(a1 + 96);
  if (v4)
  {
    [+[_CSIRenditionBlockData sharedCache](_CSIRenditionBlockData v3)];
  }

  *(a1 + 96) = 0;
  v6 = *(a1 + 104);
  if (v6)
  {
    [+[_CSIRenditionBlockData sharedCache](_CSIRenditionBlockData v5)];
  }

  *(a1 + 104) = 0;
  objc_storeWeak((a1 + 56), 0);
  objc_storeWeak((a1 + 64), 0);
  objc_storeWeak((a1 + 72), 0);
  objc_storeWeak((a1 + 48), 0);
}

void _dense_deallocate(uint64_t a1)
{
  v2 = *a1;
  (*(a1 + 56))();
  free(*v2);
  free(v2);
  *a1 = 0;
}

uint64_t __csiCopyImageTextureDataWithOptions(uint64_t a1, uint64_t a2)
{
  v3 = [objc_loadWeak((a1 + 48)) key];
  CUIRenditionKeyValueForAttribute(v3, 17);
  CUIRenditionKeyValueForAttribute(v3, 1);
  CUIRenditionKeyValueForAttribute(v3, 2);
  kdebug_trace();
  v4 = *(*(a1 + 32) + 8);
  if (__hardware_supports_encoding_onceToken != -1)
  {
    __csiCopyImageTextureDataWithOptions_cold_1();
  }

  if (v4 == 7 && __hardware_supports_encoding_supportsASTC == 1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = objc_alloc_init(CSIATECHelper);
    v7 = CUIATECompressedDataFromBuffer(*(a1 + 32) + 16, *(*(a1 + 32) + 8), &v6->glInternalFormat, &v6->metalPixelFormat, &v6->width, &v6->height, &v6->rowbytes, &v6->twiddled);
    v6->data = v7;
    if (v7)
    {
      __CUICFMutableDictAddInt32Property(Mutable, @"width", v6->width);
      __CUICFMutableDictAddInt32Property(Mutable, @"height", v6->height);
      __CUICFMutableDictAddInt32Property(Mutable, @"rowBytes", v6->rowbytes);
      __CUICFMutableDictAddInt32Property(Mutable, @"glInternalFormat", v6->glInternalFormat);
      __CUICFMutableDictAddInt32Property(Mutable, @"pixelFormatGL", v6->glInternalFormat);
      __CUICFMutableDictAddInt32Property(Mutable, @"pixelFormatMetal", v6->metalPixelFormat);
      __CUICFMutableDictAddInt32Property(Mutable, @"mipmapLevelCount", 1);
      __CUICFMutableDictAddInt32Property(Mutable, @"faceCount", 1);
      CFDictionaryAddValue(Mutable, @"supportsTiledLayout", v6->twiddled);
      ColorSpace = CGImageProviderGetColorSpace();
      CFDictionaryAddValue(Mutable, @"colorSpace", ColorSpace);
      v9 = CGImageTextureDataCreate();
    }

    else
    {

      v9 = 0;
    }

    CFRelease(Mutable);
  }

  else
  {
    v9 = 0;
  }

  kdebug_trace();
  return v9;
}

uint64_t BOMStorageFree(_BYTE *a1)
{
  if (!a1)
  {
    return 1;
  }

  if ((a1[1052] & 0x10) != 0 && BOMStorageCommit(a1))
  {
    return 1;
  }

  v3 = *(a1 + 134);
  if (v3)
  {
    if (a1[1052])
    {
      free(v3);
      v4 = *(a1 + 135);
      if (v4)
      {
        free(v4);
      }
    }
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    v5[4](*(a1 + 136));
    free(v5);
  }

  if (*(a1 + 130))
  {
    if ((*(a1 + 263) & 8) != 0)
    {
      v6 = *(a1 + 263) & 3;
      v7 = (*(*(a1 + 140) + 104))(*(*(a1 + 140) + 8));
      if (v6 != 2 && v7 == -1)
      {
        v8 = __error();
        _BOMExceptionHandlerCall("munmap failed", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1521, *v8);
      }
    }
  }

  if (*(a1 + 257) != -1)
  {
    (*(*(a1 + 140) + 24))(*(*(a1 + 140) + 8));
  }

  v9 = *(a1 + 141);
  if (v9)
  {
    free(v9);
  }

  free(a1);
  return 0;
}

void *_dense_clear(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*v1 + 8 * i);
      *(*v1 + 8 * i) = 0;
      if (v4)
      {
        do
        {
          v5 = *v4;
          free(v4);
          v4 = v5;
        }

        while (v5);
        v2 = *(v1 + 16);
      }
    }
  }

  result = *(v1 + 8);
  *(v1 + 8) = 0;
  if (result)
  {
    do
    {
      v7 = *result;
      free(result);
      result = v7;
    }

    while (v7);
  }

  return result;
}

void __CUICFMutableDictAddInt32Property(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

_CUISubrangeData *CUIATECompressedDataFromBuffer(uint64_t a1, int a2, int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, CFBooleanRef *a8)
{
  v13 = a3;
  if (!*a1)
  {
    v25 = a1 + 12;
    v24 = *(a1 + 12);
    v26 = *(a1 + 13);
    if (v24 == 65)
    {
      if (v26 != 84 || *(a1 + 14) != 69 || *(a1 + 15) != 67 || *(a1 + 18))
      {
        goto LABEL_47;
      }

      LODWORD(v72) = 0;
      *a5 = *(a1 + 19) | (*(a1 + 21) << 16);
      *a6 = *(a1 + 22) | (*(a1 + 24) << 16);
      __ATEBlockFormatToGLInternalFormat((*(a1 + 25) | (*(a1 + 27) << 16)), a4, a3, &v72);
      *a7 = v72 * ((*a5 + *(a1 + 16) - 1) / *(a1 + 16));
      *a8 = kCFBooleanFalse;
      v28 = (v25 & 0x3F) != 0;
      if ((v25 & 0x3F) != 0)
      {
        v60 = malloc_default_zone();
        v30 = malloc_type_zone_memalign(v60, 0x40uLL, *(a1 + 8), 0xC32B7EC7uLL);
        __CFSetLastAllocationEventName();
        memcpy(v30, (a1 + 28), *(a1 + 8) - 16);
      }

      else
      {
        v30 = (a1 + 268);
      }
    }

    else
    {
      if (v24 != 19 || v26 != 171 || *(a1 + 14) != 161 || *(a1 + 15) != 92)
      {
        goto LABEL_47;
      }

      *a5 = *(a1 + 19) | (*(a1 + 21) << 16);
      *a6 = *(a1 + 22) | (*(a1 + 24) << 16);
      __ASTCBlockFormatToGLInternalFormat(*(a1 + 16), *(a1 + 17), a3, a4);
      *a7 = 16 * ((*a5 + *(a1 + 16) - 1) / *(a1 + 16));
      *a8 = kCFBooleanFalse;
      v28 = (v25 & 0x3F) != 0;
      if ((v25 & 0x3F) != 0)
      {
        v29 = malloc_default_zone();
        v30 = malloc_type_zone_memalign(v29, 0x40uLL, *(a1 + 8), 0x75B3F9E4uLL);
        __CFSetLastAllocationEventName();
        memcpy(v30, (a1 + 28), *(a1 + 8) - 16);
        v31 = v30;
      }

      else
      {
        v31 = 0;
        v30 = (a1 + 268);
      }

      v50 = MTLCreateSystemDefaultDevice();
      if (v50)
      {
        v51 = v50;
        if (objc_opt_respondsToSelector())
        {
          v52 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:*a4 width:*a5 height:*a6 mipmapped:0];
          [(MTLTextureDescriptor *)v52 setMipmapLevelCount:1];
          v53 = [v51 newTextureLayoutWithDescriptor:v52 isHeapOrBufferBacked:0];
          v54 = [v53 size];
          v55 = malloc_default_zone();
          v56 = malloc_type_zone_memalign(v55, [v53 alignment], v54, 0x24ADB17AuLL);
          __CFSetLastAllocationEventName();
          if (objc_opt_respondsToSelector())
          {
            [v53 initializeTextureMemory:v56];
          }

          v57 = *a7;
          v58 = *a5;
          v59 = *a6;
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = v58;
          v76 = v59;
          v77 = 1;
          [v53 copyFromLinearBytes:v30 linearOffset:0 linearBytesPerRow:v57 linearBytesPerImage:0 toTextureMemory:v56 textureSlice:0 textureLevel:0 textureRegion:&v72];
          [v53 finalizeTextureMemory:v56];
          *a8 = kCFBooleanTrue;
          if (v31)
          {
            free(v31);
          }

          return [NSData dataWithBytesNoCopy:v56 length:v54 freeWhenDone:1];
        }
      }
    }

    v61 = [NSData alloc];
    v62 = *(a1 + 8) - 16;

    return [v61 initWithBytesNoCopy:v30 length:v62 freeWhenDone:v28];
  }

  if (a2 != 7 || (memset(&stream, 0, sizeof(stream)), (v15 = MTLCreateSystemDefaultDevice()) == 0))
  {
LABEL_6:
    v17 = malloc_default_zone();
    v18 = malloc_type_zone_memalign(v17, 0x40uLL, *(a1 + 8), 0x81439CE6uLL);
    __CFSetLastAllocationEventName();
    v19 = compression_decode_buffer(v18, *(a1 + 8), (a1 + 12), *(a1 + 4), 0, COMPRESSION_LZFSE);
    if (!v19)
    {
      free(v18);
      _CUILog(4, "CoreUI: %s couldn't uncompress ASTC buffer %zu %u %u");
      return 0;
    }

    v20 = v19;
    v21 = [NSData dataWithBytesNoCopy:v18 length:v19 freeWhenDone:1];
    v22 = *v18;
    v23 = v18[1];
    if (v22 == 19)
    {
      if (v23 != 171 || v18[2] != 161 || v18[3] != 92)
      {
        goto LABEL_47;
      }

      *a5 = *(v18 + 7) | (v18[9] << 16);
      *a6 = *(v18 + 5) | (v18[12] << 16);
      __ASTCBlockFormatToGLInternalFormat(v18[4], v18[5], v13, a4);
      v32 = 16 * ((*a5 + v18[4] - 1) / v18[4]);
    }

    else
    {
      if (v22 != 65 || v23 != 84 || v18[2] != 69 || v18[3] != 67 || v18[6])
      {
LABEL_47:
        _CUILog(4, "CoreUI: %s got an invalid Compressed Texture Header %c%c%c%c");
        return 0;
      }

      LODWORD(v72) = 0;
      *a5 = *(v18 + 7) | (v18[9] << 16);
      *a6 = *(v18 + 5) | (v18[12] << 16);
      __ATEBlockFormatToGLInternalFormat((*(v18 + 13) | (v18[15] << 16)), a4, v13, &v72);
      v32 = v72 * ((*a5 + v18[4] - 1) / v18[4]);
    }

    *a7 = v32;
    *a8 = kCFBooleanFalse;
    return [[_CUISubrangeData alloc] initWithData:v21 range:16, v20 - 16];
  }

  v16 = v15;
  if (compression_stream_init(&stream, COMPRESSION_STREAM_DECODE, COMPRESSION_LZFSE))
  {

    goto LABEL_6;
  }

  v68 = v16;
  v64 = a4;
  v65 = a6;
  v70 = a7;
  v66 = a8;
  v33 = *(a1 + 4);
  stream.src_ptr = (a1 + 12);
  stream.src_size = v33;
  v34 = malloc_default_zone();
  v35 = 16;
  v36 = malloc_type_zone_memalign(v34, 0x40uLL, 0x10uLL, 0x87547845uLL);
  __CFSetLastAllocationEventName();
  v37 = 0;
  v38 = 0;
  v67 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v63 = v13;
  while (1)
  {
    stream.dst_ptr = v36;
    stream.dst_size = v35;
    v42 = compression_stream_process(&stream, 0);
    if (v42 == COMPRESSION_STATUS_ERROR)
    {
      free(v36);

      compression_stream_destroy(&stream);
      return 0;
    }

    v43 = v42;
    if (v37 || (stream.dst_ptr - v36) != 16)
    {
      if (!v41)
      {
        CUIATECompressedDataFromBuffer_cold_1();
      }

      v47 = *v70;
      v48 = *a5;
      v72 = 0;
      v73 = v40;
      v74 = 0;
      v75 = v48;
      v76 = v41;
      v77 = 1;
      [v38 copyFromLinearBytes:v36 linearOffset:0 linearBytesPerRow:v47 linearBytesPerImage:0 toTextureMemory:v39 textureSlice:0 textureLevel:0 textureRegion:&v72];
      v40 += v41;
      goto LABEL_45;
    }

    if (*v36 != 19 || v36[1] != 171 || v36[2] != 161 || v36[3] != 92)
    {
      _CUILog(4, "CoreUI: %s got an invalid ASTC Header %c%c%c%c");
      goto LABEL_51;
    }

    v41 = v36[5];
    if (!v41)
    {
      break;
    }

    v69 = v40;
    *a5 = *(v36 + 7) | (v36[9] << 16);
    *v65 = *(v36 + 5) | (v36[12] << 16);
    __ASTCBlockFormatToGLInternalFormat(v36[4], v41, v13, v64);
    *v70 = 16 * ((*a5 + v36[4] - 1) / v36[4]);
    *v66 = kCFBooleanTrue;
    v37 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:*v64 width:*a5 height:*v65 mipmapped:0];
    [(MTLTextureDescriptor *)v37 setMipmapLevelCount:1];
    v38 = [v68 newTextureLayoutWithDescriptor:v37 isHeapOrBufferBacked:0];
    v44 = [v38 size];
    v45 = malloc_default_zone();
    v67 = v44;
    v39 = malloc_type_zone_memalign(v45, [v38 alignment], v44, 0xEA8D05uLL);
    __CFSetLastAllocationEventName();
    v35 = *v70;
    free(v36);
    v46 = malloc_default_zone();
    v36 = malloc_type_zone_memalign(v46, 0x40uLL, v35, 0xD7680D61uLL);
    __CFSetLastAllocationEventName();
    if (objc_opt_respondsToSelector())
    {
      [v38 initializeTextureMemory:v39];
    }

    v13 = v63;
    v40 = v69;
LABEL_45:
    if (v43 == COMPRESSION_STATUS_END)
    {
      [v38 finalizeTextureMemory:v39];
      free(v36);
      compression_stream_destroy(&stream);

      return [[NSData alloc] initWithBytesNoCopy:v39 length:v67 freeWhenDone:1];
    }
  }

  _CUILog(4, "CoreUI: %s got an invalid ASTC Header (astcHeader->blockdim_y == 0) ");
LABEL_51:

  return 0;
}

uint64_t __ASTCBlockFormatToGLInternalFormat(uint64_t result, char a2, int *a3, int *a4)
{
  v4 = (a2 | (16 * result));
  if (v4 > 0x87)
  {
    if ((a2 | (16 * result)) <= 0xA7u)
    {
      switch(v4)
      {
        case 0x88u:
          v5 = 212;
          v6 = 37815;
          break;
        case 0xA5u:
          v5 = 213;
          v6 = 37816;
          break;
        case 0xA6u:
          v5 = 214;
          v6 = 37817;
          break;
        default:
          return result;
      }
    }

    else if ((a2 | (16 * result)) > 0xC9u)
    {
      if (v4 == 202)
      {
        v5 = 217;
        v6 = 37820;
      }

      else
      {
        if (v4 != 204)
        {
          return result;
        }

        v5 = 218;
        v6 = 37821;
      }
    }

    else if (v4 == 168)
    {
      v5 = 215;
      v6 = 37818;
    }

    else
    {
      if (v4 != 170)
      {
        return result;
      }

      v5 = 216;
      v6 = 37819;
    }
  }

  else if ((a2 | (16 * result)) <= 0x64u)
  {
    switch(v4)
    {
      case 'D':
        v5 = 204;
        v6 = 37808;
        break;
      case 'T':
        v5 = 205;
        v6 = 37809;
        break;
      case 'U':
        v5 = 206;
        v6 = 37810;
        break;
      default:
        return result;
    }
  }

  else if ((a2 | (16 * result)) > 0x84u)
  {
    if (v4 == 133)
    {
      v5 = 210;
      v6 = 37813;
    }

    else
    {
      if (v4 != 134)
      {
        return result;
      }

      v5 = 211;
      v6 = 37814;
    }
  }

  else if (v4 == 101)
  {
    v5 = 207;
    v6 = 37811;
  }

  else
  {
    if (v4 != 102)
    {
      return result;
    }

    v5 = 208;
    v6 = 37812;
  }

  *a3 = v6;
  *a4 = v5;
  return result;
}

__CFString *OUTLINED_FUNCTION_0_1(uint64_t a1, uint64_t a2)
{

  return CUIPlatformNameForPlatform(a2);
}

const UInt8 *__csiTextureDataLockData(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex *a4)
{
  *a4 = CFDataGetLength(*(a1 + 40));
  v5 = *(a1 + 40);

  return CFDataGetBytePtr(v5);
}

void ____getDeviceTraits_block_invoke()
{
  v0 = +[NSMutableArray array];
  v1 = +[NSMutableArray array];
  v2 = MGCopyAnswer();
  __getDeviceTraits___deviceIdiom = 0;
  __getDeviceTraits___deviceSubtype = 0;
  __getDeviceTraits___deviceDisplayGamut = 0;
  __getDeviceTraits___deviceMemoryClass = 0;
  __getDeviceTraits___deviceGraphicsClass = 0;
  v3 = &_MergedGlobals;
  __getDeviceTraits___deviceGraphicsFallbackOrder = 0;
  __getDeviceTraits___deviceSubtypeFallbackOrder = 0;
  if (!v2)
  {

    _CUILog(4, "CoreUI: CUICatalog: MGCopyAnswer returned nil");
    return;
  }

  v4 = v2;
  v5 = [v2 objectForKey:@"ArtworkDeviceIdiom"];
  if (![v5 length])
  {
    _CUILog(4, "CoreUI: CUICatalog: couldn't get 'kMGArtworkDeviceIdiom' from MGCopyAnswer got '%@'", v4);
    goto LABEL_16;
  }

  v6 = v4;
  v7 = [v5 UTF8String];
  v8 = v7;
  if (!"universal")
  {
    goto LABEL_12;
  }

  v9 = gThemeIdioms;
  if (strcasecmp(v7, "universal"))
  {
    while (1)
    {
      v10 = v9[5];
      if (!v10)
      {
        break;
      }

      v9 += 3;
      if (!strcasecmp(v8, v10))
      {
        goto LABEL_7;
      }
    }

LABEL_12:
    v11 = __getDeviceTraits___deviceIdiom;
    goto LABEL_13;
  }

LABEL_7:
  v11 = *v9;
  __getDeviceTraits___deviceIdiom = *v9;
LABEL_13:
  v4 = v6;
  if (!v11 && !strcasecmp(v8, "reality"))
  {
    __getDeviceTraits___deviceIdiom = 8;
  }

LABEL_16:
  v12 = [objc_msgSend(v4 objectForKey:{@"ArtworkDeviceSubType", "integerValue"}];
  __getDeviceTraits___deviceSubtype = v12;
  if (__getDeviceTraits___deviceIdiom == 5)
  {
    CUIWatchSubTypeFallbackOrder(v12, v1);
  }

  [v1 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 0)}];
  __getDeviceTraits___deviceSubtypeFallbackOrder = v1;
  __getDeviceTraits___deviceMemoryClass = [objc_msgSend(v4 objectForKey:{@"DevicePerformanceMemoryClass", "integerValue"}];
  v13 = [v4 objectForKey:@"ArtworkDisplayGamut"];
  if ([v13 length])
  {
    v14 = [v13 UTF8String];
    if ("sRGB")
    {
      v15 = v14;
      v16 = &gThemeDisplayGamuts;
      if (!strcasecmp(v14, "sRGB"))
      {
LABEL_23:
        __getDeviceTraits___deviceDisplayGamut = *v16;
      }

      else
      {
        while (1)
        {
          v17 = v16[5];
          if (!v17)
          {
            break;
          }

          v16 += 3;
          if (!strcasecmp(v15, v17))
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  else
  {
    _CUILog(4, "CoreUI: CUICatalog: couldn't get 'kMGArtworkDisplayGamut' from MGCopyAnswer got '%@'", v4);
  }

  v18 = [v4 objectForKey:@"GraphicsFeatureSetClass"];
  if (!v18)
  {
    _CUILog(4, "CoreUI: CUICatalog: couldn't get 'kMGArtworkGraphicsFeatureSetClass' from MGCopyAnswer got '%@'", v4);
    goto LABEL_39;
  }

  v19 = v18;
  v20 = [v18 UTF8String];
  v21 = v20;
  if (!"GLES2,0")
  {
    goto LABEL_32;
  }

  v22 = &gThemeGraphicsFeatureSetClasses_Legacy;
  if (strcasecmp(v20, "GLES2,0"))
  {
    while (1)
    {
      v23 = v22[5];
      if (!v23)
      {
        break;
      }

      v22 += 3;
      if (!strcasecmp(v21, v23))
      {
        goto LABEL_36;
      }
    }

LABEL_32:
    if (!"GLES2,0")
    {
LABEL_37:
      if ([v19 length])
      {
        _CUILog(4, "CoreUI: CUICatalog: Failed to parse value of 'kMGArtworkGraphicsFeatureSetClass' from MGCopyAnswer: '%@'", v19);
      }

      goto LABEL_39;
    }

    v22 = &gThemeGraphicsFeatureSetClasses;
    if (strcasecmp(v21, "GLES2,0"))
    {
      do
      {
        v24 = v22[5];
        if (!v24)
        {
          goto LABEL_37;
        }

        v22 += 3;
      }

      while (strcasecmp(v21, v24));
    }
  }

LABEL_36:
  __getDeviceTraits___deviceGraphicsClass = *v22;
  [v19 length];
LABEL_39:
  v25 = [v4 objectForKey:@"GraphicsFeatureSetFallbacks"];
  if (v25 && (v26 = v25, [v25 length] >= 2))
  {
    v47 = v4;
    v48 = v26;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v27 = [v26 componentsSeparatedByString:@":"];
    v28 = [v27 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (!v28)
    {
      goto LABEL_55;
    }

    v29 = v28;
    v30 = 0;
    v31 = *v54;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v54 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v33 = [*(*(&v53 + 1) + 8 * i) UTF8String];
        if ("GLES2,0")
        {
          v34 = v33;
          v35 = &gThemeGraphicsFeatureSetClasses_Legacy;
          if (!strcasecmp(v33, "GLES2,0"))
          {
LABEL_50:
            v37 = *v35;
            [v0 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *v35)}];
            v30 |= v37 > 0;
          }

          else
          {
            while (1)
            {
              v36 = v35[5];
              if (!v36)
              {
                break;
              }

              v35 += 3;
              if (!strcasecmp(v34, v36))
              {
                goto LABEL_50;
              }
            }
          }
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v29);
    if ((v30 & 1) == 0 || ![v0 count])
    {
LABEL_55:
      [v0 removeAllObjects];
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v38 = [v48 componentsSeparatedByString:@":"];
      v39 = [v38 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v50;
        do
        {
          for (j = 0; j != v40; j = j + 1)
          {
            if (*v50 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = [*(*(&v49 + 1) + 8 * j) UTF8String];
            if ("GLES2,0")
            {
              v44 = v43;
              v45 = &gThemeGraphicsFeatureSetClasses;
              if (!strcasecmp(v43, "GLES2,0"))
              {
LABEL_64:
                [v0 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *v45)}];
              }

              else
              {
                while (1)
                {
                  v46 = v45[5];
                  if (!v46)
                  {
                    break;
                  }

                  v45 += 3;
                  if (!strcasecmp(v44, v46))
                  {
                    goto LABEL_64;
                  }
                }
              }
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v40);
      }
    }

    v3 = &_MergedGlobals;
    v4 = v47;
    if (![v0 count])
    {
      _CUILog(4, "CoreUI: CUICatalog: Failed to parse value of 'kMGArtworkGraphicsFeatureSetFallbacks' from MGCopyAnswer: '%@'", v48);
    }
  }

  else
  {
    _CUILog(3, "CoreUI: CUICatalog: couldn't get 'kMGArtworkGraphicsFeatureSetFallbacks' from MGCopyAnswer got '%@'", v4);
  }

  if ([v0 count])
  {
    *(v3 + 22) = v0;
  }
}

id __RunTimeThemeRefForFileURL_block_invoke(void *a1, void *a2)
{
  v4 = [a2 objectForKey:a1[4]];
  if (v4)
  {
    result = [v4 unsignedIntegerValue];
    *(*(a1[6] + 8) + 24) = result;
  }

  else
  {
    v6 = [[CUIStructuredThemeStore alloc] initWithURL:a1[5]];
    if (v6)
    {
      v7 = v6;
      *(*(a1[6] + 8) + 24) = _RegisterThemeProvider(v6);

      v8 = [NSNumber numberWithUnsignedInteger:*(*(a1[6] + 8) + 24)];
      v9 = a1[4];

      return [a2 setObject:v8 forKey:v9];
    }

    else
    {
      result = [[NSString alloc] initWithFormat:@"RunTimeThemeRefForFileURL() failed to initialize CUIStructuredThemeStore at path: %@", a1[5]];
      *(*(a1[7] + 8) + 40) = result;
    }
  }

  return result;
}

uint64_t __resolvedDesignSystemForInputSystem(uint64_t result)
{
  if (!result)
  {
    v1 = CUICurrentPlatform();
    if (v1 > 5)
    {
      return 1;
    }

    else
    {
      return qword_18E021D50[v1];
    }
  }

  return result;
}

__n128 OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v10 + 24) = v12;
  result = a10;
  *(v10 + 8) = a10;
  *v10 = v11;
  return result;
}

float64_t OUTLINED_FUNCTION_11_0(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a3.f64[1] = a4;
  a1.f64[1] = a2;
  *&a1.f64[0] = vrndxq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(a1), a3)).u64[0];
  return a1.f64[0];
}

unsigned int *_findPage(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a1)
    {
      v4 = 0;
      while (1)
      {
        v5 = *(a1 + 32 + v4);
        if (v5)
        {
          if (*v5 == a2)
          {
            break;
          }
        }

        v4 += 8;
        if (v4 == 256)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v5 = 0;
    }

    v6 = 0;
    v7 = a1 + 32;
    while (1)
    {
      if (v5)
      {
        return v5;
      }

      v8 = *(a1 + 288);
      v5 = *(v7 + 8 * v8);
      if (!v5)
      {
        v5 = _NewPage(a1, a2);
        if (!v5)
        {
          return v5;
        }

        if (_ReadPage(a1, v5))
        {
          return 0;
        }

        v8 = *(a1 + 288);
        *(v7 + 8 * v8) = v5;
        goto LABEL_26;
      }

      v9 = *(v5 + 2);
      if ((v9 & 0xC) == 4)
      {
        break;
      }

      if ((v9 & 4) != 0)
      {
        v5 = 0;
LABEL_26:
        v13 = v6;
        goto LABEL_27;
      }

      v13 = 0;
      *(v5 + 2) = v9 | 4;
      LODWORD(v8) = *(a1 + 288);
      v5 = 0;
LABEL_27:
      v14 = v8 + 1;
      v15 = -v14 < 0;
      v16 = -v14 & 0x1F;
      v17 = v14 & 0x1F;
      if (!v15)
      {
        v17 = -v16;
      }

      *(a1 + 288) = v17;
      v6 = v13 + 1;
      if (!v5 && v13 >= 32)
      {
        v18 = __error();
        _BOMExceptionHandlerCall("btree cache is deadlocked", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 2356, *v18);
        return 0;
      }
    }

    if ((v9 & 2) != 0)
    {
      _WritePage(a1, *(v7 + 8 * v8));
    }

    v10 = 0;
    v11 = *(v5 + 3);
    *(v5 + 4) = 0;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    if ((*(a1 + 356) & 0x40) == 0)
    {
      v12 = *(a1 + 308);
      if (v12 <= *(a1 + 312))
      {
        v12 = *(a1 + 312);
      }

      bzero(v11, 8 * v12);
      v10 = v11;
    }

    *v5 = a2;
    *(v5 + 1) = -1;
    *(v5 + 3) = v10;
    *(v5 + 4) = 0;
    if (_ReadPage(a1, v5))
    {
      return 0;
    }

    v8 = *(a1 + 288);
    *(v7 + 8 * v8) = v5;
    goto LABEL_26;
  }

  return 0;
}

void sub_18DF5503C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF5560C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFDataRef __compress_data_stream(const __CFData *a1, compression_stream_operation a2)
{
  Length = CFDataGetLength(a1);
  v5 = Length;
  if (a2 == COMPRESSION_STREAM_DECODE && !(Length >> 14))
  {
    v6 = 2 * Length;
    v7 = malloc_type_malloc(2 * Length, 0xD53F1B9BuLL);
    __CFSetLastAllocationEventName();
    BytePtr = CFDataGetBytePtr(a1);
    v9 = compression_decode_buffer(v7, 2 * v5, BytePtr, v5, 0, COMPRESSION_LZFSE);
    if (v9 && v9 != v6)
    {

      return CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v7, v9, kCFAllocatorMalloc);
    }

    free(v7);
  }

  memset(&v19, 0, sizeof(v19));
  v11 = compression_stream_init(&v19, a2, COMPRESSION_LZFSE);
  result = 0;
  if (v11 == COMPRESSION_STATUS_OK)
  {
    v19.src_size = v5;
    v12 = CFDataGetBytePtr(a1);
    v13 = a2 == COMPRESSION_STREAM_DECODE;
    v14 = a2 != COMPRESSION_STREAM_DECODE;
    v19.src_ptr = v12;
    if (v13)
    {
      src_size = v19.src_size;
    }

    else
    {
      src_size = v19.src_size >> 2;
    }

    v16 = malloc_type_malloc(src_size, 0x1A01134FuLL);
    __CFSetLastAllocationEventName();
    v17 = 0;
    while (1)
    {
      if (v17 >= src_size)
      {
        src_size += src_size >> 1;
        v16 = reallocf(v16, src_size);
        __CFSetLastAllocationEventName();
      }

      v19.dst_ptr = &v17[v16];
      v19.dst_size = src_size - v17;
      v18 = compression_stream_process(&v19, v14);
      if (v18 == COMPRESSION_STATUS_ERROR)
      {
        break;
      }

      v17 = (v19.dst_ptr - v16);
      if (v18 == COMPRESSION_STATUS_END)
      {
        compression_stream_destroy(&v19);
        return CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v16, v17, kCFAllocatorMalloc);
      }
    }

    free(v16);
    compression_stream_destroy(&v19);
    return 0;
  }

  return result;
}

uint64_t _revalidateIterator(uint64_t a1)
{
  if (*(a1 + 57))
  {
    PagesForKey = _findPagesForKey(*a1, 0, *(a1 + 24), *(a1 + 32));
    *(a1 + 8) = PagesForKey;
    if (!PagesForKey)
    {
      *(a1 + 57) |= 1u;
      goto LABEL_12;
    }

    IndexForKey = _findIndexForKey(*a1, PagesForKey, *(a1 + 24), *(a1 + 32), (a1 + 56));
    Page = *(a1 + 8);
    *(a1 + 16) = *Page;
    *(a1 + 20) = IndexForKey;
    *(a1 + 57) &= ~1u;
    goto LABEL_9;
  }

  Page = *(a1 + 8);
  if (!Page)
  {
    v3 = *(a1 + 16);
LABEL_8:
    Page = _findPage(*a1, v3);
    *(a1 + 8) = Page;
    if (!Page)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 16);
  if (*Page != v3)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (*(a1 + 20) < *(Page + 8))
  {
    return 1;
  }

LABEL_12:
  result = 0;
  *(a1 + 57) |= 1u;
  return result;
}

uint64_t _CUIColorSpaceGetGrayGamma2_2(uint64_t a1, uint64_t a2)
{
  if (_CUIColorSpaceGetGrayGamma2_2___once != -1)
  {
    _CUIColorSpaceGetGrayGamma2_2_cold_1();
  }

  return _CUIColorSpaceGetGrayGamma2_2_sGenericGrayColorSpace;
}

CGContextRef CUICGBitmapContextCreate(size_t a1, size_t a2, size_t a3, size_t a4, CGColorSpaceRef space, uint32_t a6)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  AlignedBytesPerRow = a4;
  if (!a4)
  {
    if ((a6 & 0x1F) - 1 >= 6)
    {
      if ((a6 & 0x1F) == 7)
      {
        goto LABEL_6;
      }

      if ((a6 & 0x1F) != 0)
      {
        CUICGBitmapContextCreate_cold_1();
      }
    }

    CGColorSpaceGetNumberOfComponents(space);
LABEL_6:
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  }

  releaseInfo = ((vm_page_size + AlignedBytesPerRow * a2 - 1) & -vm_page_size);
  v14 = mmap(0, releaseInfo, 3, 4098, 1728053248, 0);
  if (v14 == -1)
  {
    v16 = __error();
    v17 = strerror(*v16);
    _CUILog(4, "CoreUI: CUICGBitmapContextCreate() mmap failed error:'%s'", v17);
  }

  else
  {
    v15 = v14;
    result = CGBitmapContextCreateWithData(v14, a1, a2, a3, AlignedBytesPerRow, space, a6, __freeBitmapContextData, releaseInfo);
    if (result)
    {
      return result;
    }

    munmap(v15, releaseInfo);
  }

  return 0;
}

id OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  return [v35 countByEnumeratingWithState:&a35 objects:&STACK[0x2E0] count:{16, a6, a7, a8}];
}

id CUICreatePathFromSVGNode(void *a1, __int128 *a2)
{
  v2 = a1;
  if (a1)
  {
      ;
    }

    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v18 = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3052000000;
    v16[3] = __Block_byref_object_copy__1;
    v16[4] = __Block_byref_object_dispose__1;
    v4 = a2[1];
    v13 = *a2;
    v5 = a2[2];
    v14 = v4;
    v15 = v5;
    v16[5] = [NSValue valueWithCGAffineTransform:&v13];
    *&v13 = 0;
    *(&v13 + 1) = &v13;
    *&v14 = 0x3052000000;
    *(&v14 + 1) = __Block_byref_object_copy__1;
    *&v15 = __Block_byref_object_dispose__1;
    *(&v15 + 1) = +[NSMutableArray array];
    v7 = 0;
    v8 = &v7;
    v9 = 0x3052000000;
    v10 = __Block_byref_object_copy__1;
    v11 = __Block_byref_object_dispose__1;
    v12 = +[NSMutableArray array];
    CGSVGNodeEnumerate();
    v2 = [CUIVectorGlyphPath createConcatenatingPaths:v8[5]];
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(v16, 8);
    _Block_object_dispose(v17, 8);
  }

  return v2;
}

void sub_18DF56F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 144), 8);
  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

void __CUICreatePathFromSVGNode_block_invoke(void *a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    if (a1[8] == a2)
    {
      *(*(a1[6] + 8) + 24) = 0;
      *a4 = 1;
    }

    *(*(a1[4] + 8) + 40) = [*(*(a1[5] + 8) + 40) lastObject];
    v6 = *(*(a1[5] + 8) + 40);

    [v6 removeLastObject];
  }

  else
  {
    v7 = *&CGAffineTransformIdentity.c;
    *&v15.a = *&CGAffineTransformIdentity.a;
    *&v15.c = v7;
    *&v15.tx = *&CGAffineTransformIdentity.tx;
    if (CGSVGNodeGetAttributeMap() && CGSVGAttributeMapGetAttribute())
    {
      CGSVGAttributeGetTransform();
    }

    memset(&v14, 0, sizeof(v14));
    v8 = a1[4];
    v9 = *(*(v8 + 8) + 40);
    if (v9)
    {
      objc_msgSend_cgAffineTransformValue(v9);
      v8 = a1[4];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    v12 = v15;
    CGAffineTransformConcat(&v14, &v12, &t2);
    [*(*(a1[5] + 8) + 40) addObject:*(*(v8 + 8) + 40)];
    t2 = v14;
    *(*(a1[4] + 8) + 40) = [NSValue valueWithCGAffineTransform:&t2];
    if (a1[8] == a2)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    if (*(*(a1[6] + 8) + 24) == 1)
    {
      t2 = v14;
      v10 = CUICreatePathFromSVGShapeNode(a2, &t2);
      if (v10)
      {
        v11 = v10;
        [*(*(a1[7] + 8) + 40) addObject:v10];
      }
    }
  }
}

uint64_t _CUIColorGetSRGBBlack(uint64_t a1, uint64_t a2)
{
  if (_CUIColorGetSRGBBlack_onceToken != -1)
  {
    _CUIColorGetSRGBBlack_cold_1();
  }

  return _CUIColorGetSRGBBlack_sBlackColor;
}

id CUICreatePathFromSVGShapeNode(uint64_t a1, const CGAffineTransform *a2)
{
  if (CGSVGNodeGetType() != 2)
  {
    return 0;
  }

  Primitive = CGSVGShapeNodeGetPrimitive();
  if (Primitive != 42)
  {
    v7 = Primitive;
    if ((Primitive & 0xFFFFFFFE) != 0x2C)
    {
      return 0;
    }

    FloatCount = CGSVGShapeNodeGetFloatCount();
    if (!FloatCount)
    {
      return 0;
    }

    v9 = FloatCount;
    v10 = malloc_type_malloc(8 * FloatCount, 0x100004000313F17uLL);
    CGSVGShapeNodeGetFloats();
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, a2, *v10, v10[1]);
    if (v9 >= 3)
    {
      v11 = v10 + 3;
      v12 = 3;
      do
      {
        CGPathAddLineToPoint(Mutable, a2, *(v11 - 1), *v11);
        v13 = v12 + 1;
        v12 += 2;
        v11 += 2;
      }

      while (v13 < v9);
    }

    if (v7 == 44)
    {
      CGPathCloseSubpath(Mutable);
    }

    free(v10);
    if (!Mutable)
    {
      return 0;
    }

LABEL_14:
    v14 = CUICreateClipStrokeKeyframeDataFromNode(a1, 0.0);
    v15 = [CUIVectorGlyphPath createWithPath:Mutable clipStrokeKeyframes:v14];
    CGPathRelease(Mutable);

    return v15;
  }

  if (CGSVGShapeNodeGetPath())
  {
    CGPath = CGSVGPathCreateCGPath();
    Mutable = MEMORY[0x193AC5C50](CGPath, a2);
    CGPathRelease(CGPath);
    if (Mutable)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

id CUICreateClipStrokeKeyframeDataFromNode(uint64_t a1, float a2)
{
  CGSVGNodeGetAttributeMap();
  if (CUIVectorGlyphClipStrokeKeyframesAtom_onceToken != -1)
  {
    CUICreateClipStrokeKeyframeDataFromNode_cold_1();
  }

  result = CGSVGAttributeMapGetAttribute();
  if (result)
  {
    v4 = CGSVGAttributeCopyString();
    *&v5 = a2;
    v6 = [NSData encodedClipStrokeKeyframesFromString:v4 subpathOffset:v5];

    return v6;
  }

  return result;
}

uint64_t __CUIVectorGlyphClipStrokeKeyframesAtom_block_invoke()
{
  result = CGSVGAtomFromString();
  CUIVectorGlyphClipStrokeKeyframesAtom_atom = result;
  return result;
}

void sub_18DF57750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

__IOSurface *__csiCompressImageProviderCopyIOSurfaceWithOptions(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v5 = 1111970369;
  v6 = [objc_loadWeak((a1 + 48)) key];
  CUIRenditionKeyValueForAttribute(v6, 17);
  CUIRenditionKeyValueForAttribute(v6, 1);
  CUIRenditionKeyValueForAttribute(v6, 2);
  kdebug_trace();
  v7 = [*(a1 + 24) bytes];
  v38 = 0;
  valuePtr = 1111970369;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(v7 + 3);
  v11 = *(v7 + 4);
  if (a3)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(a3, @"kCGImageSurfaceFormatRequest", &value))
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
    }
  }

  v12 = *(v7 + 6);
  v38 = v12;
  v13 = *(*(a1 + 32) + 8);
  if (v13 == 12 || v13 == 7)
  {
    CUIUpdatePixelFormatForATECompressedData(&v38);
    v13 = *(*(a1 + 32) + 8);
    v12 = v38;
  }

  if (v13 == 5 && (v12 == 1195454774 || v12 == 1380401751))
  {
    v16 = 0;
    v38 = 1095911234;
    v12 = 1095911234;
    if (valuePtr == 1111970369)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

  v16 = valuePtr == 1111970369;
  if (v12 == 1095911234 && valuePtr == 1111970369)
  {
    goto LABEL_17;
  }

  if (v12 != 1380401751)
  {
    if (v12 == 1195456544 && valuePtr == 1279340600)
    {
      goto LABEL_30;
    }

    if (v12 == 1195454774)
    {
      v20 = *(v7 + 7);
      if ((v20 & 0xF) != 6 || valuePtr != 843264104)
      {
        v21 = (v20 & 0xF) == 3 && valuePtr == 843264310;
        v22 = v21;
        if (a3 && !v22)
        {
          goto LABEL_73;
        }
      }

      v5 = 843264104;
      v23 = v20 & 0xF;
      if (v23 == 2)
      {
        v5 = 843264310;
      }

      else if (v23 != 6)
      {
        -[NSAssertionHandler handleFailureInFunction:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInFunction:file:lineNumber:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)"), @"CUIThemeRendition.m", 1573, @"CoreUI: %s No supported surface type for this gray colorspace: %d in rendition '%@'", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)", *(v7 + 7) & 0xF, [objc_loadWeak((a1 + 48)) name]);
        goto LABEL_73;
      }

      v17 = 5;
      goto LABEL_62;
    }

    goto LABEL_44;
  }

  v19 = *(v7 + 7);
  if ((v19 & 0xF) == 4 && valuePtr == 1380411457)
  {
    goto LABEL_50;
  }

  if ((v19 & 0xF) != 3)
  {
    v12 = 1380401751;
LABEL_44:
    if (a3)
    {
      goto LABEL_73;
    }

    if (v12 > 1195456543)
    {
      if (v12 != 1195456544)
      {
        if (v12 != 1380401717)
        {
          if (v12 == 1380401751)
          {
            v19 = *(v7 + 7);
            goto LABEL_50;
          }

          goto LABEL_71;
        }

        v34 = 6;
LABEL_72:
        -[NSAssertionHandler handleFailureInFunction:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInFunction:file:lineNumber:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)"), @"CUIThemeRendition.m", 1584, @"CoreUI: %s No supported surface type for this block pixel format: %d in rendition '%@'", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)", v34, [objc_loadWeak((a1 + 48)) name]);
        goto LABEL_73;
      }

LABEL_30:
      v17 = 2;
      v5 = 1279340600;
      goto LABEL_62;
    }

    if (v12 != 1095911234)
    {
LABEL_71:
      -[NSAssertionHandler handleFailureInFunction:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInFunction:file:lineNumber:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)"), @"CUIThemeRendition.m", 1543, @"CoreUI: %s unknown pixel format %d rendition '%@'", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)", *(v7 + 6), [objc_loadWeak((a1 + 48)) name]);
      v34 = 0xFFFFFFFFLL;
      goto LABEL_72;
    }

    if (!v16)
    {
      v34 = 1;
      goto LABEL_72;
    }

LABEL_17:
    v17 = 0;
    goto LABEL_62;
  }

  v12 = 1380401751;
  if (valuePtr != 1815491698)
  {
    goto LABEL_44;
  }

LABEL_50:
  if ((v19 & 0xF) != 3)
  {
    if ((v19 & 0xF) == 4)
    {
      v17 = 4;
      v5 = 1380411457;
      goto LABEL_62;
    }

    -[NSAssertionHandler handleFailureInFunction:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInFunction:file:lineNumber:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)"), @"CUIThemeRendition.m", 1560, @"CoreUI: %s No supported surface type for this color space: %d in rendition '%@'", "IOSurfaceRef __CUIImageProviderCopyIOSurfaceWithOptions(void *, CGImageProviderRef, CFDictionaryRef)", *(v7 + 7) & 0xF, [objc_loadWeak((a1 + 48)) name]);
LABEL_73:
    v25 = 0;
    goto LABEL_74;
  }

  v5 = 1815491698;
  v17 = 4;
LABEL_62:
  v24 = __bppFromBlockPixelFormat(v17);
  v25 = 0;
  if (__PAIR64__(v11, v10) == v9)
  {
    v26 = v24;
    v36 = v8;
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    __CUICFMutableDictAddInt32Property(Mutable, kIOSurfaceWidth, v10);
    __CUICFMutableDictAddInt32Property(Mutable, kIOSurfaceHeight, v11);
    __CUICFMutableDictAddInt32Property(Mutable, kIOSurfaceBytesPerElement, v26);
    __CUICFMutableDictAddInt32Property(Mutable, kIOSurfaceBytesPerRow, AlignedBytesPerRow);
    __CUICFMutableDictAddInt32Property(Mutable, kIOSurfacePixelFormat, v5);
    v25 = IOSurfaceCreate(Mutable);
    IOSurfaceSetValue(v25, kIOSurfaceName, @"CoreUI image IOSurface");
    CFRelease(Mutable);
    if (!IOSurfaceLock(v25, 0, 0))
    {
      v29 = [_CSIRenditionBlockData alloc];
      BaseAddress = IOSurfaceGetBaseAddress(v25);
      v31 = [(_CSIRenditionBlockData *)v29 initWithBytes:v10 pixelWidth:v11 pixelHeight:*(a1 + 112) sourceRowbytes:v17 pixelFormat:?];
      v32 = v31;
      if (v31)
      {
        strlcpy(v31 + 48, v7 + 40, 0x80uLL);
        v32[2] = *(v7 + 6);
      }

      v33 = [(_CSIRenditionBlockData *)v32 expandCSIBitmapData:v36 fromSlice:v9 makeReadOnly:0];

      IOSurfaceUnlock(v25, 0, 0);
      if (!v33)
      {
        CFRelease(v25);
        goto LABEL_73;
      }
    }
  }

LABEL_74:
  kdebug_trace();
  return v25;
}

unsigned int *BOMStorageNewWithOptionsAndSys(const char *a1, uint64_t a2, __int128 *a3)
{
  v3 = a3;
  if (!a3)
  {
    v3 = BomSys_default();
  }

  v5 = (*(v3 + 2))(*(v3 + 1), a1, 1538, 420);
  if (v5 == -1)
  {
    v8 = __error();
    v9 = strerror(*v8);
    _CUILog(4, "%s can't open: '%s' %s", "BOMStorage BOMStorageNewWithOptionsAndSys(const char *, CFDictionaryRef, BomSys *)", a1, v9);
  }

  else
  {
    v6 = v5;
    bzero(v10, 0x470uLL);
    v11 = v6;
    v12 = v3;
    if (!_WriteRootPage(v10))
    {
      (*(v3 + 3))(*(v3 + 1), v6);
      return BOMStorageOpenWithSys(a1, 1, v3);
    }
  }

  return 0;
}

void _CUILog_cold_4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_18DF47000, a2, OS_LOG_TYPE_FAULT, "%{public}@", &v2, 0xCu);
}

uint64_t (*BOMStreamWriteUInt32(uint64_t (*result)(void *), unsigned int a2))(void *)
{
  v2 = bswap32(a2);
  if (*(result + 1) == 2)
  {
    v3 = a2;
  }

  else
  {
    v3 = v2;
  }

  if (*(result + 10))
  {
    v4 = *(result + 7);
    if ((v4 + 1) <= *(result + 8))
    {
      *v4 = v3;
      *(result + 7) += 4;
      *(result + 80) |= 2u;
      return result;
    }

    v5 = BOMExceptionHandlerMessage("%s buffer overflow", "BOMStreamWriteUInt32");
    v6 = *__error();
    v7 = v5;
    v8 = 1;
    v9 = 379;
  }

  else
  {
    v10 = BOMExceptionHandlerMessage("%s write called on read-only buffer", "BOMStreamWriteUInt32");
    v6 = *__error();
    v7 = v10;
    v8 = 0;
    v9 = 377;
  }

  return _BOMExceptionHandlerCall(v7, v8, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v9, v6);
}

uint64_t BOMStreamFlush(int *a1)
{
  if (!a1)
  {
    _CUILog(4, "%s: bad stream!");
    return 1;
  }

  if (!a1[10])
  {
    goto LABEL_13;
  }

  v2 = *a1;
  if (*a1 == 2)
  {
    goto LABEL_13;
  }

  if (v2 == 1)
  {
    if ((*(*(a1 + 9) + 56))(*(*(a1 + 9) + 8), a1[5], *(a1 + 3), 0) == -1)
    {
      v5 = __error();
      strerror(*v5);
      _CUILog(4, "%s: lseek: %s");
    }

    else
    {
      if ((*(*(a1 + 9) + 48))(*(*(a1 + 9) + 8), a1[5], *(a1 + 6), *(a1 + 4)) == *(a1 + 4))
      {
LABEL_13:
        result = 0;
        goto LABEL_14;
      }

      v4 = __error();
      strerror(*v4);
      _CUILog(4, "%s: write: %s");
    }

    return 1;
  }

  if (v2)
  {
    _CUILog(4, "%s: unknown stream type: %d", "BOMStreamFlush", v2);
    goto LABEL_13;
  }

  result = BOMStorageCopyToBlock(*(a1 + 1), a1[4], *(a1 + 6), *(a1 + 4));
LABEL_14:
  *(a1 + 80) &= ~2u;
  return result;
}

uint64_t _ExpandMapAddress(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 1048);
  if (v3 < a2)
  {
    if (v3 >= 0x100000)
    {
      LODWORD(v4) = v3 + 0x100000;
    }

    else
    {
      LODWORD(v4) = 2 * v3;
    }

    if (v4 <= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = v4;
    }

    v5 = vm_page_size - v4 % vm_page_size;
    if (!(v4 % vm_page_size))
    {
      v5 = 0;
    }

    v6 = (v5 + v4);
    v7 = (*(*(a1 + 1120) + 96))(*(*(a1 + 1120) + 8), 0, v6, 3, 4098, 0xFFFFFFFFLL, 0);
    if (v7 == -1)
    {
      v12 = *__error();
      v13 = "mmap failed";
      v11 = 1;
      v14 = 1547;
    }

    else
    {
      v8 = v7;
      if (vm_copy(mach_task_self_, *(a1 + 1040), *(a1 + 1048), v7))
      {
        v9 = __error();
        _BOMExceptionHandlerCall("vm_copy failed", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1551, *v9);
      }

      if ((*(*(a1 + 1120) + 104))(*(*(a1 + 1120) + 8), *(a1 + 1040), *(a1 + 1048)) != -1)
      {
        *(a1 + 1040) = v8;
        *(a1 + 1048) = v6;
        if (!v8)
        {
          goto LABEL_17;
        }

        return 0;
      }

      v12 = *__error();
      v13 = "munmap failed";
      v11 = 1;
      v14 = 1554;
    }

    _BOMExceptionHandlerCall(v13, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v14, v12);
    return v11;
  }

  if (!*(a1 + 1040))
  {
LABEL_17:
    v10 = __error();
    _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1567, *v10);
  }

  return 0;
}

uint64_t (*BOMStreamWriteBuffer(uint64_t a1, const void *a2, size_t __len))(void *)
{
  if (*(a1 + 40))
  {
    v5 = *(a1 + 56);
    if (v5 + __len <= *(a1 + 64))
    {
      result = memmove(v5, a2, __len);
      *(a1 + 56) += __len;
      *(a1 + 80) |= 2u;
      return result;
    }

    v6 = BOMExceptionHandlerMessage("%s buffer overflow", "BOMStreamWriteBuffer");
    v7 = *__error();
    v8 = v6;
    v9 = 1;
    v10 = 424;
  }

  else
  {
    v11 = BOMExceptionHandlerMessage("%s write called on read-only buffer", "BOMStreamWriteBuffer");
    v7 = *__error();
    v8 = v11;
    v9 = 0;
    v10 = 422;
  }

  return _BOMExceptionHandlerCall(v8, v9, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v10, v7);
}

uint64_t (*BOMStreamWriteUInt8(uint64_t (*result)(void *), char a2))(void *)
{
  if (*(result + 10))
  {
    v2 = *(result + 7);
    if ((v2 + 1) <= *(result + 8))
    {
      *v2 = a2;
      ++*(result + 7);
      *(result + 80) |= 2u;
      return result;
    }

    v3 = BOMExceptionHandlerMessage("%s buffer overflow", "BOMStreamWriteUInt8");
    v4 = *__error();
    v5 = v3;
    v6 = 1;
    v7 = 411;
  }

  else
  {
    v8 = BOMExceptionHandlerMessage("%s write called on read-only buffer", "BOMStreamWriteUInt8");
    v4 = *__error();
    v5 = v8;
    v6 = 0;
    v7 = 409;
  }

  return _BOMExceptionHandlerCall(v5, v6, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v7, v4);
}

void _AddToWriteCache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || !a3)
  {
    return;
  }

  v3 = a2;
  v5 = (a1 + 1104);
  v6 = *(a1 + 1104);
  if (!v6)
  {
    *(a1 + 1104) = _newFreeListEntry(a2, a3);
    v12 = 1;
LABEL_23:
    *(a1 + 1112) = v12;
LABEL_24:
    if (*(a1 + 1112) < 0x10u)
    {
      v15 = *v5;
      if (*v5)
      {
        v16 = 0;
        do
        {
          v17 = *(v15 + 3);
          if (v17 < 0xFFFF)
          {
            v18 = *v15;
            v16 = v15;
          }

          else
          {
            v18 = *v15;
            if (v16)
            {
              v19 = v16;
            }

            else
            {
              v19 = v5;
            }

            *v19 = v18;
            _WriteAddress(a1, *(v15 + 2), v17);
            free(v15);
            --*(a1 + 1112);
          }

          v15 = v18;
        }

        while (v18);
      }
    }

    else
    {

      _FlushWriteCache(a1);
    }

    return;
  }

  v7 = v6[2];
  if (v7 <= a2)
  {
    while (1)
    {
      v8 = v6;
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v9 = v6[2];
      if (v9 >= a2)
      {
        v11 = v8[3];
        if (v11 + v8[2] != a2)
        {
          goto LABEL_6;
        }

        v8[3] = v11 + a3;
        if (a3 + a2 == v6[2])
        {
          v8[3] = v6[3] + v11 + a3;
          *v8 = *v6;
          free(v6);
          v12 = *(a1 + 1112) - 1;
          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    v14 = v8[3];
    if (v14 + v8[2] == a2)
    {
      v8[3] = v14 + a3;
      goto LABEL_24;
    }

    v13 = _newFreeListEntry(a2, a3);
    if (v13)
    {
      *v13 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0;
    v9 = v6[2];
LABEL_6:
    if (a3 + a2 == v9)
    {
      v10 = v6[3] + a3;
      v6[2] = a2;
      v6[3] = v10;
      goto LABEL_24;
    }

    v13 = _newFreeListEntry(a2, a3);
    if (v13)
    {
      *v13 = v6;
      if (v7 <= v3)
      {
LABEL_21:
        *v8 = v13;
      }

      else
      {
        *v5 = v13;
      }

      v12 = *(a1 + 1112) + 1;
      goto LABEL_23;
    }
  }

  v20 = *__error();

  _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 2136, v20);
}

uint64_t _AdjustFileSize(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    if ((a3 + a2) <= *(a1 + 1032))
    {
      return 0;
    }

    else
    {
      result = 0;
      *(a1 + 1032) = a3 + a2;
    }
  }

  else
  {
    v5 = (*(*(a1 + 1120) + 56))(*(*(a1 + 1120) + 8), *(a1 + 1028), 0, 2);
    if (v5 == -1)
    {
      v7 = __error();
      v8 = strerror(*v7);
      _CUILog(4, "%s: lseek: %s", "int _AdjustFileSize(BOMStorage, unsigned int, unsigned int)", v8);
      return 1;
    }

    else
    {
      v6 = v5;
      result = 0;
      *(a1 + 1032) = v6;
    }
  }

  return result;
}

_DWORD *_newFreeListEntry(int a1, int a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 0;
    v4[2] = a1;
    v4[3] = a2;
  }

  else
  {
    v6 = __error();
    v7 = strerror(*v6);
    _CUILog(4, "%s: malloc: %s", "FreeListEntry _newFreeListEntry(unsigned int, unsigned int)", v7);
  }

  return v5;
}

uint64_t BOMStorageCopyToBlock(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  if (!a1)
  {
    return 1;
  }

  v4 = a2;
  if (!a2 || *(a1 + 1056) < a2 || (*(a1 + 1052) & 1) == 0)
  {
    return 1;
  }

  if (*(a1 + 1068) <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
    v9 = 0;
  }

  else
  {
    v9 = *(*(a1 + 1072) + 8 * a2 + 4);
  }

  return BOMStorageCopyToBlockRange(a1, v4, a3, a4, 0, v9);
}

uint64_t BOMStorageCopyToBlockRange(uint64_t a1, unsigned int a2, const void *a3, size_t a4, unint64_t a5, unint64_t a6)
{
  result = 1;
  if (a1 && a2 && *(a1 + 1056) >= a2 && (*(a1 + 1052) & 1) != 0)
  {
    v13 = *(a1 + 1068);
    if (v13 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", a2);
      v13 = *(a1 + 1068);
      LODWORD(v14) = -1;
    }

    else
    {
      LODWORD(v14) = *(*(a1 + 1072) + 8 * a2);
    }

    if (v13 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
      LODWORD(v15) = 0;
    }

    else
    {
      LODWORD(v15) = *(*(a1 + 1072) + 8 * a2 + 4);
      v16 = bswap32(v15);
      if ((*(a1 + 1052) & 1) == 0)
      {
        LODWORD(v15) = v16;
      }
    }

    v17 = a6 + a5;
    v18 = v15;
    v19 = v15 - (a6 + a5);
    if (v15 < a6 + a5)
    {
      v20 = *__error();
      v21 = "BOMStorageCopyToBlockRange: length extends beyond block size";
      v22 = 842;
      goto LABEL_20;
    }

    if (v15 <= a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = v15;
    }

    v23 = v15 + a4;
    if (((v15 + a4) | v15 | a4) >> 32)
    {
      v24 = BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", "BOMStorageCopyToBlockRange", "data size extends beyond block size overflow", "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 859);
      v20 = *__error();
      v21 = v24;
      v22 = 859;
      goto LABEL_20;
    }

    __len = v19;
    v25 = v23 - a6;
    if ((v23 - a6) >> 32 || HIDWORD(a6))
    {
      BOMStorageCopyToBlockRange_cold_5();
      return 1;
    }

    v49 = v14;
    if (v18 != v25 || (v14 = v14, v14 < *(a1 + 1036)))
    {
      if (v14 && v18)
      {
        (*(*(a1 + 1088) + 40))();
        v25 = v23 - a6;
      }

      if (v23 == a6)
      {
        v14 = 0;
      }

      else
      {
        v26 = v25;
        v27 = (*(*(a1 + 1088) + 48))();
        v25 = v26;
        v14 = v27;
        if (!v27)
        {
          v14 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
        }
      }

      v28 = (*(a1 + 1072) + 8 * a2);
      *v28 = v14;
      v28[1] = v25;
    }

    result = 0;
    if (v14 && v23 != a6)
    {
      v47 = v25;
      v29 = v25 + v14;
      if (HIDWORD(v29))
      {
        BOMStorageCopyToBlockRange_cold_4();
        return 1;
      }

      if (_ExpandMapAddress(a1, v29))
      {
        return 1;
      }

      if (a5 && (v30 = *(a1 + 1040)) != 0)
      {
        v31 = v49;
        memmove((v30 + v14), (v30 + v49), a5);
        v32 = a5;
      }

      else
      {
        v32 = 0;
        v31 = v49;
      }

      v33 = v17 + v31;
      v34 = __len;
      if (HIDWORD(v33))
      {
        BOMStorageCopyToBlockRange_cold_3();
        return 1;
      }

      v35 = a5 + a4 + v14;
      if (((a5 + a4) | v35) >> 32)
      {
        v36 = BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", "BOMStorageCopyToBlockRange", "unsigned 32-bit integer addition overflow", "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 922);
        v20 = *__error();
        v21 = v36;
        v22 = 922;
      }

      else
      {
        if (v18 <= a5 || v14 < v49 || v14 >= v18 + v49)
        {
          if (a4)
          {
            v39 = v32;
            memmove((*(a1 + 1040) + v14 + v32), a3, a4);
            v32 = v39 + a4;
          }

          if (v32 < v47)
          {
            v40 = v47 - v32;
            if (HIDWORD(v40))
            {
              BOMStorageCopyToBlockRange_cold_2();
              return 1;
            }

            v41 = v32;
            memmove((*(a1 + 1040) + v14 + v32), (*(a1 + 1040) + v33), v40);
            v32 = v41 + v40;
          }
        }

        else
        {
          if (HIDWORD(__len))
          {
            BOMStorageCopyToBlockRange_cold_1();
            return 1;
          }

          if (v18 != v17)
          {
            v37 = v32;
            memmove((*(a1 + 1040) + v35), (*(a1 + 1040) + v33), __len);
            v32 = v37;
            v34 = __len;
          }

          if (a4)
          {
            v38 = v32;
            memmove((*(a1 + 1040) + v14 + v32), a3, a4);
            v34 = __len;
            v32 = v38 + a4;
          }

          v32 += v34;
        }

        v42 = *(a1 + 1080);
        if (v42)
        {
          *(v42 + 4 * a2) |= 1u;
        }

        else
        {
          v43 = v32;
          v44 = BOMExceptionHandlerMessage("BOM blockShadowTable is null");
          v45 = __error();
          _BOMExceptionHandlerCall(v44, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 973, *v45);
          v32 = v43;
        }

        v46 = v47;
        if (v32 == v47)
        {
          if (*(a1 + 1028) == -1)
          {
            if ((v14 + v47) > *(a1 + 1032))
            {
              *(a1 + 1032) = v14 + v47;
            }
          }

          else
          {
            _AddToWriteCache(a1, v14, v47);
            v46 = v47;
          }

          result = _AdjustFileSize(a1, v14, v46);
          if (!result)
          {
            *(a1 + 1052) |= 0x10u;
            return result;
          }

          return 1;
        }

        v20 = *__error();
        v21 = "BOMStorageCopyToBlockRange: internal consistency error";
        v22 = 978;
      }

LABEL_20:
      _BOMExceptionHandlerCall(v21, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v22, v20);
      return 1;
    }
  }

  return result;
}

_DWORD *_dense_addFreeRange(_DWORD *result, int a2, unint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = *result;
    if (a3 < 0x10000)
    {
      v8 = *(v6 + 16);
      if (v8 <= a3)
      {
        v9 = a3 + 1;
        v10 = (8 * (a3 + 1));
        v11 = *v6;
        if (v8 <= a3)
        {
          v12 = malloc_type_realloc(v11, v10, 0x1F9D68D3uLL);
          *v6 = v12;
          bzero(&v12[8 * *(v6 + 16)], 8 * (v9 - v8));
        }

        else
        {
          *v6 = malloc_type_realloc(v11, v10, 0x2AEB1F5BuLL);
        }

        *(v6 + 16) = v9;
        v6 = *v5;
      }

      v13 = *(*v6 + 8 * a3);
      result = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
      result[2] = a2;
      result[3] = a3;
      *result = v13;
      *(*v6 + 8 * a3) = result;
    }

    else
    {
      v7 = *(v6 + 8);
      result = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
      result[2] = a2;
      result[3] = a3;
      *result = v7;
      *(v6 + 8) = result;
    }

    ++v5[2];
  }

  return result;
}

uint64_t BOMTreeCommit(uint64_t a1)
{
  if (!a1 || (*(a1 + 356) & 1) == 0)
  {
    return 0;
  }

  for (i = 32; i != 288; i += 8)
  {
    v5 = *(a1 + i);
    if (v5 && (*(v5 + 4) & 2) != 0)
    {
      _WritePage(a1, v5);
    }
  }

  _WritePage(a1, *(a1 + 24));
  v2 = 1;
  v6 = BOMStreamWithBlockID(*a1, *(a1 + 16), 0x1DuLL, 1);
  if (v6)
  {
    v7 = v6;
    BOMStreamWriteUInt32(v6, 0x74726565u);
    BOMStreamWriteUInt32(v7, 1u);
    BOMStreamWriteUInt32(v7, **(a1 + 24));
    BOMStreamWriteUInt32(v7, *(a1 + 304));
    BOMStreamWriteUInt32(v7, *(a1 + 20));
    BOMStreamWriteUInt8(v7, (*(a1 + 356) & 4) != 0);
    if ((*(a1 + 356) & 4) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 348);
    }

    BOMStreamWriteUInt32(v7, v8);
    BOMStreamWriteUInt32(v7, 0);
    if (!BOMStreamFree(v7))
    {
      v2 = 0;
      *(a1 + 356) &= ~1u;
    }
  }

  return v2;
}

uint64_t (*BOMStreamWriteUInt16(uint64_t (*result)(void *), __int16 a2))(void *)
{
  v2 = __rev16(a2);
  if (*(result + 1) == 2)
  {
    v3 = a2;
  }

  else
  {
    v3 = v2;
  }

  if (*(result + 10))
  {
    v4 = *(result + 7);
    if ((v4 + 1) <= *(result + 8))
    {
      *v4 = v3;
      *(result + 7) += 2;
      *(result + 80) |= 2u;
      return result;
    }

    v5 = BOMExceptionHandlerMessage("%s buffer overflow", "BOMStreamWriteUInt16");
    v6 = *__error();
    v7 = v5;
    v8 = 1;
    v9 = 398;
  }

  else
  {
    v10 = BOMExceptionHandlerMessage("%s write called on read-only buffer", "BOMStreamWriteUInt16");
    v6 = *__error();
    v7 = v10;
    v8 = 0;
    v9 = 396;
  }

  return _BOMExceptionHandlerCall(v7, v8, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v9, v6);
}

uint64_t _WriteRootPage(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 1120);
  }

  else
  {
    v2 = 0;
  }

  v3 = 1;
  v4 = BOMStreamWithFileAndSys(*(a1 + 1028), 0, 0x200uLL, 1, 0, v2);
  if (v4)
  {
    v5 = v4;
    BOMStreamWriteUInt32(v4, 0x424F4D53u);
    BOMStreamWriteUInt32(v5, 0x746F7265u);
    BOMStreamWriteUInt32(v5, 1u);
    BOMStreamWriteUInt32(v5, *(a1 + 1056));
    BOMStreamWriteUInt32(v5, *(a1 + 1060));
    BOMStreamWriteUInt32(v5, *(a1 + 1064));
    BOMStreamWriteUInt32(v5, *(a1 + 1096));
    BOMStreamWriteUInt32(v5, *(a1 + 1100));
    v3 = BOMStreamFree(v5);
    if ((*(v2 + 64))(*(v2 + 8), *(a1 + 1028)))
    {
      v6 = __error();
      v7 = strerror(*v6);
      _CUILog(4, "%s fsync: '%s'", "int _WriteRootPage(BOMStorage)", v7);
      return 1;
    }
  }

  return v3;
}

void _CreateMapAddress(uint64_t a1, unsigned int a2)
{
  v3 = a2 % vm_page_size;
  if (v3)
  {
    v4 = vm_page_size - v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + a2;
  v6 = (*(*(a1 + 1120) + 96))(*(*(a1 + 1120) + 8), 0, v5, 3, 4098, 0xFFFFFFFFLL, 0);
  *(a1 + 1040) = v6;
  if (v6 == -1)
  {
    v7 = __error();
    v8 = strerror(*v7);
    _CUILog(4, "%s can't mmap memory of size '%d' error: '%s'", "int _CreateMapAddress(BOMStorage, unsigned int)", v5, v8);
    *(a1 + 1040) = 0;
  }

  *(a1 + 1048) = v5;
}

uint64_t BOMStorageNewNamedBlock(uint64_t a1, const char *a2)
{
  if ((*(a1 + 1052) & 1) == 0)
  {
    return 0;
  }

  if (_tocGet(a1, a2))
  {
    _CUILog(4, "%s: block named '%s' already exists", "BOMBlockID BOMStorageNewNamedBlock(BOMStorage, const char *)", a2);
    return 0;
  }

  v4 = BOMStorageNewBlock(a1);
  v6 = strnlen(a2, 0xFFuLL);
  v7 = v6;
  if (v6 < 0xFF)
  {
    if (*(a1 + 1096))
    {
      v8 = *(a1 + 1100);
    }

    else
    {
      v8 = 4;
    }

    v9 = v6 + v8;
    v10 = v9 + 5;
    if (v9 == -5)
    {
      v11 = 0;
    }

    else
    {
      v11 = (*(*(a1 + 1088) + 48))();
      if (!v11)
      {
        v11 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
      }
    }

    _ExpandMapAddress(a1, v11 + v10);
    v12 = *(a1 + 1096);
    if (v12)
    {
      v13 = BOMStreamWithAddress(*(a1 + 1040) + v12, *(a1 + 1100), 0);
      if (!v13)
      {
        return v4;
      }

      v14 = v13;
      UInt32 = BOMStreamReadUInt32(v13);
    }

    else
    {
      UInt32 = 0;
      v14 = 0;
    }

    v16 = BOMStreamWithAddress(*(a1 + 1040) + v11, v10, 1);
    if (v16)
    {
      v17 = v16;
      BOMStreamWriteUInt32(v16, UInt32 + 1);
      if (v14)
      {
        v22 = v11;
        for (i = v10; UInt32; --UInt32)
        {
          v18 = BOMStreamReadUInt32(v14);
          UInt8 = BOMStreamReadUInt8(v14);
          v20 = UInt8;
          v21 = UInt8;
          BOMStreamReadBuffer(v14, __dst, UInt8);
          BOMStreamWriteUInt32(v17, v18);
          BOMStreamWriteUInt8(v17, v20);
          BOMStreamWriteBuffer(v17, __dst, v21);
        }

        BOMStreamFree(v14);
        if (*(a1 + 1096) && *(a1 + 1100))
        {
          (*(*(a1 + 1088) + 40))();
        }

        v10 = i;
        v11 = v22;
      }

      BOMStreamWriteUInt32(v17, v4);
      BOMStreamWriteUInt8(v17, v7);
      BOMStreamWriteBuffer(v17, a2, v7);
      BOMStreamFree(v17);
      *(a1 + 1096) = v11;
      *(a1 + 1100) = v10;
      _AdjustFileSize(a1, v11, v10);
      if (*(a1 + 1028) != -1)
      {
        _AddToWriteCache(a1, v11, v10);
      }

      *(a1 + 1052) |= 0x10u;
    }
  }

  else
  {
    _CUILog(4, "%s: name length '%s' is > %d", "void _tocSet(BOMStorage, BOMBlockID, const char *)", a2, 255);
  }

  return v4;
}

uint64_t BOMStorageNewBlock(uint64_t a1)
{
  if (!a1 || (*(a1 + 1052) & 1) == 0)
  {
    return 0;
  }

  v1 = (*(a1 + 1056) + 1);
  *(a1 + 1056) = v1;
  v3 = *(a1 + 1068);
  if (v1 >= v3)
  {
    _ExpandBlockTable(a1, v3 + 8);
  }

  return v1;
}

uint64_t _dense_allocateRange(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5 > a2)
  {
    v6 = *(*v4 + 8 * a2);
    if (v6)
    {
      v7 = v6[2];
      v8 = *v6;
      free(v6);
      *(*v4 + 8 * a2) = v8;
      --*(a1 + 8);
      return v7;
    }
  }

  LODWORD(v9) = 0;
  v10 = a2 + 1;
  while (1)
  {
    v11 = v10 + v9;
    if (v10 + v9 >= v5)
    {
      break;
    }

    v12 = *(*v4 + 8 * v11);
    v9 = (v9 + 1);
    if (v12)
    {
      v7 = v12[2];
      v13 = *v12;
      free(v12);
      *(*v4 + 8 * v11) = v13;
      goto LABEL_19;
    }
  }

  v16 = v4[1];
  v15 = v4 + 1;
  v14 = v16;
  if (!v16)
  {
    return 0;
  }

  v17 = *(v14 + 3);
  if (v17 < a2)
  {
    while (1)
    {
      v18 = v14;
      v14 = *v14;
      if (!v14)
      {
        return 0;
      }

      v17 = *(v14 + 3);
      if (v17 >= a2)
      {
        goto LABEL_15;
      }
    }
  }

  v18 = 0;
LABEL_15:
  v19 = *v14;
  v7 = *(v14 + 2);
  v9 = (v17 - a2);
  free(v14);
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v15;
  }

  *v20 = v19;
LABEL_19:
  --*(a1 + 8);
  (*(a1 + 40))(a1, (v7 + a2), v9);
  return v7;
}

uint64_t *BOMTreeNewWithName(uint64_t a1, char *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = BOMStorageNewNamedBlock(a1, a2);
  if (!v4)
  {
    return 0;
  }

  return _BOMTreeNew(a1, a2, v4, 0, 0);
}

uint64_t *_BOMTreeNew(uint64_t a1, char *a2, uint64_t a3, int a4, char a5)
{
  result = _newBOMTree(a1, a2);
  if (result)
  {
    v11 = result;
    *(result + 4) = a3;
    if ((a4 - 1) >= 0x2F)
    {
      v12 = a4;
    }

    else
    {
      v12 = 48;
    }

    if (!v12)
    {
      v12 = 4096;
    }

    *(result + 76) = v12;
    v13 = v12 - 16;
    *(result + 77) = v13 >> 3;
    *(result + 78) = (v13 >> 3) + 1;
    *(result + 79) = v13 >> 4;
    *(result + 89) = *(result + 89) & 0xFFFFFFFB | (4 * (a5 & 1));
    v14 = _NewPage(result, 0);
    v11[3] = v14;
    *(v14 + 2) |= 1u;
    *(v11 + 89) |= 1u;
    BOMTreeFree(v11);

    return _BOMTreeOpen(a1, a2, a3, 1);
  }

  return result;
}

uint64_t (*_WritePage(uint64_t a1, uint64_t a2))(void *)
{
  v4 = *(a1 + 304);
  if ((*(a1 + 356) & 4) == 0)
  {
    v5 = *(a1 + 348);
    if (v5 >= 1)
    {
      v4 += v5 * *(a2 + 16);
    }
  }

  result = BOMStreamWithBlockID(*a1, *a2, v4, 1);
  if (result)
  {
    v7 = result;
    BOMStreamWriteUInt16(result, *(a2 + 4) & 1);
    BOMStreamWriteUInt16(v7, *(a2 + 16));
    BOMStreamWriteUInt32(v7, *(a2 + 8));
    BOMStreamWriteUInt32(v7, *(a2 + 12));
    if (*(a2 + 16))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        BOMStreamWriteUInt32(v7, *(*(a2 + 24) + v8));
        BOMStreamWriteUInt32(v7, *(*(a2 + 24) + v8 + 4));
        ++v9;
        v10 = *(a2 + 16);
        v8 += 8;
      }

      while (v9 < v10);
    }

    else
    {
      v10 = 0;
    }

    BOMStreamWriteUInt32(v7, *(*(a2 + 24) + 8 * v10));
    if ((*(a1 + 356) & 4) == 0)
    {
      v11 = *(a1 + 348);
      if (v11 >= 1)
      {
        v12 = malloc_type_malloc(v11, 0xED7B97B4uLL);
        if (*(a2 + 16))
        {
          v13 = 0;
          v14 = 4;
          do
          {
            v15 = BOMStorageSizeOfBlock(*a1, *(*(a2 + 24) + v14));
            v16 = *(a1 + 348);
            if (v15 != v16)
            {
              v17 = BOMExceptionHandlerMessage("%s blockSize %d != tree->keySize %d", "_WritePage", v15, v16);
              v18 = __error();
              _BOMFatalException(v17, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 1417, *v18);
            }

            BOMStorageCopyFromBlock(*a1, *(*(a2 + 24) + v14), v12);
            BOMStreamWriteBuffer(v7, v12, *(a1 + 348));
            ++v13;
            v14 += 8;
          }

          while (v13 < *(a2 + 16));
        }

        free(v12);
      }
    }

    result = BOMStreamFree(v7);
    *(a2 + 4) &= ~2u;
  }

  return result;
}

uint64_t CUIImageIsMonochrome(CGImage *a1)
{
  ColorSpace = CGImageGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (!Model)
  {
    return 1;
  }

  memset(&srcARGB, 0, sizeof(srcARGB));
  v24 = 0;
  memset(&destB, 0, sizeof(destB));
  v20[0] = 0x2000000008;
  v20[1] = _CUIColorSpaceGetSRGB(Model, v4);
  v21 = 8194;
  v23 = 0;
  v22 = 0;
  if (!MEMORY[0x193AC74A0](&srcARGB, v20, 0, a1, 256))
  {
    v16.height = srcARGB.height;
    v16.width = srcARGB.width;
    destR.height = srcARGB.height;
    destR.width = srcARGB.width;
    destA.height = srcARGB.height;
    destA.width = srcARGB.width;
    destB.height = srcARGB.height;
    destB.width = srcARGB.width;
    v16.rowBytes = srcARGB.width;
    destR.rowBytes = srcARGB.width;
    destA.rowBytes = srcARGB.width;
    destB.rowBytes = srcARGB.width;
    destB.data = malloc_type_malloc(srcARGB.width * srcARGB.height, 0x24633C40uLL);
    destA.data = malloc_type_malloc(srcARGB.width * srcARGB.height, 0x4EC4DB72uLL);
    destR.data = malloc_type_malloc(srcARGB.width * srcARGB.height, 0x6403512CuLL);
    v16.data = malloc_type_malloc(srcARGB.width * srcARGB.height, 0xDA9A05DDuLL);
    if (!vImageConvert_ARGB8888toPlanar8(&srcARGB, &destA, &destR, &v16, &destB, 0))
    {
      height = destA.height;
      if (!destA.height)
      {
LABEL_12:
        free(srcARGB.data);
        free(destA.data);
        v5 = 1;
        goto LABEL_13;
      }

      width = destA.width;
      rowBytes = destA.rowBytes;
      v10 = v16.rowBytes;
      data = destR.data;
      v12 = destR.rowBytes;
      v11 = destA.data;
      v13 = v16.data;
      v14 = v16.width;
      while (!memcmp(v11, data, width) && !memcmp(v13, data, v14))
      {
        v13 += v10;
        data += v12;
        v11 += rowBytes;
        if (!--height)
        {
          goto LABEL_12;
        }
      }
    }

    free(srcARGB.data);
    free(destA.data);
    v5 = 0;
LABEL_13:
    free(destR.data);
    free(v16.data);
    free(destB.data);
    return v5;
  }

  return 0;
}

BOOL CSIEqualMetrics(uint64_t a1, uint64_t a2)
{
  if (!NSEqualSizes(*a1, *a2) || !NSEqualSizes(*(a1 + 16), *(a2 + 16)))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);

  return NSEqualSizes(*&v4, *&v6);
}

__CFString *CUIPlatformNameForPlatform(uint64_t a1)
{
  result = &stru_1F00D74D0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return kCUIPlatformAppleTV;
      case 4:
        return kCUIPlatformWatch;
      case 5:
        return kCUIPlatformVision;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return kCUIPlatformiOS;
    }

    else if (a1 == 2)
    {
      return kCUIPlatformMaciOS;
    }
  }

  else
  {
    return kCUIPlatformMac[0];
  }

  return result;
}

char *BOMExceptionHandlerMessage(const char *a1, ...)
{
  va_start(va, a1);
  v2 = __BOMExceptionMessageString();
  vsnprintf(v2, 0x1000uLL, a1, va);
  return v2;
}

void *__BOMExceptionMessageString()
{
  if (__BOMExceptionMessageString___onceMessage != -1)
  {
    __BOMExceptionMessageString_cold_1();
  }

  v0 = pthread_getspecific(__BOMExceptionMessageString___key);
  if (!v0)
  {
    v0 = malloc_type_calloc(0x1000uLL, 1uLL, 0x100004077774924uLL);
    __CFSetLastAllocationEventName();
    if (pthread_setspecific(__BOMExceptionMessageString___key, v0))
    {
      _CUILog(4, "__BOMExceptionMessageString couldn't pthread_setspecific");
    }
  }

  return v0;
}

id OUTLINED_FUNCTION_21_0()
{

  return [v1 countByEnumeratingWithState:v0 + 32 objects:v0 + 96 count:16];
}

id OUTLINED_FUNCTION_19_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{

  return [v43 countByEnumeratingWithState:&a43 objects:&STACK[0x360] count:{16, a6, a7, a8}];
}

id OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return [v3 appendBytes:a3 length:8];
}

id OUTLINED_FUNCTION_27_0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x258]) = a1;

  return [v1 length];
}

id OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

id OUTLINED_FUNCTION_12_1(uint64_t a1)
{

  return [v1 initWithKeyList:a1];
}

void BOMStackFree(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t *BOMStackPop(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (*result && (v2 = result[2]) != 0)
    {
      v3 = v2 - 1;
      result[2] = v3;
      result = *(v1 + 8 * v3);
      *(v1 + 8 * v3) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BOMTreeSetValue(uint64_t a1, void *a2, size_t a3, const void *a4, size_t a5)
{
  v24 = 0;
  v5 = 1;
  if (a1)
  {
    if (a2)
    {
      v11 = *(a1 + 356);
      if (a3 || (v11 & 4) != 0)
      {
        if ((v11 & 2) == 0)
        {
          _CUILog(4, "%s: BOMTree '%s' is read-only tree can't update values", "int BOMTreeSetValue(BOMTree, void *, size_t, void *, size_t)", *(a1 + 8));
          return v5;
        }

        v12 = BOMStackNew();
        if (!_findPagesForKey(a1, v12, a2, a3))
        {
          BOMStackFree(v12);
          return v5;
        }

        if (v12)
        {
          if ((*(a1 + 356) & 4) != 0)
          {
            v17 = a2;
          }

          else
          {
            v13 = BOMStackPeek(v12);
            if (!v13)
            {
              v19 = 0;
              goto LABEL_27;
            }

            v14 = v13;
            IndexForKey = _findIndexForKey(a1, v13, a2, a3, &v24);
            if (v24)
            {
              v16 = (v14[3] + 8 * IndexForKey);
              v18 = *v16;
              v17 = v16[1];
              if (v18)
              {
LABEL_17:
                if (!BOMStorageCopyToBlock(*a1, v18, a4, a5) && !_PageSetValue(a1, v12, a2, a3, v17, v18))
                {
                  if (!v24)
                  {
                    ++*(a1 + 20);
                  }

                  v5 = 0;
                  *(a1 + 356) |= 1u;
                  v19 = 1;
LABEL_27:
                  while (!BOMStackIsEmpty(v12))
                  {
                    v21 = BOMStackPop(v12);
                    *(v21 + 2) &= ~8u;
                  }

                  BOMStackFree(v12);
                  if (v19)
                  {
                    if ((*(a1 + 356) & 4) == 0)
                    {
                      v22 = *(a1 + 348);
                      if (v22 != -1)
                      {
                        if (!v22)
                        {
                          v5 = 0;
                          *(a1 + 348) = a3;
                          return v5;
                        }

                        if (v22 != a3)
                        {
                          v5 = 0;
                          *(a1 + 348) = -1;
                          return v5;
                        }
                      }
                    }

                    return 0;
                  }

                  return v5;
                }

LABEL_25:
                v19 = 0;
                v5 = 1;
                goto LABEL_27;
              }
            }

            else
            {
              v20 = BOMStorageNewBlock(*a1);
              if (!v20)
              {
                goto LABEL_25;
              }

              v17 = v20;
              if (BOMStorageCopyToBlock(*a1, v20, a2, a3))
              {
                goto LABEL_25;
              }
            }
          }

          v18 = BOMStorageNewBlock(*a1);
          if (!v18)
          {
            goto LABEL_25;
          }

          goto LABEL_17;
        }
      }
    }
  }

  return v5;
}

void **BOMStackNew()
{
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040468F112EuLL);
  if (v0)
  {
    __CFSetLastAllocationEventName();
    v0[1] = 1024;
    v1 = malloc_type_calloc(1uLL, 0x2000uLL, 0x80040B8603338uLL);
    *v0 = v1;
    if (!v1)
    {
      BOMStackFree(v0);
      v3 = BOMExceptionHandlerMessage("Allocating BOMStack failed");
      v4 = __error();
      _BOMFatalException(v3, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMStack.c", 40, *v4);
    }
  }

  return v0;
}

void BOMStackPush(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      v5 = *(a1 + 8);
      if (*(a1 + 16) + 1 >= v5)
      {
        if (v5 == 0xFFFFFFF)
        {
          v10 = BOMExceptionHandlerMessage("BOMStack is full can't grow anymore");
          v11 = __error();
          _BOMFatalException(v10, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMStack.c", 105, *v11);
        }

        v6 = 2 * v5;
        if (2 * v5 >= 0xFFFFFFF)
        {
          v6 = 0xFFFFFFFLL;
        }

        v7 = 8 * v6;
        *(a1 + 8) = v6;
        v8 = reallocf(v3, 8 * v6);
        *a1 = v8;
        if (!v8)
        {
          v12 = BOMExceptionHandlerMessage("BOMStack got blown");
          v13 = __error();
          _BOMFatalException(v12, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMStack.c", 124, *v13);
        }

        v3 = v8;
        if (v7 > 8 * v5)
        {
          bzero(&v8[8 * v5], v7 - 8 * v5);
        }
      }

      v9 = *(a1 + 16);
      *(a1 + 16) = v9 + 1;
      *(v3 + v9) = a2;
    }
  }
}

void *BOMStackPeek(void *result)
{
  if (result)
  {
    if (*result && (v1 = result[2]) != 0)
    {
      return *(*result + 8 * v1 - 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _PageSetValue(uint64_t a1, uint64_t *a2, void *a3, size_t a4, int a5, int a6)
{
  v53 = 0;
  v6 = 1;
  if (a5)
  {
    if (a6)
    {
      v13 = BOMStackPop(a2);
      if (v13)
      {
        v14 = v13;
        v15 = (*(v13 + 2) & 1) == 0;
        _invalidateIteratorsForPageID(a1, *v13);
        IndexForKey = _findIndexForKey(a1, v14, a3, a4, &v53);
        v17 = *(v14 + 24);
        if (v53)
        {
          v18 = *(v14 + 16);
        }

        else
        {
          if (*(v17 + 8 * IndexForKey + 4))
          {
            v19 = *(a1 + 356);
            if ((v19 & 8) != 0)
            {
              *(a1 + 356) = v19 & 0xFFFFFFF7;
              v17 = *(v14 + 24);
            }

            v20 = *(v14 + 16);
            v21 = v20 - IndexForKey;
            if (v20 != IndexForKey)
            {
              v22 = v20 + v15;
              v23 = *(v14 + 16);
              do
              {
                v24 = v17 + 8 * v23--;
                v25 = 8 * v22--;
                v26 = *(v17 + 8 * v22);
                *(v24 + 4) = *(v17 + 8 * v23 + 4);
                *(v17 + v25) = v26;
                --v21;
              }

              while (v21);
            }
          }

          else
          {
            LOWORD(v20) = *(v14 + 16);
          }

          *(v17 + 8 * IndexForKey + 4) = a5;
          v18 = v20 + 1;
          *(v14 + 16) = v20 + 1;
        }

        *(v17 + 8 * (IndexForKey + v15)) = a6;
        *(v14 + 4) |= 2u;
        if (*(a1 + 308) >= v18)
        {
          v6 = 0;
        }

        else
        {
          v27 = _NewPage(a1, 0);
          if (v27)
          {
            v28 = v27;
            *(v27 + 2) = *(v27 + 2) & 0xFFFC | *(v14 + 4) & 1 | 2;
            if ((*(v14 + 4) & 1) == 0 || (v29 = *v27, v30 = *v14, *(v27 + 2) = *(v14 + 8), *(v14 + 8) = v29, *(v27 + 3) = v30, (v31 = *(v27 + 2)) == 0))
            {
LABEL_22:
              if ((*(a1 + 356) & 8) != 0)
              {
                LODWORD(v34) = *(a1 + 308) - 1;
                v33 = *(v14 + 16);
              }

              else
              {
                v33 = *(v14 + 16);
                LODWORD(v34) = v33 >> 1;
              }

              v35 = *(v14 + 24);
              v36 = *(v28 + 24);
              if (v34 + 1 >= v33)
              {
                v38 = *(v28 + 16);
                v34 = v34;
                v40 = v33;
              }

              else
              {
                v34 = v34;
                v37 = v34 + 1;
                v38 = *(v28 + 16);
                do
                {
                  v39 = (v35 + 8 * v37);
                  *(v36 + 8 * v38++) = *v39;
                  *(v28 + 16) = v38;
                  *v39 = 0;
                  ++v37;
                  v40 = *(v14 + 16);
                }

                while (v37 < v40);
                LOWORD(v33) = *(v14 + 16);
              }

              v41 = 8 * v40;
              *(v36 + 8 * v38) = *(v35 + v41);
              *(v35 + v41) = 0;
              *(v14 + 16) = v33 - v38;
              v42 = v35 + 8 * v34;
              v45 = *(v42 + 4);
              v43 = (v42 + 4);
              v44 = v45;
              if ((*(v14 + 4) & 1) == 0)
              {
                *v43 = 0;
                *(v14 + 16) = v33 - v38 - 1;
              }

              _addPageToCache(a1, v28);
              if (BOMStackIsEmpty(a2))
              {
                v46 = _NewPage(a1, 0);
                v6 = 1;
                if (v46)
                {
                  v47 = v46;
                  v48 = v46[3];
                  *v48 = *v14;
                  v48[1] = v44;
                  v48[2] = *v28;
                  *(v46 + 8) = 1;
                  *(v46 + 2) |= 2u;
                  _addPageToCache(a1, v14);
                  v6 = 0;
                  *(a1 + 24) = v47;
                }
              }

              else
              {
                v6 = _PageSetValue(a1, a2, a3, a4, v44, *v28);
              }

              goto LABEL_41;
            }

            Page = _findPage(a1, v31);
            if (Page)
            {
              if (Page[3] == *v14)
              {
                Page[3] = *v28;
                *(Page + 2) |= 2u;
                goto LABEL_22;
              }

              v49 = *__error();
              v50 = "internal btree error";
              v6 = 1;
              v51 = 2210;
            }

            else
            {
              v49 = *__error();
              v50 = "missing tree page";
              v6 = 1;
              v51 = 2206;
            }

            _BOMExceptionHandlerCall(v50, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", v51, v49);
          }

          else
          {
            v6 = 1;
          }
        }

LABEL_41:
        *(v14 + 4) &= ~8u;
      }
    }
  }

  return v6;
}

void _invalidateIteratorsForPageID(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 296);
  if (v3)
  {
    v5 = BOMCFArrayMaxRange(v3);
    v7 = v6;
    v8 = *(a1 + 296);
    v9.location = v5;
    v9.length = v7;

    CFArrayApplyFunction(v8, v9, _invalidateIterator, a2);
  }
}

void _FlushWriteCache(uint64_t a1)
{
  for (i = *(a1 + 1104); i; i = *(a1 + 1104))
  {
    *(a1 + 1104) = *i;
    _WriteAddress(a1, i[2], i[3]);
    free(i);
  }

  *(a1 + 1112) = 0;
}

id OUTLINED_FUNCTION_25_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  return [v51 countByEnumeratingWithState:&a51 objects:&STACK[0x3E0] count:{16, a6, a7, a8}];
}

uint64_t CUIConvertFromTXRPixelFormat(uint64_t a1)
{
  if (a1 <= 104)
  {
    if (a1 > 59)
    {
      if (a1 == 93)
      {
        v1 = 93;
      }

      else
      {
        v1 = 0;
      }

      if (a1 == 92)
      {
        v1 = 92;
      }

      if (a1 == 90)
      {
        v1 = 90;
      }

      if (a1 == 81)
      {
        v6 = 81;
      }

      else
      {
        v6 = 0;
      }

      if (a1 == 80)
      {
        v6 = 80;
      }

      if (a1 == 72)
      {
        v6 = 72;
      }

      if (a1 <= 89)
      {
        v1 = v6;
      }

      if (a1 == 71)
      {
        v3 = 71;
      }

      else
      {
        v3 = 0;
      }

      if (a1 == 70)
      {
        v3 = 70;
      }

      if (a1 == 65)
      {
        v3 = 65;
      }

      if (a1 == 62)
      {
        v7 = 62;
      }

      else
      {
        v7 = 0;
      }

      if (a1 == 60)
      {
        v7 = 60;
      }

      if (a1 <= 64)
      {
        v3 = v7;
      }

      v5 = a1 <= 71;
    }

    else
    {
      if (a1 == 55)
      {
        v1 = 55;
      }

      else
      {
        v1 = 0;
      }

      if (a1 == 32)
      {
        v1 = 32;
      }

      if (a1 == 31)
      {
        v1 = 31;
      }

      if (a1 == 30)
      {
        v2 = 30;
      }

      else
      {
        v2 = 0;
      }

      if (a1 == 25)
      {
        v2 = 25;
      }

      if (a1 == 22)
      {
        v2 = 22;
      }

      if (a1 <= 30)
      {
        v1 = v2;
      }

      if (a1 == 20)
      {
        v3 = 20;
      }

      else
      {
        v3 = 0;
      }

      if (a1 == 12)
      {
        v3 = 12;
      }

      if (a1 == 11)
      {
        v3 = 11;
      }

      if (a1 == 10)
      {
        v4 = 10;
      }

      else
      {
        v4 = 0;
      }

      if (a1 == 1)
      {
        v4 = 1;
      }

      if (a1 <= 10)
      {
        v3 = v4;
      }

      v5 = a1 <= 21;
    }

LABEL_88:
    if (v5)
    {
      return v3;
    }

    return v1;
  }

  if (a1 > 151)
  {
    if (a1 == 555)
    {
      v1 = 555;
    }

    else
    {
      v1 = 0;
    }

    if (a1 == 553)
    {
      v1 = 553;
    }

    if (a1 == 212)
    {
      v8 = 212;
    }

    else
    {
      v8 = 0;
    }

    if (a1 == 204)
    {
      v8 = 204;
    }

    if (a1 <= 552)
    {
      v1 = v8;
    }

    if (a1 == 194)
    {
      v3 = 194;
    }

    else
    {
      v3 = 0;
    }

    if (a1 == 186)
    {
      v3 = 186;
    }

    if (a1 == 152)
    {
      v3 = 152;
    }

    v5 = a1 <= 203;
    goto LABEL_88;
  }

  v1 = 0;
  switch(a1)
  {
    case 110:
    case 112:
    case 115:
    case 125:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 140:
    case 141:
    case 142:
    case 143:
      v1 = a1;
      break;
    case 111:
    case 113:
    case 114:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 126:
    case 127:
    case 128:
    case 129:
    case 136:
    case 137:
    case 138:
    case 139:
      return v1;
    default:
      if (a1 == 105)
      {
        v1 = 105;
      }

      else
      {
        v1 = 0;
      }

      break;
  }

  return v1;
}