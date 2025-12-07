uint64_t __setCSAttributes2_block_invoke_4(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v72 = *MEMORY[0x1E69E9840];
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v6 = setThreadIdAndInfo(*(v4 + 152), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v66 = v6;
  v7 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v65 = HIDWORD(v6);
  v64 = __PAIR64__(v8, v9);
  *(v7 + 216) = 0;
  v10 = *(v7 + 312);
  v11 = *(v7 + 224);
  if (v11)
  {
    v11(*(v7 + 288));
  }

  v63 = v66;
  v62 = v65;
  v61 = v64;
  if (_setjmp(v7))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v7 + 312) = v10;
    CIOnThreadCleanUpReset(v61);
    dropThreadId(v63, 1, add_explicit + 1);
    return CICleanUpReset(v63, HIDWORD(v61));
  }

  else
  {
    v13 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v14 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(v4 + 40), 0x40000000, v13 + 1);
    v59 = HIDWORD(v14);
    v60 = v14;
    v58 = __PAIR64__(v15, v16);
    v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
    *(v17 + 216) = 0;
    v18 = *(v17 + 312);
    v19 = *(v17 + 224);
    if (v19)
    {
      v19(*(v17 + 288));
    }

    v57 = v60;
    v56 = v59;
    v55 = v58;
    if (_setjmp(v17))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v17 + 312) = v18;
      CIOnThreadCleanUpReset(v55);
      dropThreadId(v57, 1, v13 + 1);
      CICleanUpReset(v57, HIDWORD(v55));
    }

    else
    {
      v44 = v2;
      bzero(buf, 0x1000uLL);
      v20 = _SIStackAllocatorCreate(buf, 4096, indexingZone);
      if (atomic_fetch_add_explicit(*(v4 + 48), 1uLL, memory_order_relaxed) < *(v4 + 156))
      {
        v43 = v20;
        do
        {
          v53 = 0uLL;
          v54 = 0;
          v67 = *(v4 + 56);
          v68 = *(v4 + 72);
          _MDPlistArrayGetPlistObjectAtIndex();
          if (!v71)
          {
            v70 = (*buf + 55) & 0xFFFFFFFFFFFFFFF0;
          }

          v67 = v53;
          v68 = v54;
          if (_MDPlistGetPlistObjectType() == 246)
          {
            *&v51 = 0;
            v67 = v53;
            v68 = v54;
            _MDPlistDataGetBytePtr();
            _MDPlistGetRootPlistObjectFromBytes();
            v53 = v67;
            v54 = v68;
          }

          v67 = v53;
          v68 = v54;
          if (_MDPlistGetPlistObjectType() == 240)
          {
            v67 = v53;
            v68 = v54;
            Count = _MDPlistArrayGetCount();
            if ((Count - 3) <= 1)
            {
              v22 = Count;
              v51 = v53;
              v52 = v54;
              _MDPlistArrayGetPlistObjectAtIndex();
              IntValue = _MDPlistNumberGetIntValue();
              if ((IntValue & 2) == 0)
              {
                v24 = IntValue;
                v42 = *(*(v4 + 40) + 80);
                v51 = 0uLL;
                v52 = 0;
                v67 = v53;
                v68 = v54;
                _MDPlistArrayGetPlistObjectAtIndex();
                v49 = 0uLL;
                v50 = 0;
                v67 = v51;
                v68 = v52;
                if (_MDPlistDictionaryGetPlistObjectForKey())
                {
                  v67 = v53;
                  v68 = v54;
                  PlistObjectSize = _MDPlistGetPlistObjectSize();
                  v67 = v49;
                  v68 = v50;
                  v25 = _MDPlistContainerCopyCSObject();
                  if (v25)
                  {
                    v26 = v25;
                    if (CFStringGetLength(v25))
                    {
                      v47 = 0uLL;
                      v48 = 0;
                      if (v22 == 4)
                      {
                        v67 = v53;
                        v68 = v54;
                        _MDPlistArrayGetPlistObjectAtIndex();
                      }

                      if (*(v4 + 160) == 1)
                      {
                        bzero(&v67, 0x400uLL);
                        v27 = 0;
                        if (CFStringGetCString(v26, &v67, 1024, 0x8000100u))
                        {
                          v45 = 0uLL;
                          v46 = 0;
                          if (_MDPlistDictionaryGetPlistObjectForKey())
                          {
                            v27 = _MDPlistContainerCopyCSObject();
                          }
                        }
                      }

                      else
                      {
                        v27 = 0;
                      }

                      v28 = *(v4 + 104);
                      v29 = *(v4 + 112);
                      v30 = *(v4 + 120);
                      v31 = *(v4 + 128);
                      v32 = (*(*(v4 + 32) + 8) + 24);
                      v33 = *(v4 + 136);
                      v34 = *(v4 + 144);
                      v67 = v51;
                      v68 = v52;
                      v45 = v47;
                      v46 = v48;
                      v35 = processOneCS(v28, v29, v30, v31, (v24 << 16) & 0x100000 | ((v24 & 1) << 17) | v42, &v67, &v45, v27, v47, PlistObjectSize, v43, 1u, v33, v32, v34);
                      CFRelease(v26);
                      if (v27)
                      {
                        CFRelease(v27);
                      }

                      if (v44)
                      {
                        v36 = v35;
                      }

                      else
                      {
                        v36 = 0;
                      }

                      if (v36)
                      {
                        break;
                      }
                    }

                    else
                    {
                      CFRelease(v26);
                    }
                  }
                }
              }
            }
          }
        }

        while (atomic_fetch_add_explicit(*(v4 + 48), 1uLL, memory_order_relaxed) < *(v4 + 156));
      }

      v37 = threadData[9 * v57 + 1] + 320 * v56;
      *(v37 + 312) = v18;
      v38 = *(v37 + 232);
      if (v38)
      {
        v38(*(v37 + 288));
      }

      dropThreadId(v57, 0, v13 + 1);
    }

    v39 = threadData[9 * v63 + 1] + 320 * v62;
    *(v39 + 312) = v10;
    v40 = *(v39 + 232);
    if (v40)
    {
      v40(*(v39 + 288));
    }

    return dropThreadId(v63, 0, add_explicit + 1);
  }
}

uint64_t CopyUTITypeDescriptionDictionary(uint64_t a1, const __CFString *a2)
{
  pushSkipCrashState();
  v10 = 0;
  cf = 0;
  v4 = _MDBundleUtilsCopyCachedLocalizedDescriptionDictionary();
  if (!v4)
  {
    si_indexingWatchdogSuspend(*(a1 + 64));
    v6 = _CopyUTITypeInfo(a2, 0, &cf, &v10);
    si_indexingWatchdogResume(*(a1 + 64));
    if (v6)
    {
      v7 = *MEMORY[0x1E695E480];
      Length = CFStringGetLength(a2);
      MutableCopy = CFStringCreateMutableCopy(v7, Length, a2);
      si_indexingWatchdogSuspend(*(a1 + 64));
      v4 = _MDBundleUtilsCopyLocalizedDescriptionDictionary();
      si_indexingWatchdogResume(*(a1 + 64));
      CFRelease(MutableCopy);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  popSkipCrashState();
  return v4;
}

double getTimeForDateField(int *a1, uint64_t a2, char *a3)
{
  v7 = 0;
  v8 = 0;
  if (db_get_field(a1, a2, "_kMDItemInterestingDate", &v7, &v8))
  {
    v4 = 1;
  }

  else
  {
    v4 = v7 == 0;
  }

  if (v4 || *v7 != 12)
  {
    v6 = 0;
    result = -INFINITY;
  }

  else
  {
    result = *v8;
    v6 = 1;
  }

  *a3 = v6;
  if (result == -INFINITY)
  {
    return 0.0;
  }

  return result;
}

void si_indexingWatchdogSuspend(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 64));
    v2 = *(a1 + 68);
    *(a1 + 68) = v2 + 1;
    if (*(a1 + 40))
    {
      if (!v2)
      {
        v3 = *(a1 + 48);
        Current = CFAbsoluteTimeGetCurrent();
        v5 = *a1;
        if (gSILogLevels[0] >= 5)
        {
          v10 = *a1;
          v9 = Current;
          v6 = *__error();
          v7 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(a1 + 40);
            *buf = 134218752;
            v12 = v10;
            v13 = 2048;
            v14 = v8;
            v15 = 2048;
            v16 = v3;
            v17 = 2048;
            v18 = v9;
            _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "Suspending the indexing watchdog, timer:%p, delta:%llus, startTime:%.3f, suspendTime:%.3f", buf, 0x2Au);
          }

          *__error() = v6;
          Current = v9;
          v5 = v10;
        }

        *(a1 + 56) = Current;
        dispatch_suspend(v5);
      }

      os_unfair_lock_unlock((a1 + 64));
    }

    else
    {

      os_unfair_lock_unlock((a1 + 64));
    }
  }
}

uint64_t _CopyUTITypeInfo(const __CFString *a1, uint64_t a2, CFTypeRef *a3, CFURLRef *a4)
{
  if (a2 > 9)
  {
    return 0;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = UTTypeCopyDeclaration(a1);
  objc_autoreleasePoolPop(v8);
  if (!v9)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v9, *MEMORY[0x1E69637A0]);
  if (Value)
  {
    if (a3)
    {
      *a3 = CFRetain(Value);
    }

    if (a4)
    {
      v11 = objc_autoreleasePoolPush();
      *a4 = UTTypeCopyDeclaringBundleURL(a1);
      objc_autoreleasePoolPop(v11);
    }

    v12 = 1;
  }

  else
  {
    v13 = CFDictionaryGetValue(v9, *MEMORY[0x1E6963780]);
    if (!v13)
    {
      goto LABEL_16;
    }

    ValueAtIndex = v13;
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(ValueAtIndex) && CFArrayGetCount(ValueAtIndex) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    }

    v16 = CFStringGetTypeID();
    if (v16 == CFGetTypeID(ValueAtIndex))
    {
      v12 = _CopyUTITypeInfo(ValueAtIndex, a2 + 1, a3, a4);
    }

    else
    {
LABEL_16:
      v12 = 0;
    }
  }

  CFRelease(v9);
  return v12;
}

void si_indexingWatchdogResume(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 64));
    v2 = *(a1 + 68) - 1;
    *(a1 + 68) = v2;
    v3 = *(a1 + 40);
    if (v3)
    {
      if (!v2)
      {
        v4 = *(a1 + 48);
        v5 = *(a1 + 56);
        v6 = v5 - v4;
        v7 = v3;
        if (v4 <= v5 && v6 < v7)
        {
          v3 = (v7 - v6);
        }

        if (v3 <= 0x3C)
        {
          v9 = 60;
        }

        else
        {
          v9 = v3;
        }

        v10 = *a1;
        if (gSILogLevels[0] >= 5)
        {
          v15 = *(a1 + 48);
          v16 = *(a1 + 56);
          v17 = v9;
          v13 = *__error();
          v14 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218752;
            v19 = v10;
            v20 = 2048;
            v21 = v17;
            v22 = 2048;
            v23 = v15;
            v24 = 2048;
            v25 = v16;
            _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "Resuming the indexing watchdog, timer:%p, delta:%llus, startTime:%.3f, suspendTime:%.3f", buf, 0x2Au);
          }

          *__error() = v13;
          v9 = v17;
        }

        *(a1 + 40) = v9;
        Current = CFAbsoluteTimeGetCurrent();
        *(a1 + 48) = Current;
        *(a1 + 112) = Current;
        *(a1 + 104) = 1;
        v12 = dispatch_time(0, 1000000000 * v9);
        dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_resume(v10);
      }

      os_unfair_lock_unlock((a1 + 64));
    }

    else
    {

      os_unfair_lock_unlock((a1 + 64));
    }
  }
}

uint64_t db_cache_contains(uint64_t *a1, unsigned int a2, int a3)
{
  v3 = a3;
  if (a3)
  {
    pthread_rwlock_rdlock((a1 + 1));
  }

  v6 = *(a1 + 55);
  if (v6 < 1)
  {
    v11 = 0;
    if (v3)
    {
LABEL_8:
      pthread_rwlock_unlock((a1 + 1));
    }
  }

  else
  {
    v7 = a1 + 63;
    v8 = 1;
    do
    {
      v10 = *v7++;
      v9 = v10;
      v11 = v10 == a2;
      if (v8 >= v6)
      {
        break;
      }

      ++v8;
    }

    while (v9 != a2);
    if (v3)
    {
      goto LABEL_8;
    }
  }

  if (v11)
  {
LABEL_10:
    v12 = 1;
    return v12 & 1;
  }

  v13 = *(a1 + 55);
  if (v13 >= 1)
  {
    v14 = a1 + 63;
    do
    {
      v15 = *v14++;
      if (v15 == a2)
      {
        goto LABEL_10;
      }
    }

    while (--v13);
  }

  v16 = atomic_load(a1 + 62);
  if (v16 <= a2)
  {
    goto LABEL_20;
  }

  if (sdb_init_cache_onceToken != -1)
  {
    dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
  }

  if (sdb_init_cache_status == 1 && !cache_get_info_for_key())
  {
    v12 = 0;
  }

  else
  {
LABEL_20:
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t db_cache_flush_entry(unsigned int *a1, int a2, uint64_t a3)
{
  v3 = a1 + 63;
  v4 = a1[a2 + 63];
  if (!v4)
  {
    return 0;
  }

  v5 = a2;
  v6 = &a1[12 * a2];
  if (!*(v6 + 34))
  {
    return 0;
  }

  v8 = v6 + 68;
  v16[0] = 0uLL;
  v9 = atomic_load(a1 + 62);
  if (v9 > v4)
  {
    *&v16[0] = *a1;
    *(&v16[0] + 1) = v4;
    v10 = a1;
    _cache_remove(v16);
    a1 = v10;
  }

  page_cache_add(a1, v8, v3[v5], 0);
  v11 = v3[v5];
  memset(v16, 0, sizeof(v16));
  v17 = 0u;
  LODWORD(v16[0]) = v11;
  *(v16 + 8) = *v8;
  DWORD2(v16[1]) = v8[4];
  *&v17 = *(v8 + 3);
  DWORD2(v17) = v8[8];
  v18 = *(v8 + 5);
  result = (*(a3 + 16))(a3, v16);
  v14 = *(&v16[0] + 1);
  v13 = *&v16[1];
  *v8 = *(&v16[0] + 1);
  *(v8 + 1) = v13;
  v8[4] = DWORD2(v16[1]);
  *(v8 + 3) = v17;
  v8[8] = DWORD2(v17);
  *(v8 + 5) = v18;
  v3[v5] = v16[0];
  if (!v14)
  {
    v15 = result;
    free(v13);
    result = v15;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *v8 = 0u;
    v3[v5] = 0;
  }

  return result;
}

uint64_t _cache_remove(uint64_t *key)
{
  v12 = *MEMORY[0x1E69E9840];
  if (sdb_init_cache_onceToken != -1)
  {
    dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
  }

  if (sdb_init_cache_status != 1)
  {
    return 0;
  }

  result = cache_remove(sdbLargeCacheArray, key);
  if (dword_1EBF46AE8 >= 5)
  {
    v3 = result;
    v4 = *__error();
    v5 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *key;
      v7 = *(key + 2);
      v8 = 134218240;
      v9 = v6;
      v10 = 1024;
      v11 = v7;
      _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "Cache remove %p %d", &v8, 0x12u);
    }

    *__error() = v4;
    return v3;
  }

  return result;
}

double db_cache_add_page(__n128 *a1, _BYTE *a2, _BYTE *a3, unsigned __int32 a4)
{
  if (!a1[13].n128_u32[3])
  {
    LODWORD(v11) = 2;
    a1[13].n128_u32[3] = 2;
    v14 = 1;
LABEL_14:
    v15 = &a1[15].n128_u32[3];
    v16 = &a1[17];
    v11 = v11;
    while (1)
    {
      v17 = *v15++;
      if (v17 == a4)
      {
        break;
      }

      if (*v16 == a2)
      {
        v30 = __si_assert_copy_extra_332();
        v28 = v30;
        v31 = "";
        if (v30)
        {
          v31 = v30;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "page-cache.c", 1321, "dbp != cache->cache_entries[i].cache_dbps", v31);
        goto LABEL_38;
      }

      v16 += 12;
      if (!--v11)
      {
        goto LABEL_18;
      }
    }

    v27 = __si_assert_copy_extra_332();
    v28 = v27;
    v29 = "";
    if (v27)
    {
      v29 = v27;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "page-cache.c", 1320, "pgnum != cache->cache_pgnum[i]", v29);
LABEL_38:
    free(v28);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v8 = atomic_load(&a1[14].n128_u32[1]);
  v9 = 100 * v8;
  v10 = atomic_load(&a1[13].n128_u32[2]);
  LODWORD(v11) = a1[13].n128_u32[3];
  if (v9 > v10 && v11 <= 3)
  {
    if (a1[15].n128_u32[v11 + 2])
    {
      v13 = atomic_load(&a1[14].n128_u32[1]);
      LODWORD(v11) = a1[13].n128_u32[3];
      if (v13 > 10 * v11 && MEMORY[0xFFFFFC030] <= 0x32u)
      {
        LODWORD(v11) = v11 + 1;
        a1[13].n128_u32[3] = v11;
        atomic_store(0, &a1[14].n128_u32[1]);
        atomic_store(0, &a1[13].n128_u32[2]);
      }
    }
  }

  v14 = v11 - 1;
  if (v11 >= 1)
  {
    goto LABEL_14;
  }

LABEL_18:
  if ((a2[12] & 0xC) == 0)
  {
    v32 = __si_assert_copy_extra_332();
    v28 = v32;
    v33 = "";
    if (v32)
    {
      v33 = v32;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "page-cache.c", 1323, "dbp->flags & 0x0000000C", v33);
    goto LABEL_38;
  }

  v18 = &a1[3 * v14];
  v19 = v18 + 68;
  v21 = *(v18 + 34);
  v20 = *(v18 + 35);
  *(&v37 - 1) = *(v18 + 19);
  v36 = *(v18 + 73);
  if (v18[72])
  {
    v34 = __si_assert_copy_extra_332();
    v28 = v34;
    v35 = "";
    if (v34)
    {
      v35 = v34;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "page-cache.c", 1329, "entry.cache_dirty==0", v35);
    goto LABEL_38;
  }

  if (v20)
  {
    free(v20);
  }

  if (a2 == a3)
  {
    free(v21);
    v21 = a2;
  }

  else if (v21 != a2)
  {
    v22 = __si_assert_copy_extra_332();
    v23 = v22;
    v24 = "";
    if (v22)
    {
      v24 = v22;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "page-cache.c", 1351, "entry.cache_dbps == dbp", v24);
    free(v23);
    if (__valid_fs(-1))
    {
      v25 = 2989;
    }

    else
    {
      v25 = 3072;
    }

    *v25 = -559038737;
    abort();
  }

  a1[15].n128_u32[v14 + 3] = a4;
  *v19 = v21;
  *(v19 + 1) = 0;
  v19[4] = 0;
  *(v19 + 5) = v36;
  *(v19 + 3) = 0;
  v19[8] = 0;
  v19[9] = v37;
  *(v19 + 5) = 0;

  *&result = db_cache_mru(a1, v14).n128_u64[0];
  return result;
}

BOOL setupReaderOwnedWindow(int a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v20 = 0;
  v6 = *(a3 + 40);
  v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
  atomic_store(1u, v7);
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 40) = 1;
  *(v7 + 3) = 0;
  *(v7 + 4) = v6;
  v20 = v7;
  v8 = a1;
  v9 = *(a3 + 48);
  v10 = a1 << v9;
  v11 = (a1 + 1) << v9;
  *(v7 + 2) = v10;
  *(v7 + 3) = v11;
  v12 = fd_mmap(*a3, v11 - v10, 1, 1025, v10);
  *(v7 + 1) = v12;
  v13 = v12 != -1;
  if (v12 == -1)
  {
    v14 = *__error();
    v15 = *__error();
    v16 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = *(v7 + 3) - *(v7 + 2);
      v19 = *(a3 + 16);
      *buf = 136316674;
      v22 = "setupReaderOwnedWindow";
      v23 = 1024;
      v24 = 1012;
      v25 = 2048;
      v26 = a3;
      v27 = 2048;
      v28 = 0;
      v29 = 2048;
      v30 = v18;
      v31 = 1024;
      v32 = v14;
      v33 = 2048;
      v34 = v19;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: mmap(%p, offset: %llx, size: %ld) error:%d, fSize:%lld", buf, 0x40u);
    }

    *__error() = v15;
    storageWindowRelease(&v20);
  }

  else
  {
    __dmb(0xBu);
    *(a2 + 8 * v8 + 584) = v7;
    *(a2 + v8 + 12) = 1;
  }

  return v13;
}

void getattr_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

void si_fetchClientState(uint64_t a1, int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  buffer[0] = *"no bundleid";
  memset(&buffer[1], 0, 112);
  CFStringGetCString(*(a1 + 16), buffer, 128, 0x8000100u);
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = buffer;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client state fetch for %s cancelled", buf, 0xCu);
    }

    v4 = *(*(a1 + 8) + 16);
    goto LABEL_6;
  }

  v17 = 0;
  if (si_get_object_for_identifier_createParentDBO(*a1, @"com.apple.searchd", *(a1 + 16), 0, 0, 0, &v17, 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = buffer;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client state fetch for %s failed; no corresponding entry in bundle com.apple.searchd", buf, 0xCu);
    }

    v4 = *(*(a1 + 8) + 16);
LABEL_6:
    v4();
    deallocFetchClientStateCtx(a1);
    return;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *buf = 0u;
  v16 = 0;
  v5 = fasterUTF8String(*(a1 + 24), &v15, buf, 256, &v16);
  bytes = 0;
  v14 = 0;
  if (db_get_field(*(*a1 + 1192), v17, v5, &v14, &bytes))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 136315394;
      v19 = buffer;
      v20 = 2080;
      v21 = v5;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client state fetch for %s failed; no field %s in db entry", v18, 0x16u);
    }

    v12 = 0;
    v11 = 0;
    v6 = MEMORY[0x1E69E9C10];
    while (db_next_field(*(*a1 + 1192), v17, 0, &v12, &v11, 0) == 35)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 136315394;
        v19 = buffer;
        v20 = 2080;
        v21 = v11;
        _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "Client state fetch for %s failed; field present: %s", v18, 0x16u);
      }
    }

    v7 = *(*(a1 + 8) + 16);
  }

  else
  {
    v8 = *v14;
    if (v8 == 14)
    {
      v9 = CFDataCreate(*MEMORY[0x1E695E480], bytes, *(v14 + 2));
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v14 + 2);
        *v18 = 136315394;
        v19 = buffer;
        v20 = 1024;
        LODWORD(v21) = v10;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client state fetch for %s succeeded; state has length %d", v18, 0x12u);
      }

      (*(*(a1 + 8) + 16))();
      CFRelease(v9);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 136315394;
      v19 = buffer;
      v20 = 1024;
      LODWORD(v21) = v8;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client state fetch for %s succeeded; state has incorrect type %d", v18, 0x12u);
    }

    v7 = *(*(a1 + 8) + 16);
  }

  v7();
LABEL_23:
  free(v17);
  deallocFetchClientStateCtx(a1);
  if (v16 == 1)
  {
    free(v5);
  }
}

void deallocFetchClientStateCtx(const void **a1)
{
  _Block_release(a1[1]);
  CFRelease(a1[2]);
  CFRelease(a1[3]);

  free(a1);
}

uint64_t si_lqn_equals(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2 != *(a2 + 48) || *(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  if ((v2 & 0x30) != 0)
  {
    return 1;
  }

  if ((v2 & 3) != 0)
  {
    if (*a1 != *a2)
    {
      return 0;
    }

    return *(a1 + 8) == *(a2 + 8);
  }

  else
  {
    result = *(a1 + 16);
    if (result)
    {
      v4 = *(a2 + 16);
      if (!v4)
      {
        return 0;
      }

      if (result == v4)
      {
        return 1;
      }

      return db_equal_qps(result, v4);
    }
  }

  return result;
}

uint64_t db_equal_qps(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 52) != *(a2 + 52))
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v3 = *(a1 + 60);
  if (v3 != *(a2 + 60))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (((*(a2 + 32) ^ v4) & 0xFFFFFFE23FFFFFFELL) != 0)
  {
    return 0;
  }

  if (*a1 != *a2)
  {
    v6 = a1;
    v7 = a2;
    v8 = strcmp(*a1, *a2);
    a2 = v7;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      return 0;
    }
  }

  if ((v4 & 0x800000) != 0 && *(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  if ((v4 & 0xC0000) != 0 && (v4 & 0x200) == 0)
  {
    v10 = *(a1 + 40);
    if (v10 == *(a2 + 40))
    {
      v11 = memcmp(*(a1 + 288), *(a2 + 288), 8 * v10);
      return v11 == 0;
    }

    return 0;
  }

  if (*(a1 + 72) && *(a2 + 72))
  {
    v12 = *(a1 + 72);
    v13 = *(a2 + 72);
LABEL_19:
    v11 = strcmp(v12, v13);
    return v11 == 0;
  }

  if (v2 == 15)
  {
    if (*(a1 + 296) && *(a2 + 296) && *(a1 + 64) == *(a2 + 64))
    {
      v14 = -1;
      if ((v3 & 3) != 3)
      {
        v15 = (v3 >> 2) & 3;
        if (v15 != 3)
        {
          v14 = (vector_dimension_vec_sizes_15424[v3 & 3] * vector_size_elem_sizes_15423[v15]);
        }
      }

      v11 = memcmp(*(a1 + 296), *(a2 + 296), v14);
      return v11 == 0;
    }

    return 0;
  }

  if ((v2 - 11) > 1)
  {
    if ((v2 - 13) > 1)
    {
      return 0;
    }

    v21 = *(a1 + 40);
    if (v21 != *(a2 + 40))
    {
      return 0;
    }

    if (v21 < 1)
    {
      return 1;
    }

    else
    {
      v22 = *(a1 + 168);
      v23 = *(a2 + 168);
      v24 = v21 - 1;
      do
      {
        v26 = *v22++;
        v25 = v26;
        v27 = *v23++;
        v28 = strcmp(v25, v27);
        result = v28 == 0;
        v30 = v24-- != 0;
      }

      while (!v28 && v30);
    }
  }

  else
  {
    if (*(a1 + 40) != 2)
    {
      return 0;
    }

    v16 = *(a1 + 168);
    result = *v16;
    if (*v16)
    {
      v17 = v16[1];
      if (v17)
      {
        v18 = *(a2 + 168);
        v19 = *v18;
        if (*v18)
        {
          v20 = v18[1];
          if (v20)
          {
            v31 = v17;
            v32 = v20;
            if (*(a2 + 40) == 2 && !strcmp(result, v19))
            {
              v12 = v31;
              v13 = v32;
              goto LABEL_19;
            }
          }
        }
      }

      return 0;
    }
  }

  return result;
}

void SIIndexInactive(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 1192))
    {
      v3 = *(a1 + 1040);
      if (v3)
      {

        si_enqueue_work(v3, si_index_inactive, a1);
      }
    }
  }

  else
  {
    v4 = qos_class_self();
    global_queue = dispatch_get_global_queue(v4, 0);

    dispatch_async(global_queue, &__block_literal_global_538);
  }
}

void SISynchedOp(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a1 && *(a1 + 1048))
  {
    v7 = malloc_type_malloc(0x20uLL, 0x10A0040D5506429uLL);
    v7[1] = a1;
    v7[2] = a3;
    *v7 = a4;
    *(v7 + 6) = a2;
    if (a2 == 1)
    {
      v8 = delayed_op_final;
    }

    else
    {
      v8 = delayed_op0;
    }

    v9 = *(a1 + 1104);

    si_enqueue_work_with_qos(v9, 5, v8, v7);
  }

  else
  {

    a3(a4, 1);
  }
}

atomic_uint *attachJournal(atomic_uint *result)
{
  if (atomic_fetch_add(journalsEnqueued, 1u) > 15 || (v1 = result, result = *result, result[1741]) || (result = getJournalFd(result, 1, 1), (*(v1 + 8) = result) == 0))
  {
    atomic_fetch_add(journalsEnqueued, 0xFFFFFFFF);
  }

  else
  {
    v1[14] = 2696;
  }

  return result;
}

