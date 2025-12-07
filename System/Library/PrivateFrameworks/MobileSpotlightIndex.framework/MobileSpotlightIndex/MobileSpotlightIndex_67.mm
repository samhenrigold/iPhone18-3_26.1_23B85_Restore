void sub_1C2B83584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, __int128 **a2)
{
  v2 = a1;
  v3 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v4 = v3;
  }

  v5 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v4);
  v6 = v5;
  v7 = *(&SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 1);
  if (!*(&SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 1))
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(*(&SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 8));
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *(&SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 1))
    {
      v10 = v5 % *(&SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 1);
    }
  }

  else
  {
    v10 = (*(&SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 1) - 1) & v5;
  }

  v11 = *(SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v12 + 2, v2))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_1C2B83B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<int>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void **std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = v7 >> 1;
    if (v7 >> 1 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    std::vector<int>::__vallocate[abi:nn200100](v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v17 = a3 - __src;
    if (v17)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v8[v17];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      do
      {
        v15 = *v13;
        v13 += 4;
        *v14 = v15;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v16 = v14;
  }

  v6[1] = v16;
  return result;
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<int>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        *(v2 + 48) = v3;
        operator delete(v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void *_SISetGetLockStateCallback(void *aBlock)
{
  if (sGetLockStateCallback)
  {
    _Block_release(sGetLockStateCallback);
  }

  result = _Block_copy(aBlock);
  sGetLockStateCallback = result;
  return result;
}

uint64_t _SISuspendThreadIfLocked(thread_read_t *a1, void (**a2)(void, void))
{
  v17 = *MEMORY[0x1E69E9840];
  if (sForceResume)
  {
    return 0;
  }

  result = sGetLockStateCallback;
  if (sGetLockStateCallback)
  {
    result = (*(sGetLockStateCallback + 16))();
    if (result)
    {
      if (gTerminating)
      {
        if (dword_1EBF46AF4 < 5)
        {
          return 0;
        }

        v5 = result;
        v6 = *__error();
        v7 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v16 = v5;
          _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "process terminating, skip suspend for lock state %d", buf, 8u);
        }

        v8 = __error();
        result = 0;
        *v8 = v6;
      }

      else
      {
        v9 = MEMORY[0x1C6920BC0]();
        if (v9 == a1)
        {
          v10 = dispatch_group_create();
          v11 = qos_class_self();
          global_queue = dispatch_get_global_queue(v11, 0);
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 0x40000000;
          v13[2] = ___SISuspendThreadIfLocked_block_invoke;
          v13[3] = &unk_1E81977A8;
          v14 = a1;
          v13[4] = a2;
          dispatch_group_async(v10, global_queue, v13);
          dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
          dispatch_release(v10);
        }

        else
        {
          _SISuspendThread(a1, a2);
        }

        mach_port_deallocate(*MEMORY[0x1E69E9A60], v9);
        return 1;
      }
    }
  }

  return result;
}

thread_read_t *_SISuspendThread(thread_read_t *result, void (**a2)(void, void))
{
  if ((sForceResume & 1) == 0)
  {
    v4 = result;
    thread_suspend(result);
    if (a2)
    {
      a2[2](a2, 1);
    }

    v5 = OSAtomicDequeue(&threadResumeFreeQueue, 0);
    if (!v5)
    {
      v5 = malloc_type_malloc(0x18uLL, 0x1080040216EE090uLL);
    }

    v5[2] = v4;
    if (a2)
    {
      v6 = _Block_copy(a2);
    }

    else
    {
      v6 = 0;
    }

    *(v5 + 2) = v6;
    OSAtomicEnqueue(&threadResumeQueue, v5, 0);

    return SIResumeForUnlock();
  }

  return result;
}

void _SISetSystemStatusBusy(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = a1 != 0;
  pthread_mutex_lock(&_gSystemStatusLock);
  _gSystemStatusBool = v2;
  __dmb(0xBu);
  pthread_cond_broadcast(&_gSystemStatusCond);
  pthread_mutex_unlock(&_gSystemStatusLock);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3[0] = 67109120;
    v3[1] = a1 != 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "======= fd_system_status_set_busy:%d", v3, 8u);
  }
}

uint64_t SIOpenIndexAtPathWithCallbacks(const __CFString *a1, CFDictionaryRef theDict, const void *a3, void *a4, const void *a5, char a6, _DWORD *a7, int **a8)
{
  v75 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v14 = MEMORY[0x1E695E4D0];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kIndexLockedIndexing");
    v16 = *v14;
    v63 = Value == *v14;
    v17 = CFDictionaryGetValue(theDict, @"kIndexOptionPriorityPC");
    if (v17)
    {
      v18 = v17;
      v19 = v14;
      v20 = a6;
      v21 = CFGetTypeID(v17);
      v22 = v21 == CFNumberGetTypeID();
      a6 = v20;
      v14 = v19;
      if (v22)
      {
        CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr);
      }
    }

    v23 = CFDictionaryGetValue(theDict, @"kIndexOptionResetForLargePostings") == v16;
  }

  else
  {
    v23 = 0;
    v63 = 0;
  }

  if (SIOpenIndexAtPathWithCallbacks_onceToken != -1)
  {
    dispatch_once(&SIOpenIndexAtPathWithCallbacks_onceToken, &__block_literal_global_13087);
  }

  v67 = 0;
  if (!__kSI_PersistentIDStoreTypeID)
  {
    __kSI_PersistentIDStoreTypeID = _CFRuntimeRegisterClass();
  }

  v61 = a7;
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 24) = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  v25 = unk_1F427C608;
  *(Instance + 192) = xmmword_1F427C5F8;
  *(Instance + 208) = v25;
  *(Instance + 224) = xmmword_1F427C618;
  v26 = unk_1F427C5C8;
  *(Instance + 128) = xmmword_1F427C5B8;
  *(Instance + 144) = v26;
  v27 = unk_1F427C5E8;
  *(Instance + 160) = xmmword_1F427C5D8;
  *(Instance + 176) = v27;
  v28 = unk_1F427C588;
  *(Instance + 64) = xmmword_1F427C578;
  *(Instance + 80) = v28;
  v29 = *&off_1F427C5A8;
  *(Instance + 96) = xmmword_1F427C598;
  *(Instance + 112) = v29;
  v30 = unk_1F427C568;
  *(Instance + 32) = SI_PersistentIDStore_FileProviders_TEMPLATE;
  *(Instance + 48) = v30;
  v31 = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
  *(Instance + 16) = v31;
  v31[2] = -1;
  *(Instance + 120) = 1;
  v32 = 320;
  if (theDict)
  {
    v33 = v23;
    v34 = a3;
    v35 = a5;
    v36 = a1;
    v37 = a6;
    v38 = CFDictionaryGetValue(theDict, @"kIndexOptionReadOnly");
    v39 = *v14;
    HIDWORD(v60) = CFDictionaryGetValue(theDict, @"kIndexOptionPrivate") == v39;
    LODWORD(v60) = CFDictionaryGetValue(theDict, @"kIndexOptionManaged") == v39;
    v22 = v38 == v39;
    a6 = v37;
    a1 = v36;
    a5 = v35;
    a3 = v34;
    v23 = v33;
    if (v22)
    {
      a6 = 0;
      v32 = 324;
    }

    else
    {
      v32 = 320;
    }
  }

  else
  {
    v60 = 0;
  }

  v40 = malloc_type_malloc(0xB8uLL, 0x10800409BF3594BuLL);
  v41 = *&off_1F4281988;
  *(v40 + 6) = xmmword_1F4281978;
  *(v40 + 7) = v41;
  *(v40 + 8) = xmmword_1F4281998;
  *(v40 + 18) = qword_1F42819A8;
  v42 = *&off_1F4281948;
  *(v40 + 2) = xmmword_1F4281938;
  *(v40 + 3) = v42;
  v43 = unk_1F4281968;
  *(v40 + 4) = xmmword_1F4281958;
  *(v40 + 5) = v43;
  v44 = *&off_1F4281928;
  *v40 = SIOpenIndexAtPathWithCallbacks_si_callbacks;
  *(v40 + 1) = v44;
  v45 = a4;
  if (a4)
  {
    v45 = _Block_copy(a4);
    v46 = _SIScheduleWake;
  }

  else
  {
    v46 = 0;
  }

  *(v40 + 19) = v45;
  *(v40 + 10) = v46;
  *(v40 + 15) = _SIBudgetCallback;
  *(v40 + 20) = _Block_copy(a3);
  *(v40 + 21) = _Block_copy(a5);
  *(v40 + 44) = 1;
  *(v40 + 18) = v40;
  bzero(buffer, 0x400uLL);
  if (!CFStringGetFileSystemRepresentation(a1, buffer, 1024) || (v47 = open(buffer, 0x8000), (v47 & 0x80000000) != 0))
  {
    v54 = 0xFFFFFFFFLL;
  }

  else
  {
    v48 = v47;
    v49 = v32 | 0x1000;
    if (!HIDWORD(v60))
    {
      v49 = v32;
    }

    if (v60)
    {
      v49 |= 0x100000u;
    }

    if (v63)
    {
      v49 |= 0x40000u;
    }

    v50 = v49 | (valuePtr << 24);
    if (v23)
    {
      v51 = v50 | 0x80000;
    }

    else
    {
      v51 = v50;
    }

    if (SIBullseyeNoForceUnigramsDefault_onceToken[0] != -1)
    {
      dispatch_once(SIBullseyeNoForceUnigramsDefault_onceToken, &__block_literal_global_16_6518);
    }

    v52 = SIBullseyeNoForceUnigramsDefault_sUnigrams;
    if (!SIBullseyeNoForceUnigramsDefault_sUnigrams)
    {
      if (SIOpenIndexAtPathWithCallbacks_onceToken_31 != -1)
      {
        dispatch_once(&SIOpenIndexAtPathWithCallbacks_onceToken_31, &__block_literal_global_35_13088);
      }

      if (SIOpenIndexAtPathWithCallbacks_isCJPrimary)
      {
        v51 = v51 | 0x200;
      }

      else
      {
        v51 = v51;
      }
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    memset(buf, 0, sizeof(buf));
    atomic_fetch_add_explicit(v40 + 44, 1u, memory_order_relaxed);
    v65 = 0uLL;
    v66 = 0;
    v53 = SIOpenIndex(&v67, v48, 0, 0, v51, buf, &v65, v40, Instance, v61);
    if (v53 >= 0 || (a6 & 1) == 0 || v63)
    {
      v54 = v53;
      if ((v53 & 0x80000000) == 0)
      {
        SISetScanCount(v67, 0, 0);
      }
    }

    else
    {
      if (v52)
      {
        v55 = 2;
      }

      else
      {
        v55 = 514;
      }

      atomic_fetch_add_explicit(v40 + 44, 1u, memory_order_relaxed);
      v65 = 0uLL;
      v66 = 0;
      v54 = SICreateNewIndex(&v67, v48, 0, 0, v51 | v55, &v65, v40, Instance, v61);
      if (!v54)
      {
        v54 = 1;
        SISetScanCount(v67, 0, 1);
        SIInitialIndexingEnded(v67, 0);
      }
    }

    close(v48);
  }

  si_index_ctx_release(v40);
  if (Instance && v67)
  {
    v56 = *(Instance + 16);
    if (v56)
    {
      *v56 = v67;
    }

    else
    {
      v57 = *__error();
      v58 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "SIOpenIndexAtPathWithCallbacks";
        *&buf[12] = 1024;
        *&buf[14] = 567;
        _os_log_error_impl(&dword_1C278D000, v58, OS_LOG_TYPE_ERROR, "%s:%d: Cannot setIndexRef for psid store.", buf, 0x12u);
      }

      *__error() = v57;
    }
  }

  CFRelease(Instance);
  if ((v54 & 0x80000000) == 0)
  {
    *a8 = v67;
  }

  return v54;
}

void si_index_ctx_release(void *a1)
{
  if (atomic_fetch_add_explicit(a1 + 44, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v3 = *(a1 + 19);
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = *(a1 + 20);
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = *(a1 + 21);
    if (v5)
    {
      _Block_release(v5);
    }

    free(a1);
  }
}

void __SIOpenIndexAtPathWithCallbacks_block_invoke_32()
{
  v0 = CFLocaleCopyPreferredLanguages();
  v1 = v0;
  if (v0)
  {
    if (CFArrayGetCount(v0))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
      if (CFStringFind(ValueAtIndex, @"ja", 9uLL).length || CFStringFind(ValueAtIndex, @"zh", 9uLL).length)
      {
        SIOpenIndexAtPathWithCallbacks_isCJPrimary = 1;
      }
    }
  }

  CFRelease(v1);
}

uint64_t _SIDASResumeMergeCallback(_xpc_activity_s *a1)
{
  result = xpc_activity_should_defer(a1);
  if ((result & 1) == 0)
  {
    pthread_mutex_lock(&mergeMutex);
    pthread_cond_broadcast(&mergeCond);

    return pthread_mutex_unlock(&mergeMutex);
  }

  return result;
}

uint64_t _SIDeleteCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sCSRelatedItemCallback)
  {
    return sCSRelatedItemCallback(0, a3, a4, 0, 2);
  }

  return result;
}

uint64_t _SIAccountingEndCallback(uint64_t a1)
{
  result = *(a1 + 168);
  if (result)
  {
    return (*(result + 16))(result, 0xFFFFFFFFLL);
  }

  return result;
}

uint64_t _SIAccountingStartCallback(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1)
  {
    (*(v1 + 16))(v1, 1);
  }

  return 0;
}

void *__SIOpenIndexAtPathWithCallbacks_block_invoke()
{
  result = g_prot_error_callback;
  if (g_prot_error_callback != &__block_literal_global_21_13100)
  {
    if (g_prot_error_callback)
    {
      _Block_release(g_prot_error_callback);
    }

    result = _Block_copy(&__block_literal_global_21_13100);
    g_prot_error_callback = result;
  }

  return result;
}

int *__SIOpenIndexAtPathWithCallbacks_block_invoke_22(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(10);
  v6 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = "Resume";
    v8 = *(a1 + 32);
    v9 = *(a1 + 36);
    if (a2)
    {
      v7 = "Suspend";
    }

    v11 = 136315650;
    v12 = v7;
    v13 = 1024;
    v14 = v8;
    v15 = 1024;
    v16 = v9;
    _os_log_impl(&dword_1C278D000, v5, v6, "%s fd:%d, error:%d (Check if background assertion required, maybe?)", &v11, 0x18u);
  }

  result = __error();
  *result = v4;
  return result;
}

uint64_t SISetFileProvidersCallbacks(uint64_t result, uint64_t a2, uint64_t a3)
{
  copyFPItemBlock = result;
  copyFPItemParentBlock = a2;
  copyFPItemAllParentsBlock = a3;
  return result;
}

uint64_t SISetAttributesForIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, __n128 a8)
{
  if (a5)
  {
    v8 = 5;
  }

  else
  {
    v8 = 4;
  }

  return SIBulkSetAttributes(a8, a1, a3, 0, a2, a4, 0, 0, v8, 5, a5, a6, a7, 0);
}

BOOL SIIndexIsInPlayback(_BOOL8 result)
{
  if (result)
  {
    v1 = atomic_load((result + 6888));
    return v1 != 0;
  }

  return result;
}

BOOL SIFlushAndSuspendIndex(uint64_t a1, char a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (gFlushSuspendOnceToken != -1)
  {
    dispatch_once(&gFlushSuspendOnceToken, &__block_literal_global_44);
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

LABEL_3:
  if (!*(a1 + 1192) || !*(a1 + 1040) || !*(a1 + 1048))
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x90uLL, 0x2004093837F09uLL);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  v4[8] = 0u;
  pthread_mutex_lock(&gSuspensionMutex);
  ++*(a1 + 676);
  pthread_mutex_unlock(&gSuspensionMutex);
  v5 = dispatch_group_create();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SIFlushAndSuspendIndex_block_invoke_2;
  block[3] = &unk_1E81978A8;
  block[6] = a1;
  block[7] = v4;
  v18 = a2;
  block[4] = &v23;
  block[5] = &v19;
  dispatch_group_async(v5, gFlushSuspendQueue, block);
  v6 = dispatch_time(0, 15000000000);
  v7 = dispatch_group_wait(v5, v6);
  v8 = *__error();
  v9 = _SILogForLogForCategory(3);
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = *(v24 + 6);
      *buf = 136315650;
      v28 = "SIFlushAndSuspendIndex";
      v29 = 1024;
      v30 = 777;
      v31 = 1024;
      v32 = v14;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: Flush and suspend index timed out on scheduler %d", buf, 0x18u);
    }

    v11 = 0;
    *__error() = v8;
    atomic_store(1u, v20 + 24);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v24 + 6);
      *buf = 67109120;
      LODWORD(v28) = v12;
      _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "Flush and suspend index finished on scheduler %d", buf, 8u);
    }

    *__error() = v8;
    v13 = atomic_load(v20 + 24);
    v11 = (v13 & 1) == 0;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __SIFlushAndSuspendIndex_block_invoke_47;
  v16[3] = &unk_1E81978D0;
  v16[4] = &v19;
  v16[5] = v4;
  dispatch_group_notify(v5, gFlushSuspendQueue, v16);
  dispatch_release(v5);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v11;
}

void __SIFlushAndSuspendIndex_block_invoke_2(uint64_t a1)
{
  if (!*(*(a1 + 48) + 676))
  {
    return;
  }

  makeThreadId();
  pthread_mutex_lock(&gSuspensionMutex);
  *(*(a1 + 48) + 768) = 0;
  *(*(a1 + 56) + 88) = 0;
  v2 = *(a1 + 48);
  if (*(v2 + 60) != 2)
  {
    v3 = si_scheduler_suspend_async(*(v2 + 952));
    if (v3)
    {
      atomic_fetch_add(v3, 1u);
    }

    *(*(a1 + 48) + 768) = v3;
    *(*(a1 + 56) + 88) = v3;
    v2 = *(a1 + 48);
  }

  v4 = si_scheduler_suspend_async(*(v2 + 872));
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  *(*(a1 + 48) + 688) = v4;
  *(*(a1 + 56) + 8) = v4;
  pthread_mutex_unlock(&gSuspensionMutex);
  v5 = dispatch_group_create();
  *(*(*(a1 + 32) + 8) + 24) = 11;
  v6 = si_scheduler_wait_on_suspend_token(*(*(a1 + 56) + 88));
  *(*(*(a1 + 32) + 8) + 24) = 1;
  if (!*(*(a1 + 48) + 676))
  {
    goto LABEL_32;
  }

  if ((v6 & si_scheduler_wait_on_suspend_token(*(*(a1 + 56) + 8))) != 1)
  {
    goto LABEL_32;
  }

  v7 = *(a1 + 48);
  if (!*(v7 + 676))
  {
    goto LABEL_32;
  }

  if (*(a1 + 64) == 1 && *(v7 + 1192) && *(v7 + 1040) && *(v7 + 1048))
  {
    v8 = malloc_type_calloc(1uLL, 0x90uLL, 0x10B00402663C8FFuLL);
    v9 = v8;
    v10 = *(v7 + 2360);
    if (v10)
    {
      v8[2].i64[0] = v10[9].i64[0];
      v8[1] = vextq_s8(*v10, *v10, 8uLL);
    }

    v8[8].i8[10] = 0;
    v8->i64[0] = v7;
    v8[4].i64[0] = 0;
    si_indexDeleteDeferredItems(v7);
    CIPurgeTokenizers();
    SILanguageModelPurge();
    flushGraphCache(v7);
    si_enqueue_work_with_qos(*(v7 + 1040), 25, syncIndex, v9);
    dispatch_group_enter(v5);
    si_enqueue_work_with_qos(*(v7 + 1040), 25, si_dispatch_leave_routine, v5);
  }

  pthread_mutex_lock(&gSuspensionMutex);
  if (*(*(a1 + 48) + 676))
  {
    v11 = 0;
    while ((v11 + 2) <= 0xB)
    {
      if (((1 << (v11 + 2)) & 0xB84) == 0)
      {
        if (v11 != 2)
        {
          break;
        }

        v12 = *(a1 + 48);
        if (!*(v12 + 2448))
        {
          goto LABEL_28;
        }
      }

LABEL_22:
      if (++v11 == 16)
      {
        goto LABEL_35;
      }
    }

    v12 = *(a1 + 48);
LABEL_28:
    v13 = *(v12 + 8 * v11 + 880);
    if (v13)
    {
      v14 = si_scheduler_suspend_async(v13);
      if (v14)
      {
        atomic_fetch_add(v14, 1u);
      }

      *(*(a1 + 48) + 8 * v11 + 696) = v14;
      *(*(a1 + 56) + 8 * v11 + 16) = v14;
    }

    goto LABEL_22;
  }

  atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
LABEL_35:
  pthread_mutex_unlock(&gSuspensionMutex);
  *(*(*(a1 + 32) + 8) + 24) = 2;
  if (*(*(*(a1 + 32) + 8) + 24) <= 17)
  {
    do
    {
      v15 = atomic_load((*(*(a1 + 40) + 8) + 24));
      if (v15)
      {
        break;
      }

      v16 = *(*(*(a1 + 32) + 8) + 24);
      if (v16 > 0xB || ((1 << v16) & 0xB84) == 0 && (v16 != 4 || !*(*(a1 + 48) + 2448)))
      {
        v17 = atomic_load((*(*(a1 + 40) + 8) + 24));
        if ((v17 & 1) == 0 && (si_scheduler_wait_on_suspend_token(*(*(a1 + 56) + 8 * *(*(*(a1 + 32) + 8) + 24))) & 1) == 0)
        {
          atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
        }
      }

      ++*(*(*(a1 + 32) + 8) + 24);
    }

    while (*(*(*(a1 + 32) + 8) + 24) < 18);
  }

  v18 = atomic_load((*(*(a1 + 40) + 8) + 24));
  if ((v18 & 1) == 0)
  {
    pthread_mutex_lock(&gSuspensionMutex);
    v19 = *(a1 + 48);
    if (*(v19 + 676))
    {
      v20 = si_scheduler_suspend_async(*(v19 + 880));
      if (v20)
      {
        atomic_fetch_add(v20, 1u);
      }

      *(*(a1 + 48) + 696) = v20;
      *(*(a1 + 56) + 16) = v20;
      v21 = si_scheduler_suspend_async(*(*(a1 + 48) + 920));
      if (v21)
      {
        atomic_fetch_add(v21, 1u);
      }

      *(*(a1 + 48) + 736) = v21;
      *(*(a1 + 56) + 56) = v21;
      v22 = si_scheduler_suspend_async(*(*(a1 + 48) + 928));
      if (v22)
      {
        atomic_fetch_add(v22, 1u);
      }

      *(*(a1 + 48) + 744) = v22;
      *(*(a1 + 56) + 64) = v22;
      v23 = si_scheduler_suspend_async(*(*(a1 + 48) + 936));
      if (v23)
      {
        atomic_fetch_add(v23, 1u);
      }

      *(*(a1 + 48) + 752) = v23;
      *(*(a1 + 56) + 72) = v23;
    }

    else
    {
      atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
    }

    pthread_mutex_unlock(&gSuspensionMutex);
  }

  *(*(*(a1 + 32) + 8) + 24) = 2;
  v24 = atomic_load((*(*(a1 + 40) + 8) + 24));
  if ((v24 & 1) == 0 && (si_scheduler_wait_on_suspend_token(*(*(a1 + 56) + 16)) & 1) == 0)
  {
    atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
  }

  *(*(*(a1 + 32) + 8) + 24) = 7;
  v25 = atomic_load((*(*(a1 + 40) + 8) + 24));
  if ((v25 & 1) == 0 && (si_scheduler_wait_on_suspend_token(*(*(a1 + 56) + 56)) & 1) == 0)
  {
    atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
  }

  *(*(*(a1 + 32) + 8) + 24) = 8;
  v26 = atomic_load((*(*(a1 + 40) + 8) + 24));
  if ((v26 & 1) == 0 && (si_scheduler_wait_on_suspend_token(*(*(a1 + 56) + 64)) & 1) == 0)
  {
    atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
  }

  *(*(*(a1 + 32) + 8) + 24) = 9;
  v27 = atomic_load((*(*(a1 + 40) + 8) + 24));
  if ((v27 & 1) == 0 && (si_scheduler_wait_on_suspend_token(*(*(a1 + 56) + 72)) & 1) == 0)
  {
    atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
  }

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v5);
  v28 = atomic_load((*(*(a1 + 40) + 8) + 24));
  if ((v28 & 1) == 0)
  {
    if ((*(*(a1 + 48) + 2439) & 1) == 0)
    {
      pthread_mutex_lock(&gSuspensionMutex);
      v29 = *(a1 + 48);
      if (*(v29 + 676))
      {
        v30 = si_scheduler_suspend_async(*(v29 + 864));
        if (v30)
        {
          atomic_fetch_add(v30, 1u);
        }

        *(*(a1 + 48) + 680) = v30;
        **(a1 + 56) = v30;
      }

      else
      {
        atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
      }

      pthread_mutex_unlock(&gSuspensionMutex);
      v31 = atomic_load((*(*(a1 + 40) + 8) + 24));
      if ((v31 & 1) == 0)
      {
        if (*(a1 + 64) == 1)
        {
          SISyncIndex(*(a1 + 48));
        }

        *(*(a1 + 48) + 672) = 1;
      }

      return;
    }

LABEL_32:
    atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
  }
}

void __SIFlushAndSuspendIndex_block_invoke_47(uint64_t a1)
{
  v2 = atomic_load((*(*(a1 + 32) + 8) + 24));
  if (v2)
  {
    for (i = 0; i != 144; i += 8)
    {
      si_scheduler_resume_with_token(*(*(a1 + 40) + i));
    }
  }

  else
  {
    for (j = 0; j != 144; j += 8)
    {
      release_token(*(*(a1 + 40) + j));
    }
  }

  v5 = *(a1 + 40);

  free(v5);
}

dispatch_queue_t __SIFlushAndSuspendIndex_block_invoke()
{
  result = dispatch_queue_create("index flush suspend queue", 0);
  gFlushSuspendQueue = result;
  return result;
}

dispatch_queue_t __SIResumeIndex_block_invoke()
{
  result = dispatch_queue_create("index flush suspend queue", 0);
  gFlushSuspendQueue = result;
  return result;
}

const __CFNumber *SIGetAccumulatedStorageSizeForBundleId(uint64_t a1, const void *a2, uint64_t *a3)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(*(a1 + 2088), a2);
  if (result)
  {
    if (CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr))
    {
      v6 = valuePtr == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }

    v7 = *(a1 + 2072) ? 256 : 22;
    if (v7 <= valuePtr)
    {
      return 0;
    }

    else
    {
      pthread_mutex_lock((a1 + 6976));
      v8 = *(a1 + 8 * valuePtr + 7040);
      pthread_mutex_unlock((a1 + 6976));
      *a3 = v8 & ~(v8 >> 63);
      return 1;
    }
  }

  return result;
}

uint64_t SITransferDeletionJournals(uint64_t a1, int a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    v9 = 1;
  }

  else
  {
    pthread_mutex_lock((a1 + 1632));
    v18 = 0;
    v19 = &v18;
    v20 = 0x3000000000;
    v21 = 0;
    v6 = getDeleteJournalFd(a1);
    if (!v6 || (v7 = *(v6 + 44), v7 < 0))
    {
      v9 = 1;
    }

    else
    {
      bzero(__s, 0x400uLL);
      v9 = 1;
      if ((fcntl(v7, 50, __s) & 0x80000000) == 0 && __s[0])
      {
        v15[0] = MEMORY[0x1E69E9820];
        v8.n128_u64[0] = 0x40000000;
        v15[1] = 0x40000000;
        v15[2] = __mobile_journal_transfer_paths_block_invoke;
        v15[3] = &unk_1E8192530;
        v16 = v7;
        v17 = a2;
        v15[4] = &v18;
        *&v22 = MEMORY[0x1E69E9820];
        *(&v22 + 1) = 0x40000000;
        v23 = __get_files_for_directory_block_invoke;
        v24 = &unk_1E8192558;
        v25 = v15;
        v26 = v19 + 5;
        v27 = 0;
        walk = fsi_create_walk(v8);
        if (walk)
        {
          v11 = walk;
          fsi_iterate_f(walk, &v22);
          fsi_close(v11);
        }

        if (!*(v19 + 10))
        {
          v12 = strlen(__s);
          snprintf(&__s[v12], 1024 - v12, "/%s", "skg_");
          unlink(__s);
          v9 = 0;
        }
      }
    }

    pthread_mutex_unlock((a1 + 1632));
    _Block_object_dispose(&v18, 8);
  }

  v13 = *(a3 + 16);

  return v13(a3, v9);
}

const __CFNumber *SIGetAccumulatedCountForBundleId(uint64_t a1, const void *a2, _DWORD *a3)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(*(a1 + 2088), a2);
  if (result)
  {
    if (CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr))
    {
      v6 = valuePtr == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }

    v7 = *(a1 + 2072) ? 256 : 22;
    if (v7 <= valuePtr)
    {
      return 0;
    }

    else
    {
      pthread_mutex_lock((a1 + 6976));
      v8 = *(a1 + 4 * valuePtr + 9088);
      pthread_mutex_unlock((a1 + 6976));
      *a3 = v8;
      return 1;
    }
  }

  return result;
}