void CIPurgeTokenizers()
{
  for (i = 0; i != 4; ++i)
  {
    v1 = OSAtomicDequeue(&gIndexingTokenizerStack + i, 0);
    while (1)
    {
      v2 = OSAtomicDequeue(&gIndexingTokenizerStack + i, 0);
      if (!v2)
      {
        break;
      }

      v3 = v2;
      CITokenizerDispose(v2[1]);
      v3[1] = 0;
      OSAtomicEnqueue(&gIndexingTokenizerHeap, v3, 0);
    }

    if (v1)
    {
      OSAtomicEnqueue(&gIndexingTokenizerStack + i, v1, 0);
    }
  }
}

uint64_t _fd_close_inactive(int a1, const char *a2, char a3, int a4, __n128 a5)
{
  v45 = a1;
  v47 = *MEMORY[0x1E69E9840];
  if (gOpenLimit <= 2047)
  {
    v8 = (gOpenLimit + (gOpenLimit >> 31)) >> 1;
  }

  else
  {
    v8 = 1024;
  }

  MEMORY[0x1EEE9AC00](a5);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v13, v12);
  pthread_mutex_lock(&g_fd_lock);
  v14 = &qword_1EDD81000;
  v15 = g_fd_list;
  v16 = *(g_fd_list + 16);
  if (!v16 || ((v17 = *(v16 + 16), !a2) ? (v18 = 0) : (v18 = strlen(a2), v14 = &qword_1EDD81000), (v19 = *(g_fd_list + 4), v19 < *(g_fd_list + 8)) && (a3 & 1) != 0))
  {
    pthread_mutex_unlock(&g_fd_lock);
    return 0;
  }

  v43 = a2;
  v44 = a4;
  v20 = 0;
  v21 = 0;
  v22 = v45;
  while (1)
  {
    v23 = *(v17 + 40);
    if (v23 != -1 && !*(v17 + 36) && v19 && !*(v17 + 68) && (!v44 || (*(v17 + 56) & 2) == 0))
    {
      if (v22 != -1)
      {
        if (*(v17 + 44) != v22)
        {
          goto LABEL_14;
        }

        if (v18)
        {
          v42 = v18;
          v24 = v14;
          bzero(v46, 0x400uLL);
          v25 = fd_name(v17, v46, 0x400uLL);
          if (!v25)
          {
            v14 = v24;
            v15 = v24[14];
LABEL_33:
            v22 = v45;
            v18 = v42;
            goto LABEL_14;
          }

          v26 = strncmp(v43, v25, v42);
          v14 = v24;
          v15 = v24[14];
          if (v26)
          {
            goto LABEL_33;
          }

          v23 = *(v17 + 40);
          v22 = v45;
          v18 = v42;
        }
      }

      v27 = *(v17 + 56);
      *&v13[8 * v20] = *(v17 + 8);
      *&v10[4 * v20] = v23;
      *(v17 + 8) = 0;
      *(v17 + 40) = -1;
      *(v17 + 56) = v27 & 0xFFF5;
      v28 = v15[1];
      v15[1] = v28 - 1;
      if (v28 <= 0)
      {
        v35 = __si_assert_copy_extra_661(-1);
        v32 = v35;
        v36 = "";
        if (v35)
        {
          v36 = v35;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1380, "g_fd_list->fd_count>=0", v36);
LABEL_42:
        free(v32);
        if (__valid_fs(-1))
        {
          v34 = 2989;
        }

        else
        {
          v34 = 3072;
        }

        *v34 = -559038737;
        abort();
      }

      if (++v20 >= v8)
      {
        goto LABEL_35;
      }
    }

LABEL_14:
    if (v21 >= *v15)
    {
      v31 = __si_assert_copy_extra_661(-1);
      v32 = v31;
      v33 = "";
      if (v31)
      {
        v33 = v31;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1387, "processed++ < g_fd_list->item_count", v33);
      goto LABEL_42;
    }

    if (v17 == v16)
    {
      break;
    }

    v17 = *(v17 + 16);
    v19 = v15[1];
    ++v21;
    if (v19 < v15[2] && (a3 & 1) != 0)
    {
      goto LABEL_35;
    }
  }

  if (v21 + 1 != *v15)
  {
    v37 = __si_assert_copy_extra_661(-1);
    v38 = v37;
    v39 = "";
    if (v37)
    {
      v39 = v37;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1389, "processed == g_fd_list->item_count", v39);
    free(v38);
    if (__valid_fs(-1))
    {
      v40 = 2989;
    }

    else
    {
      v40 = 3072;
    }

    *v40 = -559038737;
    abort();
  }

LABEL_35:
  pthread_mutex_unlock(&g_fd_lock);
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      guarded_close_np();
      v13 += 8;
    }
  }

  return v20;
}

uint64_t db_rwlock_wait(uint64_t a1, signed int a2, int a3)
{
  v6 = db_rwlock_alloc_waiter(a1);
  LODWORD(v6[1].__sig) = a3;
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    *v6[1].__opaque = pthread_self();
  }

  ++*(a1 + 208);
  db_rwlock_waiter_list_enqueue_inner((a1 + 16 * a2 + 64), v6);
  do
  {
    v7 = *(a1 + 184);
    if (v7)
    {
      if ((*(a1 + 212) & 1) == 0 && *(a1 + 204) < a2)
      {
        *(a1 + 204) = a2;
        v8 = *(a1 + 176);
        v9 = qos_class_self();
        *(a1 + 176) = pthread_override_qos_class_start_np(v7, v9, 0);
        if (v8)
        {
          pthread_override_qos_class_end_np(v8);
        }
      }
    }

    result = pthread_cond_wait(v6, a1);
  }

  while (BYTE4(v6[1].__sig) != 1);
  *&v6[1].__opaque[8] = *(a1 + 168);
  *(a1 + 168) = v6;
  return result;
}

pthread_cond_t *db_rwlock_alloc_waiter(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1)
  {
    *(a1 + 168) = *&v1[1].__opaque[8];
  }

  else
  {
    v1 = malloc_type_malloc(0x48uLL, 0x10200407DFAD57DuLL);
    pthread_cond_init(v1, 0);
  }

  LODWORD(v1[1].__sig) = 0;
  BYTE4(v1[1].__sig) = 0;
  *v1[1].__opaque = 0;
  *&v1[1].__opaque[8] = 0;
  return v1;
}

void *db_rwlock_waiter_list_enqueue_inner(void *result, uint64_t a2)
{
  *(a2 + 64) = 0;
  v2 = result[1];
  if (v2)
  {
    v3 = (v2 + 64);
  }

  else
  {
    v3 = result;
    if (*result)
    {
      v4 = __si_assert_copy_extra_332();
      v5 = v4;
      v6 = "";
      if (v4)
      {
        v6 = v4;
      }

      __message_assert(v4, "sdb2_rwlock.c", 269, "list->head==0", v6);
      free(v5);
      if (__valid_fs(-1))
      {
        v7 = 2989;
      }

      else
      {
        v7 = 3072;
      }

      *v7 = -559038737;
      abort();
    }
  }

  *v3 = a2;
  result[1] = a2;
  return result;
}

void delayed_op1(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(a1 + 16))(*a1);

    free(a1);
  }

  else
  {
    if (*(a1 + 24) == 2)
    {
      v3 = delayed_op_final;
    }

    else
    {
      v3 = delayed_op2;
    }

    v4 = *(*(a1 + 8) + 1048);

    si_enqueue_barrier_with_qos(v4, 5, v3, a1);
  }
}

void releaseCommDates(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 8) = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 16) = 0;
  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 24) = 0;
  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 32) = 0;
  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 40) = 0;
  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 48) = 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 56) = 0;
}

void si_routine_protectionClassA(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

uint64_t currentCategoryCount(uint64_t a1)
{
  if (*(a1 + 2072) != 1)
  {
    return 22;
  }

  os_unfair_lock_lock(&group_assignment_lock);
  v4.location = 0;
  v4.length = 256;
  LastIndexOfBit = CFBitVectorGetLastIndexOfBit(*(a1 + 2096), v4, 1u);
  os_unfair_lock_unlock(&group_assignment_lock);
  if (LastIndexOfBit == -1)
  {
    return 1;
  }

  else
  {
    return (LastIndexOfBit + 1);
  }
}

_DWORD *clone_node_copyingkind(uint64_t a1, int a2, int *a3, unsigned int a4)
{
  v4 = a3;
  if (a4 > 1)
  {
    v8 = malloc_type_malloc(0x28uLL, 0x10A2040E651BF2BuLL);
    if (*a1 >= 4u)
    {
      v20 = __si_assert_copy_extra_332();
      v21 = v20;
      v22 = "";
      if (v20)
      {
        v22 = v20;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 228, "node->kind<=QN_FACTOR", v22);
    }

    else
    {
      v9 = v8;
      *v8 = *a1;
      v8[1] = 0;
      *(v8 + 7) = *(a1 + 14);
      v10 = 8 * a4;
      if (!(a4 >> 14) && v10 > *MEMORY[0x1E69E9AC8])
      {
        ++sTotal_4940;
      }

      v11 = malloc_type_zone_calloc(queryZone, 1uLL, v10, 0x5BAF1CEAuLL);
      if (!v11)
      {
        _log_fault_for_malloc_failure();
      }

      *(v9 + 3) = a4;
      *(v9 + 4) = v11;
      *(v9 + 13) = 0;
      v12 = *(a1 + 24);
      if (v12 < 1)
      {
        v15 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *v4;
          v4 += 2;
          if (v16 == a2)
          {
            *(*(v9 + 4) + 8 * v15) = *(*(a1 + 32) + 8 * v14);
            v9[1] |= *(*(*(a1 + 32) + 8 * v14) + 4);
            ++v15;
            v13 |= *(*(*(a1 + 32) + 8 * v14) + 13);
            *(v9 + 13) = v13;
            v12 = *(a1 + 24);
          }

          ++v14;
        }

        while (v14 < v12);
      }

      if (v15 == a4)
      {
        return v9;
      }

      v23 = __si_assert_copy_extra_332();
      v21 = v23;
      v24 = "";
      if (v23)
      {
        v24 = v23;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 244, "count==scount", v24);
    }

    free(v21);
    if (__valid_fs(-1))
    {
      v25 = 2989;
    }

    else
    {
      v25 = 3072;
    }

    *v25 = -559038737;
    abort();
  }

  v17 = *(a1 + 24);
  if (v17 < 1)
  {
    return 0;
  }

  v18 = 0;
  v9 = 0;
  do
  {
    if (a3[v18] == a2)
    {
      v9 = *(*(a1 + 32) + v18 * 4);
    }

    v18 += 2;
    --v17;
  }

  while (v17);
  return v9;
}

uint64_t do_compare(__n128 a1)
{
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v8 = v7;
  v9 = v5;
  v11 = v10;
  v12 = v4;
  v13 = v3;
  v14 = v2;
  v15 = v1;
  v88[128] = *MEMORY[0x1E69E9840];
  v16 = v2[1];
  if ((v16 & 0x20) == 0)
  {
    if ((v16 & 0x80) != 0)
    {
      v77 = 0;
      bzero(v88, 0x400uLL);
      v17 = *v14;
      goto LABEL_8;
    }

LABEL_6:
    *v84 = *(v2 + 2);
    return _db_compare_val(v1, v2, v3, (v2 + 13), v84, v4, v5, v6);
  }

  v17 = *v2;
  if ((v16 & 0x80) == 0 && v17 == 14)
  {
    goto LABEL_6;
  }

  v77 = 0;
  bzero(v88, 0x400uLL);
  if ((v16 & 0x80) != 0)
  {
LABEL_8:
    if (v17 == 11)
    {
      __s = v14 + 13;
      if (db_get_localized_string(v15, v14, v12, &__s, &v77, v9))
      {
        return 0;
      }

      if (v77)
      {
        v40 = __s;
        v41 = v77 - __s;
        if (v77 - __s > 1022)
        {
          v45 = strlen(__s);
          v42 = malloc_type_zone_malloc(queryZone, v45 + 1, 0xA4971684uLL);
          if (!v42 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *v84 = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v84, 2u);
          }

          memcpy(v42, v40, v45);
          *(v42 + v45) = 0;
          *(v42 + (v41 & 0x7FFFFFFF)) = 0;
        }

        else
        {
          v42 = v88;
          __strlcpy_chk(v88, __s, v41 + 1, 1024);
        }

        __s = v42;
      }

      v46 = *(v13 + 32);
      if ((v46 & 0x800073) != 0)
      {
        v47 = (v46 >> 4) & 3;
        if ((v46 & 0x800000) != 0)
        {
          v47 = (v46 >> 4) & 3 | ((*(v13 + 28) & 0x7F) << 8) | 0x10;
        }

        v48 = *(v13 + 256);
        if ((v46 & 2) != 0)
        {
          os_unfair_lock_lock(&s_search_reg_ex_unfair_lock);
          if (!*(v13 + 104))
          {
            v52 = icu_regex_create();
            __dmb(0xBu);
            *(v13 + 104) = v52;
          }

          os_unfair_lock_unlock(&s_search_reg_ex_unfair_lock);
          result = *(v13 + 104);
          if (result)
          {
            result = icu_regex_find();
          }
        }

        else
        {
          v49 = *(v13 + 104);
          if (v12 && !v49)
          {
            os_unfair_lock_lock(&s_search_ctx_unfair_lock);
            if (!*(v13 + 104))
            {
              v55 = icu_search_context_create_with_wildcard_limit();
              __dmb(0xBu);
              *(v13 + 104) = v55;
            }

            os_unfair_lock_unlock(&s_search_ctx_unfair_lock);
            v49 = *(v13 + 104);
          }

          if (v49)
          {
            *v84 = 0;
            *buf = 0;
            if (icu_search_match())
            {
              result = 1;
            }

            else
            {
              result = checkTranscriptions(v48, __s);
              if (result)
              {
                bzero(v84, 0x1000uLL);
                result = CIStringTokenizerResolveTranscriptions(v56);
                if (result)
                {
                  result = icu_search_match();
                }
              }
            }
          }

          else
          {
            result = matche(v48, __s, v47 | (v46 >> 4) & 4, 0, 0);
          }
        }

        if ((*(v13 + 24) - 5) <= 1)
        {
          result = result == 0;
        }
      }

      else
      {
        v50 = strcmp(__s, *(v13 + 256));
        v51 = *(v13 + 24);
        if (v50)
        {
          if (v51 == 5)
          {
            result = 1;
          }

          else
          {
            v53 = ((v51 - 4) & 0xFFFFFFFB) == 0;
            v54 = ((v51 - 3) & 0xFFFFFFFB) == 0;
            if (v50 < 0)
            {
              result = v54;
            }

            else
            {
              result = v53;
            }
          }
        }

        else
        {
          result = (v51 - 1) < 4;
        }
      }

      if (v77 && __s != v88)
      {
        v43 = result;
        v44 = __s;
LABEL_106:
        free(v44);
        return v43;
      }

      return result;
    }
  }

  __s = v14 + 13;
  if (v11)
  {
    v19 = *(v13 + 32);
    v20 = (v19 >> 25) & 1;
    v21 = (v19 >> 34) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
    LODWORD(v21) = 0;
  }

  v74 = *(v13 + 24);
  v72 = v8;
  if (dword_1EBF46AD0 >= 5)
  {
    v57 = v21;
    v58 = v20;
    v59 = *__error();
    v60 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *v84 = 67109376;
      *&v84[4] = v58;
      *&v84[8] = 1024;
      *&v84[10] = v57;
      _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, "====== do_compare check_all:%d save_indexes:%d", v84, 0xEu);
    }

    *__error() = v59;
    v17 = *v14;
    LODWORD(v20) = v58;
    LOBYTE(v21) = v57;
  }

  v22.n128_u64[1] = 0;
  v86 = 0u;
  v87 = 0u;
  *v84 = 0u;
  v85 = 0u;
  if (v17 != 11 || (~v14[1] & 0x8010) != 0)
  {
    v70 = 0;
    v23 = (v14 + 4);
    v67 = v84;
  }

  else
  {
    v76 = 64;
    v23 = &v76;
    v24 = v20;
    v25 = v21;
    v26 = copyDataForUniquedValue(v15, *__s, v84, &v76);
    LOBYTE(v21) = v25;
    LODWORD(v20) = v24;
    __s = v26;
    v67 = v26;
    v70 = v26 != v84;
  }

  v27 = *v23;
  v68 = v21;
  v69 = v20;
  if (*v23 < 1)
  {
    v34 = 0;
    v73 = 0;
LABEL_53:
    if (v70)
    {
      free(v67);
    }

    if (v69)
    {
      result = v73;
    }

    else
    {
      result = v34;
    }

    if (!(v69 & 1 | ((v68 & 1) == 0)))
    {
      result = *(v72 + 8) != 0;
    }

    if (dword_1EBF46AD0 >= 5)
    {
      v61 = result;
      v62 = *__error();
      v63 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = *v13;
        *buf = 67109634;
        *&buf[4] = v61;
        v80 = 2080;
        v81 = v64;
        v82 = 2048;
        v83 = v13;
        _os_log_impl(&dword_1C278D000, v63, OS_LOG_TYPE_DEFAULT, "====== do_compare ret:%d %s qp:%p", buf, 0x1Cu);
      }

      *__error() = v62;
      return v61;
    }

    return result;
  }

  v71 = v11;
  v28 = v12;
  v29 = 0;
  v30 = 0;
  v73 = 0;
  v31 = v20 | v21;
  v32 = __s;
  v22.n128_u64[0] = 67109376;
  while (1)
  {
    v75 = -1;
    if (!v32)
    {
      if (v31)
      {
        v34 = 0;
        v35 = 1;
        goto LABEL_28;
      }

      v38 = *(v13 + 24);
      goto LABEL_43;
    }

    v33 = _db_compare_val(v15, v14, v13, v32, &v75, v28, v9, v22);
    v34 = v33;
    v35 = v33 == 0;
    if (v31)
    {
      if (v33 && v74 != 5)
      {
        v34 = 1;
LABEL_30:
        v73 = db_eval_obj_qp_array_set_match_at_index(v71, v13, v30);
        db_eval_obj_qp_array_set_match_at_index(v72, v13, v30);
        if (dword_1EBF46AD0 >= 5)
        {
          v66 = *__error();
          v65 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v30;
            v80 = 2048;
            v81 = v13;
            _os_log_impl(&dword_1C278D000, v65, OS_LOG_TYPE_DEFAULT, "====== do_compare setting match bit:%d qp:%p", buf, 0x12u);
          }

          *__error() = v66;
        }

LABEL_31:
        ++v30;
        if ((v14[1] & 0x10) != 0)
        {
          goto LABEL_32;
        }

        goto LABEL_38;
      }

LABEL_28:
      if (!v35 || v74 != 5)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v38 = *(v13 + 24);
    if (v33)
    {
      break;
    }

LABEL_43:
    if (v38 == 5 || v38 == 2)
    {
      result = 0;
      if (!v70)
      {
        return result;
      }

      goto LABEL_66;
    }

    v34 = 0;
    if ((v14[1] & 0x10) != 0)
    {
LABEL_32:
      v36 = 4;
      v37 = __s;
      if (!__s)
      {
        goto LABEL_53;
      }

      goto LABEL_40;
    }

LABEL_38:
    v36 = v75;
    if (v75 == -1)
    {
      goto LABEL_53;
    }

    v37 = __s;
    if (!__s)
    {
      goto LABEL_53;
    }

LABEL_40:
    v32 = &v37[v36];
    __s = &v37[v36];
    v29 += v36;
    if (v29 >= v27)
    {
      goto LABEL_53;
    }
  }

  v34 = 1;
  if (v38 == 2 || v38 == 5)
  {
    if ((v14[1] & 0x10) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_38;
  }

  result = 1;
  if (v70)
  {
LABEL_66:
    v43 = result;
    v44 = v67;
    goto LABEL_106;
  }

  return result;
}

uint64_t convert_value_to_type(unsigned int a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 72);
  __endptr = v3;
  v4 = *(a2 + 24);
  if (a1 != 14)
  {
    if (v4 > 0xA)
    {
      return 22;
    }

    v6 = 1 << a1;
    if ((*(a2 + 160) & (1 << a1)) != 0)
    {
      return 0;
    }

    v7 = (a2 + 8 * a1 + 168);
    if (a1 == 11)
    {
      *v7 = v3;
      while (1)
      {
        v8 = *v3;
        if (!*v3)
        {
          break;
        }

        ++v3;
        v9 = v8 - 42;
        v10 = v9 > 0x32;
        v11 = (1 << v9) & 0x6000000200001;
        if (!v10 && v11 != 0)
        {
          *(a2 + 32) |= 1uLL;
          break;
        }
      }
    }

    else
    {
      if (a1 - 1 > 1)
      {
        if (a1 - 3 > 1)
        {
          if (a1 - 5 > 1)
          {
            if (a1 - 7 > 1)
            {
              if (a1 == 12 || a1 == 10)
              {
                v30 = a2;
                if (__PAIR64__(v3[1], *v3) == 0x7800000030)
                {
                  v31 = COERCE_DOUBLE(strtoull(v3, &__endptr, 0));
                }

                else
                {
                  v31 = strtod(v3, &__endptr);
                }

                v15 = __endptr;
                if (__endptr == *(v30 + 72))
                {
                  return 22;
                }

                a2 = v30;
                *v7 = v31;
              }

              else
              {
                if (a1 != 9)
                {
                  v32 = *__error();
                  v33 = _SILogForLogForCategory(1);
                  v34 = 2 * (dword_1EBF46AD0 < 4);
                  if (os_log_type_enabled(v33, v34))
                  {
                    *buf = 67109376;
                    *&buf[4] = a1;
                    v48 = 2048;
                    v49 = v7;
                    _os_log_impl(&dword_1C278D000, v33, v34, "convert_value_to_type: unknown data type 0x%x (val 0x%p)", buf, 0x12u);
                  }

                  *__error() = v32;
                  return 22;
                }

                v28 = a2;
                if (__PAIR64__(v3[1], *v3) == 0x7800000030)
                {
                  LODWORD(v29) = strtoul(v3, &__endptr, 0);
                }

                else
                {
                  v29 = strtof(v3, &__endptr);
                }

                v15 = __endptr;
                if (__endptr == *(v28 + 72))
                {
                  return 22;
                }

                a2 = v28;
                *v7 = v29;
              }
            }

            else
            {
              v23 = a2;
              v24 = strtoull(v3, &__endptr, 0);
              v15 = __endptr;
              v25 = *(v23 + 72);
              if (__endptr == v25)
              {
                if (strlen(*(v23 + 72)) != 4)
                {
                  return 22;
                }

                v24 = bswap32(*v25);
                v15 = __endptr + 4;
                __endptr += 4;
              }

              a2 = v23;
              v26 = *v15;
              if (*v15 && v26 != 42)
              {
                if (v26 < 0)
                {
                  v39 = v24;
                  v40 = __maskrune(v26, 0x4000uLL);
                  a2 = v23;
                  v27 = v40;
                  v24 = v39;
                }

                else
                {
                  v27 = *(MEMORY[0x1E69E9830] + 4 * v26 + 60) & 0x4000;
                }

                if (!v27)
                {
                  v41 = v24;
                  *buf = *(a2 + 72);
                  v42 = strtod(*buf, buf);
                  if (*buf <= v15)
                  {
                    v24 = v41;
                  }

                  else
                  {
                    v24 = v41;
                    if (v42 == trunc(v42))
                    {
                      v24 = v42;
                      __endptr = *buf;
                      v15 = *buf;
                    }
                  }

                  a2 = v23;
                }
              }

              *v7 = v24;
            }
          }

          else
          {
            v18 = a2;
            v19 = strtoul(v3, &__endptr, 0);
            v15 = __endptr;
            v20 = *(v18 + 72);
            if (__endptr == v20)
            {
              if (strlen(*(v18 + 72)) != 4)
              {
                return 22;
              }

              v19 = bswap32(*v20);
              v15 = __endptr + 4;
              __endptr += 4;
            }

            a2 = v18;
            v21 = *v15;
            if (*v15 && v21 != 42)
            {
              if (v21 < 0)
              {
                v35 = v19;
                v36 = __maskrune(v21, 0x4000uLL);
                a2 = v18;
                v22 = v36;
                v19 = v35;
              }

              else
              {
                v22 = *(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x4000;
              }

              if (!v22)
              {
                v37 = v19;
                *buf = *(a2 + 72);
                v38 = strtod(*buf, buf);
                if (*buf <= v15)
                {
                  v19 = v37;
                }

                else
                {
                  v19 = v37;
                  if (v38 == trunc(v38))
                  {
                    v19 = v38;
                    __endptr = *buf;
                    v15 = *buf;
                  }
                }

                a2 = v18;
              }
            }

            *v7 = v19;
          }
        }

        else
        {
          v16 = a2;
          v17 = strtoul(v3, &__endptr, 0);
          v15 = __endptr;
          if (__endptr == *(v16 + 72))
          {
            return 22;
          }

          a2 = v16;
          *v7 = v17;
        }
      }

      else
      {
        v13 = a2;
        v14 = strtol(v3, &__endptr, 0);
        v15 = __endptr;
        if (__endptr == *(v13 + 72))
        {
          return 22;
        }

        a2 = v13;
        *v7 = v14;
      }

      v43 = *v15;
      if (*v15 && v43 != 42)
      {
        if (v43 < 0)
        {
          v45 = a2;
          v44 = __maskrune(v43, 0x4000uLL);
          a2 = v45;
        }

        else
        {
          v44 = *(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x4000;
        }

        if (!v44)
        {
          return 22;
        }
      }
    }

    result = 0;
    *(a2 + 160) |= v6;
    return result;
  }

  if (v4 == 15)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _db_compare_val(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned int *a4, void *a5, uint64_t a6, int a7, __n128 a8)
{
  v11 = *a2;
  if (v11 != 14)
  {
    if (v11 == 11 && (a2[1] & 0x10) != 0)
    {
      if (a4)
      {
        v13 = *a4;
        v15 = *(a3 + 112);
        if (!v15)
        {
          v15 = malloc_type_zone_malloc(queryZone, 0x180uLL, 0xA4971684uLL);
          if (!v15)
          {
            _log_fault_for_malloc_failure();
            v15 = 0;
          }

          v16 = 0;
          *v15 = 0;
          v15[1] = 0;
          v15[2] = 0;
          *(v15 + 6) = 0;
          v15[4] = 0;
          v15[5] = 0;
          *(v15 + 12) = 0;
          v15[7] = 0;
          v15[8] = 0;
          *(v15 + 18) = 0;
          v15[10] = 0;
          v15[11] = 0;
          *(v15 + 24) = 0;
          v15[13] = 0;
          v15[14] = 0;
          *(v15 + 30) = 0;
          *(v15 + 36) = 0;
          v15[16] = 0;
          v15[17] = 0;
          v15[19] = 0;
          v15[20] = 0;
          *(v15 + 42) = 0;
          *(v15 + 48) = 0;
          v15[22] = 0;
          v15[23] = 0;
          *(v15 + 54) = 0;
          v15[25] = 0;
          v15[26] = 0;
          *(v15 + 60) = 0;
          v15[28] = 0;
          v15[29] = 0;
          *(v15 + 66) = 0;
          v15[31] = 0;
          v15[32] = 0;
          *(v15 + 72) = 0;
          v15[34] = 0;
          v15[35] = 0;
          v15[37] = 0;
          v15[38] = 0;
          *(v15 + 78) = 0;
          v15[40] = 0;
          v15[41] = 0;
          *(v15 + 84) = 0;
          v15[43] = 0;
          v15[44] = 0;
          *(v15 + 90) = 0;
          v15[46] = 0;
          v15[47] = 0;
          __dmb(0xBu);
          atomic_compare_exchange_strong_explicit((a3 + 112), &v16, v15, memory_order_relaxed, memory_order_relaxed);
          if (v16)
          {
            qp_string_id_cache_free(v15);
            v15 = *(a3 + 112);
          }
        }

        v17 = &v15[3 * ((v13 >> 8) & 0xF)];
        os_unfair_lock_lock(v17);
        v19 = (v17 + 8);
        v18 = *(v17 + 1);
        if (v18)
        {
          if ((*(v18 + 176) & 1) == 0)
          {
            v20 = *(v18 + 20);
            if (!v20 || !((*(v18 + 16) ^ v13) >> (-4 * v20)))
            {
              v21 = 28 - 4 * v20;
              v22 = *(v18 + 8 * ((v13 >> v21) & 0xF) + 48);
              if (v22)
              {
                v23 = v20 + 2;
                do
                {
                  v21 = 32 - 4 * v23;
                  v22 = *((v22 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v13 >> v21) & 0xF));
                  ++v23;
                }

                while ((v22 & 1) != 0);
              }

              if (v22 && ((*(*v22 + 16))(v22, v13, ~(-1 << v21)) & 1) != 0)
              {
                v24 = 1;
LABEL_50:
                os_unfair_lock_unlock(v17);
                *a5 = 4;
                return v24;
              }
            }
          }
        }

        v33 = (v17 + 16);
        v32 = *(v17 + 2);
        if (v32)
        {
          if ((*(v32 + 176) & 1) == 0)
          {
            v34 = *(v32 + 20);
            if (!v34 || !((*(v32 + 16) ^ v13) >> (-4 * v34)))
            {
              v35 = 28 - 4 * v34;
              v36 = *(v32 + 8 * ((v13 >> v35) & 0xF) + 48);
              if (v36)
              {
                v37 = v34 + 2;
                do
                {
                  v35 = 32 - 4 * v37;
                  v36 = *((v36 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v13 >> v35) & 0xF));
                  ++v37;
                }

                while ((v36 & 1) != 0);
              }

              if (v36 && ((*(*v36 + 16))(v36, v13, ~(-1 << v35)) & 1) != 0)
              {
                v24 = 0;
                goto LABEL_50;
              }
            }
          }
        }

        os_unfair_lock_unlock(v17);
        if (a7)
        {
          if (db_get_string_for_id_locked(a1, v13))
          {
            goto LABEL_42;
          }
        }

        else if (db_get_string_for_id(a1, v13))
        {
LABEL_42:
          v39 = db_compare_val(v38);
          os_unfair_lock_lock(v17);
          if (v39)
          {
            v40 = *v19;
            v41 = 1;
            v33 = (v17 + 8);
            v42 = 1;
            if (!*v19)
            {
              goto LABEL_48;
            }

            goto LABEL_49;
          }

LABEL_47:
          v41 = 0;
          v42 = 0;
          v40 = *v33;
          if (!*v33)
          {
LABEL_48:
            v40 = SIUINT32SetCreate(*MEMORY[0x1E695E480]);
            *v33 = v40;
            v42 = v41;
          }

LABEL_49:
          v24 = v42;
          SIValueSet<unsigned int>::SIValueSetInsert((v40 + 16), v13);
          goto LABEL_50;
        }

        os_unfair_lock_lock(v17);
        goto LABEL_47;
      }

      return 0;
    }

    goto LABEL_28;
  }

  if ((~a2[1] & 0x5020) == 0)
  {
    if (*(a3 + 24) != 15)
    {
      return 0;
    }

    result = 0;
    if (!a4 || *(a3 + 64) <= 0.0)
    {
      return result;
    }

    v26 = *a4;
    v27 = *a1;
    if (a7)
    {
      if (v27 != 1685287992)
      {
        v82 = __si_assert_copy_extra_332();
        v83 = v82;
        v84 = "";
        if (v82)
        {
          v84 = v82;
        }

        __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 398, v84);
        goto LABEL_91;
      }

      v28 = a3;
      LOBYTE(__C[0]) = 0;
      memset(__dst, 0, 24);
      v29 = *(a1 + 920);
      v30 = v26;
      v31 = 1;
    }

    else
    {
      if (v27 != 1685287992)
      {
        v85 = __si_assert_copy_extra_332();
        v83 = v85;
        v86 = "";
        if (v85)
        {
          v86 = v85;
        }

        __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 397, v86);
LABEL_91:
        free(v83);
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      v28 = a3;
      LOBYTE(__C[0]) = 0;
      memset(__dst, 0, 24);
      v29 = *(a1 + 920);
      v30 = v26;
      v31 = 0;
    }

    data_map_get_data_entry(__dst, v29, v30, __C, v31);
    if (LOBYTE(__C[0]) == 1)
    {
      v43 = LOBYTE(__dst[2]);
      v44 = BYTE1(__dst[2]);
      v45 = HIWORD(LODWORD(__dst[2]));
      v46 = HIBYTE(LODWORD(__dst[2]));
      v47 = __dst[0];
    }

    else
    {
      v46 = 0;
      LOBYTE(v45) = 0;
      v44 = 0;
      v43 = 0;
      v47 = 0;
    }

    v48 = v28;
    result = 0;
    if (!v47)
    {
      return result;
    }

    v49 = *(v28 + 60);
    if ((v49 & 3) != v44 || ((v49 >> 2) & 3) != v43)
    {
      return result;
    }

    v50 = *(v28 + 296);
    v51 = *(v48 + 64);
    if (v49 >> 25)
    {
      if ((v45 | (v46 << 8)) != v49 >> 25)
      {
        return 0;
      }
    }

    if (v44 == 2)
    {
      if (v43)
      {
        if (v43 != 1)
        {
          return 0;
        }

        v54 = 0uLL;
        v60 = -8;
        do
        {
          v61 = *v50++;
          v62 = v61;
          v63 = *v47++;
          v64 = vsubq_f16(v62, v63);
          v54 = vaddq_f16(v54, vmulq_f16(v64, v64));
          v60 += 8;
        }

        while (v60 < 0x2F8);
LABEL_79:
        _H2 = v54.i16[2];
        __asm { FCVT            S2, H2 }

        v71 = vaddv_f32(*&vcvtq_f32_f16(*v54.i8)) + _S2;
        LOWORD(_S2) = v54.i16[3];
        __asm { FCVT            S2, H2 }

        v73 = v71 + _S2;
        LOWORD(_S2) = v54.i16[4];
        __asm { FCVT            S2, H2 }

        v75 = v73 + _S2;
        LOWORD(_S2) = v54.i16[5];
        __asm { FCVT            S2, H2 }

        v77 = v75 + _S2;
        LOWORD(_S2) = v54.i16[6];
        __asm { FCVT            S2, H2 }

        _H0 = v54.i16[7];
        __asm { FCVT            S0, H0 }

        v81 = (v77 + _S2) + _S0;
        return v81 <= v51;
      }

      memcpy(__dst, v47, sizeof(__dst));
      __C[0] = 3.4028e38;
      v52 = v50;
      v53 = 768;
    }

    else
    {
      if (v44 != 1)
      {
        if (v44)
        {
          return 0;
        }

        if (v43 == 1)
        {
          v81 = _ZNK10CIVector_sIDF16_Li256EE8distanceERKS0_(v50, v47);
          return v81 <= v51;
        }

        if (v43)
        {
          return 0;
        }

        memcpy(__dst, v47, 0x400uLL);
        __C[0] = 3.4028e38;
        v52 = v50;
        v53 = 256;
        goto LABEL_82;
      }

      if (v43)
      {
        if (v43 != 1)
        {
          return 0;
        }

        v54 = 0uLL;
        v55 = -8;
        do
        {
          v56 = *v50++;
          v57 = v56;
          v58 = *v47++;
          v59 = vsubq_f16(v57, v58);
          v54 = vaddq_f16(v54, vmulq_f16(v59, v59));
          v55 += 8;
        }

        while (v55 < 0x1F8);
        goto LABEL_79;
      }

      memcpy(__dst, v47, 0x800uLL);
      __C[0] = 3.4028e38;
      v52 = v50;
      v53 = 512;
    }

LABEL_82:
    vDSP_distancesq(v52, 1, __dst, 1, __C, v53);
    v81 = __C[0];
    return v81 <= v51;
  }

LABEL_28:
  result = db_compare_val(a8);
  if ((a2[1] & 0x10) != 0)
  {
    *a5 = 4;
  }

  return result;
}

void si_sync_index_delayed0(atomic_uint *a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    v4 = *a1;
    if ((*(*a1 + 2437) & 1) == 0 && !*(a1 + 8))
    {
      attachJournal(a1);
      v4 = *v3;
    }

    si_enqueue_barrier_with_qos(*(v4 + 145), 9, si_sync_index_delayed1, v3);
    v3 = 0;
  }

  si_sync_ctx_free(v3, a2 != 0, 2716, "void si_sync_index_delayed0(si_sync_ctx *, Boolean)");
}

void delayed_op0(void *a1, int a2)
{
  if (a2)
  {
    (a1[2])(*a1);

    free(a1);
  }

  else
  {
    v3 = *(a1[1] + 1160);

    si_enqueue_barrier_with_qos(v3, 5, delayed_op1, a1);
  }
}

uint64_t db_shrink_cache(int *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v32 = *__error();
    v33 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_shrink_cache";
      *&buf[12] = 1024;
      *&buf[14] = 274;
      *&buf[18] = 1024;
      *&buf[20] = v34;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v32;
    v35 = __si_assert_copy_extra_332();
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 274, v37);
    free(v36);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if ((a1[201] & 8) != 0)
  {
    return 0;
  }

  v2 = __THREAD_SLOT_KEY[0];
  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v2 = __THREAD_SLOT_KEY[0];
  }

  v3 = pthread_getspecific(v2);
  HIDWORD(v5) = qos_class_self() - 9;
  LODWORD(v5) = HIDWORD(v5);
  v4 = v5 >> 2;
  if (v4 > 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1C2BFF8F0[v4];
  }

  v8 = pthread_mutex_lock((a1 + 146));
  if (!*(a1 + 96) && !a1[195] && (a1[199] & 1) == 0)
  {
    if (v6 > 5)
    {
LABEL_41:
      *(a1 + 96) = pthread_self();
      goto LABEL_13;
    }

    v29 = v6 - 6;
    v30 = &a1[4 * v6 + 162];
    while (!*v30)
    {
      v30 += 4;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_41;
      }
    }
  }

  db_rwlock_wait((a1 + 146), v6, 2);
LABEL_13:
  pthread_mutex_unlock((a1 + 146));
  if (v8)
  {
    v38 = *__error();
    v39 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "db2_shrink_cache";
      *&buf[12] = 1024;
      *&buf[14] = 8212;
      *&buf[18] = 1024;
      *&buf[20] = v8;
      _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
    }

    *__error() = v38;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 8212);
  }

  if (v3)
  {
    v9 = CIOnThreadCleanUpPush(v3 - 1, db_write_unlock, (a1 + 146));
  }

  else
  {
    v9 = -1;
  }

  v7 = flush_updateset_locked(a1, 1);
  if (v7)
  {
    goto LABEL_28;
  }

  v10 = *(a1 + 116);
  v40 = v9;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 0x40000000;
  v42 = __db2_shrink_cache_block_invoke;
  v43 = &__block_descriptor_tmp_77_14946;
  v44 = a1;
  *(v10 + 232) = 1;
  v11 = *(v10 + 220);
  if (v11 < 3)
  {
LABEL_26:
    v7 = 0;
    atomic_store(0, (v10 + 216));
    atomic_store(0, (v10 + 228));
    *(v10 + 220) = 2;
    goto LABEL_27;
  }

  v12 = 48 * v11;
  while (1)
  {
    v13 = v10 + 4 * v11;
    v14 = *(v13 + 248);
    if (v14)
    {
      break;
    }

LABEL_25:
    --v11;
    v12 -= 48;
    if ((v11 + 1) <= 3)
    {
      goto LABEL_26;
    }
  }

  v15 = v10 + v12;
  page_cache_add(v10, (v10 + v12 + 224), v14, 0);
  v16 = *(v13 + 248);
  memset(buf, 0, sizeof(buf));
  v46 = 0u;
  *buf = v16;
  *&buf[8] = *(v10 + v12 + 224);
  *&buf[24] = *(v10 + v12 + 240);
  *&v46 = *(v10 + v12 + 248);
  DWORD2(v46) = *(v10 + v12 + 256);
  v47 = *(v10 + v12 + 264);
  v17 = v42(v41, buf);
  v18 = *&buf[8];
  *(v15 + 224) = *&buf[8];
  v19 = *&buf[24];
  *(v15 + 240) = *&buf[24];
  *(v15 + 248) = v46;
  *(v15 + 256) = DWORD2(v46);
  *(v15 + 264) = v47;
  v20 = *buf;
  *(v13 + 248) = *buf;
  if (!v17)
  {
    if (v18 && !v19)
    {
      page_cache_add(v10, (v15 + 224), v20, 0);
      free(*(v15 + 232));
      *(v15 + 232) = 0;
      free(*(v15 + 224));
      *(v15 + 224) = 0;
      *(v13 + 248) = 0;
      *(v15 + 248) = 0;
      *(v15 + 256) = 0;
      *(v15 + 264) = 0;
    }

    goto LABEL_25;
  }

  v7 = v17;
  atomic_store(0, (v10 + 216));
  atomic_store(0, (v10 + 228));
  *(v10 + 220) = v11;
LABEL_27:
  *(v10 + 232) = 0;
  v9 = v40;
LABEL_28:
  v21 = pthread_mutex_lock((a1 + 146));
  a1[197] = 0;
  v22 = *(a1 + 95);
  *(a1 + 190) = 0u;
  v23 = a1[195] != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup((a1 + 146), v23, 0);
  pthread_mutex_unlock((a1 + 146));
  if (v22)
  {
    pthread_override_qos_class_end_np(v22);
  }

  if (v21)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 8224);
  }

  if (v3)
  {
    CIOnThreadCleanUpClearItem(v3 - 1, v9);
    v24 = &threadData[9 * (v3 - 1)];
    v27 = *(v24 + 14);
    v25 = v24 + 7;
    v26 = v27;
    if (v9 + 1 == v27)
    {
      *v25 = v26 - 1;
    }
  }

  return v7;
}

void si_sync_index_delayed2(atomic_uint **a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    v4 = *a1;
    if (*(*v3 + 2072) == 1)
    {
      flushGraphCache(v4);
      v4 = *v3;
    }

    si_indexDeleteDeferredItems(v4);
    si_enqueue_work_with_qos(*(*v3 + 130), 9, syncIndex, v3);
    v3 = 0;
  }

  si_sync_ctx_free(v3, a2 != 0, 2678, "void si_sync_index_delayed2(si_sync_ctx *, Boolean)");
}

void si_indexDeleteDeferredItems(uint64_t a1)
{
  if (*(a1 + 288))
  {
    os_unfair_lock_lock((a1 + 280));
    v2 = *(a1 + 288);
    if (v2)
    {
      si_indexDeleteByOid(a1, v2);
      __dmb(0xBu);
      v3 = *(a1 + 288);
      *(a1 + 288) = 0;
      *(a1 + 296) = v3;
      RLEOIDArrayClear(v3);
    }

    os_unfair_lock_unlock((a1 + 280));
  }
}

uint64_t _si_scheduler_suspend(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a3;
  v22 = 0;
  pthread_mutex_lock(a1[1]);
  v6 = *(a1 + 29);
  if (v6)
  {
    *(a1 + 29) = v6 + 1;
  }

  else if (quick_suspend(a1, &v22))
  {
    pthread_cond_broadcast(a1[2]);
  }

  else
  {
    v8 = *a1;
    v9 = *(a1 + 30);
    *(a1 + 30) = v9 + 1;
    if (v8)
    {
      v10 = v8;
      while (!*(v10 + 29))
      {
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      si_scheduler_do_suspend(a1, &v22);
    }

    else
    {
LABEL_11:
      if (a1[18])
      {
        v11 = 0;
      }

      else
      {
        v11 = v9 == 0;
      }

      if (v11)
      {
        atomic_fetch_add(a1 + 24, 1u);
        v12 = a1[20];
        block.tv_sec = MEMORY[0x1E69E9820];
        *&block.tv_usec = 0x40000000;
        v24 = ___scheduler_suspension_locked_block_invoke;
        v25 = &__block_descriptor_tmp_72;
        v26 = a1;
        dispatch_barrier_async(v12, &block);
      }

      while (!*(a1 + 29))
      {
        if (v8)
        {
          v13 = v8;
          while (!*(v13 + 29))
          {
            v13 = *v13;
            if (!v13)
            {
              goto LABEL_21;
            }
          }

          si_scheduler_do_suspend(a1, &v22);
          break;
        }

LABEL_21:
        block.tv_sec = 0;
        *&block.tv_usec = 0;
        v21.tv_sec = 0;
        v21.tv_nsec = 0;
        gettimeofday(&block, 0);
        v21.tv_sec = block.tv_sec + 1;
        v21.tv_nsec = 0;
        pthread_cond_timedwait(a1[2], a1[1], &v21);
      }

      v14 = qos_class_self();
      v15 = *(a1 + 50);
      if (v14 > v15)
      {
        v15 = v14;
      }

      *(a1 + 50) = v15;
    }
  }

  if (!a1[24])
  {
    a1[24] = pthread_self();
  }

  a1[22] = 0;
  *(a1 + 46) = 0;
  if (!*(a1 + 29))
  {
    v17 = __si_assert_copy_extra_661(-1);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 1807, "scheduler->suspended", v19);
    free(v18);
    if (__valid_fs(-1))
    {
      v20 = 2989;
    }

    else
    {
      v20 = 3072;
    }

    *v20 = -559038737;
    abort();
  }

  v7 = debug_token_create(a1, a2, v3);
  pthread_mutex_unlock(a1[1]);
  si_scheduler_trigger_tokens(v22);
  return v7;
}

BOOL quick_suspend(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 128));
  v4 = *(a1 + 112);
  if (v4)
  {
    os_unfair_lock_unlock((a1 + 128));
LABEL_3:
    v5 = 0;
    goto LABEL_10;
  }

  *(a1 + 116) = (*(a1 + 120) + 1);
  v6 = *(a1 + 144);
  *(a1 + 144) = 0;
  dispatch_suspend(*(a1 + 160));
  os_unfair_lock_unlock((a1 + 128));
  if (!v6)
  {
    goto LABEL_3;
  }

  v5 = 0;
  do
  {
    *(v6 + 4) = 1;
    ++*(a1 + 116);
    v7 = *(v6 + 16);
    if (*(v6 + 32))
    {
      *(v6 + 16) = v5;
      v5 = v6;
    }

    else
    {
      release_token(v6);
    }

    v6 = v7;
  }

  while (v7);
LABEL_10:
  result = v4 == 0;
  *a2 = v5;
  return result;
}

void si_storesizes(uint64_t a1, int a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1192);
  if (v3 && db_is_dirty(v3))
  {
    v6 = 22;
    if (*(a1 + 2072))
    {
      v6 = 256;
    }

    v7 = 8 * v6;
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
    v10 = v43 - v9;
    v12 = 4 * v11;
    MEMORY[0x1EEE9AC00](v8);
    v14 = v43 - v13;
    pthread_mutex_lock((a1 + 6976));
    memcpy(v10, (a1 + 7040), v7);
    memcpy(v14, (a1 + 9088), v12);
    pthread_mutex_unlock((a1 + 6976));
    indexmetadata = si_create_indexmetadata(a1, 1);
    v55 = indexmetadata;
    if (indexmetadata)
    {
      v16 = indexmetadata;
      v53 = 0;
      v54 = 0;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v18 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
      v52 = v18;
      v19 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
      v50 = v20;
      v51 = HIDWORD(v18);
      v49 = v21;
      *(v19 + 216) = 0;
      v44 = *(v19 + 312);
      v22 = *(v19 + 224);
      if (v22)
      {
        v22(*(v19 + 288));
      }

      v48 = v52;
      v47 = v51;
      v46 = v50;
      v45 = v49;
      if (_setjmp(v19))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v19 + 312) = v44;
        CIOnThreadCleanUpReset(v45);
        dropThreadId(v48, 1, add_explicit + 1);
        CICleanUpReset(v48, v46);
        v23 = v16;
LABEL_35:
        free(v23);
        return;
      }

      v24 = a2;
      if (db_get_field(*(a1 + 1192), v16, "kMDStoreAccumulatedSizes", &v54, &v53))
      {
        v26 = v7;
      }

      else
      {
        v26 = v7;
        if (*(v54 + 8) == v7 && !memcmp(v53, v10, v7))
        {
          goto LABEL_22;
        }
      }

      db_add_field(*(a1 + 1192), &v55, 1u, "kMDStoreAccumulatedSizes", 0, 0x128u, 8, v10, v25, v26);
      v16 = v55;
      updated = db_update_obj(*(a1 + 1192), v55, 12);
      if (updated)
      {
        v28 = updated;
        v43[1] = v43;
        v29 = v24;
        v30 = *__error();
        v31 = _SILogForLogForCategory(7);
        v32 = dword_1EBF46AE8 < 3;
        if (os_log_type_enabled(v31, (dword_1EBF46AE8 < 3)))
        {
          *buf = 67109120;
          v57 = v28;
          _os_log_impl(&dword_1C278D000, v31, v32, "*warn* Failed storing sizes (%d)", buf, 8u);
        }

        *__error() = v30;
        v24 = v29;
      }

      else if (v24)
      {
        db_dirty_datastore(*(a1 + 1192));
      }

LABEL_22:
      if (db_get_field(*(a1 + 1192), v16, "kMDStoreAccumulatedCounts", &v54, &v53))
      {
        v34 = v12;
      }

      else
      {
        v34 = v12;
        if (*(v54 + 8) == v12)
        {
          v35 = v16;
          if (!memcmp(v53, v14, v12))
          {
LABEL_32:
            v41 = threadData[9 * v48 + 1] + 320 * v47;
            *(v41 + 312) = v44;
            v42 = *(v41 + 232);
            if (v42)
            {
              v42(*(v41 + 288));
            }

            dropThreadId(v48, 0, add_explicit + 1);
            v23 = v35;
            goto LABEL_35;
          }
        }
      }

      db_add_field(*(a1 + 1192), &v55, 1u, "kMDStoreAccumulatedCounts", 0, 0x128u, 6, v14, v33, v34);
      v35 = v55;
      v36 = db_update_obj(*(a1 + 1192), v55, 12);
      if (v36)
      {
        v37 = v36;
        v38 = *__error();
        v39 = _SILogForLogForCategory(7);
        v40 = dword_1EBF46AE8 < 3;
        if (os_log_type_enabled(v39, (dword_1EBF46AE8 < 3)))
        {
          *buf = 67109120;
          v57 = v37;
          _os_log_impl(&dword_1C278D000, v39, v40, "*warn* Failed storing sizes (%d)", buf, 8u);
        }

        *__error() = v38;
      }

      else if (v24)
      {
        db_dirty_datastore(*(a1 + 1192));
      }

      goto LABEL_32;
    }
  }
}

BOOL db_is_dirty(int *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *a1;
      *buf = 136315650;
      v17 = "db_is_dirty";
      v18 = 1024;
      v19 = 257;
      v20 = 1024;
      v21 = v12;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v10;
    v13 = __si_assert_copy_extra_332();
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 257, v15);
    free(v14);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (a1[1])
  {
    return 0;
  }

  v1 = *(a1 + 116);
  pthread_rwlock_rdlock((v1 + 8));
  v2 = *(v1 + 220);
  if (v2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v3 = (v1 + 288);
    v4 = 1;
    do
    {
      v6 = *v3;
      v3 += 12;
      v5 = v6;
      v7 = v6 != 0;
      if (v4 >= v2)
      {
        break;
      }

      ++v4;
    }

    while (!v5);
  }

  pthread_rwlock_unlock((v1 + 8));
  return v7;
}

uint64_t db_perform_callback(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *a1;
      *buf = 136315650;
      v33 = "db_perform_callback";
      v34 = 1024;
      v35 = 325;
      v36 = 1024;
      v37 = v26;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v24;
    v27 = __si_assert_copy_extra_332();
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 325, v29);
    free(v28);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v6 = __THREAD_SLOT_KEY[0];
  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v6 = __THREAD_SLOT_KEY[0];
  }

  v7 = pthread_getspecific(v6);
  HIDWORD(v9) = qos_class_self() - 9;
  LODWORD(v9) = HIDWORD(v9);
  v8 = v9 >> 2;
  if (v8 > 6)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_1C2BFF8F0[v8];
  }

  v11 = pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_10:
    db_rwlock_wait(a1 + 584, v10, 2);
    goto LABEL_11;
  }

  if (v10 <= 5)
  {
    v21 = v10 - 6;
    v22 = (a1 + 16 * v10 + 648);
    while (!*v22)
    {
      v22 += 2;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_27;
      }
    }

    goto LABEL_10;
  }

LABEL_27:
  *(a1 + 768) = pthread_self();
LABEL_11:
  pthread_mutex_unlock((a1 + 584));
  if (v11)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v33 = "db2_perform_callback";
      v34 = 1024;
      v35 = 13229;
      v36 = 1024;
      v37 = v11;
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
    }

    *__error() = v30;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13229);
  }

  if (v7)
  {
    v12 = CIOnThreadCleanUpPush(v7 - 1, db_write_unlock, a1 + 584);
  }

  else
  {
    v12 = -1;
  }

  a2(a3);
  v13 = pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v14 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v15 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v15, 0);
  result = pthread_mutex_unlock((a1 + 584));
  if (v14)
  {
    result = pthread_override_qos_class_end_np(v14);
  }

  if (v13)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13234);
  }

  if (v7)
  {
    result = CIOnThreadCleanUpClearItem(v7 - 1, v12);
    v17 = &threadData[9 * (v7 - 1)];
    v20 = *(v17 + 14);
    v18 = v17 + 7;
    v19 = v20;
    if (v12 + 1 == v20)
    {
      *v18 = v19 - 1;
    }
  }

  return result;
}

uint64_t _copyRemappings(void *a1)
{
  v2 = *(*a1 + 2368);
  if (v2)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v2);
  }

  else
  {
    Copy = 0;
  }

  a1[1] = Copy;
  return 0;
}

uint64_t si_set_property(uint64_t result, const void *a2, const void *a3, int a4, int a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (result)
  {
    v5 = result;
    if (*(result + 1192))
    {
      if ((*(result + 828) & 4) == 0)
      {
        pthread_mutex_lock((result + 1504));
        v10 = *(v5 + 1496);
        if (!v10 || (a4 & 1) != 0 || (a5 & 1) != 0)
        {
          if (si_create_propertydict(v5, &v17, 1))
          {
            Value = CFDictionaryGetValue(*(v5 + 1496), a2);
            if (Value != a3 && (!a3 || !Value || !CFEqual(Value, a3)))
            {
              v14 = *(v5 + 1496);
              if (!a3 || *MEMORY[0x1E695E738] == a3)
              {
                CFDictionaryRemoveValue(v14, a2);
              }

              else
              {
                CFDictionarySetValue(v14, a2, a3);
              }

              *(v5 + 2460) = 1;
              if (a4)
              {
                _si_store_property_cache(v5, &v17, 1);
              }

              if (a5)
              {
                db_dirty_datastore(*(v5 + 1192));
              }
            }

            free(v17);
          }

          else
          {
            v15 = *__error();
            v16 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v19 = "si_set_property";
              v20 = 1024;
              v21 = 17484;
              _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: Couldn't get index property dictionary", buf, 0x12u);
            }

            *__error() = v15;
          }
        }

        else
        {
          v11 = CFDictionaryGetValue(v10, a2);
          if (v11 != a3 && (!a3 || !v11 || !CFEqual(v11, a3)))
          {
            v12 = *(v5 + 1496);
            if (!a3 || *MEMORY[0x1E695E738] == a3)
            {
              CFDictionaryRemoveValue(v12, a2);
            }

            else
            {
              CFDictionarySetValue(v12, a2, a3);
            }

            *(v5 + 2460) = 1;
          }
        }

        return pthread_mutex_unlock((v5 + 1504));
      }
    }
  }

  return result;
}

BOOL si_create_propertydict(uint64_t a1, char **a2, uint64_t a3)
{
  if (!a2 && *(a1 + 1496) || (indexmetadata = si_create_indexmetadata(a1, a3)) == 0)
  {
    v7 = (a1 + 1496);
    return *v7 != 0;
  }

  v6 = indexmetadata;
  v7 = (a1 + 1496);
  if (!*(a1 + 1496))
  {
    v31 = 0;
    v32 = 0;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v9 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
    v30 = v9;
    v10 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
    v29 = HIDWORD(v9);
    v28 = __PAIR64__(v11, v12);
    *(v10 + 216) = 0;
    v13 = *(v10 + 312);
    v14 = *(v10 + 224);
    if (v14)
    {
      v14(*(v10 + 288));
    }

    v27 = v30;
    v26 = v29;
    v25 = v28;
    if (!_setjmp(v10))
    {
      if (db_get_field(*(a1 + 1192), v6, "kMDStoreProperties", &v32, &v31))
      {
        v15 = *__error();
        v16 = _SILogForLogForCategory(0);
        v17 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v16, v17))
        {
          *v24 = 0;
          _os_log_impl(&dword_1C278D000, v16, v17, "Creating index property dictionary", v24, 2u);
        }

        *__error() = v15;
        *v7 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      else
      {
        v18 = *MEMORY[0x1E695E480];
        v19 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v31, *(v32 + 8), *MEMORY[0x1E695E498]);
        if (v19)
        {
          v20 = v19;
          *v7 = CFPropertyListCreateWithData(v18, v19, 1uLL, 0, 0);
          CFRelease(v20);
        }
      }

      v21 = threadData[9 * v27 + 1] + 320 * v26;
      *(v21 + 312) = v13;
      v22 = *(v21 + 232);
      if (v22)
      {
        v22(*(v21 + 288));
      }

      dropThreadId(v27, 0, add_explicit + 1);
      if (a2)
      {
        goto LABEL_11;
      }

LABEL_23:
      free(v6);
      return *v7 != 0;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v24, 2u);
    }

    *(v10 + 312) = v13;
    CIOnThreadCleanUpReset(v25);
    dropThreadId(v27, 1, add_explicit + 1);
    CICleanUpReset(v27, HIDWORD(v25));
  }

  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_11:
  *a2 = v6;
  return *v7 != 0;
}