uint64_t si_flushCaches(int a1)
{
  if (a1 == 2 && sdbLargeCacheArray)
  {
    cache_remove_all(sdbLargeCacheArray);
  }

  CIPurgeTokenizers();

  return SILanguageModelPurge();
}

void _SISetMemoryPressureStatus(unint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *&Current;
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      gMemoryPressureCritical = 0;
      sMemoryPressureStatus = 1;
      _SISetMemoryPressureStatus_lastPressureChange = *&Current;
      return;
    }

    if (a1 != 2)
    {
LABEL_62:
      sMemoryPressureStatus = a1;
      _SISetMemoryPressureStatus_lastPressureChange = *&Current;
      if (a1 < 2)
      {
        return;
      }

      goto LABEL_58;
    }

    v23 = atomic_load(&gActiveQueries);
    if (v23 || sMemoryPressureStatus == 2)
    {
LABEL_56:
      v24 = 0;
      goto LABEL_57;
    }

    if (sMemoryPressureStatus == 32 || sMemoryPressureStatus == 4)
    {
      v24 = 0;
      if (sMemoryPressureStatus != 16 || Current - *&_SISetMemoryPressureStatus_lastPressureChange <= 15.0)
      {
        goto LABEL_57;
      }
    }

LABEL_55:
    CIPurgeTokenizers();
    SILanguageModelPurge();
    goto LABEL_56;
  }

  if (a1 == 4)
  {
    if (sMemoryPressureStatus != 4 && !atomic_load(&gActiveQueries))
    {
      if (sdbLargeCacheArray)
      {
        cache_remove_all(sdbLargeCacheArray);
      }

      CIPurgeTokenizers();
      SILanguageModelPurge();
    }

    goto LABEL_49;
  }

  if (a1 == 16)
  {
    if (sMemoryPressureStatus <= 0x20 && ((1 << sMemoryPressureStatus) & 0x100010010) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (a1 != 32)
  {
    goto LABEL_62;
  }

  if (sMemoryPressureStatus != 32 || Current - *&_SISetMemoryPressureStatus_lastPressureChange > 15.0)
  {
    if (atomic_load(&gActiveQueries))
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    si_flushCaches(v5);
  }

  if (isAppleInternalInstall_onceToken_13132 != -1)
  {
    dispatch_once(&isAppleInternalInstall_onceToken_13132, &__block_literal_global_59);
  }

  if (isAppleInternalInstall_isInternalInstall_13133 == 1)
  {
    empty = xpc_dictionary_create_empty();
    os_unfair_lock_lock(&analytics_query_lock);
    if (analytics_query_client_dict)
    {
      Count = CFDictionaryGetCount(analytics_query_client_dict);
      if (Count >= 1)
      {
        v8 = Count;
        v9 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
        CFDictionaryGetKeysAndValues(analytics_query_client_dict, v9, 0);
        qsort(v9, v8, 8uLL, cfstring_compare);
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        for (i = 0; i != v8; ++i)
        {
          if (i)
          {
            CFStringAppend(Mutable, @",");
          }

          CFStringAppend(Mutable, v9[i]);
        }

        free(v9);
        Length = CFStringGetLength(Mutable);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v14 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x847F9CF4uLL);
        if (!CFStringGetCString(Mutable, v14, MaximumSizeForEncoding + 1, 0x8000100u))
        {
          *v14 = 0;
        }

        xpc_dictionary_set_string(empty, "CurrentlyActiveClients", v14);
        free(v14);
        CFRelease(Mutable);
      }
    }

    if (analytics_query_string_dict)
    {
      v15 = CFDictionaryGetCount(analytics_query_string_dict);
      if (v15 >= 1)
      {
        v16 = v15;
        v17 = malloc_type_malloc(8 * v15, 0x6004044C4A2DFuLL);
        CFDictionaryGetKeysAndValues(analytics_query_string_dict, v17, 0);
        qsort(v17, v16, 8uLL, cfstring_compare);
        v18 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        for (j = 0; j != v16; ++j)
        {
          if (j)
          {
            CFStringAppend(v18, @",");
          }

          CFStringAppend(v18, v17[j]);
        }

        free(v17);
        v20 = CFStringGetLength(v18);
        v21 = CFStringGetMaximumSizeForEncoding(v20, 0x8000100u);
        v22 = malloc_type_malloc(v21 + 1, 0xA405191FuLL);
        if (!CFStringGetCString(v18, v22, v21 + 1, 0x8000100u))
        {
          *v22 = 0;
        }

        xpc_dictionary_set_string(empty, "CurrentlyActiveQueryStrings", v22);
        free(v22);
        CFRelease(v18);
      }
    }

    os_unfair_lock_unlock(&analytics_query_lock);
    if (xpc_dictionary_get_count(empty))
    {
      analytics_send_event();
    }

    xpc_release(empty);
  }

LABEL_49:
  v24 = 1;
LABEL_57:
  gMemoryPressureCritical = v24;
  sMemoryPressureStatus = a1;
  _SISetMemoryPressureStatus_lastPressureChange = v3;
LABEL_58:
  v27 = *__error();
  v28 = _SILogForLogForCategory(10);
  v29 = dword_1EBF46AF4 < 3;
  if (os_log_type_enabled(v28, (dword_1EBF46AF4 < 3)))
  {
    v30 = 134217984;
    v31 = a1;
    _os_log_impl(&dword_1C278D000, v28, v29, "*warn* Received memory pressure status %lu", &v30, 0xCu);
  }

  *__error() = v27;
}

uint64_t __isAppleInternalInstall_block_invoke_13138()
{
  result = MGCopyAnswer();
  if (result && (v1 = result, v2 = CFGetTypeID(result), result = CFStringGetTypeID(), v2 == result))
  {
    result = CFEqual(v1, @"Internal");
    v3 = result != 0;
  }

  else
  {
    v3 = 0;
  }

  isAppleInternalInstall_isInternalInstall_13133 = v3;
  return result;
}

const void *SICopyCachedCSClientState(uint64_t a1, const void *a2, const void *a3)
{
  pthread_rwlock_rdlock((a1 + 80));
  Value = CFDictionaryGetValue(*(a1 + 72), @"clientStates");
  if (Value && (v7 = CFDictionaryGetValue(Value, a2)) != 0)
  {
    v8 = CFDictionaryGetValue(v7, a3);
    v9 = v8;
    if (v8)
    {
      CFRetain(v8);
    }
  }

  else
  {
    v9 = 0;
  }

  pthread_rwlock_unlock((a1 + 80));
  return v9;
}

uint64_t SIDeleteCSClientStateCache(uint64_t a1, const void *a2)
{
  pthread_rwlock_wrlock((a1 + 80));
  Value = CFDictionaryGetValue(*(a1 + 72), @"clientStates");
  if (Value)
  {
    CFDictionaryRemoveValue(Value, a2);
    SIPersistClientStateAndMeta(a1, 0);
  }

  return pthread_rwlock_unlock((a1 + 80));
}

const __CFDictionary *SICopyCSClientStateCache(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_rwlock_rdlock((a1 + 80));
  v2 = *(a1 + 72);
  if (!v2 || !CFDictionaryGetCount(v2))
  {
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(*(a1 + 72), @"clientStates");
  Copy = Value;
  if (Value)
  {
    if (CFDictionaryGetCount(Value))
    {
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], Copy);
      goto LABEL_8;
    }

LABEL_7:
    Copy = 0;
  }

LABEL_8:
  pthread_rwlock_unlock((a1 + 80));
  return Copy;
}

uint64_t _SISetFileOptions(uint64_t result)
{
  gSIFileOptions = result;
  gDisablePreallocate = result & 1;
  return result;
}

const __CFDictionary *_SIFilterValidatedCSImports(uint64_t a1, CFDictionaryRef theDict)
{
  v2 = theDict;
  if (CFDictionaryGetCount(theDict) >= 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5 = *(a1 + 1704);
    v7[0] = Mutable;
    v7[1] = v5;
    os_unfair_lock_lock((a1 + 1696));
    CFDictionaryApplyFunction(v2, _validateImportsApplier, v7);
    os_unfair_lock_unlock((a1 + 1696));
    return Mutable;
  }

  return v2;
}

void _validateImportsApplier(void *value, const void *a2, __CFDictionary **a3)
{
  v4 = a3[1];
  if (*MEMORY[0x1E695E738] == a2)
  {

    CFBagRemoveValue(v4, value);
  }

  else
  {
    v7 = MEMORY[0x1C691E5E0](v4, value);
    if (v7)
    {
      v8 = v7;
      if (v7 >= 1)
      {
        do
        {
          CFBagRemoveValue(a3[1], value);
          --v8;
        }

        while (v8);
      }

      v9 = *a3;

      CFDictionaryAddValue(v9, value, a2);
    }
  }
}

void sub_1C2B894B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void zstd_compress_init(void)
{
  cctx = ZSTD_createCCtx();
  if (!cctx)
  {
    v1 = *MEMORY[0x1E69E9848];
    v2 = "ZSTD_createCStream failed\n";
    goto LABEL_6;
  }

  ZSTD_createDStream();
  dctx = v0;
  if (!v0)
  {
    v1 = *MEMORY[0x1E69E9848];
    v2 = "ZSTD_createDStream failed\n";
LABEL_6:
    fwrite(v2, 0x1AuLL, 1uLL, v1);
    exit(-1);
  }
}

uint64_t SI_PersistentIDStoreGetTypeID()
{
  result = __kSI_PersistentIDStoreTypeID;
  if (!__kSI_PersistentIDStoreTypeID)
  {
    result = _CFRuntimeRegisterClass();
    __kSI_PersistentIDStoreTypeID = result;
  }

  return result;
}

void __SIPSIDStoreFinalize(uint64_t a1)
{
  if (*(a1 + 16))
  {
    (*(a1 + 32))(a1);
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    free(v2);
  }
}

double __SIPSIDStoreInit(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t _oidParentForOidFallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    return 0;
  }

  bzero(v15, 0x400uLL);
  if (*(a1 + 240))
  {
    return -1;
  }

  v12 = (*(a1 + 40))(a1, a2, v15, 0, 0, 0, 0, a7);
  if (!v12)
  {
    return -1;
  }

  v13 = v12;
  if (!*v12)
  {
    return -1;
  }

  v14 = strrchr(v12, 47);
  if (!v14)
  {
    return -1;
  }

  *v14 = 0;
  if (*(a1 + 240))
  {
    return 0;
  }

  return (*(a1 + 56))(a1, v13, 0, a3, 0);
}

uint64_t _oidPathForOidFallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 240))
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v19, 0x400uLL);
  v16 = (*(a1 + 40))(a1, a2, v19, 0, 0, 0, 0, a10);
  if (!v16)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = (*(a1 + 64))(a1, v16, 0, a3, a4, 0, 0);
  if (v17 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v17;
  result = 0;
  *a6 = v18;
  return result;
}

const char *_oidPathForPath(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v35 = *MEMORY[0x1E69E9840];
  bzero(v34, 0x400uLL);
  bzero(v33, 0x1000uLL);
  v11 = 0;
  v12 = 0;
  v31 = 0;
  v30 = v2;
  v29 = v8;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

LABEL_2:
  if (v8)
  {
    v13 = open(v8, 32772);
    if (v13 < 0)
    {
      return 0;
    }

    v14 = v13;
    v15 = fcntl(v13, 50, v34);
    v16 = v34[0];
    close(v14);
    v8 = 0;
    if (v15 < 0 || !v16)
    {
      return v8;
    }

    if (v4)
    {
LABEL_14:
      while (1)
      {
        v8 = 0;
        do
        {
          if (*(v10 + 240))
          {
            v19 = 1;
          }

          else
          {
            v19 = 1;
            v20 = (*(v10 + 56))(v10, v34, 0, 0, 1);
            if (v20)
            {
              v6[v8] = v20;
              v19 = v20 < 3;
              v8 = (v8 + 1);
            }
          }

          v21 = strrchr(v34, 47);
          if (!v21)
          {
            break;
          }

          if (v21 == v34)
          {
            break;
          }

          *v21 = 0;
        }

        while (!v19);
        v22 = v8 ? v4 : 1;
        if (v8 <= 1 && (v22 & 1) != 0)
        {
          break;
        }

        bzero(v32, 0x1008uLL);
        __memcpy_chk();
        if ((v4 & 1) == 0)
        {
          v32[v8] = v11;
        }

        v23 = v8 + (v4 ^ 1);
        qsort_oids(v32, v23);
        if (v23 < 2)
        {
          break;
        }

        v24 = v32[0];
        v25 = 1;
        while (1)
        {
          v26 = v32[v25];
          if (v26 == v24)
          {
            break;
          }

          ++v25;
          v24 = v26;
          if (v23 == v25)
          {
            goto LABEL_40;
          }
        }

        if (v12 && v12 == v8 && !memcmp(v33, v6, 8 * v8))
        {
          return 0;
        }

        __memcpy_chk();
        if (v31 == 101)
        {
          return 0;
        }

        ++v31;
        v12 = v8;
        v8 = v29;
        if ((v30 & 0x10) != 0)
        {
          goto LABEL_2;
        }

LABEL_8:
        __strlcpy_chk(v34, v8, 1024, 1024);
        if ((v4 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

LABEL_40:
      if (v8)
      {
        if (v6[v8 - 1] == 2)
        {
          return v8;
        }

        v27 = v8;
      }

      else
      {
        v27 = 0;
      }

      v8 = (v8 + 1);
      v6[v27] = 2;
      return v8;
    }

LABEL_9:
    if (*(v10 + 240))
    {
      return 0;
    }

    v17 = (*(v10 + 56))(v10, v34, 0, 0, 1);
    if (!v17)
    {
      return 0;
    }

    v11 = v17;
    v18 = strrchr(v34, 47);
    if (!v18)
    {
      goto LABEL_14;
    }

    if (v18 != v34)
    {
      *v18 = 0;
      goto LABEL_14;
    }

    v8 = 0;
    *v6 = 2;
  }

  return v8;
}

uint64_t _oidPathForOid(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v39 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v44[128] = *MEMORY[0x1E69E9840];
  bzero(v44, 0x400uLL);
  memset(v43, 0, sizeof(v43));
  if (v3)
  {
    goto LABEL_3;
  }

LABEL_2:
  v10 = 0;
  while (v7 != 2)
  {
    v11 = 0;
    v41 = 0;
    v40 = xmmword_1C2C0027C;
    v12 = v10;
    v13 = -1;
    for (i = v7; ; i = v17)
    {
      v15 = *(v9 + 240) ? 0 : (*(v9 + 48))(v9, i, v44, 0);
      if (getattrlist(v15, &v40, v43, 0x20uLL, 0x200u))
      {
        break;
      }

      v16 = 0;
      v17 = *(&v43[0] + 1);
      v20 = (DWORD1(v43[0]) == v13 || v13 == -1) && *(&v43[0] + 1) != i && (*(&v43[0] + 1) - 1) >= 2;
      if (!v20 || v11 > 0x200)
      {
        goto LABEL_28;
      }

      ++v11;
      if (v13 == -1)
      {
        v13 = DWORD1(v43[0]);
      }

      v5[v12++] = *(&v43[0] + 1);
    }

    v21 = *__error();
    if (v21)
    {
      v16 = v21;
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
    }

LABEL_28:
    if (v12)
    {
      v22 = v3;
    }

    else
    {
      v22 = 1;
    }

    if (v12 <= 1 && (v22 & 1) != 0)
    {
      goto LABEL_43;
    }

    bzero(v42, 0x1008uLL);
    if (v12 >= 0x202)
    {
      v28 = __si_assert_copy_extra_332();
      v36 = v28;
      v37 = "";
      if (v28)
      {
        v37 = v28;
      }

      __message_assert_336(v28, v29, v30, v31, v32, v33, v34, v35, "SIVirtualPSIDSupport.c", 676, "depth<=513", v37);
      free(v36);
      if (__valid_fs(-1))
      {
        v38 = 2989;
      }

      else
      {
        v38 = 3072;
      }

      *v38 = -559038737;
      abort();
    }

    __memcpy_chk();
    if ((v3 & 1) == 0)
    {
      v42[v12 & 0x3FF] = v7;
    }

    v23 = v12 + (v3 ^ 1);
    qsort_oids(v42, v23);
    if (v23 < 2)
    {
LABEL_43:
      if (v16)
      {
        return v16;
      }

      v10 = v12 + 1;
      v5[v12] = 2;
      break;
    }

    v24 = v42[0];
    v25 = 1;
    while (1)
    {
      v26 = v42[v25];
      if (v26 == v24)
      {
        break;
      }

      ++v25;
      v24 = v26;
      if (v23 == v25)
      {
        goto LABEL_43;
      }
    }

    if (!v3)
    {
      goto LABEL_2;
    }

LABEL_3:
    *v5 = v7;
    v10 = 1;
  }

  v16 = 0;
  *v39 = v10;
  return v16;
}

uint64_t _oidParentForOid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = *MEMORY[0x1E69E9840];
  for (i = 5; ; --i)
  {
    memset(v48, 0, sizeof(v48));
    bzero(v47, 0x400uLL);
    v11 = 0;
    v25 = xmmword_1C2C00294;
    v26 = 0;
    if (!*(a1 + 240))
    {
      v11 = (*(a1 + 48))(a1, a2, v47, 0);
    }

    if (!getattrlist(v11, &v25, v48, 0x20uLL, 0x200u))
    {
      break;
    }

    v12 = *__error();
    if (v12 != 2)
    {
      if (v12)
      {
        v14 = *__error();
        v15 = _SILogForLogForCategory(6);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v24 = *__error();
          *buf = 136315906;
          v40 = "_oidParentForOid";
          v41 = 1024;
          v42 = 750;
          v43 = 1024;
          *v44 = v24;
          *&v44[4] = 2048;
          *&v44[6] = a2;
          _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: Error (%d) for 0x%llx", buf, 0x22u);
        }

        *__error() = v14;
        *__error() = v12;
      }

      return -1;
    }

    bzero(buf, 0x400uLL);
    if (*(a1 + 240))
    {
      v13 = 0;
    }

    else
    {
      v13 = (*(a1 + 40))(a1, a2, buf, 0, 0, 0, 0, a7);
    }

    if (*__error() != 35 && (!v13 || !strncmp(v13, "/Network/", 9uLL)))
    {
      return -1;
    }

    if (!i)
    {
      v20 = *__error();
      if (v13)
      {
        v21 = *__error();
        v22 = _SILogForLogForCategory(6);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *v27 = 136316418;
          v28 = "_oidParentForOid";
          v29 = 1024;
          v30 = 743;
          v31 = 1024;
          v32 = v20;
          v33 = 2048;
          v34 = a2;
          v35 = 2080;
          v36 = v11;
          v37 = 2080;
          v38 = v13;
          _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: stat succeeded, getattrlist returned error  %d for %lld (%s = %s)", v27, 0x36u);
        }

        *__error() = v21;
      }

      *__error() = v20;
      return -1;
    }
  }

  v16 = *(v48 + 4);
  if (*(v48 + 4) == a2 || *(v48 + 4) <= 1)
  {
    if ((*(v48 + 4) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = *__error();
      v19 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v40 = "_oidParentForOid";
        v41 = 1024;
        v42 = 716;
        v43 = 2048;
        *v44 = v16;
        *&v44[8] = 2048;
        *&v44[10] = a2;
        v45 = 2080;
        v46 = v11;
        _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: getattrlist returned parent id %lld for %lld (%s)", buf, 0x30u);
      }

      *__error() = v18;
    }

    return -1;
  }

  return v16;
}

_OWORD *SIPersistentIDStoreCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!__kSI_PersistentIDStoreTypeID)
  {
    __kSI_PersistentIDStoreTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (a3 && (*(a3 + 4) & 0x80000000) == 0)
  {
    if ((*(a3 + 28) & 0x220) != 0)
    {
      v10 = unk_1F427A950;
      Instance[12] = xmmword_1F427A940;
      Instance[13] = v10;
      Instance[14] = xmmword_1F427A960;
      v11 = unk_1F427A910;
      Instance[8] = xmmword_1F427A900;
      Instance[9] = v11;
      v12 = unk_1F427A930;
      Instance[10] = xmmword_1F427A920;
      Instance[11] = v12;
      v13 = unk_1F427A8D0;
      Instance[4] = xmmword_1F427A8C0;
      Instance[5] = v13;
      v14 = *&off_1F427A8F0;
      Instance[6] = xmmword_1F427A8E0;
      Instance[7] = v14;
      v15 = *&off_1F427A8B0;
      Instance[2] = SI_PersistentIDStore_OID64_TEMPLATE;
      Instance[3] = v15;
      v16 = malloc_type_malloc(0x1CuLL, 0x100004054FF68E2uLL);
      *(v9 + 2) = v16;
      *v16 = *(a3 + 16);
      *(v16 + 12) = *(a3 + 8);
      v17 = *(v16 + 10) & 0xFFEF | (16 * ((*(a3 + 28) >> 5) & 1));
      *(v16 + 10) = v17;
      v18 = v17 & 0xFFFFFFFE | *(a3 + 28) & 1;
      *(v16 + 10) = v18;
      v19 = v18 & 0xFFFFFFFD | (2 * ((*(a3 + 28) >> 1) & 1));
      *(v16 + 10) = v19;
      v20 = v19 & 0xFFFFFFFB | (4 * ((*(a3 + 28) >> 2) & 1));
      *(v16 + 10) = v20;
      *(v16 + 4) = *(a3 + 20);
      *(v16 + 10) = v20 & 0xFFDF;
      LOWORD(v20) = v20 & 0xFF9F | (((*(a3 + 28) >> 4) & 1) << 6);
      *(v16 + 10) = v20;
      v21 = v20 & 0xFF7F | (*(a3 + 28) >> 3) & 0x80;
      *(v16 + 10) = v21;
      *(v16 + 10) = v21 & 0xFEFF | (*(a3 + 28) >> 3) & 0x100;
      v31 = 0;
      *buf = xmmword_1C2BFA9F0;
      memset(v29, 0, 44);
      if (!fgetattrlist(*(a3 + 4), buf, v29, 0x2CuLL, 0))
      {
        *(v16 + 10) = BYTE6(v29[0]) & 0x20 | *(v16 + 10) & 0xFFDF;
      }

      if ((*(a3 + 28) & 0x220) == 0x200)
      {
        *(v9 + 7) = si_oid64psid_transient_path_to_oid;
        *(v9 + 5) = si_transient_oid64psid_oid_to_path;
        *(v9 + 22) = SIPersistentIDStoreSandboxPostCheck;
      }

      *(v16 + 6) = -1;
    }

    else if (a2 == -1 || si_init_posix_psid(Instance, a3, a2, a5, 0))
    {
      CFRelease(v9);
      bzero(v29, 0x400uLL);
      v22 = *__error();
      v23 = _SILogForLogForCategory(0);
      v24 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = fcntl(a2, 50, v29);
        if (LOBYTE(v29[0]))
        {
          v26 = v25 < 0;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = v29;
        }

        *buf = 136315138;
        *&buf[4] = v27;
        _os_log_impl(&dword_1C278D000, v23, v24, "Couldn't make psid store at %s", buf, 0xCu);
      }

      v9 = 0;
      *__error() = v22;
      return v9;
    }
  }

  if ((a5 & 1) != 0 && v9)
  {
    *(v9 + 120) = 0;
  }

  else if (!v9)
  {
    return v9;
  }

  if ((*(a3 + 28) & 0x20) != 0)
  {
    if (!*(v9 + 16))
    {
      *(v9 + 16) = _oidParentForOid;
    }

    if (!*(v9 + 17))
    {
      *(v9 + 17) = _oidPathForOid;
    }

    if (!*(v9 + 8))
    {
      *(v9 + 8) = _oidPathForPath;
    }
  }

  else
  {
    if (!*(v9 + 17))
    {
      *(v9 + 17) = _oidPathForOidFallback;
    }

    if (!*(v9 + 16))
    {
      *(v9 + 16) = _oidParentForOidFallback;
    }
  }

  return v9;
}

uint64_t SIPersistentIDStoreClose(uint64_t result)
{
  v1 = *(result + 240);
  *(result + 240) = 1;
  if (*(result + 16))
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v3 = *(result + 112);
    if (v3)
    {
      return v3();
    }
  }

  return result;
}

uint64_t SIPersistentIDStoreGetOIDForCPath(uint64_t a1)
{
  if (*(a1 + 240))
  {
    return 0;
  }

  else
  {
    return (*(a1 + 56))();
  }
}

uint64_t SIPersistentIDStoreGetRealPathForOid(uint64_t a1)
{
  if (*(a1 + 240))
  {
    return 0;
  }

  else
  {
    return (*(a1 + 40))();
  }
}

uint64_t SIPersistentIDStoreGetFastPathForOid(uint64_t a1)
{
  if (*(a1 + 240))
  {
    return 0;
  }

  else
  {
    return (*(a1 + 48))();
  }
}

uint64_t SIPersistentIDStoreRename(uint64_t result)
{
  v1 = *(result + 96);
  if (v1)
  {
    if (!*(result + 240))
    {
      return v1();
    }
  }

  return result;
}

uint64_t SIPersistentIDStoreDelete(uint64_t result)
{
  v1 = *(result + 104);
  if (v1)
  {
    if (!*(result + 240))
    {
      return v1();
    }
  }

  return result;
}

uint64_t SIPersistentIDStoreSetRootPath2(uint64_t a1)
{
  if (!a1 || *(a1 + 240))
  {
    return 0;
  }

  v2 = *(a1 + 200);
  if (v2)
  {
    return v2();
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0;
  }

  return v3();
}

uint64_t SIPersistentIDStoreSync(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 && !*(a1 + 240))
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t SIPersistentIDStoreGetParentForOid(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    return v1();
  }

  else
  {
    return -1;
  }
}

uint64_t SIPersistentIDStoreGetOidPathForPath(uint64_t a1)
{
  if (*(a1 + 240))
  {
    return 0;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  else
  {
    return v2();
  }
}

uint64_t SIPersistentIDStoreGetOidPathForOid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *a5 = 0;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 240))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 136);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  result = v6(a1, a2);
  if (!result)
  {
    v9 = *a5;
    if (v9)
    {
      if (v9 > 0x1FF)
      {
        return 0;
      }

      v10 = *a5;
      if (*(a3 + 8 * v9 - 8) == 2)
      {
        return 0;
      }
    }

    else
    {
      v10 = 0;
    }

    result = 0;
    *a5 = v9 + 1;
    *(a3 + 8 * v10) = 2;
  }

  return result;
}

uint64_t SIPersistentIDStoreVetPath(uint64_t a1, char *a2, int a3)
{
  if (*(a1 + 240))
  {
    return 0;
  }

  v5 = *(a1 + 152);
  if (v5)
  {

    return v5();
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
    return !stat(a2, &v7) && v7.st_dev == a3;
  }
}

BOOL SIPersistentIDStoreIsLocal(_BOOL8 result)
{
  if (result)
  {
    return *(result + 160) == 0;
  }

  return result;
}

uint64_t SIPersistentIDStoreItemIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a1)
  {
    if ((*(a1 + 160) & 1) == 0)
    {
      v5 = *(a1 + 184);
      if (v5)
      {
        return v5();
      }
    }
  }

  *a5 = 0;
  return 45;
}

void storage_array_Init(_DWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, char a8, char a9, int a10, void *aBlock, uint64_t a12)
{
  v35 = *MEMORY[0x1E69E9840];
  bzero(a1, 0x1088uLL);
  if (a12)
  {
    (*(a12 + 16))(a12);
  }

  if (a5)
  {
    *a1 = a10;
    if (a6)
    {
      *(a1 + 4) = a5;
      v20 = a1 + 8;
      *(a1 + 1) = a4;
      *(a1 + 2) = a2;
      *(a1 + 68) = a8;
      *(a1 + 5) = a3 + a2;
      a1[16] = 1;
      *(a1 + 69) = 0;
      if (aBlock)
      {
        v21 = _Block_copy(aBlock);
      }

      else
      {
        v21 = 0;
      }

      *(a1 + 9) = v21;
      *(a1 + 80) = 26;
      bzero(a1 + 22, 0x1000uLL);
      *(a1 + 6) = a2;
      goto LABEL_24;
    }

    st_size = *(a1 + 5);
    if (st_size)
    {
      if (st_size < *(a1 + 6))
      {
        v25 = __si_assert_copy_extra_332();
        v26 = v25;
        v27 = "";
        if (v25)
        {
          v27 = v25;
        }

        __message_assert(v25, "storage_array.c", 395, "inStartSize >= inStorage->_windows._freeRegion", v27);
        goto LABEL_32;
      }
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
      v28 = fd_stat(a5, &buf);
      st_size = buf.st_size;
      if (v28)
      {
        st_size = a3;
      }

      *(a1 + 1) = a4;
      *(a1 + 2) = a2;
      if (st_size < *(a1 + 6))
      {
        v31 = __si_assert_copy_extra_332();
        v26 = v31;
        v32 = "";
        if (v31)
        {
          v32 = v31;
        }

        __message_assert(v31, "storage_array.c", 391, "inStartSize >= inStorage->_windows._freeRegion", v32);
LABEL_32:
        free(v26);
        if (__valid_fs(-1))
        {
          v33 = 2989;
        }

        else
        {
          v33 = 3072;
        }

        *v33 = -559038737;
        abort();
      }
    }

    *(a1 + 4) = a5;
    v20 = a1 + 8;
    *(a1 + 68) = a8;
    *(a1 + 5) = st_size;
    a1[16] = 1;
    *(a1 + 69) = 0;
    if (aBlock)
    {
      v29 = _Block_copy(aBlock);
    }

    else
    {
      v29 = 0;
    }

    *(a1 + 9) = v29;
    *(a1 + 80) = 26;
    bzero(a1 + 22, 0x1000uLL);
LABEL_24:
    a1[6] = a7;
    *(a1 + 4) = a5;
    v30 = malloc_type_malloc(0xD0uLL, 0x1020040167D79A3uLL);
    *(a1 + 528) = v30;
    *v30 = 0u;
    v30[1] = 0u;
    v30[2] = 0u;
    v30[3] = 0u;
    v30[4] = 0u;
    v30[5] = 0u;
    v30[6] = 0u;
    v30[7] = 0u;
    v30[8] = 0u;
    v30[9] = 0u;
    v30[10] = 0u;
    v30[11] = 0u;
    v30[12] = 0u;
    pthread_rwlock_init(*(a1 + 528), 0);
    *(a1 + 4188) = a8;
    *(a1 + 4190) = a9 & ~a8;
    a1[1054] = 0;
    _windowsMapInit(v20, 0, 1);
    if ((a8 & 1) == 0)
    {
      if (a6)
      {
        fd_truncate(a5, 0);
      }

      fd_truncate(a5, *(a1 + 5));
    }

    return;
  }

  v22 = *__error();
  v23 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    buf.st_dev = 136315394;
    *&buf.st_mode = "storage_array_Init";
    WORD2(buf.st_ino) = 1024;
    *(&buf.st_ino + 6) = 372;
    _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: storage_array_Init - inFdPtr == NULL", &buf, 0x12u);
  }

  *__error() = v22;
}

void storage_array_Close(uint64_t a1)
{
  storageWindowsUnmap(a1 + 32);
  storageWindowsClose(a1 + 32);
  v2 = *(a1 + 4224);
  if (v2)
  {
    pthread_rwlock_wrlock(v2);
    _release_read_window(&availableArrayReaders, *(*(a1 + 4224) + 200));
    pthread_rwlock_unlock(*(a1 + 4224));
    pthread_rwlock_destroy(*(a1 + 4224));
    free(*(a1 + 4224));
    *(a1 + 4224) = 0;
  }

  *(a1 + 4189) = 1;
}

int *storage_array_SyncPages(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a1 + 4096;
  v5 = *(a1 + 48) + 0xFFFFFLL;
  v6 = v5 >> 20;
  Current = CFAbsoluteTimeGetCurrent();
  if ((*(v4 + 92) & 1) == 0 && *(v4 + 94) == 1 && *(a1 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      storageWindowSync(*(a1 + 88 + 8 * v8++), 0);
    }

    while (v8 < *(a1 + 64));
  }

  if (!v6)
  {
    v11 = 0;
    goto LABEL_25;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = (v5 >> 20);
  while (1)
  {
    if (*a2 <= v10 || !CFBitVectorGetBitAtIndex(*(a2 + 16), v10))
    {
      goto LABEL_18;
    }

    v13 = fd_mmap(*(a1 + 32), 0x100000, 1, 1025, v9);
    if (v13 == -1)
    {
      break;
    }

    v14 = v13;
    fd_system_status_stall_if_busy();
    if (msync(v14, 0x100000uLL, 16))
    {
      v15 = *__error();
    }

    else
    {
      v15 = 0;
    }

    if (munmap(v14, 0x100000uLL))
    {
      v15 = *__error();
    }

    ++v11;
    if (v15)
    {
      goto LABEL_25;
    }

LABEL_18:
    ++v10;
    v9 += 0x100000;
    if (v10 >= v12)
    {
      goto LABEL_25;
    }
  }

  v16 = *__error();
  bzero(buf, 0x400uLL);
  v17 = fd_realpath(*(a1 + 32), buf);
  if (!v17)
  {
    v17 = fd_name(*(a1 + 32), buf, 0x400uLL);
  }

  v18 = *__error();
  v19 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v25 = "";
    v26 = 136316418;
    v27 = "storage_array_SyncPages";
    v28 = 1024;
    if (v17)
    {
      v25 = v17;
    }

    v29 = 510;
    v30 = 1024;
    v31 = 0x100000;
    v32 = 2048;
    v33 = v9;
    v34 = 1024;
    v35 = v16;
    v36 = 2080;
    v37 = v25;
    _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: mmap(%d, %lld) err:%d, %s", &v26, 0x32u);
  }

  *__error() = v18;
LABEL_25:
  v20 = *__error();
  v21 = _SILogForLogForCategory(10);
  v22 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = CFAbsoluteTimeGetCurrent() - Current;
    *buf = 67109632;
    v39 = v6;
    v40 = 1024;
    v41 = v11;
    v42 = 2048;
    v43 = v23;
    _os_log_impl(&dword_1C278D000, v21, v22, "sync pages (%d, %d) took %f seconds", buf, 0x18u);
  }

  result = __error();
  *result = v20;
  return result;
}

uint64_t _storage_array_Expand(uint64_t a1)
{
  v2 = _storageWindowsExpandBacking((a1 + 32), *(a1 + 8));
  if (v2)
  {
    pthread_rwlock_wrlock(*(a1 + 4224));
    v3 = *(a1 + 4224);
    sig = v3[1].__sig;
    v3[1].__sig = 0;
    pthread_rwlock_unlock(v3);
    _release_read_window(&availableArrayReaders, sig);
  }

  return v2;
}

void bit_vector_set_13535(void *a1, CFIndex idx)
{
  v4 = a1[1];
  if (v4 <= idx)
  {
    if (v4)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = 32;
    }

    while (1)
    {
      v6 *= 2;
      if (v6 > idx)
      {
        break;
      }

      if (v6 <= v4)
      {
        v7 = __si_assert_copy_extra_332();
        v8 = v7;
        v9 = "";
        if (v7)
        {
          v9 = v7;
        }

        __message_assert(v7, "bit_vector.h", 124, "newCapacity > bv->capacity", v9);
        free(v8);
        if (__valid_fs(-1))
        {
          v10 = 2989;
        }

        else
        {
          v10 = 3072;
        }

        *v10 = -559038737;
        abort();
      }
    }

    v11 = a1[2];
    v12 = *MEMORY[0x1E695E480];
    if (v11)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v12, v6, v11);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v12, v6);
    }

    v14 = MutableCopy;
    if (!MutableCopy)
    {
      v16 = __si_assert_copy_extra_332();
      v17 = v16;
      v18 = "";
      if (v16)
      {
        v18 = v16;
      }

      __message_assert(v16, "bit_vector.h", 128, "newBV", v18);
      free(v17);
      if (__valid_fs(-1))
      {
        v19 = 2989;
      }

      else
      {
        v19 = 3072;
      }

      *v19 = -559038737;
      abort();
    }

    CFBitVectorSetCount(MutableCopy, v6);
    v15 = a1[2];
    if (v15)
    {
      CFRelease(v15);
    }

    a1[1] = v6;
    a1[2] = v14;
  }

  if (*a1 <= idx)
  {
    *a1 = idx + 1;
  }

  v5 = a1[2];

  CFBitVectorSetBitAtIndex(v5, idx, 1u);
}

_DWORD *storage_array_Truncate(uint64_t *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = fd_truncate(a1[4], a1[6]);
  if (result == -1)
  {
    v3 = *__error();
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "storage_array_Truncate";
      v8 = 1024;
      v9 = 611;
      v10 = 1024;
      v11 = v3;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate error %d", &v6, 0x18u);
    }

    result = __error();
    *result = v4;
  }

  else
  {
    a1[5] = a1[6];
  }

  return result;
}

uint64_t CIPositionNodeFinalizeDocument(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v30 = *MEMORY[0x1E69E9840];
  v9 = v5[2];
  if (v1)
  {
    v10 = 5 * v9 + 6;
  }

  else
  {
    v10 = 5 * v9 + 1;
  }

  if (v10 <= 0x10000)
  {
    v12 = 0;
    v11 = v29;
  }

  else
  {
    v11 = malloc_type_malloc(v10, 0x358B1331uLL);
    v12 = v11;
  }

  bzero(v29, 0x10000uLL);
  v28 = 0;
  v27 = 0;
  v14 = CompactPositionsList(v11, v6[6], v9, v4, v2, &v28, *v6, v6[1], v13, &v27, v8);
  v15 = v27;
  v11[v27] = 0;
  v16 = positionInfoAlloc_ts(v8, v15 + 9);
  if (!v16)
  {
    v23 = __si_assert_copy_extra(0);
    v24 = v23;
    v25 = "";
    if (v23)
    {
      v25 = v23;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadData.c", 251, "posPtrStart!=0", v25);
    free(v24);
    if (__valid_fs(-1))
    {
      v26 = 2989;
    }

    else
    {
      v26 = 3072;
    }

    *v26 = -559038737;
    abort();
  }

  v17 = v16;
  v18 = v15 + 1;
  v19 = (*(v8 + 16) + 8 * v16);
  *v19 = v18;
  v20 = (v19 + 1);
  memcpy(v20, v11, v18);
  v21 = v28;
  if (!v28)
  {
    if (v14)
    {
      v21 = v14[1];
    }

    else
    {
      v21 = 0;
    }
  }

  *&v20[v18] = v21;
  if (v4)
  {
    *v6 = 0;
    v6[1] = v17;
    v6[2] = 0;
  }

  if (v12)
  {
    free(v12);
  }

  return v17;
}

uint64_t _partition_positionlistitem(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 1;
  v3 = &a1[3 * ((a2 + 1 + ((a2 + 1) >> 63)) >> 1)];
  v4 = &a1[3 * a2];
  if (a2 < 1024)
  {
    v15 = &a1[3 * ((a2 + 1 + ((a2 + 1) >> 63)) >> 1)];
    v16 = &a1[3 * a2];
    v9 = a1;
  }

  else
  {
    v5 = v2 >> 3;
    v6 = &a1[3 * (v2 >> 3)];
    v7 = *(a1 + 9);
    v8 = *(v6 + 9);
    v9 = a1;
    if (v8 != v7)
    {
      v10 = DWORD1(a1[6 * v5 + 2]);
      v11 = v7 == v10 || v8 == v10;
      v9 = &a1[6 * v5];
      if (!v11)
      {
        v12 = -v7;
        v13 = -v8;
        v14 = -v10;
        v9 = v6;
        if (v12 >= v13)
        {
          if (v13 <= v14)
          {
            if (v12 >= v14)
            {
              v9 = &a1[6 * v5];
            }

            else
            {
              v9 = a1;
            }
          }
        }

        else if (v13 >= v14)
        {
          if (v12 >= v14)
          {
            v9 = a1;
          }

          else
          {
            v9 = &a1[6 * v5];
          }
        }
      }
    }

    v45 = 2 * v5;
    v46 = -v5;
    v47 = &v3[-3 * v5];
    v48 = *(v47 + 9);
    v49 = *(v3 + 9);
    if (v49 == v48)
    {
      v15 = &v3[-3 * v5];
    }

    else
    {
      v50 = &v3[3 * v5];
      v51 = *(v50 + 9);
      v52 = v48 == v51 || v49 == v51;
      v15 = &v3[3 * v5];
      if (!v52)
      {
        v53 = -v48;
        v54 = -v49;
        v55 = -v51;
        v15 = &a1[3 * ((a2 + 1 + ((a2 + 1) >> 63)) >> 1)];
        if (v53 >= v54)
        {
          if (v54 <= v55)
          {
            if (v53 >= v55)
            {
              v15 = v50;
            }

            else
            {
              v15 = v47;
            }
          }
        }

        else if (v54 >= v55)
        {
          if (v53 >= v55)
          {
            v15 = v47;
          }

          else
          {
            v15 = v50;
          }
        }
      }
    }

    v56 = &v4[-3 * v45];
    v16 = &v4[3 * v46];
    v57 = *(v56 + 9);
    v58 = *(v16 + 9);
    if (v58 == v57)
    {
      v16 = v56;
    }

    else
    {
      v59 = *(v4 + 9);
      if (v57 == v59 || v58 == v59)
      {
        v16 = &a1[3 * a2];
      }

      else
      {
        v61 = -v57;
        v62 = -v58;
        v63 = -v59;
        if (v61 >= v62)
        {
          if (v62 <= v63)
          {
            if (v61 >= v63)
            {
              v16 = &a1[3 * a2];
            }

            else
            {
              v16 = v56;
            }
          }
        }

        else if (v62 >= v63)
        {
          if (v61 >= v63)
          {
            v16 = v56;
          }

          else
          {
            v16 = &a1[3 * a2];
          }
        }
      }
    }
  }

  v17 = *(v9 + 9);
  v18 = *(v15 + 9);
  if (v18 == v17)
  {
    v15 = v9;
  }

  else
  {
    v19 = *(v16 + 9);
    if (v17 == v19 || v18 == v19)
    {
      v15 = v16;
    }

    else
    {
      v21 = -v17;
      v22 = -v18;
      v23 = -v19;
      if (v21 >= v22)
      {
        if (v22 <= v23)
        {
          if (v21 >= v23)
          {
            v15 = v16;
          }

          else
          {
            v15 = v9;
          }
        }
      }

      else if (v22 >= v23)
      {
        if (v21 >= v23)
        {
          v15 = v9;
        }

        else
        {
          v15 = v16;
        }
      }
    }
  }

  v24 = *(v15 + 9);
  v72 = *(v15 + 8);
  v70 = *v15;
  v71 = v15[1];
  v25 = *(v15 + 5);
  v27 = v4[1];
  v26 = v4[2];
  *v15 = *v4;
  v15[1] = v27;
  v15[2] = v26;
  *v4 = v70;
  v4[1] = v71;
  *(v4 + 8) = v72;
  *(v4 + 9) = v24;
  *(v4 + 5) = v25;
  v67 = *a1;
  v68 = a1[1];
  v69 = *(a1 + 8);
  if (a2 < 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = 0;
    v29 = *(a1 + 5);
    v30 = *(a1 + 9);
    v31 = -v24;
    v32 = a1 + 11;
    do
    {
      v64 = v67;
      v65 = v68;
      v66 = v69;
      v67 = *(v32 - 5);
      v68 = *(v32 - 3);
      v33 = *(v32 - 1);
      v69 = *(v32 - 2);
      v34 = *v32;
      if (-v30 <= v31)
      {
        v35 = &a1[3 * v28];
        v36 = *v35;
        v37 = v35[1];
        *(v32 - 7) = v35[2];
        *(v32 - 9) = v37;
        *(v32 - 11) = v36;
        *v35 = v64;
        v35[1] = v65;
        *(v35 + 8) = v66;
        *(v35 + 9) = v30;
        *(v35 + 5) = v29;
        ++v28;
      }

      v32 += 6;
      v30 = v33;
      v29 = v34;
      --a2;
    }

    while (a2);
  }

  v38 = &a1[3 * v28];
  v39 = *v38;
  v40 = v38[1];
  v41 = v38[2];
  v43 = v4[1];
  v42 = v4[2];
  *v38 = *v4;
  v38[1] = v43;
  v38[2] = v42;
  v4[1] = v40;
  v4[2] = v41;
  *v4 = v39;
  return v28;
}

void *ci_position_run_add_bytes(uint64_t a1, size_t __n, _BYTE *__src)
{
  v4 = __n;
  v6 = __n;
  while (1)
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 + v6 < v8)
    {
      break;
    }

    *(a1 + 8) = 2 * v8;
    v9 = malloc_type_realloc(*(a1 + 24), 2 * v8, 0x100004077774924uLL);
    *(a1 + 24) = v9;
    if (!v9)
    {
      v10 = __si_assert_copy_extra(0);
      v11 = v10;
      v12 = "";
      if (v10)
      {
        v12 = v10;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPositionRun.h", 75, "run->buffer", v12);
      goto LABEL_18;
    }
  }

  if (!*__src)
  {
    v14 = __si_assert_copy_extra(0);
    v15 = v14;
    v16 = "";
    if (v14)
    {
      v16 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPositionRun.h", 77, "bytes[0]!=0", v16);
    free(v15);
    if (__valid_fs(-1))
    {
      v17 = 2989;
    }

    else
    {
      v17 = 3072;
    }

    *v17 = -559038737;
    abort();
  }

  if (v4 && __src[v4 - 1])
  {
    v18 = __si_assert_copy_extra(0);
    v11 = v18;
    v19 = "";
    if (v18)
    {
      v19 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPositionRun.h", 78, "len == 0 || bytes[len-1]==0", v19);
LABEL_18:
    free(v11);
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

  result = memcpy((*(a1 + 24) + v7), __src, v6);
  *(a1 + 16) += v6;
  return result;
}

uint64_t CIReadPostings(unsigned int *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v75 = *MEMORY[0x1E69E9840];
  result = store_stream_read_vint32(a1);
  *a4 = result;
  if (result)
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a2;
    v61 = result;
    while (1)
    {
      v13 = *(a1 + 5);
      if ((*(a1 + 4) - v13) < 0xB)
      {
        v33 = v9;
        v34 = 0;
        v15 = 0;
        LOBYTE(__dst) = 0;
        while (1)
        {
          v35 = *(a1 + 4);
          v36 = *(a1 + 5);
          v37 = v11;
          if (v36 + 1 > v35)
          {
            v38 = 0;
            p_dst = &__dst;
            v41 = *(a1 + 5);
            v40 = 1;
            while (1)
            {
              v42 = *(a1 + 6);
              v56 = p_dst;
              log = v35 - v41;
              if (v35 != v41)
              {
                __nbyte = v35;
                memcpy(p_dst, &v42[v41], log);
                v35 = __nbyte;
                *(a1 + 5) = __nbyte;
              }

              v43 = prot_pread(*a1, v42, v35, *(a1 + 3));
              if (v43 == -1)
              {
                v40 = 0;
                a1[4] = *__error();
                goto LABEL_41;
              }

              v35 = v43;
              *(a1 + 4) = v43;
              *(a1 + 5) = 0;
              *(a1 + 3) += v43;
              if (!v43)
              {
                break;
              }

              v36 = 0;
              v41 = 0;
              p_dst = (v56 + log);
              v40 -= log;
              v38 += log;
              if (v40 <= v35)
              {
                goto LABEL_40;
              }
            }

            v40 = log;
          }

          else
          {
            v38 = 0;
            p_dst = &__dst;
            v40 = 1;
LABEL_40:
            memcpy(p_dst, (*(a1 + 6) + v36), v40);
            *(a1 + 5) = v36 + v40;
          }

LABEL_41:
          v12 = a2;
          v8 = v61;
          v11 = v37;
          if (v40 + v38 != 1)
          {
            break;
          }

          v15 |= (__dst & 0x7F) << v34;
          v34 += 7;
          if ((__dst & 0x80) == 0)
          {
            goto LABEL_62;
          }
        }

        v15 = 0;
LABEL_62:
        v9 = v33;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *(*(a1 + 6) + v13++);
          v15 |= (v16 & 0x7F) << v14;
          if ((v16 & 0x80) == 0)
          {
            break;
          }

          v17 = v14 == 63;
          v14 += 7;
        }

        while (!v17);
        *(a1 + 5) = v13;
      }

      if (v11)
      {
        v18 = (v11 - (v15 >> 2));
      }

      else
      {
        v18 = (v15 >> 2);
      }

      if ((v15 & 2) != 0)
      {
        v19 = v15 >> 2;
      }

      else
      {
        v19 = v18;
      }

      if ((v15 & 2) == 0)
      {
        v11 = v18;
      }

      if (v15)
      {
        v23 = 1;
        if (!v10)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v20 = v11;
        v21 = v9;
        vint32 = store_stream_read_vint32(a1);
        v9 = v21;
        v11 = v20;
        v8 = v61;
        v12 = a2;
        v23 = vint32;
        if (!v10)
        {
          goto LABEL_31;
        }
      }

      if ((v15 & 2) != 0)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      v25 = (v12 + 12);
      v26 = atomic_load((v12 + 12));
      v27 = v26 + v24;
      v28 = *(v12 + 8);
      if (v27 >= v28)
      {
        v47 = 2 * v28;
        if (!v28)
        {
          v47 = 0x4000;
        }

        *(v12 + 8) = v47;
        v57 = v9;
        logb = v11;
        v48 = my_vm_reallocate(v12, 12 * v28, 12 * v47, 0xF3u, *(v12 + 16));
        LODWORD(v9) = v57;
        v11 = logb;
        v8 = v61;
        v12 = a2;
        if (v48)
        {
          v53 = __si_assert_copy_extra(0);
          v50 = v53;
          v54 = "";
          if (v53)
          {
            v54 = v53;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "DocPosting.h", 250, "0 == kr", v54);
LABEL_67:
          free(v50);
          if (__valid_fs(-1))
          {
            v52 = 2989;
          }

          else
          {
            v52 = 3072;
          }

          *v52 = -559038737;
          abort();
        }
      }

      add = atomic_fetch_add(v25, v24);
      if (v9)
      {
        a3 = *v12 + 12 * v9;
      }

      if (add)
      {
        v30 = *v12 + 12 * add;
      }

      else
      {
        v30 = 0;
      }

      *a3 = *a3 & 1 | (2 * add);
      v9 = add;
      a3 = v30;
LABEL_31:
      if (!a3)
      {
        v49 = __si_assert_copy_extra(0);
        v50 = v49;
        v51 = "";
        if (v49)
        {
          v51 = v49;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadData.c", 713, "lastPosting", v51);
        goto LABEL_67;
      }

      v31 = *a3 & 1;
      *a3 = v31;
      if (v19)
      {
        if ((v15 & 2) != 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v44 = v9;
        v45 = v11;
        v46 = *__error();
        loga = _SILogForLogForCategory(10);
        if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
        {
          __dst = 136316418;
          v64 = "CIReadPostings";
          v65 = 1024;
          v66 = 718;
          v67 = 2048;
          v68 = v15;
          v69 = 1024;
          v70 = v23;
          v71 = 1024;
          v72 = v10 + 1;
          v73 = 1024;
          v74 = v61;
          _os_log_error_impl(&dword_1C278D000, loga, OS_LOG_TYPE_ERROR, "%s:%d: info: %lld freq:%d read posting:%d of %d", &__dst, 0x2Eu);
        }

        *__error() = v46;
        v31 = *a3;
        v12 = a2;
        v8 = v61;
        v11 = v45;
        v9 = v44;
        if ((v15 & 2) != 0)
        {
LABEL_56:
          v32 = v31 | 1;
          *(a3 + 8) = v15 >> 2;
          goto LABEL_35;
        }
      }

      v32 = v31 & 0xFFFFFFFE;
      *(a3 + 8) = v18;
LABEL_35:
      *a3 = v32;
      *(a3 + 4) = v23;
      if (++v10 == v8)
      {
        return store_stream_read_vint32(a1);
      }
    }
  }

  return result;
}

uint64_t CIWritePostings(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, unsigned int a5, int a6)
{
  v7 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v11 = *a4;
  if (*a4 < 2)
  {
    v12 = *(a1 + 40);
    if ((*(a1 + 32) - v12) < 6)
    {
      *&buf[9] = 0;
      *&buf[1] = 0;
      *&buf[24] = 0;
      *&buf[17] = 0;
      v13 = 1;
      buf[0] = 1;
      store_stream_write_bytes(a1, buf, 1uLL);
    }

    else
    {
      v13 = 1;
      *(*(a1 + 48) + v12) = 1;
      *(a1 + 40) = v12 + 1;
    }

LABEL_7:
    v63 = a5;
    v16 = 0;
    v17 = v13 - 1;
    while (v7)
    {
      v18 = *v7;
      if (v18)
      {
        v20 = (4 * *(v7 + 1)) | 2;
      }

      else
      {
        v19 = v16 - v7[2];
        if (!v16)
        {
          v19 = v7[2];
        }

        v20 = 4 * v19;
        v16 = v7[2];
      }

      v21 = v7[1];
      if (v21 == 1)
      {
        v22 = *(a1 + 40);
        if ((*(a1 + 32) - v22) < 0xB)
        {
          memset(buf, 0, 32);
          v24 = writeVInt64(buf, 0, v20 | 1);
          result = store_stream_write_bytes(a1, buf, v24);
        }

        else
        {
          result = writeVInt64(*(a1 + 48), v22, v20 | 1);
          *(a1 + 40) = result;
        }
      }

      else
      {
        if (v20 <= 3)
        {
          v61 = *__error();
          log = _SILogForLogForCategory(10);
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "CIWritePostings";
            *&buf[12] = 1024;
            *&buf[14] = 798;
            *&buf[18] = 2048;
            *&buf[20] = v20;
            *&buf[28] = 1024;
            *&buf[30] = v21;
            v66 = 1024;
            v67 = v17;
            v68 = 1024;
            v69 = v13;
            _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: info: %lld freq:%d remaining posting:%d of %d", buf, 0x2Eu);
          }

          *__error() = v61;
        }

        v23 = *(a1 + 40);
        if ((*(a1 + 32) - v23) < 0xB)
        {
          memset(buf, 0, 32);
          v25 = writeVInt64(buf, 0, v20);
          store_stream_write_bytes(a1, buf, v25);
        }

        else
        {
          *(a1 + 40) = writeVInt64(*(a1 + 48), v23, v20);
        }

        result = store_stream_write_vint32(a1, v21);
      }

      if (v18 >= 2)
      {
        v7 = (a2 + 12 * (v18 >> 1));
      }

      else
      {
        v7 = 0;
      }

      if (--v17 == -1)
      {
        a5 = v63;
        goto LABEL_31;
      }
    }

    v48 = __si_assert_copy_extra(0);
    v49 = v48;
    v50 = "";
    if (v48)
    {
      v50 = v48;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadData.c", 773, "p", v50);
    free(v49);
    if (__valid_fs(-1))
    {
      goto LABEL_81;
    }

    goto LABEL_94;
  }

  v13 = 1;
  v14 = *a4;
  do
  {
    ++v13;
    v14 = *(a2 + 12 * (v14 >> 1));
  }

  while (v14 > 1);
  result = store_stream_write_vint32(a1, v13);
  if (v13)
  {
    goto LABEL_7;
  }

LABEL_31:
  if (!a5 || (v11 & 1) != 0)
  {
    v30 = *(a1 + 40);
    if ((*(a1 + 32) - v30) < 0xA)
    {
      memset(buf, 0, 32);
      return store_stream_write_bytes(a1, buf, 1uLL);
    }

    else
    {
      *(*(a1 + 48) + v30) = 0;
      *(a1 + 40) = v30 + 1;
    }

    return result;
  }

  v26 = *a3 + 32 * a5;
  v27 = (2 * *(v26 + 16)) | 1;
  v28 = *(a1 + 40);
  if ((*(a1 + 32) - v28) < 0xA)
  {
    memset(buf, 0, 32);
    v56 = v2_writeVInt64_11288(buf, 0, v27);
    store_stream_write_bytes(a1, buf, v56);
  }

  else
  {
    *(a1 + 40) = v2_writeVInt64_11288(*(a1 + 48), v28, v27);
  }

  if (*(v26 + 8))
  {
    LODWORD(result) = CIPositionNodeFinalizeDocument(v29);
  }

  else
  {
    result = *(v26 + 4);
    if (!result)
    {
      v31 = 0;
      goto LABEL_73;
    }
  }

  v31 = 0;
  do
  {
    v32 = (a3[2] + 8 * result);
    v35 = *v32;
    v34 = (v32 + 1);
    v33 = v35;
    v36 = *(a1 + 40);
    if ((*(a1 + 32) - v36) < 6)
    {
      memset(buf, 0, 32);
      if (v33 > 0x7F)
      {
        if (v33 >> 14)
        {
          if (v33 >> 21)
          {
            if (v33 >> 28)
            {
              buf[0] = -16;
              *&buf[1] = v33;
              v46 = 5;
            }

            else
            {
              buf[0] = HIBYTE(v33) | 0xE0;
              buf[1] = BYTE2(v33);
              buf[2] = BYTE1(v33);
              buf[3] = v33;
              v46 = 4;
            }
          }

          else
          {
            buf[0] = BYTE2(v33) | 0xC0;
            buf[1] = BYTE1(v33);
            buf[2] = v33;
            v46 = 3;
          }
        }

        else
        {
          buf[0] = BYTE1(v33) | 0x80;
          buf[1] = v33;
          v46 = 2;
        }
      }

      else
      {
        buf[0] = v33;
        v46 = 1;
      }

      store_stream_write_bytes(a1, buf, v46);
      v38 = *(a1 + 40);
    }

    else
    {
      v37 = *(a1 + 48);
      if (v33 > 0x7F)
      {
        if (v33 >> 14)
        {
          if (v33 >> 21)
          {
            if (v33 >> 28)
            {
              v42 = v37 + v36;
              *v42 = -16;
              *(v42 + 1) = v33;
              v38 = v36 + 5;
            }

            else
            {
              v41 = (v37 + v36);
              *v41 = HIBYTE(v33) | 0xE0;
              v41[1] = BYTE2(v33);
              v41[2] = BYTE1(v33);
              v38 = v36 + 4;
              v41[3] = v33;
            }
          }

          else
          {
            v40 = (v37 + v36);
            *v40 = BYTE2(v33) | 0xC0;
            v40[1] = BYTE1(v33);
            v38 = v36 + 3;
            v40[2] = v33;
          }
        }

        else
        {
          v39 = (v37 + v36);
          *v39 = BYTE1(v33) | 0x80;
          v38 = v36 + 2;
          v39[1] = v33;
        }
      }

      else
      {
        v38 = v36 + 1;
        *(v37 + v36) = v33;
      }

      *(a1 + 40) = v38;
    }

    v43 = *(a1 + 32);
    if (v38 + v33 >= v43)
    {
      v45 = v33;
      v44 = v34;
      while (1)
      {
        v64 = v43 - v38;
        memcpy((*(a1 + 48) + v38), v44, v43 - v38);
        *(a1 + 40) += v64;
        if (store_stream_flush(a1, 0))
        {
          break;
        }

        v44 += v64;
        v45 -= v64;
        v43 = *(a1 + 32);
        v38 = *(a1 + 40);
        if (v38 + v45 < v43)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      v44 = v34;
      v45 = v33;
LABEL_54:
      memcpy((*(a1 + 48) + v38), v44, v45);
      *(a1 + 40) += v45;
    }

    if (v34[v33 - 1])
    {
      v52 = __si_assert_copy_extra(0);
      v53 = v52;
      v54 = "";
      if (v52)
      {
        v54 = v52;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadData.c", 838, "posStart[len-1]==0", v54);
      free(v53);
      if (__valid_fs(-1))
      {
        v55 = 2989;
      }

      else
      {
        v55 = 3072;
      }

      *v55 = -559038737;
      abort();
    }

    ++v31;
    result = *&v34[v33];
  }

  while (result);
LABEL_73:
  v47 = *(a1 + 40);
  if ((*(a1 + 32) - v47) < 0xA)
  {
    memset(buf, 0, 32);
    result = store_stream_write_bytes(a1, buf, 1uLL);
  }

  else
  {
    *(*(a1 + 48) + v47) = 0;
    *(a1 + 40) = v47 + 1;
  }

  if (!*(v26 + 16) && v13 != v31)
  {
    v57 = __si_assert_copy_extra(*(a1 + 56));
    v58 = v57;
    v59 = "";
    if (v57)
    {
      v59 = v57;
    }

    __message_assert("%s:%u: failed assertion '%s' %s o:%lld, pc:%d dc:%d flags:%d", "CIPayloadData.c", 845, "node->offset || postingCount==docCount", v59, *(v26 + 16), v13, v31, a6);
    free(v58);
    if (__valid_fsp(*(a1 + 56)))
    {
LABEL_81:
      v51 = 2989;
      goto LABEL_95;
    }

LABEL_94:
    v51 = 3072;
LABEL_95:
    *v51 = -559038737;
    abort();
  }

  return result;
}

void oqdispose_AnnotatedPositionOffset_t(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    v2 = 0;
    v3 = 8;
    do
    {
      CFRelease(*(*(a1 + 8) + v3));
      ++v2;
      v3 += 56;
    }

    while (v2 < *(a1 + 24));
  }

  if (*(a1 + 48))
  {
    v4 = *(a1 + 32);
    if (v4 < *(a1 + 40))
    {
      v5 = 56 * v4 + 8;
      do
      {
        CFRelease(*(*(a1 + 8) + v5));
        ++v4;
        v5 += 56;
      }

      while (v4 < *(a1 + 40));
    }
  }

  v6 = *(a1 + 8);

  free(v6);
}

void parallel_qsort_AnnotatedPositionOffset_t(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2 > 2047)
  {
    v4 = OSAtomicDequeue(&qsort_cached_allocations_13628, 0);
    if (!v4)
    {
      v4 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
    }

    v5 = dispatch_group_create();
    v4[3] = v5;
    v4[4] = 0;
    v4[1] = 0;
    v4[2] = a2 - 1;
    *v4 = a1;
    v6 = thread_count_13629;
    if (!thread_count_13629)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count_13629, &v8, 0, 0);
      v6 = thread_count_13629;
    }

    *(v4 + 14) = v6;
    v4[5] = sqrt(a2) / 2;
    if (!v6)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count_13629, &v8, 0, 0);
      v6 = thread_count_13629;
    }

    v7 = a2 / (2 * v6);
    if (v7 <= 0x8000)
    {
      v7 = 0x8000;
    }

    else if (!v6)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count_13629, &v8, 0, 0);
      v7 = a2 / (2 * thread_count_13629);
    }

    v4[6] = v7;
    if (v4[5] <= 2047)
    {
      v4[5] = 2048;
    }

    _qsort_big_AnnotatedPositionOffset_t(v4);
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
  }

  else
  {

    _qsort_AnnotatedPositionOffset_t(a1, 0, a2 - 1);
  }
}