int8x16_t si_sync_ctx_create_with_defer_fd(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x90uLL, 0x10B00402663C8FFuLL);
  if (a1)
  {
    v4->i64[0] = a1;
    v4[4].i64[1] = a2;
    v4[5].i64[1] = *(a1 + 2128);
    v6 = *(a1 + 2360);
    if (v6)
    {
      v4[2].i64[0] = v6[9].i64[0];
      result = vextq_s8(*v6, *v6, 8uLL);
      v4[1] = result;
    }
  }

  return result;
}

void si_sync_ctx_free(atomic_uint **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a1[8])
    {
      atomic_fetch_add(journalsEnqueued, 0xFFFFFFFF);
      fd_release(a1[8]);
    }

    v6 = a1[9];
    if (v6)
    {
      fd_release(v6);
    }

    si_power_info_cleanup((a1 + 13), *a1, a2);
    v7 = a1[5];
    if (v7)
    {
      v8 = a1[6];
      a1[5] = 0;
      a1[6] = 0;
      (v7)(v8, a2);
    }

    free(a1);
  }
}

void flush_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

void **si_index_inactive(void **result, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v2 = result;
    v3 = db_shrink_cache(result[149]);
    if (v3)
    {
      si_makeUnavailable(v2, v3, 0, 5, "Failure in db_shrink_cache at si_index_inactivate");
    }

    CIPurgeTokenizers();
    SILanguageModelPurge();
    _MDBundleUtilsClearCache();
    if ((v2[823] & 0x10) == 0 && (*(v2 + 2437) & 1) == 0 && *(v2 + 371) >= 2)
    {
      v4.n128_f64[0] = CFAbsoluteTimeGetCurrent() - *(v2 + 183);
      if (v4.n128_f64[0] > 300.0)
      {
        v5 = 0;
        v6 = v2[173];
        while (v5 < v6[2])
        {
          v7 = *(*v6 + 8 * v5);
          v8 = atomic_load((v7 + 36));
          if ((v8 & 2) == 0)
          {
            v9 = v7 + 12288;
            if (*(v9 + 2915) & 1) == 0 && (*(v9 + 3376))
            {
              SISyncIndex(v2);
              goto LABEL_25;
            }
          }

          ++v5;
        }

        if (*(v2 + 372))
        {
          bzero(v21, 0x400uLL);
          v10 = *__error();
          v11 = _SILogForLogForCategory(0);
          v12 = 2 * (gSILogLevels[0] < 4);
          if (os_log_type_enabled(v11, v12))
          {
            v13 = fcntl(*(v2 + 8), 50, v21);
            if (v21[0])
            {
              v14 = v13 < 0;
            }

            else
            {
              v14 = 1;
            }

            if (v14)
            {
              v15 = 0;
            }

            else
            {
              v15 = v21;
            }

            *buf = 136315138;
            v20 = v15;
            _os_log_impl(&dword_1C278D000, v11, v12, "flushing idle index at %s.", buf, 0xCu);
          }

          *__error() = v10;
          doFastFlushIndex(v2);
          *(v2 + 372) = 0;
        }
      }
    }

LABEL_25:
    add_explicit = atomic_fetch_add_explicit(v2 + 371, 1u, memory_order_relaxed);
    if (add_explicit)
    {
      if (add_explicit >= 1 && g_fd_list != 0)
      {
        _fd_close_inactive(*(v2 + 8), 0, 0, *(v2 + 8) == -1, v4);
      }
    }

    else if ((v2[823] & 0x10) == 0 && (*(v2 + 2434) & 1) == 0 && (*(v2 + 2437) & 1) == 0 && (v2[259] & 1) == 0)
    {
      *(v2 + 372) = 1;
    }

    v18 = 240;
    do
    {
      result = slab_cleanup(v18);
      v18 = (v18 + 1);
    }

    while (v18 != 255);
  }

  return result;
}

void si_sync_index_delayed1(atomic_uint **a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    si_enqueue_barrier_with_qos(*(*a1 + 131), 9, si_sync_index_delayed2, a1);
    v3 = 0;
  }

  si_sync_ctx_free(v3, a2 != 0, 2689, "void si_sync_index_delayed1(si_sync_ctx *, Boolean)");
}

void flushGraphCache(uint64_t a1)
{
  memset(__src, 0, sizeof(__src));
  os_unfair_lock_lock((a1 + 328));
  v52 = a1;
  v2 = *(a1 + 656);
  v3 = *(a1 + 336);
  v4 = *MEMORY[0x1E695E480];
  if (v3)
  {
    *&__src[0] = CFBagCreateCopy(*MEMORY[0x1E695E480], v3);
    CFBagRemoveAllValues(*(a1 + 336));
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    *(&__src[0] + 1) = CFBagCreateCopy(v4, v5);
    CFBagRemoveAllValues(*(a1 + 344));
  }

  v6 = *(a1 + 352);
  if (v6)
  {
    *&__src[1] = CFBagCreateCopy(v4, v6);
    CFBagRemoveAllValues(*(a1 + 352));
  }

  v7 = *(a1 + 360);
  if (v7)
  {
    *(&__src[1] + 1) = CFBagCreateCopy(v4, v7);
    CFBagRemoveAllValues(*(a1 + 360));
  }

  v8 = *(a1 + 368);
  if (v8)
  {
    *&__src[2] = CFBagCreateCopy(v4, v8);
    CFBagRemoveAllValues(*(a1 + 368));
  }

  v9 = *(a1 + 376);
  if (v9)
  {
    *(&__src[2] + 1) = CFBagCreateCopy(v4, v9);
    CFBagRemoveAllValues(*(a1 + 376));
  }

  v10 = *(a1 + 384);
  if (v10)
  {
    *&__src[3] = CFBagCreateCopy(v4, v10);
    CFBagRemoveAllValues(*(a1 + 384));
  }

  v11 = *(a1 + 392);
  if (v11)
  {
    *(&__src[3] + 1) = CFBagCreateCopy(v4, v11);
    CFBagRemoveAllValues(*(a1 + 392));
  }

  v12 = *(a1 + 400);
  if (v12)
  {
    *&__src[4] = CFBagCreateCopy(v4, v12);
    CFBagRemoveAllValues(*(a1 + 400));
  }

  v13 = *(a1 + 408);
  if (v13)
  {
    *(&__src[4] + 1) = CFBagCreateCopy(v4, v13);
    CFBagRemoveAllValues(*(a1 + 408));
  }

  v14 = *(a1 + 416);
  if (v14)
  {
    *&__src[5] = CFBagCreateCopy(v4, v14);
    CFBagRemoveAllValues(*(a1 + 416));
  }

  v15 = *(a1 + 424);
  if (v15)
  {
    *(&__src[5] + 1) = CFBagCreateCopy(v4, v15);
    CFBagRemoveAllValues(*(a1 + 424));
  }

  v16 = *(a1 + 432);
  if (v16)
  {
    *&__src[6] = CFBagCreateCopy(v4, v16);
    CFBagRemoveAllValues(*(a1 + 432));
  }

  v17 = *(a1 + 440);
  if (v17)
  {
    *(&__src[6] + 1) = CFBagCreateCopy(v4, v17);
    CFBagRemoveAllValues(*(a1 + 440));
  }

  v18 = *(a1 + 448);
  if (v18)
  {
    *&__src[7] = CFBagCreateCopy(v4, v18);
    CFBagRemoveAllValues(*(a1 + 448));
  }

  v19 = *(a1 + 456);
  if (v19)
  {
    *(&__src[7] + 1) = CFBagCreateCopy(v4, v19);
    CFBagRemoveAllValues(*(a1 + 456));
  }

  v20 = *(a1 + 464);
  if (v20)
  {
    *&__src[8] = CFBagCreateCopy(v4, v20);
    CFBagRemoveAllValues(*(a1 + 464));
  }

  v21 = *(a1 + 472);
  if (v21)
  {
    *(&__src[8] + 1) = CFBagCreateCopy(v4, v21);
    CFBagRemoveAllValues(*(a1 + 472));
  }

  v22 = *(a1 + 480);
  if (v22)
  {
    *&__src[9] = CFBagCreateCopy(v4, v22);
    CFBagRemoveAllValues(*(a1 + 480));
  }

  v23 = *(a1 + 488);
  if (v23)
  {
    *(&__src[9] + 1) = CFBagCreateCopy(v4, v23);
    CFBagRemoveAllValues(*(a1 + 488));
  }

  v24 = *(a1 + 496);
  if (v24)
  {
    *&__src[10] = CFBagCreateCopy(v4, v24);
    CFBagRemoveAllValues(*(a1 + 496));
  }

  v25 = *(a1 + 504);
  if (v25)
  {
    *(&__src[10] + 1) = CFBagCreateCopy(v4, v25);
    CFBagRemoveAllValues(*(a1 + 504));
  }

  v26 = *(a1 + 512);
  if (v26)
  {
    *&__src[11] = CFBagCreateCopy(v4, v26);
    CFBagRemoveAllValues(*(a1 + 512));
  }

  v27 = *(a1 + 520);
  if (v27)
  {
    *(&__src[11] + 1) = CFBagCreateCopy(v4, v27);
    CFBagRemoveAllValues(*(a1 + 520));
  }

  v28 = *(a1 + 528);
  if (v28)
  {
    *&__src[12] = CFBagCreateCopy(v4, v28);
    CFBagRemoveAllValues(*(a1 + 528));
  }

  v29 = *(a1 + 536);
  if (v29)
  {
    *(&__src[12] + 1) = CFBagCreateCopy(v4, v29);
    CFBagRemoveAllValues(*(a1 + 536));
  }

  v30 = *(a1 + 544);
  if (v30)
  {
    *&__src[13] = CFBagCreateCopy(v4, v30);
    CFBagRemoveAllValues(*(a1 + 544));
  }

  v31 = *(a1 + 552);
  if (v31)
  {
    *(&__src[13] + 1) = CFBagCreateCopy(v4, v31);
    CFBagRemoveAllValues(*(a1 + 552));
  }

  v32 = *(a1 + 560);
  if (v32)
  {
    *&__src[14] = CFBagCreateCopy(v4, v32);
    CFBagRemoveAllValues(*(a1 + 560));
  }

  v33 = *(a1 + 568);
  if (v33)
  {
    *(&__src[14] + 1) = CFBagCreateCopy(v4, v33);
    CFBagRemoveAllValues(*(a1 + 568));
  }

  v34 = *(a1 + 576);
  if (v34)
  {
    *&__src[15] = CFBagCreateCopy(v4, v34);
    CFBagRemoveAllValues(*(a1 + 576));
  }

  v35 = *(a1 + 584);
  if (v35)
  {
    *(&__src[15] + 1) = CFBagCreateCopy(v4, v35);
    CFBagRemoveAllValues(*(a1 + 584));
  }

  v36 = *(a1 + 592);
  if (v36)
  {
    *&__src[16] = CFBagCreateCopy(v4, v36);
    CFBagRemoveAllValues(*(a1 + 592));
  }

  v37 = *(a1 + 600);
  if (v37)
  {
    *(&__src[16] + 1) = CFBagCreateCopy(v4, v37);
    CFBagRemoveAllValues(*(a1 + 600));
  }

  v38 = *(a1 + 608);
  if (v38)
  {
    *&__src[17] = CFBagCreateCopy(v4, v38);
    CFBagRemoveAllValues(*(a1 + 608));
  }

  v39 = *(a1 + 616);
  if (v39)
  {
    *(&__src[17] + 1) = CFBagCreateCopy(v4, v39);
    CFBagRemoveAllValues(*(a1 + 616));
  }

  v40 = *(a1 + 624);
  if (v40)
  {
    *&__src[18] = CFBagCreateCopy(v4, v40);
    CFBagRemoveAllValues(*(a1 + 624));
  }

  v41 = *(a1 + 632);
  if (v41)
  {
    *(&__src[18] + 1) = CFBagCreateCopy(v4, v41);
    CFBagRemoveAllValues(*(a1 + 632));
  }

  v42 = *(a1 + 640);
  if (v42)
  {
    *&__src[19] = CFBagCreateCopy(v4, v42);
    CFBagRemoveAllValues(*(a1 + 640));
  }

  v43 = *(a1 + 648);
  if (v43)
  {
    *(&__src[19] + 1) = CFBagCreateCopy(v4, v43);
    CFBagRemoveAllValues(*(a1 + 648));
  }

  *(a1 + 656) = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  os_unfair_lock_unlock((a1 + 328));
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
    if (sContactsIndex == a1)
    {
      if (Count)
      {
        CFDictionaryApplyFunction(v2, flushGraphCacheApply, __src);
      }
    }

    else if (sContactsIndex && Count)
    {
      v45 = malloc_type_malloc(0x150uLL, 0xE0040D1B6A99DuLL);
      memcpy(v45 + 1, __src, 0x140uLL);
      *v45 = v2;
      v46 = sContactsIndex;
      v45[41] = sContactsIndex;
      memset(__src, 0, sizeof(__src));
      v52 = 0;
      si_enqueue_work(*(v46 + 1104), indexContactGraphData, v45);
      goto LABEL_89;
    }

    CFRelease(v2);
  }

LABEL_89:
  v47 = __src[0];
  v48 = __src[1];
  v49 = __src[2];
  v50 = __src[3];
  releaseCommDates(&v47);
  v47 = __src[4];
  v48 = __src[5];
  v49 = __src[6];
  v50 = __src[7];
  releaseCommDates(&v47);
  v47 = __src[8];
  v48 = __src[9];
  v49 = __src[10];
  v50 = __src[11];
  releaseCommDates(&v47);
  v47 = __src[12];
  v48 = __src[13];
  v49 = __src[14];
  v50 = __src[15];
  releaseCommDates(&v47);
  v47 = __src[16];
  v48 = __src[17];
  v49 = __src[18];
  v50 = __src[19];
  releaseCommDates(&v47);
}

void delayed_op2(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(a1 + 16))(*a1);

    free(a1);
  }

  else
  {
    if (*(a1 + 24) == 3)
    {
      v3 = delayed_op_final;
    }

    else
    {
      v3 = delayed_op3;
    }

    v4 = *(*(a1 + 8) + 1040);

    si_enqueue_work_with_qos(v4, 5, v3, a1);
  }
}

void syncIndex(uint64_t a1, int a2)
{
  v229 = *MEMORY[0x1E69E9840];
  if (a2)
  {
LABEL_185:
    v13 = a2 != 0;
    v14 = a1;
    v15 = 2605;
    goto LABEL_186;
  }

  v4 = *a1;
  v5 = *a1;
  if (*(a1 + 139) == 1)
  {
    *(v5 + 1480) = 0;
  }

  if (!*(a1 + 128) && !*(a1 + 104))
  {
    v28 = *(v5 + 2360);
    if (v28)
    {
      v29 = *(v28 + 64);
      if (v29)
      {
        *(a1 + 104) = v29(*(v28 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 2155, "void syncIndex(si_sync_ctx *, Boolean)");
      }
    }
  }

  v6 = *(a1 + 112);
  if (!v6 || !xpc_activity_should_defer(v6))
  {
    v181 = *(a1 + 16);
    v16 = *(v5 + 1192);
    v182 = *(a1 + 32);
    v183 = v16;
    v184 = v5;
    v185 = 0;
    BYTE2(v185) = *(a1 + 138);
    v17 = *(v5 + 1384);
    v186 = *(v5 + 1392);
    v187 = v17;
    v18 = os_transaction_create();
    atomic_fetch_add(v4 + 363, 1u);
    v19 = _si_scheduler_suspend(*(v5 + 872), "SpotlightIndex.c", 2139);
    atomic_fetch_add(v4 + 363, 0xFFFFFFFF);
    pthread_mutex_lock((v4 + 392));
    v180 = 0;
    v179 = 0;
    if (!fd_setDir(*(v5 + 32), &v179))
    {
LABEL_180:
      if (g_fd_list)
      {
        _fd_close_inactive(*(v5 + 32), 0, 0, *(v5 + 32) == -1, v20);
      }

      pthread_mutex_unlock((v4 + 392));
      if (!**(v5 + 6592))
      {
        si_scheduler_resume(*(v5 + 872), v19, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 2600);
      }

      os_release(v18);
      goto LABEL_185;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v178 = 0;
    v177 = 0;
    v176 = 0;
    v22 = setThreadIdAndInfo(*(v5 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
    v178 = v22;
    v176 = v24;
    v177 = __PAIR64__(HIDWORD(v22), v23);
    v25 = threadData[9 * v22 + 1] + 320 * HIDWORD(v22);
    *(v25 + 216) = 0;
    v26 = *(v25 + 312);
    v27 = *(v25 + 224);
    if (v27)
    {
      v27(*(v25 + 288));
    }

    v175 = v178;
    v174 = HIDWORD(v177);
    v173 = __PAIR64__(v177, v176);
    if (_setjmp(v25))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.st_dev) = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
      }

      *(v25 + 312) = v26;
      CIOnThreadCleanUpReset(v173);
      dropThreadId(v175, 1, add_explicit + 1);
      CICleanUpReset(v175, HIDWORD(v173));
LABEL_178:
      v116 = v179;
      MEMORY[0x1C6921200](v179);
      if ((v116 & 0x80000000) == 0)
      {
        close(v116);
      }

      goto LABEL_180;
    }

    v172 = 0;
    v171 = 0;
    v170 = 0;
    v161 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v30 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(v5 + 1192), 0x40000000, v161 + 1);
    v172 = v30;
    v170 = v32;
    v171 = __PAIR64__(HIDWORD(v30), v31);
    v33 = threadData[9 * v30 + 1] + 320 * HIDWORD(v30);
    *(v33 + 216) = 0;
    v160 = *(v33 + 312);
    v34 = *(v33 + 224);
    v35 = v33;
    if (v34)
    {
      v34(*(v33 + 288));
    }

    v169 = v172;
    v168 = HIDWORD(v171);
    v167 = __PAIR64__(v171, v170);
    if (_setjmp(v35))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.st_dev) = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
      }

      v35[78] = v160;
      CIOnThreadCleanUpReset(v167);
      dropThreadId(v169, 1, v161 + 1);
      CICleanUpReset(v169, HIDWORD(v167));
LABEL_175:
      v114 = threadData[9 * v175 + 1] + 320 * v174;
      *(v114 + 312) = v26;
      v115 = *(v114 + 232);
      if (v115)
      {
        v115(*(v114 + 288));
      }

      dropThreadId(v175, 0, add_explicit + 1);
      goto LABEL_178;
    }

    v164 = v19;
    v162 = v26;
    v163 = add_explicit;
    if (gSILogLevels[0] >= 5)
    {
      v150 = *__error();
      v151 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.st_dev) = 0;
        _os_log_impl(&dword_1C278D000, v151, OS_LOG_TYPE_DEFAULT, "Starting sync!", &buf, 2u);
      }

      *__error() = v150;
    }

    v36 = *(v5 + 60);
    if (v36 == 1)
    {
      v37 = "cs_priority";
    }

    else if (v36 == 3)
    {
      v37 = "cs_mail";
    }

    else
    {
      if (v36)
      {
        v38 = 2;
      }

      else
      {
        v38 = (v36 >> 1) - 1;
      }

      if (v38 >= 7)
      {
        v37 = "cs_default";
      }

      else
      {
        v37 = off_1E8196C28[v38];
      }
    }

    v39 = v37;
    v40 = *(v5 + 2481);
    v41 = *__error();
    v42 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(a1 + 56);
      if ((v40 - 1) > 3u)
      {
        v44 = "unknown";
      }

      else
      {
        v44 = off_1E8192938[(v40 - 1)];
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = v39;
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = v43;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = v44;
      _os_log_impl(&dword_1C278D000, v42, OS_LOG_TYPE_DEFAULT, "[%s] sync start, origin: %d state: %s", &buf, 0x1Cu);
    }

    *__error() = v41;
    _si_store_property_cache(v5, 0, 1);
    if (v40 == 4 && *(v5 + 2481) != 4)
    {
      v45 = *__error();
      v46 = _SILogForLogForCategory(11);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        buf.st_dev = 136315394;
        *&buf.st_mode = v39;
        WORD2(buf.st_ino) = 2080;
        *(&buf.st_ino + 6) = "clean";
        _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "[%s] property cache only change: %s", &buf, 0x16u);
      }

      *__error() = v45;
    }

    v159 = v39;
    si_storesizes(v5, 1);
    v47 = si_copyRemappingMetadata(v5);
    si_set_property(v5, @"kIndexRemappingData", v47, 1, 0);
    CFRelease(v47);
    v48 = MEMORY[0x1E695E480];
    if (*(v5 + 2408))
    {
      v49 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v4 + 602);
      si_set_property(v5, @"database.recoverscantime", v49, 1, 0);
      CFRelease(v49);
    }

    if (*(v5 + 2072) == 1)
    {
      v50 = *(v5 + 2088);
      v51 = *v48;
      if (v50)
      {
        Copy = CFDictionaryCreateCopy(*v48, v50);
        si_set_property(v5, @"GroupAssignments", Copy, 1, 0);
        CFRelease(Copy);
      }

      if (*(a1 + 88))
      {
        v53 = CFNumberCreate(v51, kCFNumberSInt64Type, (a1 + 88));
        if (v53)
        {
          v54 = v53;
          si_set_property(v5, @"JournalSerialNumber", v53, 1, 0);
          CFRelease(v54);
        }
      }

      *&buf.st_dev = *(v5 + 2136);
      v55 = CFNumberCreate(v51, kCFNumberSInt64Type, &buf);
      if (v55)
      {
        v56 = v55;
        si_set_property(v5, @"ConsumedJournalSerialNumber", v55, 1, 0);
        CFRelease(v56);
      }
    }

    pthread_mutex_lock(&schlock);
    v57 = *(v5 + 2376);
    *(v5 + 2376) = 0;
    pthread_mutex_unlock(&schlock);
    v58 = *(v5 + 1416);
    if (v58 && (v59 = *(v58 + 88)) != 0 && !*(v58 + 240))
    {
      v60 = v59(v58, *(v58 + 24));
    }

    else
    {
      v60 = 0;
    }

    if ((*(v5 + 2481) & 4) == 0 || (*(a1 + 96) & 1) != 0 || *(v5 + 6880) | v57)
    {
      v61 = 1;
    }

    else
    {
      v83 = *(a1 + 64);
      if (!v83 || (memset(&buf, 0, sizeof(buf)), !fd_stat(v83, &buf)) && !buf.st_size)
      {
        if (!*(a1 + 72))
        {
          v117 = *__error();
          v118 = _SILogForLogForCategory(11);
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            buf.st_dev = 136315138;
            *&buf.st_mode = v159;
            _os_log_impl(&dword_1C278D000, v118, OS_LOG_TYPE_DEFAULT, "[%s] clean -- skip sync", &buf, 0xCu);
          }

          *__error() = v117;
          v63 = 2;
          v62 = 1;
          goto LABEL_71;
        }
      }

      v61 = 2;
    }

    v62 = 0;
    v63 = v61;