void _qsort_AnnotatedPositionOffset_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x800uLL, 0x1000040451B5BE8uLL);
  *v6 = 0;
  v6[1] = 0;
  v7 = 1;
  do
  {
    if (a3 > a2)
    {
      if (v7 <= 128)
      {
        v8 = 128;
      }

      else
      {
        v8 = v7;
      }

      v9 = &v6[2 * v7 + 1];
      while (a3 - a2 > 16)
      {
        v10 = _partition_AnnotatedPositionOffset_t(a1, a2, a3);
        if (v10 < a2)
        {
          v21 = __si_assert_copy_extra(0);
          v22 = v21;
          v23 = "";
          if (v21)
          {
            v23 = v21;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 50, "q>=left", v23);
          free(v22);
          if (__valid_fs(-1))
          {
            v24 = 2989;
          }

          else
          {
            v24 = 3072;
          }

          *v24 = -559038737;
          abort();
        }

        if (v8 == v7)
        {
          heapsort_b((a1 + 56 * a2), a3 - a2 + 1, 0x38uLL, &__block_literal_global_13624);
          v7 = v8;
          goto LABEL_21;
        }

        if (v10 - a2 <= a3 - v10)
        {
          *(v9 - 1) = a2;
          *v9 = v10 - 1;
          a2 = v10;
        }

        else
        {
          *(v9 - 1) = v10;
          *v9 = a3;
          a3 = v10 - 1;
        }

        ++v7;
        v9 += 2;
        if (a3 <= a2)
        {
          goto LABEL_21;
        }
      }

      v11 = a1 + 64 + 56 * a2;
      v12 = a2;
      do
      {
        v13 = v12;
        v14 = (a1 + 56 * v12);
        v15 = v14[7];
        ++v12;
        v28 = *(v14 + 4);
        v29 = *(v14 + 5);
        v30 = *(v14 + 6);
        v16 = *v14;
        v25 = *(v14 + 1);
        v26 = *(v14 + 3);
        v27 = *(v14 + 5);
        v17 = v12;
        if (v16 > v15)
        {
          v18 = v11;
          do
          {
            v17 = v13;
            *(v18 - 1) = v16;
            *v18 = v25;
            v18[1] = v26;
            v18[2] = v27;
            if (v13 <= a2)
            {
              break;
            }

            v16 = *(v18 - 15);
            v25 = *(v18 - 7);
            v26 = *(v18 - 6);
            v27 = *(v18 - 5);
            --v13;
            v18 = (v18 - 56);
          }

          while (v16 > v15);
        }

        v19 = a1 + 56 * v17;
        *v19 = v15;
        *(v19 + 8) = v28;
        *(v19 + 24) = v29;
        *(v19 + 40) = v30;
        v11 += 56;
      }

      while (v12 != a3);
    }

LABEL_21:
    --v7;
    v20 = &v6[2 * v7];
    a2 = *v20;
    a3 = v20[1];
  }

  while (v7);

  free(v6);
}

uint64_t _partition_AnnotatedPositionOffset_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2 + 1;
  v4 = (a1 + 56 * a2);
  v5 = &v4[7 * ((v3 + (v3 >> 63)) >> 1)];
  v6 = (a1 + 56 * a3);
  if (a3 - a2 < 1024)
  {
    v14 = &v4[7 * ((v3 + (v3 >> 63)) >> 1)];
    v15 = (a1 + 56 * a3);
    v11 = (a1 + 56 * a2);
  }

  else
  {
    v7 = v3 >> 3;
    v8 = &v4[7 * (v3 >> 3)];
    v9 = *v4;
    v10 = *v8;
    v11 = (a1 + 56 * a2);
    if (*v4 != *v8)
    {
      v12 = v4[14 * v7];
      v13 = v12 == v9 || v12 == v10;
      v11 = &v4[14 * v7];
      if (!v13)
      {
        v11 = v8;
        if (v9 >= v10)
        {
          if (v10 <= v12)
          {
            if (v9 >= v12)
            {
              v11 = &v4[14 * v7];
            }

            else
            {
              v11 = (a1 + 56 * a2);
            }
          }
        }

        else if (v10 >= v12)
        {
          if (v9 >= v12)
          {
            v11 = (a1 + 56 * a2);
          }

          else
          {
            v11 = &v4[14 * v7];
          }
        }
      }
    }

    v41 = 2 * v7;
    v42 = -v7;
    v43 = &v5[-7 * v7];
    v44 = *v43;
    v45 = *v5;
    if (*v43 == *v5)
    {
      v14 = &v5[-7 * v7];
    }

    else
    {
      v46 = &v5[7 * v7];
      v47 = *v46;
      v48 = *v46 == v44 || v47 == v45;
      v14 = &v5[7 * v7];
      if (!v48)
      {
        v14 = v5;
        if (v44 >= v45)
        {
          if (v45 <= v47)
          {
            if (v44 >= v47)
            {
              v14 = v46;
            }

            else
            {
              v14 = v43;
            }
          }
        }

        else if (v45 >= v47)
        {
          if (v44 >= v47)
          {
            v14 = v43;
          }

          else
          {
            v14 = v46;
          }
        }
      }
    }

    v49 = &v6[-7 * v41];
    v15 = &v6[7 * v42];
    v50 = *v49;
    v51 = *v15;
    if (*v49 == *v15)
    {
      v15 = v49;
    }

    else
    {
      v52 = *v6;
      if (*v6 == v50 || v52 == v51)
      {
        v15 = (a1 + 56 * a3);
      }

      else if (v50 >= v51)
      {
        if (v51 <= v52)
        {
          if (v50 >= v52)
          {
            v15 = (a1 + 56 * a3);
          }

          else
          {
            v15 = v49;
          }
        }
      }

      else if (v51 >= v52)
      {
        if (v50 >= v52)
        {
          v15 = v49;
        }

        else
        {
          v15 = (a1 + 56 * a3);
        }
      }
    }
  }

  v16 = *v11;
  v17 = *v14;
  if (*v11 == *v14)
  {
    v14 = v11;
  }

  else
  {
    v18 = *v15;
    if (*v15 == v16 || v18 == v17)
    {
      v14 = v15;
    }

    else if (v16 >= v17)
    {
      if (v17 <= v18)
      {
        if (v16 >= v18)
        {
          v14 = v15;
        }

        else
        {
          v14 = v11;
        }
      }
    }

    else if (v17 >= v18)
    {
      if (v16 >= v18)
      {
        v14 = v11;
      }

      else
      {
        v14 = v15;
      }
    }
  }

  v20 = *v14;
  v61 = *(v14 + 3);
  v62 = *(v14 + 5);
  v60 = *(v14 + 1);
  v21 = *v6;
  v22 = *(v6 + 1);
  v23 = *(v6 + 2);
  v14[6] = v6[6];
  *(v14 + 1) = v22;
  *(v14 + 2) = v23;
  *v14 = v21;
  *v6 = v20;
  *(v6 + 1) = v60;
  *(v6 + 3) = v61;
  *(v6 + 5) = v62;
  v24 = *v4;
  v57 = *(v4 + 1);
  v58 = *(v4 + 3);
  v59 = *(v4 + 5);
  v25 = a3 - a2;
  if (a3 > a2)
  {
    v26 = (a1 + 56 * a2 + 64);
    do
    {
      v54 = v57;
      v55 = v58;
      v27 = *(v26 - 1);
      v56 = v59;
      v57 = *v26;
      v58 = v26[1];
      v59 = v26[2];
      if (v24 <= v20)
      {
        v28 = (a1 + 56 * a2);
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[2];
        *(v26 - 2) = *(v28 + 6);
        *(v26 - 3) = v30;
        *(v26 - 2) = v31;
        *(v26 - 4) = v29;
        *v28 = v24;
        *(v28 + 8) = v54;
        *(v28 + 24) = v55;
        *(v28 + 40) = v56;
        ++a2;
      }

      v26 = (v26 + 56);
      v24 = v27;
      --v25;
    }

    while (v25);
  }

  v32 = (a1 + 56 * a2);
  v33 = *(v32 + 6);
  v35 = v32[1];
  v34 = v32[2];
  v36 = *v32;
  v38 = *(v6 + 1);
  v37 = *(v6 + 2);
  v39 = *v6;
  *(v32 + 6) = v6[6];
  v32[1] = v38;
  v32[2] = v37;
  *v32 = v39;
  *v6 = v36;
  *(v6 + 1) = v35;
  *(v6 + 2) = v34;
  v6[6] = v33;
  return a2;
}

void _qsort_big_AnnotatedPositionOffset_t(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v38 = a1[6];
  v39 = *a1;
  v6 = *(a1 + 14);
  v37 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations_13628, a1, 0);
  if (v2 > v1)
  {
    for (i = v4 + 1; ; ++i)
    {
      v8 = v2 - v1;
      if (v2 - v1 <= v5 || i > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v10 = getSize_memSize_13630;
      if (!getSize_memSize_13630)
      {
        v43 = 0u;
        v44 = 0u;
        *host_info_out = 0u;
        v11 = MEMORY[0x1C6920B70]();
        host_info_outCnt = 12;
        v12 = host_info(v11, 1, host_info_out, &host_info_outCnt);
        if (v12)
        {
          mach_error("flushsize", v12);
          exit(1);
        }

        v10 = *(&v44 + 1);
        getSize_memSize_13630 = *(&v44 + 1);
      }

      v13 = 3 * v10;
      v14 = (v13 * 0xCCCCCCCCCCCCCCCDLL) >> 64;
      v15 = v3;
      if (56 * v8 > v13 / 5)
      {
        v15 = dispatch_group_create();
      }

      if (v8 <= v38 || 56 * v8 >= v14 >> 2)
      {
        v19 = _partition_AnnotatedPositionOffset_t(v39, v1, v2);
      }

      else
      {
        v16 = qos_class_self();
        global_queue = dispatch_get_global_queue(v16, 2uLL);
        v19 = _big_partition_AnnotatedPositionOffset_t(v39, v1, v2, global_queue, v6, v18);
      }

      v20 = v19;
      v21 = v19 - v1;
      if (v19 < v1)
      {
        v33 = __si_assert_copy_extra(0);
        v34 = v33;
        v35 = "";
        if (v33)
        {
          v35 = v33;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 50, "q>=left", v35);
        free(v34);
        if (__valid_fs(-1))
        {
          v36 = 2989;
        }

        else
        {
          v36 = 3072;
        }

        *v36 = -559038737;
        abort();
      }

      v22 = OSAtomicDequeue(&qsort_cached_allocations_13628, 0);
      if (!v22)
      {
        v22 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
      }

      *(v22 + 4) = i;
      *(v22 + 5) = v5;
      *(v22 + 6) = v38;
      v23 = v2 - v20;
      if (v21 <= v2 - v20)
      {
        v24 = v20 - 1;
      }

      else
      {
        v23 = v20 - 1 - v1;
        v24 = v2;
      }

      if (v21 > v2 - v20)
      {
        v25 = v20;
      }

      else
      {
        v25 = v1;
      }

      if (v21 > v2 - v20)
      {
        v2 = v20 - 1;
      }

      else
      {
        v1 = v20;
      }

      *v22 = v39;
      *(v22 + 1) = v25;
      v26 = (((v23 + 1) / (v24 - v25 + 1)) * v6);
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      if (v6 >= v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v22[14] = v6 - v28;
      v22[15] = v37;
      *(v22 + 2) = v24;
      *(v22 + 3) = v15;
      if (v15 == v3)
      {
        if (v6 >= v26)
        {
          v6 = v27;
        }

        v31 = qos_class_self();
        v32 = dispatch_get_global_queue(v31, 2uLL);
        dispatch_group_async_f(v15, v32, v22, _qsort_big_AnnotatedPositionOffset_t);
      }

      else
      {
        v22[14] = v6;
        _qsort_big_AnnotatedPositionOffset_t(v22);
        dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v15);
        v29 = qos_class_self();
        v30 = dispatch_get_global_queue(v29, 2uLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___qsort_big_AnnotatedPositionOffset_t_block_invoke;
        block[3] = &__block_descriptor_tmp_13632;
        block[4] = v22;
        dispatch_async(v30, block);
      }

      if (v2 <= v1)
      {
        return;
      }
    }

    _qsort_AnnotatedPositionOffset_t(v39, v1, v2);
  }
}

uint64_t _big_partition_AnnotatedPositionOffset_t(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v8 = a3 - a2;
  v9 = a3 - a2 + 1;
  v10 = (a1 + 56 * a2);
  v11 = &v10[7 * ((v9 + (v9 >> 63)) >> 1)];
  v12 = (a1 + 56 * a3);
  if (v8 < 64)
  {
    v29 = &v10[7 * ((v9 + (v9 >> 63)) >> 1)];
    v17 = v10;
  }

  else
  {
    v13 = v9 >> 3;
    v14 = &v10[7 * (v9 >> 3)];
    v15 = *v10;
    v16 = *v14;
    v17 = v10;
    if (*v10 != *v14)
    {
      v17 = &v10[14 * v13];
      v18 = *v17;
      if (*v17 != v15 && v18 != v16)
      {
        if (v15 >= v18)
        {
          v20 = &v10[14 * v13];
        }

        else
        {
          v20 = v10;
        }

        if (v16 > v18)
        {
          v20 = &v10[7 * (v9 >> 3)];
        }

        if (v15 >= v18)
        {
          v17 = v10;
        }

        if (v16 < v18)
        {
          v17 = &v10[7 * (v9 >> 3)];
        }

        if (v15 >= v16)
        {
          v17 = v20;
        }
      }
    }

    v21 = 2 * v13;
    v22 = -v13;
    v23 = &v11[-7 * v13];
    v24 = *v23;
    v25 = *v11;
    if (*v23 == *v11)
    {
      v29 = &v11[-7 * v13];
    }

    else
    {
      v26 = &v11[7 * v13];
      v27 = *v26;
      v28 = *v26 == v24 || v27 == v25;
      v29 = &v11[7 * v13];
      if (!v28)
      {
        v29 = &v10[7 * ((v9 + (v9 >> 63)) >> 1)];
        if (v24 >= v25)
        {
          if (v25 <= v27)
          {
            if (v24 >= v27)
            {
              v29 = v26;
            }

            else
            {
              v29 = v23;
            }
          }
        }

        else if (v25 >= v27)
        {
          if (v24 >= v27)
          {
            v29 = v23;
          }

          else
          {
            v29 = v26;
          }
        }
      }
    }

    v30 = &v12[-7 * v21];
    v31 = &v12[7 * v22];
    v32 = *v30;
    v33 = *v31;
    if (*v30 == *v31)
    {
      v12 = v30;
    }

    else
    {
      v34 = *v12;
      if (v32 >= *v12)
      {
        v35 = v12;
      }

      else
      {
        v35 = v30;
      }

      if (v33 > v34)
      {
        v35 = v31;
      }

      if (v32 < v34)
      {
        v30 = v12;
      }

      if (v33 >= v34)
      {
        v31 = v30;
      }

      if (v32 >= v33)
      {
        v31 = v35;
      }

      if (v34 != v32 && v34 != v33)
      {
        v12 = v31;
      }
    }
  }

  v37 = *v17;
  v38 = *v29;
  if (*v17 == *v29)
  {
    v29 = v17;
  }

  else
  {
    v39 = *v12;
    if (*v12 == v37 || v39 == v38)
    {
      v29 = v12;
    }

    else if (v37 >= v38)
    {
      if (v38 <= v39)
      {
        if (v37 >= v39)
        {
          v29 = v12;
        }

        else
        {
          v29 = v17;
        }
      }
    }

    else if (v38 >= v39)
    {
      if (v37 >= v39)
      {
        v29 = v17;
      }

      else
      {
        v29 = v12;
      }
    }
  }

  return parallel_partition_AnnotatedPositionOffset_t(v10, v9, *v29, a4, a5, a6) + a2;
}

uint64_t parallel_partition_AnnotatedPositionOffset_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v6 = a5;
  v18[1] = v18;
  context[9] = *MEMORY[0x1E69E9840];
  context[6] = a1;
  v11 = 8 * a5;
  MEMORY[0x1EEE9AC00](a6);
  v13 = v18 - v12;
  bzero(v18 - v12, v11);
  v14 = (a2 / 0x4000) << 13;
  context[1] = v14;
  context[2] = a2;
  context[4] = 0;
  context[5] = 0;
  v15 = a2 - v14;
  context[7] = a3;
  context[8] = v13;
  if (v6 >= 1)
  {
    memset(v13, 255, v11);
  }

  v16 = v14 + 0x2000;
  if (v15 > v14 + 0x2000)
  {
    v16 = a2 - ((a2 / 0x4000) << 13);
  }

  context[3] = v15 + ((v16 - v15 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
  context[0] = 0;
  if (56 * a2 >= (4 * *MEMORY[0x1E69E9AC8]))
  {
    madvise(a1, 56 * a2, 3);
  }

  if (a2 / 0x4000 < v6)
  {
    v6 = a2 / 0x4000;
  }

  dispatch_apply_f(v6, a4, context, partition_phase_AnnotatedPositionOffset_t);
  return sequential_fixup_AnnotatedPositionOffset_t(context, a2, v6);
}

uint64_t sequential_fixup_AnnotatedPositionOffset_t(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  qsort(*(a1 + 64), a3, 8uLL, index_comp_13636);
  v58 = 0;
  v57 = 0;
  v7 = *(a1 + 64);
  v8 = (a3 - 1);
  v9 = 0;
  if (a3 < 1)
  {
    goto LABEL_91;
  }

  while (*(v7 + 8 * v9) == -1)
  {
    if (v6 == ++v9)
    {
      v9 = v6;
      break;
    }
  }

  if (a3 == 1)
  {
    v8 = 0;
  }

  else
  {
LABEL_91:
    do
    {
      if (*(v7 + 8 * v8) != -1)
      {
        break;
      }

      --v8;
    }

    while (v8);
  }

  while (v9 < v8)
  {
    v10 = neutralize_AnnotatedPositionOffset_t(*(a1 + 48) + 56 * *(v7 + 8 * v9), *(a1 + 48) + 56 * *(v7 + 8 * v8), *(a1 + 56), &v57, &v58);
    v7 = *(a1 + 64);
    if ((v10 & 1) == 0)
    {
      v11 = *(v7 + 8 * v9);
      if ((v11 & 0x8000000000000000) == 0 && v11 < *(a1 + 32))
      {
        *(v7 + 8 * v9) = -1;
        *(a1 + 32) += 0x2000;
      }

      ++v9;
      v57 = 0;
      if ((v10 - 1) > 1)
      {
        continue;
      }
    }

    v12 = *(v7 + 8 * v8);
    v13 = v12 >= a2 || v12 < a2 - *(a1 + 40);
    if (!v13)
    {
      *(v7 + 8 * v8) = -1;
      *(a1 + 40) += 0x2000;
    }

    --v8;
    v58 = 0;
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = malloc_type_malloc(0x70000uLL, 0x1080040234AA431uLL);
  if (a3 < 1)
  {
    v34 = *a1;
    v33 = *(a1 + 16) - 1;
  }

  else
  {
    v17 = 0;
    v18 = ~v14 + a2;
    v19 = a3;
    v20 = *(a1 + 64);
    v21 = 8 * a3;
    do
    {
      v22 = v20[v17];
      if (v22 != -1 && v18 <= v22)
      {
        break;
      }

      if (v22 != -1)
      {
        if (v15 <= v22)
        {
          break;
        }

        v24 = *(a1 + 32);
        if (v24 > v22)
        {
          v25 = 0;
          do
          {
            if (v20[v25 / 8] == v24)
            {
              v24 += 0x2000;
              *(a1 + 32) = v24;
            }

            v25 += 8;
          }

          while (v21 != v25);
          if (v24 >= *a1)
          {
            break;
          }

          memcpy(v16, (*(a1 + 48) + 56 * v20[v17]), 0x70000uLL);
          memcpy((*(a1 + 48) + 56 * *(*(a1 + 64) + 8 * v17)), (*(a1 + 48) + 56 * *(a1 + 32)), 0x70000uLL);
          memcpy((*(a1 + 48) + 56 * *(a1 + 32)), v16, 0x70000uLL);
          v26 = *(a1 + 32);
          v20 = *(a1 + 64);
          v20[v17] = v26;
          *(a1 + 32) = v26 + 0x2000;
        }
      }

      ++v17;
    }

    while (v17 != v19);
    v27 = v19;
    do
    {
      v28 = v27 - 1;
      v29 = v20[v27 - 1];
      if (v15 > v29)
      {
        break;
      }

      if (v29 != -1)
      {
        if (v18 > v29)
        {
          break;
        }

        v30 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v30;
        v31 = v19 - 1;
        do
        {
          if (v20[v31] == a2 - v30)
          {
            v30 += 0x2000;
            *(a1 + 40) = v30;
          }

          v32 = v31-- + 1;
        }

        while (v32 > 1);
        if ((a2 - v30) < *(a1 + 16))
        {
          break;
        }

        memcpy(v16, (*(a1 + 48) + 56 * v20[v28]), 0x70000uLL);
        memcpy((*(a1 + 48) + 56 * *(*(a1 + 64) + 8 * v28)), (*(a1 + 48) + 56 * (a2 - *(a1 + 40))), 0x70000uLL);
        memcpy((*(a1 + 48) + 56 * (a2 - *(a1 + 40))), v16, 0x70000uLL);
        v20 = *(a1 + 64);
        v20[v28] = a2 - *(a1 + 40);
      }

      v13 = v27-- <= 1;
    }

    while (!v13);
    v33 = *(a1 + 16) - 1;
    v34 = *a1;
    do
    {
      v36 = *v20++;
      v35 = v36;
      if (v36 != -1)
      {
        if (v35 < v34)
        {
          v34 = v35;
        }

        v37 = v35 + 0x2000;
        v38 = v35 + 0x1FFF;
        if (v37 > v33)
        {
          v33 = v38;
        }

        if (v33 >= a2)
        {
          v49 = __si_assert_copy_extra(0);
          v50 = v49;
          v51 = "";
          if (v49)
          {
            v51 = v49;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 50, "right < count", v51);
          free(v50);
          if (__valid_fs(-1))
          {
            v52 = 2989;
          }

          else
          {
            v52 = 3072;
          }

          *v52 = -559038737;
          abort();
        }
      }

      --v19;
    }

    while (v19);
  }

  free(v16);
  if (v34 >= v33)
  {
    v39 = v34;
  }

  else
  {
    v39 = v34;
    do
    {
      v41 = *(a1 + 48);
      v40 = *(a1 + 56);
      v42 = (v41 + 56 * v34);
      while (*v42 < v40)
      {
        ++v39;
        v42 = (v42 + 56);
        if (v39 >= v33)
        {
          if (v33 <= v34 + 1)
          {
            v39 = v34 + 1;
          }

          else
          {
            v39 = v33;
          }

          goto LABEL_80;
        }
      }

      if (v39 < v33)
      {
        v43 = (v41 + 56 * v33);
        while (*v43 > v40)
        {
          --v33;
          v43 = (v43 - 56);
          if (v39 >= v33)
          {
            goto LABEL_80;
          }
        }

        v53 = *v43;
        v54 = v43[1];
        v55 = v43[2];
        v56 = *(v43 + 6);
        v45 = v42[1];
        v44 = v42[2];
        v46 = *v42;
        *(v43 + 6) = *(v42 + 6);
        v43[1] = v45;
        v43[2] = v44;
        *v43 = v46;
        v47 = *(a1 + 48) + 56 * v39;
        *v47 = v53;
        *(v47 + 16) = v54;
        *(v47 + 32) = v55;
        *(v47 + 48) = v56;
        ++v39;
        --v33;
      }

      v34 = v39;
    }

    while (v39 < v33);
  }

LABEL_80:
  if (*(*(a1 + 48) + 56 * v39) >= *(a1 + 56))
  {
    return v39;
  }

  else
  {
    return v39 + 1;
  }
}

uint64_t neutralize_AnnotatedPositionOffset_t(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a4;
  v6 = *a5;
  while (1)
  {
    if (v5 < 0x2000)
    {
      v7 = (a1 + 56 * v5);
      while (1)
      {
        v8 = *v7;
        v7 += 7;
        if (v8 > a3)
        {
          break;
        }

        if (++v5 == 0x2000)
        {
          v9 = 0x2000;
          goto LABEL_8;
        }
      }
    }

    v9 = v5;
LABEL_8:
    if (v6 < 0x2000)
    {
      v10 = (a2 + 56 * v6);
      while (1)
      {
        v11 = *v10;
        v10 += 7;
        if (v11 < a3)
        {
          break;
        }

        if (++v6 == 0x2000)
        {
          v5 = v9;
          goto LABEL_17;
        }
      }
    }

    v12 = v6;
    if (v9 == 0x2000 || v6 == 0x2000)
    {
      break;
    }

    v13 = (a2 + 56 * v6);
    v14 = *(v13 + 6);
    v16 = v13[1];
    v15 = v13[2];
    v17 = *v13;
    v18 = (a1 + 56 * v9);
    v20 = v18[1];
    v19 = v18[2];
    v21 = *v18;
    *(v13 + 6) = *(v18 + 6);
    v13[1] = v20;
    v13[2] = v19;
    *v13 = v21;
    *v18 = v17;
    v18[1] = v16;
    v18[2] = v15;
    *(v18 + 6) = v14;
    v5 = v9 + 1;
    v6 = v12 + 1;
    if (v9 > 8190 || v12 >= 0x1FFF)
    {
      goto LABEL_17;
    }
  }

  v5 = v9;
LABEL_17:
  *a4 = v5;
  *a5 = v6;
  if (v6 == 0x2000 && v5 == 0x2000)
  {
    return 2;
  }

  else
  {
    return v5 != 0x2000;
  }
}

uint64_t index_comp_13636(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

atomic_ullong *partition_phase_AnnotatedPositionOffset_t(atomic_ullong *result, uint64_t a2)
{
  v3 = result;
  v4 = result[6];
  v5 = result[1];
  if (*result >= v5)
  {
    goto LABEL_4;
  }

  add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
  if ((add_explicit + 0x2000) > v5)
  {
    atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
LABEL_4:
    add_explicit = -1;
  }

  v7 = result[3];
  if (result[2] <= v7)
  {
LABEL_8:
    v10 = 0;
    if (add_explicit == -1)
    {
      v9 = -1;
      v11 = 0;
      goto LABEL_32;
    }

    v11 = 0;
    goto LABEL_33;
  }

  v8 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
  v9 = v8 - 0x2000;
  if ((v8 - 0x2000) < v7)
  {
    atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  v17 = 0;
  v18 = 0;
  if (v8 == 0x1FFF || add_explicit == -1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_31;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    result = neutralize_AnnotatedPositionOffset_t(v4 + 56 * add_explicit, v4 + 56 * v9, v3[7], &v18, &v17);
    if (result)
    {
LABEL_23:
      v16 = v3[3];
      if (v3[2] > v16)
      {
        v9 = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
        if (v9 >= v16)
        {
LABEL_27:
          v17 = 0;
          ++v13;
          continue;
        }

        atomic_fetch_add_explicit(v3 + 2, 0x2000uLL, memory_order_relaxed);
      }

      v9 = -1;
      goto LABEL_27;
    }

    v15 = v3[1];
    if (*v3 < v15)
    {
      add_explicit = atomic_fetch_add_explicit(v3, 0x2000uLL, memory_order_relaxed);
      if ((add_explicit + 0x2000) <= v15)
      {
        goto LABEL_22;
      }

      atomic_fetch_add_explicit(v3, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
    }

    add_explicit = -1;
LABEL_22:
    v18 = 0;
    ++v14;
    if ((result - 1) <= 1)
    {
      goto LABEL_23;
    }
  }

  while (v9 != -1 && add_explicit != -1);
  v11 = v14 << 13;
  v10 = v13 << 13;
LABEL_31:
  if (add_explicit == -1)
  {
LABEL_32:
    add_explicit = v9;
  }

LABEL_33:
  *(v3[8] + 8 * a2) = add_explicit;
  atomic_fetch_add_explicit(v3 + 4, v11, memory_order_relaxed);
  atomic_fetch_add_explicit(v3 + 5, v10, memory_order_relaxed);
  return result;
}

void oqsplit_AnnotatedPositionOffset_t(uint64_t a1, unint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a1 + 24);
    *(a1 + 40) = v4;
    if (v4 > 99999)
    {
      v21 = v4 - 1;
      v22 = *(a1 + 8);
      v23 = qos_class_self();
      global_queue = dispatch_get_global_queue(v23, 0);
      v26 = thread_count_13629;
      if (!thread_count_13629)
      {
        *v58 = 0x1900000006;
        v57 = 4;
        sysctl(v58, 2u, &thread_count_13629, &v57, 0, 0);
        v26 = thread_count_13629;
      }

      v4 = _big_split_AnnotatedPositionOffset_t(v22, v21, a2, global_queue, v26, v25);
    }

    else if (v4 >= 1)
    {
      v5 = 0;
      v6 = *(a1 + 8);
      while (1)
      {
        v7 = (v6 + 56 * v5);
        if (*v7 >= a2)
        {
          if (v4 > v5)
          {
            v8 = (v6 + 56 * v4 - 56);
            while (1)
            {
              v9 = *v8;
              v8 -= 7;
              if (v9 < a2)
              {
                break;
              }

              if (--v4 <= v5)
              {
                v4 = v5;
                goto LABEL_12;
              }
            }

            v61 = 0;
            v59 = 0uLL;
            v60 = 0uLL;
            *v58 = 0uLL;
            v10 = *v7;
            v11 = v7[1];
            v12 = v7[2];
            v61 = *(v7 + 6);
            v59 = v11;
            v60 = v12;
            *v58 = v10;
            v13 = 56 * v4 - 56;
            v14 = (v6 + v13);
            v15 = *v14;
            v16 = v14[1];
            v17 = v14[2];
            *(v7 + 6) = *(v14 + 6);
            v7[1] = v16;
            v7[2] = v17;
            *v7 = v15;
            v18 = *(a1 + 8) + v13;
            *v18 = *v58;
            *(v18 + 16) = v59;
            *(v18 + 32) = v60;
            *(v18 + 48) = v61;
            v6 = *(a1 + 8);
          }

LABEL_12:
          if (*(v6 + 56 * v5) >= 2 * a2)
          {
            break;
          }
        }

        if (++v5 >= v4)
        {
          goto LABEL_21;
        }
      }

      v52 = __si_assert_copy_extra(0);
      v33 = v52;
      v34 = "";
      if (v52)
      {
        v34 = v52;
      }

      v35 = "!offset || AnnotatedPositionOffset_t_GET_VALUE(queue->offsets[i]) < offset * 2";
LABEL_58:
      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 50, v35, v34);
      free(v33);
      if (__valid_fs(-1))
      {
        v53 = 2989;
      }

      else
      {
        v53 = 3072;
      }

      *v53 = -559038737;
      abort();
    }

LABEL_21:
    *(a1 + 24) = v4;
    *(a1 + 32) = v4;
    v27 = *(a1 + 40);
    v28 = v27 - v4;
    if (v27 < v4)
    {
      v54 = __si_assert_copy_extra(0);
      v33 = v54;
      v34 = "";
      if (v54)
      {
        v34 = v54;
      }

      v35 = "queue->top <= queue->end";
      goto LABEL_58;
    }

    if (v27 > v4)
    {
      v29 = 56 * v4 + 56;
      v30 = v27 - v4;
      while (--v30)
      {
        v31 = *(*(a1 + 8) + v29);
        v29 += 56;
        if (v31 < a2)
        {
          v32 = __si_assert_copy_extra(0);
          v33 = v32;
          v34 = "";
          if (v32)
          {
            v34 = v32;
          }

          v35 = "current >= offset";
          goto LABEL_58;
        }
      }
    }

    if (v4 >= 1)
    {
      v36 = v4;
      v37 = *(a1 + 8);
      while (1)
      {
        v38 = *v37;
        v37 += 7;
        if (v38 > a2)
        {
          break;
        }

        if (!--v36)
        {
          goto LABEL_33;
        }
      }

      v46 = __si_assert_copy_extra(0);
      v33 = v46;
      v34 = "";
      if (v46)
      {
        v34 = v46;
      }

      v35 = "current <= offset";
      goto LABEL_58;
    }

LABEL_33:
    parallel_qsort_AnnotatedPositionOffset_t(*(a1 + 8) + 56 * v4, v28);
    v39 = *(a1 + 40);
    if (v4 < v39)
    {
      v40 = *(a1 + 8);
      v41 = *(a1 + 32);
      v42 = *(v40 + 56 * v41);
      if (v42 < a2)
      {
        v56 = __si_assert_copy_extra(0);
        v48 = v56;
        v49 = "";
        if (v56)
        {
          v49 = v56;
        }

        v50 = "last >= offset";
      }

      else
      {
        v43 = (v40 + 56 * v41 + 56);
        while (1)
        {
          if (++v41 >= v39)
          {
            goto LABEL_42;
          }

          v44 = *v43;
          if (*v43 < v42)
          {
            break;
          }

          v43 += 7;
          v42 = v44;
          if (v44 < a2)
          {
            v45 = __si_assert_copy_extra(0);
            v33 = v45;
            v34 = "";
            if (v45)
            {
              v34 = v45;
            }

            v35 = "last >= offset";
            goto LABEL_58;
          }
        }

        v47 = __si_assert_copy_extra(0);
        v48 = v47;
        v49 = "";
        if (v47)
        {
          v49 = v47;
        }

        v50 = "current >= last";
      }

LABEL_51:
      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 50, v50, v49);
      free(v48);
      if (__valid_fs(-1))
      {
        v51 = 2989;
      }

      else
      {
        v51 = 3072;
      }

      *v51 = -559038737;
      abort();
    }

LABEL_42:
    if (*(a1 + 24) && **(a1 + 8) >= a2)
    {
      v55 = __si_assert_copy_extra(0);
      v48 = v55;
      v49 = "";
      if (v55)
      {
        v49 = v55;
      }

      v50 = "last < offset";
      goto LABEL_51;
    }

    ++*(a1 + 48);
    *(a1 + 56) = a2;
  }

  else
  {
    *(a1 + 56) = 0;
    ++*(a1 + 48);
    v19 = *(a1 + 24);
    *(a1 + 32) = 0;
    *(a1 + 40) = v19;
    *(a1 + 24) = 0;
    v20 = *(a1 + 8);

    parallel_qsort_AnnotatedPositionOffset_t(v20, v19);
  }
}

uint64_t _big_split_AnnotatedPositionOffset_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v6 = a2 + 1;
  if (a5 >= 3)
  {
    while (v6 < (a5 << 13))
    {
      if (a5-- <= 3)
      {
        a5 = 2;
        return parallel_partition_AnnotatedPositionOffset_t(a1, v6, a3, a4, a5, a6);
      }
    }
  }

  return parallel_partition_AnnotatedPositionOffset_t(a1, v6, a3, a4, a5, a6);
}

void pqinit_ItemIteratorRef(void *a1, uint64_t a2)
{
  a1[1] = a2;
  a1[2] = 1;
  if (a2)
  {
    v3 = malloc_type_zone_malloc(queryZone, 8 * a2 + 16, 0xA4971684uLL);
    if (!v3)
    {
      _log_fault_for_malloc_failure();
    }

    *a1 = v3;
  }

  else
  {
    v3 = a1;
  }

  *v3 = 0;
}

double pq_force_meta(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    if (*(a1 + 24) != 1)
    {
      v3 = __si_assert_copy_extra(0);
      v4 = v3;
      v5 = "";
      if (v3)
      {
        v5 = v3;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PQueue.h", 250, "pqcount(pqueue) == 0", v5);
      free(v4);
      if (__valid_fs(-1))
      {
        v6 = 2989;
      }

      else
      {
        v6 = 3072;
      }

      *v6 = -559038737;
      abort();
    }

    free(*(a1 + 8));
    *a1 = 1;
    result = 0.0;
    *(a1 + 16) = xmmword_1C2BF7A50;
    *(a1 + 8) = 0;
  }

  return result;
}

__n128 pqpush_with_meta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*a1 & 1) == 0)
  {
    v21 = __si_assert_copy_extra(0);
    v22 = v21;
    v23 = "";
    if (v21)
    {
      v23 = v21;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PQueue.h", 265, "pqueue->has_meta", v23);
    free(v22);
    if (__valid_fs(-1))
    {
      v24 = 2989;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (!a2)
  {
    v25 = __si_assert_copy_extra(0);
    v26 = v25;
    v27 = "";
    if (v25)
    {
      v27 = v25;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PQueue.h", 266, "owm.offset", v27);
    free(v26);
    if (__valid_fs(-1))
    {
      v24 = 2986;
      goto LABEL_25;
    }

LABEL_24:
    v24 = 3072;
LABEL_25:
    *v24 = -559038737;
    abort();
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = v7;
  if ((v7 + 2) >= v6)
  {
    v9 = 2 * v6;
    v10 = v6 < 4;
    v11 = 4;
    if (!v10)
    {
      v11 = v9;
    }

    *(a1 + 16) = v11;
    v12 = *(a1 + 8);
    v13 = 16 * v11;
    if (v12)
    {
      v14 = malloc_type_zone_realloc(queryZone, v12, v13 + 32, 0xA1A7ADA0uLL);
    }

    else
    {
      v14 = malloc_type_zone_malloc(queryZone, v13 + 32, 0x566E289CuLL);
    }

    v16 = v14;
    if (!v14)
    {
      _log_fault_for_malloc_failure();
    }

    *(a1 + 8) = v16;
    *v16 = 0;
    v16[1] = 0;
    v8 = *(a1 + 24);
  }

  *(a1 + 24) = v8 + 1;
  v17 = (*(a1 + 8) + 16 * v7);
  *v17 = a2;
  v17[1] = a3;
  if (v7 >= 2)
  {
    do
    {
      v18 = *(a1 + 8);
      v19 = (v18 + 16 * v7);
      v20 = (v18 + 16 * (v7 >> 1));
      if ((v19->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL) > (v20->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL))
      {
        break;
      }

      result = *v19;
      *v19 = *v20;
      *(*(a1 + 8) + 16 * (v7 >> 1)) = result;
      v10 = v7 > 3;
      v7 >>= 1;
    }

    while (v10);
  }

  return result;
}

void oqpush_with_meta(uint64_t a1, uint64_t a2, size_t size)
{
  if ((*a1 & 1) == 0)
  {
    v19 = __si_assert_copy_extra(0);
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 338, "oqueue->has_meta", v21);
    free(v20);
    if (__valid_fs(-1))
    {
      v22 = 2989;
    }

    else
    {
      v22 = 3072;
    }

    *v22 = -559038737;
    abort();
  }

  if (*(a1 + 56))
  {
    if (*(a1 + 64) < (a2 & 0x3FFFFFFFFFFFFFFFuLL))
    {
      v23 = __si_assert_copy_extra(0);
      v8 = v23;
      v9 = "";
      if (v23)
      {
        v9 = v23;
      }

      v10 = "!queue->split || queue->splitPoint >= offset_with_meta_t_GET_VALUE(value)";
LABEL_25:
      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 250, v10, v9);
      free(v8);
      if (__valid_fs(-1))
      {
        v24 = 2989;
      }

      else
      {
        v24 = 3072;
      }

      *v24 = -559038737;
      abort();
    }

    v6 = *(a1 + 32);
    if (v6 >= *(a1 + 24))
    {
      v7 = __si_assert_copy_extra(0);
      v8 = v7;
      v9 = "";
      if (v7)
      {
        v9 = v7;
      }

      v10 = "!queue->split";
      goto LABEL_25;
    }
  }

  else
  {
    v11 = *(a1 + 24);
    v6 = *(a1 + 32);
    if (v6 >= v11)
    {
      v12 = 2 * v11;
      if (!v11)
      {
        v12 = 4;
      }

      *(a1 + 24) = v12;
      v13 = *(a1 + 16);
      v14 = 16 * v12;
      if (v13)
      {
        v15 = malloc_type_zone_realloc(queryZone, v13, v14, 0xA1A7ADA0uLL);
      }

      else
      {
        v15 = malloc_type_zone_malloc(queryZone, v14, 0x566E289CuLL);
      }

      v16 = v15;
      if (!v15)
      {
        _log_fault_for_malloc_failure();
      }

      *(a1 + 16) = v16;
      v6 = *(a1 + 32);
    }
  }

  v17 = *(a1 + 16);
  *(a1 + 32) = v6 + 1;
  v18 = (v17 + 16 * v6);
  *v18 = a2;
  v18[1] = size;
}

void oqpush_13659(_BYTE *a1, uint64_t a2, size_t a3)
{
  if (*a1 == 1)
  {
    v4 = __si_assert_copy_extra(0);
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 332, "!oqueue->has_meta", v6);
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

  v3 = a1 + 8;

  oqpush_offset_t(v3, a2, a3);
}

uint64_t checkAgainstUpdatesBulkReversed(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a2)
  {
    v11 = __si_assert_copy_extra(0);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 210, "range.location > 0", v13);
    free(v12);
    if (__valid_fs(-1))
    {
      v14 = 2989;
    }

    else
    {
      v14 = 3072;
    }

    *v14 = -559038737;
    abort();
  }

  v4 = a3;
  if (a3)
  {
    v6 = result;
    v7 = 0;
    v8 = a2 + a3 - 1;
    do
    {
      v9 = v7 >> 3;
      v10 = 1 << (v7 & 7);
      if ((v10 & *(a4 + v9)) != 0)
      {
        result = checkAgainstChangeHolder(v6 + 128, *(v6 + 112) + v8);
        if (result)
        {
          *(a4 + v9) &= ~v10;
        }
      }

      ++v7;
      --v8;
    }

    while (v4 != v7);
  }

  return result;
}

uint64_t PayloadIterator__Positions_UpdateSet(uint64_t result, unsigned int *a2, size_t size, uint64_t a4, uint64_t a5, unsigned int a6, int a7, int a8, float a9, int a10)
{
  v17 = result;
  v18 = result + 224;
  v19 = *(result + 224 + 8 * a7);
  if (!v19)
  {
    if (*MEMORY[0x1E69E9AC8] <= 0x1FuLL)
    {
      ++sTotal_13683;
    }

    result = malloc_type_zone_calloc(queryZone, 1uLL, 0x20uLL, 0x5BAF1CEAuLL);
    if (!result)
    {
      _log_fault_for_malloc_failure();
      *(v18 + 8 * a7) = 0;
      v44 = __si_assert_copy_extra(0);
      v45 = v44;
      v46 = "";
      if (v44)
      {
        v46 = v44;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 962, "updateSetInfo", v46);
      free(v45);
      if (__valid_fs(-1))
      {
        v47 = 2989;
      }

      else
      {
        v47 = 3072;
      }

      *v47 = -559038737;
      abort();
    }

    v19 = result;
    *(v18 + 8 * a7) = result;
  }

  v19[3] = a5;
  v21 = a4 + 32 * a6;
  if (*(v21 + 16) || *v21 || *(v21 + 4))
  {
    v22 = v19[1];
    if (*v19 >= v22)
    {
      v23 = 2 * v22;
      v39 = v22 == 0;
      v24 = 4;
      if (!v39)
      {
        v24 = v23;
      }

      v19[1] = v24;
      v25 = v19[2];
      v26 = 40 * v24;
      if (v25)
      {
        v27 = malloc_type_zone_realloc(queryZone, v25, v26, 0xA1A7ADA0uLL);
      }

      else
      {
        v27 = malloc_type_zone_malloc(queryZone, v26, 0x566E289CuLL);
      }

      v28 = v27;
      if (!v27)
      {
        _log_fault_for_malloc_failure();
      }

      v19[2] = v28;
    }

    if (!a5 && *(v21 + 4))
    {
      v40 = __si_assert_copy_extra(0);
      v41 = v40;
      v42 = "";
      if (v40)
      {
        v42 = v40;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 974, "infoBase", v42);
      free(v41);
      if (__valid_fs(-1))
      {
        v43 = 2989;
      }

      else
      {
        v43 = 3072;
      }

      *v43 = -559038737;
      abort();
    }

    v29 = (v19[2] + 40 * *v19);
    v30 = *(v21 + 16);
    *v29 = *v21;
    v29[1] = v30;
    result = CIIndexSetCreateWithRange(*(v17[11] + 20), *(v17[11] + 24), 1);
    v32 = *v19;
    *(v19[2] + 40 * *v19 + 32) = result;
    if (a2)
    {
      do
      {
        v33 = v17[11];
        v34 = a2[2];
        v48 = -1;
        _CIIndexSetAddIndex(v33, v34, 0, &v48, v31);
        v35 = *(v19[2] + 40 * *v19 + 32);
        v36 = a2[2];
        v49 = -1;
        result = _CIIndexSetAddIndex(v35, v36, 0, &v49, v37);
        if (a8)
        {
          result = distanceHolderSetMinDistance(v17[9], v17[13] + a2[2], a10, a9);
        }

        v38 = *a2;
        a2 = (size + 12 * (*a2 >> 1));
        v39 = v38 < 2 || size == 0;
      }

      while (!v39);
      v32 = *v19;
    }

    *v19 = v32 + 1;
  }

  return result;
}