LABEL_71:
    if (*(v5 + 6880))
    {
      v64 = *(v4 + 6892) ^ 1;
    }

    else
    {
      v64 = 1;
    }

    v158 = v64;
    theArray = v57;
    v65 = v60;
    if (v60)
    {
LABEL_75:
      v66 = v63;
      pthread_mutex_lock(&schlock);
      v67 = *(v5 + 2376);
      if (v67)
      {
        v230.length = CFArrayGetCount(theArray);
        v230.location = 0;
        CFArrayAppendArray(v67, theArray, v230);
      }

      pthread_mutex_unlock(&schlock);
      if (v65 == 28)
      {
        v88 = 1;
        v26 = v162;
      }

      else
      {
        v26 = v162;
        if (v65 == 89)
        {
LABEL_163:
          v105 = *(v5 + 6880);
          v19 = v164;
          add_explicit = v163;
          if (!((v105 == 0) | v158 & 1))
          {
            *(v5 + 6880) = 0;
            db_release_datastore_no_sync(v105);
            delete_index_recovery_files(*(v5 + 32));
            v106 = *__error();
            v107 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.st_dev) = 0;
              _os_log_impl(&dword_1C278D000, v107, OS_LOG_TYPE_DEFAULT, "Recovery Complete!", &buf, 2u);
            }

            *__error() = v106;
            v26 = v162;
          }

          v108 = *(a1 + 40);
          if (v108)
          {
            v109 = *(a1 + 48);
            *(a1 + 40) = 0;
            *(a1 + 48) = 0;
            v108(v109, (v180 & 1) == 0);
          }

          if (gSILogLevels[0] >= 5)
          {
            v152 = *__error();
            v153 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.st_dev) = 0;
              _os_log_impl(&dword_1C278D000, v153, OS_LOG_TYPE_DEFAULT, "Finished sync!", &buf, 2u);
            }

            *__error() = v152;
            v19 = v164;
            v26 = v162;
            add_explicit = v163;
          }

          v110 = *__error();
          v111 = _SILogForLogForCategory(11);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            buf.st_dev = 136315138;
            *&buf.st_mode = v159;
            _os_log_impl(&dword_1C278D000, v111, OS_LOG_TYPE_DEFAULT, "[%s] sync complete", &buf, 0xCu);
          }

          *__error() = v110;
          creationTouchFileUnlink(*(v5 + 32));
          v112 = threadData[9 * v169 + 1] + 320 * v168;
          *(v112 + 312) = v160;
          v113 = *(v112 + 232);
          if (v113)
          {
            v113(*(v112 + 288));
          }

          dropThreadId(v169, 0, v161 + 1);
          goto LABEL_175;
        }

        if ((atomic_load_explicit(v4 + 2439, memory_order_acquire) & 1) == 0)
        {
          if (SIIsAppleInternal_onceToken != -1)
          {
            dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
          }

          if (SIIsAppleInternal_internal)
          {
            if (!atomic_fetch_add_explicit(syncIndex__crashCount, 1u, memory_order_relaxed))
            {
              v68 = CFStringCreateWithFormat(*v48, 0, @"syncIndex, error:%d, step:%d", v65, v66);
              getpid();
              SISimulateCrashForPid(v66, v68);
              if (v68)
              {
                CFRelease(v68);
              }
            }
          }
        }

        if (v65 == 1 || v65 == 13)
        {
          v88 = 0;
        }

        else
        {
          v88 = 2;
        }
      }

      si_makeUnavailable(v5, v65, v88, 2, "sync err");
      goto LABEL_163;
    }

    if (v62)
    {
      v69 = *(a1 + 16);
      if (v69)
      {
        memset(&buf, 0, 96);
        v69(*(a1 + 32), &buf);
      }

      v70 = *(a1 + 24);
      if (v70)
      {
        memset(&buf, 0, 96);
        v70(*(a1 + 32), 0, &buf);
      }
    }

    else
    {
      v71 = *(v5 + 2360);
      if (v71)
      {
        v72 = *(v71 + 48);
        if (v72)
        {
          v72(*(v71 + 144));
        }
      }

      v73 = *v48;
      v74 = CFNumberCreate(*v48, kCFNumberIntType, v4 + 586);
      v75 = CFNumberCreate(v73, kCFNumberIntType, v4 + 587);
      si_set_property(v5, @"kMDSIndexSyncCount", v74, 1, 1);
      si_set_property(v5, @"kMDSIndexDeferSyncCount", v75, 1, 1);
      CFRelease(v74);
      CFRelease(v75);
      v76 = *(v5 + 6592);
      *&buf.st_dev = xmmword_1F427BAA0;
      *&buf.st_uid = *&off_1F427BAB0;
      buf.st_atimespec = xmmword_1F427BAC0;
      buf.st_mtimespec = *off_1F427BAD0;
      buf.st_ctimespec.tv_sec = &v181;
      v65 = _ContentIndexSyncIndexBulk((v4 + 300), v186, v187, 0, 0, &buf, v76, lowDiskSpaceCallback, v5);
      if (!atomic_load(v4 + 1722))
      {
        v166[0] = MEMORY[0x1E69E9820];
        v166[1] = 0x40000000;
        v166[2] = __syncIndex_block_invoke;
        v166[3] = &__block_descriptor_tmp_655;
        v166[4] = v5;
        ContentIndexListsApply(v186, v187, v166);
      }

      v78 = *(v5 + 2360);
      if (v78)
      {
        v79 = *(v78 + 56);
        if (v79)
        {
          v79(*(v78 + 144));
        }
      }

      if (v65)
      {
        v63 = 3;
        goto LABEL_75;
      }
    }

    v80 = *(a1 + 64);
    if (v80 || (v80 = *(a1 + 72)) != 0)
    {
      v81 = *(v80 + 44);
    }

    else
    {
      v81 = -1;
    }

    v156 = v81;
    if (*(v5 + 2072) != 1)
    {
      goto LABEL_125;
    }

    if (_os_feature_enabled_impl())
    {
      v82 = 1;
      goto LABEL_126;
    }

    if (!_os_feature_enabled_impl())
    {
      goto LABEL_125;
    }

    v82 = 0;
    if ((*(v5 + 829) & 0x10) != 0 || !v156)
    {
LABEL_126:
      v86 = *(a1 + 64);
      if (!v86)
      {
        goto LABEL_147;
      }

      memset(v228, 0, sizeof(v228));
      v227 = 0u;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      memset(&buf, 0, sizeof(buf));
      fd_name(v86, &buf, 0xFFuLL);
      if (*(v5 + 6960) < 1)
      {
        if (v4[1736])
        {
          goto LABEL_147;
        }
      }

      else if (*&buf.st_dev == 0x416C616E72756F6ALL && LODWORD(buf.st_ino) == 779252852)
      {
        __endptr[0] = 0;
        if (*(v5 + 6960) == strtoll((&buf | 0xC), __endptr, 0))
        {
LABEL_147:
          v94 = *(a1 + 72);
          if (v94)
          {
            SIActivityJournalUnlinkJournal(v4 + 548, v94);
            if (v82)
            {
              fd_make_readonly(*(a1 + 72));
            }

            if (*(a1 + 56))
            {
              v95 = *(a1 + 56);
            }

            else
            {
              v95 = 2430;
            }

            _fd_unlink_with_origin(*(a1 + 72), v95);
            memset(v228, 0, sizeof(v228));
            v227 = 0u;
            v225 = 0u;
            v226 = 0u;
            v223 = 0u;
            v224 = 0u;
            memset(&buf, 0, sizeof(buf));
            v96 = *__error();
            v97 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              v98 = fd_name(*(a1 + 72), &buf, 0xFFuLL);
              LODWORD(__endptr[0]) = 136315394;
              *(__endptr + 4) = v159;
              WORD2(__endptr[1]) = 2080;
              *(&__endptr[1] + 6) = v98;
              _os_log_impl(&dword_1C278D000, v97, OS_LOG_TYPE_DEFAULT, "[%s] unlink %s", __endptr, 0x16u);
            }

            *__error() = v96;
            __strncat_chk();
            unlinkat(v156, &buf, 0);
            v99 = *__error();
            v100 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__endptr[0]) = 136315394;
              *(__endptr + 4) = v159;
              WORD2(__endptr[1]) = 2080;
              *(&__endptr[1] + 6) = &buf;
              _os_log_impl(&dword_1C278D000, v100, OS_LOG_TYPE_DEFAULT, "[%s] unlink %s", __endptr, 0x16u);
            }

            *__error() = v99;
          }

          goto LABEL_158;
        }
      }

      SIActivityJournalUnlinkJournal(v4 + 548, *(a1 + 64));
      if (v82)
      {
        fd_make_readonly(*(a1 + 64));
      }

      if (*(a1 + 56))
      {
        v89 = *(a1 + 56);
      }

      else
      {
        v89 = 2417;
      }

      _fd_unlink_with_origin(*(a1 + 64), v89);
      v90 = *__error();
      v91 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__endptr[0]) = 136315394;
        *(__endptr + 4) = v159;
        WORD2(__endptr[1]) = 2080;
        *(&__endptr[1] + 6) = &buf;
        _os_log_impl(&dword_1C278D000, v91, OS_LOG_TYPE_DEFAULT, "[%s] unlink %s", __endptr, 0x16u);
      }

      *__error() = v90;
      __strncat_chk();
      unlinkat(v156, &buf, 0);
      v92 = *__error();
      v93 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__endptr[0]) = 136315394;
        *(__endptr + 4) = v159;
        WORD2(__endptr[1]) = 2080;
        *(&__endptr[1] + 6) = &buf;
        _os_log_impl(&dword_1C278D000, v93, OS_LOG_TYPE_DEFAULT, "[%s] unlink %s", __endptr, 0x16u);
      }

      *__error() = v92;
      goto LABEL_147;
    }

    bzero(&buf, 0x400uLL);
    if ((fcntl(v156, 50, &buf) & 0x80000000) == 0)
    {
      if (LOBYTE(buf.st_dev))
      {
        v84 = strlen(&buf);
        snprintf(&buf + v84, 1024 - v84, "/%s", "skg_");
        v85 = open(&buf, 256);
        if ((v85 & 0x80000000) == 0)
        {
          close(v85);
LABEL_125:
          v82 = 0;
          goto LABEL_126;
        }
      }
    }

    bzero(&buf, 0x400uLL);
    v220 = 0u;
    memset(v221, 0, sizeof(v221));
    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v209 = 0u;
    memset(__endptr, 0, sizeof(__endptr));
    v206 = 0u;
    memset(v207, 0, sizeof(v207));
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    *__str = 0u;
    v119 = *(a1 + 64);
    if (v119)
    {
      v120 = fd_name(v119, __endptr, 0xFFuLL);
      v121 = v120;
      v122 = v120;
      if (*(v5 + 6960) < 1)
      {
        if (v4[1736])
        {
          goto LABEL_215;
        }
      }

      else if (!strncmp(v120, "journalAttr.", 0xCuLL))
      {
        *v188 = 0;
        if (*(v5 + 6960) == strtoll(v121 + 12, v188, 0))
        {
          goto LABEL_215;
        }
      }

      SIActivityJournalUnlinkJournal(v4 + 548, *(a1 + 64));
      if (!strncmp(v122, "journalAttr.", 0xCuLL))
      {
        snprintf(__str, 0xFFuLL, "%s%s", "skg_knowledgeEntry.", v121 + 12);
        fd_rename(*(a1 + 64), __str);
        v127 = *__error();
        v128 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          *v188 = 136315650;
          *&v188[4] = v159;
          v189 = 2080;
          v190 = v122;
          v191 = 2080;
          v192 = __str;
          _os_log_impl(&dword_1C278D000, v128, OS_LOG_TYPE_DEFAULT, "[%s] renamed journal %s -> %s", v188, 0x20u);
        }

        *__error() = v127;
        fcntl(v156, 50, &buf);
        v129 = strlen(&buf);
        snprintf(&buf + v129, 0x400uLL, "/%s", __str);
        v165 = 65541;
        v130 = open(&buf, 0);
        if ((v130 & 0x80000000) == 0)
        {
          v131 = v130;
          if (!ffsctl(v130, 0xC0084A44uLL, &v165, 0))
          {
            v154 = *__error();
            v132 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
            {
              *v188 = 136315394;
              *&v188[4] = v159;
              v189 = 2080;
              v190 = __str;
              _os_log_impl(&dword_1C278D000, v132, OS_LOG_TYPE_DEFAULT, "[%s] Mark skg journal purgeable %s", v188, 0x16u);
            }

            *__error() = v154;
          }

          close(v131);
        }

        strcat(v121, "_toc");
        v133 = *__error();
        v134 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
        {
          *v188 = 136315394;
          *&v188[4] = v159;
          v189 = 2080;
          v190 = v122;
          _os_log_impl(&dword_1C278D000, v134, OS_LOG_TYPE_DEFAULT, "[%s] unlink %s", v188, 0x16u);
        }

        *__error() = v133;
        unlinkat(v156, v122, 0);
      }

      else
      {
        if (*(a1 + 56))
        {
          v123 = *(a1 + 56);
        }

        else
        {
          v123 = 2489;
        }

        _fd_unlink_with_origin(*(a1 + 64), v123);
        v124 = *__error();
        v125 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          v126 = fd_name(*(a1 + 64), v122, 8uLL);
          *v188 = 136315394;
          *&v188[4] = v159;
          v189 = 2080;
          v190 = v126;
          _os_log_impl(&dword_1C278D000, v125, OS_LOG_TYPE_DEFAULT, "[%s]  unlink %s", v188, 0x16u);
        }

        *__error() = v124;
      }
    }

LABEL_215:
    v135 = *(a1 + 72);
    if (!v135)
    {
LABEL_158:
      if (theArray)
      {
        si_deleteExhaustedRemappings(v5, theArray);
      }

      *(v5 + 1464) = CFAbsoluteTimeGetCurrent();
      v101 = *__error();
      v102 = _SILogForLogForCategory(11);
      v103 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v102, v103))
      {
        v104 = *(v5 + 2408);
        buf.st_dev = 134218240;
        *&buf.st_mode = v5;
        WORD2(buf.st_ino) = 2048;
        *(&buf.st_ino + 6) = v104;
        _os_log_impl(&dword_1C278D000, v102, v103, "synced SIRef:%p recoverTime:%llu", &buf, 0x16u);
      }

      *__error() = v101;
      v180 = 1;
      v26 = v162;
      goto LABEL_163;
    }

    SIActivityJournalUnlinkJournal(v4 + 548, v135);
    v136 = fd_name(*(a1 + 72), __endptr, 0xFFuLL);
    __s = v136;
    if (!strncmp(v136, "journalAttr.", 0xCuLL))
    {
      snprintf(__str, 0xFFuLL, "%s%s", "skg_knowledgeEntry.", v136 + 12);
      fd_rename(*(a1 + 72), __str);
      v143 = *__error();
      v144 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
      {
        *v188 = 136315650;
        *&v188[4] = v159;
        v189 = 2080;
        v190 = v136;
        v191 = 2080;
        v192 = __str;
        _os_log_impl(&dword_1C278D000, v144, OS_LOG_TYPE_DEFAULT, "[%s] renamed journal %s -> %s", v188, 0x20u);
      }

      *__error() = v143;
      fcntl(v156, 50, &buf);
      v145 = strlen(&buf);
      snprintf(&buf + v145, 0x400uLL, "/%s", __str);
      v165 = 65541;
      v146 = open(&buf, 0);
      if ((v146 & 0x80000000) == 0)
      {
        v147 = v146;
        if (!ffsctl(v146, 0xC0084A44uLL, &v165, 0))
        {
          v148 = *__error();
          v149 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
          {
            *v188 = 136315394;
            *&v188[4] = v159;
            v189 = 2080;
            v190 = __str;
            _os_log_impl(&dword_1C278D000, v149, OS_LOG_TYPE_DEFAULT, "[%s] Mark skg journal purgeable %s", v188, 0x16u);
          }

          *__error() = v148;
        }

        close(v147);
      }

      strcat(v136, "_toc");
      v141 = *__error();
      v142 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_234;
      }
    }

    else
    {
      if (*(a1 + 56))
      {
        v137 = *(a1 + 56);
      }

      else
      {
        v137 = 2523;
      }

      _fd_unlink_with_origin(*(a1 + 72), v137);
      v138 = *__error();
      v139 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
      {
        v140 = fd_name(*(a1 + 72), v136, 8uLL);
        *v188 = 136315394;
        *&v188[4] = v159;
        v189 = 2080;
        v190 = v140;
        _os_log_impl(&dword_1C278D000, v139, OS_LOG_TYPE_DEFAULT, "[%s]  unlink  %s", v188, 0x16u);
      }

      *__error() = v138;
      strcat(v136, "_toc");
      v141 = *__error();
      v142 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_234;
      }
    }

    *v188 = 136315394;
    *&v188[4] = v159;
    v189 = 2080;
    v190 = __s;
    _os_log_impl(&dword_1C278D000, v142, OS_LOG_TYPE_DEFAULT, "[%s] unlink %s", v188, 0x16u);
LABEL_234:
    *__error() = v141;
    unlinkat(v156, __s, 0);
    goto LABEL_158;
  }

  v7 = *__error();
  v8 = _SILogForLogForCategory(12);
  v9 = 2 * (dword_1EBF46AFC < 4);
  if (os_log_type_enabled(v8, v9))
  {
    state = xpc_activity_get_state(*(a1 + 112));
    buf.st_dev = 134217984;
    *&buf.st_mode = state;
    _os_log_impl(&dword_1C278D000, v8, v9, "defer sync. activity state:%lu", &buf, 0xCu);
  }

  *__error() = v7;
  *(a1 + 120) = 1;
  if (!xpc_activity_set_state(*(a1 + 112), 3))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(12);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 136315394;
      *&buf.st_mode = "syncIndex";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 2160;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Failed to defer activity state in syncIndex", &buf, 0x12u);
    }

    *__error() = v11;
  }

  v13 = 0;
  v14 = a1;
  v15 = 2162;
LABEL_186:
  si_sync_ctx_free(v14, v13, v15, "void syncIndex(si_sync_ctx *, Boolean)");
}

uint64_t debug_token_create(uint64_t a1, uint64_t a2, int a3)
{
  if (debug_token_get_type_id_onceToken != -1)
  {
    dispatch_once(&debug_token_get_type_id_onceToken, &__block_literal_global_75);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = a1;
  *(Instance + 40) = a3;
  *(Instance + 32) = a2;
  pthread_threadid_np(0, (Instance + 24));
  return Instance;
}

CFDictionaryRef si_copyRemappingMetadata(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, (a1 + 2384));
  cf = si_copyRemappingMetadatas(a1);
  v3 = CFDictionaryCreate(v2, remapping_keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(values);
  CFRelease(cf);
  return v3;
}

__CFArray *si_copyRemappingMetadatas(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = 0;
  db_perform_callback(*(a1 + 1192), _copyRemappings, &v13);
  if (v14 && (Count = CFArrayGetCount(v14)) != 0)
  {
    v3 = Count;
    MEMORY[0x1EEE9AC00](v2);
    v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v5, v4);
    v19.location = 0;
    v19.length = v3;
    CFArrayGetValues(v14, v19, v5);
    v6 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v3, MEMORY[0x1E695E9C0]);
    if (v3 >= 1)
    {
      v8 = MEMORY[0x1E695E9D8];
      v9 = MEMORY[0x1E695E9E8];
      do
      {
        v10 = *v5++;
        valuePtr = *(v10 + 24);
        values = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
        v17 = CFNumberCreate(v6, kCFNumberCFIndexType, (v10 + 40));
        v11 = CFDictionaryCreate(v6, &remapping_keys_11804, &values, 2, v8, v9);
        CFRelease(values);
        CFRelease(v17);
        CFArrayAppendValue(Mutable, v11);
        CFRelease(v11);
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    Mutable = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return Mutable;
}

char *si_create_indexmetadata(uint64_t a1, int a2)
{
  v36 = 0;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
  v35 = v5;
  v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v34 = HIDWORD(v5);
  v33 = __PAIR64__(v7, v8);
  *(v6 + 216) = 0;
  v9 = *(v6 + 312);
  v10 = *(v6 + 224);
  if (v10)
  {
    v10(*(v6 + 288));
  }

  v32 = v35;
  v31 = v34;
  v30 = v33;
  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v29 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v29, 2u);
    }

    *(v6 + 312) = v9;
    CIOnThreadCleanUpReset(v30);
    dropThreadId(v32, 1, add_explicit + 1);
    CICleanUpReset(v32, HIDWORD(v30));
    return 0;
  }

  else
  {
    v12 = 1;
    *v29 = 1;
    v13 = 0;
    v14 = db_obj_iter_create_with_filter(*(a1 + 1192), 1uLL, v29, 0, 0, 0, 0, 0, 0);
    v18 = db_obj_iter_next(v14, &v28, 1, v15, v16, v17);
    if (v18)
    {
      v13 = db_copy_obj(v18, 512);
      v12 = v13 == 0;
    }

    db_obj_iter_release(v14);
    if (a2 == 1 && v12)
    {
      obj = db_create_obj(*(a1 + 1192), 21, 0);
      v36 = obj;
      if (obj)
      {
        *obj = 1;
        *(obj + 10) |= 1u;
        v27 = 65549;
        db_add_field(*(a1 + 1192), &v36, 1u, "_kStoreMetadataVersion", 0, 0x108u, 6, &v27, v20, 4);
        v13 = v36;
        if (db_update_obj(*(a1 + 1192), v36, 12))
        {
          v21 = *__error();
          v22 = _SILogForLogForCategory(7);
          v23 = dword_1EBF46AE8 < 3;
          if (os_log_type_enabled(v22, (dword_1EBF46AE8 < 3)))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v22, v23, "*warn* Failed updating index state", buf, 2u);
          }

          *__error() = v21;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    v24 = threadData[9 * v32 + 1] + 320 * v31;
    *(v24 + 312) = v9;
    v25 = *(v24 + 232);
    if (v25)
    {
      v25(*(v24 + 288));
    }

    dropThreadId(v32, 0, add_explicit + 1);
    return v13;
  }
}

unint64_t *db_obj_iter_create_with_filter(int *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, const void *a7, const void *a8, unint64_t a9)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v45 = *__error();
    v46 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = *a1;
      *buf = 136315650;
      v52 = "db_obj_iter_create_with_filter";
      v53 = 1024;
      v54 = 611;
      v55 = 1024;
      v56 = v47;
      _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v45;
    v48 = __si_assert_copy_extra_332();
    v49 = v48;
    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 611, v50);
    free(v49);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (!a3)
  {
    return 0;
  }

  v17 = malloc_type_zone_malloc(queryZone, 0x10118uLL, 0xA4971684uLL);
  if (!v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    return 0;
  }

  v18 = v17;
  *v17 = 3506;
  v19 = malloc_type_zone_malloc(queryZone, 32 * a2, 0xA4971684uLL);
  if (!v19)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    free(v18);
    return 0;
  }

  v18[4] = v19;
  madvise(v19, 32 * a2, 3);
  v18[23] = 0;
  v18[3] = a1;
  v18[10] = v18;
  v18[11] = 0;
  v18[17] = a2;
  atomic_store(0, v18 + 18);
  v18[20] = 0;
  *(v18 + 192) = 0;
  v18[13] = 0;
  v18[14] = 0;
  v18[15] = -1;
  v18[34] = 0;
  v18[25] = 0;
  v18[12] = 0;
  *(v18 + 37) = 1;
  *(v18 + 76) = (a6 & 0x10) != 0;
  *(v18 + 73) = (a6 & 4) != 0;
  *(v18 + 78) = (a6 & 8) != 0;
  v21 = fd_dup(*(a1 + 106));
  v18[1] = v21;
  *(v18 + 1) = _fd_acquire_fd(v21, v18 + 2);
  v18[5] = _Block_copy(a7);
  v18[6] = _Block_copy(a8);
  v18[7] = a9;
  *(v18 + 72) = 0;
  *(v18 + 77) = 0;
  v18[8] = 0;
  v18[22] = 0;
  v22 = qos_class_self();
  v23 = dispatch_queue_attr_make_with_qos_class(0, v22, 0);
  v18[21] = dispatch_queue_create("obj iter read queue", v23);
  v24 = a1[201];
  if ((v24 & 1) == 0)
  {
    ++*(v18 + 192);
  }

  if (a2)
  {
    v25 = v18[4];
    if ((a6 & 1) != 0 || (v24 & 1) == 0)
    {
      v35 = 0;
      v36 = 16;
      if (a5)
      {
        do
        {
          v37 = (v25 + v36);
          *(v37 - 2) = *(a3 + 8 * v35);
          *v37 = 0;
          *(v18[4] + v36 + 8) = *(v18[4] + v36 + 8) & 0xFB | (4 * (*(a5 + v35) & 1));
          v38 = v18[4] + v36;
          *(v38 + 9) = 0;
          *(v38 + 8) &= ~1u;
          *(v18[4] + v36) |= 0x400000000uLL;
          *(v18[4] + v36 + 8) &= ~2u;
          v39 = (v18[4] + v36);
          v40 = *v39 | 0x3FFFFFFFCLL;
          *(v39 - 1) = v35;
          *v39 = v40;
          *(v18[4] + v36) &= 0xFFFFFFFFFFFFFFFCLL;
          v25 = v18[4];
          *(v25 + v36 - 8) = v35++;
          v36 += 32;
        }

        while (a2 != v35);
      }

      else
      {
        do
        {
          v41 = (v25 + v36);
          *(v41 - 2) = *(a3 + 8 * v35);
          *v41 = 0;
          *(v18[4] + v36 + 8) &= ~4u;
          v42 = v18[4] + v36;
          *(v42 + 9) = 0;
          *(v42 + 8) &= ~1u;
          *(v18[4] + v36) |= 0x400000000uLL;
          *(v18[4] + v36 + 8) &= ~2u;
          v43 = (v18[4] + v36);
          v44 = *v43 | 0x3FFFFFFFCLL;
          *(v43 - 1) = v35;
          *v43 = v44;
          *(v18[4] + v36) &= 0xFFFFFFFFFFFFFFFCLL;
          v25 = v18[4];
          *(v25 + v36 - 8) = v35++;
          v36 += 32;
        }

        while (a2 != v35);
      }
    }

    else
    {
      v26 = 0;
      v27 = 16;
      do
      {
        v28 = (v25 + v27);
        *(v28 - 2) = *(a3 + 8 * v26);
        *v28 = 0;
        if (a5)
        {
          v29 = 4 * (*(a5 + v26) & 1);
        }

        else
        {
          v29 = 0;
        }

        *(v18[4] + v27 + 8) = *(v18[4] + v27 + 8) & 0xFB | v29;
        v30 = v18[4] + v27;
        *(v30 + 9) = 0;
        *(v30 + 8) &= ~1u;
        *(v18[4] + v27) |= 0x400000000uLL;
        *(v18[4] + v27 + 8) &= ~2u;
        v31 = (v18[4] + v27);
        v32 = *v31 | 0x3FFFFFFFCLL;
        *(v31 - 1) = v26;
        *v31 = v32;
        if (a4)
        {
          v33 = (*(a4 + 2 * v26) & 0xFFDF) == 17;
        }

        else
        {
          v33 = 3;
        }

        *(v18[4] + v27) = *(v18[4] + v27) & 0xFFFFFFFFFFFFFFFCLL | v33;
        v25 = v18[4];
        *(v25 + v27 - 8) = v26++;
        v27 += 32;
      }

      while (a2 != v26);
    }
  }

  return v18;
}