BOOL PayloadIterate__Positions(unsigned __int8 *a1, char **a2)
{
  v182 = *MEMORY[0x1E69E9840];
  v4 = a2[6];
  v5 = *a1;
  if (v5 == 1)
  {
    v7 = *(a1 + 4);
    v6 = *(a1 + 5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = *a2;
  if ((a1[81] & 1) == 0)
  {
    if (*(v4 + 3) >> 1 >= *(v4 + 4))
    {
      v9 = *(v4 + 3) >> 1;
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 3) = v9;
    a1[81] = 1;
    if (v9)
    {
      v10 = a1 + 120;
    }

    else
    {
      if (a1[80])
      {
        *(a1 + 23) = 0;
        ++*(a1 + 44);
        v11 = *(a1 + 19);
        *(a1 + 20) = 0;
        *(a1 + 21) = v11;
        *(a1 + 19) = 0;
        goto LABEL_14;
      }

      v10 = a1 + 120;
      v9 = 0;
    }

    oqsplit_PositionOffset_t(v10, v9);
  }

LABEL_14:
  v12 = *(a1 + 1);
  v13 = v12 & 0x3FFFFFFFFFFFFFFFLL;
  if ((v12 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    if (!*(a1 + 12))
    {
      v137 = __si_assert_copy_extra(0);
LABEL_236:
      __message_assert("%s:%u: failed assertion '%s' %s ");
      goto LABEL_237;
    }

    v14 = a2[2];
    v15 = a2[7];
    v16 = &v14[v15];
    v17 = v13 >= v14 && v16 > v13;
    if (!v17 || v13 + 30 > v16)
    {
      a2[2] = (v12 & 0x3FFFFFFFFFFFF000);
      v19 = fd_pread(*(v4 + 561), v8, v15, v12 & 0x3FFFFFFFFFFFF000);
      *(a2 + 16) = 0;
      if (v19 == -1)
      {
        return 0;
      }

      v14 = a2[2];
    }

    else
    {
      ++*(a2 + 16);
    }

    v21 = 0;
    v22 = 0;
    v23 = v13 - v14;
    do
    {
      v24 = v23++;
      v22 |= (v8[v24] & 0x7F) << v21;
      if ((v8[v24] & 0x80) == 0)
      {
        break;
      }

      v25 = v21 == 63;
      v21 += 7;
    }

    while (!v25);
    v179[0] = v23;
    if ((v22 & 1) == 0)
    {
      memset(v178, 0, 12);
      unpackPosting(v8, v179, v178);
      v27 = *(v178 + 4);
      if (*(v178 + 4))
      {
        v28 = *(a1 + 11);
        *buf = -1;
        if (_CIIndexSetAddIndex(v28, *(v178 + 4), 0, buf, v26))
        {
          if (v27 <= *(a2 + 10))
          {
            if (v27 < *(a2 + 11))
            {
              *(a2 + 11) = v27;
            }
          }

          else
          {
            *(a2 + 10) = v27;
          }
        }

        if (dword_1EBF46AF4 >= 5)
        {
          v151 = *__error();
          v152 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
          {
            v153 = *(a1 + 12);
            *buf = 134218240;
            *&buf[4] = v27;
            *&buf[12] = 2048;
            *&buf[14] = v153;
            _os_log_impl(&dword_1C278D000, v152, OS_LOG_TYPE_DEFAULT, "Adding %llu to %p", buf, 0x16u);
          }

          *__error() = v151;
        }

        v36 = *(a1 + 12);
        *buf = -1;
        _CIIndexSetAddIndex(v36, v27, 0, buf, v29);
      }

      v20 = *(a1 + 1);
      if ((v20 & 0x3FFFFFFFFFFFFFFFLL) == v13)
      {
        *a1 = 0;
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        goto LABEL_63;
      }

LABEL_235:
      v137 = __si_assert_copy_extra(0);
      goto LABEL_236;
    }

    v30 = v24 + 2;
    v31 = v8[v23];
    v32 = v8[v23];
    if (v31 < 0)
    {
      v33 = v24 + 3;
      v34 = v8[v30];
      v35 = v8[v30];
      if (v34 < 0)
      {
        v37 = v24 + 4;
        v38 = v8[v33];
        v39 = v38;
        if (v38 < 0)
        {
          v33 = v24 + 5;
          v41 = v8[v37];
          v42 = v8[v37];
          if (v41 < 0)
          {
            v44 = v8[v33];
            if (v44 < 0)
            {
              v137 = __si_assert_copy_extra(0);
              __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
LABEL_237:
              free(v137);
              if (__valid_fs(-1))
              {
                v143 = 2989;
              }

              else
              {
                v143 = 3072;
              }

              *v143 = -559038737;
              abort();
            }

            v33 = v24 + 6;
            v43 = ((v42 & 0x7F) << 21) | (v44 << 28) | ((v39 & 0x7F) << 14);
          }

          else
          {
            v43 = ((v39 & 0x7F) << 14) | (v42 << 21);
          }

          v40 = v43 & 0xFFFFC000 | ((v35 & 0x7F) << 7) | v32 & 0x7F;
        }

        else
        {
          v40 = ((v35 & 0x7F) << 7) | (v38 << 14) | v32 & 0x7F;
          v33 = v37;
        }

        v32 = v40;
      }

      else
      {
        v32 = v32 & 0x7F | (v35 << 7);
      }
    }

    else
    {
      v33 = v24 + 2;
    }

    v179[0] = v33;
    v45 = v32;
    v46 = *(a2 + 14);
    v177 = v33 + v32;
    v178[0] = 0;
    v176 = v46;
    if (v177 <= v46)
    {
      v172 = 0;
      v173 = 0;
      v47 = &v8[v33];
LABEL_56:
      *buf = a1;
      *&buf[8] = a2;
      *&buf[16] = *(a1 + 12);
      v181 = -1;
      v174 = v7;
      v175 = v5;
      v48 = v5 | (v7 << 32);
      v49 = v6;
      v50 = v6;
      do
      {
        if (v178[0] >= v45)
        {
          break;
        }

        v6 = v6 & 0xFFFFFFFF00000000 | v50;
      }

      while ((unpackPostingChunk(v47, v178, v45, *(a2 + 17), v48, v6, PayloadProcessDocIDRangeBitsReversed__Positions, buf) & 1) != 0);
      if (v177 > v176)
      {
        free(v47);
        CICleanUpClearItem(v173, v172);
        CICleanUpPop(v173);
      }

      v20 = *(a1 + 1);
      v5 = v175;
      if ((v20 & 0x3FFFFFFFFFFFFFFFLL) == v13)
      {
        LODWORD(v6) = v49;
        *a1 = 0;
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        LODWORD(v7) = v174;
LABEL_63:
        if (v22 >= 2)
        {
          v52 = v5;
          v53 = v22 >> 1;
          if (a1[80])
          {
            v144 = __si_assert_copy_extra(*(a2[6] + 561));
            v145 = v144;
            v146 = "";
            if (v144)
            {
              v146 = v144;
            }

            __message_assert("%s:%u: failed assertion '%s' %s nxtLink: %lld. compact", "PayloadIterator.c", 1291, "iter->compact == false", v146, v22 >> 1);
            free(v145);
            if (__valid_fsp(*(a2[6] + 561)))
            {
              goto LABEL_226;
            }

            goto LABEL_244;
          }

          v54 = *(a1 + 12);
          if (!v54)
          {
            v147 = __si_assert_copy_extra(*(a2[6] + 561));
            v148 = v147;
            v149 = "";
            if (v147)
            {
              v149 = v147;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 1292, "iter->ptr_documentsContainingTerm", v149);
            free(v148);
            if (__valid_fsp(*(a2[6] + 561)))
            {
              v150 = 2989;
            }

            else
            {
              v150 = 3072;
            }

            *v150 = -559038737;
            abort();
          }

          v55 = ((v22 >> 1) & 0x3FFFFFFFFFFFFFFFLL);
          if (v55 != v13)
          {
            if (v55 <= v13)
            {
              v76 = v6;
              v77 = *(a1 + 3);
              v78 = a2[6];
              if (v77 >= *(v78 + 4))
              {
                v79 = 2 * v77;
              }

              else
              {
                v79 = *(v78 + 4);
              }

              v81 = v55 > v79 || v13 <= v79;
              if (v55 >= v77 && v81)
              {
                v158 = __si_assert_copy_extra(*(v78 + 561));
                v159 = v158;
                v160 = "";
                if (v158)
                {
                  v160 = v158;
                }

                __message_assert("%s:%u: failed assertion '%s' %s Unexpected value for nextLink: %lld. next=%lld barrier=%lld split=%lld", "PayloadIterator.c", 1320, "(OFFSET_GET_VALUE(nxtLink) <= barrier && next>barrier)|| (OFFSET_GET_VALUE(nxtLink)<iter->split)", v160, v53, v13, v79, *(a1 + 3));
                free(v159);
                if (__valid_fsp(*(a2[6] + 561)))
                {
                  v161 = 2989;
                }

                else
                {
                  v161 = 3072;
                }

                *v161 = -559038737;
                abort();
              }

              if (v52)
              {
                if ((a1[120] & 1) == 0)
                {
                  goto LABEL_235;
                }

                v82 = v76;
                if (*(a1 + 44))
                {
                  if (*(a1 + 23) < v53)
                  {
                    v168 = __si_assert_copy_extra(0);
                    v85 = v168;
                    v169 = "";
                    if (v168)
                    {
                      v169 = v168;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 509, "!queue->split || queue->splitPoint >= PositionOffsetWithMeta_t_GET_VALUE(value)", v169);
                    goto LABEL_225;
                  }

                  v83 = *(a1 + 19);
                  if (v83 >= *(a1 + 18))
                  {
                    goto LABEL_235;
                  }
                }

                else
                {
                  v102 = *(a1 + 18);
                  v83 = *(a1 + 19);
                  if (v83 >= v102)
                  {
                    v103 = 2 * v102;
                    if (!v102)
                    {
                      v103 = 4;
                    }

                    *(a1 + 18) = v103;
                    v104 = *(a1 + 17);
                    v105 = 24 * v103;
                    if (v104)
                    {
                      v106 = malloc_type_zone_realloc(queryZone, v104, v105, 0xA1A7ADA0uLL);
                    }

                    else
                    {
                      v106 = malloc_type_zone_malloc(queryZone, v105, 0x566E289CuLL);
                    }

                    v128 = v106;
                    if (!v106)
                    {
                      _log_fault_for_malloc_failure();
                    }

                    *(a1 + 17) = v128;
                    v83 = *(a1 + 19);
                  }
                }

                v129 = *(a1 + 17);
                *(a1 + 19) = v83 + 1;
                v130 = v129 + 24 * v83;
                *v130 = v53;
                *(v130 + 8) = v54;
                *(v130 + 16) = v7;
                *(v130 + 20) = v82;
              }

              else
              {
                if (a1[120] == 1)
                {
                  goto LABEL_235;
                }

                if (*(a1 + 44))
                {
                  if (*(a1 + 23) < v53)
                  {
                    v170 = __si_assert_copy_extra(0);
                    v85 = v170;
                    v171 = "";
                    if (v170)
                    {
                      v171 = v170;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 500, "!queue->split || queue->splitPoint >= JustPositionOffset_t_GET_VALUE(value)", v171);
                    goto LABEL_225;
                  }

                  v95 = *(a1 + 19);
                  if (v95 >= *(a1 + 18))
                  {
                    goto LABEL_235;
                  }
                }

                else
                {
                  v107 = *(a1 + 18);
                  v95 = *(a1 + 19);
                  if (v95 >= v107)
                  {
                    v108 = 2 * v107;
                    if (!v107)
                    {
                      v108 = 4;
                    }

                    *(a1 + 18) = v108;
                    v109 = *(a1 + 17);
                    v110 = 16 * v108;
                    if (v109)
                    {
                      v111 = malloc_type_zone_realloc(queryZone, v109, v110, 0xA1A7ADA0uLL);
                    }

                    else
                    {
                      v111 = malloc_type_zone_malloc(queryZone, v110, 0x566E289CuLL);
                    }

                    v131 = v111;
                    if (!v111)
                    {
                      _log_fault_for_malloc_failure();
                    }

                    *(a1 + 17) = v131;
                    v95 = *(a1 + 19);
                  }
                }

                v132 = *(a1 + 17);
                *(a1 + 19) = v95 + 1;
                v133 = (v132 + 16 * v95);
                *v133 = v53;
                v133[1] = v54;
              }

              if (a2[4] > v53)
              {
                v134 = *(a1 + 3);
                if (v55 < v134 && v55 > v134 >> 1)
                {
                  a2[4] = v55;
                }
              }
            }

            else
            {
              if (v52)
              {
                if ((a1[192] & 1) == 0)
                {
                  v162 = __si_assert_copy_extra(0);
                  v85 = v162;
                  v163 = "";
                  if (v162)
                  {
                    v163 = v162;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s ", "PQueue.h", 449, "pqueue->has_meta", v163);
                  goto LABEL_225;
                }

                v68 = *(a1 + 26);
                v69 = *(a1 + 27);
                v70 = v69;
                if ((v69 + 2) >= v68)
                {
                  v71 = 2 * v68;
                  v17 = v68 < 4;
                  v72 = 4;
                  if (!v17)
                  {
                    v72 = v71;
                  }

                  *(a1 + 26) = v72;
                  v73 = *(a1 + 25);
                  v74 = 24 * v72 + 48;
                  if (v73)
                  {
                    v75 = malloc_type_zone_realloc(queryZone, v73, v74, 0xA1A7ADA0uLL);
                  }

                  else
                  {
                    v75 = malloc_type_zone_malloc(queryZone, v74, 0x566E289CuLL);
                  }

                  v112 = v75;
                  if (!v75)
                  {
                    _log_fault_for_malloc_failure();
                  }

                  *(a1 + 25) = v112;
                  *v112 = 0;
                  v112[1] = 0;
                  v112[2] = 0;
                  v70 = *(a1 + 27);
                }

                *(a1 + 27) = v70 + 1;
                v113 = (*(a1 + 25) + 24 * v69);
                *v113 = v53;
                v113[1] = v54;
                if (v69 >= 2)
                {
                  do
                  {
                    v114 = *(a1 + 25);
                    v115 = (v114 + 24 * v69);
                    v116 = (v114 + 24 * (v69 >> 1));
                    if (*v115 > *v116)
                    {
                      break;
                    }

                    v117 = v115[2];
                    v118 = *v115;
                    v119 = v116[2];
                    *v115 = *v116;
                    v115[2] = v119;
                    v120 = *(a1 + 25) + 24 * (v69 >> 1);
                    *v120 = v118;
                    *(v120 + 16) = v117;
                    v17 = v69 > 3;
                    v69 >>= 1;
                  }

                  while (v17);
                }
              }

              else
              {
                if (a1[192] == 1)
                {
                  v164 = __si_assert_copy_extra(0);
                  v85 = v164;
                  v165 = "";
                  if (v164)
                  {
                    v165 = v164;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s ", "PQueue.h", 443, "!pqueue->has_meta", v165);
                  goto LABEL_225;
                }

                v87 = *(a1 + 26);
                v88 = *(a1 + 27);
                v89 = v88;
                if ((v88 + 2) >= v87)
                {
                  v90 = 2 * v87;
                  v17 = v87 < 4;
                  v91 = 4;
                  if (!v17)
                  {
                    v91 = v90;
                  }

                  *(a1 + 26) = v91;
                  v92 = *(a1 + 25);
                  v93 = 16 * v91;
                  if (v92)
                  {
                    v94 = malloc_type_zone_realloc(queryZone, v92, v93 + 32, 0xA1A7ADA0uLL);
                  }

                  else
                  {
                    v94 = malloc_type_zone_malloc(queryZone, v93 + 32, 0x566E289CuLL);
                  }

                  v121 = v94;
                  if (!v94)
                  {
                    _log_fault_for_malloc_failure();
                  }

                  *(a1 + 25) = v121;
                  *v121 = 0;
                  v121[1] = 0;
                  v89 = *(a1 + 27);
                }

                *(a1 + 27) = v89 + 1;
                v122 = (*(a1 + 25) + 16 * v88);
                *v122 = v53;
                v122[1] = v54;
                if (v88 >= 2)
                {
                  do
                  {
                    v123 = *(a1 + 25);
                    v124 = (v123 + 16 * v88);
                    v125 = (v123 + 16 * (v88 >> 1));
                    if (*v124 > *v125)
                    {
                      break;
                    }

                    v126 = *v124;
                    *v124 = *v125;
                    *(*(a1 + 25) + 16 * (v88 >> 1)) = v126;
                    v17 = v88 > 3;
                    v88 >>= 1;
                  }

                  while (v17);
                }
              }

              v127 = a2[3];
              if (v127 >= v53)
              {
                v127 = v53;
              }

              a2[3] = v127;
            }

            goto LABEL_70;
          }

          v51 = *(a1 + 12);
        }

        else
        {
          v51 = *(a1 + 12);
        }

        CFRelease(v51);
LABEL_70:
        *(a1 + 12) = 0;
        v12 = *(a1 + 1);
        goto LABEL_71;
      }

      goto LABEL_235;
    }

    v47 = malloc_type_malloc(v32 + 4, 0xC01365D8uLL);
    if (v45 >> 28)
    {
      v141 = 5;
    }

    else if (v45 >> 21)
    {
      v141 = 4;
    }

    else
    {
      v141 = 3;
      v142 = 1;
      if (v45 >= 0x80)
      {
        v142 = 2;
      }

      if (!(v45 >> 14))
      {
        v141 = v142;
      }
    }

    v154 = 5;
    v155 = 4;
    v156 = 3;
    v157 = 1;
    if (v22 >= 0x80)
    {
      v157 = 2;
    }

    if (!(v22 >> 14))
    {
      v156 = v157;
    }

    if (!(v22 >> 21))
    {
      v155 = v156;
    }

    if (!(v22 >> 28))
    {
      v154 = v155;
    }

    if (fd_pread(*(v4 + 561), v47, v45, v141 + v13 + v154) != -1)
    {
      v173 = CICleanUpThreadLoc();
      v172 = CICleanUpPush(v173, MEMORY[0x1E69E9B38], v47);
      goto LABEL_56;
    }

    free(v47);
    return 0;
  }

  v20 = 0xBFFFFFFFFFFFFFFFLL;
LABEL_71:
  if ((v12 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v56 = v20 & 0x3FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v57 = *(a1 + 20);
    v58 = *(a1 + 21);
    if (*(a1 + 27) != 1)
    {
      if (v58 == v57)
      {
        memset(buf, 0, sizeof(buf));
        pqpop_PositionOffset_t(buf, a1 + 24, a1);
        if (*a1 == 1)
        {
          *(a1 + 2) = *&buf[16];
        }

        v60 = *buf;
        v59 = *&buf[8];
        *(a1 + 1) = *buf;
        *(a1 + 12) = v59;
        v62 = v60 & 0x3FFFFFFFFFFFFFFFLL;
        if ((v60 & 0x3FFFFFFFFFFFFFFFLL) != 0 && !v59)
        {
          goto LABEL_235;
        }

        if (v62 == v56)
        {
          goto LABEL_112;
        }

        if (v20 == 0xBFFFFFFFFFFFFFFFLL || v62 >= v56)
        {
          goto LABEL_161;
        }

        v84 = __si_assert_copy_extra(0);
        v85 = v84;
        v86 = "";
        if (v84)
        {
          v86 = v84;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 1462, "((((iter->ptr.has_meta?iter->ptr.with_meta.offset:iter->ptr.just_offset) & 0x3FFFFFFFFFFFFFFF))) >= (((oldPtr.has_meta?oldPtr.with_meta.offset:oldPtr.just_offset) & 0x3FFFFFFFFFFFFFFF)) || (oldPtr.has_meta?oldPtr.with_meta.offset:oldPtr.just_offset)==offset_MAX_VALUE", v86);
        goto LABEL_225;
      }

      v63 = *(a1 + 25);
      if (v63)
      {
        if (a1[192])
        {
          v64 = 24;
        }

        else
        {
          v64 = 16;
        }

        v63 = *(v63 + v64);
      }

      if (a1[120] == 1)
      {
        if (v57 < v58)
        {
          v65 = (*(a1 + 17) + 24 * v57);
LABEL_98:
          v66 = *v65;
LABEL_100:
          if (v63 < v66)
          {
            memset(buf, 0, sizeof(buf));
            pqpop_PositionOffset_t(buf, a1 + 24, a1);
            if (*a1 == 1)
            {
              *(a1 + 2) = *&buf[16];
            }

            v60 = *buf;
            v59 = *&buf[8];
            *(a1 + 1) = *buf;
            *(a1 + 12) = v59;
            if ((v60 & 0x3FFFFFFFFFFFFFFFLL) != 0 && !v59)
            {
              goto LABEL_235;
            }

            if (((v60 ^ v20) & 0x3FFFFFFFFFFFFFFFLL) != 0)
            {
              goto LABEL_161;
            }

            goto LABEL_112;
          }

          memset(buf, 0, sizeof(buf));
          oqpop_PositionOffset_t(buf, a1 + 15, a1);
          if (*a1 == 1)
          {
            *(a1 + 2) = *&buf[16];
          }

          v60 = *buf;
          v59 = *&buf[8];
          *(a1 + 1) = *buf;
          *(a1 + 12) = v59;
          v67 = v60 & 0x3FFFFFFFFFFFFFFFLL;
          if ((v60 & 0x3FFFFFFFFFFFFFFFLL) != 0 && !v59)
          {
            v138 = __si_assert_copy_extra(0);
            v85 = v138;
            v139 = "";
            if (v138)
            {
              v139 = v138;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 1397, "iter->ptr_documentsContainingTerm", v139);
          }

          else
          {
            if (v67 == v56)
            {
              goto LABEL_112;
            }

            if (v67 >= v56)
            {
              goto LABEL_161;
            }

            v166 = __si_assert_copy_extra(0);
            v85 = v166;
            v167 = "";
            if (v166)
            {
              v167 = v166;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 1407, "((((iter->ptr.has_meta?iter->ptr.with_meta.offset:iter->ptr.just_offset) & 0x3FFFFFFFFFFFFFFF))) >= (((oldPtr.has_meta?oldPtr.with_meta.offset:oldPtr.just_offset) & 0x3FFFFFFFFFFFFFFF)) || (((oldPtr.has_meta?oldPtr.with_meta.offset:oldPtr.just_offset) & 0x3FFFFFFFFFFFFFFF))==offset_MAX_VALUE", v167);
          }

LABEL_225:
          free(v85);
          if (__valid_fs(-1))
          {
LABEL_226:
            v140 = 2989;
            goto LABEL_245;
          }

LABEL_244:
          v140 = 3072;
LABEL_245:
          *v140 = -559038737;
          abort();
        }
      }

      else if (v57 < v58)
      {
        v65 = (*(a1 + 17) + 16 * v57);
        goto LABEL_98;
      }

      v66 = 0;
      goto LABEL_100;
    }

    if (v58 == v57)
    {
      v60 = *(a1 + 1);
      goto LABEL_161;
    }

    memset(buf, 0, sizeof(buf));
    oqpop_PositionOffset_t(buf, a1 + 15, a1);
    if (*a1 == 1)
    {
      *(a1 + 2) = *&buf[16];
    }

    v60 = *buf;
    v59 = *&buf[8];
    *(a1 + 1) = *buf;
    *(a1 + 12) = v59;
    v61 = v60 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v60 & 0x3FFFFFFFFFFFFFFFLL) != 0 && !v59)
    {
      v135 = __si_assert_copy_extra(0);
      v85 = v135;
      v136 = "";
      if (v135)
      {
        v136 = v135;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 1424, "iter->ptr_documentsContainingTerm", v136);
      goto LABEL_225;
    }

    if (v61 != v56)
    {
      break;
    }

LABEL_112:
    if (v59)
    {
      instr_release(v59);
      *(a1 + 12) = 0;
    }
  }

  if (v20 != 0xBFFFFFFFFFFFFFFFLL && v61 < v56)
  {
    goto LABEL_235;
  }

LABEL_161:
  if ((v60 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  if (!*(a1 + 19))
  {
    return 0;
  }

  v97 = *(a1 + 3);
  while (1)
  {
    v98 = v97 >> 1;
    if (v98 >= *(a2[6] + 4))
    {
      v99 = v98;
    }

    else
    {
      v99 = 0;
    }

    *(a1 + 3) = v99;
    oqsplit_PositionOffset_t((a1 + 120), v99);
    memset(buf, 0, sizeof(buf));
    oqpop_PositionOffset_t(buf, a1 + 15, a1);
    if (*a1 == 1)
    {
      *(a1 + 2) = *&buf[16];
    }

    v100 = *buf;
    v101 = *&buf[8];
    *(a1 + 1) = *buf;
    *(a1 + 12) = v101;
    v100 &= 0x3FFFFFFFFFFFFFFFuLL;
    result = v100 != 0;
    if (v100)
    {
      break;
    }

    v97 = *(a1 + 3);
    if (!v97)
    {
      return 0;
    }
  }

  return result;
}

void oqsplit_PositionOffset_t(uint64_t a1, unint64_t a2)
{
  v85 = *MEMORY[0x1E69E9840];
  if (*a1 != 1)
  {
    if (!a2)
    {
      *(a1 + 64) = 0;
      ++*(a1 + 56);
      v24 = *(a1 + 32);
      *(a1 + 40) = 0;
      *(a1 + 48) = v24;
      *(a1 + 32) = 0;
      v25 = *(a1 + 16);

      parallel_qsort_JustPositionOffset_t(v25, v24);
      return;
    }

    v15 = *(a1 + 32);
    *(a1 + 48) = v15;
    if (v15 >= 100000)
    {
      v54 = v15 - 1;
      v55 = *(a1 + 16);
      v56 = qos_class_self();
      global_queue = dispatch_get_global_queue(v56, 0);
      v59 = thread_count;
      if (!thread_count)
      {
        *v83 = 0x1900000006;
        v82 = 4;
        sysctl(v83, 2u, &thread_count, &v82, 0, 0);
        v59 = thread_count;
      }

      v15 = _big_split_JustPositionOffset_t(v55, v54, a2, global_queue, v59, v58);
    }

    else if (v15 >= 1)
    {
      v16 = 0;
      v17 = *(a1 + 16);
      while (1)
      {
        v18 = (v17 + 16 * v16);
        if (*v18 >= a2)
        {
          if (v15 > v16)
          {
            v19 = (v17 + 16 * v15 - 16);
            while (1)
            {
              v20 = *v19;
              v19 -= 2;
              if (v20 < a2)
              {
                break;
              }

              if (--v15 <= v16)
              {
                v15 = v16;
                goto LABEL_27;
              }
            }

            memset(v83, 0, sizeof(v83));
            *v83 = *v18;
            v21 = 16 * v15 - 16;
            *v18 = *(v17 + v21);
            *(*(a1 + 16) + v21) = *v83;
            v17 = *(a1 + 16);
          }

LABEL_27:
          if (*(v17 + 16 * v16) >= 2 * a2)
          {
            break;
          }
        }

        if (++v16 >= v15)
        {
          goto LABEL_68;
        }
      }

      v65 = __si_assert_copy_extra_332();
      v38 = v65;
      v66 = "";
      if (v65)
      {
        v66 = v65;
      }

      v67 = "!offset || JustPositionOffset_t_GET_VALUE(queue->offsets[i]) < offset * 2";
      goto LABEL_117;
    }

LABEL_68:
    *(a1 + 32) = v15;
    *(a1 + 40) = v15;
    v60 = *(a1 + 48);
    v61 = v60 - v15;
    if (v60 < v15)
    {
      v65 = __si_assert_copy_extra_332();
      v38 = v65;
      v66 = "";
      if (v65)
      {
        v66 = v65;
      }

      v67 = "queue->top <= queue->end";
    }

    else
    {
      if (v60 > v15)
      {
        v62 = 16 * v15 + 16;
        v63 = v60 - v15;
        while (--v63)
        {
          v64 = *(*(a1 + 16) + v62);
          v62 += 16;
          if (v64 < a2)
          {
            v65 = __si_assert_copy_extra_332();
            v38 = v65;
            v66 = "";
            if (v65)
            {
              v66 = v65;
            }

            v67 = "current >= offset";
            goto LABEL_117;
          }
        }
      }

      if (v15 < 1)
      {
LABEL_80:
        parallel_qsort_JustPositionOffset_t(*(a1 + 16) + 16 * v15, v61);
        v71 = *(a1 + 48);
        if (v15 >= v71)
        {
LABEL_89:
          if (!*(a1 + 32) || **(a1 + 16) < a2)
          {
LABEL_91:
            ++*(a1 + 56);
            *(a1 + 64) = a2;
            return;
          }

          v77 = __si_assert_copy_extra_332();
          v51 = v77;
          v78 = "";
          if (v77)
          {
            v78 = v77;
          }

          v79 = "last < offset";
        }

        else
        {
          v72 = *(a1 + 16);
          v73 = *(a1 + 40);
          v74 = *(v72 + 16 * v73);
          if (v74 < a2)
          {
            v77 = __si_assert_copy_extra_332();
            v51 = v77;
            v78 = "";
            if (v77)
            {
              v78 = v77;
            }

            v79 = "last >= offset";
          }

          else
          {
            v75 = (v72 + 16 * v73 + 16);
            while (1)
            {
              if (++v73 >= v71)
              {
                goto LABEL_89;
              }

              v76 = *v75;
              if (*v75 < v74)
              {
                break;
              }

              v75 += 2;
              v74 = v76;
              if (v76 < a2)
              {
                v65 = __si_assert_copy_extra_332();
                v38 = v65;
                v66 = "";
                if (v65)
                {
                  v66 = v65;
                }

                v67 = "last >= offset";
                goto LABEL_117;
              }
            }

            v77 = __si_assert_copy_extra_332();
            v51 = v77;
            v78 = "";
            if (v77)
            {
              v78 = v77;
            }

            v79 = "current >= last";
          }
        }

        __message_assert(v77, "OQueue.c", 16, v79, v78);
LABEL_106:
        free(v51);
        if (__valid_fs(-1))
        {
          v80 = 2989;
        }

        else
        {
          v80 = 3072;
        }

        *v80 = -559038737;
        abort();
      }

      v68 = *(a1 + 16);
      v69 = v15;
      while (1)
      {
        v70 = *v68;
        v68 += 2;
        if (v70 > a2)
        {
          break;
        }

        if (!--v69)
        {
          goto LABEL_80;
        }
      }

      v65 = __si_assert_copy_extra_332();
      v38 = v65;
      v66 = "";
      if (v65)
      {
        v66 = v65;
      }

      v67 = "current <= offset";
    }

LABEL_117:
    __message_assert(v65, "OQueue.c", 16, v67, v66);
LABEL_118:
    free(v38);
    if (__valid_fs(-1))
    {
      v81 = 2989;
    }

    else
    {
      v81 = 3072;
    }

    *v81 = -559038737;
    abort();
  }

  if (a2)
  {
    v4 = *(a1 + 32);
    *(a1 + 48) = v4;
    if (v4 >= 100000)
    {
      v26 = v4 - 1;
      v27 = *(a1 + 16);
      v28 = qos_class_self();
      v29 = dispatch_get_global_queue(v28, 0);
      v31 = thread_count;
      if (!thread_count)
      {
        *v83 = 0x1900000006;
        v82 = 4;
        sysctl(v83, 2u, &thread_count, &v82, 0, 0);
        v31 = thread_count;
      }

      v4 = _big_split_PositionOffsetWithMeta_t(v27, v26, a2, v29, v31, v30);
    }

    else if (v4 >= 1)
    {
      v5 = 0;
      v6 = *(a1 + 16);
      while (1)
      {
        v7 = (v6 + 24 * v5);
        if (*v7 >= a2)
        {
          if (v4 > v5)
          {
            v8 = (v6 + 24 * v4 - 24);
            while (1)
            {
              v9 = *v8;
              v8 -= 3;
              if (v9 < a2)
              {
                break;
              }

              if (--v4 <= v5)
              {
                v4 = v5;
                goto LABEL_13;
              }
            }

            memset(v83, 0, sizeof(v83));
            v84 = 0;
            v10 = *v7;
            v84 = *(v7 + 2);
            *v83 = v10;
            v11 = 24 * v4 - 24;
            v12 = (v6 + v11);
            v13 = *v12;
            *(v7 + 2) = *(v12 + 2);
            *v7 = v13;
            v14 = *(a1 + 16) + v11;
            *v14 = *v83;
            *(v14 + 16) = v84;
            v6 = *(a1 + 16);
          }

LABEL_13:
          if (*(v6 + 24 * v5) >= 2 * a2)
          {
            break;
          }
        }

        if (++v5 >= v4)
        {
          goto LABEL_39;
        }
      }

      v37 = __si_assert_copy_extra_332();
      v38 = v37;
      v39 = "";
      if (v37)
      {
        v39 = v37;
      }

      v40 = "!offset || PositionOffsetWithMeta_t_GET_VALUE(queue->offsets[i]) < offset * 2";
      goto LABEL_113;
    }

LABEL_39:
    *(a1 + 32) = v4;
    *(a1 + 40) = v4;
    v32 = *(a1 + 48);
    v33 = v32 - v4;
    if (v32 < v4)
    {
      v37 = __si_assert_copy_extra_332();
      v38 = v37;
      v39 = "";
      if (v37)
      {
        v39 = v37;
      }

      v40 = "queue->top <= queue->end";
LABEL_113:
      __message_assert(v37, "OQueue.c", 17, v40, v39);
      goto LABEL_118;
    }

    if (v32 > v4)
    {
      v34 = 24 * v4 + 24;
      v35 = v32 - v4;
      while (--v35)
      {
        v36 = *(*(a1 + 16) + v34);
        v34 += 24;
        if (v36 < a2)
        {
          v37 = __si_assert_copy_extra_332();
          v38 = v37;
          v39 = "";
          if (v37)
          {
            v39 = v37;
          }

          v40 = "current >= offset";
          goto LABEL_113;
        }
      }
    }

    if (v4 >= 1)
    {
      v41 = *(a1 + 16);
      v42 = v4;
      while (1)
      {
        v43 = *v41;
        v41 += 3;
        if (v43 > a2)
        {
          break;
        }

        if (!--v42)
        {
          goto LABEL_51;
        }
      }

      v37 = __si_assert_copy_extra_332();
      v38 = v37;
      v39 = "";
      if (v37)
      {
        v39 = v37;
      }

      v40 = "current <= offset";
      goto LABEL_113;
    }

LABEL_51:
    parallel_qsort_PositionOffsetWithMeta_t(*(a1 + 16) + 24 * v4, v33);
    v44 = *(a1 + 48);
    if (v4 < v44)
    {
      v45 = *(a1 + 16);
      v46 = *(a1 + 40);
      v47 = *(v45 + 24 * v46);
      if (v47 < a2)
      {
        v50 = __si_assert_copy_extra_332();
        v51 = v50;
        v52 = "";
        if (v50)
        {
          v52 = v50;
        }

        v53 = "last >= offset";
      }

      else
      {
        v48 = (v45 + 24 * v46 + 24);
        while (1)
        {
          if (++v46 >= v44)
          {
            goto LABEL_60;
          }

          v49 = *v48;
          if (*v48 < v47)
          {
            break;
          }

          v48 += 3;
          v47 = v49;
          if (v49 < a2)
          {
            v37 = __si_assert_copy_extra_332();
            v38 = v37;
            v39 = "";
            if (v37)
            {
              v39 = v37;
            }

            v40 = "last >= offset";
            goto LABEL_113;
          }
        }

        v50 = __si_assert_copy_extra_332();
        v51 = v50;
        v52 = "";
        if (v50)
        {
          v52 = v50;
        }

        v53 = "current >= last";
      }

      goto LABEL_101;
    }

LABEL_60:
    if (*(a1 + 32) && **(a1 + 16) >= a2)
    {
      v50 = __si_assert_copy_extra_332();
      v51 = v50;
      v52 = "";
      if (v50)
      {
        v52 = v50;
      }

      v53 = "last < offset";
LABEL_101:
      __message_assert(v50, "OQueue.c", 17, v53, v52);
      goto LABEL_106;
    }

    goto LABEL_91;
  }

  *(a1 + 64) = 0;
  ++*(a1 + 56);
  v22 = *(a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = v22;
  *(a1 + 32) = 0;
  v23 = *(a1 + 16);

  parallel_qsort_PositionOffsetWithMeta_t(v23, v22);
}

uint64_t pqpop_PositionOffset_t(uint64_t result, void *a2, _BYTE *a3)
{
  v3 = *a2;
  *a3 = v3;
  if (v3 == 1)
  {
    v4 = a2[3];
    if (v4 != 1)
    {
      v8 = a2[1];
      *result = *(v8 + 24);
      v9 = *(v8 + 40);
      v10 = v8 + 24 * v4;
      v11 = *(v10 - 24);
      v12 = *(v10 - 16);
      *(v8 + 32) = v12;
      v13 = a2[3];
      v14 = a2[2] >> 1;
      *(result + 16) = v9;
      *(v8 + 24) = v11;
      a2[3] = v13 - 1;
      v15 = 1;
      result = 2;
      v16 = 3;
      while (1)
      {
        v17 = a2[1];
        v18 = v17 + 24 * result;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = v17 + 24 * v16;
        v22 = *v21;
        v54 = *(v21 + 8);
        v55 = v20;
        if (v16 >= v13)
        {
          v54 = xmmword_1C2C002B8;
          if (result >= v13)
          {
            return result;
          }

          v22 = 0xBFFFFFFFFFFFFFFFLL;
        }

        if (v19 >= v11)
        {
          if (v22 >= v11)
          {
            _X8 = v17 + 48 * v15;
            __asm { PRFM            #1, [X8] }

            return result;
          }

          v24 = &v54;
          v25 = v16;
        }

        else
        {
          _CF = v22 >= v19;
          if (v22 < v19)
          {
            v24 = &v54;
          }

          else
          {
            v22 = v19;
            v24 = &v55;
          }

          if (_CF)
          {
            v25 = result;
          }

          else
          {
            v25 = v16;
          }
        }

        _X17 = v17 + 48 * v25;
        __asm { PRFM            #1, [X17] }

        if (v25 != v15)
        {
          result = 2 * v25;
          v16 = (2 * v25) | 1;
          v31 = v17 + 24 * v25;
          *v31 = v11;
          *(v31 + 8) = v12;
          v32 = a2[1] + 24 * v15;
          *v32 = v22;
          *(v32 + 8) = *v24;
          v15 = v25;
          if (v25 < v14)
          {
            continue;
          }
        }

        return result;
      }
    }

    *result = 0;
    *(result + 8) = 0;
    goto LABEL_7;
  }

  v5 = a2[3];
  if (v5 == 1)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v33 = a2[1];
  v7 = *(v33 + 16);
  v6 = *(v33 + 24);
  v34 = *(v33 + 16 * v5 - 16);
  *(v33 + 16) = v34;
  v35 = a2[2] >> 1;
  a2[3] = v5 - 1;
  v36 = 3;
  v37 = 2;
  v38 = 1;
  while (1)
  {
    v39 = a2[1];
    v40 = (v39 + 16 * v37);
    v42 = *v40;
    v41 = v40[1];
    if (v36 >= v5)
    {
      if (v37 >= v5)
      {
        goto LABEL_6;
      }

      v45 = 0;
      v44 = 0xBFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = (v39 + 16 * v36);
      v44 = *v43;
      v45 = v43[1];
    }

    if (v42 < v34)
    {
      if (v44 >= v42)
      {
        v36 = v37;
        v44 = v42;
        v45 = v41;
      }

      goto LABEL_31;
    }

    if (v44 >= v34)
    {
      break;
    }

LABEL_31:
    _X16 = v39 + 32 * v36;
    __asm { PRFM            #1, [X16] }

    if (v36 != v38)
    {
      v37 = 2 * v36;
      *(v39 + 16 * v36) = v34;
      v48 = (a2[1] + 16 * v38);
      v38 = v36;
      *v48 = v44;
      v48[1] = v45;
      v49 = v36 < v35;
      v36 = (2 * v36) | 1;
      if (v49)
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  _X10 = v39 + 32 * v38;
  __asm { PRFM            #1, [X10] }

LABEL_6:
  *result = v7;
  *(result + 8) = v6;
LABEL_7:
  *(result + 16) = 0;
  return result;
}

uint64_t oqpop_PositionOffset_t(uint64_t result, void *a2, _BYTE *a3)
{
  v3 = *a2;
  *a3 = v3;
  if (v3 == 1)
  {
    v4 = a2[5];
    if (v4 < a2[6])
    {
      v5 = a2[2];
      a2[5] = v4 + 1;
      v6 = v5 + 24 * v4;
      *result = *v6;
      *(result + 16) = *(v6 + 16);
      return result;
    }

    *result = 0;
    *(result + 8) = 0;
  }

  else
  {
    v7 = a2[5];
    if (v7 >= a2[6])
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v8 = a2[2];
      a2[5] = v7 + 1;
      v9 = (v8 + 16 * v7);
      v10 = *v9;
      v11 = v9[1];
    }

    *result = v10;
    *(result + 8) = v11;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t PayloadProcessDocIDRangeBitsReversed__Positions(uint64_t *a1, unint64_t a2, int a3, uint64_t a4, int8x8_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a2 + a3;
  if (v12 - 1 <= *(v10 + 40))
  {
    if (a2 < *(v10 + 44))
    {
      *(v10 + 44) = a2;
    }
  }

  else
  {
    *(v10 + 40) = a3 + a2 - 1;
  }

  CIIndexSetAddRangeFromBitVectorWithHint(*(v9 + 88), a2, a3, a4, a1 + 6, a5);
  if (dword_1EBF46AF4 >= 5)
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218496;
      v18 = a2;
      v19 = 2048;
      v20 = v12;
      v21 = 2048;
      v22 = v11;
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "Adding from %llu to  %llu to %p", &v17, 0x20u);
    }

    *__error() = v15;
  }

  CIIndexSetAddRangeFromBitVectorWithHint(v11, a2, a3, a4, a1 + 7, v13);
  return 1;
}

void PayloadIteratorDestroy__Positions(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    instr_release(v2);
  }

  v3 = *(a1 + 216);
  if (*(a1 + 192) == 1)
  {
    if (v3 >= 2)
    {
      v4 = 1;
      v5 = 32;
      do
      {
        CFRelease(*(*(a1 + 200) + v5));
        ++v4;
        v5 += 24;
      }

      while (*(a1 + 216) > v4);
    }
  }

  else if (v3 >= 2)
  {
    v6 = 1;
    v7 = 24;
    do
    {
      CFRelease(*(*(a1 + 200) + v7));
      ++v6;
      v7 += 16;
    }

    while (*(a1 + 216) > v6);
  }

  free(*(a1 + 200));
  v8 = a1 + 128;
  if (*(a1 + 120) == 1)
  {
    oqdispose_PositionOffsetWithMeta_t(v8);
  }

  else
  {
    oqdispose_JustPositionOffset_t(v8);
  }

  v9 = *(a1 + 88);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = 0;
  v11 = a1 + 224;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = *(v11 + 8 * v10);
    *(v11 + 8 * v10) = 0;
    if (v14)
    {
      if (*v14 >= 1)
      {
        v15 = 0;
        v16 = 32;
        do
        {
          CFRelease(*(*(v14 + 2) + v16));
          ++v15;
          v16 += 40;
        }

        while (*v14 > v15);
      }

      free(*(v14 + 2));
      free(v14);
    }

    v12 = 0;
    v10 = 1;
  }

  while ((v13 & 1) != 0);
  v17 = *(a1 + 72);
  if (v17)
  {
    if (*(a1 + 65) == 1)
    {
      free(*v17);
      free(*(a1 + 72));
      *(a1 + 72) = 0;
    }
  }
}

BOOL _iterator_match_address(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) == 1 && (v2 = *(a1 + 32), v2 <= a2))
  {
    return *(a1 + 88) + v2 > a2;
  }

  else
  {
    return 0;
  }
}

void PositionIteratorDestroy(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    instr_release(v2);
  }

  if (*(a1 + 136) >= 2)
  {
    v3 = 1;
    v4 = 64;
    do
    {
      CFRelease(*(*(a1 + 120) + v4));
      ++v3;
      v4 += 56;
    }

    while (*(a1 + 136) > v3);
  }

  free(*(a1 + 120));
  oqdispose_AnnotatedPositionOffset_t(a1 + 56);
  v5 = *(a1 + 176);
  if (v5 && *(a1 + 188) >= 1)
  {
    v6 = 0;
    v7 = 8;
    do
    {
      CFRelease(*(*(a1 + 176) + v7));
      ++v6;
      v7 += 56;
    }

    while (v6 < *(a1 + 188));
    v5 = *(a1 + 176);
  }

  free(v5);
  v8 = *(a1 + 160);
  if (v8)
  {
    v9 = *(a1 + 168);
    if (v9)
    {
      for (i = 0; i < v9; ++i)
      {
        v11 = *(*(a1 + 160) + 8 * i);
        if (v11)
        {
          CFRelease(v11);
          v9 = *(a1 + 168);
        }
      }

      v8 = *(a1 + 160);
    }
  }

  free(v8);
}

void *initFileState(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  result = malloc_type_malloc(0x10004uLL, 0xEB08432EuLL);
  *a1 = result;
  *(a1 + 16) = a3;
  *(a1 + 20) = a3;
  *(a1 + 32) = 1;
  *(a1 + 384) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  if (*(a2 + 20))
  {
    v7 = 0;
    v8 = a1 + 320;
    do
    {
      *(v8 + 4 * v7) = 0;
      *(v8 + 8 * v7++ - 128) = 0;
    }

    while (v7 < *(a2 + 20));
  }

  return result;
}

void PositionIterator_Split(uint64_t a1, unint64_t a2)
{
  if (!*a1)
  {
    if (*(a1 + 136) != 1)
    {
      v14 = __si_assert_copy_extra(0);
      v15 = v14;
      v16 = "";
      if (v14)
      {
        v16 = v14;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 4804, "pqcount_AnnotatedPositionOffset_t(&iter->futureOffsets)==0", v16);
      free(v15);
      if (__valid_fs(-1))
      {
        v17 = 2989;
      }

      else
      {
        v17 = 3072;
      }

      *v17 = -559038737;
      abort();
    }

    if (*(a1 + 8) != a2 && *(a1 + 80))
    {
      *(a1 + 8) = a2;
      oqsplit_AnnotatedPositionOffset_t(a1 + 56, a2);
      v3 = *(a1 + 88);
      if (v3 >= *(a1 + 96))
      {
        v7 = 0;
        v6 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v4 = *(a1 + 64);
        *(a1 + 88) = v3 + 1;
        v5 = (v4 + 56 * v3);
        v7 = *v5;
        v6 = v5[1];
        v8 = *(v5 + 4);
        v9 = v5[3];
        v10 = *(v5 + 8);
        v11 = *(v5 + 9);
        v12 = *(v5 + 40);
        v13 = v5[6];
      }

      *a1 = v7;
      *(a1 + 48) = v8;
      *(a1 + 40) = v9;
      *(a1 + 156) = v12;
      *(a1 + 148) = v10;
      *(a1 + 152) = v11;
      *(a1 + 16) = v13;
      *(a1 + 24) = v6;
    }
  }
}

void BulkPositionIterator_Dispose(uint64_t a1)
{
  BulkPositionIterator_Sync(a1, 0);
  free(*a1);
  v2 = (a1 + 24);
  if (*(a1 + 3348))
  {
    v3 = 0;
    do
    {
      free(*v2);
      ++v3;
      v2 += 49;
    }

    while (v3 < *(a1 + 3348));
  }

  else
  {
    free(*v2);
  }

  if (*(a1 + 3180))
  {
    v4 = 0;
    do
    {
      dispatch_release(*(a1 + 3192 + 8 * v4++));
    }

    while (v4 < *(a1 + 3180));
  }

  dispatch_release(*(a1 + 3184));
  dispatch_release(*(a1 + 3320));

  free(a1);
}

void BulkPositionIterator_Sync(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 24;
  if (*(a1 + 3348))
  {
    v5 = 0;
    do
    {
      syncFileState1(v4, a2);
      ++v5;
      v4 += 392;
    }

    while (v5 < *(a1 + 3348));
  }

  else
  {
    syncFileState1(a1 + 24, a2);
  }

  if (*(a1 + 3180))
  {
    v6 = 0;
    do
    {
      dispatch_barrier_sync(*(a1 + 3192 + 8 * v6++), &__block_literal_global_65);
    }

    while (v6 < *(a1 + 3180));
  }

  v7 = *(a1 + 3184);

  dispatch_barrier_sync(v7, &__block_literal_global_68);
}

void syncFileState1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 384);
  if (*(v2 + 20))
  {
    v5 = 0;
    v6 = a1 + 320;
    do
    {
      v7 = *(v6 + 4 * v5);
      if (v7)
      {
        v8 = *(v2 + 8 * v5 + 32);
        v9 = v6 + 8 * v5;
        v10 = *(v9 - 128);
        v11 = *(v2 + 19);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 0x40000000;
        v12[2] = ___innerIssueBuffer_block_invoke;
        v12[3] = &__block_descriptor_tmp_62_13736;
        v13 = v7;
        v12[4] = a2;
        v12[5] = v10;
        v14 = v11 ^ 1;
        v12[6] = 0;
        dispatch_async(v8, v12);
        *(v6 + 4 * v5) = 0;
        *(v9 - 128) = 0;
        v2 = *(a1 + 384);
      }

      ++v5;
    }

    while (v5 < *(v2 + 20));
  }
}

void ___innerIssueBuffer_block_invoke(uint64_t a1)
{
  v18 = *(a1 + 32);
  v2 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  if (*(a1 + 56))
  {
    v3 = 0;
    do
    {
      v4 = *(a1 + 40);
      v5 = *(v4 + 4 * v3);
      if (!v5)
      {
        v14 = __si_assert_copy_extra(0);
        v15 = v14;
        v16 = "";
        if (v14)
        {
          v16 = v14;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 2585, "pSet", v16);
        free(v15);
        if (__valid_fs(-1))
        {
          v17 = 2989;
        }

        else
        {
          v17 = 3072;
        }

        *v17 = -559038737;
        abort();
      }

      v6 = v3 + 3;
      v7 = *(v4 + 4 * (v3 + 2));
      v8 = *(a1 + 60);
      v3 += v7 + 3;
      v9 = v3 - 1;
      if (v8)
      {
        v9 = v6;
      }

      v10 = *(v4 + 4 * v9);
      if (v10 > v5[6])
      {
        v11 = (1 << -__clz(v10));
        do
        {
          v12 = v11;
          v11 = (2 * v11);
        }

        while (v12 < v10);
        _CIIndexSetSetIndexRangeWithCache(v5, v5[5], v12, v7, &v18);
        v4 = *(a1 + 40);
        v8 = *(a1 + 60);
      }

      _CIIndexSetAddSortedIndexes(v5, (v4 + 4 * v6), v7, v8 & 1, &v18, 0, v2);
    }

    while (v3 < *(a1 + 56));
  }

  free(*(a1 + 40));
  v13 = *(a1 + 48);
  if (v13)
  {
    dispatch_semaphore_signal(v13);
  }

  CIIndexSetDisposePerThreadCache(&v18);
}

uint64_t BulkPositionIterator_Step_Compressed(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, _DWORD *a5, int a6, _DWORD *a7, uint64_t a8, int a9, _BYTE *a10)
{
  v10 = a8;
  v84 = *MEMORY[0x1E69E9840];
  v14 = *(a2 + 3348);
  if (v14)
  {
    v15 = a2 + 40;
    v16 = *(a2 + 3348);
    do
    {
      *(v15 + 24) = -1;
      *(v15 + 32) = -1;
      *(v15 + 40) = *a5;
      *v15 = *a4;
      *(v15 + 4) = *a5;
      *(v15 + 8) = a6;
      v15 += 392;
      --v16;
    }

    while (v16);
  }

  else
  {
    *(a2 + 64) = -1;
    *(a2 + 72) = -1;
    *(a2 + 80) = *a5;
    *(a2 + 40) = *a4;
    *(a2 + 44) = *a5;
    *(a2 + 48) = a6;
  }

  if (dword_1EBF46AF4 >= 5)
  {
    v58 = a1;
    v40 = a3;
    v41 = *__error();
    v42 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(a2 + 3328);
      *buf = 134217984;
      *&buf[4] = v43;
      _os_log_impl(&dword_1C278D000, v42, OS_LOG_TYPE_DEFAULT, "Split point: %llx", buf, 0xCu);
    }

    *__error() = v41;
    v14 = *(a2 + 3348);
    a3 = v40;
    a1 = v58;
  }

  if (v14)
  {
    v57 = a3;
    v58 = a1;
    v82 = 0u;
    v83 = 0u;
    *buf = 0u;
    v81 = 0u;
    v17 = *(a2 + 16) - 1;
    oqinit_offset_t(buf, v17);
    while (*(a2 + 16) != 1 && (*a10 & 1) == 0)
    {
      v19 = ipqpop(a2);
      oqpush_offset_t(buf, v19, v20);
    }

    v56[1] = v56;
    MEMORY[0x1EEE9AC00](v18);
    bzero(v56 - ((v17 + 15) & 0x1FFFFFFF0), v17);
    v73[0] = 0;
    v72 = 0;
    v21 = *(a2 + 3348);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 0x40000000;
    v60 = *buf;
    v61 = v81;
    v62 = v82;
    v59[2] = __BulkPositionIterator_Step_Compressed_block_invoke;
    v59[3] = &__block_descriptor_tmp_70_13798;
    v59[4] = v57;
    v59[5] = v58;
    v59[6] = v73;
    v63 = v83;
    v64 = a2;
    v65 = a7;
    v69 = v17;
    v70 = v10;
    v71 = a9;
    v66 = a10;
    v67 = v56 - ((v17 + 15) & 0x1FFFFFFF0);
    v68 = &v72;
    dispatch_apply(v21, 0, v59);
    if (v72)
    {
      v44 = __si_assert_copy_extra(0);
      v45 = v44;
      v46 = "";
      if (v44)
      {
        v46 = v44;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 5114, "__c11_atomic_load(didAssertPtr, memory_order_relaxed)==0", v46);
      free(v45);
      if (__valid_fs(-1))
      {
        v47 = 2989;
      }

      else
      {
        v47 = 3072;
      }

      *v47 = -559038737;
      abort();
    }

    if ((*a10 & 1) != 0 || (v22 = *(&v81 + 1), *(&v81 + 1) < 1))
    {
      v23 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = *&buf[8];
      do
      {
        if (*(v56 + v24 - ((v17 + 15) & 0x1FFFFFFF0)) == 1)
        {
          ipqpush(a2, *(v25 + 8 * v24));
          v23 = 1;
        }

        ++v24;
      }

      while (v24 < v22);
    }

    free(*&buf[8]);
    v26 = *(a2 + 80);
    LODWORD(v27) = gCPUCount;
    if (gCPUCount >= v17)
    {
      LODWORD(v27) = v17;
    }

    if (v27 < 2)
    {
      v30 = 0x1EBF46000uLL;
    }

    else
    {
      if (v27 >= 8)
      {
        v27 = 8;
      }

      else
      {
        v27 = v27;
      }

      v28 = v27 - 1;
      v29 = (a2 + 472);
      v30 = 0x1EBF46000;
      do
      {
        if (v26 >= *v29)
        {
          v26 = *v29;
        }

        v29 += 98;
        --v28;
      }

      while (v28);
    }

    if (*(v30 + 2804) > 4)
    {
      v48 = *__error();
      v49 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *a4;
        v51 = *(a2 + 80);
        LODWORD(v76) = 67109376;
        HIDWORD(v76) = v50;
        LOWORD(v77) = 1024;
        *(&v77 + 2) = v51;
        _os_log_impl(&dword_1C278D000, v49, OS_LOG_TYPE_DEFAULT, "Expected start: %d Actual start: %d", &v76, 0xEu);
      }

      *__error() = v48;
    }

    *a4 = v26;
    if (v23)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
    *buf = 0u;
    *&v83 = 0;
    *(&v83 + 1) = 0xFFFFFFFFLL;
    v77 = 0u;
    v78 = 0u;
    v76 = a3;
    v79 = 0;
    while (*(a2 + 16) != 1 && (*a10 & 1) == 0)
    {
      v31 = ipqpop(a2);
      v32 = PositionIterate_Compressed(v31, &v76, (a2 + 24), a7, v10, a9, a10);
      if (v32 == 2)
      {
        oqpush_offset_t(buf, v31, v33);
      }

      else if (v32 == 1)
      {
        ipqpush(a2, v31);
      }
    }

    CIIndexSetDisposePerThreadCache(&v76);
    if ((*a10 & 1) != 0 || (v34 = *(&v81 + 1)) == 0)
    {
      v37 = 0;
    }

    else
    {
      if (*(&v81 + 1) >= 1)
      {
        v35 = *&buf[8];
        do
        {
          v36 = *v35++;
          ipqpush(a2, v36);
          --v34;
        }

        while (v34);
      }

      v37 = 1;
    }

    free(*&buf[8]);
    if (dword_1EBF46AF4 >= 5)
    {
      v52 = *__error();
      v53 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = *a4;
        v55 = *(a2 + 80);
        v73[0] = 67109376;
        v73[1] = v54;
        v74 = 1024;
        v75 = v55;
        _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "Expected start: %d Actual start: %d", v73, 0xEu);
      }

      *__error() = v52;
    }

    *a4 = *(a2 + 80);
    if (v37)
    {
      goto LABEL_53;
    }
  }

  if (*(a2 + 16) != 1)
  {
    v38 = *a10 ^ 1;
    return v38 & 1;
  }

LABEL_53:
  v38 = 0;
  return v38 & 1;
}

uint64_t BulkPositionIterator_Step_Live(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, int a5, _DWORD *a6, _BYTE *a7)
{
  v251 = *MEMORY[0x1E69E9840];
  v240 = a2;
  v241 = 0u;
  v242 = 0u;
  v243 = 0;
  *(a1 + 64) = -1;
  *(a1 + 72) = -1;
  *(a1 + 80) = *a4;
  *(a1 + 40) = *a3;
  *(a1 + 44) = *a4;
  *(a1 + 48) = a5;
  ++*(a1 + 56);
  v9 = *a3;
  v239 = (a1 + 64);
  v236 = *(a1 + 3328);
  v10 = malloc_type_malloc(0x18uLL, 0x10A0040319E9F20uLL);
  v10[1] = 4;
  v11 = malloc_type_zone_malloc(queryZone, 0x20uLL, 0xA4971684uLL);
  if (!v11)
  {
    _log_fault_for_malloc_failure();
  }

  *v10 = v11;
  v10[2] = a1;
  v12 = malloc_type_malloc(0x18uLL, 0x10A0040319E9F20uLL);
  *(v12 + 1) = 4;
  *(v12 + 2) = a1;
  v13 = malloc_type_zone_malloc(queryZone, 0x20uLL, 0xA4971684uLL);
  if (!v13)
  {
    _log_fault_for_malloc_failure();
  }

  *v12 = v13;
  v14 = CICleanUpThreadLoc();
  v232 = LODWORD(threadData[9 * v14 + 4]);
  v233 = CICleanUpPush(v14, CIIndexSetDisposePerThreadCache, &v240);
  v235 = v10;
  v231 = CICleanUpPush(v14, _deferredArrayExceptionCleanup, v10);
  v230 = CICleanUpPush(v14, _deferredArrayExceptionCleanup, v12);
  v15 = malloc_type_malloc(0x20uLL, 0x10A004064A2AE3FuLL);
  pqinit_ItemIteratorRef(v15, 16);
  v15[3] = a1;
  v234 = v14;
  v229 = CICleanUpPush(v14, _deferredExceptionCleanup, v15);
  if (dword_1EBF46AF4 >= 5)
  {
    v201 = *__error();
    v202 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
    {
      v203 = *(a1 + 3328);
      *buf = 134217984;
      *&buf[4] = v203;
      _os_log_impl(&dword_1C278D000, v202, OS_LOG_TYPE_DEFAULT, "Split point: %llx", buf, 0xCu);
    }

    *__error() = v201;
  }

  if (!*(a1 + 3328) && *(a1 + 3336) >= 1)
  {
    printf("renedebug");
  }

  v16 = a1 + 3352;
  v17 = *(a1 + 16);
  v237 = v9;
  while (1)
  {
    while (1)
    {
      if (v17 != 1)
      {
        v37 = 0;
        goto LABEL_52;
      }

      if (v15[2] != 1)
      {
        break;
      }

      v18 = *(a1 + 3336);
      if (!v18 && !v12[3])
      {
        break;
      }

      v19 = *(a1 + 3328);
      if (!v19 || (*a7 & 1) != 0)
      {
        break;
      }

      if (dword_1EBF46AF4 >= 5)
      {
        v178 = *__error();
        v179 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
        {
          v180 = *(a1 + 3328);
          *buf = 134217984;
          *&buf[4] = v180;
          _os_log_impl(&dword_1C278D000, v179, OS_LOG_TYPE_DEFAULT, "Splitting at: %llx", buf, 0xCu);
        }

        *__error() = v178;
        v18 = *(a1 + 3336);
        v19 = *(a1 + 3328);
      }

      v20 = v12[3];
      *(a1 + 3336) = 0;
      v21 = v19 >> 1;
      *(a1 + 3328) = v21;
      v12[3] = 0;
      *(a1 + 64) = *(a1 + 72);
      *(a1 + 72) = -1;
      if (v21 < *(*(a1 + 3160) + 32))
      {
        *(a1 + 3328) = 0;
      }

      if (v18 >= 1)
      {
        v22 = 3352;
        do
        {
          v23 = *(a1 + v22);
          v24 = *v23;
          v25 = *(a1 + 3328);
          if (!*v23)
          {
            PositionIterator_Split(*(a1 + v22), v25);
            v23 = *(a1 + v22);
            v24 = *v23;
            v25 = *(a1 + 3328);
          }

          v26 = v24 & 0x3FFFFFFFFFFFFFFFLL;
          if (v26 <= v25)
          {
            if (v25)
            {
              v28 = *(a1 + 3336);
              *(a1 + 3336) = v28 + 1;
              *(v16 + 8 * v28) = v23;
            }
          }

          else
          {
            if (v25)
            {
              v27 = v26 > 2 * v25;
            }

            else
            {
              v27 = 0;
            }

            if (v27)
            {
              goto LABEL_381;
            }

            if (v25 != v23[1])
            {
              PositionIterator_Resplit(v23, v25);
              v23 = *(a1 + v22);
            }

            ipqpush(a1, v23);
          }

          v22 += 8;
          --v18;
        }

        while (v18);
      }

      if (v20 >= 1)
      {
        for (i = 0; v20 != i; ++i)
        {
          v30 = *v12;
          v31 = *(*v12 + 8 * i);
          v32 = *v31;
          v33 = *(a1 + 3328);
          if (!*v31)
          {
            PositionIterator_Split(*(*v12 + 8 * i), v33);
            v30 = *v12;
            v31 = *(*v12 + 8 * i);
            v32 = *v31;
            v33 = *(a1 + 3328);
          }

          v34 = v32 & 0x3FFFFFFFFFFFFFFFLL;
          if (v34 <= v33)
          {
            if (v33)
            {
              v36 = v12[3];
              v12[3] = v36 + 1;
              *(v30 + 8 * v36) = v31;
            }
          }

          else
          {
            if (v33)
            {
              v35 = v34 > 2 * v33;
            }

            else
            {
              v35 = 0;
            }

            if (v35)
            {
              goto LABEL_384;
            }

            if (v33 != v31[1])
            {
              PositionIterator_Resplit(v31, v33);
              v31 = *(*v12 + 8 * i);
            }

            ipqpush(v15, v31);
          }
        }
      }

      v17 = *(a1 + 16);
    }

    v37 = 1;
LABEL_52:
    if (*a7)
    {
      goto LABEL_358;
    }

    if (!*(a1 + 3328) && *(a1 + 3336))
    {
      goto LABEL_381;
    }

    v38 = v15[2];
    if (v37)
    {
      if (v38 == 1)
      {
        goto LABEL_358;
      }
    }

    else if (v38 == 1)
    {
      v39 = -1;
      goto LABEL_64;
    }

    v39 = *v15;
    if (*v15)
    {
      v39 = *(v39 + 8);
    }

    if (v37)
    {
      v40 = -1;
      goto LABEL_66;
    }

LABEL_64:
    if (!*a1)
    {
      break;
    }

    v40 = *(*a1 + 8);
LABEL_66:
    if (v39 >= v40)
    {
      break;
    }

    v41 = ipqpop(v15);
    v42 = v41[1];
    if (v42 != *(a1 + 3328))
    {
      goto LABEL_381;
    }

    v43 = v41;
    v44 = *v41;
    if (v42 && (v44 <= v42 || v44 > 2 * v42))
    {
      goto LABEL_384;
    }

    if (v44 == *v239)
    {
      if (!v42 || (v44 & 0x3FFFFFFFFFFFFFFFLL) <= 2 * v42)
      {
        if (dword_1EBF46AF4 >= 5)
        {
          v215 = *__error();
          v216 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
          {
            v217 = *(v43 + 24);
            v218 = *v43;
            *buf = 134218496;
            *&buf[4] = v43;
            *&buf[12] = 2048;
            *&buf[14] = v217;
            *&buf[22] = 2048;
            v246 = v218;
            _os_log_impl(&dword_1C278D000, v216, OS_LOG_TYPE_DEFAULT, "Pushback; def we are done with a generation %p %p %llu", buf, 0x20u);
          }

          *__error() = v215;
        }

        ipqpush(v15, v43);
        goto LABEL_399;
      }

      goto LABEL_384;
    }

LABEL_78:
    if (v42 && (v44 <= v42 || v44 > 2 * v42))
    {
      goto LABEL_381;
    }

    v46 = *(*(a1 + 3160) + 8);
    v47 = *(v43 + 192);
    if (v46 == v47)
    {
LABEL_82:
      v48 = PositionIterate(v43, &v240, v239 - 5, a6, v9 == 1);
      if (v48 >= 1)
      {
        v49 = *v43;
LABEL_84:
        if ((v49 & 0x3FFFFFFFFFFFFFFFuLL) > *(a1 + 3328))
        {
          v50 = a1;
LABEL_325:
          ipqpush(v50, v43);
          goto LABEL_358;
        }

        v219 = __si_assert_copy_extra(0);
        v220 = v219;
        v221 = "";
        if (v219)
        {
          v221 = v219;
        }

        __message_assert("%s:%u: Unexpected code path %s ", "PayloadIterator.c", 5362, v221);
        goto LABEL_472;
      }

      if (v48 > -3)
      {
        if (v48 == -2)
        {
          goto LABEL_340;
        }

        if (v48 == -1)
        {
          goto LABEL_319;
        }
      }

      else
      {
        if (v48 == -4)
        {
          goto LABEL_328;
        }

        if (v48 == -3)
        {
          goto LABEL_332;
        }
      }

      goto LABEL_358;
    }

    if (v46 >= v47)
    {
      if (v42 >= v47)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v52 = v44 < v46 || v44 >= v47;
      if (v42 >= v47 || !v52)
      {
        goto LABEL_103;
      }
    }

    v53 = 2 * v42 >= v47 || v42 == 0;
    if (!v53 || v44 >= v47)
    {
      goto LABEL_82;
    }

LABEL_103:
    v54 = *(a1 + 408);
    v55 = *(a1 + 24);
    v56 = *v54;
    if (*(v54 + 18))
    {
      if (!v44)
      {
        goto LABEL_126;
      }

      if (v42 && (v44 <= v42 || v44 > 2 * v42))
      {
        goto LABEL_381;
      }

      if (dword_1EBF46AF4 >= 5)
      {
        v226 = *__error();
        v182 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
        {
          v183 = *(v43 + 24);
          *buf = 134218496;
          *&buf[4] = v43;
          *&buf[12] = 2048;
          *&buf[14] = v44;
          *&buf[22] = 2048;
          v246 = v183;
          _os_log_impl(&dword_1C278D000, v182, OS_LOG_TYPE_DEFAULT, "%p %llu %p", buf, 0x20u);
        }

        *__error() = v226;
        v54 = *(a1 + 408);
      }

      v57 = *(a1 + 32);
      v58 = v54[1];
      if (v44 < v57 || v58 + v57 <= v44 || v44 + 30 > v58 + v57)
      {
        *(a1 + 32) = v44 & 0x3FFFFFFFFFFFF000;
        if (fd_pread(*(v56 + 4488), v55, v58, v44 & 0x3FFFFFFFFFFFF000) == -1)
        {
          goto LABEL_138;
        }

        *(a1 + 52) = 0;
        v57 = *(a1 + 32);
        v58 = *(*(a1 + 408) + 8);
        v60 = 1;
      }

      else
      {
        v59 = *(a1 + 52);
        *(a1 + 52) = v59 + 1;
        v60 = v59 + 2;
      }

      v244 = v44 - v57;
      if (v44 - v57 + 20 >= v58)
      {
        *(a1 + 32) = v44 & 0x3FFFFFFFFFFFF000;
        v65 = fd_pread(*(v56 + 4488), *(a1 + 24), v58, v44 & 0x3FFFFFFFFFFFF000);
        *(a1 + 52) = 0;
        v244 = v44 - *(a1 + 32);
        if (v65 == -1)
        {
          goto LABEL_315;
        }
      }

      else
      {
        *(a1 + 52) = v60;
      }

      *&v224 = SLReadPositionHeader(v55, &v244);
      *(&v224 + 1) = v66;
      v67 = v244;
LABEL_141:
      v68 = *(*(a1 + 408) + 8);
      if (v67 + 5 >= v68)
      {
        v70 = *(a1 + 24);
        v71 = *(a1 + 32) + v67;
        *(a1 + 32) = v71 & 0x3FFFFFFFFFFFF000;
        v72 = fd_pread(*(v56 + 4488), v70, v68, v71 & 0x3FFFFFFFFFFFF000);
        v69 = 0;
        *(a1 + 52) = 0;
        v67 = v71 - *(a1 + 32);
        if (v72 == -1)
        {
LABEL_176:
          v244 = v67;
          v101 = *(&v224 + 1);
          v102 = v224;
          if (v224 == 0)
          {
            v102 = *(v43 + 16);
            *(v43 + 16) = 0;
          }

          v103 = *(v43 + 8);
          v104 = *(**(a1 + 408) + 32);
          v105 = 2 * v103;
          if (v103 >= v104)
          {
            v104 = 2 * v103;
          }

          if (*(&v224 + 1) <= v44 && *(&v224 + 1))
          {
            v106 = v44 <= v104 || *(&v224 + 1) > v104;
            if (v106 && *(&v224 + 1) >= v103)
            {
              goto LABEL_381;
            }
          }

          if (v102 - 1 < v44)
          {
            v108 = v44 <= v104 || v102 > v104;
            if (v108 && v102 >= v103)
            {
              goto LABEL_381;
            }
          }

          if (v102 - 1 < *(&v224 + 1))
          {
            v110 = *(&v224 + 1) <= v104 || v102 > v104;
            if (v110 && v102 >= v103)
            {
              goto LABEL_381;
            }
          }

          if (*(&v224 + 1))
          {
            v112 = 0;
          }

          else
          {
            v112 = v102;
          }

          if (*(&v224 + 1) && v102)
          {
            v112 = 0;
            *(v43 + 16) = v102;
          }

          if (!(v112 | *(&v224 + 1)))
          {
            goto LABEL_315;
          }

          if (!*(&v224 + 1))
          {
            if (!v112)
            {
              goto LABEL_315;
            }

            v9 = v237;
            if (v112 == v44)
            {
              goto LABEL_316;
            }

            v149 = *(v43 + 48);
            v150 = *(v43 + 40);
            v152 = *(v43 + 148);
            v151 = *(v43 + 152);
            v153 = *(v43 + 156);
            v156 = *(v43 + 16);
            v154 = *(v43 + 24);
            if (v112 > v44 || v112 > *(v43 + 112))
            {
              if (v156)
              {
                goto LABEL_384;
              }

              if (v103 && (v112 <= v103 || v112 > v105))
              {
LABEL_381:
                v186 = __si_assert_copy_extra(0);
                __message_assert("%s:%u: failed assertion '%s' %s ");
                goto LABEL_382;
              }

LABEL_311:
              v157 = *v239;
              if (*v239 >= v112)
              {
                v157 = v112;
              }

              *v239 = v157;
              *buf = v112;
              *&buf[8] = v154;
              *&buf[16] = v149;
              *&buf[20] = 0;
              v246 = v150;
              v247 = v152;
              v248 = v151;
              v249 = v153;
              memset(v250, 0, 15);
LABEL_314:
              check_pqpush_AnnotatedPositionOffset_t(v43 + 120, buf);
              goto LABEL_316;
            }

            if (v156)
            {
              goto LABEL_381;
            }

            goto LABEL_371;
          }

          if (v112)
          {
            goto LABEL_381;
          }

          v9 = v237;
          if (*(&v224 + 1) != v44)
          {
            v113 = *(v43 + 48);
            v114 = *(v43 + 40);
            v116 = *(v43 + 148);
            v115 = *(v43 + 152);
            v117 = *(v43 + 156);
            v118 = *(v43 + 16);
            v119 = *(v43 + 24);
            if (*(&v224 + 1) > v44 || *(&v224 + 1) > *(v43 + 112))
            {
              if (v103 && (*(&v224 + 1) <= v103 || *(&v224 + 1) > v105))
              {
                goto LABEL_381;
              }

LABEL_293:
              *buf = v101;
              *&buf[8] = v119;
              *&buf[16] = v113;
              *&buf[20] = 0;
              v246 = v114;
              v247 = v116;
              v248 = v115;
              v249 = v117;
              v250[0] = 0;
              *(v250 + 3) = 0;
              *(&v250[1] + 3) = v118;
              goto LABEL_314;
            }

LABEL_364:
            *buf = v101;
            *&buf[8] = v119;
            *&buf[16] = v113;
            *&buf[20] = 0;
            v246 = v114;
            v247 = v116;
            v248 = v115;
            v249 = v117;
            v250[0] = 0;
            *(v250 + 3) = 0;
            *(&v250[1] + 3) = v118;
            check_oqpush_AnnotatedPositionOffset_t(v43 + 56, buf);
            goto LABEL_316;
          }

          goto LABEL_316;
        }
      }

      else
      {
        v69 = *(a1 + 52) + 1;
        *(a1 + 52) = v69;
      }

      v73 = v67 + 1;
      v74 = v55[v67];
      if ((v74 & 0x80000000) == 0)
      {
        v75 = v67 + 1;
        if (v55[v67])
        {
          goto LABEL_158;
        }

LABEL_175:
        v67 = v75;
        goto LABEL_176;
      }

      v75 = v67 + 2;
      v76 = v55[v73];
      v77 = v55[v73];
      if ((v76 & 0x80000000) == 0)
      {
        if (v74 & 0x7F | (v77 << 7))
        {
          goto LABEL_158;
        }

        goto LABEL_175;
      }

      v78 = v67 + 3;
      v79 = v55[v75];
      v80 = v79;
      if ((v79 & 0x80000000) == 0)
      {
        v75 = v67 + 3;
        if (((v77 & 0x7F) << 7) | (v80 << 14) | v74 & 0x7F)
        {
          goto LABEL_158;
        }

        goto LABEL_175;
      }

      v75 = v67 + 4;
      v81 = v55[v78];
      v82 = v55[v78];
      if ((v81 & 0x80000000) == 0)
      {
        v83 = ((v80 & 0x7F) << 14) | (v82 << 21);
        goto LABEL_157;
      }

      v84 = v55[v75];
      if ((v84 & 0x80000000) == 0)
      {
        v75 = v67 + 5;
        v83 = ((v82 & 0x7F) << 21) | (v84 << 28) | ((v80 & 0x7F) << 14);
LABEL_157:
        if (v83 & 0xFFFFC000 | ((v77 & 0x7F) << 7) | v74 & 0x7F)
        {
          while (1)
          {
LABEL_158:
            v85 = *(*(a1 + 408) + 8);
            if (v75 + 5 >= v85)
            {
              v86 = *(a1 + 24);
              v87 = *(a1 + 32) + v75;
              *(a1 + 32) = v87 & 0x3FFFFFFFFFFFF000;
              v88 = fd_pread(*(v56 + 4488), v86, v85, v87 & 0x3FFFFFFFFFFFF000);
              v69 = 0;
              *(a1 + 52) = 0;
              v67 = v87 - *(a1 + 32);
              v75 = v67;
              if (v88 == -1)
              {
                goto LABEL_141;
              }
            }

            else
            {
              *(a1 + 52) = ++v69;
            }

            v89 = v75 + 1;
            v90 = v55[v75];
            if (v55[v75] < 0)
            {
              v67 = v75 + 2;
              v91 = v55[v89];
              v92 = v55[v89];
              if (v91 < 0)
              {
                v93 = v75 + 3;
                v94 = v55[v67];
                v95 = v94;
                if (v94 < 0)
                {
                  v67 = v75 + 4;
                  v97 = v55[v93];
                  v98 = v55[v93];
                  if (v97 < 0)
                  {
                    v100 = v55[v67];
                    if (v100 < 0)
                    {
                      v186 = __si_assert_copy_extra(0);
                      __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
LABEL_382:
                      free(v186);
                      if (__valid_fs(-1))
                      {
LABEL_383:
                        v187 = 2989;
                      }

                      else
                      {
                        v187 = 3072;
                      }

                      *v187 = -559038737;
                      abort();
                    }

                    v67 = v75 + 5;
                    v99 = ((v98 & 0x7F) << 21) | (v100 << 28) | ((v95 & 0x7F) << 14);
                  }

                  else
                  {
                    v99 = ((v95 & 0x7F) << 14) | (v98 << 21);
                  }

                  v96 = v99 & 0xFFFFC000 | ((v92 & 0x7F) << 7) | v90 & 0x7F;
                }

                else
                {
                  v96 = ((v92 & 0x7F) << 7) | (v94 << 14) | v90 & 0x7F;
                  v67 = v93;
                }

                v90 = v96;
              }

              else
              {
                v90 = v90 & 0x7F | (v92 << 7);
              }
            }

            else
            {
              v67 = v75 + 1;
            }

            v75 = v67;
            if (!v90)
            {
              goto LABEL_141;
            }
          }
        }

        goto LABEL_175;
      }

      v188 = __si_assert_copy_extra(0);
      __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
LABEL_385:
      free(v188);
      if (__valid_fs(-1))
      {
        v189 = 2989;
      }

      else
      {
        v189 = 3072;
      }

      *v189 = -559038737;
      abort();
    }

    if (!v44)
    {
LABEL_126:
      PositionIterator_GetNext(v43);
      *(v43 + 32) = 0;
      v9 = v237;
      goto LABEL_317;
    }

    if (v42 && (v44 <= v42 || v44 > 2 * v42))
    {
      goto LABEL_384;
    }

    if (dword_1EBF46AF4 >= 5)
    {
      v227 = *__error();
      v184 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
      {
        v185 = *(v43 + 24);
        *buf = 134218496;
        *&buf[4] = v43;
        *&buf[12] = 2048;
        *&buf[14] = v44;
        *&buf[22] = 2048;
        v246 = v185;
        _os_log_impl(&dword_1C278D000, v184, OS_LOG_TYPE_DEFAULT, "%p %llu %p", buf, 0x20u);
      }

      *__error() = v227;
      v54 = *(a1 + 408);
    }

    v61 = *(a1 + 32);
    v62 = v54[1];
    if (v44 < v61 || v62 + v61 <= v44 || v44 + 30 > v62 + v61)
    {
      *(a1 + 32) = v44 & 0x3FFFFFFFFFFFF000;
      if (fd_pread(*(v56 + 4488), v55, v62, v44 & 0x3FFFFFFFFFFFF000) == -1)
      {
LABEL_138:
        v9 = v237;
        goto LABEL_358;
      }

      *(a1 + 52) = 0;
      v61 = *(a1 + 32);
      v62 = *(*(a1 + 408) + 8);
      v64 = 1;
    }

    else
    {
      v63 = *(a1 + 52);
      *(a1 + 52) = v63 + 1;
      v64 = v63 + 2;
    }

    v244 = v44 - v61;
    if (v44 - v61 + 20 >= v62)
    {
      *(a1 + 32) = v44 & 0x3FFFFFFFFFFFF000;
      v120 = fd_pread(*(v56 + 4488), *(a1 + 24), v62, v44 & 0x3FFFFFFFFFFFF000);
      *(a1 + 52) = 0;
      v244 = v44 - *(a1 + 32);
      if (v120 == -1)
      {
        goto LABEL_315;
      }
    }

    else
    {
      *(a1 + 52) = v64;
    }

    *&v225 = CIReadPositionHeader(v55, &v244);
    *(&v225 + 1) = v121;
    v122 = v244;
    while (1)
    {
LABEL_223:
      v123 = *(*(a1 + 408) + 8);
      if (v122 + 5 >= v123)
      {
        v125 = *(a1 + 24);
        v126 = *(a1 + 32) + v122;
        *(a1 + 32) = v126 & 0x3FFFFFFFFFFFF000;
        v127 = fd_pread(*(v56 + 4488), v125, v123, v126 & 0x3FFFFFFFFFFFF000);
        v124 = 0;
        *(a1 + 52) = 0;
        v122 = v126 - *(a1 + 32);
        if (v127 == -1)
        {
          goto LABEL_249;
        }
      }

      else
      {
        v124 = *(a1 + 52) + 1;
        *(a1 + 52) = v124;
      }

      v128 = v122 + 1;
      v129 = &v55[v122];
      v130 = v55[v122];
      if (v55[v122] < 0)
      {
        if (v130 > 0xBF)
        {
          if (v130 > 0xDF)
          {
            if (v130 > 0xEF)
            {
              v130 = *&v55[v128];
              v128 = v122 + 5;
            }

            else
            {
              v130 = ((v130 & 0xF) << 24) | (v55[v128] << 16) | (v129[2] << 8) | v129[3];
              v128 = v122 + 4;
            }
          }

          else
          {
            v130 = ((v130 & 0x1F) << 16) | (v55[v128] << 8) | v129[2];
            v128 = v122 + 3;
          }
        }

        else
        {
          v131 = v55[v128] | ((v130 & 0x3F) << 8);
          v128 = v122 + 2;
          v130 = v131;
        }
      }

      if (!v130)
      {
        break;
      }

      do
      {
        v132 = *(*(a1 + 408) + 8);
        if (v128 + 5 >= v132)
        {
          v133 = *(a1 + 24);
          v134 = *(a1 + 32) + v128;
          *(a1 + 32) = v134 & 0x3FFFFFFFFFFFF000;
          v135 = fd_pread(*(v56 + 4488), v133, v132, v134 & 0x3FFFFFFFFFFFF000);
          v124 = 0;
          *(a1 + 52) = 0;
          v122 = v134 - *(a1 + 32);
          v128 = v122;
          if (v135 == -1)
          {
            goto LABEL_223;
          }
        }

        else
        {
          *(a1 + 52) = ++v124;
        }

        v122 = v128 + 1;
        v136 = &v55[v128];
        v137 = v55[v128];
        if (v55[v128] < 0)
        {
          if (v137 > 0xBF)
          {
            if (v137 > 0xDF)
            {
              if (v137 > 0xEF)
              {
                v137 = *&v55[v122];
                v122 = v128 + 5;
              }

              else
              {
                v137 = ((v137 & 0xF) << 24) | (v55[v122] << 16) | (v136[2] << 8) | v136[3];
                v122 = v128 + 4;
              }
            }

            else
            {
              v137 = ((v137 & 0x1F) << 16) | (v55[v122] << 8) | v136[2];
              v122 = v128 + 3;
            }
          }

          else
          {
            v138 = v55[v122] | ((v137 & 0x3F) << 8);
            v122 = v128 + 2;
            v137 = v138;
          }
        }

        v128 = v122;
      }

      while (v137);
    }

    v122 = v128;
LABEL_249:
    v244 = v122;
    v101 = *(&v225 + 1);
    v139 = v225;
    if (v225 == 0)
    {
      v139 = *(v43 + 16);
      *(v43 + 16) = 0;
    }

    v140 = *(v43 + 8);
    v141 = *(**(a1 + 408) + 32);
    v142 = 2 * v140;
    if (v140 >= v141)
    {
      v141 = 2 * v140;
    }

    if (*(&v225 + 1) <= v44 && *(&v225 + 1))
    {
      v143 = v44 <= v141 || *(&v225 + 1) > v141;
      if (v143 && *(&v225 + 1) >= v140)
      {
        goto LABEL_384;
      }
    }

    if (v139 - 1 < v44)
    {
      v145 = v44 <= v141 || v139 > v141;
      if (v145 && v139 >= v140)
      {
        goto LABEL_384;
      }
    }

    if (v139 - 1 < *(&v225 + 1))
    {
      v147 = *(&v225 + 1) <= v141 || v139 > v141;
      if (v147 && v139 >= v140)
      {
        goto LABEL_384;
      }
    }

    if (*(&v225 + 1))
    {
      v112 = 0;
    }

    else
    {
      v112 = v139;
    }

    if (*(&v225 + 1) && v139)
    {
      v112 = 0;
      *(v43 + 16) = v139;
    }

    if (!(v112 | *(&v225 + 1)))
    {
LABEL_315:
      instr_release(*(v43 + 24));
      v9 = v237;
      goto LABEL_316;
    }

    if (!*(&v225 + 1))
    {
      if (!v112)
      {
        goto LABEL_315;
      }

      v9 = v237;
      if (v112 == v44)
      {
        goto LABEL_316;
      }

      v149 = *(v43 + 48);
      v150 = *(v43 + 40);
      v152 = *(v43 + 148);
      v151 = *(v43 + 152);
      v153 = *(v43 + 156);
      v155 = *(v43 + 16);
      v154 = *(v43 + 24);
      if (v112 > v44 || v112 > *(v43 + 112))
      {
        if (v155 || v140 && (v112 <= v140 || v112 > v142))
        {
          goto LABEL_381;
        }

        goto LABEL_311;
      }

      if (v155)
      {
        goto LABEL_384;
      }

LABEL_371:
      *buf = v112;
      *&buf[8] = v154;
      *&buf[16] = v149;
      *&buf[20] = 0;
      v246 = v150;
      v247 = v152;
      v248 = v151;
      v249 = v153;
      memset(v250, 0, 15);
      check_oqpush_AnnotatedPositionOffset_t(v43 + 56, buf);
      if (*(a1 + 72) > v112)
      {
        v181 = *(v43 + 8);
        if (v112 < v181 && v112 > v181 >> 1)
        {
          *(a1 + 72) = v112;
        }
      }

      goto LABEL_316;
    }

    if (v112)
    {
      goto LABEL_381;
    }

    v9 = v237;
    if (*(&v225 + 1) != v44)
    {
      v113 = *(v43 + 48);
      v114 = *(v43 + 40);
      v116 = *(v43 + 148);
      v115 = *(v43 + 152);
      v117 = *(v43 + 156);
      v118 = *(v43 + 16);
      v119 = *(v43 + 24);
      if (*(&v225 + 1) > v44 || *(&v225 + 1) > *(v43 + 112))
      {
        if (v140 && (*(&v225 + 1) <= v140 || *(&v225 + 1) > v142))
        {
          goto LABEL_384;
        }

        goto LABEL_293;
      }

      goto LABEL_364;
    }

LABEL_316:
    *(v43 + 148) = 0;
    *v43 = 0;
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    PositionIterator_GetNext(v43);
    if (iterationIsLooping(v43, v44))
    {
      goto LABEL_358;
    }

LABEL_317:
    v49 = *v43;
    if (*(v43 + 188))
    {
      if (v49)
      {
LABEL_319:
        if (v9 == 1)
        {
          v158 = v9;
          v159 = *__error();
          v160 = _SILogForLogForCategory(10);
          v161 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v160, v161))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v160, v161, "Out of postings, but we have more positions data(1); readers out of synch.", buf, 2u);
          }

          *__error() = v159;
          v9 = v158;
        }

        if ((*v43 & 0x3FFFFFFFFFFFFFFFuLL) > *(a1 + 3328))
        {
          v50 = v15;
          goto LABEL_325;
        }

        v222 = __si_assert_copy_extra(0);
        v220 = v222;
        v223 = "";
        if (v222)
        {
          v223 = v222;
        }

        __message_assert("%s:%u: Unexpected code path %s ", "PayloadIterator.c", 5373, v223);