uint64_t SISyncIndex(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 1192) && *(result + 1040) && *(result + 1048))
    {
      si_sync_ctx_create_with_defer_fd(result, 0);
      si_enqueue_work_with_qos(*(v1 + 1104), 9, si_sync_index_delayed0, v2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *ContentIndexDocSetsCreateIterator(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 8))
  {
    return 0;
  }

  v86 = 0;
  v10 = a2;
  v11 = 8 * a2 + 80;
  if (v11 >> 17)
  {
    v12 = 1;
  }

  else
  {
    v12 = *MEMORY[0x1E69E9AC8] >= v11;
  }

  if (!v12)
  {
    ++sTotal_6326;
  }

  v13 = malloc_type_zone_calloc(queryZone, 1uLL, v11, 0x5BAF1CEAuLL);
  if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
  }

  v86 = v13;
  v13[55] = a5;
  v84 = 0;
  v85 = 8;
  v83 = 1;
  v14 = malloc_type_zone_malloc(queryZone, 0x40uLL, 0xA4971684uLL);
  if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
  }

  v82 = v14;
  *(v86 + 1) = a6;
  v15 = *(*a1 + 56);
  if (*(v15 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_82;
  }

  v69 = a1;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v17 = setThreadIdAndInfo(*(v15 + 64), sIndexExceptionCallbacks, v15, 0x20000000, add_explicit + 1);
  v81 = v17;
  v18 = threadData[9 * v17 + 1] + 320 * HIDWORD(v17);
  v79 = v19;
  v80 = HIDWORD(v17);
  v78 = v20;
  *(v18 + 216) = 0;
  v21 = *(v18 + 312);
  v22 = *(v18 + 224);
  if (v22)
  {
    v22(*(v18 + 288));
  }

  if (!_setjmp(v18))
  {
    Mutable = CFSetCreateMutable(kCIQueryZoneAllocator, 0, 0);
    if (v10 == 1)
    {
      v33 = *v69;
      if (*(*v69 + 48) == 1)
      {
        *(v86 + 7) = *(*(v33 + 56) + 68);
        *(v86 + 10) = *(v86 + 7);
        if (*(v86 + 10))
        {
          *(v86 + 11) = 1;
          *(v86 + 56) = 1;
          atomic_fetch_add(v33, 1u);
          *(v86 + 10) = v33;
          atomic_fetch_add(a3, 1u);
          *v86 = a3;
          *(v86 + 9) = 1;
          free(v82);
        }

        else
        {
          free(v86);
          v86 = 0;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

LABEL_79:
        v83 = 0;
        v67 = threadData[9 * v81 + 1] + 320 * v80;
        *(v67 + 312) = v21;
        v68 = *(v67 + 232);
        if (v68)
        {
          v68(*(v67 + 288));
        }

        dropThreadId(v81, 0, add_explicit + 1);
        goto LABEL_82;
      }

      v74 = v21;
      v75 = 1;
      v76 = add_explicit;
      ContentIndexDocSetCreatePhraseIterators(v33, *(a3 + 16), *(*(v33 + 56) + 68), *(a3 + 41), v32);
      ContentIndexDocSetAppendIterators(v33, &v85, &v84, &v82, Mutable);
      atomic_fetch_add(v33, 1u);
      *(v86 + 10) = v33;
    }

    else
    {
      v74 = v21;
      v75 = v10;
      v76 = add_explicit;
      if (v10 >= 1)
      {
        v34 = 10;
        v35 = v69;
        do
        {
          v36 = v34;
          v37 = *v35++;
          ContentIndexDocSetCreatePhraseIterators(v37, *(a3 + 16), *(*(v37 + 56) + 68), *(a3 + 41), v32);
          ContentIndexDocSetAppendIterators(v37, &v85, &v84, &v82, Mutable);
          atomic_fetch_add(v37, 1u);
          *(v86 + v36) = v37;
          v34 = v36 + 1;
          --v10;
        }

        while (v10);
      }
    }

    CFRelease(Mutable);
    v38 = v84;
    v39 = *(*v69 + 56);
    __n = 8 * v84;
    v40 = 8 * v84 + 160;
    if (!(v40 >> 17) && *MEMORY[0x1E69E9AC8] < v40)
    {
      ++sTotal_13683;
    }

    v41 = *(a3 + 8);
    v73 = v84;
    __src = v82;
    v42 = *(v39 + 68);
    v43 = malloc_type_zone_calloc(queryZone, 1uLL, v40, 0x5BAF1CEAuLL);
    if (!v43 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    *(v43 + 2) = v38;
    *(v43 + 3) = 1;
    v44 = v43 + 8;
    v72 = v38;
    if (v38)
    {
      v44 = malloc_type_zone_malloc(queryZone, __n + 16, 0xA4971684uLL);
      if (!v44 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      *(v43 + 1) = v44;
    }

    *v44 = 0;
    *(v43 + 7) = -1;
    *(v43 + 8) = -1;
    *(v43 + 10) = v41;
    v45 = v42;
    *(v43 + 25) = v42;
    v43[40] = 0;
    if (a4)
    {
      *(v43 + 6) = 0;
      v46 = MEMORY[0x1E69E9AC8];
      v47 = ((*MEMORY[0x1E69E9AB8] + *(v41 + 24)) & ~*MEMORY[0x1E69E9AB8]) + *MEMORY[0x1E69E9AC8];
      *(v43 + 11) = v47;
      v48 = mmap(0, v47, 1, 2, *(v41 + 4496), 0);
      *(v43 + 4) = v48;
      if (v48 == -1)
      {
        v49 = *__error();
        bzero(buf, 0x400uLL);
        fd_realpath(*(v41 + 4488), buf);
        v50 = *__error();
        v51 = _SILogForLogForCategory(10);
        v52 = dword_1EBF46AF4 < 3;
        if (os_log_type_enabled(v51, (dword_1EBF46AF4 < 3)))
        {
          v53 = *(v43 + 11);
          *v87 = 67109634;
          v88 = v49;
          v89 = 2048;
          v90 = v53;
          v91 = 2080;
          v92 = buf;
          _os_log_impl(&dword_1C278D000, v51, v52, "*warn* Failed to map postings: %d, %zd, %s", v87, 0x1Cu);
        }

        *__error() = v50;
        *__error() = v49;
      }

      else if (mmap(&v48[*(v43 + 11) - *v46], *v46, 1, 4114, -83886080, 0) == -1)
      {
        v54 = *__error();
        bzero(buf, 0x400uLL);
        fd_realpath(*(v41 + 4488), buf);
        v55 = *__error();
        v56 = _SILogForLogForCategory(10);
        v57 = dword_1EBF46AF4 < 3;
        if (os_log_type_enabled(v56, (dword_1EBF46AF4 < 3)))
        {
          v58 = *(v43 + 11);
          v59 = *MEMORY[0x1E69E9AC8];
          *v87 = 67109890;
          v88 = v54;
          v89 = 2048;
          v90 = v58;
          v91 = 2048;
          v92 = v59;
          v93 = 2080;
          v94 = buf;
          _os_log_impl(&dword_1C278D000, v56, v57, "*warn* Failed to allocated guard page error %d, %zd, %lu, %s", v87, 0x26u);
        }

        *__error() = v55;
        *__error() = v54;
        munmap(*(v43 + 4), *(v43 + 11));
      }

      else
      {
        v43[40] = 1;
      }
    }

    if ((v43[40] & 1) == 0)
    {
      *(v43 + 6) = -1;
      v60 = malloc_type_zone_malloc(queryZone, 0x10004uLL, 0xA4971684uLL);
      if (!v60)
      {
        _log_fault_for_malloc_failure();
      }

      *(v43 + 4) = v60;
      *(v43 + 11) = 0x10000;
    }

    v61 = 0;
    *(v43 + 18) = v45;
    *(v43 + 19) = v45;
    *(v43 + 19) = 0;
    v62 = *(v41 + 24) >> 1;
    *(v43 + 13) = v62;
    if (v62 >= *(v41 + 32))
    {
      v61 = v62;
    }

    *(v43 + 13) = v61;
    memcpy(v43 + 160, __src, __n);
    v63 = v72;
    *(v43 + 14) = v72;
    *(v43 + 15) = __src;
    if (v73 >= 1)
    {
      v64 = 160;
      do
      {
        if ((*(*&v43[v64] + 40))())
        {
          v66 = *&v43[v64];
          if ((*(v66 + 8) & 0x3FFFFFFFFFFFFFFFuLL) <= *(v43 + 13))
          {
            v65 = *(v43 + 19);
            *(v43 + 19) = v65 + 1;
            *&v43[8 * v65 + 160] = v66;
          }

          else
          {
            ipqpush(v43 + 1, v66);
          }
        }

        *v43 |= *(*&v43[v64] + 64);
        v64 += 8;
        --v63;
      }

      while (v63);
    }

    v82 = 0;
    *(v86 + 2) = v43;
    *(v86 + 52) = 0;
    *(v86 + 7) = *(a3 + 36);
    *(v86 + 6) = *(a3 + 32);
    atomic_fetch_add(a3, 1u);
    *v86 = a3;
    *(v86 + 10) = 0;
    *(v86 + 11) = 0;
    *(v86 + 9) = v75;
    *(v86 + 58) = *v43;
    add_explicit = v76;
    v21 = v74;
    goto LABEL_79;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v18 + 312) = v21;
  if ((~*(v18 + 212) & 0xA0000000) == 0)
  {
    v23 = *(v18 + 288);
    if (v23)
    {
      _CIMakeInvalid(v23);
    }
  }

  if (__THREAD_SLOT_KEY[0])
  {
    v24 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v24)
    {
LABEL_86:
      makeThreadId();
      v25 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_25;
    }
  }

  else
  {
    makeThreadId();
    v24 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v24)
    {
      goto LABEL_86;
    }
  }

  v25 = v24;
  if (v24 >= 0x801)
  {
    goto LABEL_86;
  }

LABEL_25:
  v26 = &threadData[9 * v25];
  v28 = *(v26 - 4);
  v27 = (v26 - 2);
  if (v28 > v78)
  {
    v29 = v25 - 1;
    do
    {
      CIOnThreadCleanUpPop(v29);
    }

    while (*v27 > v78);
  }

  dropThreadId(v81, 1, add_explicit + 1);
  CICleanUpReset(v81, v79);
LABEL_82:
  if (v83 == 1)
  {
    free(v82);
    free(v86);
    return 0;
  }

  return v86;
}

void CIIndexSetAddIntersectionInRange(unsigned int *a1, uint64_t *a2, unsigned int a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a4 > a5)
  {
    return;
  }

  v6 = a5;
  v29[1] = v29;
  v11 = a3;
  MEMORY[0x1EEE9AC00](a6);
  v13 = (v29 - v12);
  bzero(v29 - v12, v12);
  v14 = v13 + 13;
  v15 = v11;
  do
  {
    v16 = *a2;
    if (!*a2)
    {
      return;
    }

    *(v14 - 13) = v16;
    *v14 = *(v16 + 16) < -9;
    *(v14 - 1) = 0;
    v14 += 16;
    ++a2;
    --v15;
  }

  while (v15);
  __compar[0] = MEMORY[0x1E69E9820];
  __compar[1] = 0x40000000;
  __compar[2] = __CIIndexSetAddIntersectionInRange_block_invoke;
  __compar[3] = &__block_descriptor_tmp_12_5952;
  v31 = a4;
  v32 = v6;
  qsort_b(v13, v11, 0x10uLL, __compar);
  if (*(v13 + 13))
  {
    if (a3 <= 1)
    {
      v18 = *(v13 + 2);
      goto LABEL_21;
    }

LABEL_10:
    if (a4 + 0x2000 >= v6)
    {
      v19 = a4;
    }

    else
    {
      v19 = (v6 - 0x2000);
    }

    v20 = v11 - 1;
    do
    {
      CIIndexSetAddRange(a1, *v13, v19, v6, v17);
      v21 = v13 + 2;
      v22 = v20;
      do
      {
        v23 = *v21;
        v21 += 2;
        CIIndexSetIntersectRanges(a1, v23, v19, v6);
        --v22;
      }

      while (v22);
      LODWORD(v24) = v19 - 0x2000;
      if (v19 <= a4 + 0x2000)
      {
        v24 = a4;
      }

      else
      {
        v24 = v24;
      }

      v6 = v19;
      v25 = v19 > a4;
      v19 = v24;
    }

    while (v25);
    return;
  }

  v18 = *(v13 + 2);
  if (a3 >= 2 && v18 >= 0x400)
  {
    goto LABEL_10;
  }

LABEL_21:
  if (v18 || (*(v13 + 12) & 1) == 0)
  {
    CIIndexSetAddRange(a1, *v13, a4, v6, v17);
    if (a3 >= 2)
    {
      v26 = v11 - 1;
      v27 = v13 + 2;
      do
      {
        v28 = *v27;
        v27 += 2;
        CIIndexSetIntersectRanges(a1, v28, a4, v6);
        --v26;
      }

      while (v26);
    }
  }
}

uint64_t CIIndexSetShrink(uint64_t result, int8x8_t a2)
{
  if (result)
  {
    if (*(result + 16) <= -10)
    {
      v2 = result;
      result = _CIIndexSetConvertIfArrayIsMuchMoreEfficient(result, *(result + 20), *(result + 24), 0, 0, a2);
      if (v2[4] <= -10)
      {

        return _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(v2, 0, v3);
      }
    }
  }

  return result;
}

uint64_t ContentIndexDocSetResolveOIDsAndGroups_Step(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, __n128 a9, unint64_t a10, unint64_t *a11, _BYTE *a12, void *a13, int a14, int64_t a15, unint64_t a16, unint64_t a17, unsigned __int8 a18, uint64_t a19)
{
  v797 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    *a11 = 0;
    return result;
  }

  v751 = a2;
  v752 = a3;
  v753 = a4;
  v754 = a5;
  v756 = a7;
  v757 = a8;
  v20 = *(result + 80);
  v749 = result + 80;
  v699 = v20;
  v758 = *(v20 + 56);
  v748 = *(v758 + 80);
  v785 = 0;
  v679 = *(v20 + 52);
  v21 = v679 == 3;
  if (a12)
  {
    *a12 = v21;
  }

  v747 = v21;
  v750 = a12;
  v759 = &v647;
  v762 = a11;
  v678 = *a11;
  v760 = a13;
  v22 = *a13;
  MEMORY[0x1EEE9AC00](a9);
  v24 = &v647 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v25;
  bzero(v24, v23);
  v27 = *(v26 + 72);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v647 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v30, v29);
  MEMORY[0x1EEE9AC00](v31);
  v32 = (4 * v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v744 = &v647 - v32;
  bzero(&v647 - v32, 4 * v27);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v647 - v32;
  bzero(v34, 4 * v27);
  v755 = a6;
  v35 = *(a6 + 228);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v647 - ((v37 + 15) & 0xFFFFFFFF0);
  bzero(v38, v37);
  MEMORY[0x1EEE9AC00](v39);
  v742 = &v647 - ((v40 + 15) & 0x7FFFFFFF0);
  bzero(v742, v40);
  v761 = v26;
  v41 = *(v26 + 56);
  v42 = v699[12];
  if (v41)
  {
    v38 = 0;
    v30 = 0;
    v24 = 0;
    v43 = 0;
    v44 = v761;
    v45 = v749;
    goto LABEL_54;
  }

  if (v42 <= 3)
  {
    v45 = v749;
    if (v42 < 3)
    {
      goto LABEL_13;
    }

    if (v42 != 3)
    {
      goto LABEL_755;
    }
  }

  else
  {
    v45 = v749;
    if ((v42 - 4) < 4)
    {
LABEL_9:
      v46 = (v20 + 80);
      goto LABEL_10;
    }

    if (v42 != 8)
    {
      if (v42 == 9)
      {
        goto LABEL_9;
      }

LABEL_755:
      assert_invalid_doc_type(v699);
    }
  }

  v115 = *(v699 + 8);
  if (v115)
  {
    v46 = (v115 + 88);
LABEL_10:
    v43 = *v46;
    if (v27 >= 2)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_13:
  v43 = 0;
  if (v27 >= 2)
  {
LABEL_14:
    v47 = v744;
    v48 = v761 + 88;
    v49 = 1;
    v50 = 0;
    while (1)
    {
      v51 = *(v48 + 8 * v50);
      v52 = v51;
      v53 = *(v51 + 48);
      if (v53 > 3)
      {
        break;
      }

      if (v53 >= 3)
      {
        if (v53 != 3)
        {
LABEL_754:
          assert_invalid_doc_type(v52);
        }

LABEL_33:
        v60 = *(v51 + 64);
        if (!v60)
        {
          v59 = v49 - 1;
          *&v24[8 * v50] = 0;
          v57 = 0;
          goto LABEL_27;
        }

        v54 = (v60 + 88);
        goto LABEL_18;
      }

      v55 = 0;
LABEL_21:
      *&v24[8 * v50] = v55;
      v56 = 1 << v53;
      if ((v56 & 0x307) == 0)
      {
        if ((v56 & 0xF0) != 0)
        {
          v58 = (v51 + 88);
LABEL_25:
          v57 = *v58;
          goto LABEL_26;
        }

        v61 = *(v51 + 64);
        if (v61)
        {
          v58 = (v61 + 96);
          goto LABEL_25;
        }
      }

      v57 = 0;
LABEL_26:
      v59 = v50;
LABEL_27:
      *&v30[8 * v59] = v57;
      *&v47[4 * v59] = -1;
      *&v34[4 * v59] = -1;
      ++v49;
      if (v27 - 1 == ++v50)
      {
        goto LABEL_38;
      }
    }

    if ((v53 - 4) >= 4)
    {
      if (v53 == 8)
      {
        goto LABEL_33;
      }

      if (v53 != 9)
      {
        goto LABEL_754;
      }
    }

    v54 = (v51 + 80);
LABEL_18:
    v55 = *v54;
    goto LABEL_21;
  }

LABEL_38:
  if (v35)
  {
    v62 = *(v755 + 224);
    v63 = 0;
    v44 = v761;
    v64 = v742;
    while (1)
    {
      v67 = *(v45 + 8 * (v62 + v63));
      v52 = v67;
      v68 = *(v67 + 48);
      if (v68 <= 3)
      {
        break;
      }

      if ((v68 - 4) >= 4)
      {
        if (v68 == 8)
        {
          goto LABEL_51;
        }

        if (v68 != 9)
        {
          goto LABEL_754;
        }
      }

      v65 = (v67 + 80);
LABEL_42:
      v66 = *v65;
LABEL_43:
      *&v38[8 * v63] = v66;
      *&v64[4 * v63++] = -1;
      if (v35 == v63)
      {
        goto LABEL_54;
      }
    }

    if (v68 < 3)
    {
      v66 = 0;
      goto LABEL_43;
    }

    if (v68 != 3)
    {
      goto LABEL_754;
    }

LABEL_51:
    v66 = *(v67 + 64);
    if (!v66)
    {
      goto LABEL_43;
    }

    v65 = (v66 + 88);
    goto LABEL_42;
  }

  v44 = v761;
LABEL_54:
  v736 = v38;
  if (v42 > 9)
  {
    goto LABEL_755;
  }

  v69 = v24;
  v70 = 1 << v42;
  if ((v70 & 0x307) != 0)
  {
    v71 = 0;
  }

  else
  {
    if ((v70 & 0xF0) != 0)
    {
      v72 = (v20 + 88);
    }

    else
    {
      v71 = *(v699 + 8);
      if (!v71)
      {
        goto LABEL_60;
      }

      v72 = (v71 + 96);
    }

    v71 = *v72;
  }

LABEL_60:
  v73 = v678;
  v74 = v22;
  if (!v43 && !v41)
  {
    result = 0;
    v75 = v22;
    v76 = v678;
    goto LABEL_86;
  }

  v697 = v43;
  v735 = v71;
  v737 = v30;
  v77 = v758;
  v78 = v758;
  v79 = 14504;
  db_read_lock(v758 + 14504);
  if (*(v77 + 8) != 1)
  {
    v95 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(v786[0]) = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", v786, 2u);
    }

    v96 = v74;
    goto LABEL_82;
  }

  v698 = v74;
  v738 = v69;
  v743 = v34;
  v733 = *(v77 + 45);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v784 = 0;
  v783 = 0;
  v782 = 0;
  v81 = setThreadIdAndInfo(*(v77 + 64), sIndexExceptionCallbacks, v77, 0x20000000, add_explicit + 1);
  v784 = v81;
  v783 = __PAIR64__(HIDWORD(v81), v82);
  v782 = v83;
  v84 = threadData[9 * v81 + 1] + 320 * HIDWORD(v81);
  *(v84 + 216) = 0;
  v740 = *(v84 + 312);
  v85 = *(v84 + 224);
  v86 = v84;
  if (v85)
  {
    v85(*(v84 + 288));
  }

  v781 = v784;
  v780 = v783;
  v779 = v782;
  if (_setjmp(v86))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v786[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v786, 2u);
    }

    *(v86 + 312) = v740;
    if ((~*(v86 + 212) & 0xA0000000) == 0)
    {
      v87 = *(v86 + 288);
      if (v87)
      {
        _CIMakeInvalid(v87);
      }
    }

    v88 = v779;
    if (__THREAD_SLOT_KEY[0])
    {
      v89 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v89)
      {
        goto LABEL_741;
      }
    }

    else
    {
      makeThreadId();
      v89 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v89)
      {
        goto LABEL_741;
      }
    }

    v90 = v89;
    if (v89 < 0x801)
    {
LABEL_75:
      v91 = &threadData[9 * v90];
      v93 = *(v91 - 4);
      v92 = (v91 - 2);
      if (v93 > v88)
      {
        v94 = v90 - 1;
        do
        {
          CIOnThreadCleanUpPop(v94);
        }

        while (*v92 > v88);
      }

      dropThreadId(v781, 1, add_explicit + 1);
      CICleanUpReset(v781, v780);
      v95 = 0;
      v96 = v698;
LABEL_82:
      v97 = v73;
      goto LABEL_83;
    }

LABEL_741:
    makeThreadId();
    v90 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    goto LABEL_75;
  }

  v100 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v778 = 0;
  v777 = 0;
  v776 = 0;
  v101 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v100 + 1);
  v778 = v101;
  v777 = __PAIR64__(HIDWORD(v101), v102);
  v776 = v103;
  v104 = threadData[9 * v101 + 1] + 320 * HIDWORD(v101);
  v734 = *(v104 + 312);
  v105 = *(v104 + 224);
  if (v105)
  {
    v105(*(v104 + 288));
  }

  v775 = v778;
  v774 = v777;
  v773 = v776;
  if (_setjmp(v104))
  {
    v106 = v100;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v786[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v786, 2u);
    }

    *(v104 + 312) = v734;
    v107 = v773;
    if (__THREAD_SLOT_KEY[0])
    {
      v108 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v108)
      {
        goto LABEL_743;
      }
    }

    else
    {
      makeThreadId();
      v108 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v108)
      {
        goto LABEL_743;
      }
    }

    v109 = v108;
    if (v108 < 0x801)
    {
LABEL_102:
      v110 = &threadData[9 * v109];
      v112 = *(v110 - 4);
      v111 = (v110 - 2);
      if (v112 > v107)
      {
        v113 = v109 - 1;
        do
        {
          CIOnThreadCleanUpPop(v113);
        }

        while (*v111 > v107);
      }

      dropThreadId(v775, 1, v106 + 1);
      CICleanUpReset(v775, v774);
      v95 = 0;
      v114 = v698;
      v97 = v73;
      v44 = v761;
      goto LABEL_734;
    }