LABEL_472:
        free(v220);
        goto LABEL_383;
      }

      if (*(v43 + 80))
      {
LABEL_332:
        if (v9 == 1)
        {
          v163 = v9;
          v164 = *__error();
          v165 = _SILogForLogForCategory(10);
          v166 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v165, v166))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v165, v166, "Out of postings, but we have more positions data (3); readers out of synch.", buf, 2u);
          }

          *__error() = v164;
          v9 = v163;
        }

        if (!*(v43 + 8))
        {
          goto LABEL_381;
        }

        v168 = v12[2];
        v167 = v12[3];
        v169 = *v12;
        if (v167 >= v168)
        {
          v12[2] = 2 * v168;
          if (v169)
          {
            v170 = malloc_type_zone_realloc(queryZone, v169, 16 * v168, 0xA1A7ADA0uLL);
          }

          else
          {
            v170 = malloc_type_zone_malloc(queryZone, 16 * v168, 0x566E289CuLL);
          }

          v169 = v170;
          if (!v170)
          {
            _log_fault_for_malloc_failure();
          }

          *v12 = v169;
          v167 = v12[3];
        }

        v12[3] = v167 + 1;
      }

      else
      {
LABEL_340:
        if (v9 == 1)
        {
          v171 = v9;
          v172 = *__error();
          v173 = _SILogForLogForCategory(10);
          v174 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v173, v174))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v173, v174, "Out of postings, but we have more positions data(2); readers out of synch.", buf, 2u);
          }

          *__error() = v172;
          v9 = v171;
        }

        v175 = v235;
        v176 = *(v235 + 2);
        v167 = *(v235 + 3);
        v169 = *v235;
        if (v167 >= v176)
        {
          *(v235 + 2) = 2 * v176;
          if (v169)
          {
            v177 = malloc_type_zone_realloc(queryZone, v169, 16 * v176, 0xA1A7ADA0uLL);
          }

          else
          {
            v177 = malloc_type_zone_malloc(queryZone, 16 * v176, 0x566E289CuLL);
          }

          v169 = v177;
          if (!v177)
          {
            _log_fault_for_malloc_failure();
          }

          v175 = v235;
          *v235 = v169;
          v167 = *(v235 + 3);
        }

        *(v175 + 3) = v167 + 1;
      }

      *(v169 + v167) = v43;
      goto LABEL_358;
    }

    if (v49)
    {
      goto LABEL_84;
    }

    if (*(v43 + 80))
    {
LABEL_328:
      if (!*(v43 + 8))
      {
        goto LABEL_381;
      }

      if (*(v43 + 136) != 1)
      {
        goto LABEL_384;
      }

      v162 = *(a1 + 3336);
      *(a1 + 3336) = v162 + 1;
      *(v16 + 8 * v162) = v43;
    }

LABEL_358:
    if ((*a7 & 1) == 0)
    {
      v17 = *(a1 + 16);
      if (v17 != 1 || v15[2] != 1 || *(a1 + 3336) || v12[3])
      {
        continue;
      }
    }

    goto LABEL_399;
  }

  v45 = ipqpop(a1);
  v42 = v45[1];
  if (v42 != *(a1 + 3328))
  {
    goto LABEL_384;
  }

  v43 = v45;
  v44 = *v45;
  if (v42)
  {
    if (v44 <= v42 || v44 > 2 * v42)
    {
      goto LABEL_384;
    }
  }

  if (v44 != *v239)
  {
    goto LABEL_78;
  }

  ipqpush(a1, v45);
  if (dword_1EBF46AF4 >= 5)
  {
    v190 = *__error();
    v191 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
    {
      v192 = *(v43 + 24);
      v193 = *v43;
      *buf = 134218496;
      *&buf[4] = v43;
      *&buf[12] = 2048;
      *&buf[14] = v192;
      *&buf[22] = 2048;
      v246 = v193;
      _os_log_impl(&dword_1C278D000, v191, OS_LOG_TYPE_DEFAULT, "Pushback; pq we are done with a generation %p %p %llu", buf, 0x20u);
    }

    *__error() = v190;
  }

LABEL_399:
  v195 = v234;
  v194 = v235;
  if ((*a7 & 1) == 0)
  {
    if (dword_1EBF46AF4 >= 5)
    {
      v204 = *__error();
      v205 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
      {
        v206 = *a3;
        v207 = *(a1 + 80);
        *buf = 67109376;
        *&buf[4] = v206;
        *&buf[8] = 1024;
        *&buf[10] = v207;
        _os_log_impl(&dword_1C278D000, v205, OS_LOG_TYPE_DEFAULT, "Expected start: %d Actual start: %d", buf, 0xEu);
      }

      *__error() = v204;
      v208 = dword_1EBF46AF4;
      *a3 = *(a1 + 80);
      v195 = v234;
      v194 = v235;
      if (v208 >= 5)
      {
        v209 = *__error();
        v210 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
        {
          v211 = v15[2] - 1;
          v212 = *(v235 + 3);
          *buf = 134218240;
          *&buf[4] = v211;
          *&buf[12] = 1024;
          *&buf[14] = v212;
          _os_log_impl(&dword_1C278D000, v210, OS_LOG_TYPE_DEFAULT, "Pullback! %ld + %d", buf, 0x12u);
        }

        *__error() = v209;
        v195 = v234;
        v194 = v235;
      }
    }

    else
    {
      *a3 = *(a1 + 80);
    }

    if (v236 != *(a1 + 3328) && (v15[2] != 1 || *(v194 + 12) || v12[3]))
    {
      if (dword_1EBF46AF4 >= 5)
      {
        v213 = *__error();
        v214 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v214, OS_LOG_TYPE_DEFAULT, "Un-split", buf, 2u);
        }

        *__error() = v213;
        v195 = v234;
        v194 = v235;
      }

      *(a1 + 3328) = v236;
      while (*(a1 + 16) != 1 && (*(*(*a1 + 8) + 8) & 0x3FFFFFFFFFFFFFFFuLL) < v236)
      {
        v199 = ipqpop(a1);
        v200 = *(a1 + 3336);
        *(a1 + 3336) = v200 + 1;
        *(v16 + 8 * v200) = v199;
      }
    }

    if (v9 == 1 && (v15[2] != 1 || *(v194 + 12) || v12[3]))
    {
LABEL_384:
      v188 = __si_assert_copy_extra(0);
      __message_assert("%s:%u: failed assertion '%s' %s ");
      goto LABEL_385;
    }
  }

  CICleanUpClearItem(v195, v229);
  while (v15[2] != 1)
  {
    v196 = ipqpop(v15);
    BulkPullback(v15[3], v196);
  }

  free(*v15);
  free(v15);
  CICleanUpClearItem(v195, v230);
  _deferredArrayCleanup(v12);
  CICleanUpClearItem(v195, v231);
  _deferredArrayCleanup(v194);
  CICleanUpReset(v195, v232);
  if (*(a1 + 16) == 1 && !*(a1 + 3336))
  {
    v197 = 0;
  }

  else
  {
    v197 = *a7 ^ 1;
  }

  CICleanUpClearItem(v195, v233);
  CIIndexSetDisposePerThreadCache(&v240);
  return v197 & 1;
}