LABEL_743:
    makeThreadId();
    v109 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    goto LABEL_102;
  }

  v741 = add_explicit;
  v746 = 14504;
  v716 = a14;
  v785 = 1;
  v116 = *(v44 + 40);
  v117 = *(v77 + 14408);
  v118 = *(v77 + 14432);
  v119 = *(v77 + 14416);
  v732 = *(v77 + 14424);
  v772 = -1;
  v771 = -1;
  v120 = *(v755 + 24);
  v739 = v100;
  if (v120)
  {
    v121 = *(v755 + 32);
    v122 = *(v755 + 40);
    if (v120 > 3)
    {
      v124 = v120 & 0xFFFFFFFFFFFFFFFCLL;
      v128 = v122 + 1;
      v129 = v121 + 1;
      v130 = 0uLL;
      v131 = v120 & 0xFFFFFFFFFFFFFFFCLL;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      do
      {
        v135 = vaddq_s64(v129[-1], v130);
        v136 = vaddq_s64(*v129, v132);
        v137 = vaddq_s64(v128[-1], v133);
        v138 = vaddq_s64(*v128, v134);
        v128 += 2;
        v129 += 2;
        v130 = v135;
        v132 = v136;
        v133 = v137;
        v134 = v138;
        v131 -= 4;
      }

      while (v131);
      v125 = vaddvq_s64(vaddq_s64(v136, v135));
      v123 = vaddvq_s64(vaddq_s64(v138, v137));
      v127 = v125;
      v126 = v123;
      if (v120 == (v120 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_118;
      }
    }

    else
    {
      v123 = 0;
      v124 = 0;
      v125 = 0;
    }

    v139 = v120 - v124;
    v140 = &v121->i64[v124];
    v141 = &v122->i64[v124];
    v142 = v139;
    v143 = v125;
    v144 = v123;
    do
    {
      v145 = *v140++;
      v127 = v145 + v143;
      v146 = *v141++;
      v144 += v146;
      v126 = v144;
      v143 = v127;
      --v142;
    }

    while (v142);
  }

  else
  {
    v126 = 0;
    v127 = 0;
  }

LABEL_118:
  v731 = v127;
  v730 = v126;
  LODWORD(v147) = v116 - 1;
  v729 = v716;
  HasWeights = ContentIndexDocSetHasWeights(*(v45 + 8 * *(v44 + 64)));
  v151 = (HasWeights & 1) != 0 && *(v44 + 72) == *(v755 + 228) + 2;
  v152 = v742;
  v728 = v151;
  v727 = a19;
  v726 = a17;
  v725 = v117;
  v724 = v118;
  v723 = v119;
  v722 = a16;
  v721 = a15;
  v720 = v732;
  v719 = HasWeights;
  v718 = v716 << 25;
  v717 = a10;
  v745 = v77;
  if ((v729 & 4) != 0)
  {
    v471 = v755;
    if (*(v44 + 56))
    {
      v472 = v147;
      v473 = v698;
      v97 = v73;
      v95 = 0;
      goto LABEL_728;
    }

    v475 = 0;
    v476 = *(v44 + 40);
    if (v476 <= *(v44 + 44) || v678 >= v717)
    {
      v472 = v147;
      v473 = v698;
      goto LABEL_726;
    }

    v477 = 0;
    v694 = v755 + 192;
    v695 = v757 + 40;
    v479 = v679 == 1 && v735 != 0;
    v693 = v479;
    v692 = v44 + 88;
    v696 = 0;
    v149.n128_u64[0] = 67110912;
    v690 = v149;
    v689 = 28;
    v688 = 80;
    v480 = 0;
    while (1)
    {
      v481 = v73;
      v482 = v480;
      v483 = v477;
      v687 = v476 - 1;
      v484 = v476 - 1;
      if (v699[13] != 3 && CIIndexSetHasIndexWithHint(v697, v687, &v772) && (!v735 || !CIIndexSetHasIndexWithHint(v735, v687, &v771)))
      {
        v493 = v481;
        v494 = v482;
        v495 = v483;
        goto LABEL_714;
      }

      v680 = v482;
      v681 = v481;
      if (v733)
      {
        v485 = *(v724 + v484);
        v486 = v742;
        if (!*(v724 + v484))
        {
          goto LABEL_558;
        }
      }

      else
      {
        v492 = *(v724 + 4 * (v687 / 5uLL)) >> (6 * (v687 % 5));
        v486 = v742;
        if ((v492 & 0x3F) == 0 || (v729 & 1) != 0 && ((*(v724 + 4 * (v687 / 5uLL)) >> (6 * (v687 % 5))) & 0x1F) == 0x11)
        {
          v493 = v481;
LABEL_559:
          v494 = v680;
          v495 = v483;
          goto LABEL_714;
        }

        if ((v729 & 2) != 0)
        {
          v485 = (*(v724 + 4 * (v687 / 5uLL)) >> (6 * (v687 % 5))) & 0x3F;
          if ((v492 & 0x20) != 0)
          {
LABEL_558:
            v493 = v681;
            goto LABEL_559;
          }
        }

        else
        {
          v485 = (*(v724 + 4 * (v687 / 5uLL)) >> (6 * (v687 % 5))) & 0x3F;
        }
      }

      v682 = v483;
      v686 = v484;
      v487 = *(v471 + 228);
      if (v487)
      {
        v488 = 0;
        v489 = v757;
        v490 = v754;
        while (!CIIndexSetHasIndexWithHint(*&v736[8 * v488], v687, v486))
        {
          ++v488;
          ++v486;
          if (v487 == v488)
          {
            v491 = v485;
            goto LABEL_562;
          }
        }

        v491 = *(v471 + 232) + v488;
LABEL_562:
        v45 = v749;
      }

      else
      {
        v491 = v485;
        v489 = v757;
        v490 = v754;
      }

      *(v490 + 2 * v681) = v491;
      LODWORD(v763) = 0;
      if (v723)
      {
        v496 = *(v723 + 4 * v686);
      }

      else
      {
        v496 = 0;
      }

      v497 = v756 - v496;
      v184 = v496 >= v756;
      v498 = v496 - v756;
      if (v498 == 0 || !v184)
      {
        v498 = v497;
      }

      v675 = v498;
      v499 = v720;
      if (v720)
      {
        v500 = v732 + 8 * v686;
        v501 = *v500;
        v499 = *(v500 + 4);
      }

      else
      {
        v501 = 0.0;
      }

      v674 = v499;
      if (v719)
      {
        v502 = *(v694 + 8 * (v491 >> 6));
        LOBYTE(v769) = 0;
        v770[0] = 0;
        v149.n128_u64[0] = 0;
        if ((v502 >> (v491 & 0x1F)))
        {
          if (!v489 || (*(v44 + 55) & 1) != 0)
          {
            v507 = 1;
          }

          else
          {
            v503 = **(v695 + 32 * (v491 & 0xDF & (v718 >> 31)));
            if (v503 && v503[2] > v721)
            {
              v504 = *v503;
              v505 = (v504 + 80);
              v157 = v504 == 0;
              v506 = &ZERO_RANKING_WRAPPED_BITS;
              if (!v157)
              {
                v506 = v505;
              }

              v149.n128_u32[0] = *(v506 + 16);
            }

            v507 = 1;
          }
        }

        else
        {
          v507 = 0;
        }
      }

      else
      {
        v507 = 0;
        LOBYTE(v769) = 0;
        v770[0] = 0;
        v149.n128_u64[0] = 0;
      }

      v508 = *(v45 + 8 * *(v44 + 64));
      v509 = v491 & 0xFFFFFFDF;
      v510 = *(v471 + 208);
      v794 = *(v471 + 192);
      v795 = v510;
      v796 = *(v471 + 224);
      v511 = *(v471 + 144);
      v790 = *(v471 + 128);
      v791 = v511;
      v512 = *(v471 + 160);
      v793 = *(v471 + 176);
      v792 = v512;
      v513 = *(v471 + 80);
      v786[4] = *(v471 + 64);
      v787 = v513;
      v514 = *(v471 + 96);
      v789 = *(v471 + 112);
      v788 = v514;
      v515 = *(v471 + 16);
      v786[0] = *v471;
      v786[1] = v515;
      v516 = *(v471 + 32);
      v786[3] = *(v471 + 48);
      v786[2] = v516;
      hybridScoringL1(v687, v786, v78, v507, v508, 1, &v763, &v769, v149, v770);
      v517 = v149.n128_f32[0];
      v668 = v509;
      v669 = v507;
      if (v489)
      {
        if (v728)
        {
          goto LABEL_614;
        }

        if (v509 >= *(v489 + 4))
        {
          v644 = __si_assert_copy_extra_332();
          v642 = v644;
          v645 = "";
          if (v644)
          {
            v645 = v644;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 4546, "!groupDone || (uint32_t)group<groupDone->groupCount", v645);
LABEL_750:
          free(v642);
          if (__valid_fs(-1))
          {
            v646 = 2989;
          }

          else
          {
            v646 = 3072;
          }

          *v646 = -559038737;
          abort();
        }
      }

      else if (v728)
      {
        goto LABEL_614;
      }

      if (!*v471 || (v518 = *(v471 + 24), v518 < 1))
      {
LABEL_614:
        v557 = 0;
        v554 = 0;
        v555 = 0;
        v556 = 0;
        goto LABEL_615;
      }

      v519 = *(v471 + 32);
      v520 = *(v471 + 40);
      v521 = 0;
      v522 = 0;
      v523 = 0;
      v524 = 0;
      v525 = v730;
      v526 = v731;
      do
      {
        v535 = v526;
        v534 = v525;
        v533 = v523;
        v532 = v522;
        v531 = v521;
        v530 = v524;
        v529 = v518--;
        v537 = *(v519 + 8 * v518);
        v536 = *(v520 + 8 * v518);
        if (v537)
        {
          v649 = *(v519 + 8 * v518);
          v650 = v536;
          v652 = v526;
          v653 = v525;
          v660 = v533;
          v661 = v532;
          v662 = v521;
          v663 = v524;
          v665 = v529;
          v558 = 0;
          v559 = 4 * v526 - 4 * v537;
          v560 = 8 * v526 - 8 * v537;
          v561 = &v743[v559];
          v562 = &v737[v560];
          v563 = v692 + v560;
          v564 = &v744[v559];
          v565 = &v738[v560];
          v566 = 0;
          v567 = 0;
          do
          {
            if (CIIndexSetHasIndexWithHint(*&v565[8 * v558], v687, v564) && ((++v567, *(*(v563 + 8 * v558) + 52) == 3) || (v569 = *&v562[8 * v558]) != 0 && CIIndexSetHasIndexWithHint(v569, v687, v561)))
            {
              v519 = (v566 + 1);
            }

            else
            {
              v519 = v566;
            }

            v568 = v567;
            ++v558;
            v561 += 4;
            v564 += 4;
            v566 = v519;
          }

          while (v558 < *(*(v755 + 32) + 8 * v518));
          v527 = *(*(v755 + 40) + 8 * v518);
          v520 = *(v755 + 40);
          v528 = *(v755 + 32);
          v44 = v761;
          v45 = v749;
          v529 = v665;
          v531 = v662;
          v530 = v663;
          v533 = v660;
          v532 = v661;
          v535 = v652;
          v534 = v653;
          v537 = v649;
          v536 = v650;
        }

        else
        {
          v527 = *(v520 + 8 * v518);
          v528 = v519;
          v568 = 0;
          LODWORD(v519) = 0;
        }

        v538 = 0;
        v539 = v568;
        v540 = v519;
        v519 = v528;
        v526 = v535 - v537;
        v541 = v534 - v536;
        if (v540 >= 1 << v527)
        {
          v540 = (1 << v527) - 1;
        }

        v542 = v540 >> 63 << v541;
        v543 = v540 << v541;
        if (v539 >= 1 << v527)
        {
          v539 = (1 << v527) - 1;
        }

        v544 = (v541 & 0x40) == 0;
        v545 = v539;
        v546 = v539 >> 63 << v541;
        v547 = v539 << v541;
        v525 = v541;
        v548 = ~v541;
        v549 = v542 | (v540 >> 1 >> v548);
        if (v544)
        {
          v550 = v543;
        }

        else
        {
          v549 = v543;
          v550 = 0;
        }

        v551 = v549 | v533;
        v552 = v550 | v532;
        v553 = v546 | (v545 >> 1 >> v548);
        if (v544)
        {
          v538 = v547;
        }

        else
        {
          v553 = v547;
        }

        v521 = v553 | v531;
        v524 = v538 | v530;
        v554 = v524;
        v555 = v521;
        v556 = v552;
        v522 = v552;
        v557 = v551;
        v523 = v551;
      }

      while (v529 > 1);
LABEL_615:
      if (isDebugVerboseMode_onceToken != -1)
      {
        dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
      }

      v570 = v668;
      if (isDebugVerboseMode_debugEnabled == 1)
      {
        v632 = *__error();
        v633 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v633, OS_LOG_TYPE_DEFAULT))
        {
          v634 = *(v725 + 8 * v686);
          *&v786[0] = __PAIR64__(v570, v690.n128_u32[0]);
          WORD4(v786[0]) = 2048;
          *(v786 + 10) = v634;
          WORD1(v786[1]) = 1024;
          DWORD1(v786[1]) = v675;
          WORD4(v786[1]) = 2048;
          *(&v786[1] + 10) = v517;
          WORD1(v786[2]) = 2048;
          *(&v786[2] + 4) = *&v763;
          WORD6(v786[2]) = 2048;
          *(&v786[2] + 14) = v501;
          WORD3(v786[3]) = 1024;
          DWORD2(v786[3]) = v674;
          WORD6(v786[3]) = 1024;
          *(&v786[3] + 14) = 1;
          _os_log_impl(&dword_1C278D000, v633, OS_LOG_TYPE_DEFAULT, "[ContentIndexQuery](group: %d, oid: %llu, date: %u, hybridScoreL1: %f, sparseScoreL1:%f, pscore: %f, containerId: %u, collecting_1: %d)", v786, 0x42u);
        }

        *__error() = v632;
        v44 = v761;
        v45 = v749;
      }

      v571 = v686;
      v572 = *(v725 + 8 * v686);
      if (v727 && SIUINT32SetContainsValue(v727, HIDWORD(v572)))
      {
        v573 = v681;
        *(v751 + 8 * v681) = 0;
        *(v752 + 8 * v573) = v748 + v571;
      }

      else
      {
        v575 = v681;
        *(v751 + 8 * v681) = v572;
        *(v752 + 8 * v575) = v748 + v571;
        if (v572)
        {
          v576 = v681;
          if (*v755)
          {
            v577 = v763;
            v578 = LOBYTE(v769);
            v579 = *v755 + v681 * v688;
            *v579 = v554;
            *(v579 + 8) = v555;
            *(v579 + 16) = v554;
            *(v579 + 24) = v555;
            *(v579 + 32) = v556;
            *(v579 + 40) = v557;
            *(v579 + 48) = v675;
            *(v579 + 52) = v501;
            *(v579 + 56) = v674;
            *(v579 + 60) = v517;
            *(v579 + 64) = v577;
            *(v579 + 68) = v578;
            *(v579 + 69) = v669;
          }

          v471 = v755;
          v580 = *(v755 + 56);
          v581 = 5 * v576;
          v582 = v696;
          if (v580)
          {
            *(*(v471 + 8) + 5 * v576) = countInUpdates(v580, v571);
          }

          v583 = *(v471 + 64);
          v77 = v758;
          v78 = v745;
          if (v583)
          {
            *(*(v471 + 8) + v581 + 1) = countInUpdates(v583, v571);
          }

          v584 = *(v471 + 72);
          if (v584)
          {
            *(*(v471 + 8) + v581 + 2) = countInUpdates(v584, v571);
          }

          v585 = *(v471 + 80);
          if (v585)
          {
            *(*(v471 + 8) + v581 + 3) = countInUpdates(v585, v571);
          }

          v586 = *(v471 + 88);
          if (v586)
          {
            *(*(v471 + 8) + v581 + 4) = countInUpdates(v586, v571);
          }

          if (!*(v471 + 120) || !*(v471 + 168))
          {
            goto LABEL_652;
          }

          v587 = 0;
          v588 = 0.0;
          v589 = *(v471 + 168);
          v590 = *(v471 + 120);
          v591 = 0;
          v592 = 3.4028e38;
LABEL_639:
          v593 = *(v589 + 8 * v587);
          if (v593)
          {
            LOBYTE(v767) = v582;
            LODWORD(v786[0]) = v582;
            v149.n128_f32[0] = distanceHolderGetMinDistance(v593, *(v78 + 80) + v571, &v767, v786);
            v594 = LODWORD(v786[0]);
            if (v591)
            {
              LODWORD(v595) = v591;
            }

            else
            {
              LODWORD(v595) = 1;
            }

            if ((v767 & (v149.n128_f32[0] < v592)) != 0)
            {
              v595 = v595;
            }

            else
            {
              v594 = v588;
              v595 = v591;
            }

            v596 = *(v471 + 120);
            if ((v767 & (v149.n128_f32[0] < v592)) == 0)
            {
              v149.n128_f32[0] = v592;
            }

            goto LABEL_649;
          }

          while (1)
          {
            v596 = v590;
            v594 = v588;
            v149.n128_f32[0] = v592;
            v595 = v591;
LABEL_649:
            v590 = v596;
            if (v587 + 1 >= v596)
            {
              break;
            }

            ++v587;
            v589 = *(v471 + 168);
            v591 = v595;
            v592 = v149.n128_f32[0];
            v588 = v594;
            if (v589)
            {
              goto LABEL_639;
            }
          }

          v45 = v749;
          if (v595)
          {
            v597 = v594;
            v598 = 1;
          }

          else
          {
LABEL_652:
            v149.n128_u32[0] = 2139095039;
            v598 = 0;
            v597 = 0;
          }

          v599 = v681;
          v600 = *(v471 + 16) + v681 * v689;
          *(v600 + 4) = v149.n128_u32[0];
          *(v600 + 16) = v597;
          *v600 = v598;
          if (*(v471 + 128))
          {
            v601 = *(v471 + 176);
            if (v601)
            {
              v602 = 0;
              v603 = 0.0;
              v604 = *(v471 + 176);
              v605 = *(v471 + 128);
              v606 = 0;
              v607 = 3.4028e38;
LABEL_657:
              v608 = *(v604 + 8 * v602);
              if (v608)
              {
                LOBYTE(v767) = v582;
                LODWORD(v786[0]) = v582;
                v149.n128_f32[0] = distanceHolderGetMinDistance(v608, *(v78 + 80) + v571, &v767, v786);
                v609 = LODWORD(v786[0]);
                if (v606)
                {
                  LODWORD(v610) = v606;
                }

                else
                {
                  LODWORD(v610) = 1;
                }

                if ((v767 & (v149.n128_f32[0] < v607)) != 0)
                {
                  v610 = v610;
                }

                else
                {
                  v609 = v603;
                  v610 = v606;
                }

                v611 = *(v471 + 128);
                if ((v767 & (v149.n128_f32[0] < v607)) == 0)
                {
                  v149.n128_f32[0] = v607;
                }

                goto LABEL_667;
              }

              while (1)
              {
                v611 = v605;
                v609 = v603;
                v149.n128_f32[0] = v607;
                v610 = v606;
LABEL_667:
                v605 = v611;
                if (v602 + 1 >= v611)
                {
                  break;
                }

                ++v602;
                v604 = *(v471 + 176);
                v606 = v610;
                v607 = v149.n128_f32[0];
                v603 = v609;
                if (v604)
                {
                  goto LABEL_657;
                }
              }

              v612 = v609;
              if (v610)
              {
                LOBYTE(v601) = 1;
              }

              else
              {
                v149.n128_f32[0] = 3.4028e38;
                v612 = v582;
                LOBYTE(v601) = v582;
              }

              v45 = v749;
              v599 = v681;
LABEL_675:
              v613 = *(v471 + 16) + 28 * v599;
              *(v613 + 8) = v149.n128_u32[0];
              *(v613 + 20) = v612;
              *(v613 + 1) = v601;
              if (*(v471 + 136))
              {
                v614 = *(v471 + 184);
                if (v614)
                {
                  v615 = 0;
                  v616 = 0.0;
                  v617 = *(v471 + 184);
                  v618 = *(v471 + 136);
                  v619 = 0;
                  v620 = 3.4028e38;
LABEL_679:
                  v621 = *(v617 + 8 * v615);
                  if (v621)
                  {
                    LOBYTE(v767) = v582;
                    LODWORD(v786[0]) = v582;
                    v149.n128_f32[0] = distanceHolderGetMinDistance(v621, *(v78 + 80) + v571, &v767, v786);
                    v622 = LODWORD(v786[0]);
                    if (v619)
                    {
                      LODWORD(v623) = v619;
                    }

                    else
                    {
                      LODWORD(v623) = 1;
                    }

                    if ((v767 & (v149.n128_f32[0] < v620)) != 0)
                    {
                      v623 = v623;
                    }

                    else
                    {
                      v622 = v616;
                      v623 = v619;
                    }

                    v624 = *(v471 + 136);
                    if ((v767 & (v149.n128_f32[0] < v620)) == 0)
                    {
                      v149.n128_f32[0] = v620;
                    }

                    goto LABEL_689;
                  }

                  while (1)
                  {
                    v624 = v618;
                    v622 = v616;
                    v149.n128_f32[0] = v620;
                    v623 = v619;
LABEL_689:
                    v618 = v624;
                    if (v615 + 1 >= v624)
                    {
                      break;
                    }

                    ++v615;
                    v617 = *(v471 + 184);
                    v619 = v623;
                    v620 = v149.n128_f32[0];
                    v616 = v622;
                    if (v617)
                    {
                      goto LABEL_679;
                    }
                  }

                  v625 = v622;
                  if (v623)
                  {
                    LOBYTE(v614) = 1;
                  }

                  else
                  {
                    v149.n128_f32[0] = 3.4028e38;
                    v625 = v582;
                    LOBYTE(v614) = v582;
                  }

                  v45 = v749;
                  v599 = v681;
                  goto LABEL_697;
                }

                v149.n128_u32[0] = 2139095039;
              }

              else
              {
                v149.n128_u32[0] = 2139095039;
                LOBYTE(v614) = 0;
              }

              v625 = 0;
LABEL_697:
              v626 = *(v471 + 16) + 28 * v599;
              *(v626 + 12) = v149.n128_u32[0];
              *(v626 + 24) = v625;
              *(v626 + 2) = v614;
              if (((1 << v570) & v682) != 0)
              {
                v627 = v680;
              }

              else
              {
                v627 = v680 + 1;
              }

              if (((1 << v570) & v682) != 0)
              {
                v628 = 0;
              }

              else
              {
                v628 = 1 << v570;
              }

              v629 = v753;
              v484 = v686;
              if (v753)
              {
                *(v753 + v599) = v747;
                if (v693)
                {
                  HasIndex = CIIndexSetHasIndex(v735, v687);
                  v629 = v753;
                  if (HasIndex)
                  {
                    *(v753 + v681) = 1;
                  }
                }

                v599 = v681;
                if (v750 && *(v629 + v681))
                {
                  *v750 = 1;
                }
              }

              v574 = v627;
              v495 = v628 | v682;
              v97 = v599 + 1;
              if (v599 + 1 > v726 && v627 < v722)
              {
                v95 = 1;
                v472 = v687;
                v473 = v698;
                goto LABEL_728;
              }

              v573 = v599 + 1;
              goto LABEL_713;
            }

            v149.n128_u32[0] = 2139095039;
          }

          else
          {
            v149.n128_u32[0] = 2139095039;
            LOBYTE(v601) = 0;
          }

          v612 = 0;
          goto LABEL_675;
        }

        v573 = v681;
      }

      v574 = v680;
      v495 = v682;
      v77 = v758;
      v471 = v755;
      v78 = v745;
      v484 = v686;
LABEL_713:
      v631 = v574;
      v493 = v573;
      v494 = v631;
LABEL_714:
      v477 = v495;
      v97 = v493;
      v475 = 0;
      if (*(v44 + 44) < v687)
      {
        v480 = v494;
        v476 = v484;
        v73 = v493;
        if (v493 < v717)
        {
          continue;
        }
      }

      v472 = v687;
      v473 = v698;
      goto LABEL_727;
    }
  }

  v153.n128_u64[1] = 0;
  memset(v770, 0, 32);
  v154 = (*(v44 + 40) - 1);
  v155 = v755;
  if ((*(v44 + 56) & 1) == 0)
  {
    initializeEnumberatorForRangeLocked(v770, v697, *(v44 + 44), *(v44 + 40) - 1);
    v152 = v742;
  }

  if (v678 >= v717)
  {
    v474 = 0;
    v163 = v698;
    goto LABEL_725;
  }

  v156 = a18;
  if (!v721)
  {
    v156 = 1;
  }

  v714 = v156;
  v712 = v155 + 192;
  v713 = v757 + 40;
  v157 = v679 != 1 || v735 == 0;
  v158 = !v157;
  v711 = v158;
  v710 = v44 + 88;
  v715 = 0.0;
  v159 = 0;
  v153.n128_u64[0] = 67110400;
  v709 = v153;
  v153.n128_u64[0] = 67110912;
  *&v150 = 67110912;
  v707 = v153;
  v708 = v150;
  v706 = 28;
  v705 = 80;
  v160 = 0;
  v161 = v698;
  v147 = v154;
  while (1)
  {
    v691 = v161;
    v701 = v73;
    v167 = v160;
    v702 = v159;
    if (*(v44 + 56) == 1)
    {
      v168 = (v147 - 1);
    }

    else
    {
      v169 = _CIIndexSetEnumeratorNext(v770);
      v152 = v742;
      v170 = v169;
      v168 = v147;
      LODWORD(v147) = v170;
    }

    v704 = v147;
    if (!v147)
    {
      v474 = 0;
      v163 = v691;
      v73 = v701;
      goto LABEL_725;
    }

    v171 = v168;
    if (v733)
    {
      v172 = *(v724 + v704);
      if (*(v724 + v704))
      {
        goto LABEL_143;
      }

LABEL_153:
      v162 = v167;
      v163 = v691;
      v164 = v701;
      goto LABEL_135;
    }

    v180 = *(v724 + 4 * (v704 / 5uLL)) >> (6 * (v704 % 5));
    if ((v180 & 0x3F) != 0 && ((v729 & 1) == 0 || ((*(v724 + 4 * (v704 / 5uLL)) >> (6 * (v704 % 5))) & 0x1F) != 0x11))
    {
      break;
    }

    v162 = v167;
    v163 = v691;
    v164 = v701;
LABEL_135:
    v165 = v702;
LABEL_136:
    v160 = v162;
    v166 = v164;
    v159 = v165;
    v73 = v166;
    v161 = v163;
    v147 = v171;
    if (v166 >= v717)
    {
      v474 = 0;
      LODWORD(v147) = v704;
      v73 = v166;
      goto LABEL_725;
    }
  }

  if ((v729 & 2) != 0)
  {
    v172 = (*(v724 + 4 * (v704 / 5uLL)) >> (6 * (v704 % 5))) & 0x3F;
    if ((v180 & 0x20) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_153;
  }

  v172 = (*(v724 + 4 * (v704 / 5uLL)) >> (6 * (v704 % 5))) & 0x3F;
LABEL_143:
  v700 = v167;
  v173 = *(v155 + 228);
  v703 = v168;
  if (v173)
  {
    v174 = v152;
    v175 = 0;
    v176 = v757;
    v177 = v754;
    v178 = v736;
    while (!CIIndexSetHasIndexWithHint(*&v178[8 * v175], v704, v174))
    {
      ++v175;
      ++v174;
      if (v173 == v175)
      {
        v179 = v172;
        goto LABEL_156;
      }
    }

    v179 = *(v155 + 232) + v175;
LABEL_156:
    v45 = v749;
  }

  else
  {
    v179 = v172;
    v176 = v757;
    v177 = v754;
  }

  v181 = v743;
  v182 = v723;
  if (v723)
  {
    v182 = *(v723 + 4 * v704);
  }

  v183 = v756 - v182;
  v184 = v182 >= v756;
  v185 = v182 - v756;
  if (v185 == 0 || !v184)
  {
    v185 = v183;
  }

  v685 = v185;
  v186 = v720;
  if (v720)
  {
    v187 = v732 + 8 * v704;
    v188 = *v187;
    v186 = *(v187 + 4);
  }

  else
  {
    v188 = 0.0;
  }

  v683 = v186;
  if (v177)
  {
    *(v177 + 2 * v701) = v179;
    v189 = v179 & 0xFFFFFFDF;
  }

  else
  {
    v189 = 0;
  }

  v190 = v189;
  v191 = v189 & (v718 >> 31);
  v192 = v191;
  if (v176)
  {
    if (*(v176 + 4) <= v191)
    {
      v192 = 0;
    }

    if (v714)
    {
      v193 = 1;
    }

    else
    {
      v194 = *(v713 + 32 * v192);
      v195 = v194[2];
      if (v195)
      {
        v195 = *(v195 + 16) - 1;
      }

      v196 = v194[1];
      if (v196)
      {
        v196 = *(v196 + 16) - 1;
      }

      v197 = *v194;
      if (v197)
      {
        v197 = *(v197 + 16) - 1;
      }

      v193 = v196 + v195 + v197 < v721;
    }
  }

  else
  {
    v193 = 1;
  }

  if (isDebugVerboseMode_onceToken != -1)
  {
    dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
  }

  if (isDebugVerboseMode_debugEnabled == 1)
  {
    v456 = *__error();
    v457 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v457, OS_LOG_TYPE_DEFAULT))
    {
      v458 = *(v725 + 8 * v704);
      *&v786[0] = __PAIR64__(v190, v709.n128_u32[0]);
      WORD4(v786[0]) = 2048;
      *(v786 + 10) = v458;
      WORD1(v786[1]) = 1024;
      DWORD1(v786[1]) = v685;
      WORD4(v786[1]) = 2048;
      *(&v786[1] + 10) = v188;
      WORD1(v786[2]) = 1024;
      DWORD1(v786[2]) = v683;
      WORD4(v786[2]) = 1024;
      *(&v786[2] + 10) = v193;
      _os_log_impl(&dword_1C278D000, v457, OS_LOG_TYPE_DEFAULT, "[ContentIndexQuery](group: %d, oid: %llu, date: %u, pscore: %f, containerId: %u, collecting_2: %d)", v786, 0x2Eu);
    }

    *__error() = v456;
    v44 = v761;
    v176 = v757;
    v155 = v755;
    v45 = v749;
    v181 = v743;
  }

  v684 = v190;
  if (!v728)
  {
    v769 = v715;
    v768 = LOBYTE(v715);
    if (v719)
    {
      v205 = *(v712 + 8 * (v190 >> 6));
      v767 = 0;
      v153.n128_u64[0] = 0;
      if ((v205 >> (v190 & 0x1F)))
      {
        v206 = 1;
        if (v176 && (*(v44 + 55) & 1) == 0)
        {
          v207 = **(v713 + 32 * v192);
          if (v207 && v207[2] > v721)
          {
            v208 = *v207;
            v209 = (v208 + 80);
            v157 = v208 == 0;
            v210 = &ZERO_RANKING_WRAPPED_BITS;
            if (!v157)
            {
              v210 = v209;
            }

            v153.n128_u32[0] = *(v210 + 16);
          }

          v206 = 1;
        }
      }

      else
      {
        v206 = 0;
      }
    }

    else
    {
      v206 = 0;
      v767 = 0;
      v153.n128_u64[0] = 0;
    }

    v246 = *(v45 + 8 * *(v44 + 64));
    v247 = *(v155 + 208);
    v794 = *(v155 + 192);
    v795 = v247;
    v796 = *(v155 + 224);
    v248 = *(v155 + 144);
    v790 = *(v155 + 128);
    v791 = v248;
    v249 = *(v155 + 160);
    v793 = *(v155 + 176);
    v792 = v249;
    v250 = *(v155 + 80);
    v786[4] = *(v155 + 64);
    v787 = v250;
    v251 = *(v155 + 96);
    v789 = *(v155 + 112);
    v788 = v251;
    v252 = *(v155 + 16);
    v786[0] = *v155;
    v786[1] = v252;
    v253 = *(v155 + 32);
    v786[3] = *(v155 + 48);
    v786[2] = v253;
    v676 = v206;
    hybridScoringL1(v704, v786, v745, v206, v246, 0, &v769, &v768, v153, &v767);
    v254 = v153.n128_f32[0];
    if (v176)
    {
      v255 = *(v713 + 32 * v192);
      if (v767 == 3)
      {
        v256 = (v255 + 16);
      }

      else
      {
        v256 = *(v713 + 32 * v192);
        if (v767 == 2)
        {
          v256 = (v255 + 8);
        }
      }

      v257 = *v256;
    }

    else
    {
      v257 = 0;
    }

    if (v193)
    {
      if (!*v155)
      {
        v268 = 1;
        v265 = 0;
        v269 = 0;
        v270 = 0;
        v267 = 0;
        v271 = v701;
        goto LABEL_360;
      }

      v153.n128_u64[1] = 0;
      v765 = 0u;
      v766 = 0u;
      v763 = 0u;
      v764 = 0u;
      v258 = 1;
      v259 = 0;
      v260 = 0;
    }

    else
    {
      v261 = *v257;
      if (v261)
      {
        v262 = (v261 + 80);
      }

      else
      {
        v262 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v263 = v262[3];
      v786[2] = v262[2];
      v786[3] = v263;
      v786[4] = v262[4];
      v264 = *v262;
      v786[1] = v262[1];
      v786[0] = v264;
      v265 = 0;
      v266 = ci_lt_l1_score(v786, 0, 0, v685, v153.n128_f32[0], v188);
      if (!*v155 && v266)
      {
        v267 = 0;
        v268 = 1;
        v269 = 0;
        v270 = 0;
        v271 = v701;
        goto LABEL_360;
      }

      v153.n128_u64[1] = 0;
      v765 = 0u;
      v766 = 0u;
      v763 = 0u;
      v764 = 0u;
      if (v266)
      {
        v258 = 1;
        v259 = 0;
        v260 = 0;
      }

      else
      {
        v306 = v262[2];
        v763 = v262[1];
        v764 = v306;
        v153 = v262[3];
        v307 = v262[4];
        v260 = *v262;
        v259 = *(v262 + 1);
        v765 = v153;
        v766 = v307;
        v258 = 0;
      }

      v181 = v743;
    }

    *&v667 = v260;
    *(&v667 + 1) = v259;
    v666 = v258;
    v308 = *(v155 + 24);
    if (v308 < 1)
    {
      v351 = 0;
      v355 = 0;
      v354 = 0;
      v350 = 0;
LABEL_356:
      v360 = v354;
      if (v666)
      {
        v361 = 1;
        v362 = v355;
        v363 = v350;
        v265 = v351;
LABEL_359:
        v271 = v701;
        v268 = v361;
        v267 = v363;
        v269 = v362;
        v270 = v360;
LABEL_360:
        v366 = v268;
        if (dword_1EBF46AD0 >= 5)
        {
          v462 = v268;
          v463 = *__error();
          v464 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v464, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v786[0]) = 136316162;
            v465 = "dropping";
            if (v462)
            {
              v465 = "collecting";
            }

            *(v786 + 4) = v465;
            WORD6(v786[0]) = 1024;
            *(v786 + 14) = v684;
            WORD1(v786[1]) = 2048;
            *(&v786[1] + 4) = v265;
            WORD6(v786[1]) = 2048;
            *(&v786[1] + 14) = v267;
            WORD3(v786[2]) = 1024;
            DWORD2(v786[2]) = v685;
            _os_log_impl(&dword_1C278D000, v464, OS_LOG_TYPE_DEFAULT, "%s %d %llx%016llx %d", v786, 0x2Cu);
          }

          *__error() = v463;
          v44 = v761;
          v45 = v749;
          v271 = v701;
          v366 = v462;
        }

        if (isDebugVerboseMode_onceToken != -1)
        {
          v466 = v366;
          dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
          v366 = v466;
        }

        if (isDebugVerboseMode_debugEnabled == 1)
        {
          v467 = v366;
          v468 = *__error();
          v469 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v469, OS_LOG_TYPE_DEFAULT))
          {
            v470 = *(v725 + 8 * v704);
            *&v786[0] = __PAIR64__(v684, v708);
            WORD4(v786[0]) = 2048;
            *(v786 + 10) = v470;
            WORD1(v786[1]) = 1024;
            DWORD1(v786[1]) = v685;
            WORD4(v786[1]) = 2048;
            *(&v786[1] + 10) = v254;
            WORD1(v786[2]) = 2048;
            *(&v786[2] + 4) = v769;
            WORD6(v786[2]) = 2048;
            *(&v786[2] + 14) = v188;
            WORD3(v786[3]) = 1024;
            DWORD2(v786[3]) = v683;
            WORD6(v786[3]) = 1024;
            *(&v786[3] + 14) = v467;
            _os_log_impl(&dword_1C278D000, v469, OS_LOG_TYPE_DEFAULT, "[ContentIndexQuery](group: %d, oid: %llu, date: %u, hybridScoreL1: %f, sparseScoreL1:%f, pscore: %f, containerId: %u, collecting_4: %d)", v786, 0x42u);
          }

          *__error() = v468;
          v44 = v761;
          v45 = v749;
          v271 = v701;
          v366 = v467;
        }

        v367 = v366 ^ 1;
        v163 = v691 + (v366 ^ 1u);
        if ((v716 & 8) != 0)
        {
          v367 = 0;
        }

        if (v367)
        {
          v232 = v271;
          goto LABEL_371;
        }

        v677 = v366;
        v368 = v704;
        v369 = *(v725 + 8 * v704);
        if (v727 && SIUINT32SetContainsValue(v727, HIDWORD(v369)))
        {
          v232 = v701;
          *(v751 + 8 * v701) = 0;
          *(v752 + 8 * v232) = v748 + v368;
LABEL_371:
          v233 = v700;
          v234 = v702;
          v77 = v758;
          v155 = v755;
          v78 = v745;
          goto LABEL_511;
        }

        v370 = v701;
        *(v751 + 8 * v701) = v369;
        *(v752 + 8 * v370) = v748 + v368;
        if (!v369)
        {
          v232 = v701;
          goto LABEL_371;
        }

        v371 = v701;
        if (*v755)
        {
          v372 = v769;
          v373 = *v755 + 80 * v701;
          v374 = v768;
          *v373 = v267;
          *(v373 + 8) = v265;
          *(v373 + 16) = v267;
          *(v373 + 24) = v265;
          *(v373 + 32) = v269;
          *(v373 + 40) = v270;
          *(v373 + 48) = v685;
          *(v373 + 52) = v188;
          *(v373 + 56) = v683;
          *(v373 + 60) = v254;
          *(v373 + 64) = v372;
          *(v373 + 68) = v374;
          *(v373 + 69) = v676;
        }

        v375 = 0;
        if (((1 << v684) & v702) != 0)
        {
          v376 = 0;
        }

        else
        {
          v376 = 1 << v684;
        }

        v672 = v376;
        v673 = ((1 << v684) & v702) == 0;
        v155 = v755;
        v377 = *(v755 + 56);
        if (v377)
        {
          v375 = countInUpdates(v377, v368);
        }

        v77 = v758;
        v78 = v745;
        v378 = 5 * v371;
        *(*(v155 + 8) + v378) = v375;
        v379 = *(v155 + 64);
        if (v379)
        {
          v380 = countInUpdates(v379, v368);
        }

        else
        {
          v380 = 0;
        }

        *(*(v155 + 8) + v378 + 1) = v380;
        v381 = *(v155 + 72);
        if (v381)
        {
          v382 = countInUpdates(v381, v368);
        }

        else
        {
          v382 = 0;
        }

        *(*(v155 + 8) + v378 + 2) = v382;
        v383 = *(v155 + 80);
        if (v383)
        {
          v384 = countInUpdates(v383, v368);
        }

        else
        {
          v384 = 0;
        }

        *(*(v155 + 8) + v378 + 3) = v384;
        v385 = *(v155 + 88);
        if (v385)
        {
          v386 = countInUpdates(v385, v368);
        }

        else
        {
          v386 = 0;
        }

        *(*(v155 + 8) + v378 + 4) = v386;
        if (*(v155 + 120) && *(v155 + 168))
        {
          v387 = 0;
          v388 = *(v155 + 168);
          v389 = *(v155 + 120);
          v390 = 0;
          v391 = 0;
          v392 = 3.4028e38;
LABEL_396:
          v393 = *(v388 + 8 * v387);
          if (v393)
          {
            LOBYTE(v763) = LOBYTE(v715);
            *v786 = v715;
            v153.n128_f32[0] = distanceHolderGetMinDistance(v393, *(v78 + 80) + v368, &v763, v786);
            if (v390)
            {
              v394 = v390;
            }

            else
            {
              v394 = 1;
            }

            if ((v763 & (v153.n128_f32[0] < v392)) != 0)
            {
              v395 = v394;
            }

            else
            {
              v395 = v390;
            }

            if ((v763 & (v153.n128_f32[0] < v392)) != 0)
            {
              v396 = LODWORD(v786[0]);
            }

            else
            {
              v153.n128_f32[0] = v392;
              v396 = v391;
            }

            v397 = *(v155 + 120);
            v398 = v395;
            v399 = v396;
            goto LABEL_408;
          }

          while (1)
          {
            v397 = v389;
            v398 = v390;
            v153.n128_f32[0] = v392;
            v399 = v391;
LABEL_408:
            v389 = v397;
            if (v387 + 1 >= v397)
            {
              break;
            }

            ++v387;
            v388 = *(v155 + 168);
            v391 = v399;
            v392 = v153.n128_f32[0];
            v390 = v398;
            if (v388)
            {
              goto LABEL_396;
            }
          }

          if (v398)
          {
            v400 = 1;
            v45 = v749;
            v292 = v701;
            goto LABEL_453;
          }

          v45 = v749;
        }

        else
        {
          LODWORD(v399) = 0;
        }

        v292 = v701;
        v153.n128_u32[0] = 2139095039;
        v400 = 0;
LABEL_453:
        v420 = v399;
        v421 = *(v155 + 16);
        v422 = v421 + 28 * v292;
        *(v422 + 4) = v153.n128_u32[0];
        *(v422 + 16) = v420;
        *v422 = v400;
        if (*(v155 + 128))
        {
          v423 = *(v155 + 176);
          if (v423)
          {
            v424 = 0;
            v425 = *(v155 + 176);
            v426 = *(v155 + 128);
            v427 = 0;
            v428 = 0;
            v429 = 3.4028e38;
LABEL_457:
            v430 = *(v425 + 8 * v424);
            if (v430)
            {
              LOBYTE(v763) = LOBYTE(v715);
              *v786 = v715;
              v153.n128_f32[0] = distanceHolderGetMinDistance(v430, *(v78 + 80) + v368, &v763, v786);
              if (v427)
              {
                v431 = v427;
              }

              else
              {
                v431 = 1;
              }

              if ((v763 & (v153.n128_f32[0] < v429)) != 0)
              {
                v432 = v431;
              }

              else
              {
                v432 = v427;
              }

              if ((v763 & (v153.n128_f32[0] < v429)) != 0)
              {
                v433 = LODWORD(v786[0]);
              }

              else
              {
                v153.n128_f32[0] = v429;
                v433 = v428;
              }

              v434 = *(v155 + 128);
              v423 = v432;
              v435 = v433;
              goto LABEL_469;
            }

            while (1)
            {
              v434 = v426;
              v423 = v427;
              v153.n128_f32[0] = v429;
              v435 = v428;
LABEL_469:
              v426 = v434;
              if (v424 + 1 >= v434)
              {
                break;
              }

              ++v424;
              v425 = *(v155 + 176);
              v428 = v435;
              v429 = v153.n128_f32[0];
              v427 = v423;
              if (v425)
              {
                goto LABEL_457;
              }
            }

            v157 = (v423 & 1) == 0;
            LOBYTE(v423) = v423 & 1;
            v436 = *(v155 + 16);
            if (v157)
            {
              v153.n128_f32[0] = 3.4028e38;
            }

            v45 = v749;
            v292 = v701;
            goto LABEL_477;
          }

          v153.n128_u32[0] = 2139095039;
          v436 = v421;
        }

        else
        {
          v153.n128_u32[0] = 2139095039;
          v436 = v421;
          LOBYTE(v423) = 0;
        }

        LODWORD(v435) = 0;
LABEL_477:
        v437 = v436 + 28 * v292;
        *(v437 + 8) = v153.n128_u32[0];
        *(v437 + 20) = v435;
        *(v437 + 1) = v423;
        if (*(v155 + 136) && *(v155 + 184))
        {
          v438 = 0;
          v439 = *(v155 + 184);
          v440 = *(v155 + 136);
          v441 = 0;
          v442 = 0;
          v443 = 3.4028e38;
LABEL_481:
          v444 = *(v439 + 8 * v438);
          if (v444)
          {
            LOBYTE(v763) = LOBYTE(v715);
            *v786 = v715;
            v153.n128_f32[0] = distanceHolderGetMinDistance(v444, *(v78 + 80) + v368, &v763, v786);
            if (v441)
            {
              v445 = v441;
            }

            else
            {
              v445 = 1;
            }

            if ((v763 & (v153.n128_f32[0] < v443)) != 0)
            {
              v446 = v445;
            }

            else
            {
              v446 = v441;
            }

            if ((v763 & (v153.n128_f32[0] < v443)) != 0)
            {
              v447 = LODWORD(v786[0]);
            }

            else
            {
              v153.n128_f32[0] = v443;
              v447 = v442;
            }

            v448 = *(v155 + 136);
            v449 = v446;
            v450 = v447;
            goto LABEL_493;
          }

          while (1)
          {
            v448 = v440;
            v449 = v441;
            v153.n128_f32[0] = v443;
            v450 = v442;
LABEL_493:
            v440 = v448;
            if (v438 + 1 >= v448)
            {
              break;
            }

            ++v438;
            v439 = *(v155 + 184);
            v442 = v450;
            v443 = v153.n128_f32[0];
            v441 = v449;
            if (v439)
            {
              goto LABEL_481;
            }
          }

          v157 = (v449 & 1) == 0;
          v451 = v449 & 1;
          v436 = *(v155 + 16);
          if (v157)
          {
            v153.n128_f32[0] = 3.4028e38;
          }

          v45 = v749;
          v292 = v701;
        }

        else
        {
          LODWORD(v450) = 0;
          v153.n128_u32[0] = 2139095039;
          v451 = 0;
        }

        v452 = v436 + 28 * v292;
        *(v452 + 12) = v153.n128_u32[0];
        *(v452 + 24) = v450;
        *(v452 + 2) = v451;
        v453 = v753;
        if (v753)
        {
          *(v753 + v292) = v747;
          if (v711)
          {
            v454 = CIIndexSetHasIndex(v735, v704);
            v453 = v753;
            if (v454)
            {
              *(v753 + v292) = 1;
            }
          }

          if (v750 && *(v453 + v292))
          {
            *v750 = 1;
          }

          if ((v677 & 1) == 0)
          {
            *(v453 + v292) |= 2u;
          }
        }

        v417 = v700;
        v419 = v672;
        v418 = v673;
        goto LABEL_509;
      }
    }

    else
    {
      v309 = *(v155 + 32);
      v310 = *(v155 + 40);
      v311 = 0;
      v312 = v731;
      v313 = v730;
      v314 = 0;
      v315 = 0;
      v316 = 0;
      v317 = v738;
      while (1)
      {
        v318 = v316;
        v319 = v315;
        v320 = v314;
        v321 = v311;
        v322 = v312;
        v323 = v308--;
        v324 = *(v309 + 8 * v308);
        v325 = *(v310 + 8 * v308);
        if (v324)
        {
          v648 = *(v310 + 8 * v308);
          v651 = v313;
          v654 = v316;
          v655 = v315;
          v656 = v314;
          v657 = v311;
          v664 = v323;
          v326 = 0;
          v327 = 4 * v322 - 4 * v324;
          v658 = v324;
          v659 = v322;
          v328 = 8 * v322 - 8 * v324;
          v329 = &v181[v327];
          v330 = &v737[v328];
          v331 = v710 + v328;
          v332 = &v744[v327];
          v333 = &v317[v328];
          v334 = 0;
          v335 = 0;
          do
          {
            if (CIIndexSetHasIndexWithHint(*&v333[8 * v326], v704, v332) && ((v335 = (v335 + 1), *(*(v331 + 8 * v326) + 52) == 3) || (v338 = *&v330[8 * v326]) != 0 && CIIndexSetHasIndexWithHint(v338, v704, v329)))
            {
              v337 = (v334 + 1);
              v336 = v335;
            }

            else
            {
              v336 = v335;
              v337 = v334;
            }

            ++v326;
            v329 += 4;
            v332 += 4;
            v334 = v337;
            v335 = v336;
          }

          while (v326 < *(*(v755 + 32) + 8 * v308));
          v339 = *(*(v755 + 40) + 8 * v308);
          v310 = *(v755 + 40);
          v309 = *(v755 + 32);
          v44 = v761;
          v45 = v749;
          v181 = v743;
          v317 = v738;
          v323 = v664;
          v324 = v658;
          v322 = v659;
          v320 = v656;
          v321 = v657;
          v318 = v654;
          v319 = v655;
          v313 = v651;
          v325 = v648;
        }

        else
        {
          v339 = *(v310 + 8 * v308);
          LODWORD(v336) = 0;
          LODWORD(v337) = 0;
        }

        v340 = 0;
        v341 = v313 - v325;
        v313 = v341;
        v342 = v336 >= 1 << v339 ? (1 << v339) - 1 : v336;
        v343 = (v342 >> 63 << v341) | (v342 >> 1 >> ~v341);
        v344 = v342 << v341;
        v345 = v337 >= 1 << v339 ? (1 << v339) - 1 : v337;
        v346 = (v341 & 0x40) != 0 ? v344 : v343;
        v347 = (v341 & 0x40) != 0 ? 0 : v344;
        v348 = v346 | v318;
        v349 = v347 | v319;
        v350 = v347 | v319;
        v351 = v346 | v318;
        v352 = (v345 >> 63 << v341) | (v345 >> 1 >> ~v341);
        v353 = v345 << v341;
        if ((v341 & 0x40) != 0)
        {
          v352 = v353;
        }

        else
        {
          v340 = v353;
        }

        v354 = v352 | v320;
        v355 = v340 | v321;
        if ((v666 & 1) == 0)
        {
          v356 = 0;
          v357 = -1 << v341;
          v358 = (v341 & 0x40) == 0;
          if ((v341 & 0x40) != 0)
          {
            v359 = -1 << v341;
          }

          else
          {
            v359 = (-1 << v341) | (0x7FFFFFFFFFFFFFFFuLL >> ~v341);
          }

          if (v358)
          {
            v356 = v357;
          }

          if (__PAIR128__(v348, v349) < __PAIR128__(v359 & *(&v667 + 1), v356 & v667))
          {
            break;
          }
        }

        v312 = v322 - v324;
        v311 = v355;
        v314 = v352 | v320;
        v315 = v350;
        v316 = v351;
        if (v323 <= 1)
        {
          goto LABEL_356;
        }
      }

      v360 = v352 | v320;
    }

    v363 = v350;
    v265 = v351;
    v364 = v360;
    v365 = v355;
    v786[0] = v667;
    v786[1] = v763;
    v786[2] = v764;
    v786[3] = v765;
    v786[4] = v766;
    v361 = ci_lt_l1_score(v786, v350, v351, v685, v254, v188);
    v362 = v365;
    v360 = v364;
    v45 = v749;
    goto LABEL_359;
  }

  v153.n128_u64[0] = 0;
  if (v719)
  {
    v198 = *(v712 + 8 * (v190 >> 6)) & (1 << (v190 & 0x1F));
    v199 = v198 != 0;
    v200 = v701;
    if (v176 && v198)
    {
      v201 = **(v713 + 32 * v192);
      if (v201 && (*(v44 + 55) & 1) == 0 && v201[2] > v721)
      {
        v202 = *v201;
        v203 = (v202 + 80);
        v157 = v202 == 0;
        v204 = &ZERO_RANKING_WRAPPED_BITS;
        if (!v157)
        {
          v204 = v203;
        }

        v153.n128_u32[0] = *(v204 + 16);
      }

      v199 = 1;
    }
  }

  else
  {
    v199 = 0;
    v200 = v701;
  }

  LOBYTE(v767) = LOBYTE(v715);
  *&v763 = v715;
  v769 = v715;
  v211 = *(v45 + 8 * *(v44 + 64));
  v212 = *(v155 + 208);
  v794 = *(v155 + 192);
  v795 = v212;
  v796 = *(v155 + 224);
  v213 = *(v155 + 144);
  v790 = *(v155 + 128);
  v791 = v213;
  v214 = *(v155 + 160);
  v793 = *(v155 + 176);
  v792 = v214;
  v215 = *(v155 + 80);
  v786[4] = *(v155 + 64);
  v787 = v215;
  v216 = *(v155 + 96);
  v789 = *(v155 + 112);
  v788 = v216;
  v217 = *(v155 + 16);
  v786[0] = *v155;
  v786[1] = v217;
  v218 = *(v155 + 32);
  v786[3] = *(v155 + 48);
  v786[2] = v218;
  hybridScoringL1(v704, v786, v745, v199, v211, LODWORD(v715), &v769, &v767, v153, &v763);
  v219 = v153.n128_f32[0];
  if (v176)
  {
    v220 = *(v713 + 32 * v192);
    v221 = v220 + 2;
    if (v763 == 2)
    {
      ++v220;
    }

    if (v763 == 3)
    {
      v220 = v221;
    }

    v222 = *v220;
  }

  else
  {
    v222 = 0;
  }

  v77 = v758;
  v78 = v745;
  if (v193)
  {
    v223 = 1;
  }

  else
  {
    v224 = *v222;
    v225 = (v224 + 80);
    v157 = v224 == 0;
    v226 = &ZERO_RANKING_WRAPPED_BITS;
    if (!v157)
    {
      v226 = v225;
    }

    v227 = v226[3];
    v786[2] = v226[2];
    v786[3] = v227;
    v786[4] = v226[4];
    v228 = *v226;
    v786[1] = v226[1];
    v786[0] = v228;
    v223 = ci_lt_l1_score(v786, 0, 0, v685, v153.n128_f32[0], v188);
  }

  if (isDebugVerboseMode_onceToken != -1)
  {
    dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
  }

  if (isDebugVerboseMode_debugEnabled == 1)
  {
    v459 = *__error();
    v460 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v460, OS_LOG_TYPE_DEFAULT))
    {
      v461 = *(v725 + 8 * v704);
      *&v786[0] = __PAIR64__(v684, v707.n128_u32[0]);
      WORD4(v786[0]) = 2048;
      *(v786 + 10) = v461;
      WORD1(v786[1]) = 1024;
      DWORD1(v786[1]) = v685;
      WORD4(v786[1]) = 2048;
      *(&v786[1] + 10) = v219;
      WORD1(v786[2]) = 2048;
      *(&v786[2] + 4) = v769;
      WORD6(v786[2]) = 2048;
      *(&v786[2] + 14) = v188;
      WORD3(v786[3]) = 1024;
      DWORD2(v786[3]) = v683;
      WORD6(v786[3]) = 1024;
      *(&v786[3] + 14) = v223;
      _os_log_impl(&dword_1C278D000, v460, OS_LOG_TYPE_DEFAULT, "[ContentIndexQuery](group: %d, oid: %llu, date: %u, hybridScoreL1: %f, sparseScoreL1:%f, pscore: %f, containerId: %u, collecting_3: %d)", v786, 0x42u);
    }

    *__error() = v459;
    v44 = v761;
    v77 = v758;
    v155 = v755;
    v45 = v749;
    v78 = v745;
    v200 = v701;
  }

  v229 = !v223;
  v163 = v691 + !v223;
  if ((v716 & 8) != 0)
  {
    v229 = 0;
  }

  if (v229)
  {
    v232 = v200;
LABEL_228:
    v233 = v700;
    v234 = v702;
    goto LABEL_511;
  }

  v230 = v704;
  v231 = *(v725 + 8 * v704);
  if (v727 && SIUINT32SetContainsValue(v727, HIDWORD(v231)))
  {
    v232 = v701;
    *(v751 + 8 * v701) = 0;
    *(v752 + 8 * v232) = v748 + v230;
    goto LABEL_228;
  }

  v235 = v701;
  *(v751 + 8 * v701) = v231;
  *(v752 + 8 * v235) = v748 + v230;
  if (!v231)
  {
    v232 = v701;
    goto LABEL_228;
  }

  v236 = v701;
  if (*v155)
  {
    v237 = v769;
    v238 = v767;
    v239 = *v155 + v701 * v705;
    *v239 = 0u;
    *(v239 + 16) = 0u;
    *(v239 + 32) = 0u;
    *(v239 + 48) = v685;
    *(v239 + 52) = v188;
    *(v239 + 56) = v683;
    *(v239 + 60) = v219;
    *(v239 + 64) = v237;
    *(v239 + 68) = v238;
    *(v239 + 69) = 1;
  }

  v240 = 0;
  if (((1 << v684) & v702) != 0)
  {
    v241 = 0;
  }

  else
  {
    v241 = 1 << v684;
  }

  v670 = v241;
  v671 = ((1 << v684) & v702) == 0;
  v242 = *(v155 + 56);
  if (v242)
  {
    v240 = countInUpdates(v242, v230);
  }

  v243 = 5 * v236;
  *(*(v155 + 8) + v243) = v240;
  v244 = *(v155 + 64);
  if (v244)
  {
    v245 = countInUpdates(v244, v230);
  }

  else
  {
    v245 = 0;
  }

  *(*(v155 + 8) + v243 + 1) = v245;
  v272 = *(v155 + 72);
  if (v272)
  {
    v273 = countInUpdates(v272, v230);
  }

  else
  {
    v273 = 0;
  }

  *(*(v155 + 8) + v243 + 2) = v273;
  v274 = *(v155 + 80);
  if (v274)
  {
    v275 = countInUpdates(v274, v230);
  }

  else
  {
    v275 = 0;
  }

  *(*(v155 + 8) + v243 + 3) = v275;
  v276 = *(v155 + 88);
  if (v276)
  {
    v277 = countInUpdates(v276, v230);
  }

  else
  {
    v277 = 0;
  }

  *(*(v155 + 8) + v243 + 4) = v277;
  if (!*(v155 + 120) || !*(v155 + 168))
  {
    goto LABEL_289;
  }

  v278 = 0;
  v279 = *(v155 + 168);
  v280 = *(v155 + 120);
  v281 = 0;
  v282 = 0;
  v283 = 3.4028e38;
LABEL_274:
  v284 = *(v279 + 8 * v278);
  if (v284)
  {
    v768 = LOBYTE(v715);
    *v786 = v715;
    v153.n128_f32[0] = distanceHolderGetMinDistance(v284, *(v78 + 80) + v230, &v768, v786);
    if (v281)
    {
      v285 = v281;
    }

    else
    {
      v285 = 1;
    }

    if ((v768 & (v153.n128_f32[0] < v283)) != 0)
    {
      v286 = v285;
    }

    else
    {
      v286 = v281;
    }

    if ((v768 & (v153.n128_f32[0] < v283)) != 0)
    {
      v287 = LODWORD(v786[0]);
    }

    else
    {
      v153.n128_f32[0] = v283;
      v287 = v282;
    }

    v155 = v755;
    v288 = *(v755 + 120);
    v289 = v286;
    v290 = v287;
    goto LABEL_286;
  }

  while (1)
  {
    v288 = v280;
    v289 = v281;
    v153.n128_f32[0] = v283;
    v290 = v282;
    v155 = v755;
LABEL_286:
    v280 = v288;
    if (v278 + 1 >= v288)
    {
      break;
    }

    ++v278;
    v279 = *(v155 + 168);
    v282 = v290;
    v283 = v153.n128_f32[0];
    v281 = v289;
    if (v279)
    {
      goto LABEL_274;
    }
  }

  v45 = v749;
  if (v289)
  {
    v291 = 1;
  }

  else
  {
LABEL_289:
    LODWORD(v290) = 0;
    v153.n128_u32[0] = 2139095039;
    v291 = 0;
  }

  v292 = v701;
  v293 = *(v155 + 16) + v701 * v706;
  *(v293 + 4) = v153.n128_u32[0];
  *(v293 + 16) = v290;
  *v293 = v291;
  if (!*(v155 + 128))
  {
    v153.n128_u32[0] = 2139095039;
    LOBYTE(v294) = 0;
LABEL_413:
    v305 = 0.0;
    goto LABEL_414;
  }

  v294 = *(v155 + 176);
  if (!v294)
  {
    v153.n128_u32[0] = 2139095039;
    goto LABEL_413;
  }

  v295 = 0;
  v296 = *(v155 + 176);
  v297 = *(v155 + 128);
  v298 = 0;
  v299 = 0;
  v300 = 3.4028e38;
LABEL_294:
  v301 = *(v296 + 8 * v298);
  if (v301)
  {
    v768 = LOBYTE(v715);
    *v786 = v715;
    v153.n128_f32[0] = distanceHolderGetMinDistance(v301, *(v78 + 80) + v230, &v768, v786);
    if (v299)
    {
      LODWORD(v302) = v299;
    }

    else
    {
      LODWORD(v302) = 1;
    }

    if ((v768 & (v153.n128_f32[0] < v300)) != 0)
    {
      v302 = v302;
    }

    else
    {
      v302 = v299;
    }

    if ((v768 & (v153.n128_f32[0] < v300)) != 0)
    {
      v303 = LODWORD(v786[0]);
    }

    else
    {
      v153.n128_f32[0] = v300;
      v303 = v295;
    }

    v155 = v755;
    v304 = *(v755 + 128);
    goto LABEL_306;
  }

  while (1)
  {
    v304 = v297;
    v302 = v299;
    v153.n128_f32[0] = v300;
    v303 = v295;
    v155 = v755;
LABEL_306:
    v297 = v304;
    if (v298 + 1 >= v304)
    {
      break;
    }

    ++v298;
    v296 = *(v155 + 176);
    v295 = v303;
    v300 = v153.n128_f32[0];
    v299 = v302;
    if (v296)
    {
      goto LABEL_294;
    }
  }

  if (v302)
  {
    v305 = *&v303;
  }

  else
  {
    v153.n128_f32[0] = 3.4028e38;
    v305 = v715;
  }

  if (v302)
  {
    LOBYTE(v294) = 1;
  }

  else
  {
    LOBYTE(v294) = LOBYTE(v715);
  }

  v45 = v749;
  v292 = v701;
LABEL_414:
  v401 = *(v155 + 16) + 28 * v292;
  *(v401 + 8) = v153.n128_u32[0];
  *(v401 + 20) = v305;
  *(v401 + 1) = v294;
  if (!*(v155 + 136))
  {
    v153.n128_u32[0] = 2139095039;
    LOBYTE(v402) = 0;
LABEL_440:
    v413 = 0.0;
    goto LABEL_441;
  }

  v402 = *(v155 + 184);
  if (!v402)
  {
    v153.n128_u32[0] = 2139095039;
    goto LABEL_440;
  }

  v403 = 0;
  v404 = *(v155 + 184);
  v405 = *(v155 + 136);
  v406 = 0;
  v407 = 0;
  v408 = 3.4028e38;
LABEL_418:
  v409 = *(v404 + 8 * v406);
  if (v409)
  {
    v768 = LOBYTE(v715);
    *v786 = v715;
    v153.n128_f32[0] = distanceHolderGetMinDistance(v409, *(v78 + 80) + v230, &v768, v786);
    if (v407)
    {
      LODWORD(v410) = v407;
    }

    else
    {
      LODWORD(v410) = 1;
    }

    if ((v768 & (v153.n128_f32[0] < v408)) != 0)
    {
      v410 = v410;
    }

    else
    {
      v410 = v407;
    }

    if ((v768 & (v153.n128_f32[0] < v408)) != 0)
    {
      v411 = LODWORD(v786[0]);
    }

    else
    {
      v153.n128_f32[0] = v408;
      v411 = v403;
    }

    v155 = v755;
    v412 = *(v755 + 136);
    goto LABEL_430;
  }

  while (1)
  {
    v412 = v405;
    v410 = v407;
    v153.n128_f32[0] = v408;
    v411 = v403;
    v155 = v755;
LABEL_430:
    v405 = v412;
    if (v406 + 1 >= v412)
    {
      break;
    }

    ++v406;
    v404 = *(v155 + 184);
    v403 = v411;
    v408 = v153.n128_f32[0];
    v407 = v410;
    if (v404)
    {
      goto LABEL_418;
    }
  }

  if (v410)
  {
    v413 = *&v411;
  }

  else
  {
    v153.n128_f32[0] = 3.4028e38;
    v413 = v715;
  }

  if (v410)
  {
    LOBYTE(v402) = 1;
  }

  else
  {
    LOBYTE(v402) = LOBYTE(v715);
  }

  v45 = v749;
  v292 = v701;
LABEL_441:
  v414 = *(v155 + 16) + 28 * v292;
  *(v414 + 12) = v153.n128_u32[0];
  *(v414 + 24) = v413;
  *(v414 + 2) = v402;
  v415 = v753;
  if (v753)
  {
    *(v753 + v292) = v747;
    if (v711)
    {
      v416 = CIIndexSetHasIndex(v735, v704);
      v415 = v753;
      if (v416)
      {
        *(v753 + v292) = 1;
      }
    }

    if (v750 && *(v415 + v292))
    {
      *v750 = 1;
    }

    if (!v223)
    {
      *(v415 + v292) |= 2u;
    }
  }

  v417 = v700;
  v419 = v670;
  v418 = v671;
LABEL_509:
  v455 = v417 + v418;
  v233 = v455;
  v234 = v419 | v702;
  v232 = v292 + 1;
  if (v292 + 1 <= v726 || v455 >= v722)
  {
LABEL_511:
    v164 = v232;
    v162 = v233;
    v165 = v234;
    v152 = v742;
    v171 = v703;
    goto LABEL_136;
  }

  LODWORD(v147) = v704;
  v73 = v232;
  v474 = 1;
LABEL_725:
  v475 = v474;
  v472 = v147;
  v473 = v163;
LABEL_726:
  v97 = v73;
LABEL_727:
  v95 = v475;
LABEL_728:
  v79 = v746;
  add_explicit = v741;
  if (v472 <= *(v44 + 44))
  {
    v472 = *(v44 + 44);
  }

  *(v44 + 40) = v472;
  if ((v785 & 1) == 0)
  {
    v641 = __si_assert_copy_extra_332();
    v642 = v641;
    v643 = "";
    if (v641)
    {
      v643 = v641;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 5057, "asserted", v643);
    goto LABEL_750;
  }

  v635 = v473;
  v785 = 0;
  v636 = threadData[9 * v775 + 1] + 320 * HIDWORD(v774);
  *(v636 + 312) = v734;
  v637 = *(v636 + 232);
  if (v637)
  {
    v637(*(v636 + 288));
  }

  dropThreadId(v775, 0, v739 + 1);
  v114 = v635;
LABEL_734:
  v638 = v114;
  v639 = threadData[9 * v781 + 1] + 320 * HIDWORD(v780);
  *(v639 + 312) = v740;
  v640 = *(v639 + 232);
  if (v640)
  {
    v640(*(v639 + 288));
  }

  dropThreadId(v781, 0, add_explicit + 1);
  v96 = v638;
LABEL_83:
  v98 = v96;
  pthread_mutex_lock((v77 + v79));
  v99 = *(v78 + 14700) - 1;
  *(v78 + 14700) = v99;
  if (!v99)
  {
    db_rwlock_wakeup(v77 + v79, 0, 0);
  }

  pthread_mutex_unlock((v77 + v79));
  v75 = v98;
  v76 = v97;
  result = v95;
LABEL_86:
  if (v785)
  {
    *(v44 + 58) = 1;
  }

  else
  {
    *v762 = v76;
    *v760 = v75;
  }

  return result;
}