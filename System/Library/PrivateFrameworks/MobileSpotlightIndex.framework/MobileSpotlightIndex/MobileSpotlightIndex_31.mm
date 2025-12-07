void si_freeIndex0(uint64_t *a1, int a2)
{
  if (a2)
  {
    freeIndex(*a1);
  }

  else
  {
    v3 = *(a1[1] + 1104);
    v4 = qos_class_self();
    si_enqueue_work_with_qos(v3, v4, si_freeIndex, *a1);
  }

  free(a1);
}

BOOL si_merge_term_filter(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  v6 = triePropertyID(a2, a3);
  if (v6 != si_merge_term_filter_lastID)
  {
    si_merge_term_filter_lastID = v6;
  }

  if (v3 == 2)
  {
    if (*a2 > 5u)
    {
      return 0;
    }

    v7 = a2[1];
    return v7 < 6;
  }

  if (v3 != 1)
  {
    if (v3 < 3)
    {
      return 0;
    }

    if (*a2 > 5u)
    {
      return 0;
    }

    v9 = triePropertyID(a2, v3);
    if (!v9)
    {
      return 0;
    }

    if (*a2 == 1 && a2[1] == 2)
    {
      if ((v9 & 0x80000000) == 0)
      {
        v10 = v9;
        if (a1[4] <= v9)
        {
          return 0;
        }

        v11 = a1[6];
        return CFBitVectorGetBitAtIndex(v11, v10) != 0;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      v10 = v9;
      if (a1[1] <= v9)
      {
        return 0;
      }

      v11 = a1[3];
      return CFBitVectorGetBitAtIndex(v11, v10) != 0;
    }

    v12 = __si_assert_copy_extra_661(-1);
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 109, "bitIndex >= 0", v14);
    free(v13);
    if (__valid_fs(-1))
    {
      v15 = 2989;
    }

    else
    {
      v15 = 3072;
    }

    *v15 = -559038737;
    abort();
  }

  v7 = *a2;
  return v7 < 6;
}

uint64_t triePropertyID(_BYTE *a1, unsigned int a2)
{
  if (a2 < 3 || *a1 != 1)
  {
    return 0;
  }

  if (a1[a2 - 1] == 1 && a1[a2 - 2] == 1)
  {
    return 1;
  }

  v17 = 0;
  v16 = 0;
  if (a1[1] == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = a2 - v3;
  if ((a2 - v3) < 1)
  {
    v8 = &v16;
  }

  else
  {
    if (v4 >= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = v4;
    }

    v6 = &a1[v3];
    v7 = v5 - 1;
    v8 = &v16;
    do
    {
      v9 = v7;
      v10 = *v6++;
      v11 = tcmr[v10];
      *v8 = tcmr[v10];
      v8 = (v8 + 1);
      if ((v11 & 0x80000000) == 0)
      {
        break;
      }

      v7 = v9 - 1;
    }

    while (v9);
  }

  *v8 = 0;
  result = v16;
  if (v16 < 0)
  {
    if (SBYTE1(v16) < 0)
    {
      if (SBYTE2(v16) < 0)
      {
        if (SHIBYTE(v16) < 0)
        {
          if (v17 < 0)
          {
            v12 = __si_assert_copy_extra_661(-1);
            v13 = v12;
            v14 = "";
            if (v12)
            {
              v14 = v12;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v14);
            free(v13);
            if (__valid_fs(-1))
            {
              v15 = 2989;
            }

            else
            {
              v15 = 3072;
            }

            *v15 = -559038737;
            abort();
          }

          return ((HIBYTE(v16) & 0x7F) << 21) | (v17 << 28) | ((BYTE2(v16) & 0x7F) << 14) | ((BYTE1(v16) & 0x7F) << 7) | v16 & 0x7Fu;
        }

        else
        {
          return ((BYTE2(v16) & 0x7F) << 14) | (HIBYTE(v16) << 21) | ((BYTE1(v16) & 0x7F) << 7) | v16 & 0x7Fu;
        }
      }

      else
      {
        return ((BYTE1(v16) & 0x7F) << 7) | (BYTE2(v16) << 14) | v16 & 0x7Fu;
      }
    }

    else
    {
      return v16 & 0x7F | (BYTE1(v16) << 7);
    }
  }

  return result;
}

uint64_t si_message_trace_lifecycle(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = *(result + 2360);
    v7 = *(v6 + 88);
    if (v7)
    {
      return v7(*(v6 + 144), "com.apple.spotlight.mds.index-lifecycle", a2, a3, a4, a5, a6);
    }
  }

  return result;
}

uint64_t si_merge_unlock(uint64_t result, const void *a2)
{
  if (result)
  {
    return si_scheduler_resume(*(result + 872), a2, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 6931);
  }

  return result;
}

uint64_t si_merge_lock(uint64_t result)
{
  if (result)
  {
    v1 = (result + 1452);
    atomic_fetch_add((result + 1452), 1u);
    result = _si_scheduler_suspend(*(result + 872), "SpotlightIndex.c", 2139);
    atomic_fetch_add(v1, 0xFFFFFFFF);
  }

  return result;
}

void __si_merge_term_filter_ctx_init_block_invoke_3(uint64_t a1, CFIndex idx)
{
  v3 = idx;
  bit_vector_set(*(a1 + 32), idx);
  v4 = *(a1 + 40);

  bit_vector_set(v4, v3);
}

void si_deferqueue_cleanup(void *a1, int a2)
{
  if (!a2)
  {
    pthread_mutex_lock((a1[3] + 1320));
    v4 = (a1[3] + 1176);
    v6 = *a1;
    v5 = a1[1];
    while (1)
    {
      v7 = v4;
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4[1] == v6)
      {
        *v7 = *v4;
        free(v4);
        break;
      }
    }

    if (*v6 == v5)
    {
      v8 = *(v5 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __si_scheduler_remove_and_destroy_block_invoke;
      block[3] = &__block_descriptor_tmp_14;
      block[4] = v5;
      dispatch_sync(v8, block);
      v9 = v6[2];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __si_scheduler_remove_and_destroy_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_15_1473;
      v12[4] = v6;
      v12[5] = v5;
      dispatch_barrier_async(v9, v12);
    }

    pthread_mutex_unlock((a1[3] + 1320));
    v10 = a1[3];
    if (v10 && v10[149] && v10[130] && v10[(v10[138] != 0) + 126])
    {
      si_sync_ctx_create_with_defer_fd(a1[3], a1[2]);
      si_enqueue_work_with_qos(v10[138], 9, si_sync_index_delayed0, v11);
    }
  }

  v3 = a1[1];
  if (v3 && atomic_fetch_add((v3 + 96), 0xFFFFFFFF) == 1)
  {
    _si_scheduler_destroy(v3);
  }

  free(a1);
}

uint64_t _CreateDeferQueue(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  pthread_mutex_lock((a1 + 1320));
  if (*(a1 + 1152))
  {
    v14 = __si_assert_copy_extra_661(-1);
    v15 = v14;
    v16 = "";
    if (v14)
    {
      v16 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 7315, "!ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v16);
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

  *(a1 + 1152) = si_create_child_queue(v8);
  v9 = *a2 + 8 * a3;
  *(a1 + 1304) = *(*v9 + 80);
  v10 = *(v9 + 8 * a4 - 8);
  LODWORD(v11) = *(v10 + 68);
  v12 = *(v10 + 80);
  if (v11 >= 2)
  {
    v11 = v11;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 1312) = v12 + v11;

  return pthread_mutex_unlock((a1 + 1320));
}

uint64_t new_live_index(uint64_t a1, int a2, unint64_t a3)
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 1384);
  v66 = *(v6 + 8);
  v72 = 0;
  if (!fd_setDir(*(a1 + 32), &v72))
  {
    return 0;
  }

  v64 = a2;
  cf = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"tmp.live.%d.", v66);
  v7 = ((*(a1 + 828) & 1) << 6) ^ 0x50;
  if (*(a1 + 2072))
  {
    v7 |= 0x100u;
  }

  if (*(a1 + 2073))
  {
    v7 |= 0x400u;
  }

  v8 = *(a1 + 6584);
  v9 = v7 | (v8 >> 13) & 0x800;
  if (*(a1 + 6944))
  {
    v10 = v9 | 0x1000;
  }

  else
  {
    v10 = v9;
  }

  v11 = ~(v8 >> 7) & 0x8000;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 0x40000000;
  v71[2] = __new_live_index_block_invoke;
  v71[3] = &__block_descriptor_tmp_871;
  v71[4] = a1;
  if (v66)
  {
    v12 = *(*v6 + 8 * (v66 - 1));
    LODWORD(v13) = *(v12 + 68);
    if (v13 >= 2)
    {
      v13 = v13;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v12 + 80) + v13;
    if (v14 <= a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = v14;
    }

    v16 = *(a1 + 32);
    v17 = *(v12 + 40);
    v18 = *(a1 + 1284);
    v19 = *(a1 + 1192);
    if (v19)
    {
      v20 = v11;
      v21 = *(v12 + 40);
      vector_store = db_get_vector_store(v19);
      v17 = v21;
      v11 = v20;
      v23 = vector_store;
    }

    else
    {
      v23 = 0;
    }

    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 0x40000000;
    v69[2] = __new_live_index_block_invoke_3;
    v69[3] = &__block_descriptor_tmp_873;
    v69[4] = a1;
    New = ContentIndexCreateNew(v16, cf, v15, v17, v10 | v11, 1, v18, v23, v69, v71, *(a1 + 60));
    v40 = *(*v6 + 8 * (v66 - 1));
    v41 = v15;
    v42 = 7523;
  }

  else
  {
    v25 = *(a1 + 1392);
    v26 = *(*v25 + 8 * (*(v25 + 8) - 1));
    LODWORD(v27) = *(v26 + 68);
    if (v27 >= 2)
    {
      v27 = v27;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(v26 + 80) + v27;
    if (v28 <= a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = v28;
    }

    v29 = *(a1 + 32);
    v30 = *(v26 + 40);
    v31 = *(a1 + 1284);
    v32 = *(a1 + 1192);
    if (v32)
    {
      v33 = v10;
      v34 = v11;
      v35 = *(a1 + 1284);
      v36 = v6;
      v37 = *(a1 + 32);
      v38 = db_get_vector_store(v32);
      v29 = v37;
      v6 = v36;
      v31 = v35;
      v11 = v34;
      v10 = v33;
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 0x40000000;
    v70[2] = __new_live_index_block_invoke_2;
    v70[3] = &__block_descriptor_tmp_872;
    v70[4] = a1;
    New = ContentIndexCreateNew(v29, cf, v15, v30, v10 | v11, 1, v31, v39, v70, v71, *(a1 + 60));
    v40 = *(*v25 + 8 * (*(v25 + 8) - 1));
    v41 = v15;
    v42 = 7518;
  }

  _ContentIndexSetPayloadMaxCount(v40, v41, v42);
  CFRelease(cf);
  if (New)
  {
    SIActivityJournalNewLiveIndex((a1 + 2192), v66, v15);
    v43 = *(v6 + 8);
    if (v43)
    {
      ContentIndexSetEmergency(New, *(*(*v6 + 8 * (v66 - 1)) + 44));
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __new_live_index_block_invoke_4;
    aBlock[3] = &__block_descriptor_tmp_874;
    aBlock[4] = a1;
    aBlock[5] = New;
    ContentIndexSetDirtyCallback(New, aBlock);
    *(New + 15201) = 4;
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    __buf = 0u;
    v74 = 0u;
    v67 = 0;
    ContentIndexSyncIndex(New, &__buf, &v67);
    v44 = ContentIndexListClone(v6);
    v45 = v44;
    v46 = *(v44 + 3);
    if (v46 <= *(v44 + 2))
    {
      v47 = 2 * v46;
      *(v44 + 3) = v47;
      *v44 = malloc_type_realloc(*v44, 8 * v47, 0x2004093837F09uLL);
    }

    memset(__str, 0, 255);
    snprintf(__str, 0xFFuLL, "live.%d.", v66);
    bzero(&__buf + 8, 0x208uLL);
    *&__buf = 0x6D6F76650A00;
    DWORD2(__buf) = 2;
    LODWORD(v74) = v66;
    HIDWORD(v74) = 1;
    *(*v45 + 8 * v66) = New;
    *(v45 + 16) = v66;
    ++*(v45 + 8);
    si_clone_index_metadata_to_inflight(v48);
    __strlcpy_chk(&v78, (New + 15208), 255, 255);
    v49 = si_openat_protected(*(a1 + 32), "tmp.movePlan", 1538, 3);
    pwrite(v49, &__buf, 0x210uLL, 0);
    fcntl(v49, 85);
    ContentIndexChangePrefix(v50);
    unlinkat(*(a1 + 32), "tmp.movePlan", 2048);
    close(v49);
    v56 = v6;
    atomic_compare_exchange_strong((a1 + 1384), &v56, v45);
    if (v56 != v6)
    {
      v60 = __si_assert_copy_extra_661(*(a1 + 32));
      v61 = v60;
      v62 = "";
      if (v60)
      {
        v62 = v60;
      }

      __message_assert("%s:%u: failed assertion '%s' %s This should be impossible; this thread is supposed to be  suspended when the other thread changes index sets.", "SpotlightIndex.c", 7580, "OSAtomicCompareAndSwapPtrBarrier(oldIndexSet,indexSet,(void* volatile*)indexSetPtr)", v62);
      free(v61);
      if (__valid_fs(*(a1 + 32)))
      {
        v63 = 2989;
      }

      else
      {
        v63 = 3072;
      }

      *v63 = -559038737;
      abort();
    }

    si_write_index_state(a1, 1, 0, v51, v52, v53, v54, v55);
    if (v64)
    {
      si_cleanup(a1, v6);
      atomic_fetch_add_explicit((a1 + 1400), 1u, memory_order_relaxed);
      if (!v43)
      {
        goto LABEL_42;
      }
    }

    else
    {
      free(*v6);
      free(v6);
      if (!v43)
      {
        goto LABEL_42;
      }
    }

    _CIDisableUpdates(v57);
    New = *(*v45 + 8 * (v66 - 1));
  }

LABEL_42:
  v58 = v72;
  MEMORY[0x1C6921200](v72);
  if ((v58 & 0x80000000) == 0)
  {
    close(v58);
  }

  return New;
}

void si_recycleForBadIndex(uint64_t a1, uint64_t a2, const char *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  v7 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v10 = "si_recycleForBadIndex";
    v11 = 1024;
    v12 = 17389;
    v13 = 2080;
    v14 = a3;
    _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: recycle %s", buf, 0x1Cu);
  }

  *__error() = v6;
  _CIMakeInvalid(a2);
  if (a1 && (atomic_load_explicit((a1 + 2439), memory_order_acquire) & 1) == 0)
  {
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      if (!atomic_fetch_add_explicit(&si_recycleForBadIndex__crashCount, 1u, memory_order_relaxed))
      {
        v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"recycle, message:%s", a3);
        getpid();
        SISimulateCrashForPid(0, v8);
        if (v8)
        {
          CFRelease(v8);
        }
      }
    }
  }

  si_makeUnavailable(a1, 22, 2, 7, a3);
}

void si_scanEnded(atomic_uint **a1, int a2)
{
  if (!a2)
  {
    v4 = *a1;
    if (**(*a1 + 174))
    {
      v5 = *(v4 + 177);
      if (v5)
      {
        v6 = *(v5 + 88);
        if (v6)
        {
          if (!*(v5 + 240))
          {
            v6(v5, *(v5 + 24));
          }
        }
      }

      si_sync_ctx_create_with_defer_fd(v4, 0);
      *(v7 + 64) = a1[8];
      a1[8] = 0;
      syncIndex(v7, 0);
      v8 = a1[1][14];
      if (gSISystemOnBattery == 1 && (v9 = *(v4 + 295)) != 0 && (v10 = *(v9 + 80)) != 0)
      {
        v11 = *(v9 + 144);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 0x40000000;
        v12[2] = __si_scanEnded_block_invoke;
        v12[3] = &__block_descriptor_tmp_888;
        v13 = v8;
        v10(v11, 0, @"ScanEnded", v12);
      }

      else
      {
        setupAndIssueMergeScan(v4, v8, 0, 0, 0);
      }
    }
  }

  si_sync_ctx_free(a1, a2 != 0, 9955, "void si_scanEnded(si_sync_ctx *, Boolean)");
}

void __si_scanEnded_block_invoke(uint64_t result, void *a2, void *a3, uint64_t a4, NSObject *a5)
{
  if (a2)
  {
    setupAndIssueMergeScan(a2, *(result + 32), a3, a4, a5);
  }
}

void setupAndIssueMergeScan(void *a1, int a2, void *a3, uint64_t a4, NSObject *a5)
{
  v18 = 0;
  v19 = a2;
  v9 = si_needsVaccuum(a1[173], &v19, &v18);
  v10 = v18;
  if (v18)
  {
    v11 = v9;
    v12 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
    *v12 = a1;
    v12[16] = 1;
    v12[1041] = v11;
    *(v12 + 2) = v19;
    *(v12 + 3) = v10;
    v12[1042] = 0;
    *(v12 + 131) = "void setupAndIssueMergeScan(SIRef, int32_t, _Bool, xpc_activity_t, _Bool *, dispatch_group_t)";
    *(v12 + 274) = 6;
    v12[1100] = 1;
    __strlcpy_chk((v12 + 17), "live.%d.", v17);
    v13 = v12 + 1064;
    si_power_info_init((v12 + 1064), a3, a4, a5);
    if (!*(v12 + 136) && !*v13)
    {
      v15 = a1[295];
      if (v15)
      {
        v16 = *(v15 + 64);
        if (v16)
        {
          *v13 = v16(*(v15 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9898, "void setupAndIssueMergeScan(SIRef, int32_t, _Bool, xpc_activity_t, _Bool *, dispatch_group_t)");
        }
      }
    }

    v14 = a1[133];

    si_enqueue_work(v14, si_mergeIndex, v12);
  }
}

BOOL si_needsVaccuum(uint64_t *a1, _DWORD *a2, _DWORD *a3)
{
  *a3 = 0;
  v3 = *(a1 + 2);
  v4 = *a1;
  if (!v3)
  {
    goto LABEL_14;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
LABEL_3:
  --v3;
  do
  {
    v8 = *(v4 + 8 * v3);
    if (v8[14] == *a2)
    {
      v6 = v8[10];
      v7 = 1;
      *a3 = 1;
      v5 = v8;
      if (v3)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }

    --v3;
  }

  while (v3 != -1);
  v8 = v5;
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = v9 - 1;
    while (*(*(v4 + 8 * v10) + 40) != v6)
    {
      if (!v10--)
      {
        goto LABEL_14;
      }
    }

    v13 = 0;
    v17 = 0;
    v18 = v10 + 1;
    v19 = 8 * v10;
    v20 = v18;
    while (1)
    {
      v4 = *a1;
      v21 = *(*a1 + v19);
      if (v21[10] != v6 && v21[13] != v8[13])
      {
        break;
      }

      ++*a3;
      v22 = atomic_load(v21 + 4);
      v17 += v22;
      LODWORD(v22) = v21[17];
      if (v22 >= 2)
      {
        v22 = v22;
      }

      else
      {
        v22 = 0;
      }

      v13 += v22;
      v19 -= 8;
      if (!--v20)
      {
        v4 = *a1;
        break;
      }
    }

    v14 = v18 - *a3;
    v12 = 3 * v17;
  }

  else
  {
LABEL_14:
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v15 = *(v4 + 8 * (v14 & ~(v14 >> 31)));
  if (!v15)
  {
    return 0;
  }

  *a2 = *(v15 + 56);
  return v13 < v12;
}

_DWORD *si_getSyncIndex(uint64_t a1, int a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1392);
  v4 = *(a1 + 1384);
  v5 = *(v3 + 2);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5 - 1;
    do
    {
      if ((v6 & 1) != 0 || (v8 = *(*v3 + 8 * v7), v9 = atomic_load((v8 + 36)), (v9 & 3) != 0) || *(v8 + 15203) == 1)
      {
        v10 = *(*v3 + 8 * v7);
        v11 = atomic_load((v10 + 36));
        if ((v11 & 3) == 0 && (*(v10 + 15203) & 1) == 0)
        {
          v27 = __si_assert_copy_extra_661(-1);
          v28 = v27;
          v29 = "";
          if (v27)
          {
            v29 = v27;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10469, "!ContentIndexWritable(indexSet->index[i-1])", v29);
LABEL_36:
          free(v28);
          if (__valid_fs(-1))
          {
            v30 = 2989;
          }

          else
          {
            v30 = 3072;
          }

          *v30 = -559038737;
          abort();
        }

        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

      v12 = v7-- + 1;
    }

    while (v12 > 1);
  }

  v13 = *(v4 + 4);
  if (v13 != -1)
  {
    v14 = *(*v4 + 8 * v13);
    v15 = atomic_load((v14 + 36));
    if ((v15 & 3) != 0 || *(v14 + 15203) == 1)
    {
      v35 = __si_assert_copy_extra_661(-1);
      v28 = v35;
      v36 = "";
      if (v35)
      {
        v36 = v35;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10472, "indexLiveSet->currentIndex==~0 || ContentIndexWritable(indexLiveSet->index[indexLiveSet->currentIndex])", v36);
      goto LABEL_36;
    }
  }

  v16 = *(v3 + 4);
  if (v16 != -1)
  {
    v17 = *(*v3 + 8 * v16);
    v18 = atomic_load((v17 + 36));
    if ((v18 & 3) == 0 && (*(v17 + 15203) & 1) == 0)
    {
      v20 = *v3;
      v19 = *(v3 + 4);
      goto LABEL_20;
    }
  }

  v19 = *(v4 + 4);
  if (v19 != -1)
  {
    v20 = *v4;
LABEL_20:
    LiveIndex = *(v20 + 8 * v19);
    goto LABEL_22;
  }

  LiveIndex = si_getLiveIndex(*(a1 + 1384));
LABEL_22:
  if (*LiveIndex != -1163003219)
  {
    v31 = __si_assert_copy_extra_661(-1);
    v28 = v31;
    v32 = "";
    if (v31)
    {
      v32 = v31;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10481, "ContentIndexValidIndex(cindex)", v32);
    goto LABEL_36;
  }

  v22 = atomic_load(LiveIndex + 9);
  if ((v22 & 3) != 0 || *(LiveIndex + 15203) == 1)
  {
    v33 = __si_assert_copy_extra_661(-1);
    v28 = v33;
    v34 = "";
    if (v33)
    {
      v34 = v33;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10482, "ContentIndexWritable(cindex)", v34);
    goto LABEL_36;
  }

  if (a2 && LiveIndex[10] != a2 && (LiveIndex[11] & 1) == 0)
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = LiveIndex[10];
      *buf = 136315906;
      v38 = "si_getSyncIndex";
      v39 = 1024;
      v40 = 10485;
      v41 = 1024;
      v42 = a2;
      v43 = 1024;
      v44 = v26;
      _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: Unexpected transaction id %d != %d", buf, 0x1Eu);
    }

    *__error() = v23;
  }

  return LiveIndex;
}

uint64_t si_mergeOneIndex(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0;
  if (!fd_setDir(*(a1 + 32), &v12))
  {
    return 0;
  }

  v4 = *(a1 + 1384);
  v5 = ContentIndexListClone(v4);
  bzero(v13, 0x400uLL);
  v6 = fcntl(*(a1 + 32), 50, v13);
  if (v13[0])
  {
    v7 = v6 < 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v13;
  }

  v9 = OuterMerge(a1, *(a2 + 56), 1u, (a1 + 1384), v4, v5, v8, "live.%d.", 256, 0);
  v10 = v12;
  MEMORY[0x1C6921200](v12);
  if ((v10 & 0x80000000) == 0)
  {
    close(v10);
  }

  return v9;
}

uint64_t si_indexIdForOID(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1384);
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = v5 - 1;
    while (1)
    {
      v7 = *(*v4 + 8 * v6);
      if (v7)
      {
        result = _CIDocIdForOID(v7, a2);
        if (result)
        {
          break;
        }
      }

      v9 = v6-- + 1;
      if (v9 <= 1)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v10 = *(a1 + 1392);
    v11 = *(v10 + 8);
    if (v11)
    {
      v12 = v11 - 1;
      while (1)
      {
        v13 = *(*v10 + 8 * v12);
        if (v13)
        {
          result = _CIDocIdForOID(v13, a2);
          if (result)
          {
            break;
          }
        }

        v14 = v12-- + 1;
        if (v14 <= 1)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SICreateIndex(uint64_t *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, __int128 *a9, uint64_t a10, uint64_t a11)
{
  v35 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (!CFStringGetFileSystemRepresentation(a2, buffer, 1024))
  {
    return 0xFFFFFFFFLL;
  }

  result = open(buffer, 1081344);
  if (result != -1)
  {
    v20 = result;
    if (a6 && a7 && a8)
    {
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = *a9;
      v26 = *(a9 + 2);
      result = _SIOpenIndex(v25, a1, result, a3, a4, a5, &v27, &v25, a10, a11, 0, &SICreateIndex_cancel);
      if ((result & 0x80000000) == 0)
      {
        v21 = *(&v30 + 1);
        v22 = v28;
        v23 = v27.n128_u64[1];
        *a6 = *(&v28 + 1) + v30 + v27.n128_u64[0];
        v24 = *(&v29 + 1);
        *a7 = v29 + v21 + v23;
        *a8 = v24 + v31 + v22;
      }
    }

    else
    {
      v27 = *a9;
      *&v28 = *(a9 + 2);
      result = _SIOpenIndex(v27, a1, result, a3, a4, a5, 0, &v27, a10, a11, 0, &SICreateIndex_cancel);
    }

    if ((a5 & 6) == 2 && (result & 0x80000000) != 0)
    {
      if (a6)
      {
        *a6 = 0;
      }

      if (a7)
      {
        *a7 = 0;
      }

      if (a8)
      {
        *a8 = 0;
      }

      v27 = *a9;
      *&v28 = *(a9 + 2);
      LODWORD(result) = SICreateNewIndex(a1, v20, a3, a4, a5, &v27, a10, a11, &SICreateIndex_cancel);
      if (result <= 1)
      {
        return 1;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t _SIOpenIndex(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11, _DWORD *a12)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = v13;
  v16 = v15;
  v456 = v17;
  v19 = v18;
  v460 = v20;
  v461 = v21;
  v23 = v22;
  v25 = v24;
  v515 = *MEMORY[0x1E69E9840];
  v510 = 0;
  v450 = open(".", 4, v12);
  _SITuningInit();
  makeThreadId();
  v509 = 0;
  v508 = 0;
  cf = 0;
  *a11 = 0;
  v464 = BYTE3(v19);
  _si_load_error_from_file(BYTE3(v19), v23);
  _si_set_error_str(0, 1);
  _si_set_rebuild_reason(0, 1, 1);
  v26 = openat(v23, "tmp.movePlan", 2);
  v473 = v25;
  if ((v26 & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  v27 = v26;
  bzero(__buf, 0x210uLL);
  if (prot_pread(v27, __buf, 0x210uLL, 0) == 528 && *__buf == 0x6D6F76650A00)
  {
    memset(v514, 0, 255);
    memset(v513, 0, 255);
    v466 = v19;
    if (*&__buf[8] <= 1)
    {
      if (!*&__buf[8])
      {
        if (__buf[12])
        {
          v43 = "live.";
        }

        else
        {
          v43 = "";
        }

        if (*&__buf[36] > 1)
        {
          if (*&__buf[36] != 2)
          {
            if (*&__buf[36] != 3)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }
        }

        else
        {
          if (*&__buf[36])
          {
            if (*&__buf[36] != 1)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (*&__buf[20])
            {
              v44 = 0;
              do
              {
                snprintf(v513, 0xFFuLL, "%s%d.", v43, v44 + *&__buf[16]);
                snprintf(v514, 0xFFuLL, "%s.%s%d.", "tmp.victim", v43, v44 + *&__buf[16]);
                ContentIndexCompleteChangePrefix(v23, v513, v514);
                ++v44;
              }

              while (v44 < *&__buf[20]);
            }

            *&__buf[36] = 1;
            pwrite(v27, __buf, 0x210uLL, 0);
            fcntl(v27, 85);
          }

          v45 = *&__buf[32];
          v46 = v23;
          if (*&__buf[32] < *&__buf[28])
          {
            do
            {
              v47 = v45;
              v48 = v46;
              v49 = *&__buf[16] + *&__buf[32] + 1;
              snprintf(v513, 0xFFuLL, "%s%d.", v43, v45 + *&__buf[24]);
              v50 = v49;
              v46 = v48;
              snprintf(v514, 0xFFuLL, "%s%d.", v43, v50);
              *&__buf[32] = v47;
              pwrite(v27, __buf, 0x210uLL, 0);
              fcntl(v27, 85);
              ContentIndexCompleteChangePrefix(v48, v513, v514);
              v45 = v47 + 1;
            }

            while ((v47 + 1) < *&__buf[28]);
          }

          *&__buf[36] = 2;
          pwrite(v27, __buf, 0x210uLL, 0);
          fcntl(v27, 85);
          LODWORD(v23) = v46;
        }

        snprintf(v514, 0xFFuLL, "%s%d.", v43, *&__buf[16]);
        ContentIndexCompleteChangePrefix(v23, &__buf[268], v514);
        *&__buf[36] = 3;
        pwrite(v27, __buf, 0x210uLL, 0);
        fcntl(v27, 85);
LABEL_47:
        rename_transitional_state(v23);
        goto LABEL_48;
      }

      if (*&__buf[8] == 1)
      {
        if (*&__buf[28] != 1)
        {
          if (*&__buf[28])
          {
            goto LABEL_48;
          }

          v30 = *&__buf[24];
          if (*&__buf[24] < *&__buf[12])
          {
            do
            {
              v31 = v30;
              *&__buf[24] = v30;
              pwrite(v27, __buf, 0x210uLL, 0);
              fcntl(v27, 85);
              snprintf(v513, 0xFFuLL, "live.%d.", v31 + *&__buf[16]);
              snprintf(v514, 0xFFuLL, "%d.", v31 + *&__buf[20]);
              ContentIndexCompleteChangePrefix(v23, v513, v514);
              v30 = v31 + 1;
            }

            while ((v31 + 1) < *&__buf[12]);
          }

          *&__buf[28] = 1;
          pwrite(v27, __buf, 0x210uLL, 0);
        }

        v32 = "live.0.";
        v33 = v23;
LABEL_26:
        ContentIndexCompleteChangePrefix(v33, &__buf[268], v32);
        goto LABEL_47;
      }
    }

    else
    {
      if (*&__buf[8] != 2)
      {
        if (*&__buf[8] == 3)
        {
          if (*&__buf[12] == 842150450)
          {
            _rename_prefix_suffix(v23, &__buf[268], ".offsets", v28, v29);
            _rename_prefix_suffix(v23, &__buf[268], ".data", v39, v40);
            _rename_prefix_suffix(v23, &__buf[268], ".header", v41, v42);
          }
        }

        else if (*&__buf[8] == 4)
        {
          ContentIndexCompleteChangePrefix(v23, &__buf[268], &__buf[12]);
        }

        goto LABEL_48;
      }

      if (__buf[12])
      {
        v34 = "live.";
      }

      else
      {
        v34 = "";
      }

      if (*&__buf[28] == 1)
      {
        goto LABEL_25;
      }

      if (!*&__buf[28])
      {
        v470 = v14;
        v35 = *&__buf[24];
        v36 = v23;
        while (v35 > *&__buf[16])
        {
          v37 = v36;
          v38 = v35--;
          snprintf(v513, 0xFFuLL, "%s%d.", v34, v35);
          snprintf(v514, 0xFFuLL, "%s%d.", v34, v38);
          *&__buf[24] = v38;
          v36 = v37;
          pwrite(v27, __buf, 0x210uLL, 0);
          fcntl(v27, 85);
          ContentIndexCompleteChangePrefix(v37, v513, v514);
        }

        *&__buf[28] = 1;
        pwrite(v27, __buf, 0x210uLL, 0);
        fcntl(v27, 85);
        v14 = v470;
        LODWORD(v23) = v36;
LABEL_25:
        snprintf(v514, 0xFFuLL, "%s%d.", v34, *&__buf[16]);
        v33 = v23;
        v32 = v514;
        goto LABEL_26;
      }
    }

LABEL_48:
    v19 = v466;
  }

  unlinkat(v23, "tmp.movePlan", 2048);
  close(v27);
LABEL_50:
  v51 = malloc_type_calloc(1uLL, 0x2788uLL, 0x10F00403822957CuLL);
  *v51 = 0xC0DE10DE10DEC0DELL;
  SIInitIndexLocks(v51);
  v506[0] = MEMORY[0x1E69E9820];
  v506[1] = 0x40000000;
  v506[2] = ___SIOpenIndex_block_invoke;
  v506[3] = &__block_descriptor_tmp_896;
  v506[4] = v51;
  *(v51 + 15) = v464;
  *(v51 + 8) = -1;
  *(v51 + 12) = -1;
  v52 = *v16;
  *(v51 + 3) = *(v16 + 2);
  *(v51 + 8) = v52;
  *(v51 + 295) = v14;
  *(v51 + 290) = 0;
  *(v51 + 824) = a12;
  *(v51 + 364) = 1;
  v53 = v460;
  if (v460)
  {
    v54 = ~(*(v460 + 28) << 20) & 0x400000;
  }

  else
  {
    v54 = 0;
  }

  v55 = *(v51 + 1646) & 0xFEBFFFFF | v54;
  *(v51 + 1646) = v55;
  v51[6944] = (v19 & 0x40000) != 0;
  v56 = *(v51 + 149);
  if (v56)
  {
    db_datastore_set_bg_assertion_flag(v56, (v19 & 0x40000) != 0);
    v55 = *(v51 + 1646);
  }

  *(v51 + 1741) = 0;
  v51[2072] = BYTE1(v19) & 1;
  if ((v19 & 0x100) != 0)
  {
    *(v51 + 1646) = v55 | 0x1000000;
    LOBYTE(v57) = 1;
  }

  else
  {
    LOBYTE(v57) = 0;
    if (v461 && (v55 & 0x1000000) != 0)
    {
      v57 = (*(v461 + 28) >> 4) & 1;
    }
  }

  v58 = 0uLL;
  *(v51 + 76) = 0u;
  *(v51 + 304) = -1;
  v59 = v450;
  *(v51 + 80) = 0u;
  *(v51 + 79) = 0u;
  *(v51 + 78) = 0u;
  *(v51 + 77) = 0u;
  *(v51 + 75) = 0u;
  v504 = 0;
  v503 = 0;
  v505 = 0;
  v502 = 0;
  v501 = 0;
  if (*a12)
  {
    __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12251, "open canceled");
    v60 = v57;
    v61 = 89;
LABEL_62:
    v62 = v473;
    goto LABEL_63;
  }

  v63 = v19 & 0x80040001;
  v64 = v19 & 4;
  v465 = v23;
  v455 = v64;
  if (v460)
  {
    v65 = *(v460 + 28);
    v66 = dup(*(v460 + 4));
    v63 = v19 & 0x80040001;
    v64 = v19 & 4;
    *(v51 + 12) = v66;
    LOBYTE(v67) = v51[2072];
    v68 = v65;
  }

  else
  {
    v67 = (v19 & 0x100) >> 8;
    v68 = 0;
  }

  v73 = v63;
  v462 = v64;
  v74 = v64 != 0;
  if (v67)
  {
    v75 = v68;
  }

  else
  {
    v75 = v74;
  }

  if ((v19 & 8) != 0)
  {
    v76 = 0;
    v77 = -1;
    v78 = 0;
    v79 = v57;
    goto LABEL_87;
  }

  v454 = v63;
  bzero(v514, 0x400uLL);
  v82 = guarded_dup(v465);
  *(v51 + 4) = v82;
  *(v51 + 5) = v83;
  if (v82 == -1 || MEMORY[0x1C6921200]())
  {
    v84 = *__error();
    __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12299, "invalid path");
    v60 = v57;
    v61 = v84;
    goto LABEL_62;
  }

  v457 = v73;
  v472 = v14;
  v89 = (v51[6944] ^ 1) & v57;
  registerForCloning(*(v51 + 8), v89 & 1);
  bzero(v513, 0x400uLL);
  v90 = *__error();
  v91 = _SILogForLogForCategory(11);
  v92 = 2 * (dword_1EBF46AF8 < 4);
  if (os_log_type_enabled(v91, v92))
  {
    v93 = fcntl(*(v51 + 8), 50, v513);
    v94 = 0;
    if (LOBYTE(v513[0]))
    {
      v95 = v93 < 0;
    }

    else
    {
      v95 = 1;
    }

    if (!v95)
    {
      v94 = v513;
    }

    *__buf = 134218242;
    *&__buf[4] = v51;
    *&__buf[12] = 2080;
    *&__buf[14] = v94;
    _os_log_impl(&dword_1C278D000, v91, v92, "%p Open fd %s", __buf, 0x16u);
  }

  v463 = v89;
  *__error() = v90;
  if (v51[2072] == 1)
  {
    *buf = 0;
    if (fd_setDir(*(v51 + 8), buf))
    {
      memset(__buf, 0, 144);
      if (!stat("activityJournal", __buf))
      {
        __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12324, "rebuild activity journal name");
        __si_set_rebuild_reason(v190, v191, "%s:%u: %s", "SpotlightIndex.c", 12325, "rebuild activity journal name");
        fd_resetDir(*buf);
        v14 = v472;
        v62 = v473;
        goto LABEL_249;
      }

      fd_resetDir(*buf);
    }
  }

  v500 = 0;
  v96 = check_crash_state(*(v51 + 8), v75, v19, &v500, 0);
  v97 = *__error();
  v98 = _SILogForLogForCategory(0);
  v99 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v98, v99))
  {
    v100 = v500;
    v101 = fcntl(*(v51 + 8), 50, v514);
    v102 = 0;
    if (LOBYTE(v514[0]))
    {
      v103 = v101 < 0;
    }

    else
    {
      v103 = 1;
    }

    if (!v103)
    {
      v102 = v514;
    }

    *__buf = 134218242;
    *&__buf[4] = v100;
    *&__buf[12] = 2080;
    *&__buf[14] = v102;
    _os_log_impl(&dword_1C278D000, v98, v99, "last_crash_delta: %ld for %s", __buf, 0x16u);
  }

  v104 = v96;
  *__error() = v97;
  if ((v500 - 1) <= 0x545E)
  {
    icu_rules_clear_cache();
  }

  v14 = v472;
  v62 = v473;
  if (v96)
  {
    v105 = *__error();
    v106 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      v234 = fcntl(*(v51 + 8), 50, v514);
      v235 = 0;
      *&__buf[4] = "_SIOpenIndex";
      *&__buf[14] = 12341;
      *__buf = 136315906;
      if (LOBYTE(v514[0]))
      {
        v236 = v234 < 0;
      }

      else
      {
        v236 = 1;
      }

      *&__buf[12] = 1024;
      if (!v236)
      {
        v235 = v514;
      }

      *&__buf[18] = 1024;
      *&__buf[20] = v104;
      *&__buf[24] = 2080;
      *&__buf[26] = v235;
      _os_log_error_impl(&dword_1C278D000, v106, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state: %d for %s", __buf, 0x22u);
    }

    *__error() = v105;
    if (CFPreferencesGetAppBooleanValue(@"SpotlightDisableIndexRebuild", *MEMORY[0x1E695E890], 0))
    {
      v107 = *__error();
      v108 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        *__buf = 136315394;
        *&__buf[4] = "_SIOpenIndex";
        *&__buf[12] = 1024;
        *&__buf[14] = 12353;
        _os_log_error_impl(&dword_1C278D000, v108, OS_LOG_TYPE_ERROR, "%s:%d: Index rebuild disabled by SpotlightDisableIndexRebuild", __buf, 0x12u);
      }

      *__error() = v107;
      goto LABEL_126;
    }

    __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12350, "repeated crashes");
LABEL_249:
    v59 = v450;
    v61 = 22;
    v60 = v463;
    goto LABEL_63;
  }

LABEL_126:
  v449 = check_crash_state(v465, v75, v19, 0, 1);
  v467 = v19;
  v447 = check_crash_state(v465, v75, v19, 0, 3);
  if (v447)
  {
    v510 = 2;
  }

  v109 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040A085CBA5uLL);
  *(v51 + 174) = v109;
  v109[3] = 2;
  v110 = malloc_type_calloc(2uLL, 8uLL, 0x2004093837F09uLL);
  v111 = *(v51 + 174);
  *v111 = v110;
  *(v111 + 16) = -1;
  v112 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040A085CBA5uLL);
  *(v51 + 173) = v112;
  v112[3] = 2;
  v113 = malloc_type_calloc(2uLL, 8uLL, 0x2004093837F09uLL);
  v114 = *(v51 + 173);
  *v114 = v113;
  *(v114 + 16) = -1;
  v499 = 0;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v498 = 0;
  *&v497[4] = 0;
  *v497 = 0;
  v116 = setThreadIdAndInfo(*(v51 + 8), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  *&v497[8] = HIDWORD(v116);
  v498 = v116;
  *&v497[4] = v117;
  *v497 = v118;
  v119 = threadData[9 * v116 + 1] + 320 * HIDWORD(v116);
  *(v119 + 216) = 0;
  v120 = *(v119 + 312);
  v121 = *(v119 + 224);
  if (v121)
  {
    v121(*(v119 + 288));
  }

  v496 = v498;
  v495 = *&v497[8];
  v494 = *v497;
  v14 = v472;
  v59 = v450;
  v53 = v460;
  if (_setjmp(v119))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *__buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", __buf, 2u);
    }

    *(v119 + 312) = v120;
    CIOnThreadCleanUpReset(v494);
    dropThreadId(v496, 1, add_explicit + 1);
    CICleanUpReset(v496, HIDWORD(v494));
    v123 = 0;
    v77 = -1;
    v78 = 0;
    v73 = v457;
    goto LABEL_134;
  }

  v458 = v120;
  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  if (SIIsAppleInternal_internal)
  {
    if (v462)
    {
      v163 = 0;
    }

    else
    {
      v163 = fd_create_protected(*(v51 + 8), "activityJournal.1", 536871433, 3u);
    }

    si_activity_journal_init((v51 + 2192), v163);
    fd_mark_purgable(*(v51 + 274));
  }

  v192 = CIMetaInfoOpenAndLock(v122);
  if (v192)
  {
    v193 = v192;
    v194 = v192;
    v195 = *__error();
    v196 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
    {
      *__buf = 136315650;
      *&__buf[4] = "_SIOpenIndex";
      *&__buf[12] = 1024;
      *&__buf[14] = 12393;
      *&__buf[18] = 1024;
      *&__buf[20] = v194;
      _os_log_error_impl(&dword_1C278D000, v196, OS_LOG_TYPE_ERROR, "%s:%d: CIMetaInfoOpenAndLock error %d", __buf, 0x18u);
    }

    *__error() = v195;
    bzero(__buf, 0x400uLL);
    snprintf(__buf, 0x400uLL, "CIMetaInfoOpenAndLock failed with %d", v193);
    __si_set_error_str(0, "%s:%u: %s", "SpotlightIndex.c", 12397, __buf);
    v197 = threadData[9 * v496 + 1] + 320 * v495;
    *(v197 + 312) = v458;
    v198 = *(v197 + 232);
    v62 = v473;
    if (v198)
    {
      v198(*(v197 + 288));
    }

    dropThreadId(v496, 0, add_explicit + 1);
    v61 = v194;
LABEL_258:
    v79 = v463;
LABEL_259:
    v59 = v450;
    goto LABEL_230;
  }

  v199 = *(v51 + 321);
  if (v51[2072] != 1)
  {
    if (v199 < 100)
    {
      goto LABEL_307;
    }

    goto LABEL_306;
  }

  if (v199 > 112)
  {
LABEL_306:
    v51[2073] = 1;
  }

LABEL_307:
  v493[0] = MEMORY[0x1E69E9820];
  v493[1] = 0x40000000;
  v493[2] = ___SIOpenIndex_block_invoke_904;
  v493[3] = &__block_descriptor_tmp_905;
  v493[4] = v51;
  check_touch_file(v465, "tmp.Glow", v493);
  v492[0] = MEMORY[0x1E69E9820];
  v492[1] = 0x40000000;
  v492[2] = ___SIOpenIndex_block_invoke_2;
  v492[3] = &__block_descriptor_tmp_906;
  v492[4] = v51;
  check_touch_file(v465, "Glow.created", v492);
  if ((v19 & 0x40) != 0)
  {
    *(v51 + 1646) |= 0x40u;
  }

  else
  {
    v491[0] = MEMORY[0x1E69E9820];
    v491[1] = 0x40000000;
    v491[2] = ___SIOpenIndex_block_invoke_3;
    v491[3] = &__block_descriptor_tmp_907;
    v491[4] = v51;
    check_touch_file(v465, "tmp.Cab", v491);
  }

  v459 = add_explicit;
  if ((v19 & 0x400) != 0)
  {
    *(v51 + 1646) |= 0x100u;
  }

  else
  {
    v490[0] = MEMORY[0x1E69E9820];
    v490[1] = 0x40000000;
    v490[2] = ___SIOpenIndex_block_invoke_4;
    v490[3] = &__block_descriptor_tmp_908;
    v490[4] = v51;
    check_touch_file(v465, "tmp.Star", v490);
  }

  v489[0] = MEMORY[0x1E69E9820];
  v489[1] = 0x40000000;
  v489[2] = ___SIOpenIndex_block_invoke_5;
  v489[3] = &__block_descriptor_tmp_910;
  v489[4] = v51;
  check_touch_file(v465, "tmp.DerivedIsMeV1", v489);
  v488[0] = MEMORY[0x1E69E9820];
  v488[1] = 0x40000000;
  v488[2] = ___SIOpenIndex_block_invoke_6;
  v488[3] = &__block_descriptor_tmp_912;
  v488[4] = v51;
  check_touch_file(v465, "DerivedIsMeV1.created", v488);
  v487[0] = MEMORY[0x1E69E9820];
  v487[1] = 0x40000000;
  v487[2] = ___SIOpenIndex_block_invoke_7;
  v487[3] = &__block_descriptor_tmp_913;
  v487[4] = v51;
  check_touch_file(v465, "derivedFromToIsMeNameUpdated1.created", v487);
  v486[0] = MEMORY[0x1E69E9820];
  v486[1] = 0x40000000;
  v486[2] = ___SIOpenIndex_block_invoke_8;
  v486[3] = &__block_descriptor_tmp_914;
  v486[4] = v51;
  check_touch_file(v465, "derivedFromToIsMeNameAdded1.created", v486);
  v485[0] = MEMORY[0x1E69E9820];
  v485[1] = 0x40000000;
  v485[2] = ___SIOpenIndex_block_invoke_9;
  v485[3] = &__block_descriptor_tmp_915;
  v485[4] = v51;
  check_touch_file(v465, "derivedFromToIsMeAliasUpdated1.created", v485);
  v484[0] = MEMORY[0x1E69E9820];
  v484[1] = 0x40000000;
  v484[2] = ___SIOpenIndex_block_invoke_10;
  v484[3] = &__block_descriptor_tmp_916;
  v484[4] = v51;
  check_touch_file(v465, "derivedFromToIsMeAliasAdded1.created", v484);
  v483 = 0;
  if (v462 || (index_state = si_read_index_state(v221), v223 = v51[2481], !v51[2481]))
  {
    if (v51[2072])
    {
      v228 = 75776;
    }

    else
    {
      v228 = 141312;
    }

    v229 = v228 & 0xFFFFFFF1 | (2 * (v19 & 4));
    if (CIMetaInfoRead((v51 + 1200), v51[2072]))
    {
      if (!v462 && (db_check_datastore(*(v51 + 8), v229) & 0x80000000) == 0)
      {
        *a11 = 1;
      }

      v230 = *__error();
      v231 = _SILogForLogForCategory(10);
      v59 = v450;
      v62 = v473;
      if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
      {
        *__buf = 136315650;
        *&__buf[4] = "_SIOpenIndex";
        *&__buf[12] = 1024;
        *&__buf[14] = 12518;
        *&__buf[18] = 1024;
        *&__buf[20] = -1;
        _os_log_error_impl(&dword_1C278D000, v231, OS_LOG_TYPE_ERROR, "%s:%d: CIMetaInfoRead error %d", __buf, 0x18u);
      }

      *__error() = v230;
      bzero(__buf, 0x400uLL);
      snprintf(__buf, 0x400uLL, "CIMetaInfoRead failed with %d", -1);
      __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12521, __buf);
      v232 = threadData[9 * v496 + 1] + 320 * v495;
      *(v232 + 312) = v458;
      v233 = *(v232 + 232);
      if (v233)
      {
        v233(*(v232 + 288));
      }

      dropThreadId(v496, 0, v459 + 1);
      v61 = -1;
      goto LABEL_492;
    }

    v250 = db_check_datastore(*(v51 + 8), v229);
    v251 = v250;
    v432 = *__error();
    v252 = *__error();
    v253 = _SILogForLogForCategory(0);
    v254 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v253, v254))
    {
      *__buf = 67109120;
      *&__buf[4] = v250;
      _os_log_impl(&dword_1C278D000, v253, v254, "db_check_datastore: %d", __buf, 8u);
    }

    *__error() = v252;
    if (v250 == -1 && v432 == 2)
    {
      v261 = *__error();
      v262 = _SILogForLogForCategory(0);
      v263 = 2 * (gSILogLevels[0] < 4);
      v14 = v472;
      if (os_log_type_enabled(v262, v263))
      {
        *__buf = 0;
        _os_log_impl(&dword_1C278D000, v262, v263, "file didn't exist, try shadow", __buf, 2u);
      }

      *__error() = v261;
      v264 = v457;
    }

    else
    {
      v14 = v472;
      v264 = v457;
      if (!v250)
      {
        v265 = 7;
        goto LABEL_361;
      }

      if (v250 != 2)
      {
        if (v250 != 1)
        {
          v309 = *__error();
          bzero(__buf, 0x400uLL);
          snprintf(__buf, 0x400uLL, "invalid datastore %d, %d", v250, v309);
          v297 = 12552;
LABEL_425:
          __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", v297, __buf);
          v310 = threadData[9 * v496 + 1] + 320 * v495;
          *(v310 + 312) = v458;
          v311 = *(v310 + 232);
          v62 = v473;
          if (v311)
          {
            v311(*(v310 + 288));
          }

          v61 = 0;
          dropThreadId(v496, 0, v459 + 1);
          goto LABEL_258;
        }

        v265 = 7;
        v251 = 1;
        v266 = 1;
        v267 = v229 | 1;
LABEL_362:
        v445 = v267;
        v446 = v266;
        v268 = v265 | 0x2000;
        if (!v449)
        {
          v268 = v265;
        }

        if (v447)
        {
          v269 = v268 | 0x4000;
        }

        else
        {
          v269 = v268;
        }

        if (v264)
        {
LABEL_368:
          v270 = v269;
          if (v269 != 7)
          {
            goto LABEL_434;
          }

          goto LABEL_369;
        }

        v435 = v251;
        v433 = reverseStoreNeedsRecover(*(v51 + 8));
        v275 = *__error();
        v276 = _SILogForLogForCategory(0);
        v277 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v276, v277))
        {
          *__buf = 67109120;
          *&__buf[4] = v433;
          _os_log_impl(&dword_1C278D000, v276, v277, "reverse store state: %x", __buf, 8u);
        }

        *__error() = v275;
        if (v433 < 0)
        {
          v278 = v433;
          v14 = v472;
          if (v433 == -1073623027)
          {
            goto LABEL_368;
          }

          if (v433 == -804450864)
          {
            if (v269 == 7)
            {
LABEL_369:
              v271 = db_restore_dirty_chunk_info(*(v51 + 8), &v501, v255, v256, v257, v258, v259, v260);
              if (v271)
              {
                v272 = v271;
                bzero(__buf, 0x400uLL);
                snprintf(__buf, 0x400uLL, "restore db dirty pages failed %d", v272);
                __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12613, __buf);
                v273 = 4;
              }

              else
              {
                v273 = 7;
              }

              if (v457)
              {
                v270 = v273;
              }

              else
              {
                v300 = reverseStoreRestoreDirtyBitmap(*(v51 + 8), &v503);
                v270 = v273;
                if (v300)
                {
                  v301 = v300;
                  bzero(__buf, 0x400uLL);
                  snprintf(__buf, 0x400uLL, "restore rs dirty pages failed %d", v301);
                  __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12623, __buf);
                  v270 = 4;
                }
              }

LABEL_434:
              v315 = *(v51 + 1646);
              if ((v315 & 0x10) != 0)
              {
                v316 = 48;
              }

              else
              {
                v316 = 16;
              }

              v317 = v270 | v316 | (2 * v455);
              if (!v454)
              {
                v317 |= 0x40u;
              }

              if (v51[2072])
              {
                v318 = v317 | 0x100;
              }

              else
              {
                v318 = v317;
              }

              v319 = SICopyProperty(v51, @"kSITokenizerUseCRF");
              if (v319)
              {
                v320 = v319;
                if (CFBooleanGetValue(v319))
                {
                  *(v51 + 1646) = *(v51 + 1646) & 0xF9FFFFFF | 0x2000000;
                }

                CFRelease(v320);
              }

              VersionForDirectory = ContentIndexGetVersionForDirectory(*(v51 + 8));
              v322 = VersionForDirectory;
              if (v51[2072] == 1)
              {
                if ((VersionForDirectory - 115) < 0xFFFFFFFD)
                {
                  v323 = 114;
                  goto LABEL_479;
                }
              }

              else if ((VersionForDirectory - 96) >= 5 && VersionForDirectory != 102)
              {
                v323 = 102;
LABEL_479:
                v356 = VersionForDirectory;
                if (VersionForDirectory >= v323 || (!v51[2072] ? (v357 = 95) : (v357 = 111), VersionForDirectory != -1 && VersionForDirectory < v357))
                {
                  bzero(__buf, 0x400uLL);
                  snprintf(__buf, 0x400uLL, "invalid index version reindexing %d, %d", v322, v323);
                  __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12709, __buf);
                  v358 = *__error();
                  v359 = _SILogForLogForCategory(0);
                  v360 = gSILogLevels[0] < 3;
                  if (os_log_type_enabled(v359, (gSILogLevels[0] < 3)))
                  {
                    *buf = 67109376;
                    *&buf[4] = v356;
                    *&buf[8] = 1024;
                    *&buf[10] = v323;
                    _os_log_impl(&dword_1C278D000, v359, v360, "*warn* Index version %d out of date, expected %d, reindexing", buf, 0xEu);
                  }

                  *__error() = v358;
                  if (!v462)
                  {
                    x_unlinkat(*(v51 + 8), "store.db", 0);
                    x_unlinkat(*(v51 + 8), ".store.db", 0);
                  }

                  v361 = threadData[9 * v496 + 1] + 320 * v495;
                  *(v361 + 312) = v458;
                  v362 = *(v361 + 232);
                  v59 = v450;
                  v62 = v473;
                  if (v362)
                  {
                    v362(*(v361 + 288));
                  }

                  v61 = 0;
                  dropThreadId(v496, 0, v459 + 1);
                  goto LABEL_492;
                }

                bzero(__buf, 0x400uLL);
                snprintf(__buf, 0x400uLL, "invalid index version recovering %d, %d", v322, v323);
                __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12703, __buf);
                v365 = *__error();
                v366 = _SILogForLogForCategory(0);
                v367 = gSILogLevels[0] < 3;
                if (os_log_type_enabled(v366, (gSILogLevels[0] < 3)))
                {
                  *buf = 67109376;
                  *&buf[4] = v356;
                  *&buf[8] = 1024;
                  *&buf[10] = v323;
                  _os_log_impl(&dword_1C278D000, v366, v367, "*warn* Index version %d out of date, expected %d, recovering", buf, 0xEu);
                }

                *__error() = v365;
                *a11 = 1;
                v363 = *(v51 + 364);
                v364 = -1;
                v14 = v472;
LABEL_497:
                *(v51 + 364) = v363;
                v368 = *__error();
                v369 = _SILogForLogForCategory(0);
                v370 = 2 * (gSILogLevels[0] < 4);
                v62 = v473;
                if (os_log_type_enabled(v369, v370))
                {
                  *__buf = 0;
                  _os_log_impl(&dword_1C278D000, v369, v370, "Could not open existing content index", __buf, 2u);
                }

                *__error() = v368;
                v371 = threadData[9 * v496 + 1] + 320 * v495;
                *(v371 + 312) = v458;
                v372 = *(v371 + 232);
                if (v372)
                {
                  v372(*(v371 + 288));
                }

                v61 = 0;
                dropThreadId(v496, 0, v459 + 1);
                bzero(__buf, 0x400uLL);
                snprintf(__buf, 0x400uLL, "content index open failed %d", v364);
                __si_set_error_str(0, "%s:%u: %s", "SpotlightIndex.c", 12752, __buf);
                goto LABEL_258;
              }

              v324 = v318;
              v325 = ((v315 >> 7) & 0x8000 | (v315 >> 13) & 0x800) ^ 0x8000;
              *a11 = 1;
              v436 = *(v51 + 364);
              v482[0] = MEMORY[0x1E69E9820];
              v482[1] = 0x40000000;
              v482[2] = ___SIOpenIndex_block_invoke_930;
              v482[3] = &__block_descriptor_tmp_931;
              v482[4] = v51;
              _si_next_index_id(v51, (*(*(v51 + 173) + 8) + *(*(v51 + 174) + 8)), 0, 1);
              v327 = *(v51 + 174);
              v328 = *(v51 + 173);
              v329 = *(v51 + 824);
              v330 = *(v51 + 149);
              if (v330)
              {
                vector_store = db_get_vector_store(v330);
              }

              else
              {
                vector_store = 0;
              }

              v332 = ContentIndexOpenBulk(v326, (v51 + 1200), v456, v327, v328, v324 | v325, v329, (v51 + 2408), &v483, vector_store, v482, v506);
              v333 = v332;
              v334 = *__error();
              v335 = _SILogForLogForCategory(0);
              v336 = 2 * (gSILogLevels[0] < 4);
              if (os_log_type_enabled(v335, v336))
              {
                v337 = *(v51 + 301);
                *__buf = 67109632;
                *&__buf[4] = v332;
                *&__buf[8] = 2048;
                *&__buf[10] = v51;
                *&__buf[18] = 2048;
                *&__buf[20] = v337;
                _os_log_impl(&dword_1C278D000, v335, v336, "ContentIndexOpenBulk: %d opened %p with recovery time %llu", __buf, 0x1Cu);
              }

              *__error() = v334;
              if (v332 == 3)
              {
                v333 = 0;
                v14 = v472;
                v59 = v450;
                v338 = v457;
                v339 = v19 & 4;
              }

              else
              {
                v14 = v472;
                v59 = v450;
                v338 = v457;
                v339 = v19 & 4;
                if (v332 < 0)
                {
                  v363 = v436;
                  v364 = v332;
                  goto LABEL_497;
                }
              }

              v340 = v333;
              if (!v462)
              {
                si_handle_tmp_files(*(v51 + 8), v332 == 3, (v19 >> 12) & 1, &v509, &v508, &cf);
                v339 = v19 & 4;
              }

              if (v333 == 2)
              {
                if (__si_invalid_term_update_set_key)
                {
                  __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12773, "invalid term update set from lion");
                  _si_set_invalid_term_update_set();
                }

                v341 = v445 | 0x20;
                if (v338)
                {
LABEL_506:
                  v373 = v446 ^ 1;
                  if ((v341 & 0x20) == 0)
                  {
                    v373 = 1;
                  }

                  if (v373)
                  {
                    memset(__buf, 0, 40);
                    *__buf = *(v51 + 8);
                    *&__buf[8] = "store.db";
                    v378 = *(v51 + 15);
                    *&__buf[16] = v341;
                    *&__buf[20] = v378;
                    v292 = v459;
                    if (SIIsAppleInternal_onceToken != -1)
                    {
                      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
                    }

                    datastore_with_ctx = 0;
                    if (SIIsAppleInternal_internal)
                    {
                      v380 = v51 + 2192;
                    }

                    else
                    {
                      v380 = 0;
                    }

                    *&__buf[24] = v380;
                    __buf[32] = 0;
                    *&__buf[40] = v51;
                    *&__buf[48] = _sdb_cache_flush_callback;
                    if ((v341 & 0x1000) == 0)
                    {
                      datastore_with_ctx = db2_get_datastore_with_ctx(__buf);
                    }

                    *(v51 + 149) = datastore_with_ctx;
                    v377 = *__error();
                  }

                  else
                  {
                    v374 = *__error();
                    v375 = _SILogForLogForCategory(0);
                    v376 = gSILogLevels[0] < 3;
                    v292 = v459;
                    if (os_log_type_enabled(v375, (gSILogLevels[0] < 3)))
                    {
                      *__buf = 0;
                      _os_log_impl(&dword_1C278D000, v375, v376, "*warn* datastore clean, index dirty, recovering...", __buf, 2u);
                    }

                    *__error() = v374;
                    v377 = 22;
                  }

                  if (!*(v51 + 149))
                  {
                    bzero(__buf, 0x400uLL);
                    snprintf(__buf, 0x400uLL, "open datastore failed %d", v377);
                    __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12830, __buf);
                    v389 = threadData[9 * v496 + 1] + 320 * v495;
                    *(v389 + 312) = v458;
                    v390 = *(v389 + 232);
                    if (v390)
                    {
                      v390(*(v389 + 288));
                    }

                    v61 = 0;
                    dropThreadId(v496, 0, v292 + 1);
                    goto LABEL_207;
                  }

                  *__buf = 0;
                  v381 = SICopyProperty(v51, @"kSINextIndexId");
                  if (v381)
                  {
                    v382 = v381;
                    v383 = CFGetTypeID(v381);
                    if (v383 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v382, kCFNumberSInt32Type, __buf);
                    }

                    CFRelease(v382);
                  }

                  if (*__buf > *(v51 + 364))
                  {
                    *(v51 + 364) = *__buf;
                  }

                  v308 = v449 != 0;
                  db_datastore_set_bg_assertion_flag(*(v51 + 149), v51[6944]);
                  if (v340)
                  {
                    if (!v462 && v340 == 2)
                    {
                      db_set_dirty_chunks(*(v51 + 149), 0, 0, 0);
                      db_store_dirty_chunk_info(*(v51 + 149), *(v51 + 8), 1, 0);
                      v384 = *(v51 + 828);
                      if (v384)
                      {
                        reverseStoreStoreDirtyBitmap(v384);
                      }

                      v385 = handleIndexRepair(v51, v14, v483);
                      if (v385)
                      {
                        v386 = v385;
                        bzero(__buf, 0x400uLL);
                        snprintf(__buf, 0x400uLL, "recover datastore error %d", v386);
                        __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12866, __buf);
                        goto LABEL_534;
                      }

LABEL_543:
                      v51[2481] = 4;
                      is_dirty = db_is_dirty(*(v51 + 149));
                      v397 = 4;
                      if (is_dirty)
                      {
                        v397 = 1;
                        v51[2481] = 1;
                      }

                      v123 = v340;
                      v51[2482] = v397;
                      if (v457)
                      {
                        v51[2483] = 0;
LABEL_555:
                        v399 = *(v51 + 174);
                        v400 = *(*(v51 + 173) + 8);
                        v401 = *(v399 + 8);
                        if (v51[6944] == 1)
                        {
                          v401 = *(v51 + 1242);
                        }

                        if (*(v399 + 8))
                        {
                          v402 = *(v399 + 8);
                          v403 = v51 + 2488;
                          v404 = **(v51 + 174);
                          for (i = 0; v402 != i; ++i)
                          {
                            v406 = atomic_load((*(v404 + 8 * i) + 32));
                            if (v406 > 0)
                            {
                              if (v406 == 1)
                              {
LABEL_567:
                                LOBYTE(v406) = 4;
                                v403[i] = 4;
                                goto LABEL_568;
                              }

                              if (v406 != 2)
                              {
LABEL_565:
                                LOBYTE(v406) = 1;
                              }
                            }

                            else
                            {
                              if (v406 == -1073623027)
                              {
                                goto LABEL_567;
                              }

                              if (v406 != -804450864)
                              {
                                goto LABEL_565;
                              }

                              LOBYTE(v406) = 3;
                            }

                            v403[i] = v406;
                            v51[2481] = 1;
LABEL_568:
                            v407 = **(v51 + 174);
                            *(*(v407 + 8 * i) + 15201) = v406;
                            v404 = v407;
                          }
                        }

                        if (!v400)
                        {
LABEL_581:
                          v307 = 0;
                          si_write_index_state(v51, 1, 0, v392, v393, v394, v395, v396);
                          goto LABEL_582;
                        }

                        v408 = v51 + 2488;
                        v409 = **(v51 + 173);
                        v410 = 8 * v400;
                        v411 = 0;
                        v412 = v401;
                        while (1)
                        {
                          v413 = atomic_load((*(v409 + v411) + 32));
                          if (v413 > 0)
                          {
                            if (v413 == 1)
                            {
LABEL_579:
                              LOBYTE(v413) = 4;
                              v408[v412] = 4;
                              goto LABEL_580;
                            }

                            if (v413 != 2)
                            {
LABEL_577:
                              LOBYTE(v413) = 1;
                            }
                          }

                          else
                          {
                            if (v413 == -1073623027)
                            {
                              goto LABEL_579;
                            }

                            if (v413 != -804450864)
                            {
                              goto LABEL_577;
                            }

                            LOBYTE(v413) = 3;
                          }

                          v408[v412] = v413;
                          v51[2481] = 1;
LABEL_580:
                          v414 = **(v51 + 173);
                          *(*(v414 + v411) + 15201) = v413;
                          ++v412;
                          v411 += 8;
                          v409 = v414;
                          if (v410 == v411)
                          {
                            goto LABEL_581;
                          }
                        }
                      }

                      v398 = *(v51 + 828);
                      if (v398)
                      {
                        LODWORD(v398) = *(v398 + 4416);
                        switch(v398)
                        {
                          case 0xC001D00D:
                            v51[2483] = 4;
                            goto LABEL_554;
                          case 0xD00D0DD0:
                            LOBYTE(v398) = 3;
                            break;
                          case 2:
                            break;
                          default:
                            v51[2483] = 1;
                            v51[2481] = 1;
LABEL_554:
                            v14 = v472;
                            v59 = v450;
                            v53 = v460;
                            v292 = v459;
                            goto LABEL_555;
                        }
                      }

                      v51[2483] = v398;
                      v510 |= 1u;
                      goto LABEL_554;
                    }
                  }

                  else
                  {
                    db_set_dirty_chunks(*(v51 + 149), v501, v502, SHIDWORD(v502));
                    v501 = 0;
                  }

                  if (v462)
                  {
                    v307 = 0;
                    v123 = v340;
                    goto LABEL_582;
                  }

                  goto LABEL_543;
                }

                if (handleDirStoreOverlay(v51))
                {
                  v510 |= 2u;
                }

                v342 = v445 | 0x20;
                v339 = v19 & 4;
              }

              else
              {
                v341 = v445;
                v342 = v445;
                if (v338)
                {
                  goto LABEL_506;
                }
              }

              v448 = v340;
              v343 = check_crash_state(*(v51 + 8), v339 != 0, v19, &v500, 2);
              bzero(__buf, 0x400uLL);
              v344 = *__error();
              v345 = _SILogForLogForCategory(0);
              v346 = 2 * (gSILogLevels[0] < 4);
              if (os_log_type_enabled(v345, v346))
              {
                v434 = v342;
                v347 = v346;
                v348 = v343;
                v349 = v500;
                v350 = fcntl(*(v51 + 8), 50, __buf);
                v351 = 0;
                if (__buf[0])
                {
                  v352 = v350 < 0;
                }

                else
                {
                  v352 = 1;
                }

                if (!v352)
                {
                  v351 = __buf;
                }

                *buf = 134218242;
                *&buf[4] = v349;
                v343 = v348;
                *&buf[12] = 2080;
                *&buf[14] = v351;
                v353 = v347;
                v342 = v434;
                _os_log_impl(&dword_1C278D000, v345, v353, "rs last_crash_delta: %ld for %s", buf, 0x16u);
              }

              *__error() = v344;
              v354 = openReverseStore(*(v51 + 8), v343, v448 == 2, v455 != 0, *(v51 + 824), &v503, v506);
              *(v51 + 828) = v354;
              if (v505)
              {
                CFRelease(v505);
                v505 = 0;
                v355 = *(v51 + 828);
              }

              else
              {
                v355 = v354;
              }

              v59 = v450;
              v504 = 0;
              v503 = 0;
              v340 = v448;
              if (!v355)
              {
                v510 |= 1u;
              }

              v341 = v342;
              goto LABEL_506;
            }

            v270 = v269;
            if (v269 != 4)
            {
              goto LABEL_434;
            }

            v279 = *__error();
            v280 = _SILogForLogForCategory(0);
            v281 = gSILogLevels[0] < 3;
            if (os_log_type_enabled(v280, (gSILogLevels[0] < 3)))
            {
              *__buf = 0x404000300;
              *&__buf[8] = 1024;
              *&__buf[10] = -804450864;
              *&__buf[14] = 1024;
              *&__buf[16] = v435;
              _os_log_impl(&dword_1C278D000, v280, v281, "*warn* datastore dirty, reverse store needs shadow -- forcing repair (%u, %u, %u)", __buf, 0x14u);
            }

            *__error() = v279;
            v431 = "ds dirty, rs needs shadow";
            v282 = 12575;
LABEL_432:
            __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", v282, v431);
            *a11 = 1;
LABEL_534:
            v387 = threadData[9 * v496 + 1] + 320 * v495;
            *(v387 + 312) = v458;
            v388 = *(v387 + 232);
            if (v388)
            {
              v388(*(v387 + 288));
            }

            v61 = 0;
            dropThreadId(v496, 0, v459 + 1);
            v79 = v463;
            v14 = v472;
            v62 = v473;
            goto LABEL_259;
          }
        }

        else
        {
          if (!v433)
          {
            if (!v446)
            {
              v270 = 4;
              v14 = v472;
              v53 = v460;
              goto LABEL_434;
            }

            v312 = *__error();
            v313 = _SILogForLogForCategory(0);
            v314 = gSILogLevels[0] < 3;
            if (os_log_type_enabled(v313, (gSILogLevels[0] < 3)))
            {
              *__buf = 0;
              _os_log_impl(&dword_1C278D000, v313, v314, "*warn* datastore needs shadow, reverse store dirty -- forcing repair", __buf, 2u);
            }

            *__error() = v312;
            v431 = "ds needs shadow, rs dirty";
            v282 = 12587;
            goto LABEL_432;
          }

          v278 = v433;
          v14 = v472;
          if (v433 == 2)
          {
            goto LABEL_368;
          }
        }

        bzero(__buf, 0x400uLL);
        snprintf(__buf, 0x400uLL, "invalid reverse store %d", v278);
        __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12600, __buf);
        v298 = threadData[9 * v496 + 1] + 320 * v495;
        *(v298 + 312) = v458;
        v299 = *(v298 + 232);
        if (v299)
        {
          v299(*(v298 + 288));
        }

        v61 = 0;
        dropThreadId(v496, 0, v459 + 1);
        v79 = v463;
        v62 = v473;
        goto LABEL_259;
      }
    }

    v265 = 4;
    v251 = 2;
LABEL_361:
    v266 = 0;
    v267 = v229;
    goto LABEL_362;
  }

  if (v51[6944] == 1 && v223 != 1 && v223 != 4)
  {
    v294 = index_state;
    v295 = *__error();
    v296 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v296, OS_LOG_TYPE_ERROR))
    {
      *__buf = 136315650;
      *&__buf[4] = "_SIOpenIndex";
      *&__buf[12] = 1024;
      *&__buf[14] = 12442;
      *&__buf[18] = 1024;
      *&__buf[20] = v223;
      _os_log_error_impl(&dword_1C278D000, v296, OS_LOG_TYPE_ERROR, "%s:%d: open indexstate not clean for locked indexing: %d", __buf, 0x18u);
    }

    *__error() = v295;
    bzero(__buf, 0x400uLL);
    snprintf(__buf, 0x400uLL, "open index state failed %d, %d", v294, v223);
    v297 = 12445;
    goto LABEL_425;
  }

  memcpy(__buf, v51 + 2480, sizeof(__buf));
  v224 = *__error();
  v225 = _SILogForLogForCategory(11);
  v226 = 2 * (dword_1EBF46AF8 < 4);
  if (os_log_type_enabled(v225, v226))
  {
    if (v223 > 4)
    {
      v227 = "unknown";
    }

    else
    {
      v227 = off_1E8192938[(v223 - 1)];
    }

    *buf = 134218242;
    *&buf[4] = v51;
    *&buf[12] = 2080;
    *&buf[14] = v227;
    _os_log_impl(&dword_1C278D000, v225, v226, "%p si state: %s", buf, 0x16u);
  }

  *__error() = v224;
  v283 = _SIOpenIndexFilesWithState(v51, v223, v454 == 0, (*(v51 + 1646) >> 4) & 1, v467, a11, &v483, v456, &v510, v449 != 0);
  v123 = v283;
  v284 = *__error();
  v285 = _SILogForLogForCategory(11);
  v286 = 2 * (dword_1EBF46AF8 < 4);
  if (os_log_type_enabled(v285, v286))
  {
    *buf = 134218240;
    *&buf[4] = v51;
    *&buf[12] = 1024;
    *&buf[14] = v283;
    _os_log_impl(&dword_1C278D000, v285, v286, "%p _SIOpenIndexFilesWithState: %d", buf, 0x12u);
  }

  *__error() = v284;
  v287 = *__error();
  if (v283 == 2)
  {
    v59 = v450;
    v292 = v459;
    if (handleDirStoreOverlay(v51))
    {
      v510 |= 2u;
    }

    v14 = v472;
    if (handleIndexRepair(v51, v472, v483))
    {
      __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12475, "recover datastore error");
      v290 = threadData[9 * v496 + 1] + 320 * v495;
      *(v290 + 312) = v458;
      v291 = *(v290 + 232);
      v62 = v473;
      if (!v291)
      {
        goto LABEL_399;
      }

      goto LABEL_398;
    }

    v293 = 0;
  }

  else
  {
    v59 = v450;
    if (v283 == -1)
    {
      v288 = *__error();
      v289 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "_SIOpenIndex";
        *&buf[12] = 1024;
        *&buf[14] = 12459;
        *&buf[18] = 1024;
        *&buf[20] = v287;
        _os_log_error_impl(&dword_1C278D000, v289, OS_LOG_TYPE_ERROR, "%s:%d: _SIOpenIndexFilesWithState error %d", buf, 0x18u);
      }

      *__error() = v288;
      __si_set_error_str(0, "%s:%u: %s", "SpotlightIndex.c", 12461, "_SIOpenIndexFilesWithState failed with -1");
      v290 = threadData[9 * v496 + 1] + 320 * v495;
      *(v290 + 312) = v458;
      v291 = *(v290 + 232);
      v14 = v472;
      v62 = v473;
      v292 = v459;
      if (!v291)
      {
        goto LABEL_399;
      }

LABEL_398:
      v291(*(v290 + 288));
LABEL_399:
      dropThreadId(v496, 0, v292 + 1);
      v61 = v287;
LABEL_492:
      v79 = v463;
      goto LABEL_230;
    }

    v293 = v223 == 3;
    v14 = v472;
    v292 = v459;
  }

  si_handle_tmp_files(*(v51 + 8), v293, (v467 >> 12) & 1, &v509, &v508, &cf);
  if (memcmp(__buf, v51 + 2480, 0x1000uLL))
  {
    si_write_index_state(v51, 0, 0, v302, v303, v304, v305, v306);
  }

  v307 = v287;
  v308 = 0;
LABEL_582:
  v444 = v308;
  v73 = v457;
  if ((v51[6944] & 1) == 0)
  {
    v415 = fd_create_protected(*(v51 + 8), "topK.v2.mdplistc", 0, 0);
    if (v415)
    {
      v416 = v415;
      memset(__buf, 0, 144);
      fd_stat(v415, __buf);
      v417 = fd_mmap(v416, *&__buf[96], 1, 1, 0);
      if (v417 != -1)
      {
        v439 = v417;
        *buf = v417;
        *&buf[8] = *&__buf[96];
        *&buf[16] = 0;
        v481[0] = 1;
        v481[1] = buf;
        v418 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
        v419 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v481, 0, v418 + 1);
        v479 = HIDWORD(v419);
        v480 = v419;
        v478 = __PAIR64__(v420, v421);
        v422 = threadData[9 * v419 + 1] + 320 * HIDWORD(v419);
        *(v422 + 216) = 0;
        v423 = *(v422 + 312);
        v424 = *(v422 + 224);
        v425 = v422;
        if (v424)
        {
          v424(*(v422 + 288));
        }

        v477 = v480;
        v476 = v479;
        v475 = v478;
        if (_setjmp(v425))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v474 = 0;
            _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v474, 2u);
          }

          v425[78] = v423;
          CIOnThreadCleanUpReset(v475);
          dropThreadId(v477, 1, v418 + 1);
          CICleanUpReset(v477, HIDWORD(v475));
        }

        else
        {
          *(v51 + 83) = _MDPlistContainerCreateWithBytes();
          v426 = threadData[9 * v477 + 1] + 320 * v476;
          *(v426 + 312) = v423;
          v427 = *(v426 + 232);
          if (v427)
          {
            v427(*(v426 + 288));
          }

          dropThreadId(v477, 0, v418 + 1);
          v14 = v472;
        }

        v292 = v459;
        v73 = v457;
        if (!*(v51 + 83))
        {
          munmap(v439, *&__buf[96]);
        }
      }

      fd_release(v416);
      v59 = v450;
      v53 = v460;
    }
  }

  v499 = 1;
  v428 = threadData[9 * v496 + 1] + 320 * v495;
  *(v428 + 312) = v458;
  v429 = *(v428 + 232);
  if (v429)
  {
    v429(*(v428 + 288));
  }

  dropThreadId(v496, 0, v292 + 1);
  v77 = v307;
  v78 = v444;
LABEL_134:
  if ((v499 & 1) == 0)
  {
    __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12951, "index setup error");
    v61 = 22;
LABEL_207:
    v79 = v463;
    v62 = v473;
LABEL_230:
    if (v505)
    {
      CFRelease(v505);
      v505 = 0;
    }

    v504 = 0;
    v503 = 0;
    _SICloseIndex(v51, 0);
    v182 = *(v51 + 149);
    if (v182)
    {
      db_release_datastore_no_sync(v182);
      *(v51 + 149) = 0;
    }

    v183 = *(v51 + 828);
    if (v183)
    {
      freeReverseDirStore(v183);
      *(v51 + 828) = 0;
    }

    *v62 = 0;
    v60 = v79;
LABEL_63:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v509)
    {
      CFRelease(v509);
    }

    MEMORY[0x1C6921200](v59);
    close(v59);
    free(v501);
    if (*(v51 + 5))
    {
      guarded_close_np();
      if ((v60 & 1) == 0)
      {
LABEL_75:
        ContentIndexListFree(*(v51 + 174));
        ContentIndexListFree(*(v51 + 173));
        if (v14)
        {
          v70 = *(v14 + 24);
          if (v70)
          {
            v70(v14);
          }
        }

        v71 = *(v51 + 187);
        if (v71)
        {
          CFRelease(v71);
        }

        free(v51);
        *v62 = 0;
        *__error() = v61;
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      close(*(v51 + 8));
      if ((v60 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v69 = *(v51 + 8);
    if ((v69 & 0x80000000) == 0)
    {
      unregisterForCloning(v69);
    }

    goto LABEL_75;
  }

  v76 = v123;
  v79 = v463;
  v19 = v467;
LABEL_87:
  v80 = v78;
  v452 = v79;
  v453 = v76;
  *v473 = v51;
  v471 = v14;
  v451 = v77;
  if (v73)
  {
    v81 = v510;
  }

  else if ((v19 & 8) != 0 || (v51[2072] & 1) != 0 || *(v51 + 828))
  {
    v81 = v510;
  }

  else
  {
    v81 = v510;
    if (!v510)
    {
      v85 = __si_assert_copy_extra_661(-1);
      v86 = v85;
      v87 = "";
      if (v85)
      {
        v87 = v85;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 12964, "fs_only || newIndex->dirStore || rebuildDirStore", v87);
      free(v86);
      if (__valid_fs(-1))
      {
        v88 = 2989;
      }

      else
      {
        v88 = 3072;
      }

      *v88 = -559038737;
      abort();
    }
  }

  v124 = SIInitIndex(v58, v51, v53, v461, v19, a10, v509, cf, 0, v81);
  if ((v124 & 0x80000000) != 0)
  {
    if (!__si_error_str_key || !pthread_getspecific(__si_error_str_key))
    {
      bzero(__buf, 0x400uLL);
      snprintf(__buf, 0x400uLL, "init index error %d", v124);
      __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 12975, __buf);
    }

    v61 = 22;
    v14 = v471;
    v62 = v473;
    goto LABEL_230;
  }

  if ((v81 & 1) == 0)
  {
    if ((v81 & 2) == 0)
    {
      goto LABEL_140;
    }

LABEL_147:
    x_unlinkat(v465, "mds64-crash-state-forward-path-index-v2", 2048);
    if (!v80)
    {
      goto LABEL_152;
    }

    goto LABEL_148;
  }

  x_unlinkat(v465, "mds64-crash-state-reverse-store-v2", 2048);
  if ((v81 & 2) != 0)
  {
    goto LABEL_147;
  }

LABEL_140:
  if (!v80)
  {
    goto LABEL_152;
  }

LABEL_148:
  __buf[0] = 0;
  v125 = db_clear_vector_fields(*(v51 + 149), __buf, *(v51 + 824), &__block_literal_global_942);
  if (__buf[0] == 1)
  {
    db_unlock_datastore(*(v51 + 149));
  }

  if (!v125)
  {
    x_unlinkat(v465, "mds64-crash-state-vector-index-v2", 2048);
  }

LABEL_152:
  if ((v465 & 0x80000000) == 0)
  {
    v126 = openat(v465, "rescan_needed", 0);
    if (v126 != -1)
    {
      v127 = v126;
      __buf[0] = 0;
      read(v126, __buf, 1uLL);
      close(v127);
    }
  }

  if ((~v19 & 0x80100) == 0)
  {
    v128 = *(v51 + 586);
    *&v514[0] = 0;
    *(&v514[0] + 1) = v514;
    *&v514[1] = 0x2000000000;
    BYTE8(v514[1]) = 0;
    *__buf = MEMORY[0x1E69E9820];
    *&__buf[8] = 0x40000000;
    *&__buf[16] = __exist_precheck_touch_file_block_invoke;
    *&__buf[24] = &unk_1E8191AB0;
    *&__buf[32] = v514;
    check_touch_file(v465, "132427543.fixed", __buf);
    v129 = *(*(&v514[0] + 1) + 24);
    _Block_object_dispose(v514, 8);
    if (v129 == 1)
    {
      if (gSILogLevels[0] < 5)
      {
        goto LABEL_213;
      }

      v130 = v19;
      LODWORD(v19) = *__error();
      v131 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_200;
      }

      *__buf = 67109120;
      *&__buf[4] = v464;
      v132 = OS_LOG_TYPE_DEFAULT;
      v133 = "(%u) precheck touch file exists";
      v134 = v131;
      v135 = 8;
      goto LABEL_199;
    }

    if (totalDiskSpaceSize_onceToken != -1)
    {
      dispatch_once(&totalDiskSpaceSize_onceToken, &__block_literal_global_1019);
    }

    v136 = gTotalDiskSpaceSize;
    v137 = openat(v465, ".", 0);
    if (v137 == -1)
    {
      v130 = v19;
      LODWORD(v19) = *__error();
      v160 = _SILogForLogForCategory(0);
      v161 = gSILogLevels[0] < 3;
      if (!os_log_type_enabled(v160, (gSILogLevels[0] < 3)))
      {
LABEL_200:
        *__error() = v19;
        LOWORD(v19) = v130;
        goto LABEL_213;
      }

      v162 = *__error();
      *__buf = 67109376;
      *&__buf[4] = v465;
      *&__buf[8] = 1024;
      *&__buf[10] = v162;
      v133 = "*warn* openat(%d): %d";
      v134 = v160;
      v132 = v161;
      v135 = 14;
LABEL_199:
      _os_log_impl(&dword_1C278D000, v134, v132, v133, __buf, v135);
      goto LABEL_200;
    }

    v138 = v137;
    v139 = fdopendir(v137);
    v469 = v59;
    v468 = v19;
    if (!v139)
    {
      v164 = *__error();
      v165 = _SILogForLogForCategory(0);
      v166 = gSILogLevels[0] < 3;
      if (os_log_type_enabled(v165, (gSILogLevels[0] < 3)))
      {
        v167 = *__error();
        *__buf = 67109376;
        *&__buf[4] = v138;
        *&__buf[8] = 1024;
        *&__buf[10] = v167;
        _os_log_impl(&dword_1C278D000, v165, v166, "*warn* fdopendir(%d): %d", __buf, 0xEu);
      }

      *__error() = v164;
      close(v138);
      v59 = v469;
      goto LABEL_212;
    }

    v442 = v136;
    v443 = v136;
    v140 = v139;
    memset(__buf, 0, 144);
    v141 = 0;
    v438 = time(0);
    v142 = 0;
    v143 = 0;
    v144 = 0;
LABEL_165:
    v145 = v144;
    v441 = v141;
    v146 = v142;
LABEL_166:
    v437 = v146;
    v147 = v143;
LABEL_167:
    v440 = v147;
    while (1)
    {
      v148 = readdir(v140);
      if (!v148)
      {
        break;
      }

      v149 = v148;
      if (v148->d_type == 8)
      {
        d_name = v148->d_name;
        if (v148->d_name[0] != 46 && !strstr(v148->d_name, ".shadow") && !fstatat(v465, d_name, __buf, 32))
        {
          if (!strncmp(d_name, "journalAttr.", 0xCuLL))
          {
            v151 = &d_name[strlen(d_name)];
            if (*(v151 - 3) != 116 || *(v151 - 2) != 111 || *(v151 - 1) != 99)
            {
              LODWORD(v514[0]) = 0;
              if (sscanf(&v149->d_name[12], "%d", v514) == 1 && SLODWORD(v514[0]) > v128 && (v145 += *&__buf[96], v438 > *&__buf[48]))
              {
                if (v437 <= v438 - *&__buf[48])
                {
                  v152 = v438 - *&__buf[48];
                }

                else
                {
                  v152 = v437;
                }
              }

              else
              {
                v152 = v437;
              }

              v146 = v152;
              v143 = v440;
              goto LABEL_166;
            }
          }

          if (strstr(d_name, ".indexPostings") && !strncmp(&d_name[v149->d_namlen - 14], ".indexPostings", 0xEuLL))
          {
            v143 = *&__buf[96] + v440;
            v147 = *&__buf[96] + v440;
            if (v438 <= *&__buf[48])
            {
              goto LABEL_167;
            }

            if (v441 <= v438 - *&__buf[48])
            {
              v141 = v438 - *&__buf[48];
            }

            else
            {
              v141 = v441;
            }

            v142 = v437;
            v144 = v145;
            goto LABEL_165;
          }
        }
      }
    }

    closedir(v140);
    if (v145 >> 29 && v437 >= 604801)
    {
      v153 = *__error();
      v154 = _SILogForLogForCategory(0);
      v155 = gSILogLevels[0] < 3;
      v62 = v473;
      v59 = v59;
      if (os_log_type_enabled(v154, (gSILogLevels[0] < 3)))
      {
        LODWORD(v514[0]) = 134218240;
        *(v514 + 4) = v145;
        WORD6(v514[0]) = 2048;
        *(v514 + 14) = v437;
        v156 = "*warn* Huge unprocessed journal files detected. size:%llu age:%lus";
        v157 = v154;
        v158 = v155;
        v159 = 22;
LABEL_241:
        _os_log_impl(&dword_1C278D000, v157, v158, v156, v514, v159);
        goto LABEL_242;
      }

      goto LABEL_242;
    }

    if (v440 >> 30 >= 5 && v442 <= 10 * v440)
    {
      v153 = *__error();
      v184 = _SILogForLogForCategory(0);
      v185 = gSILogLevels[0] < 3;
      v62 = v473;
      v59 = v59;
      if (os_log_type_enabled(v184, (gSILogLevels[0] < 3)))
      {
        LODWORD(v514[0]) = 136316162;
        *(v514 + 4) = ".indexPostings";
        WORD6(v514[0]) = 2048;
        *(v514 + 14) = v440;
        WORD3(v514[1]) = 2048;
        *(&v514[1] + 1) = v441;
        LOWORD(v514[2]) = 2048;
        *(&v514[2] + 2) = v145;
        WORD5(v514[2]) = 2048;
        *(&v514[2] + 12) = v443;
        v156 = "*warn* Huge *%s files detected. size:%llu age:%lus journals:%llu totalDisk:%llu";
        v157 = v184;
        v158 = v185;
        v159 = 52;
        goto LABEL_241;
      }

LABEL_242:
      v14 = v471;
      *__error() = v153;
      dump_filesystem_meta(v465);
      __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 13010, "rebuilding index because of huge journals or merge files");
      v61 = 22;
      v60 = v452;
      goto LABEL_63;
    }

    v200 = unlinkat(v465, "130162031.fixed", 0);
    v201 = *__error();
    v202 = *__error();
    v203 = _SILogForLogForCategory(0);
    v204 = os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT);
    if (v200)
    {
      if (v204)
      {
        LODWORD(v514[0]) = 67109632;
        DWORD1(v514[0]) = v464;
        WORD4(v514[0]) = 1024;
        *(v514 + 10) = v465;
        HIWORD(v514[0]) = 1024;
        LODWORD(v514[1]) = v201;
        v205 = "(%u) did not delete previous touch file %d err %d";
LABEL_345:
        _os_log_impl(&dword_1C278D000, v203, OS_LOG_TYPE_DEFAULT, v205, v514, 0x14u);
      }
    }

    else if (v204)
    {
      LODWORD(v514[0]) = 67109632;
      DWORD1(v514[0]) = v464;
      WORD4(v514[0]) = 1024;
      *(v514 + 10) = v465;
      HIWORD(v514[0]) = 1024;
      LODWORD(v514[1]) = v201;
      v205 = "(%u) deleted previous touch file %d err %d";
      goto LABEL_345;
    }

    *__error() = v202;
    *__error() = v201;
    v237 = openat(v465, "132427543.fixed", 513, 384);
    v238 = *__error();
    v239 = v238;
    v59 = v469;
    if (v237 != -1)
    {
      v240 = *__error();
      v241 = _SILogForLogForCategory(0);
      v242 = v241;
      if (v238 == 2)
      {
        LOWORD(v19) = v468;
        if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v514[0]) = 67109376;
          DWORD1(v514[0]) = v464;
          WORD4(v514[0]) = 1024;
          *(v514 + 10) = v465;
          v243 = OS_LOG_TYPE_DEFAULT;
          v244 = "(%u) create touch file %d";
          v245 = v242;
          v246 = 14;
LABEL_373:
          _os_log_impl(&dword_1C278D000, v245, v243, v244, v514, v246);
        }
      }

      else
      {
        v274 = gSILogLevels[0] < 3;
        LOWORD(v19) = v468;
        if (os_log_type_enabled(v241, (gSILogLevels[0] < 3)))
        {
          LODWORD(v514[0]) = 67109632;
          DWORD1(v514[0]) = v464;
          WORD4(v514[0]) = 1024;
          *(v514 + 10) = v465;
          HIWORD(v514[0]) = 1024;
          LODWORD(v514[1]) = v239;
          v244 = "*warn* (%u) create touch file %d err %d";
          v245 = v242;
          v243 = v274;
          v246 = 20;
          goto LABEL_373;
        }
      }

      *__error() = v240;
      *__error() = v239;
      close(v237);
      v59 = v469;
      goto LABEL_213;
    }

    v247 = *__error();
    v248 = _SILogForLogForCategory(0);
    v249 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v248, (gSILogLevels[0] < 3)))
    {
      LODWORD(v514[0]) = 67109632;
      DWORD1(v514[0]) = v464;
      WORD4(v514[0]) = 1024;
      *(v514 + 10) = v465;
      HIWORD(v514[0]) = 1024;
      LODWORD(v514[1]) = v239;
      _os_log_impl(&dword_1C278D000, v248, v249, "*warn* (%u) create touch file %d err %d", v514, 0x14u);
    }

    *__error() = v247;
    *__error() = v239;
LABEL_212:
    LOWORD(v19) = v468;
  }

LABEL_213:
  v62 = v473;
  v168 = v19 & 0xC;
  if ((v19 & 0xC) == 0)
  {
    if ((v19 & 0x200) != 0 && (v51[2073] & 1) == 0)
    {
      __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 13017, "index not created with unigrams error");
      v79 = v452;
      v61 = v451;
    }

    else
    {
      if (si_validate_db(v51))
      {
        indexmetadata = si_create_indexmetadata(v51, 1);
        if (indexmetadata)
        {
          free(indexmetadata);
LABEL_221:
          v171 = v19;
          v172 = *(v51 + 173);
          *__buf = v51;
          __checkIndexSetDocIdOrder(v51, v172);
          v173 = *(v51 + 174);
          *__buf = v51;
          __checkIndexSetDocIdOrder(v51, v173);
          if (v462)
          {
            goto LABEL_282;
          }

          v175 = v59;
          v176 = *(v51 + 173);
          v177 = *(v51 + 174);
          v178 = v177;
          disableWritingForAllButLastOfRunsOfTransaction(v176, v174);
          disableWritingForAllButLastOfRunsOfTransaction(v177, v179);
          if (*(v176 + 8) >= 2u)
          {
            if (v51[6587])
            {
              NotCompactCount = 0;
            }

            else
            {
              NotCompactCount = indexSetGetNotCompactCount(v176);
            }

            NotMergedCount = indexSetGetNotMergedCount(v176);
            LiveCount = indexSetGetLiveCount(*v176, *(v176 + 8));
            if (NotCompactCount >= 10)
            {
              v188 = v51;
              v189 = NotCompactCount;
LABEL_268:
              holdAndIssueMerge(v188, v189, v176, 1);
              goto LABEL_269;
            }

            if (NotMergedCount > 10)
            {
              v188 = v51;
              v189 = NotMergedCount;
              goto LABEL_268;
            }

            if (LiveCount >= 6)
            {
              v189 = LiveCount - 1;
              v188 = v51;
              goto LABEL_268;
            }

            if (NotCompactCount)
            {
              compactReadOnlyIndexes(v51, 1);
            }
          }

LABEL_269:
          v59 = v175;
          if (*(v178 + 8) >= 2u)
          {
            if (v51[6587])
            {
              v206 = 0;
            }

            else
            {
              v206 = indexSetGetNotCompactCount(v178);
            }

            v207 = indexSetGetNotMergedCount(v178);
            if (indexSetGetWritableCount(v178) || (v208 = *(v178 + 8), v208 < 2))
            {
              if (v206 >= 10)
              {
                v209 = v51;
                v210 = v206;
LABEL_281:
                holdAndIssueMerge(v209, v210, v178, 0);
                v59 = v175;
                goto LABEL_282;
              }

              if (v207 > 10)
              {
                v209 = v51;
                v210 = v207;
                goto LABEL_281;
              }

              v208 = *(v178 + 8);
              if (v208 < 0x1A)
              {
                v59 = v175;
                if (v206)
                {
                  compactReadOnlyIndexes(v51, 0);
                }

                goto LABEL_282;
              }
            }

            v210 = v208 >> 1;
            v209 = v51;
            goto LABEL_281;
          }

LABEL_282:
          free(v501);
          MEMORY[0x1C6921200](v59);
          close(v59);
          if ((v171 & 1) == 0)
          {
            _SIPreHeatIndex(v51, 0, 1);
          }

          v169 = v453;
          if (!(v124 | v168))
          {
            if (v453)
            {
              v211 = 39;
            }

            else
            {
              v211 = 38;
            }

            SIActivityJournalOpen((v51 + 2192), v211, *(v51 + 586), *(*(v51 + 174) + 8), *(*(v51 + 173) + 8), *(v51 + 266), *(v51 + 267), *(v51 + 301));
          }

          goto LABEL_289;
        }

        v430 = "missing system dbo";
        v181 = 13030;
      }

      else
      {
        v430 = "name table is missing dummy values";
        v181 = 13023;
      }

      __si_set_error_str(0, "%s:%u: %s", "SpotlightIndex.c", v181, v430);
      v61 = 22;
      v79 = v452;
    }

    v14 = v471;
    goto LABEL_230;
  }

  if ((v19 & 8) == 0)
  {
    goto LABEL_221;
  }

  free(v501);
  MEMORY[0x1C6921200](v59);
  close(v59);
  v169 = v453;
LABEL_289:
  if (v509)
  {
    CFRelease(v509);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v212 = *(v51 + 174);
  v213 = *(v51 + 173);
  *__buf = MEMORY[0x1E69E9820];
  *&__buf[8] = 0x40000000;
  *&__buf[16] = __si_cacheIndexVersion_block_invoke;
  *&__buf[24] = &__block_descriptor_tmp_1098;
  *&__buf[32] = v51;
  if (v213)
  {
    v214 = v213;
    v215 = *(v213 + 8);
    while (v215 >= 1)
    {
      v216 = v215 - 1;
      v217 = (*&__buf[16])(__buf, *(*v214 + 8 * v215 - 8), 1);
      v215 = v216;
      if (!v217)
      {
        goto LABEL_302;
      }
    }
  }

  if (v212)
  {
    v218 = *(v212 + 8);
    do
    {
      if (v218 < 1)
      {
        break;
      }

      v219 = v218 - 1;
      v220 = (*&__buf[16])(__buf, *(*v212 + 8 * v218 - 8), 0);
      v218 = v219;
    }

    while (v220);
  }

LABEL_302:
  if (v124)
  {
    return v124;
  }

  else
  {
    return v169;
  }
}

uint64_t SICreateNewIndex(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5, __int128 *a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  LODWORD(v12) = a5;
  LODWORD(v14) = a2;
  v309 = *MEMORY[0x1E69E9840];
  if (freeQueueOnce != -1)
  {
    v256 = a3;
    dispatch_once(&freeQueueOnce, &__block_literal_global_358);
    a3 = v256;
  }

  v16 = 0xFFFFFFFFLL;
  if ((v12 & 4) != 0)
  {
    return v16;
  }

  v288 = a8;
  v289 = a3;
  v287 = a4;
  v290 = v14;
  v291 = a1;
  v17 = (v12 & 0x100) >> 8;
  v292 = open(".", 4);
  bzero(v308, 0x400uLL);
  _SITuningInit();
  makeThreadId();
  v18 = malloc_type_calloc(1uLL, 0x2788uLL, 0x10F00403822957CuLL);
  SIInitIndexLocks(v18);
  v296[0] = MEMORY[0x1E69E9820];
  v296[1] = 0x40000000;
  v296[2] = __SICreateNewIndex_block_invoke_2;
  v296[3] = &__block_descriptor_tmp_361;
  v296[4] = v18;
  *v18 = 0xC0DE10DE10DEC0DELL;
  *(v18 + 15) = BYTE3(v12);
  *(v18 + 8) = -1;
  *(v18 + 12) = -1;
  v18[2072] = (v12 & 0x100) >> 8;
  v18[2073] = (v12 & 0x200) >> 9;
  v19 = *a6;
  *(v18 + 3) = *(a6 + 2);
  *(v18 + 8) = v19;
  *(v18 + 295) = a7;
  *(v18 + 290) = 0;
  *(v18 + 824) = a9;
  *(v18 + 364) = 1;
  if (v17)
  {
    v20 = 0x1000000;
  }

  else
  {
    v20 = 0;
  }

  v293 = v18;
  *(v18 + 1646) = *(v18 + 1646) & 0xFEFFFFFF | v20;
  if (*a9)
  {
    __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 14285, "open canceled");
    v21 = 0;
    v22 = 0;
    v23 = v292;
    v24 = a1;
    v25 = v18;
    v26 = a7;
LABEL_9:
    v27 = *__error();
    v28 = _SILogForLogForCategory(0);
    v29 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v28, v29))
    {
      *buf = 67109376;
      *&buf[4] = v22;
      *&buf[8] = 1024;
      *&buf[10] = v21;
      _os_log_impl(&dword_1C278D000, v28, v29, "Failed at %d (%d)", buf, 0xEu);
    }

    *__error() = v27;
    MEMORY[0x1C6921200](v23);
    close(v23);
    ContentIndexListFree(*(v25 + 1392));
    ContentIndexListFree(*(v25 + 1384));
    v30 = *(v25 + 1496);
    if (v30)
    {
      CFRelease(v30);
    }

    if (v26)
    {
      v31 = *(v26 + 24);
      if (v31)
      {
        v31(v26);
      }
    }

    free(v25);
    *v24 = 0;
    return 0xFFFFFFFFLL;
  }

  v26 = a7;
  if ((v12 & 0x100) != 0)
  {
    LOBYTE(v36) = 0;
    v37 = 1;
    v14 = v14;
    v12 = v12;
  }

  else
  {
    v14 = v14;
    v33 = v289;
    v12 = v12;
    if (v289 && ((v34 = *(v289 + 4), v34 == -1) || (v35 = dup(v34), v33 = v289, v293[12] = v35, v35 == -1)))
    {
      if ((v12 & 8) != 0)
      {
        v21 = 0;
        v22 = 0;
        v23 = v292;
        v24 = a1;
        v25 = v293;
        goto LABEL_9;
      }

      v36 = *(v33 + 28);
      v37 = (v12 & 0x180) != 0;
    }

    else
    {
      LOBYTE(v36) = 0;
      v37 = 0;
    }
  }

  *buf = 0;
  v25 = v293;
  if (fd_setDir(v14, buf))
  {
    v39 = *__error();
    v40 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "Creating New Index", valuePtr, 2u);
    }

    *__error() = v39;
    v41 = *buf;
    MEMORY[0x1C6921200](*buf);
    LODWORD(v14) = v290;
    if ((v41 & 0x80000000) == 0)
    {
      close(v41);
    }
  }

  if ((v12 & 8) == 0)
  {
    if (!a7)
    {
      v264 = __si_assert_copy_extra_661(-1);
      v265 = v264;
      v266 = "";
      if (v264)
      {
        v266 = v264;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 14314, "callbacks", v266);
      free(v265);
      if (__valid_fs(-1))
      {
        v267 = 2989;
      }

      else
      {
        v267 = 3072;
      }

      *v267 = -559038737;
      abort();
    }

    v42 = check_crash_state(v14, v36 & 1, v12, 0, 0);
    if (v42)
    {
      v43 = v42;
      v44 = *__error();
      v45 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v96 = fcntl(v290, 50, v308);
        if (v308[0])
        {
          v97 = v96 < 0;
        }

        else
        {
          v97 = 1;
        }

        if (v97)
        {
          v98 = 0;
        }

        else
        {
          v98 = v308;
        }

        v26 = a7;
        *buf = 136315906;
        *&buf[4] = "SICreateNewIndex";
        *&buf[12] = 1024;
        *&buf[14] = 14320;
        *&buf[18] = 1024;
        *&buf[20] = v43;
        *&buf[24] = 2080;
        *&buf[26] = v98;
        _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state: %d for %s", buf, 0x22u);
      }

      v21 = 0;
      v22 = 0;
      *__error() = v44;
      v23 = v292;
      v24 = v291;
      goto LABEL_9;
    }

    v61 = check_crash_state(v14, v36 & 1, v12, 0, 1);
    v62 = guarded_dup(v14);
    *(v293 + 4) = v62;
    *(v293 + 5) = v63;
    if ((v12 & 0x80000001) != 0)
    {
      v64 = 17;
    }

    else
    {
      v64 = 81;
    }

    if (*(v293 + 2072))
    {
      v64 |= 0x100u;
    }

    if (*(v293 + 2073))
    {
      v64 |= 0x400u;
    }

    if (v61)
    {
      v64 |= 0x2000u;
    }

    v65 = v289;
    if (v289)
    {
      v65 = ~(*(v289 + 28) << 20) & 0x400000;
    }

    v293[1646] = v293[1646] & 0xFFBFFFFF | v65;
    v66 = ~(v65 >> 7) & 0x8000 | v64;
    if (v37)
    {
      v66 |= 0x80u;
    }

    if ((v62 & 0x80000000) != 0)
    {
      v21 = 0;
      v22 = 0;
LABEL_87:
      v23 = v292;
      goto LABEL_88;
    }

    v286 = v66;
    if (dword_1EBF46AE8 >= 5)
    {
      v271 = *__error();
      v272 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
      {
        v273 = fcntl(v290, 50, v308);
        if (v308[0])
        {
          v274 = v273 < 0;
        }

        else
        {
          v274 = 1;
        }

        if (v274)
        {
          v275 = 0;
        }

        else
        {
          v275 = v308;
        }

        *buf = 136315138;
        *&buf[4] = v275;
        _os_log_impl(&dword_1C278D000, v272, OS_LOG_TYPE_DEFAULT, "Opened %s successfully", buf, 0xCu);
      }

      *__error() = v271;
      v12 = v12;
      v25 = v293;
      if (dword_1EBF46AE8 >= 5)
      {
        v276 = *__error();
        v277 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
        {
          v278 = fcntl(v290, 50, v308);
          if (v308[0])
          {
            v279 = v278 < 0;
          }

          else
          {
            v279 = 1;
          }

          if (v279)
          {
            v280 = 0;
          }

          else
          {
            v280 = v308;
          }

          *buf = 136315394;
          *&buf[4] = v280;
          *&buf[12] = 2080;
          *&buf[14] = "store.db";
          _os_log_impl(&dword_1C278D000, v277, OS_LOG_TYPE_DEFAULT, "Try %s/%s", buf, 0x16u);
        }

        *__error() = v276;
        v12 = v12;
        v25 = v293;
      }
    }

    registerForCloning(*(v25 + 32), v17);
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      v67 = fd_create_protected(*(v25 + 32), "activityJournal.1", 536872457, 3u);
      si_activity_journal_init(v25 + 2192, v67);
      fd_mark_purgable(*(v25 + 2192));
    }

    unlinkat(*(v25 + 32), "mds64-crash-state", 0);
    unlinkat(*(v25 + 32), "mds64-crash-state-v2", 0);
    if ((v12 & 0x100) == 0)
    {
      v68 = fd_create_protected(*(v25 + 32), "tmp.Lion", 512, 0);
      fd_release(v68);
      v69 = fd_create_protected(*(v25 + 32), "Lion.created", 512, 0);
      fd_release(v69);
      v70 = fd_create_protected(*(v25 + 32), "tmp.Cab", 512, 0);
      fd_release(v70);
      v71 = fd_create_protected(*(v25 + 32), "Cab.created", 512, 0);
      fd_release(v71);
      *(v25 + 6584) |= 0x40u;
      v72 = fd_create_protected(*(v25 + 32), "tmp.Star", 512, 0);
      fd_release(v72);
      v73 = fd_create_protected(*(v25 + 32), "Glow.created", 512, 0);
      fd_release(v73);
      v74 = fd_create_protected(*(v25 + 32), "tmp.Glow", 512, 0);
      fd_release(v74);
      v75 = fd_create_protected(*(v25 + 32), "tmp.SequoiaPhotosFixed", 512, 0);
      fd_release(v75);
      if (_os_feature_enabled_impl())
      {
        v76 = fd_create_protected(*(v25 + 32), "macOS16.created", 512, 0);
        fd_release(v76);
        v77 = fd_create_protected(*(v25 + 32), "tmp.macOS16", 512, 0);
        fd_release(v77);
      }
    }

    v78 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040A085CBA5uLL);
    *(v25 + 1392) = v78;
    v78[3] = 2;
    v79 = malloc_type_calloc(2uLL, 8uLL, 0x2004093837F09uLL);
    v80 = *(v25 + 1392);
    *v80 = v79;
    *(v80 + 16) = -1;
    v81 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040A085CBA5uLL);
    *(v25 + 1384) = v81;
    v81[3] = 2;
    v82 = malloc_type_calloc(2uLL, 8uLL, 0x2004093837F09uLL);
    v83 = *(v25 + 1384);
    *v83 = v82;
    *(v83 + 16) = -1;
    MEMORY[0x1C6921200](*(v25 + 32));
    if ((v12 & 0x200) != 0)
    {
      v84 = 3;
    }

    else
    {
      v84 = 1;
    }

    if ((v12 & 0x100) != 0)
    {
      v85 = v84;
    }

    else
    {
      v85 = (v12 & 0x200) >> 8;
    }

    if (CIMetaInfoCreateWithPrefix(*(v25 + 32), v25 + 1200, v85, 1, *(v25 + 60), 0))
    {
      v21 = 0;
      v22 = 14469;
      v23 = v292;
      v26 = a7;
LABEL_88:
      v24 = v291;
      goto LABEL_89;
    }

    v295 = 0;
    v89 = *(v25 + 1392);
    v90 = *(v25 + 1384);
    v91 = *(v25 + 6592);
    vector_store = *(v25 + 1192);
    if (vector_store)
    {
      vector_store = db_get_vector_store(vector_store);
    }

    v294[0] = MEMORY[0x1E69E9820];
    v294[1] = 0x40000000;
    v294[2] = __SICreateNewIndex_block_invoke_378;
    v294[3] = &__block_descriptor_tmp_380;
    v294[4] = v25;
    v93 = ContentIndexOpenBulk(v86, v25 + 1200, 0, v89, v90, v286, v91, v25 + 2408, &v295, vector_store, v294, v296);
    if (v93 == 1)
    {
      v99 = time(0);
      v100 = *(v25 + 1392);
      if (*(v100 + 8))
      {
        ContentIndexUpdateTimeStamp(**v100, v99, 0, 1);
        ContentIndexUpdateTimeStamp(***(v25 + 1392), v99, 1u, 1);
      }

      LiveIndex = si_getLiveIndex(*(v25 + 1384));
      ContentIndexUpdateTimeStamp(LiveIndex, v99, 0, 1);
      v102 = si_getLiveIndex(*(v25 + 1384));
      ContentIndexUpdateTimeStamp(v102, v99, 1u, 1);
    }

    else if (v93 == -1)
    {
      v94 = *__error();
      v95 = _SILogForLogForCategory(0);
      v26 = a7;
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "SICreateNewIndex";
        *&buf[12] = 1024;
        *&buf[14] = 14481;
        _os_log_error_impl(&dword_1C278D000, v95, OS_LOG_TYPE_ERROR, "%s:%d: Could not create new content index", buf, 0x12u);
      }

      v21 = 0;
      *__error() = v94;
      v22 = 14480;
      goto LABEL_87;
    }

    if (v37)
    {
      v103 = 133376;
    }

    else
    {
      v103 = 256;
    }

    if (*(v25 + 2072))
    {
      v104 = 67584;
    }

    else
    {
      v104 = v103;
    }

    if (dword_1EBF46AE8 >= 5)
    {
      v281 = *__error();
      v282 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v282, OS_LOG_TYPE_DEFAULT))
      {
        v283 = fcntl(v290, 50, v308);
        if (v308[0])
        {
          v284 = v283 < 0;
        }

        else
        {
          v284 = 1;
        }

        if (v284)
        {
          v285 = 0;
        }

        else
        {
          v285 = v308;
        }

        *buf = 136315394;
        *&buf[4] = v285;
        *&buf[12] = 2080;
        *&buf[14] = "store.db";
        _os_log_impl(&dword_1C278D000, v282, OS_LOG_TYPE_DEFAULT, "Creating store at %s/%s.", buf, 0x16u);
      }

      *__error() = v281;
      v12 = v12;
      v25 = v293;
    }

    memset(buf, 0, sizeof(buf));
    *buf = *(v25 + 32);
    *&buf[8] = "store.db";
    *&buf[20] = *(v25 + 60);
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    v24 = v291;
    if (SIIsAppleInternal_internal)
    {
      v105 = v25 + 2192;
    }

    else
    {
      v105 = 0;
    }

    *&buf[24] = v105;
    buf[32] = 0;
    v306 = v25;
    v307 = _sdb_cache_flush_callback;
    *&buf[16] = v104;
    datastore_with_ctx = db2_create_datastore_with_ctx(buf);
    *(v25 + 1192) = datastore_with_ctx;
    if (datastore_with_ctx)
    {
      si_set_vector_store(v25);
      if ((v12 & 0x80000001) != 0 || (ReverseStore = createReverseStore(*(v25 + 32), "", v296), (*(v25 + 6624) = ReverseStore) != 0))
      {
        v108 = 0;
        v109 = (v25 + 1192);
        do
        {
          id_for_field = db_create_id_for_field(*v109, "_kMDXXXX___DUMMY", v108, v108);
          ++v108;
        }

        while (id_for_field < 6);
        db_create_id_for_value(*v109, "public.message");
        db_create_id_for_value(*v109, "com.apple.mail.emlx");
        db_create_id_for_value(*v109, "com.apple.mail.eml");
        db_create_id_for_value(*v109, "com.microsoft.entourage.virtual.message");
        db_create_id_for_value(*v109, "com.apple.ichat.transcript");
        db_create_id_for_value(*v109, "public.contact");
        db_create_id_for_value(*v109, "public.vcard");
        db_create_id_for_value(*v109, "com.apple.addressbook.person");
        db_create_id_for_value(*v109, "com.apple.addressbook.group");
        db_create_id_for_value(*v109, "com.microsoft.entourage.virtual.contact");
        db_create_id_for_value(*v109, "com.microsoft.entourage.virtual.group");
        db_create_id_for_value(*v109, "com.apple.systempreference.prefpane");
        db_create_id_for_value(*v109, "public.font");
        db_create_id_for_value(*v109, "public.bookmark");
        db_create_id_for_value(*v109, "com.apple.safari.bookmark");
        db_create_id_for_value(*v109, "com.apple.safari.history");
        db_create_id_for_value(*v109, "public.to-do-item");
        db_create_id_for_value(*v109, "public.calendar-event");
        db_create_id_for_value(*v109, "com.apple.ical.bookmark");
        db_create_id_for_value(*v109, "com.apple.ical.bookmark.todo");
        db_create_id_for_value(*v109, "com.apple.ical.ics.event");
        db_create_id_for_value(*v109, "com.apple.ical.ics.todo");
        db_create_id_for_value(*v109, "com.microsoft.entourage.virtual.event");
        db_create_id_for_value(*v109, "com.microsoft.entourage.virtual.task");
        db_create_id_for_value(*v109, "public.movie");
        db_create_id_for_value(*v109, "com.apple.quicktime-movie");
        db_create_id_for_value(*v109, "public.mpeg-video");
        db_create_id_for_value(*v109, "public.mpeg-4");
        db_create_id_for_value(*v109, "public.mpeg");
        db_create_id_for_value(*v109, "public.3gpp");
        db_create_id_for_value(*v109, "public.3gpp2");
        db_create_id_for_value(*v109, "com.apple.application-bundle");
        db_create_id_for_value(*v109, "com.apple.application-file");
        db_create_id_for_value(*v109, "com.apple.dashboard-widget");
        db_create_id_for_value(*v109, "public.folder");
        db_create_id_for_value(*v109, "com.apple.mount-point");
        db_create_id_for_value(*v109, "public.audio");
        db_create_id_for_value(*v109, "public.mpeg-4-audio");
        db_create_id_for_value(*v109, "com.apple.protected-mpeg-4-audio");
        db_create_id_for_value(*v109, "com.adobe.pdf");
        db_create_id_for_value(*v109, "com.apple.localized-pdf-bundle");
        db_create_id_for_value(*v109, "public.presentation");
        db_create_id_for_value(*v109, "com.microsoft.powerpoint.ppt");
        db_create_id_for_value(*v109, "com.apple.keynote.key");
        db_create_id_for_value(*v109, "com.apple.iwork.keynote.key");
        db_create_id_for_value(*v109, "public.image");
        db_create_id_for_value(*v109, "com.apple.motion.project");
        db_create_id_for_value(*v109, "com.apple.iwork.pages.pages");
        db_create_id_for_value(*v109, "com.apple.iwork.pages.sffpages");
        db_create_id_for_value(*v109, "com.apple.iwork.pages.template");
        db_create_id_for_value(*v109, "com.apple.iwork.pages.sfftemplate");
        db_create_id_for_value(*v109, "public.rtf");
        db_create_id_for_value(*v109, "com.apple.rtfd");
        db_create_id_for_value(*v109, "com.apple.flat-rtfd");
        db_create_id_for_value(*v109, "com.microsoft.word.doc");
        db_create_id_for_value(*v109, "org.khronos.collada.digital-asset-exchange");
        db_create_id_for_value(*v109, "public.plain-text");
        db_create_id_for_value(*v109, "public.html");
        db_create_id_for_value(*v109, "public.xhtml");
        db_create_id_for_value(*v109, "public.shell-script");
        db_create_id_for_value(*v109, "public.source-code");
        db_create_id_for_value(*v109, "public.unix-executable");
        db_create_id_for_value(*v109, "com.apple.xcode.project");
        db_create_id_for_value(*v109, "com.apple.xcode.model");
        db_create_id_for_value(*v109, "com.apple.xcode.archive");
        db_create_id_for_value(*v109, "com.apple.xcode.docset");
        db_create_id_for_value(*v109, "com.apple.xcode.projectdata");
        db_create_id_for_value(*v109, "com.apple.xcode.dsym");
        db_create_id_for_value(*v109, "com.apple.xcode.configsettings");
        db_create_id_for_value(*v109, "com.apple.xcode.usersettings");
        db_create_id_for_value(*v109, "com.apple.xcode.strings-text");
        db_create_id_for_value(*v109, "com.apple.xcode.plugin");
        db_create_id_for_value(*v109, "com.apple.xcode.mom");
        db_create_id_for_value(*v109, "com.apple.property-list");
        db_create_id_for_value(*v109, "dyn.ah62d4rv4ge81a7dk");
        db_create_id_for_value(*v109, "dyn.ah62d4rv4ge80u5pbsa");
        db_create_id_for_value(*v109, "com.apple.dashcode.xml");
        db_create_id_for_value(*v109, "com.apple.dashcode.css");
        db_create_id_for_value(*v109, "com.apple.dashcode.javascript");
        db_create_id_for_value(*v109, "com.apple.dashcode.json");
        db_create_id_for_value(*v109, "com.apple.dashcode.manifest");
        db_create_id_for_value(*v109, "com.apple.interfacebuilder.document");
        db_create_id_for_value(*v109, "com.apple.interfacebuilder.document.cocoa");
        db_create_id_for_value(*v109, "com.apple.rez-source");
        db_create_id_for_value(*v109, "com.apple.iphone.developerprofile");
        db_create_id_for_value(*v109, "com.apple.iphone.mobileprovision");
        db_create_id_for_value(*v109, "com.apple.coreanimation-bundle");
        db_create_id_for_value(*v109, "com.apple.coreanimation-xml");
        db_create_id_for_value(*v109, "com.sun.java-class");
        db_create_id_for_value(*v109, "com.apple.scripting-definition");
        db_create_id_for_value(*v109, "com.apple.dt.document.workspace");
        db_create_id_for_value(*v109, "com.apple.dt.document.scheme");
        db_create_id_for_value(*v109, "com.apple.dt.ide.plug-in");
        db_create_id_for_value(*v109, "com.apple.dt.dvt.plug-in");
        db_create_id_for_value(*v109, "com.apple.dt.document.snapshot");
        db_create_id_for_value(*v109, "com.apple.dt.bundle.unit-test.objective-c");
        db_create_id_for_value(*v109, "com.apple.instruments.tracetemplate");
        db_create_id_for_value(*v109, "com.apple.quartzdebug.introspectiontrace");
        db_create_id_for_value(*v109, "com.apple.applescript.text-object");
        db_create_id_for_value(*v109, "com.apple.applescript.data-object");
        db_create_id_for_value(*v109, "com.apple.applescript.url-object");
        db_create_id_for_value(*v109, "com.apple.applescript.alias-object");
        db_create_id_for_value(*v109, "com.apple.symbol-export");
        db_create_id_for_value(*v109, "com.apple.mach-o-binary");
        db_create_id_for_value(*v109, "com.apple.mach-o-object");
        db_create_id_for_value(*v109, "com.apple.mach-o-executable");
        db_create_id_for_value(*v109, "com.apple.x11-mach-o-executable");
        db_create_id_for_value(*v109, "public.object-code");
        db_create_id_for_value(*v109, "com.microsoft.windows-executable");
        db_create_id_for_value(*v109, "com.microsoft.windows-dynamic-link-library");
        db_create_id_for_value(*v109, "com.sun.java-archive");
        db_create_id_for_value(*v109, "com.sun.web-application-archive");
        db_create_id_for_value(*v109, "com.apple.xcode.plugindata");
        db_create_id_for_value(*v109, "com.apple.dt.playground");
        db_create_id_for_value(*v109, "com.apple.iwork.numbers.sffnumbers");
        db_create_id_for_value(*v109, "com.apple.iwork.numbers.numbers");
        db_create_id_for_value(*v109, "com.apple.iwork.numbers.template");
        db_create_id_for_value(*v109, "com.microsoft.excel.xls");
        db_create_id_for_value(*v109, "org.openxmlformats.spreadsheetml.sheet");
        db_create_id_for_value(*v109, "public.spreadsheet");
        db_create_id_for_value(*v109, "public.xml");
        db_create_id_for_value(*v109, "com.apple.log");
        db_create_id_for_value(*v109, "com.apple.crashreport");
        db_create_id_for_value(*v109, "com.apple.spinreport");
        db_create_id_for_value(*v109, "com.apple.panicreport");
        db_create_id_for_value(*v109, "com.apple.shutdownstall");
        db_create_id_for_value(*v109, "com.apple.hangreport");
        db_create_id_for_value(*v109, "public.json");
        db_create_id_for_value(*v109, "public.log");
        db_create_id_for_value(*v109, "public.content");
        db_create_id_for_value(*v109, "com.microsoft.excel.sheet.binary.macroenabled");
        db_create_id_for_value(*v109, "org.openxmlformats.spreadsheetml.sheet.macroenabled");
        db_create_id_for_value(*v109, "com.apple.protected-mpeg-4-audio-b");
        db_create_id_for_value(*v109, "com.audible.aa-audiobook");
        db_create_id_for_value(*v109, "com.audible.aax-audiobook");
        db_create_id_for_value(*v109, "com.apple.tips");
        db_create_id_for_value(*v109, "com.apple.helpviewer");
        db_create_id_for_value(*v109, "com.apple.help.topic");
        db_create_id_for_field(*v109, "kMDItemContentTypeTree", 0x330u, 11);
        db_create_id_for_field(*v109, "kMDItemSupportFileType", 0x330u, 11);
        db_create_id_for_field(*v109, "_kMDItemTimeMachinePath", 0, 0);
        db_create_id_for_field(*v109, "kMDItemContentType", 0x310u, 11);
        db_create_id_for_field(*v109, "_kMDItemGroupId", 0x108u, 2);
        if ((v12 & 0x100) == 0)
        {
          v111 = *MEMORY[0x1E695E480];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
          id_for_value = db_create_id_for_value(*v109, "public.message");
          if (id_for_value != -2)
          {
            CFDictionarySetValue(Mutable, (id_for_value & 0x7FFFFFFF), 1);
          }

          v114 = db_create_id_for_value(*v109, "com.apple.mail.emlx");
          if (v114 != -2)
          {
            CFDictionarySetValue(Mutable, (v114 & 0x7FFFFFFF), 2);
          }

          v115 = db_create_id_for_value(*v109, "com.apple.mail.eml");
          if (v115 != -2)
          {
            CFDictionarySetValue(Mutable, (v115 & 0x7FFFFFFF), 3);
          }

          v116 = db_create_id_for_value(*v109, "com.microsoft.entourage.virtual.message");
          if (v116 != -2)
          {
            CFDictionarySetValue(Mutable, (v116 & 0x7FFFFFFF), 4);
          }

          v117 = db_create_id_for_value(*v109, "com.apple.ichat.transcript");
          if (v117 != -2)
          {
            CFDictionarySetValue(Mutable, (v117 & 0x7FFFFFFF), 5);
          }

          v118 = db_create_id_for_value(*v109, "public.contact");
          if (v118 != -2)
          {
            CFDictionarySetValue(Mutable, (v118 & 0x7FFFFFFF), 6);
          }

          v119 = db_create_id_for_value(*v109, "public.vcard");
          if (v119 != -2)
          {
            CFDictionarySetValue(Mutable, (v119 & 0x7FFFFFFF), 7);
          }

          v120 = db_create_id_for_value(*v109, "com.apple.addressbook.person");
          if (v120 != -2)
          {
            CFDictionarySetValue(Mutable, (v120 & 0x7FFFFFFF), 8);
          }

          v121 = db_create_id_for_value(*v109, "com.apple.addressbook.group");
          if (v121 != -2)
          {
            CFDictionarySetValue(Mutable, (v121 & 0x7FFFFFFF), 9);
          }

          v122 = db_create_id_for_value(*v109, "com.microsoft.entourage.virtual.contact");
          if (v122 != -2)
          {
            CFDictionarySetValue(Mutable, (v122 & 0x7FFFFFFF), 0xA);
          }

          v123 = db_create_id_for_value(*v109, "com.microsoft.entourage.virtual.group");
          if (v123 != -2)
          {
            CFDictionarySetValue(Mutable, (v123 & 0x7FFFFFFF), 0xB);
          }

          v124 = db_create_id_for_value(*v109, "com.apple.systempreference.prefpane");
          if (v124 != -2)
          {
            CFDictionarySetValue(Mutable, (v124 & 0x7FFFFFFF), 0xC);
          }

          v125 = db_create_id_for_value(*v109, "public.font");
          if (v125 != -2)
          {
            CFDictionarySetValue(Mutable, (v125 & 0x7FFFFFFF), 0xD);
          }

          v126 = db_create_id_for_value(*v109, "public.bookmark");
          if (v126 != -2)
          {
            CFDictionarySetValue(Mutable, (v126 & 0x7FFFFFFF), 0xE);
          }

          v127 = db_create_id_for_value(*v109, "com.apple.safari.bookmark");
          if (v127 != -2)
          {
            CFDictionarySetValue(Mutable, (v127 & 0x7FFFFFFF), 0xF);
          }

          v128 = db_create_id_for_value(*v109, "com.apple.safari.history");
          if (v128 != -2)
          {
            CFDictionarySetValue(Mutable, (v128 & 0x7FFFFFFF), 0x10);
          }

          v129 = db_create_id_for_value(*v109, "public.to-do-item");
          if (v129 != -2)
          {
            CFDictionarySetValue(Mutable, (v129 & 0x7FFFFFFF), 0x11);
          }

          v130 = db_create_id_for_value(*v109, "public.calendar-event");
          if (v130 != -2)
          {
            CFDictionarySetValue(Mutable, (v130 & 0x7FFFFFFF), 0x12);
          }

          v131 = db_create_id_for_value(*v109, "com.apple.ical.bookmark");
          if (v131 != -2)
          {
            CFDictionarySetValue(Mutable, (v131 & 0x7FFFFFFF), 0x13);
          }

          v132 = db_create_id_for_value(*v109, "com.apple.ical.bookmark.todo");
          if (v132 != -2)
          {
            CFDictionarySetValue(Mutable, (v132 & 0x7FFFFFFF), 0x14);
          }

          v133 = db_create_id_for_value(*v109, "com.apple.ical.ics.event");
          if (v133 != -2)
          {
            CFDictionarySetValue(Mutable, (v133 & 0x7FFFFFFF), 0x15);
          }

          v134 = db_create_id_for_value(*v109, "com.apple.ical.ics.todo");
          if (v134 != -2)
          {
            CFDictionarySetValue(Mutable, (v134 & 0x7FFFFFFF), 0x16);
          }

          v135 = db_create_id_for_value(*v109, "com.microsoft.entourage.virtual.event");
          if (v135 != -2)
          {
            CFDictionarySetValue(Mutable, (v135 & 0x7FFFFFFF), 0x17);
          }

          v136 = db_create_id_for_value(*v109, "com.microsoft.entourage.virtual.task");
          if (v136 != -2)
          {
            CFDictionarySetValue(Mutable, (v136 & 0x7FFFFFFF), 0x18);
          }

          v137 = db_create_id_for_value(*v109, "public.movie");
          if (v137 != -2)
          {
            CFDictionarySetValue(Mutable, (v137 & 0x7FFFFFFF), 0x19);
          }

          v138 = db_create_id_for_value(*v109, "com.apple.quicktime-movie");
          if (v138 != -2)
          {
            CFDictionarySetValue(Mutable, (v138 & 0x7FFFFFFF), 0x1A);
          }

          v139 = db_create_id_for_value(*v109, "public.mpeg-video");
          if (v139 != -2)
          {
            CFDictionarySetValue(Mutable, (v139 & 0x7FFFFFFF), 0x1B);
          }

          v140 = db_create_id_for_value(*v109, "public.mpeg-4");
          if (v140 != -2)
          {
            CFDictionarySetValue(Mutable, (v140 & 0x7FFFFFFF), 0x1C);
          }

          v141 = db_create_id_for_value(*v109, "public.mpeg");
          if (v141 != -2)
          {
            CFDictionarySetValue(Mutable, (v141 & 0x7FFFFFFF), 0x1D);
          }

          v142 = db_create_id_for_value(*v109, "public.3gpp");
          if (v142 != -2)
          {
            CFDictionarySetValue(Mutable, (v142 & 0x7FFFFFFF), 0x1E);
          }

          v143 = db_create_id_for_value(*v109, "public.3gpp2");
          if (v143 != -2)
          {
            CFDictionarySetValue(Mutable, (v143 & 0x7FFFFFFF), 0x1F);
          }

          v144 = db_create_id_for_value(*v109, "com.apple.application-bundle");
          if (v144 != -2)
          {
            CFDictionarySetValue(Mutable, (v144 & 0x7FFFFFFF), 0x20);
          }

          v145 = db_create_id_for_value(*v109, "com.apple.application-file");
          if (v145 != -2)
          {
            CFDictionarySetValue(Mutable, (v145 & 0x7FFFFFFF), 0x21);
          }

          v146 = db_create_id_for_value(*v109, "com.apple.dashboard-widget");
          if (v146 != -2)
          {
            CFDictionarySetValue(Mutable, (v146 & 0x7FFFFFFF), 0x22);
          }

          v147 = db_create_id_for_value(*v109, "public.folder");
          if (v147 != -2)
          {
            CFDictionarySetValue(Mutable, (v147 & 0x7FFFFFFF), 0x23);
          }

          v148 = db_create_id_for_value(*v109, "com.apple.mount-point");
          if (v148 != -2)
          {
            CFDictionarySetValue(Mutable, (v148 & 0x7FFFFFFF), 0x24);
          }

          v149 = db_create_id_for_value(*v109, "public.audio");
          if (v149 != -2)
          {
            CFDictionarySetValue(Mutable, (v149 & 0x7FFFFFFF), 0x25);
          }

          v150 = db_create_id_for_value(*v109, "public.mpeg-4-audio");
          if (v150 != -2)
          {
            CFDictionarySetValue(Mutable, (v150 & 0x7FFFFFFF), 0x26);
          }

          v151 = db_create_id_for_value(*v109, "com.apple.protected-mpeg-4-audio");
          if (v151 != -2)
          {
            CFDictionarySetValue(Mutable, (v151 & 0x7FFFFFFF), 0x27);
          }

          v152 = db_create_id_for_value(*v109, "com.adobe.pdf");
          if (v152 != -2)
          {
            CFDictionarySetValue(Mutable, (v152 & 0x7FFFFFFF), 0x28);
          }

          v153 = db_create_id_for_value(*v109, "com.apple.localized-pdf-bundle");
          if (v153 != -2)
          {
            CFDictionarySetValue(Mutable, (v153 & 0x7FFFFFFF), 0x29);
          }

          v154 = db_create_id_for_value(*v109, "public.presentation");
          if (v154 != -2)
          {
            CFDictionarySetValue(Mutable, (v154 & 0x7FFFFFFF), 0x2A);
          }

          v155 = db_create_id_for_value(*v109, "com.microsoft.powerpoint.ppt");
          if (v155 != -2)
          {
            CFDictionarySetValue(Mutable, (v155 & 0x7FFFFFFF), 0x2B);
          }

          v156 = db_create_id_for_value(*v109, "com.apple.keynote.key");
          if (v156 != -2)
          {
            CFDictionarySetValue(Mutable, (v156 & 0x7FFFFFFF), 0x2C);
          }

          v157 = db_create_id_for_value(*v109, "com.apple.iwork.keynote.key");
          if (v157 != -2)
          {
            CFDictionarySetValue(Mutable, (v157 & 0x7FFFFFFF), 0x2D);
          }

          v158 = db_create_id_for_value(*v109, "public.image");
          if (v158 != -2)
          {
            CFDictionarySetValue(Mutable, (v158 & 0x7FFFFFFF), 0x2E);
          }

          v159 = db_create_id_for_value(*v109, "com.apple.motion.project");
          if (v159 != -2)
          {
            CFDictionarySetValue(Mutable, (v159 & 0x7FFFFFFF), 0x2F);
          }

          v160 = db_create_id_for_value(*v109, "com.apple.iwork.pages.pages");
          if (v160 != -2)
          {
            CFDictionarySetValue(Mutable, (v160 & 0x7FFFFFFF), 0x30);
          }

          v161 = db_create_id_for_value(*v109, "com.apple.iwork.pages.sffpages");
          if (v161 != -2)
          {
            CFDictionarySetValue(Mutable, (v161 & 0x7FFFFFFF), 0x31);
          }

          v162 = db_create_id_for_value(*v109, "com.apple.iwork.pages.template");
          if (v162 != -2)
          {
            CFDictionarySetValue(Mutable, (v162 & 0x7FFFFFFF), 0x32);
          }

          v163 = db_create_id_for_value(*v109, "com.apple.iwork.pages.sfftemplate");
          if (v163 != -2)
          {
            CFDictionarySetValue(Mutable, (v163 & 0x7FFFFFFF), 0x33);
          }

          v164 = db_create_id_for_value(*v109, "public.rtf");
          if (v164 != -2)
          {
            CFDictionarySetValue(Mutable, (v164 & 0x7FFFFFFF), 0x34);
          }

          v165 = db_create_id_for_value(*v109, "com.apple.rtfd");
          if (v165 != -2)
          {
            CFDictionarySetValue(Mutable, (v165 & 0x7FFFFFFF), 0x35);
          }

          v166 = db_create_id_for_value(*v109, "com.apple.flat-rtfd");
          if (v166 != -2)
          {
            CFDictionarySetValue(Mutable, (v166 & 0x7FFFFFFF), 0x36);
          }

          v167 = db_create_id_for_value(*v109, "com.microsoft.word.doc");
          if (v167 != -2)
          {
            CFDictionarySetValue(Mutable, (v167 & 0x7FFFFFFF), 0x37);
          }

          v168 = db_create_id_for_value(*v109, "org.khronos.collada.digital-asset-exchange");
          if (v168 != -2)
          {
            CFDictionarySetValue(Mutable, (v168 & 0x7FFFFFFF), 0x38);
          }

          v169 = db_create_id_for_value(*v109, "public.plain-text");
          if (v169 != -2)
          {
            CFDictionarySetValue(Mutable, (v169 & 0x7FFFFFFF), 0x39);
          }

          v170 = db_create_id_for_value(*v109, "public.html");
          if (v170 != -2)
          {
            CFDictionarySetValue(Mutable, (v170 & 0x7FFFFFFF), 0x3A);
          }

          v171 = db_create_id_for_value(*v109, "public.xhtml");
          if (v171 != -2)
          {
            CFDictionarySetValue(Mutable, (v171 & 0x7FFFFFFF), 0x3B);
          }

          v172 = db_create_id_for_value(*v109, "public.shell-script");
          if (v172 != -2)
          {
            CFDictionarySetValue(Mutable, (v172 & 0x7FFFFFFF), 0x3C);
          }

          v173 = db_create_id_for_value(*v109, "public.source-code");
          if (v173 != -2)
          {
            CFDictionarySetValue(Mutable, (v173 & 0x7FFFFFFF), 0x3D);
          }

          v174 = db_create_id_for_value(*v109, "public.unix-executable");
          if (v174 != -2)
          {
            CFDictionarySetValue(Mutable, (v174 & 0x7FFFFFFF), 0x3E);
          }

          v175 = db_create_id_for_value(*v109, "com.apple.xcode.project");
          if (v175 != -2)
          {
            CFDictionarySetValue(Mutable, (v175 & 0x7FFFFFFF), 0x3F);
          }

          v176 = db_create_id_for_value(*v109, "com.apple.xcode.model");
          if (v176 != -2)
          {
            CFDictionarySetValue(Mutable, (v176 & 0x7FFFFFFF), 0x40);
          }

          v177 = db_create_id_for_value(*v109, "com.apple.xcode.archive");
          if (v177 != -2)
          {
            CFDictionarySetValue(Mutable, (v177 & 0x7FFFFFFF), 0x41);
          }

          v178 = db_create_id_for_value(*v109, "com.apple.xcode.docset");
          if (v178 != -2)
          {
            CFDictionarySetValue(Mutable, (v178 & 0x7FFFFFFF), 0x42);
          }

          v179 = db_create_id_for_value(*v109, "com.apple.xcode.projectdata");
          if (v179 != -2)
          {
            CFDictionarySetValue(Mutable, (v179 & 0x7FFFFFFF), 0x43);
          }

          v180 = db_create_id_for_value(*v109, "com.apple.xcode.dsym");
          if (v180 != -2)
          {
            CFDictionarySetValue(Mutable, (v180 & 0x7FFFFFFF), 0x44);
          }

          v181 = db_create_id_for_value(*v109, "com.apple.xcode.configsettings");
          if (v181 != -2)
          {
            CFDictionarySetValue(Mutable, (v181 & 0x7FFFFFFF), 0x45);
          }

          v182 = db_create_id_for_value(*v109, "com.apple.xcode.usersettings");
          if (v182 != -2)
          {
            CFDictionarySetValue(Mutable, (v182 & 0x7FFFFFFF), 0x46);
          }

          v183 = db_create_id_for_value(*v109, "com.apple.xcode.strings-text");
          if (v183 != -2)
          {
            CFDictionarySetValue(Mutable, (v183 & 0x7FFFFFFF), 0x47);
          }

          v184 = db_create_id_for_value(*v109, "com.apple.xcode.plugin");
          if (v184 != -2)
          {
            CFDictionarySetValue(Mutable, (v184 & 0x7FFFFFFF), 0x48);
          }

          v185 = db_create_id_for_value(*v109, "com.apple.xcode.mom");
          if (v185 != -2)
          {
            CFDictionarySetValue(Mutable, (v185 & 0x7FFFFFFF), 0x49);
          }

          v186 = db_create_id_for_value(*v109, "com.apple.property-list");
          if (v186 != -2)
          {
            CFDictionarySetValue(Mutable, (v186 & 0x7FFFFFFF), 0x4A);
          }

          v187 = db_create_id_for_value(*v109, "dyn.ah62d4rv4ge81a7dk");
          if (v187 != -2)
          {
            CFDictionarySetValue(Mutable, (v187 & 0x7FFFFFFF), 0x4B);
          }

          v188 = db_create_id_for_value(*v109, "dyn.ah62d4rv4ge80u5pbsa");
          if (v188 != -2)
          {
            CFDictionarySetValue(Mutable, (v188 & 0x7FFFFFFF), 0x4C);
          }

          v189 = db_create_id_for_value(*v109, "com.apple.dashcode.xml");
          if (v189 != -2)
          {
            CFDictionarySetValue(Mutable, (v189 & 0x7FFFFFFF), 0x4D);
          }

          v190 = db_create_id_for_value(*v109, "com.apple.dashcode.css");
          if (v190 != -2)
          {
            CFDictionarySetValue(Mutable, (v190 & 0x7FFFFFFF), 0x4E);
          }

          v191 = db_create_id_for_value(*v109, "com.apple.dashcode.javascript");
          if (v191 != -2)
          {
            CFDictionarySetValue(Mutable, (v191 & 0x7FFFFFFF), 0x4F);
          }

          v192 = db_create_id_for_value(*v109, "com.apple.dashcode.json");
          if (v192 != -2)
          {
            CFDictionarySetValue(Mutable, (v192 & 0x7FFFFFFF), 0x50);
          }

          v193 = db_create_id_for_value(*v109, "com.apple.dashcode.manifest");
          if (v193 != -2)
          {
            CFDictionarySetValue(Mutable, (v193 & 0x7FFFFFFF), 0x51);
          }

          v194 = db_create_id_for_value(*v109, "com.apple.interfacebuilder.document");
          if (v194 != -2)
          {
            CFDictionarySetValue(Mutable, (v194 & 0x7FFFFFFF), 0x52);
          }

          v195 = db_create_id_for_value(*v109, "com.apple.interfacebuilder.document.cocoa");
          if (v195 != -2)
          {
            CFDictionarySetValue(Mutable, (v195 & 0x7FFFFFFF), 0x53);
          }

          v196 = db_create_id_for_value(*v109, "com.apple.rez-source");
          if (v196 != -2)
          {
            CFDictionarySetValue(Mutable, (v196 & 0x7FFFFFFF), 0x54);
          }

          v197 = db_create_id_for_value(*v109, "com.apple.iphone.developerprofile");
          if (v197 != -2)
          {
            CFDictionarySetValue(Mutable, (v197 & 0x7FFFFFFF), 0x55);
          }

          v198 = db_create_id_for_value(*v109, "com.apple.iphone.mobileprovision");
          if (v198 != -2)
          {
            CFDictionarySetValue(Mutable, (v198 & 0x7FFFFFFF), 0x56);
          }

          v199 = db_create_id_for_value(*v109, "com.apple.coreanimation-bundle");
          if (v199 != -2)
          {
            CFDictionarySetValue(Mutable, (v199 & 0x7FFFFFFF), 0x57);
          }

          v200 = db_create_id_for_value(*v109, "com.apple.coreanimation-xml");
          if (v200 != -2)
          {
            CFDictionarySetValue(Mutable, (v200 & 0x7FFFFFFF), 0x58);
          }

          v201 = db_create_id_for_value(*v109, "com.sun.java-class");
          if (v201 != -2)
          {
            CFDictionarySetValue(Mutable, (v201 & 0x7FFFFFFF), 0x59);
          }

          v202 = db_create_id_for_value(*v109, "com.apple.scripting-definition");
          if (v202 != -2)
          {
            CFDictionarySetValue(Mutable, (v202 & 0x7FFFFFFF), 0x5A);
          }

          v203 = db_create_id_for_value(*v109, "com.apple.dt.document.workspace");
          if (v203 != -2)
          {
            CFDictionarySetValue(Mutable, (v203 & 0x7FFFFFFF), 0x5B);
          }

          v204 = db_create_id_for_value(*v109, "com.apple.dt.document.scheme");
          if (v204 != -2)
          {
            CFDictionarySetValue(Mutable, (v204 & 0x7FFFFFFF), 0x5C);
          }

          v205 = db_create_id_for_value(*v109, "com.apple.dt.ide.plug-in");
          if (v205 != -2)
          {
            CFDictionarySetValue(Mutable, (v205 & 0x7FFFFFFF), 0x5D);
          }

          v206 = db_create_id_for_value(*v109, "com.apple.dt.dvt.plug-in");
          if (v206 != -2)
          {
            CFDictionarySetValue(Mutable, (v206 & 0x7FFFFFFF), 0x5E);
          }

          v207 = db_create_id_for_value(*v109, "com.apple.dt.document.snapshot");
          if (v207 != -2)
          {
            CFDictionarySetValue(Mutable, (v207 & 0x7FFFFFFF), 0x5F);
          }

          v208 = db_create_id_for_value(*v109, "com.apple.dt.bundle.unit-test.objective-c");
          if (v208 != -2)
          {
            CFDictionarySetValue(Mutable, (v208 & 0x7FFFFFFF), 0x60);
          }

          v209 = db_create_id_for_value(*v109, "com.apple.instruments.tracetemplate");
          if (v209 != -2)
          {
            CFDictionarySetValue(Mutable, (v209 & 0x7FFFFFFF), 0x61);
          }

          v210 = db_create_id_for_value(*v109, "com.apple.quartzdebug.introspectiontrace");
          if (v210 != -2)
          {
            CFDictionarySetValue(Mutable, (v210 & 0x7FFFFFFF), 0x62);
          }

          v211 = db_create_id_for_value(*v109, "com.apple.applescript.text-object");
          if (v211 != -2)
          {
            CFDictionarySetValue(Mutable, (v211 & 0x7FFFFFFF), 0x63);
          }

          v212 = db_create_id_for_value(*v109, "com.apple.applescript.data-object");
          if (v212 != -2)
          {
            CFDictionarySetValue(Mutable, (v212 & 0x7FFFFFFF), 0x64);
          }

          v213 = db_create_id_for_value(*v109, "com.apple.applescript.url-object");
          if (v213 != -2)
          {
            CFDictionarySetValue(Mutable, (v213 & 0x7FFFFFFF), 0x65);
          }

          v214 = db_create_id_for_value(*v109, "com.apple.applescript.alias-object");
          if (v214 != -2)
          {
            CFDictionarySetValue(Mutable, (v214 & 0x7FFFFFFF), 0x66);
          }

          v215 = db_create_id_for_value(*v109, "com.apple.symbol-export");
          if (v215 != -2)
          {
            CFDictionarySetValue(Mutable, (v215 & 0x7FFFFFFF), 0x67);
          }

          v216 = db_create_id_for_value(*v109, "com.apple.mach-o-binary");
          if (v216 != -2)
          {
            CFDictionarySetValue(Mutable, (v216 & 0x7FFFFFFF), 0x68);
          }

          v217 = db_create_id_for_value(*v109, "com.apple.mach-o-object");
          if (v217 != -2)
          {
            CFDictionarySetValue(Mutable, (v217 & 0x7FFFFFFF), 0x69);
          }

          v218 = db_create_id_for_value(*v109, "com.apple.mach-o-executable");
          if (v218 != -2)
          {
            CFDictionarySetValue(Mutable, (v218 & 0x7FFFFFFF), 0x6A);
          }

          v219 = db_create_id_for_value(*v109, "com.apple.x11-mach-o-executable");
          if (v219 != -2)
          {
            CFDictionarySetValue(Mutable, (v219 & 0x7FFFFFFF), 0x6B);
          }

          v220 = db_create_id_for_value(*v109, "public.object-code");
          if (v220 != -2)
          {
            CFDictionarySetValue(Mutable, (v220 & 0x7FFFFFFF), 0x6C);
          }

          v221 = db_create_id_for_value(*v109, "com.microsoft.windows-executable");
          if (v221 != -2)
          {
            CFDictionarySetValue(Mutable, (v221 & 0x7FFFFFFF), 0x6D);
          }

          v222 = db_create_id_for_value(*v109, "com.microsoft.windows-dynamic-link-library");
          if (v222 != -2)
          {
            CFDictionarySetValue(Mutable, (v222 & 0x7FFFFFFF), 0x6E);
          }

          v223 = db_create_id_for_value(*v109, "com.sun.java-archive");
          if (v223 != -2)
          {
            CFDictionarySetValue(Mutable, (v223 & 0x7FFFFFFF), 0x6F);
          }

          v224 = db_create_id_for_value(*v109, "com.sun.web-application-archive");
          if (v224 != -2)
          {
            CFDictionarySetValue(Mutable, (v224 & 0x7FFFFFFF), 0x70);
          }

          v225 = db_create_id_for_value(*v109, "com.apple.xcode.plugindata");
          if (v225 != -2)
          {
            CFDictionarySetValue(Mutable, (v225 & 0x7FFFFFFF), 0x71);
          }

          v226 = db_create_id_for_value(*v109, "com.apple.dt.playground");
          if (v226 != -2)
          {
            CFDictionarySetValue(Mutable, (v226 & 0x7FFFFFFF), 0x72);
          }

          v227 = db_create_id_for_value(*v109, "com.apple.iwork.numbers.sffnumbers");
          if (v227 != -2)
          {
            CFDictionarySetValue(Mutable, (v227 & 0x7FFFFFFF), 0x73);
          }

          v228 = db_create_id_for_value(*v109, "com.apple.iwork.numbers.numbers");
          if (v228 != -2)
          {
            CFDictionarySetValue(Mutable, (v228 & 0x7FFFFFFF), 0x74);
          }

          v229 = db_create_id_for_value(*v109, "com.apple.iwork.numbers.template");
          if (v229 != -2)
          {
            CFDictionarySetValue(Mutable, (v229 & 0x7FFFFFFF), 0x75);
          }

          v230 = db_create_id_for_value(*v109, "com.microsoft.excel.xls");
          if (v230 != -2)
          {
            CFDictionarySetValue(Mutable, (v230 & 0x7FFFFFFF), 0x76);
          }

          v231 = db_create_id_for_value(*v109, "org.openxmlformats.spreadsheetml.sheet");
          if (v231 != -2)
          {
            CFDictionarySetValue(Mutable, (v231 & 0x7FFFFFFF), 0x77);
          }

          v232 = db_create_id_for_value(*v109, "public.spreadsheet");
          if (v232 != -2)
          {
            CFDictionarySetValue(Mutable, (v232 & 0x7FFFFFFF), 0x78);
          }

          v233 = db_create_id_for_value(*v109, "public.xml");
          if (v233 != -2)
          {
            CFDictionarySetValue(Mutable, (v233 & 0x7FFFFFFF), 0x79);
          }

          v234 = db_create_id_for_value(*v109, "com.apple.log");
          if (v234 != -2)
          {
            CFDictionarySetValue(Mutable, (v234 & 0x7FFFFFFF), 0x7A);
          }

          v235 = db_create_id_for_value(*v109, "com.apple.crashreport");
          if (v235 != -2)
          {
            CFDictionarySetValue(Mutable, (v235 & 0x7FFFFFFF), 0x7B);
          }

          v236 = db_create_id_for_value(*v109, "com.apple.spinreport");
          if (v236 != -2)
          {
            CFDictionarySetValue(Mutable, (v236 & 0x7FFFFFFF), 0x7C);
          }

          v237 = db_create_id_for_value(*v109, "com.apple.panicreport");
          if (v237 != -2)
          {
            CFDictionarySetValue(Mutable, (v237 & 0x7FFFFFFF), 0x7D);
          }

          v238 = db_create_id_for_value(*v109, "com.apple.shutdownstall");
          if (v238 != -2)
          {
            CFDictionarySetValue(Mutable, (v238 & 0x7FFFFFFF), 0x7E);
          }

          v239 = db_create_id_for_value(*v109, "com.apple.hangreport");
          if (v239 != -2)
          {
            CFDictionarySetValue(Mutable, (v239 & 0x7FFFFFFF), 0x7F);
          }

          v240 = db_create_id_for_value(*v109, "public.json");
          if (v240 != -2)
          {
            CFDictionarySetValue(Mutable, (v240 & 0x7FFFFFFF), 0x80);
          }

          v241 = db_create_id_for_value(*v109, "public.log");
          if (v241 != -2)
          {
            CFDictionarySetValue(Mutable, (v241 & 0x7FFFFFFF), 0x81);
          }

          v242 = db_create_id_for_value(*v109, "public.content");
          if (v242 != -2)
          {
            CFDictionarySetValue(Mutable, (v242 & 0x7FFFFFFF), 0x82);
          }

          v243 = db_create_id_for_value(*v109, "com.microsoft.excel.sheet.binary.macroenabled");
          if (v243 != -2)
          {
            CFDictionarySetValue(Mutable, (v243 & 0x7FFFFFFF), 0x83);
          }

          v244 = db_create_id_for_value(*v109, "org.openxmlformats.spreadsheetml.sheet.macroenabled");
          if (v244 != -2)
          {
            CFDictionarySetValue(Mutable, (v244 & 0x7FFFFFFF), 0x84);
          }

          v245 = db_create_id_for_value(*v109, "com.apple.protected-mpeg-4-audio-b");
          if (v245 != -2)
          {
            CFDictionarySetValue(Mutable, (v245 & 0x7FFFFFFF), 0x85);
          }

          v246 = db_create_id_for_value(*v109, "com.audible.aa-audiobook");
          if (v246 != -2)
          {
            CFDictionarySetValue(Mutable, (v246 & 0x7FFFFFFF), 0x86);
          }

          v247 = db_create_id_for_value(*v109, "com.audible.aax-audiobook");
          if (v247 != -2)
          {
            CFDictionarySetValue(Mutable, (v247 & 0x7FFFFFFF), 0x87);
          }

          v248 = db_create_id_for_value(*v109, "com.apple.tips");
          if (v248 != -2)
          {
            CFDictionarySetValue(Mutable, (v248 & 0x7FFFFFFF), 0x88);
          }

          v249 = db_create_id_for_value(*v109, "com.apple.helpviewer");
          if (v249 != -2)
          {
            CFDictionarySetValue(Mutable, (v249 & 0x7FFFFFFF), 0x89);
          }

          v250 = db_create_id_for_value(*v109, "com.apple.help.topic");
          if (v250 != -2)
          {
            CFDictionarySetValue(Mutable, (v250 & 0x7FFFFFFF), 0x8A);
          }

          *(v25 + 6608) = CFDictionaryCreateCopy(v111, Mutable);
          CFRelease(Mutable);
        }

        db_create_id_for_field(*v109, "kMDStoreProperties", 0x108u, 14);
        if (!*v109)
        {
          v254 = *__error();
          v255 = _SILogForLogForCategory(7);
          v23 = v292;
          v26 = a7;
          if (os_log_type_enabled(v255, OS_LOG_TYPE_ERROR))
          {
            v261 = fcntl(v290, 50, v308);
            if (v308[0])
            {
              v262 = v261 < 0;
            }

            else
            {
              v262 = 1;
            }

            if (v262)
            {
              v263 = 0;
            }

            else
            {
              v263 = v308;
            }

            v26 = a7;
            *buf = 136315906;
            *&buf[4] = "SICreateNewIndex";
            *&buf[12] = 1024;
            *&buf[14] = 14614;
            *&buf[18] = 2080;
            *&buf[20] = v263;
            *&buf[28] = 2080;
            *&buf[30] = "store.db";
            _os_log_error_impl(&dword_1C278D000, v255, OS_LOG_TYPE_ERROR, "%s:%d: Could not create store at path '%s/%s'", buf, 0x26u);
          }

          *__error() = v254;
          v22 = 14615;
          v21 = 1;
          goto LABEL_89;
        }

        *buf = 2;
        v251 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, buf);
        SISetProperty(v25, @"YukonRecomputedSizes", v251);
        CFRelease(v251);
        v21 = 1;
        _si_next_index_id(v25, *(v25 + 1456), 1, 1);
        v23 = v292;
        v46 = v289;
        v26 = a7;
        goto LABEL_35;
      }

      v252 = *__error();
      v257 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
      {
        v268 = fcntl(v290, 50, v308);
        if (v308[0])
        {
          v269 = v268 < 0;
        }

        else
        {
          v269 = 1;
        }

        if (v269)
        {
          v270 = 0;
        }

        else
        {
          v270 = v308;
        }

        *valuePtr = 136315650;
        v298 = "SICreateNewIndex";
        v299 = 1024;
        v300 = 14542;
        v301 = 2080;
        v302 = v270;
        _os_log_error_impl(&dword_1C278D000, v257, OS_LOG_TYPE_ERROR, "%s:%d: Could not create reverse dir store at path '%s'", valuePtr, 0x1Cu);
      }

      v22 = 14543;
    }

    else
    {
      v252 = *__error();
      v253 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
      {
        v258 = fcntl(v290, 50, v308);
        if (v308[0])
        {
          v259 = v258 < 0;
        }

        else
        {
          v259 = 1;
        }

        if (v259)
        {
          v260 = 0;
        }

        else
        {
          v260 = v308;
        }

        *valuePtr = 136315906;
        v298 = "SICreateNewIndex";
        v299 = 1024;
        v300 = 14530;
        v301 = 2080;
        v302 = v260;
        v303 = 2080;
        v304 = "store.db";
        _os_log_error_impl(&dword_1C278D000, v253, OS_LOG_TYPE_ERROR, "%s:%d: Could not create store at path '%s/%s'", valuePtr, 0x26u);
      }

      v22 = 14531;
    }

    v23 = v292;
    v26 = a7;
    v21 = 0;
    *__error() = v252;
    goto LABEL_89;
  }

  v21 = 0;
  v23 = v292;
  v46 = v289;
  v24 = v291;
LABEL_35:
  *v24 = v25;
  *(v25 + 6584) |= 0xE000000u;
  v47 = SIInitIndex(v38, v25, v46, v287, v12, v288, 0, 0, 1, 0);
  if ((v47 & 0x80000000) != 0)
  {
    v22 = 0;
LABEL_89:
    _SICloseIndex(v25, 0);
    v87 = *(v25 + 1192);
    if (v87)
    {
      db_release_datastore_no_sync(v87);
      *(v25 + 1192) = 0;
    }

    v88 = *(v25 + 6624);
    if (v88)
    {
      freeReverseDirStore(v88);
      *(v25 + 6624) = 0;
    }

    goto LABEL_9;
  }

  v16 = v47;
  if (!(v47 | v12 & 8))
  {
    v48 = *MEMORY[0x1E695E4D0];
    if ((v12 & 0x200) != 0)
    {
      si_set_property(v25, @"kSITokenizerUnigrams", *MEMORY[0x1E695E4D0], 1, 0);
    }

    si_set_property(v25, @"kSITokenizerUseCRF", v48, 1, 0);
    *buf = (*(v25 + 6584) >> 25) & 3;
    v49 = *MEMORY[0x1E695E480];
    v50 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, buf);
    si_set_property(v25, @"kSITokenizerVersion", v50, 1, 0);
    CFRelease(v50);
    v51 = CFStringCreateWithCString(v49, sysVersionCStr, 0x8000100u);
    si_set_property(v25, @"kSIRepairSizes", v51, 1, 0);
    CFRelease(v51);
    *valuePtr = (*(v25 + 6584) >> 27) & 1;
    v52 = CFNumberCreate(v49, kCFNumberIntType, valuePtr);
    si_set_property(v25, @"kSIIdentifierHashVersion", v52, 1, 0);
    CFRelease(v52);
    si_set_property(v25, @"kSIRepairedIndex", v48, 1, 0);
    _si_set_version_property(v25, @"VEC_EXT_CLEARED_JOURNALS", 0);
    _si_set_version_property(v25, @"VEC_EXT_CLEARED_VECTORS", 1);
    si_set_obj_state(v25, v25);
  }

  MEMORY[0x1C6921200](v23);
  close(v23);
  if ((v12 & 8) == 0)
  {
    SIActivityJournalOpen(v25 + 2192, 37, *(v25 + 2344), *(*(v25 + 1392) + 8), *(*(v25 + 1384) + 8), 0, 0, *(v25 + 2408));
  }

  v53 = *(v25 + 1392);
  v54 = *(v25 + 1384);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __si_cacheIndexVersion_block_invoke;
  *&buf[24] = &__block_descriptor_tmp_1098;
  *&buf[32] = v25;
  if (v54)
  {
    v55 = *(v54 + 8);
    while (v55 >= 1)
    {
      v56 = v55 - 1;
      v57 = (*&buf[16])(buf, *(*v54 + 8 * v55 - 8), 1);
      v55 = v56;
      if (!v57)
      {
        return v16;
      }
    }
  }

  if (v53)
  {
    v58 = *(v53 + 8);
    do
    {
      if (v58 < 1)
      {
        break;
      }

      v59 = v58 - 1;
      v60 = (*&buf[16])(buf, *(*v53 + 8 * v58 - 8), 0);
      v58 = v59;
    }

    while (v60);
  }

  return v16;
}

void _SITuningInit()
{
  pthread_once(&_SITuningInit_once_control, _onceInitTuning);
  if (_SITuningInit_indexOnce != -1)
  {

    dispatch_once(&_SITuningInit_indexOnce, &__block_literal_global_1102);
  }
}

double SIInitIndexLocks(uint64_t a1)
{
  pthread_mutex_init((a1 + 1880), 0);
  pthread_cond_init((a1 + 1944), 0);
  pthread_mutex_init((a1 + 1504), 0);
  pthread_mutex_init((a1 + 1568), 0);
  pthread_mutex_init((a1 + 1632), 0);
  pthread_mutex_init((a1 + 6976), 0);
  pthread_mutex_init((a1 + 2256), 0);
  pthread_rwlock_init((a1 + 80), 0);
  *(a1 + 1696) = 0;
  result = 0.0;
  *(a1 + 6576) = 0;
  atomic_store(0, (a1 + 1452));
  return result;
}

uint64_t guarded_dup(int a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = dup(a1);
  arc4random_buf(&v8, 8uLL);
  v1 = change_fdguard_np();
  if (v1)
  {
    v2 = v1;
    v3 = *__error();
    v4 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *__error();
      *buf = 136315906;
      v10 = "guarded_dup";
      v11 = 1024;
      v12 = 14191;
      v13 = 1024;
      v14 = v2;
      v15 = 1024;
      v16 = v6;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: Failed to protect fd with %d %d", buf, 0x1Eu);
    }

    *__error() = v3;
  }

  return v7;
}

int *si_set_vector_store(void *a1)
{
  result = a1[149];
  if (result)
  {
    vector_store = db_get_vector_store(result);
    v4 = a1[174];
    v5 = a1[173];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v9 = __si_set_vector_store_block_invoke;
    v10 = &__block_descriptor_tmp_1097;
    v11 = vector_store;
    if (v4 && *(v4 + 8))
    {
      v6 = 0;
      while ((v9)(v8, *(*v4 + 8 * v6), 0))
      {
        if (++v6 >= *(v4 + 8))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if (v5 && *(v5 + 8))
      {
        v7 = 0;
        do
        {
          if (!(v9)(v8, *(*v5 + 8 * v7), 1))
          {
            break;
          }

          ++v7;
        }

        while (v7 < *(v5 + 8));
      }
    }

    return db_set_host(a1[149], a1);
  }

  return result;
}

uint64_t SIInitIndex(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  cf = v16;
  v18 = v17;
  v435 = v19;
  v21 = v20;
  v23 = v22;
  v508 = *MEMORY[0x1E69E9840];
  if (registerForGameModeChange_onceToken != -1)
  {
    dispatch_once(&registerForGameModeChange_onceToken, &__block_literal_global_1131);
  }

  if (freeQueueOnce != -1)
  {
    dispatch_once(&freeQueueOnce, &__block_literal_global_1105);
  }

  v439 = v15;
  v442 = v13;
  si_set_vector_store(v23);
  v24 = *(v23 + 1392);
  v25 = *(v23 + 1384);
  *__s1 = 0;
  v470 = __s1;
  v471 = 0x2000000000;
  v472 = 0;
  *&buf.f_bsize = MEMORY[0x1E69E9820];
  buf.f_blocks = 0x40000000;
  buf.f_bfree = __ContentIndexVectorIndexDropCount_block_invoke;
  buf.f_bavail = &unk_1E8197668;
  buf.f_files = __s1;
  if (v24 && (v26 = v24, *(v24 + 8)))
  {
    v27 = 0;
    while ((buf.f_bfree)(&buf, *(*v26 + 8 * v27), 0))
    {
      if (++v27 >= *(v26 + 8))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    if (v25 && *(v25 + 8))
    {
      v28 = 0;
      do
      {
        if (!(buf.f_bfree)(&buf, *(*v25 + 8 * v28), 1))
        {
          break;
        }

        ++v28;
      }

      while (v28 < *(v25 + 8));
    }
  }

  v29 = *(v470 + 6);
  _Block_object_dispose(__s1, 8);
  if (v29)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 67109120;
      buf.f_iosize = v29;
      _os_log_impl(&dword_1C278D000, v31, OS_LOG_TYPE_DEFAULT, "db_scan_lost_ids for %u dropped vectors", &buf, 8u);
    }

    *__error() = v30;
    create_scan_touch_file(*(v23 + 32), 0);
    scan_lost_ids(v23, 0);
    v32 = *(v23 + 1392);
    v33 = *(v23 + 1384);
    if (v32)
    {
      v34 = *(v32 + 8);
      if (v34)
      {
        v35 = *v32;
        do
        {
          v36 = *v35++;
          *(v36 + 4920) = 0;
          --v34;
        }

        while (v34);
      }
    }

    if (v33)
    {
      v37 = *(v33 + 8);
      if (v37)
      {
        v38 = *v33;
        do
        {
          v39 = *v38++;
          *(v39 + 4920) = 0;
          --v37;
        }

        while (v37);
      }
    }
  }

  v434 = v21;
  v436 = v11;
  v40 = v11;
  v41 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_BACKGROUND, 0);
  *(v23 + 1184) = dispatch_queue_create("com.apple.spotlight.index.journal.toc", v41);
  bzero(__s1, 0x400uLL);
  v42 = *(v23 + 32);
  bzero(&buf, 0x878uLL);
  v43 = fstatfs(v42, &buf);
  v44 = buf.f_blocks * buf.f_bsize;
  if (v43)
  {
    v44 = -1;
  }

  *(v23 + 2472) = v44;
  *(v23 + 6876) = 0x7FFFFFFF;
  v45 = 832;
  do
  {
    v46 = v45;
    *(v23 + v45) = dispatch_semaphore_create(16);
    v45 = v46 + 8;
  }

  while (v46 != 856);
  atomic_store(0, (v23 + 6888));
  *(v23 + 1480) = 0;
  *(v23 + 1472) = 0;
  if (*(v23 + 2072) != 1)
  {
    *(v23 + 64) = 0;
    if ((v18 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v47 = dispatch_workloop_create("Watchdog workloop");
  v48 = dispatch_queue_create_with_target_V2("Watchdog timer queue", 0, v47);
  v49 = dispatch_source_create(MEMORY[0x1E69E9710], 1uLL, 0, v48);
  dispatch_release(v47);
  v50 = malloc_type_calloc(1uLL, 0x78uLL, 0x1060040D8F80976uLL);
  *v50 = v49;
  v50[1] = v48;
  *(v50 + 16) = 0;
  v50[9] = 0;
  v50[12] = 0;
  v50[14] = 0;
  *(v50 + 20) = 0;
  *(v50 + 2) = 0u;
  *(v50 + 3) = 0u;
  *(v50 + 16) = 0;
  *(v23 + 64) = v50;
  *&buf.f_bsize = MEMORY[0x1E69E9820];
  buf.f_blocks = 0x40000000;
  buf.f_bfree = __si_indexingWatchdogInit_block_invoke;
  buf.f_bavail = &__block_descriptor_tmp_7_3953;
  buf.f_files = v50;
  buf.f_ffree = v23;
  dispatch_source_set_event_handler(v49, &buf);
  if ((v18 & 0x100) != 0)
  {
LABEL_34:
    *(v23 + 2128) = xmmword_1C2BFA340;
    *(v23 + 672) = 0;
    *(v23 + 328) = 0;
    *(v23 + 656) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    si_init_orphan_oid(v23);
  }

LABEL_35:
  bzero((v23 + 7040), 0xC00uLL);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v460 = 0;
  *&v459[4] = 0;
  *v459 = 0;
  v52 = setThreadIdAndInfo(*(v23 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  *&v459[8] = HIDWORD(v52);
  v460 = v52;
  *&v459[4] = v53;
  *v459 = v54;
  v55 = threadData[9 * v52 + 1] + 320 * HIDWORD(v52);
  *(v55 + 216) = 0;
  v56 = *(v55 + 312);
  v57 = *(v55 + 224);
  if (v57)
  {
    v57(*(v55 + 288));
  }

  v458 = v460;
  v457 = *&v459[8];
  v456 = *v459;
  if (_setjmp(v55))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
    }

    *(v55 + 312) = v56;
    CIOnThreadCleanUpReset(v456);
    dropThreadId(v458, 1, add_explicit + 1);
    CICleanUpReset(v458, HIDWORD(v456));
LABEL_146:
    _SICloseIndex(v23, 0);
    pthread_mutex_destroy((v23 + 1880));
    pthread_cond_destroy((v23 + 1944));
    pthread_mutex_destroy((v23 + 1504));
    pthread_mutex_destroy((v23 + 1568));
    pthread_mutex_destroy((v23 + 1632));
    pthread_mutex_destroy((v23 + 6976));
    pthread_mutex_destroy((v23 + 2256));
    pthread_rwlock_destroy((v23 + 80));
    return 0xFFFFFFFFLL;
  }

  v438 = v40;
  v58 = *MEMORY[0x1E695E480];
  v59 = *MEMORY[0x1E695E480];
  *(v23 + 72) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 1;
  v60 = CFNumberCreate(v58, kCFNumberIntType, &valuePtr);
  if (v60)
  {
    v61 = v60;
    CFDictionarySetValue(*(v23 + 72), @"version", v60);
    CFRelease(v61);
  }

  *(v23 + 1704) = CFBagCreateMutable(v59, 64, MEMORY[0x1E695E9D0]);
  if (*(v23 + 32) && *(v23 + 1192))
  {
    _si_init_localized_terms(v23);
  }

  if ((v18 & 0x80000109) == 0 && !a10 && !*(v23 + 6624))
  {
    v395 = __si_assert_copy_extra_661(-1);
    v363 = v395;
    v396 = "";
    if (v395)
    {
      v396 = v395;
    }

    v405 = "fs_only || newIndex->dirStore || rebuildDirStore";
    v407 = v396;
    v365 = 15551;
LABEL_512:
    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", v365, v405, v407);
    free(v363);
    if (__valid_fs(-1))
    {
      v370 = 2989;
    }

    else
    {
      v370 = 3072;
    }

    *v370 = -559038737;
    abort();
  }

  *(v23 + 828) = v18;
  if (*(v23 + 2072) == 1)
  {
    *(v23 + 6584) |= 0x300000u;
  }

  v441 = v18 & 0x80000109;
  v62 = *(v23 + 32);
  value = v23;
  v444 = add_explicit;
  v443 = v56;
  v440 = v59;
  if ((v18 & 0x100) != 0)
  {
    v497 = 0u;
    v496 = 0u;
    v495 = 0u;
    v494 = 0u;
    v493 = 0u;
    v492 = 0u;
    v491 = 0u;
    v490 = 0u;
    v489 = 0u;
    v488 = 0u;
    v487 = 0u;
    v486 = 0u;
    v485 = 0u;
    v484 = 0u;
    v483 = 0u;
    v482 = 0u;
    v481 = 0u;
    v480 = 0u;
    v479 = 0u;
    v478 = 0u;
    v477 = 0u;
    v476 = 0u;
    v475 = 0u;
    memset(&v474, 0, sizeof(v474));
    snprintf(&v474, 0x200uLL, "doc_store_load(%d, %s, %lld)", v62, "docstore", 1);
    v462[1] = 0;
    v462[0] = 0;
    ScopeLogger::ScopeLogger(v462, &v474);
    memset(v461, 0, sizeof(v461));
    analytics::ScopedLogger<analytics::OpenEvent>::ScopedLogger(v461);
  }

  v63 = fcntl(*(v23 + 32), 50, __s1);
  v64 = 0;
  if ((v63 & 0x80000000) == 0 && __s1[0])
  {
    v65 = strstr(__s1, "NSFile");
    if (v65)
    {
      v64 = v65;
    }

    else
    {
      v64 = __s1;
    }
  }

  v428 = v64;
  if (*(v23 + 1192))
  {
    _SIInitSDB(v23, v18, (v18 >> 2) & 1);
    v66 = SICopyProperty(v23, @"JournalSerialNumber");
    if (v66)
    {
      v67 = v66;
      v68 = CFGetTypeID(v66);
      if (v68 == CFNumberGetTypeID())
      {
        *&buf.f_bsize = 0;
        CFNumberGetValue(v67, kCFNumberSInt64Type, &buf);
        if (*&buf.f_bsize)
        {
          *(v23 + 2128) = *&buf.f_bsize;
        }
      }

      CFRelease(v67);
    }

    v69 = SICopyProperty(v23, @"ConsumedJournalSerialNumber");
    if (v69)
    {
      v70 = v69;
      v71 = CFGetTypeID(v69);
      if (v71 == CFNumberGetTypeID())
      {
        *&buf.f_bsize = 0;
        CFNumberGetValue(v70, kCFNumberSInt64Type, &buf);
        if (*&buf.f_bsize)
        {
          *(v23 + 2136) = *&buf.f_bsize;
        }
      }

      CFRelease(v70);
    }

    v72 = SICopyProperty(v23, @"kSIIdentifierHashVersion");
    if (v72)
    {
      v73 = v72;
      v74 = CFGetTypeID(v72);
      if (v74 == CFNumberGetTypeID())
      {
        buf.f_bsize = 0;
        CFNumberGetValue(v73, kCFNumberIntType, &buf);
        *(v23 + 6584) = *(v23 + 6584) & 0xF7FFFFFF | ((buf.f_bsize & 1) << 27);
      }

      CFRelease(v73);
    }

    v75 = SICopyProperty(v23, @"kSIIdentifierHashVersion");
    if (v75)
    {
      v76 = v75;
      v77 = CFGetTypeID(v75);
      if (v77 == CFNumberGetTypeID())
      {
        buf.f_bsize = 0;
        CFNumberGetValue(v76, kCFNumberIntType, &buf);
        *(v23 + 6584) = *(v23 + 6584) & 0xF7FFFFFF | ((buf.f_bsize & 1) << 27);
      }

      CFRelease(v76);
    }

    if ((v438 & 1) == 0)
    {
      v78 = *(v23 + 1456);
      if (v78 <= 1)
      {
        v78 = 1;
      }

      *&buf.f_bsize = 0;
      buf.f_blocks = &buf;
      buf.f_bfree = 0x2000000000;
      LODWORD(buf.f_bavail) = v78;
      v79 = *(v23 + 1392);
      v80 = *(v23 + 1384);
      v451[0] = MEMORY[0x1E69E9820];
      v451[1] = 0x40000000;
      v452 = __SIInitIndex_block_invoke_1107;
      v453 = &unk_1E8191CE0;
      p_buf = &buf;
      if (v79 && *(v79 + 8))
      {
        v81 = 0;
        while ((v452)(v451, *(*v79 + 8 * v81), 0))
        {
          if (++v81 >= *(v79 + 8))
          {
            goto LABEL_86;
          }
        }
      }

      else
      {
LABEL_86:
        if (v80 && *(v80 + 8))
        {
          v82 = 0;
          do
          {
            if (!(v452)(v451, *(*v80 + 8 * v82), 1))
            {
              break;
            }

            ++v82;
          }

          while (v82 < *(v80 + 8));
        }
      }

      v83 = *(buf.f_blocks + 24);
      if (v83 > *(v23 + 1456))
      {
        *(v23 + 1456) = v83;
        v84 = CFNumberCreate(v59, kCFNumberSInt32Type, (v23 + 1456));
        SISetProperty(v23, @"kSINextIndexId", v84);
        CFRelease(v84);
      }

      v85 = SICopyProperty(v23, @"kSPHasPhotos");
      v86 = *MEMORY[0x1E695E4D0];
      *(v23 + 10112) = v85 == *MEMORY[0x1E695E4D0];
      *(v23 + 10113) = SICopyProperty(v23, @"kSPHasText") == v86;
      _Block_object_dispose(&buf, 8);
      add_explicit = v444;
    }
  }

  *(v23 + 1776) = CFSetCreateMutable(v59, 0, &kSILQCallbacks);
  *(v23 + 1784) = CFDictionaryCreateMutable(v59, 0, MEMORY[0x1E695E9D8], &kQueryNodeUniqueSetValueCallbacks);
  pthread_mutex_init((v23 + 1712), 0);
  pthread_mutex_init((v23 + 1320), 0);
  *(v23 + 1440) = 0;
  v437 = v18 & 0xC;
  if ((v18 & 0xC) != 0)
  {
    v87 = cf;
    if ((v18 & 8) != 0)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v88 = SICopyProperty(v23, @"kMDSIndexSyncCount");
    v89 = (v23 + 2344);
    if (v88)
    {
      v90 = v88;
      CFNumberGetValue(v88, kCFNumberIntType, v89);
      CFRelease(v90);
    }

    else
    {
      *v89 = 1;
    }

    v91 = SICopyProperty(v23, @"kMDSIndexDeferSyncCount");
    v92 = (v23 + 2348);
    if (v91)
    {
      v93 = v91;
      CFNumberGetValue(v91, kCFNumberIntType, v92);
      CFRelease(v93);
    }

    else
    {
      *v92 = 1;
    }

    v87 = cf;
  }

  if ((*(v23 + 2073) & 1) == 0)
  {
    v94 = SICopyProperty(v23, @"kSITokenizerUnigrams");
    if (v94)
    {
      v95 = v94;
      if (CFBooleanGetValue(v94))
      {
        *(v23 + 2073) = 1;
      }

      CFRelease(v95);
      v87 = cf;
    }
  }

  if ((*(v23 + 6587) & 6) == 0)
  {
    v96 = SICopyProperty(v23, @"kSITokenizerUseCRF");
    if (v96)
    {
      v97 = v96;
      if (CFBooleanGetValue(v96))
      {
        *(v23 + 6584) = *(v23 + 6584) & 0xF9FFFFFF | 0x2000000;
      }

      CFRelease(v97);
      v87 = cf;
    }

    v98 = SICopyProperty(v23, @"kSITokenizerVersion");
    if (v98)
    {
      v99 = v98;
      *(v23 + 6584) |= 0x6000000u;
      v100 = CFGetTypeID(v98);
      if (v100 == CFNumberGetTypeID())
      {
        buf.f_bsize = 0;
        if (CFNumberGetValue(v99, kCFNumberIntType, &buf))
        {
          if (buf.f_bsize - 1 <= 2)
          {
            *(v23 + 6584) = *(v23 + 6584) & 0xF9FFFFFF | (buf.f_bsize << 25);
          }
        }
      }

      CFRelease(v99);
      v87 = cf;
    }

    if ((v18 & 1) == 0 && (~*(v23 + 6584) & 0x6000000) != 0)
    {
      v101 = CFLocaleCopyPreferredLanguages();
      if (v101)
      {
        v102 = v101;
        if (CFArrayGetCount(v101))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v102, 0);
          if (CFStringFind(ValueAtIndex, @"ko", 9uLL).length)
          {
            v104 = *__error();
            v105 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
            {
              v382 = *(v23 + 6584);
              buf.f_bsize = 136315906;
              *&buf.f_iosize = "SIInitIndex";
              WORD2(buf.f_blocks) = 1024;
              *(&buf.f_blocks + 6) = 15792;
              WORD1(buf.f_bfree) = 1024;
              HIDWORD(buf.f_bfree) = (v382 >> 25) & 3;
              LOWORD(buf.f_bavail) = 2112;
              *(&buf.f_bavail + 2) = ValueAtIndex;
              _os_log_error_impl(&dword_1C278D000, v105, OS_LOG_TYPE_ERROR, "%s:%d: rebuild index for tokenizer (%d) %@", &buf, 0x22u);
            }

            *__error() = v104;
            CFRelease(v102);
            __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 15798, "rebuild for tokenizer");
            __si_set_rebuild_reason(v106, v107, "%s:%u: %s", "SpotlightIndex.c", 15799, "tokenizer");
            goto LABEL_143;
          }
        }

        CFRelease(v102);
        v87 = cf;
      }
    }
  }

  if ((v18 & 0xC) == 0)
  {
    v108 = *(v23 + 1192);
    if (v108)
    {
      db_create_id_for_field(v108, "kMDItemAttributeChangeDate", 0, 12);
    }
  }

LABEL_132:
  if (v87)
  {
    CFRetain(v87);
  }

  *(v23 + 1416) = v87;
  if (v434 && (v18 & 0x100) == 0)
  {
    if ((v434[7] & 0x80) != 0)
    {
      v109 = 0;
    }

    else
    {
      v109 = (v434[7] >> 7) & 2;
    }

    v110 = v109 | *(v23 + 6584) & 0xFFFFFFFD;
    *(v23 + 6584) = v110;
    v111 = v110 & 0xFFFFFFFB | (4 * ((v434[7] >> 5) & 1));
    *(v23 + 6584) = v111;
    v112 = v111 & 0xFFFFFFFE | (v434[7] >> 13) & 1;
    *(v23 + 6584) = v112;
    *(v23 + 6584) = (v112 & 0xFFBFFFFF | (((v434[7] >> 2) & 1) << 22)) ^ 0x400000;
LABEL_141:
    if (!v87)
    {
      __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 15832, "open persistent id store error");
LABEL_143:
      v113 = threadData[9 * v458 + 1] + 320 * v457;
      *(v113 + 312) = v56;
      v114 = *(v113 + 232);
      if (v114)
      {
        v114(*(v113 + 288));
      }

      dropThreadId(v458, 0, add_explicit + 1);
      goto LABEL_146;
    }

    goto LABEL_147;
  }

  if ((v18 & 0x100) == 0)
  {
    goto LABEL_141;
  }

LABEL_147:
  v468 = 0u;
  v467 = 0u;
  v466 = 0u;
  v465 = 0u;
  v464 = 0u;
  *v463 = 0u;
  Current = CFAbsoluteTimeGetCurrent();
  pthread_mutex_lock(&schlock);
  v117 = CFAbsoluteTimeGetCurrent() - Current;
  if (v117 > 60.0)
  {
    v118 = *__error();
    v119 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 134217984;
      *&buf.f_iosize = v117;
      _os_log_impl(&dword_1C278D000, v119, OS_LOG_TYPE_DEFAULT, "[shutdown hang] Waited %lfs for schlock", &buf, 0xCu);
    }

    *__error() = v118;
  }

  v120 = 12;
  if ((v18 & 4) != 0)
  {
    v120 = 9;
  }

  v445 = v18;
  if ((v18 & 8) != 0)
  {
    v121 = 6;
  }

  else
  {
    v121 = v120;
  }

  v122 = global_schedulers;
  v123 = v121;
  do
  {
    if (!*v122)
    {
      *&buf.f_bsize = xmmword_1F427BA38;
      *&buf.f_bfree = *&off_1F427BA48;
      buf.f_files = qword_1F427BA58;
      *v122 = CFDictionaryCreateMutable(v59, 0, 0, &buf);
    }

    ++v122;
    --v123;
  }

  while (v123);
  if ((v445 & 8) == 0)
  {
    Mutable = gAllIndexes;
    if (!gAllIndexes)
    {
      Mutable = CFSetCreateMutable(v59, 0, 0);
      gAllIndexes = Mutable;
    }

    CFSetAddValue(Mutable, v23);
  }

  v125 = v435;
  if (v435)
  {
    v125 = *v435;
  }

  v420 = v125;
  if (v434)
  {
    v126 = *v434;
  }

  else
  {
    v126 = 0;
  }

  *(v23 + 1404) = v420;
  v419 = v126;
  *(v23 + 1408) = v126;
  *(v23 + 6584) |= 0x1000000u;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SIInitIndex_block_invoke_1116;
  block[3] = &__block_descriptor_tmp_1120;
  block[4] = v23;
  if (SIInitIndex_once != -1)
  {
    dispatch_once(&SIInitIndex_once, block);
  }

  if (SIInitIndex_override == 1 && (HIBYTE(*(v23 + 6584)) & 1) != SIInitIndex_lowLatency)
  {
    v127 = *__error();
    v128 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      if (SIInitIndex_lowLatency)
      {
        v129 = "true";
      }

      else
      {
        v129 = "false";
      }

      buf.f_bsize = 136315138;
      *&buf.f_iosize = v129;
      _os_log_impl(&dword_1C278D000, v128, OS_LOG_TYPE_DEFAULT, "setting low latency: %s", &buf, 0xCu);
    }

    *__error() = v127;
    *(v23 + 6584) = *(v23 + 6584) & 0xFEFFFFFF | ((SIInitIndex_lowLatency & 1) << 24);
  }

  v130 = (v23 + 864);
  v131 = v23 + 1008;
  v132 = &off_1F427B590;
  v133 = 6;
  v433 = value + 864;
  do
  {
    bzero(&buf, 0x450uLL);
    v135 = *(v132 + 2);
    v134 = *(v132 + 3);
    snprintf(&buf, 0x450uLL, "%s scheduler for index at %s", *v132, v428);
    if (*&v130[8 * v135])
    {
      v362 = __si_assert_copy_extra_661(-1);
      v363 = v362;
      v364 = "";
      if (v362)
      {
        v364 = v362;
      }

      v405 = "newIndex->workqueues.schedulers[schedId]==0";
      v407 = v364;
      v365 = 15926;
      goto LABEL_512;
    }

    if (*(v131 + 8 * v134))
    {
      v366 = __si_assert_copy_extra_661(-1);
      v363 = v366;
      v367 = "";
      if (v366)
      {
        v367 = v366;
      }

      v405 = "newIndex->workqueues.queues[queueId]==0";
      v407 = v367;
      v365 = 15927;
      goto LABEL_512;
    }

    v130 = value + 864;
    *&v433[8 * v135] = si_create_root_scheduler(v136);
    *(v131 + 8 * v134) = si_create_child_queue(v137);
    v132 += 7;
    --v133;
  }

  while (v133);
  v413 = value + 1008;
  v138 = global_schedulers;
  v139 = &byte_1F427B2E8;
  v140 = v463;
  do
  {
    v412 = v121;
    if ((v445 & 0x100) != 0)
    {
      v141 = 0;
    }

    else
    {
      v141 = v420;
      if (*(v139 - 15))
      {
        v141 = v419;
      }
    }

    v142 = v141;
    if (!CFDictionaryGetValueIfPresent(*v138, v141, v140))
    {
      bzero(&buf, 0x400uLL);
      snprintf(&buf, 0x400uLL, "%s scheduler for spindle %d", *(v139 + 1), v142);
      root_scheduler = si_create_root_scheduler(v149);
      *v140 = root_scheduler;
      CFDictionarySetValue(*v138, v142, root_scheduler);
      v158 = *v140;
      if (*v140)
      {
        if (atomic_fetch_add((v158 + 96), 0xFFFFFFFF) == 1)
        {
          _si_scheduler_destroy(v158);
        }
      }
    }

    bzero(&buf, 0x450uLL);
    v144 = *(v139 + 4);
    v143 = *(v139 + 5);
    v145 = *(v139 - 32);
    snprintf(&buf, 0x450uLL, "%s scheduler for index at %s", *(v139 + 1), v428);
    if (*&v433[8 * v144])
    {
      v368 = __si_assert_copy_extra_661(-1);
      v363 = v368;
      v369 = "";
      if (v368)
      {
        v369 = v368;
      }

      v405 = "newIndex->workqueues.schedulers[schedId]==0";
      v407 = v369;
      v365 = 15965;
      goto LABEL_512;
    }

    if (*&v413[8 * v143])
    {
      v371 = __si_assert_copy_extra_661(-1);
      v372 = v371;
      v373 = "";
      if (v371)
      {
        v373 = v371;
      }

      v406 = "newIndex->workqueues.queues[queueId]==0";
      v408 = v373;
      v374 = 15966;
      goto LABEL_519;
    }

    v147 = *v140;
    v148 = *v140;
    scheduler = si_create_scheduler(v146);
    v151 = scheduler;
    if (v145)
    {
      dispatch_suspend(scheduler[20]);
      ++*(v151 + 116);
      v152 = debug_token_create(v151, "SIScheduler.c", 1176);
      *(v151 + 168) = v152;
      pthread_threadid_np(0, (v152 + 24));
    }

    *(v151 + 8) = *(v148 + 8);
    atomic_fetch_add(v147 + 24, 1u);
    dispatch_activate(*(v151 + 32));
    v153 = *(v148 + 4);
    *&v474.st_dev = MEMORY[0x1E69E9820];
    v474.st_ino = 0x40000000;
    *&v474.st_uid = __si_create_child_scheduler_block_invoke;
    *&v474.st_rdev = &__block_descriptor_tmp_16_1484;
    v474.st_atimespec.tv_sec = v148;
    v474.st_atimespec.tv_nsec = v151;
    dispatch_sync(v153, &v474);
    v154 = (value + 864);
    *&v433[8 * v144] = v151;
    *&v413[8 * v143] = si_create_child_queue(v155);
    ++v138;
    v139 += 56;
    ++v140;
    --v121;
  }

  while (v412 != 1);
  v159 = value;
  v160 = v440;
  if (*(value + 112))
  {
    v161 = *__error();
    v162 = _SILogForLogForCategory(3);
    v163 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v162, v163))
    {
      v164 = *(value + 112);
      buf.f_bsize = 134218242;
      *&buf.f_iosize = v164;
      WORD2(buf.f_blocks) = 2080;
      *(&buf.f_blocks + 6) = v428;
      _os_log_impl(&dword_1C278D000, v162, v163, "Suspending root scheduler for %p (%s)", &buf, 0x16u);
    }

    *__error() = v161;
    v165 = *(value + 112);
    do
    {
      v166 = v165;
      if (!v165)
      {
        break;
      }

      v165 = *v165;
    }

    while (*v166);
    *(value + 306) = si_scheduler_suspend_async(v166);
  }

  v167 = v444;
  if (dword_1EBF46AD8 >= 5)
  {
    v389 = *__error();
    v390 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v390, OS_LOG_TYPE_DEFAULT))
    {
      v391 = *(value + 113);
      buf.f_bsize = 134217984;
      *&buf.f_iosize = v391;
      _os_log_impl(&dword_1C278D000, v390, OS_LOG_TYPE_DEFAULT, "Created volume scheduler %p", &buf, 0xCu);
    }

    *__error() = v389;
    if (dword_1EBF46AD8 >= 5)
    {
      v392 = *__error();
      v393 = _SILogForLogForCategory(3);
      if (os_log_type_enabled(v393, OS_LOG_TYPE_DEFAULT))
      {
        v394 = *(value + 116);
        buf.f_bsize = 134217984;
        *&buf.f_iosize = v394;
        _os_log_impl(&dword_1C278D000, v393, OS_LOG_TYPE_DEFAULT, "Created index scheduler %p", &buf, 0xCu);
      }

      *__error() = v392;
    }
  }

  if (!v437)
  {
    *(value + 145) = si_create_child_queue(v156);
  }

  pthread_mutex_unlock(&schlock);
  *(value + 865) = copyVolumeInfoStr(*(value + 8));
  for (i = 1008; i != 1168; i += 8)
  {
    v169 = *&value[i];
    if (v169)
    {
      v170 = *&value[i];
      v171 = *(value + 8);
      *(v169 + 40) = v171;
      *(v170 + 48) = copyVolumeInfoStr(v171);
    }
  }

  if (*(value + 146))
  {
    v172 = *(value + 146);
    *(v172 + 40) = -1;
    *(v172 + 48) = strdup("");
  }

  if (*(value + 149))
  {
    si_create_propertydict(value, 0, 1);
    if (!*(value + 180))
    {
      si_storecookieRef(value);
    }

    si_getsizes(value, v436 ^ 1);
  }

  if ((v445 & 8) == 0)
  {
    v173 = SICopyProperty(value, @"kIndexRemappingData");
    if (v173)
    {
      v174 = v173;
      v175 = CFDictionaryGetValue(v173, remapping_keys[0]);
      v176 = CFDictionaryGetValue(v174, off_1EBF46C08);
      if (v175)
      {
        CFNumberGetValue(v175, kCFNumberCFIndexType, value + 2384);
      }

      if (v176)
      {
        v414 = v174;
        Count = CFArrayGetCount(v176);
        theArray = CFArrayCreateMutable(v440, 0, MEMORY[0x1E695E9C0]);
        if (Count >= 1)
        {
          for (j = 0; Count != j; ++j)
          {
            v179 = CFArrayGetValueAtIndex(v176, j);
            v180 = *(v159 + 32);
            v181 = CFDictionaryGetValue(v179, remapping_keys_11804);
            v182 = CFDictionaryGetValue(v179, off_1EBF47958);
            if (v182)
            {
              v183 = v181 == 0;
            }

            else
            {
              v183 = 1;
            }

            if (v183)
            {
              goto LABEL_240;
            }

            *&buf.f_bsize = 0;
            v474.st_dev = 0;
            if (!CFNumberGetValue(v182, kCFNumberCFIndexType, &buf))
            {
              goto LABEL_240;
            }

            if (!CFNumberGetValue(v181, kCFNumberSInt32Type, &v474))
            {
              goto LABEL_240;
            }

            v184 = CIDecodeRemappingMetadataWithIndex(v180, v474.st_dev, *&buf.f_bsize);
            if (!v184)
            {
              goto LABEL_240;
            }

            v185 = v184;
            CFArrayAppendValue(theArray, v184);
            if ((v445 & 4) == 0)
            {
              v186 = ContentIndexRemappingNextDocId(v185, &buf);
              if (!v186)
              {
                goto LABEL_240;
              }

              v187 = si_indexForDocId(value, v186);
              if (!v187)
              {
                goto LABEL_240;
              }

              v409 = v187;
              v188 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
              *v188 = value;
              v188[1] = v409;
              v188[2] = CFRetain(v185);
              si_enqueue_work(*(value + 133), si_remapForIndex, v188);
            }

            CFRelease(v185);
LABEL_240:
            v159 = value;
          }
        }

        si_inflateLeakedRemapping(v159, (v445 & 4) != 0, *(v159 + 2384), theArray);
        if (CFArrayGetCount(theArray))
        {
          *(v159 + 2368) = theArray;
        }

        else
        {
          *(v159 + 2368) = 0;
          CFRelease(theArray);
        }

        v167 = v444;
        v160 = v440;
        v154 = (value + 864);
        v174 = v414;
      }

      else
      {
        v189 = CFArrayCreateMutable(v440, 0, MEMORY[0x1E695E9C0]);
        if (*(value + 298) <= 1uLL)
        {
          v190 = 1;
        }

        else
        {
          v190 = *(value + 298);
        }

        si_inflateLeakedRemapping(value, (v445 & 4) != 0, v190, v189);
        if (CFArrayGetCount(v189))
        {
          *(value + 296) = v189;
        }

        else
        {
          *(value + 296) = 0;
          CFRelease(v189);
        }
      }

      CFRelease(v174);
    }
  }

  si_populateClientStates(v159);
  if (a10 && *(v159 + 872) && *(v159 + 1040))
  {
    v191 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004093CA8EA1uLL);
    v191[2] = a10;
    *v191 = v159;
    *(v191 + 2) = _si_scheduler_suspend(*(v159 + 872), "SpotlightIndex.c", 36370);
    si_enqueue_work(*(v159 + 1040), si_repair_index_file_tree, v191);
  }

  if (!v437 && (v438 & 1) == 0)
  {
    if (_os_feature_enabled_impl())
    {
      if (si_check_version_property(v159, @"VEC_EXT_CLEARED_VECTORS"))
      {
        buf.f_bsize = 0;
        v192 = db_clear_vector_fields(*(v159 + 1192), &buf, *(v159 + 6592), &__block_literal_global_1181);
        if (buf.f_bsize)
        {
          db_unlock_datastore(*(v159 + 1192));
        }

        if (!v192)
        {
          v193 = *__error();
          v194 = _SILogForLogForCategory(16);
          v195 = dword_1EBF46B0C < 3;
          if (os_log_type_enabled(v194, (dword_1EBF46B0C < 3)))
          {
            LOWORD(v474.st_dev) = 0;
            _os_log_impl(&dword_1C278D000, v194, v195, "*warn* Reset vector indexes", &v474, 2u);
          }

          *__error() = v193;
          v196 = *(v159 + 1392);
          v197 = *(v159 + 1384);
          if (v196 && *(v196 + 8))
          {
            v198 = 0;
            do
            {
              v199 = v198;
              ContentIndexResetVectorIndex(*(*v196 + 8 * v198));
              v198 = v199 + 1;
            }

            while (v199 + 1 < *(v196 + 8));
          }

          if (v197 && *(v197 + 8))
          {
            v200 = 0;
            do
            {
              v201 = v200;
              ContentIndexResetVectorIndex(*(*v197 + 8 * v200));
              v200 = v201 + 1;
            }

            while (v201 + 1 < *(v197 + 8));
          }

          _si_set_version_property(v159, @"VEC_EXT_CLEARED_VECTORS", 1);
        }

LABEL_274:
        db_set_ignore_vectors(*(v159 + 1192), 1);
      }

      else if (si_check_version_property(v159, @"VEC_EXT_CLEARED_JOURNALS"))
      {
        goto LABEL_274;
      }
    }

    LODWORD(v461[0]) = 0;
    if (fd_setDir(*(v159 + 32), v461))
    {
      bzero(&buf, 0x400uLL);
      v202 = *(v159 + 2344);
      v425 = v202;
      v431 = *(v159 + 2348);
      v203 = v202 + 1;
      while (v203 != 0x7FFFFFFF)
      {
        if (snprintf(&buf, 0x400uLL, "%s%d", "journalAttr.", v203) >= 0x400)
        {
          v376 = __si_assert_copy_extra_661(-1);
          v363 = v376;
          v377 = "";
          if (v376)
          {
            v377 = v376;
          }

          v405 = "0 <= count && count < pathBufferSize";
          v407 = v377;
          v365 = 6266;
          goto LABEL_512;
        }

        memset(&v474, 0, sizeof(v474));
        v204 = stat(&buf, &v474);
        v205 = ++v203;
        if (v204)
        {
          v206 = v205 - 2;
          goto LABEL_282;
        }
      }

      v206 = 2147483646;
LABEL_282:
      v207 = v202 - 1;
      v208 = v202 + 0x7FFFFFFF;
      do
      {
        if (!v208)
        {
          v213 = 0x80000000;
          v212 = -2147483647;
          goto LABEL_288;
        }

        if (snprintf(&buf, 0x400uLL, "%s%d", "journalAttr.", v207) >= 0x400)
        {
          v378 = __si_assert_copy_extra_661(-1);
          v363 = v378;
          v379 = "";
          if (v378)
          {
            v379 = v378;
          }

          v405 = "0 <= count && count < pathBufferSize";
          v407 = v379;
          v365 = 6278;
          goto LABEL_512;
        }

        memset(&v474, 0, sizeof(v474));
        v209 = stat(&buf, &v474);
        v210 = --v207;
        --v208;
      }

      while (!v209);
      v211 = v210 + 1;
      v212 = v210 + 2;
      v213 = v211;
LABEL_288:
      v214 = v213;
      v215 = v212;
      v216 = v431;
      v217 = v431;
      if (*(v159 + 2072) != 1)
      {
        goto LABEL_302;
      }

      v415 = v213;
      v218 = v431 + 1;
      do
      {
        if (v218 == 0x7FFFFFFF)
        {
          v217 = 2147483646;
          goto LABEL_295;
        }

        if (snprintf(&buf, 0x400uLL, "%s%d", "deferAttr.", v218) >= 0x400)
        {
          v383 = __si_assert_copy_extra_661(-1);
          v372 = v383;
          v384 = "";
          if (v383)
          {
            v384 = v383;
          }

          v406 = "0 <= count && count < pathBufferSize";
          v408 = v384;
          v374 = 6319;
          goto LABEL_519;
        }

        memset(&v474, 0, sizeof(v474));
        v219 = stat(&buf, &v474);
        v220 = ++v218;
      }

      while (!v219);
      v217 = v220 - 2;
LABEL_295:
      v221 = v431 - 1;
      v222 = v431 + 0x7FFFFFFF;
      while (v222)
      {
        if (snprintf(&buf, 0x400uLL, "%s%d", "deferAttr.", v221) >= 0x400)
        {
          v385 = __si_assert_copy_extra_661(-1);
          v363 = v385;
          v386 = "";
          if (v385)
          {
            v386 = v385;
          }

          v405 = "0 <= count && count < pathBufferSize";
          v407 = v386;
          v365 = 6331;
          goto LABEL_512;
        }

        memset(&v474, 0, sizeof(v474));
        v223 = stat(&buf, &v474);
        v224 = --v221;
        --v222;
        if (v223)
        {
          v216 = v224 + 2;
          goto LABEL_301;
        }
      }

      v216 = -2147483647;
LABEL_301:
      v159 = value;
      v214 = v415;
LABEL_302:
      v427 = v216;
      v426 = v217;
      v225 = *(v159 + 6952);
      if (!v225)
      {
        v225 = fd_create_protected(*(v159 + 32), "journalRepair.1", 0, 0);
        if (!v225)
        {
          v232 = v215;
          v160 = v440;
          goto LABEL_317;
        }
      }

      memset(&v474, 0, sizeof(v474));
      v160 = v440;
      if (fd_stat(v225, &v474))
      {
        v226 = v215;
        goto LABEL_316;
      }

      v227 = *__error();
      v228 = v215;
      v229 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
      {
        v498 = 136316162;
        v499 = "journalRepair.1";
        v500 = 2048;
        st_size = v474.st_size;
        v502 = 1024;
        v503 = v202;
        v504 = 1024;
        v505 = v228;
        v506 = 1024;
        v507 = v206;
        _os_log_impl(&dword_1C278D000, v229, OS_LOG_TYPE_DEFAULT, "Found %s, size:%lld, syncCount:%d, first:%d, last:%d", &v498, 0x28u);
      }

      *__error() = v227;
      if (!v474.st_size)
      {
        _fd_unlink_with_origin(v225, 0);
        fd_release(v225);
        v225 = 0;
        v226 = v228;
        goto LABEL_316;
      }

      if (snprintf(&buf, 0x400uLL, "%s%d", "journalAttr.", v214) >= 0x400)
      {
        v403 = __si_assert_copy_extra_661(-1);
        v372 = v403;
        v404 = "";
        if (v403)
        {
          v404 = v403;
        }

        v406 = "0 <= count && count < pathBufferSize";
        v408 = v404;
        v374 = 6359;
        goto LABEL_519;
      }

      v230 = *__error();
      v231 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
      {
        v498 = 136316162;
        v499 = "journalRepair.1";
        v500 = 2080;
        st_size = &buf;
        v502 = 1024;
        v503 = v202;
        v504 = 1024;
        v505 = v214;
        v506 = 1024;
        v507 = v206;
        _os_log_impl(&dword_1C278D000, v231, OS_LOG_TYPE_DEFAULT, "Moving %s to %s, syncCount:%d, first:%d, last:%d", &v498, 0x28u);
      }

      *__error() = v230;
      fd_rename(v225, &buf);
      v226 = v214;
LABEL_316:
      v232 = v226;
LABEL_317:
      v422 = v225;
      if (v206 == v202 || v232 == v202)
      {
        if (snprintf(&buf, 0x400uLL, "%s%d", "journalAttr.", v202) < 0x400)
        {
          memset(&v474, 0, sizeof(v474));
          v233 = stat(&buf, &v474);
          if (v233)
          {
            v234 = v206 == v202;
          }

          else
          {
            v234 = 0;
          }

          if (v233)
          {
            v235 = v232 == v202;
          }

          else
          {
            v235 = 0;
          }

          v206 -= v234;
          v232 += v235;
          goto LABEL_327;
        }

        v399 = __si_assert_copy_extra_661(-1);
        v372 = v399;
        v400 = "";
        if (v399)
        {
          v400 = v399;
        }

        v406 = "0 <= count && count < pathBufferSize";
        v408 = v400;
        v374 = 6369;
LABEL_519:
        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", v374, v406, v408);
        free(v372);
        if (__valid_fs(-1))
        {
          v375 = 2989;
        }

        else
        {
          v375 = 3072;
        }

        *v375 = -559038737;
        abort();
      }

LABEL_327:
      v236 = v232;
      v430 = *(v159 + 2128);
      v429 = *(v159 + 2136);
      v237 = *__error();
      v238 = _SILogForLogForCategory(0);
      v239 = os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT);
      v240 = v206 - v236;
      if (v206 < v236)
      {
        if (v239)
        {
          v474.st_dev = 134219264;
          *&v474.st_mode = v159;
          WORD2(v474.st_ino) = 1024;
          *(&v474.st_ino + 6) = v202;
          HIWORD(v474.st_uid) = 1024;
          v474.st_gid = v236;
          LOWORD(v474.st_rdev) = 1024;
          *(&v474.st_rdev + 2) = v206;
          *(&v474.st_rdev + 3) = 2048;
          v474.st_atimespec.tv_sec = v430;
          LOWORD(v474.st_atimespec.tv_nsec) = 2048;
          *(&v474.st_atimespec.tv_nsec + 2) = v429;
          _os_log_impl(&dword_1C278D000, v238, OS_LOG_TYPE_DEFAULT, "No journals to replay for %p, syncCount:%d, first:%d, last:%d, journalSerialNumber:%lld, consumedJournalSerialNumber:%lld", &v474, 0x32u);
        }

        *__error() = v237;
        v241 = -1;
        v242 = v206;
        goto LABEL_367;
      }

      if (v239)
      {
        v474.st_dev = 67110656;
        *&v474.st_mode = v240 + 1;
        LOWORD(v474.st_ino) = 2048;
        *(&v474.st_ino + 2) = v159;
        HIWORD(v474.st_uid) = 1024;
        v474.st_gid = v202;
        LOWORD(v474.st_rdev) = 1024;
        *(&v474.st_rdev + 2) = v236;
        *(&v474.st_rdev + 3) = 1024;
        LODWORD(v474.st_atimespec.tv_sec) = v206;
        WORD2(v474.st_atimespec.tv_sec) = 2048;
        *(&v474.st_atimespec.tv_sec + 6) = v430;
        HIWORD(v474.st_atimespec.tv_nsec) = 2048;
        v474.st_mtimespec.tv_sec = v429;
        _os_log_impl(&dword_1C278D000, v238, OS_LOG_TYPE_DEFAULT, "Replaying %d journals for %p, syncCount:%d, first:%d, last:%d, journalSerialNumber:%lld, consumedJournalSerialNumber:%lld", &v474, 0x38u);
      }

      *__error() = v237;
      if (v206 >= *(v159 + 2344))
      {
        *(v159 + 2344) = v206 + 1;
      }

      v418 = v206;
      v416 = v240 + 1;
      v498 = 0;
      v243 = -1;
      v244 = 0;
      v245 = 0;
      v423 = v236;
      while (2)
      {
        v246 = v236 + v244;
        if (snprintf(&buf, 0x400uLL, "%s%d", "journalAttr.", v236 + v244) >= 0x400)
        {
          v380 = __si_assert_copy_extra_661(-1);
          v363 = v380;
          v381 = "";
          if (v380)
          {
            v381 = v380;
          }

          v405 = "0 <= count && count < pathBufferSize";
          v407 = v381;
          v365 = 6397;
          goto LABEL_512;
        }

        if (v498)
        {
          v247 = fd_create_protected(*(v159 + 32), &buf, 2, 0);
          if (v247)
          {
            v248 = v247;
            v249 = fd_truncate(v247, 0);
            fd_release(v248);
            v250 = *__error();
            v251 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
            {
              v474.st_dev = 136316162;
              *&v474.st_mode = "si_playbackJournals";
              WORD2(v474.st_ino) = 1024;
              *(&v474.st_ino + 6) = 6433;
              HIWORD(v474.st_uid) = 1024;
              v474.st_gid = v236 + v244;
              LOWORD(v474.st_rdev) = 1024;
              *(&v474.st_rdev + 2) = v249;
              *(&v474.st_rdev + 3) = 2080;
              v474.st_atimespec.tv_sec = &buf;
              _os_log_error_impl(&dword_1C278D000, v251, OS_LOG_TYPE_ERROR, "%s:%d: ParseFailed truncated A idx:%d result:%d %s", &v474, 0x28u);
            }

            *__error() = v250;
          }

          else
          {
            v260 = *__error();
            v261 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
            {
              v474.st_dev = 136315906;
              *&v474.st_mode = "si_playbackJournals";
              WORD2(v474.st_ino) = 1024;
              *(&v474.st_ino + 6) = 6427;
              HIWORD(v474.st_uid) = 1024;
              v474.st_gid = v236 + v244;
              LOWORD(v474.st_rdev) = 2080;
              *(&v474.st_rdev + 2) = &buf;
              _os_log_error_impl(&dword_1C278D000, v261, OS_LOG_TYPE_ERROR, "%s:%d: ParseFailed unable to truncate A idx:%d %s", &v474, 0x22u);
            }

            *__error() = v260;
          }

          goto LABEL_362;
        }

        if (v422 && (v252 = v422, !v244) || (v252 = fd_create_protected(*(v159 + 32), &buf, 0, 0)) != 0)
        {
          v253 = si_playbackJournal(v159, v252, &v498);
          v254 = v498;
          if (v498)
          {
            v255 = *__error();
            v256 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
            {
              v474.st_dev = 136316418;
              *&v474.st_mode = "si_playbackJournals";
              WORD2(v474.st_ino) = 1024;
              *(&v474.st_ino + 6) = 6415;
              HIWORD(v474.st_uid) = 1024;
              v474.st_gid = v246;
              LOWORD(v474.st_rdev) = 1024;
              *(&v474.st_rdev + 2) = v423;
              *(&v474.st_rdev + 3) = 1024;
              LODWORD(v474.st_atimespec.tv_sec) = v418;
              WORD2(v474.st_atimespec.tv_sec) = 2080;
              *(&v474.st_atimespec.tv_sec + 6) = &buf;
              _os_log_error_impl(&dword_1C278D000, v256, OS_LOG_TYPE_ERROR, "%s:%d: ParseFailed A idx:%d (%d %d) %s", &v474, 0x2Eu);
            }

            *__error() = v255;
            v159 = value;
            v236 = v423;
          }

          if (v243 <= v253)
          {
            v257 = v253;
          }

          else
          {
            v257 = v243;
          }

          if (v254)
          {
            v258 = v243;
          }

          else
          {
            v258 = v257;
          }

          fd_release(v252);
          v259 = (v245 + 1);
          v241 = v258;
        }

        else
        {
          v262 = *__error();
          v263 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT))
          {
            v474.st_dev = 136315906;
            *&v474.st_mode = &buf;
            WORD2(v474.st_ino) = 1024;
            *(&v474.st_ino + 6) = v425;
            HIWORD(v474.st_uid) = 1024;
            v474.st_gid = v236;
            LOWORD(v474.st_rdev) = 1024;
            *(&v474.st_rdev + 2) = v418;
            _os_log_impl(&dword_1C278D000, v263, OS_LOG_TYPE_DEFAULT, "Missing %s, syncCount:%d, first:%d, last:%d", &v474, 0x1Eu);
          }

          *__error() = v262;
LABEL_362:
          v259 = v245;
          v241 = v243;
        }

        ++v244;
        v243 = v241;
        v245 = v259;
        if (v416 != v244)
        {
          continue;
        }

        break;
      }

      v264 = *__error();
      v265 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
      {
        v474.st_dev = 67109890;
        *&v474.st_mode = v259;
        LOWORD(v474.st_ino) = 2080;
        *(&v474.st_ino + 2) = &buf;
        HIWORD(v474.st_uid) = 1024;
        v474.st_gid = v425;
        LOWORD(v474.st_rdev) = 2048;
        *(&v474.st_rdev + 2) = v241;
        _os_log_impl(&dword_1C278D000, v265, OS_LOG_TYPE_DEFAULT, "Replayed %d journal(s) %s, syncCount:%d, maxReplaySerialNumber:%lld", &v474, 0x22u);
      }

      *__error() = v264;
      v242 = v236;
      v160 = v440;
LABEL_367:
      v424 = v241;
      v266 = v439;
      if (v439)
      {
        v267 = v242;
        v268 = CFArrayGetCount(v439);
        v269 = v268;
        if (v268 >= 2)
        {
          v509.length = v268;
          v509.location = 0;
          CFArraySortValues(v439, v509, IntPtrCFCompare, 0);
          goto LABEL_371;
        }

        if (v268 == 1)
        {
LABEL_371:
          tv_sec = 0;
          v271 = 0;
          v272 = 0;
          while (1)
          {
            v273 = CFArrayGetValueAtIndex(v266, v272);
            snprintf(&buf, 0x400uLL, "%s%d", "journalAttr.", v273);
            if (v273 < v267)
            {
              break;
            }

            if (!v271)
            {
              memset(&v474, 0, sizeof(v474));
              v278 = stat(&buf, &v474);
              v271 = v278 == 0;
              if (!v278)
              {
                tv_sec = v474.st_ctimespec.tv_sec;
              }

              goto LABEL_387;
            }

            if (v273 <= v267)
            {
              v271 = 1;
            }

            else
            {
              memset(&v474, 0, sizeof(v474));
              if (!stat(&buf, &v474) && v474.st_ctimespec.tv_sec < tv_sec)
              {
                break;
              }

              v271 = 1;
            }

LABEL_387:
            if (v269 == ++v272)
            {
              goto LABEL_388;
            }
          }

          v274 = *__error();
          v275 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
          {
            v474.st_dev = 136315138;
            *&v474.st_mode = &buf;
            _os_log_impl(&dword_1C278D000, v275, OS_LOG_TYPE_DEFAULT, "Unlinking dropped file %s", &v474, 0xCu);
          }

          *__error() = v274;
          unlink(&buf);
          snprintf(&buf, 0x400uLL, "%s%d_toc", "journalAttr.", v273);
          v276 = *__error();
          v277 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
          {
            v474.st_dev = 136315138;
            *&v474.st_mode = &buf;
            _os_log_impl(&dword_1C278D000, v277, OS_LOG_TYPE_DEFAULT, "Unlinking dropped file %s", &v474, 0xCu);
          }

          *__error() = v276;
          unlink(&buf);
          v160 = v440;
          v266 = v439;
          goto LABEL_387;
        }
      }

LABEL_388:
      v159 = value;
      v167 = v444;
      v154 = (value + 864);
      if (value[2072])
      {
        if (v426 == v431 || v427 == v431)
        {
          if (snprintf(&buf, 0x400uLL, "%s%d", "deferAttr.", v431) >= 0x400)
          {
            v401 = __si_assert_copy_extra_661(-1);
            v363 = v401;
            v402 = "";
            if (v401)
            {
              v402 = v401;
            }

            v405 = "0 <= count && count < pathBufferSize";
            v407 = v402;
            v365 = 6561;
            goto LABEL_512;
          }

          memset(&v474, 0, sizeof(v474));
          v281 = stat(&buf, &v474);
          if (v281)
          {
            v282 = v426 == v431;
          }

          else
          {
            v282 = 0;
          }

          if (v281)
          {
            v283 = v427 == v431;
          }

          else
          {
            v283 = 0;
          }

          v279 = v426 - v282;
          v280 = v427 + v283;
        }

        else
        {
          v279 = v426;
          v280 = v427;
        }

        v284 = v280;
        v285 = v279;
        v286 = *__error();
        v287 = _SILogForLogForCategory(0);
        v288 = os_log_type_enabled(v287, OS_LOG_TYPE_DEFAULT);
        v417 = v284;
        if (v285 < v284)
        {
          v289 = v442;
          if (v288)
          {
            v474.st_dev = 134219264;
            *&v474.st_mode = value;
            WORD2(v474.st_ino) = 1024;
            *(&v474.st_ino + 6) = v431;
            HIWORD(v474.st_uid) = 1024;
            v474.st_gid = v284;
            LOWORD(v474.st_rdev) = 1024;
            *(&v474.st_rdev + 2) = v285;
            *(&v474.st_rdev + 3) = 2048;
            v474.st_atimespec.tv_sec = v430;
            LOWORD(v474.st_atimespec.tv_nsec) = 2048;
            *(&v474.st_atimespec.tv_nsec + 2) = v429;
            _os_log_impl(&dword_1C278D000, v287, OS_LOG_TYPE_DEFAULT, "No defer journals to replay for %p, deferSyncCount:%d, first:%d, last:%d, journalSerialNumber:%lld, consumedJournalSerialNumber:%lld", &v474, 0x32u);
          }

          *__error() = v286;
          v290 = v285;
          v291 = v424;
LABEL_438:
          v410 = v291;
          if (v289)
          {
            v316 = CFArrayGetCount(v289);
            if (v316 >= 1)
            {
              v317 = v316;
              for (k = 0; k != v317; ++k)
              {
                v319 = CFArrayGetValueAtIndex(v289, k);
                if (v319 < v290)
                {
                  v320 = v319;
                  snprintf(&buf, 0x400uLL, "%s%d", "deferAttr.", v319);
                  v321 = *__error();
                  v322 = _SILogForLogForCategory(0);
                  if (os_log_type_enabled(v322, OS_LOG_TYPE_DEFAULT))
                  {
                    v474.st_dev = 136315138;
                    *&v474.st_mode = &buf;
                    _os_log_impl(&dword_1C278D000, v322, OS_LOG_TYPE_DEFAULT, "Unlinking dropped file %s", &v474, 0xCu);
                  }

                  *__error() = v321;
                  unlink(&buf);
                  snprintf(&buf, 0x400uLL, "%s%d_toc", "deferAttr.", v320);
                  v323 = *__error();
                  v324 = _SILogForLogForCategory(0);
                  if (os_log_type_enabled(v324, OS_LOG_TYPE_DEFAULT))
                  {
                    v474.st_dev = 136315138;
                    *&v474.st_mode = &buf;
                    _os_log_impl(&dword_1C278D000, v324, OS_LOG_TYPE_DEFAULT, "Unlinking dropped file %s", &v474, 0xCu);
                  }

                  *__error() = v323;
                  unlink(&buf);
                  v159 = value;
                  v289 = v442;
                  v160 = v440;
                }
              }
            }
          }

          v325 = v429;
          if (v410 > v429)
          {
            v325 = v410;
          }

          v326 = v430;
          if (v430 <= v325)
          {
            v327 = v325 + 1;
            *(v159 + 2128) = v327;
            v326 = v327;
          }

          v328 = *__error();
          v329 = _SILogForLogForCategory(0);
          v167 = v444;
          v154 = (value + 864);
          if (os_log_type_enabled(v329, OS_LOG_TYPE_DEFAULT))
          {
            v474.st_dev = 134218240;
            *&v474.st_mode = v326;
            WORD2(v474.st_ino) = 2048;
            *(&v474.st_ino + 6) = v429;
            _os_log_impl(&dword_1C278D000, v329, OS_LOG_TYPE_DEFAULT, "journalSerialNumber:%lld, consumedJournalSerialNumber:%lld", &v474, 0x16u);
          }

          *__error() = v328;
          goto LABEL_455;
        }

        if (v288)
        {
          v474.st_dev = 67110656;
          *&v474.st_mode = v285 - v284 + 1;
          LOWORD(v474.st_ino) = 2048;
          *(&v474.st_ino + 2) = value;
          HIWORD(v474.st_uid) = 1024;
          v474.st_gid = v431;
          LOWORD(v474.st_rdev) = 1024;
          *(&v474.st_rdev + 2) = v284;
          *(&v474.st_rdev + 3) = 1024;
          LODWORD(v474.st_atimespec.tv_sec) = v285;
          WORD2(v474.st_atimespec.tv_sec) = 2048;
          *(&v474.st_atimespec.tv_sec + 6) = v430;
          HIWORD(v474.st_atimespec.tv_nsec) = 2048;
          v474.st_mtimespec.tv_sec = v429;
          _os_log_impl(&dword_1C278D000, v287, OS_LOG_TYPE_DEFAULT, "Replaying %d defer journals for %p, syncCount:%d, first:%d, last:%d, journalSerialNumber:%lld, consumedJournalSerialNumber:%lld", &v474, 0x38u);
        }

        *__error() = v286;
        if (v285 >= *(value + 587))
        {
          *(value + 587) = v285 + 1;
        }

        v421 = v285;
        v292 = (v285 + 1);
        v498 = 0;
        v293 = 0;
        v294 = "deferAttr.";
        v295 = v424;
        v296 = v417;
        while (2)
        {
          if (snprintf(&buf, 0x400uLL, "%s%d", v294, v296) >= 0x400)
          {
            v387 = __si_assert_copy_extra_661(-1);
            v363 = v387;
            v388 = "";
            if (v387)
            {
              v388 = v387;
            }

            v405 = "0 <= count && count < pathBufferSize";
            v407 = v388;
            v365 = 6584;
            goto LABEL_512;
          }

          v297 = *(value + 8);
          if (v293)
          {
            v298 = fd_create_protected(v297, &buf, 2, 0);
            if (v298)
            {
              v299 = v298;
              v300 = fd_truncate(v298, 0);
              fd_release(v299);
              v301 = *__error();
              v302 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v302, OS_LOG_TYPE_ERROR))
              {
                v474.st_dev = 136316162;
                *&v474.st_mode = "si_playbackJournals";
                WORD2(v474.st_ino) = 1024;
                *(&v474.st_ino + 6) = 6615;
                HIWORD(v474.st_uid) = 1024;
                v474.st_gid = v296;
                LOWORD(v474.st_rdev) = 1024;
                *(&v474.st_rdev + 2) = v300;
                *(&v474.st_rdev + 3) = 2080;
                v474.st_atimespec.tv_sec = &buf;
                _os_log_error_impl(&dword_1C278D000, v302, OS_LOG_TYPE_ERROR, "%s:%d: ParseFailed truncated B idx:%d result:%d %s", &v474, 0x28u);
              }

              *__error() = v301;
              v291 = v295;
              goto LABEL_436;
            }

            v314 = *__error();
            v315 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v315, OS_LOG_TYPE_ERROR))
            {
              v474.st_dev = 136315906;
              *&v474.st_mode = "si_playbackJournals";
              WORD2(v474.st_ino) = 1024;
              *(&v474.st_ino + 6) = 6609;
              HIWORD(v474.st_uid) = 1024;
              v474.st_gid = v296;
              LOWORD(v474.st_rdev) = 2080;
              *(&v474.st_rdev + 2) = &buf;
              _os_log_error_impl(&dword_1C278D000, v315, OS_LOG_TYPE_ERROR, "%s:%d: ParseFailed unable to truncate B idx:%d %s", &v474, 0x22u);
            }

            *__error() = v314;
          }

          else
          {
            v303 = fd_create_protected(v297, &buf, 0, 0);
            v304 = *__error();
            v305 = _SILogForLogForCategory(0);
            v306 = os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT);
            if (v303)
            {
              v307 = v294;
              if (v306)
              {
                v474.st_dev = 136315906;
                *&v474.st_mode = &buf;
                WORD2(v474.st_ino) = 1024;
                *(&v474.st_ino + 6) = v431;
                HIWORD(v474.st_uid) = 1024;
                v474.st_gid = v417;
                LOWORD(v474.st_rdev) = 1024;
                *(&v474.st_rdev + 2) = v421;
                _os_log_impl(&dword_1C278D000, v305, OS_LOG_TYPE_DEFAULT, "Replaying %s, syncCount:%d, first:%d, last:%d", &v474, 0x1Eu);
              }

              v308 = v292;
              *__error() = v304;
              v309 = si_playbackJournal(value, v303, &v498);
              v293 = v498;
              if (v498)
              {
                v310 = *__error();
                v311 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v311, OS_LOG_TYPE_ERROR))
                {
                  v474.st_dev = 136316418;
                  *&v474.st_mode = "si_playbackJournals";
                  WORD2(v474.st_ino) = 1024;
                  *(&v474.st_ino + 6) = 6597;
                  HIWORD(v474.st_uid) = 1024;
                  v474.st_gid = v296;
                  LOWORD(v474.st_rdev) = 1024;
                  *(&v474.st_rdev + 2) = v417;
                  *(&v474.st_rdev + 3) = 1024;
                  LODWORD(v474.st_atimespec.tv_sec) = v421;
                  WORD2(v474.st_atimespec.tv_sec) = 2080;
                  *(&v474.st_atimespec.tv_sec + 6) = &buf;
                  _os_log_error_impl(&dword_1C278D000, v311, OS_LOG_TYPE_ERROR, "%s:%d: ParseFailed B idx:%d (%d %d) %s", &v474, 0x2Eu);
                }

                *__error() = v310;
              }

              if (v295 <= v309)
              {
                v312 = v309;
              }

              else
              {
                v312 = v295;
              }

              if (v293)
              {
                v313 = v295;
              }

              else
              {
                v313 = v312;
              }

              fd_release(v303);
              v291 = v313;
              v292 = v308;
              v294 = v307;
LABEL_436:
              ++v296;
              v295 = v291;
              if (v292 == v296)
              {
                v290 = v417;
                v159 = value;
                v289 = v442;
                v160 = v440;
                goto LABEL_438;
              }

              continue;
            }

            if (v306)
            {
              v474.st_dev = 136315906;
              *&v474.st_mode = &buf;
              WORD2(v474.st_ino) = 1024;
              *(&v474.st_ino + 6) = v431;
              HIWORD(v474.st_uid) = 1024;
              v474.st_gid = v417;
              LOWORD(v474.st_rdev) = 1024;
              *(&v474.st_rdev + 2) = v421;
              _os_log_impl(&dword_1C278D000, v305, OS_LOG_TYPE_DEFAULT, "Missing %s, syncCount:%d, first:%d, last:%d", &v474, 0x1Eu);
            }

            *__error() = v304;
            v293 = 0;
          }

          break;
        }

        v291 = v295;
        goto LABEL_436;
      }

LABEL_455:
      v330 = v461[0];
      MEMORY[0x1C6921200](LODWORD(v461[0]));
      if ((v330 & 0x80000000) == 0)
      {
        close(v330);
      }
    }

    if (_os_feature_enabled_impl())
    {
      v331 = *(v159 + 1048);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __SIInitIndex_block_invoke_1123;
      aBlock[3] = &__block_descriptor_tmp_1124;
      aBlock[4] = v159;
      si_enqueue_block(v331, aBlock);
    }
  }

  if (*(v159 + 2072) == 1 && (clientstates_file = si_read_clientstates_file(v159)) != 0)
  {
    v333 = clientstates_file;
    v334 = CFDictionaryGetValue(clientstates_file, @"journalName");
    if (v334)
    {
      v335 = v334;
      v336 = CFRetain(v334);
      SIReleaseJournalAssertion(v159, v335);
      v337 = v336;
    }

    else
    {
      v337 = 0;
      SIReleaseJournalAssertion(v159, 0);
    }

    CFRelease(v333);
    v338 = v337;
  }

  else
  {
    v338 = 0;
  }

  v448 = *(v159 + 2128);
  v339 = CFNumberCreate(v160, kCFNumberSInt64Type, &v448);
  if (v339)
  {
    v340 = v339;
    CFDictionarySetValue(*(v159 + 72), @"journalSerialNumber", v339);
    CFRelease(v340);
  }

  v341 = CFNumberCreate(v160, kCFNumberIntType, (v159 + 2344));
  if (v341)
  {
    v342 = v341;
    CFDictionarySetValue(*(v159 + 72), @"syncCount", v341);
    CFRelease(v342);
  }

  v343 = CFNumberCreate(v160, kCFNumberIntType, (v159 + 2348));
  if (v343)
  {
    v344 = v343;
    CFDictionarySetValue(*(v159 + 72), @"deferSyncCount", v343);
    CFRelease(v344);
  }

  if (v338)
  {
    CFDictionarySetValue(*(v159 + 72), @"journalName", v338);
    CFRelease(v338);
  }

  v345 = si_storecookieRef(v159);
  if (!v345)
  {
    v348 = *__error();
    v349 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v349, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_480;
    }

    buf.f_bsize = 136315394;
    *&buf.f_iosize = "SIInitIndex";
    WORD2(buf.f_blocks) = 1024;
    *(&buf.f_blocks + 6) = 16088;
    v350 = "%s:%d: Failed to retrieve store cookie during index initialization";
LABEL_522:
    _os_log_error_impl(&dword_1C278D000, v349, OS_LOG_TYPE_ERROR, v350, &buf, 0x12u);
    goto LABEL_480;
  }

  v346 = CFUUIDCreateString(v160, v345);
  if (v346)
  {
    v347 = v346;
    CFDictionarySetValue(*(v159 + 72), @"cookie", v346);
    CFRelease(v347);
    goto LABEL_481;
  }

  v348 = *__error();
  v349 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v349, OS_LOG_TYPE_ERROR))
  {
    buf.f_bsize = 136315394;
    *&buf.f_iosize = "SIInitIndex";
    WORD2(buf.f_blocks) = 1024;
    *(&buf.f_blocks + 6) = 16085;
    v350 = "%s:%d: Failed to create string from store cookie UUID bytes";
    goto LABEL_522;
  }

LABEL_480:
  *__error() = v348;
LABEL_481:
  SIPersistClientStateAndMeta(v159, 1);
  if (!v437)
  {
    si_enqueue_barrier(*(v159 + 1048), resumeHoldQueue, *(*(v159 + 1160) + 16));
  }

  v351 = SICopyProperty(v159, @"YukonRecomputedSizes");
  if (v351)
  {
    v352 = v351;
    buf.f_bsize = 0;
    CFNumberGetValue(v351, kCFNumberIntType, &buf);
    f_bsize = buf.f_bsize;
    CFRelease(v352);
    if ((v445 & 0x800) == 0 && f_bsize < 2)
    {
LABEL_486:
      v447[0] = MEMORY[0x1E69E9820];
      v447[1] = 0x40000000;
      v447[2] = __SIInitIndex_block_invoke_1125;
      v447[3] = &__block_descriptor_tmp_1126;
      v447[4] = v159;
      _SIRecomputeSizesWithCallback(v159, 0, v447);
    }
  }

  else if ((v445 & 0x800) == 0)
  {
    goto LABEL_486;
  }

  v354 = threadData[9 * v458 + 1] + 320 * v457;
  *(v354 + 312) = v443;
  v355 = *(v354 + 232);
  if (v355)
  {
    v355(*(v354 + 288));
  }

  dropThreadId(v458, 0, v167 + 1);
  if (!v441 && !a10 && !*(v159 + 6624))
  {
    v397 = __si_assert_copy_extra_661(-1);
    v363 = v397;
    v398 = "";
    if (v397)
    {
      v398 = v397;
    }

    v405 = "fs_only||newIndex->dirStore || rebuildDirStore";
    v407 = v398;
    v365 = 16122;
    goto LABEL_512;
  }

  if (gTerminating)
  {
    __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 16126, "process terminating");
    return 4294967293;
  }

  else
  {
    v356 = *v154;
    if (*v154)
    {
      v357 = *(v356 + 168);
      *(v356 + 168) = 0;
      v358 = *v154;
    }

    else
    {
      v358 = 0;
      v357 = 0;
    }

    si_scheduler_resume(v358, v357, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 16182);
    v359 = *(v159 + 944);
    if (v359)
    {
      v360 = *(v359 + 168);
      *(v359 + 168) = 0;
      v361 = *(v159 + 944);
    }

    else
    {
      v361 = 0;
      v360 = 0;
    }

    si_scheduler_resume(v361, v360, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 16184);
    return 0;
  }
}

void _si_set_version_property(uint64_t a1, const void *a2, int a3)
{
  valuePtr = 5;
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  si_set_property(a1, a2, v6, 1, a3);
  CFRelease(v6);
}

uint64_t __si_cacheIndexVersion_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  result = 0;
  *(*(a1 + 32) + 6932) = *(a2 + 4);
  return result;
}

void _SICloseIndex(uint64_t a1, int a2)
{
  if (sContactsIndex == a1)
  {
    sContactsIndex = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:
    pthread_mutex_lock((a1 + 1880));
    if (!gTerminating)
    {
      SIShutdownIndex(a1, 0, 0);
    }

    while (!*(a1 + 2416))
    {
      pthread_cond_wait((a1 + 1944), (a1 + 1880));
    }

    pthread_mutex_unlock((a1 + 1880));
    return;
  }

  if ((*(a1 + 828) & 8) == 0)
  {
    pthread_mutex_lock(&schlock);
    if (gAllIndexes)
    {
      CFSetRemoveValue(gAllIndexes, a1);
    }

    pthread_mutex_unlock(&schlock);
  }

  _SIShutdownIndex(a1);
}

void SIShutdownIndex(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (!result)
  {
    goto LABEL_6;
  }

  if (sContactsIndex == result)
  {
    sContactsIndex = 0;
  }

  if ((*(result + 2432) & 1) != 0 || *(result + 2416))
  {
LABEL_6:
    if (a2)
    {

      a2(a3, 0xFFFFFFFFLL);
    }
  }

  else
  {
    *(result + 2432) = 1;
    v5 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
    v5[1] = a3;
    v5[2] = a2;
    *v5 = result;
    *(result + 2428) = 1;
    for (i = 864; i != 1000; i += 8)
    {
      v7 = *(result + i);
      if (v7)
      {
        v8 = *(v7 + 32);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __si_scheduler_set_stopped_block_invoke;
        block[3] = &__block_descriptor_tmp_24_1527;
        block[4] = v7;
        dispatch_async(v8, block);
      }
    }

    *(result + 2433) = 1;
    if (*(result + 2448))
    {
      awakenPreheat(result);
    }

    v9 = *(result + 1168);

    si_enqueue_work(v9, si_shutdown, v5);
  }
}

void _SIShutdownIndex(uint64_t a1)
{
  v87 = *MEMORY[0x1E69E9840];
  bzero(v86, 0x400uLL);
  v2 = (a1 + 32);
  v3 = fcntl(*(a1 + 32), 50, v86);
  if (v86[0])
  {
    v4 = v3 < 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v86;
  }

  v6 = *__error();
  v7 = _SILogForLogForCategory(0);
  v8 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&dword_1C278D000, v7, v8, "Index shut down starting for index at %s.", buf, 0xCu);
  }

  *__error() = v6;
  Current = CFAbsoluteTimeGetCurrent();
  if (sContactsIndex == a1)
  {
    sContactsIndex = 0;
  }

  *(a1 + 2428) = 1;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2000000000;
  v78 = 0;
  v10 = *(a1 + 1392);
  v11 = *(a1 + 1384);
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 0x40000000;
  v72 = ___SIShutdownIndex_block_invoke;
  v73 = &unk_1E8191F48;
  v74 = &v75;
  if (v10 && *(v10 + 8))
  {
    v12 = 0;
    while ((v72)(v71, *(*v10 + 8 * v12), 0))
    {
      if (++v12 >= *(v10 + 8))
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    if (v11 && *(v11 + 8))
    {
      v13 = 0;
      do
      {
        if (!(v72)(v71, *(*v11 + 8 * v13), 1))
        {
          break;
        }

        ++v13;
      }

      while (v13 < *(v11 + 8));
    }
  }

  if ((v76[3] & 1) == 0)
  {
    si_scheduler_boost_and_forget(*(a1 + 944));
    si_scheduler_boost_and_forget(*(a1 + 864));
    si_scheduler_boost_and_forget(*(a1 + 872));
    si_scheduler_boost_and_forget(*(a1 + 896));
    si_scheduler_boost_and_forget(*(a1 + 912));
    si_scheduler_boost_and_forget(*(a1 + 888));
    si_scheduler_boost_and_forget(*(a1 + 880));
    si_scheduler_boost_and_forget(*(a1 + 952));
    _SIShutdownIndexSchedulers(a1, 0, 0, Current);
    v70 = 0;
    v14 = *(a1 + 6592);
    v15 = *(a1 + 1192);
    v16 = *(a1 + 1392);
    if (v15)
    {
      v17 = *(a1 + 1384);
      v18 = 0x1EBF46000;
    }

    else
    {
      v17 = *(a1 + 1384);
      v18 = 0x1EBF46000;
      if (*(a1 + 1384) == 0)
      {
LABEL_59:
        SIActivityJournalClose((a1 + 2192));
        v45 = *(a1 + 2192);
        *(a1 + 2192) = 0;
        if (v45)
        {
          fd_release(v45);
        }

        if (*(a1 + 2072) == 1)
        {
          v46 = *(a1 + 6964);
          v47 = *(a1 + 2104);
          if (v47 && atomic_fetch_add(v47, 0xFFFFFFFF) == 1)
          {
            _si_mobile_journal_finalize(v47, v46 == 0);
          }

          v48 = *(a1 + 2112);
          if (v48 && atomic_fetch_add(v48, 0xFFFFFFFF) == 1)
          {
            _si_mobile_journal_finalize(v48, 1);
          }

          v49 = *(a1 + 2120);
          if (v49 && atomic_fetch_add(v49, 0xFFFFFFFF) == 1)
          {
            _si_mobile_journal_finalize(v49, 1);
          }

          *(a1 + 2104) = 0;
          *(a1 + 2112) = 0;
          *(a1 + 2120) = 0;
        }

        v50 = *(a1 + 2320);
        *(a1 + 2320) = 0;
        if (v50)
        {
          fd_release(v50);
        }

        doc_store_close(*(a1 + 1296));
        *(a1 + 1296) = 0;
        *buf = *v2;
        *(a1 + 32) = -1;
        v51 = *buf;
        if (*buf != -1)
        {
          if (*&buf[8])
          {
            guarded_close_np();
            v52 = *buf;
          }

          else
          {
            close(*buf);
            v52 = v51;
          }

          unregisterForCloning(v52);
        }

        v53 = *(a1 + 48);
        *(a1 + 48) = -1;
        if (v53 != -1)
        {
          close(v53);
        }

        v54 = *__error();
        v55 = _SILogForLogForCategory(0);
        v56 = 2 * (*(v18 + 2764) < 4);
        if (os_log_type_enabled(v55, v56))
        {
          v57 = CFAbsoluteTimeGetCurrent();
          *buf = 136315394;
          *&buf[4] = v5;
          *&buf[12] = 2048;
          *&buf[14] = v57 - Current;
          _os_log_impl(&dword_1C278D000, v55, v56, "Index shut down finished for index at %s after %f seconds.", buf, 0x16u);
        }

        *__error() = v54;
        goto LABEL_84;
      }
    }

    v64 = 0;
    v67 = 257;
    v65 = v15;
    v66 = a1;
    v19 = v17;
    v63 = 0u;
    v68 = v16;
    v69 = v17;
    v85 = 0;
    v84 = 0u;
    v83 = 0u;
    memset(buf, 0, sizeof(buf));
    if (gTerminating)
    {
      *(a1 + 2420) = 1;
    }

    do
    {
      v20 = v16;
      v21 = v19;
      __dmb(0xBu);
      v16 = *(a1 + 1392);
      v19 = *(a1 + 1384);
    }

    while (v20 != v16 || v21 != v19);
    if (!fd_setDir(*v2, &v70))
    {
      v31 = *__error();
      v32 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v58 = *__error();
        *valuePtr = 136315906;
        *&valuePtr[4] = "_SIShutdownIndex";
        *&valuePtr[12] = 1024;
        *&valuePtr[14] = 16974;
        *&valuePtr[18] = 1024;
        *&valuePtr[20] = v58;
        *&valuePtr[24] = 2080;
        *&valuePtr[26] = v5;
        _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: setDir 2 error %d (%s)", valuePtr, 0x22u);
      }

      *__error() = v31;
      v33 = *(a1 + 1392);
      v34 = *(a1 + 1384);
      *&valuePtr[16] = *&buf[16];
      *&valuePtr[32] = v83;
      v80 = v84;
      v81 = v85;
      *valuePtr = *buf;
      ContentIndexCloseIndexBulk_Step1(0, v33, v34, valuePtr, v14);
      CIMetaInfoClose(a1 + 1200);
      goto LABEL_56;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v24 = setThreadIdAndInfo(*v2, sFdExceptionCallbacks, 0, 1, add_explicit + 1);
    v61 = HIDWORD(v24);
    v62 = v24;
    v59 = v26;
    v60 = v25;
    v27 = threadData[9 * v24 + 1] + 320 * HIDWORD(v24);
    *(v27 + 216) = 0;
    v28 = *(v27 + 312);
    v29 = *(v27 + 224);
    v30 = v27;
    if (v29)
    {
      v29(*(v27 + 288));
    }

    if (_setjmp(v30))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *valuePtr = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", valuePtr, 2u);
      }

      v30[78] = v28;
      CIOnThreadCleanUpReset(v59);
      dropThreadId(v62, 1, add_explicit + 1);
      CICleanUpReset(v62, v60);
      v18 = 0x1EBF46000;
LABEL_56:
      v41 = *__error();
      v42 = _SILogForLogForCategory(0);
      v43 = 2 * (*(v18 + 2764) < 4);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = CFAbsoluteTimeGetCurrent();
        *valuePtr = 136315394;
        *&valuePtr[4] = v5;
        *&valuePtr[12] = 2048;
        *&valuePtr[14] = v44 - Current;
        _os_log_impl(&dword_1C278D000, v42, v43, "Index closed for %s after %f seconds.", valuePtr, 0x16u);
      }

      *__error() = v41;
      goto LABEL_59;
    }

    if ((atomic_load_explicit((a1 + 2439), memory_order_acquire) & 1) == 0)
    {
      if (!*(a1 + 1192))
      {
        v37 = a1 + 1200;
        goto LABEL_50;
      }

      *valuePtr = *(a1 + 2136);
      v35 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
      if (v35)
      {
        v36 = v35;
        si_set_property(a1, @"ConsumedJournalSerialNumber", v35, 1, 0);
        CFRelease(v36);
      }

      _si_store_property_cache(a1, 0, 1);
      si_storesizes(a1, 0);
    }

    v37 = a1 + 1200;
    if (*(a1 + 1192))
    {
      *valuePtr = xmmword_1F427BAA0;
      *&valuePtr[16] = *&off_1F427BAB0;
      *&valuePtr[32] = xmmword_1F427BAC0;
      v80 = *off_1F427BAD0;
      v81 = &v63;
LABEL_51:
      ContentIndexCloseIndexBulk_Step1(v37, v20, v21, valuePtr, v14);
      CIMetaInfoClose(v37);
      v38 = v70;
      MEMORY[0x1C6921200](v70);
      if ((v38 & 0x80000000) == 0)
      {
        close(v38);
      }

      v39 = threadData[9 * v62 + 1] + 320 * v61;
      *(v39 + 312) = v28;
      v40 = *(v39 + 232);
      v18 = 0x1EBF46000uLL;
      if (v40)
      {
        v40(*(v39 + 288));
      }

      dropThreadId(v62, 0, add_explicit + 1);
      goto LABEL_56;
    }

LABEL_50:
    *&valuePtr[16] = *&buf[16];
    *&valuePtr[32] = v83;
    v80 = v84;
    v81 = v85;
    *valuePtr = *buf;
    goto LABEL_51;
  }

LABEL_84:
  _Block_object_dispose(&v75, 8);
}

void _SIShutdownIndexSchedulers(uint64_t a1, char a2, int a3, double a4)
{
  v40 = *MEMORY[0x1E69E9840];
  bzero(v39, 0x400uLL);
  v8 = fcntl(*(a1 + 32), 50, v39);
  if (v39[0])
  {
    v9 = v8 < 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  v11 = dispatch_group_create();
  pthread_mutex_lock(&sGameModeMutex);
  pthread_cond_broadcast(&sGameModeCond);
  pthread_mutex_unlock(&sGameModeMutex);
  v12 = *(a1 + 6972);
  v13 = 124;
  do
  {
    if (!v12 || v13 == 119)
    {
      si_scheduler_stop(*(a1 + 8 * v13), v11);
    }

    v14 = v13 - 107;
    --v13;
  }

  while (v14 > 1);
  *(a1 + 2433) = 1;
  if (*(a1 + 2448))
  {
    awakenPreheat(a1);
  }

  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v15 = *__error();
  v16 = _SILogForLogForCategory(0);
  v17 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v16, v17))
  {
    if (v10)
    {
      v18 = 0;
    }

    else
    {
      v18 = v39;
    }

    *buf = 136315394;
    *&buf[4] = v18;
    *&buf[12] = 2048;
    *&buf[14] = CFAbsoluteTimeGetCurrent() - a4;
    _os_log_impl(&dword_1C278D000, v16, v17, "Schedulers stopped for %s after %f seconds.", buf, 0x16u);
  }

  *__error() = v15;
  if (a3)
  {
    for (i = 1008; i != 1176; i += 8)
    {
      if (i == 1168 && (a2 & 1) != 0)
      {
        break;
      }

      v20 = *(a1 + i);
      if (v20)
      {
        if (*v20)
        {
          si_scheduler_remove_workqueue(*v20, *(a1 + i));
        }

        if (i == 1152)
        {
          dispatch_resume(*(v20 + 16));
        }

        si_workqueue_drain(v20);
      }
    }

    cleanup_retiring(a1);
  }

  else
  {
    v21 = malloc_type_calloc(0x15uLL, 8uLL, 0x2004093837F09uLL);
    for (j = 0; j != 21; ++j)
    {
      if (j == 20)
      {
        v23 = a2;
      }

      else
      {
        v23 = 0;
      }

      v24 = j == 12 || v12 == 0;
      if (v24 && (v23 & 1) == 0)
      {
        if (j == 18)
        {
          pthread_mutex_lock((a1 + 1320));
          si_handleWorkQueue(a1, v21, v11, 18);
          pthread_mutex_unlock((a1 + 1320));
        }

        else
        {
          si_handleWorkQueue(a1, v21, v11, j);
        }
      }
    }

    si_cancel_activectx(a1);
    memcpy(buf, (a1 + 864), 0x140uLL);
    v25 = 0;
    v26 = *(a1 + 1404);
    v27 = *(a1 + 1408);
    do
    {
      v28 = *&buf[v25];
      if (v28)
      {
        atomic_fetch_add((v28 + 96), 1u);
      }

      v25 += 8;
    }

    while (v25 != 136);
    if (!v12)
    {
      cleanup_retiring(a1);
    }

    initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
    v30 = dispatch_queue_create("com.apple.spotlight.index.shutdown.shortlived", initially_inactive);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SIShutdownIndexSchedulers_block_invoke;
    block[3] = &__block_descriptor_tmp_1205;
    block[4] = v21;
    memcpy(v32, buf, sizeof(v32));
    v33 = v11;
    v34 = v30;
    v37 = v12;
    v35 = v27;
    v36 = v26;
    dispatch_group_notify(v11, v30, block);
    dispatch_activate(v30);
    dispatch_release(v30);
  }
}

void awakenPreheat(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(3);
  v4 = 2 * (dword_1EBF46AD8 < 4);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(a1 + 896);
    v16 = 134217984;
    v17 = v5;
    _os_log_impl(&dword_1C278D000, v3, v4, "awakenPreheat entered for %p", &v16, 0xCu);
  }

  *__error() = v2;
  v6 = *(a1 + 2448);
  if (v6 && (v7 = *(a1 + 2448), atomic_compare_exchange_strong_explicit((a1 + 2448), &v7, 0, memory_order_relaxed, memory_order_relaxed), v7 == v6))
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(3);
    v10 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(a1 + 896);
      v16 = 134217984;
      v17 = v11;
      _os_log_impl(&dword_1C278D000, v9, v10, "awakenPreheat continued for %p", &v16, 0xCu);
    }

    *__error() = v8;
    si_scheduler_resume_with_token(v6);
  }

  else
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(3);
    v14 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(a1 + 896);
      v16 = 134217984;
      v17 = v15;
      _os_log_impl(&dword_1C278D000, v13, v14, "awakenPreheat skipped for %p", &v16, 0xCu);
    }

    *__error() = v12;
  }
}

uint64_t cleanup_retiring(uint64_t a1)
{
  v2 = *(a1 + 1176);
  *(a1 + 1176) = 0;
  pthread_mutex_lock((a1 + 1320));
  if (v2)
  {
    do
    {
      v3 = *v2;
      si_scheduler_remove_workqueue(*(a1 + 872), v2[1]);
      si_workqueue_drain(v2[1]);
      si_workqueue_destroy(v2[1]);
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  return pthread_mutex_unlock((a1 + 1320));
}

void si_handleWorkQueue(uint64_t a1, uint64_t a2, NSObject *a3, int a4)
{
  v4 = a1 + 8 * a4;
  v5 = *(v4 + 1008);
  *(v4 + 1008) = 0;
  if (v5)
  {
    if (*v5)
    {
      si_scheduler_remove_workqueue(*v5, v5);
    }

    if (a4 == 18)
    {
      dispatch_resume(*(v5 + 16));
    }

    si_workqueue_drain(v5);
    dispatch_group_enter(a3);
    dispatch_retain(a3);
    v9 = *(v5 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __si_handleWorkQueue_block_invoke;
    block[3] = &__block_descriptor_tmp_1206;
    block[4] = a3;
    dispatch_barrier_async(v9, block);
    *(a2 + 8 * a4) = v5;
  }
}

void cf_release_scheduler_stopping(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = dispatch_group_create();
  si_scheduler_stop(a2, v3);
  Current = CFAbsoluteTimeGetCurrent();
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v5 = CFAbsoluteTimeGetCurrent() - Current;
  if (v5 > 60.0)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9) = 134217984;
      *(&v9 + 4) = v5;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "[shutdown hang] Waited for %lfs to release scheduler", &v9, 0xCu);
    }

    *__error() = v6;
  }

  dispatch_release(v3);
  v8 = *(a2 + 32);
  *&v9 = MEMORY[0x1E69E9820];
  *(&v9 + 1) = 0x40000000;
  v10 = __si_scheduler_drain_block_invoke;
  v11 = &__block_descriptor_tmp_8;
  v12 = a2;
  v13 = 0;
  dispatch_sync(v8, &v9);
  if (atomic_fetch_add((a2 + 96), 0xFFFFFFFF) == 1)
  {
    _si_scheduler_destroy(a2);
  }
}

uint64_t cf_retain_scheduler(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    atomic_fetch_add((a2 + 96), 1u);
  }

  return result;
}

void __si_handleWorkQueue_block_invoke(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

int *si_shutdown(uint64_t *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(3);
  v4 = 2 * (dword_1EBF46AD8 < 4);
  if (os_log_type_enabled(v3, v4))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1C278D000, v3, v4, "Shutdown started", &v15, 2u);
  }

  *__error() = v2;
  Current = CFAbsoluteTimeGetCurrent();
  if (*a1)
  {
    pthread_mutex_lock((*a1 + 1880));
    v6 = *a1;
    if (!*(*a1 + 2416))
    {
      _SIShutdownIndex(v6);
      v8 = *a1;
      *(*a1 + 2416) = 1;
      v9 = a1[2];
      if (v9)
      {
        v9(a1[1], 0);
        pthread_cond_signal((*a1 + 1944));
        pthread_mutex_unlock((*a1 + 1880));
        goto LABEL_10;
      }

      pthread_cond_signal((v8 + 1944));
      v6 = *a1;
    }

    pthread_mutex_unlock((v6 + 1880));
  }

  v7 = a1[2];
  if (v7)
  {
    v7(a1[1], 0xFFFFFFFFLL);
  }

LABEL_10:
  free(a1);
  v10 = *__error();
  v11 = _SILogForLogForCategory(3);
  v12 = 2 * (dword_1EBF46AD8 < 4);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = CFAbsoluteTimeGetCurrent();
    v15 = 134217984;
    v16 = v13 - Current;
    _os_log_impl(&dword_1C278D000, v11, v12, "Shutdown ended after %f seconds", &v15, 0xCu);
  }

  result = __error();
  *result = v10;
  return result;
}

uint64_t si_init_orphan_oid(uint64_t result)
{
  if (!atomic_load((result + 2080)))
  {
    v52 = v1;
    v53 = v2;
    v4 = result;
    v5 = si_compute_oid_for_identifier(@"com.apple.searchd", @"com.apple.spotlight.missingparent");
    makeThreadId();
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v7 = setThreadIdAndInfo(*(v4 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
    v51 = v7;
    v8 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
    v50 = HIDWORD(v7);
    v49 = __PAIR64__(v9, v10);
    *(v8 + 216) = 0;
    v11 = *(v8 + 312);
    v12 = *(v8 + 224);
    if (v12)
    {
      v12(*(v8 + 288));
    }

    v48 = v51;
    v47 = v50;
    v46 = v49;
    if (_setjmp(v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v33) = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v33, 2u);
      }

      *(v8 + 312) = v11;
      CIOnThreadCleanUpReset(v46);
      dropThreadId(v48, 1, add_explicit + 1);
      return CICleanUpReset(v48, HIDWORD(v46));
    }

    else
    {
      v13 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v14 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(v4 + 1192), 0x40000000, v13 + 1);
      v44 = HIDWORD(v14);
      v45 = v14;
      v43 = __PAIR64__(v15, v16);
      v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
      *(v17 + 216) = 0;
      v18 = *(v17 + 312);
      v19 = *(v17 + 224);
      if (v19)
      {
        v19(*(v17 + 288));
      }

      v42 = v45;
      v41 = v44;
      v40 = v43;
      if (_setjmp(v17))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LOWORD(v33) = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v33, 2u);
        }

        *(v17 + 312) = v18;
        CIOnThreadCleanUpReset(v40);
        dropThreadId(v42, 1, v13 + 1);
        CICleanUpReset(v42, HIDWORD(v40));
      }

      else
      {
        v20 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
        v21 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v20 + 1);
        v38 = HIDWORD(v21);
        v39 = v21;
        v37 = __PAIR64__(v22, v23);
        v24 = threadData[9 * v21 + 1] + 320 * HIDWORD(v21);
        v25 = *(v24 + 312);
        v26 = *(v24 + 224);
        if (v26)
        {
          v26(*(v24 + 288));
        }

        v36 = v39;
        v35 = v38;
        v34 = v37;
        if (_setjmp(v24))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(v33) = 0;
            _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v33, 2u);
          }

          *(v24 + 312) = v25;
          CIOnThreadCleanUpReset(v34);
          dropThreadId(v36, 1, v20 + 1);
          CICleanUpReset(v36, HIDWORD(v34));
        }

        else
        {
          v33 = 0;
          if (!db_get_obj_callback(*(v4 + 1192), v5, &v33, 1, si_docIdRewriteCallback, *(v4 + 2368), 0))
          {
            free(v33);
            atomic_store(v5, (v4 + 2080));
          }

          v27 = threadData[9 * v36 + 1] + 320 * v35;
          *(v27 + 312) = v25;
          v28 = *(v27 + 232);
          if (v28)
          {
            v28(*(v27 + 288));
          }

          dropThreadId(v36, 0, v20 + 1);
        }

        v29 = threadData[9 * v42 + 1] + 320 * v41;
        *(v29 + 312) = v18;
        v30 = *(v29 + 232);
        if (v30)
        {
          v30(*(v29 + 288));
        }

        dropThreadId(v42, 0, v13 + 1);
      }

      v31 = threadData[9 * v48 + 1] + 320 * v47;
      *(v31 + 312) = v11;
      v32 = *(v31 + 232);
      if (v32)
      {
        v32(*(v31 + 288));
      }

      return dropThreadId(v48, 0, add_explicit + 1);
    }
  }

  return result;
}

uint64_t _si_init_localized_terms(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(a1 + 6648))
  {
    v38 = __si_assert_copy_extra_661(-1);
    v39 = v38;
    v40 = "";
    if (v38)
    {
      v40 = v38;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34518, "!ref->uniqueLocalizedTerms", v40);
    free(v39);
    if (__valid_fs(-1))
    {
      v41 = 2989;
    }

    else
    {
      v41 = 3072;
    }

    *v41 = -559038737;
    abort();
  }

  v2 = fd_create_protected(*(a1 + 32), "tmp.spotlight.loc", 0, 0);
  v3 = v2;
  v4 = v2;
  if (*(a1 + 2073))
  {
    v5 = 122;
  }

  else
  {
    v5 = 90;
  }

  v50 = 0;
  v6 = _fd_acquire_fd(v2, &v50);
  memset(&v49, 0, sizeof(v49));
  v7 = fstat(v6, &v49);
  st_size = v49.st_size;
  _fd_release_fd(v3, v6, 0, v50);
  if (v7 == -1 || st_size == 0)
  {
    fd_release(v4);
    v4 = 0;
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 0x40000000;
  v48[2] = ___si_init_localized_terms_block_invoke;
  v48[3] = &__block_descriptor_tmp_1142;
  v48[4] = a1;
  if (v4)
  {
    v54 = 0u;
    v55 = 0u;
    memset(v53, 0, sizeof(v53));
    store_stream_init(v53, v4, 0);
    if (!*&v53[16] && *(a1 + 1284) >= 84)
    {
      v10 = SICopyProperty(a1, @"database.localizedtermsuuid");
      if (v10)
      {
        v11 = v10;
        if (CFDataGetLength(v10) == 16 && store_stream_read_vint32_706(v53) == 13)
        {
          v57.location = 0;
          *buffer = 0;
          v52 = 0;
          v57.length = 16;
          CFDataGetBytes(v11, v57, buffer);
          store_stream_read_bytes_707(v53, (a1 + 6856), 0x10uLL);
          if (!uuid_compare(buffer, (a1 + 6856)))
          {
            updated = TermUpdateSetRestore(v12, v53, 0, 0, 0, 1, v5, 0, 0, 0, 0, v48);
            *(a1 + 6648) = updated;
            if (updated)
            {
              v29 = *__error();
              v30 = _SILogForLogForCategory(0);
              v31 = 2 * (gSILogLevels[0] < 4);
              if (os_log_type_enabled(v30, v31))
              {
                WORD2(v47) = 0;
                _os_log_impl(&dword_1C278D000, v30, v31, "restored localized terms", &v47 + 4, 2u);
              }

              *__error() = v29;
              CFRelease(v11);
              store_stream_destroy(v53);
              fd_release(v4);
              v13 = 1;
              goto LABEL_21;
            }
          }
        }

        CFRelease(v11);
      }
    }

    store_stream_destroy(v53);
    fd_release(v4);
  }

  *(a1 + 6648) = TermUpdateSetCreate(0, 0, 0, 1, v5, 0, 0, v48);
  v13 = 0;
LABEL_21:
  memset(v53, 0, 24);
  pthread_rwlockattr_init(v53);
  pthread_rwlock_init((a1 + 6656), v53);
  pthread_rwlockattr_destroy(v53);
  v14 = *(a1 + 6648);
  *(v14 + 280) = a1 + 6656;
  *(v14 + 608) = getPropertyStringCallback;
  *(a1 + 6872) = 0;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v16 = setThreadIdAndInfo(*(a1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  *buffer = HIDWORD(v16);
  *v53 = v16;
  v47 = __PAIR64__(v17, v18);
  v19 = threadData[9 * v16 + 1] + 320 * HIDWORD(v16);
  *(v19 + 216) = 0;
  v20 = *(v19 + 312);
  v21 = *(v19 + 224);
  if (v21)
  {
    v21(*(v19 + 288));
  }

  v46 = *v53;
  v45 = *buffer;
  v44 = v47;
  if (_setjmp(v19))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v19 + 312) = v20;
    CIOnThreadCleanUpReset(v44);
    dropThreadId(v46, 1, add_explicit + 1);
    return CICleanUpReset(v46, HIDWORD(v44));
  }

  if (*(a1 + 1284) >= 84)
  {
    v23 = *(a1 + 1192);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___si_init_localized_terms_block_invoke_1146;
    aBlock[3] = &__block_descriptor_tmp_1147;
    aBlock[4] = a1;
    if (*v23 == 1685287992)
    {
      *(v23 + 968) = _Block_copy(aBlock);
    }

    if ((v13 & 1) == 0)
    {
      v24 = *(a1 + 1192);
      if (*v24 == 1685287992)
      {
        if (*(v24 + 968))
        {
          v25 = *(v24 + 912);
          if ((*(v24 + 804) & 0x14) == 0)
          {
            if (*(v25 + 56) >= 2u)
            {
              v27 = 1;
              do
              {
                (*(*(v24 + 968) + 16))();
                ++v27;
              }

              while (v27 < *(v25 + 56));
            }

            goto LABEL_55;
          }

          if (v25)
          {
            v26 = *(v25 + 216);
            if (v26 <= 842150449)
            {
              if (v26 == -572662307)
              {
                v32 = data_map_double_count(*(v24 + 912));
LABEL_52:
                v33 = v32 + 1;
                if (v32 + 1 >= 2)
                {
                  v34 = 2;
                  do
                  {
                    v35 = v34;
                    (*(*(v24 + 968) + 16))();
                    v34 = v35 + 1;
                  }

                  while (v33 > v35);
                }

                goto LABEL_55;
              }

              if (v26 != -270471200)
              {
                goto LABEL_55;
              }

LABEL_50:
              v32 = *(v25 + 224) - 1;
              goto LABEL_52;
            }

            if (v26 == 1684300900)
            {
              goto LABEL_50;
            }

            if (v26 == 842150450)
            {
              v32 = (*(v25 + 220) - 1);
              goto LABEL_52;
            }
          }
        }
      }
    }
  }

LABEL_55:
  v36 = threadData[9 * v46 + 1] + 320 * v45;
  *(v36 + 312) = v20;
  v37 = *(v36 + 232);
  if (v37)
  {
    v37(*(v36 + 288));
  }

  return dropThreadId(v46, 0, add_explicit + 1);
}

uint64_t _SIInitSDB(uint64_t a1, __int16 a2, int a3)
{
  v373 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v7 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
  v366 = v7;
  v8 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
  v364 = v9;
  v365 = HIDWORD(v7);
  v363 = v10;
  *(v8 + 216) = 0;
  v11 = *(v8 + 312);
  v12 = *(v8 + 224);
  if (v12)
  {
    v12(*(v8 + 288));
  }

  v362 = v366;
  v361 = v365;
  v360 = v364;
  v359 = v363;
  v13 = _setjmp(v8);
  v14 = MEMORY[0x1E695E480];
  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v8 + 312) = v11;
    CIOnThreadCleanUpReset(v359);
    dropThreadId(v362, 1, add_explicit + 1);
    CICleanUpReset(v362, v360);
    goto LABEL_617;
  }

  v15 = *(a1 + 1192);
  v358[0] = MEMORY[0x1E69E9820];
  v358[1] = 0x40000000;
  v358[2] = ___SIInitSDB_block_invoke;
  v358[3] = &__block_descriptor_tmp_1149;
  v358[4] = a1;
  v356[4] = a1;
  v357[0] = MEMORY[0x1E69E9820];
  v357[1] = 0x40000000;
  v357[2] = ___SIInitSDB_block_invoke_2;
  v357[3] = &__block_descriptor_tmp_1151;
  v357[4] = a1;
  v356[0] = MEMORY[0x1E69E9820];
  v356[1] = 0x40000000;
  v356[2] = ___SIInitSDB_block_invoke_3;
  v356[3] = &__block_descriptor_tmp_1152;
  if (*v15 != 1685287992)
  {
    v335 = __si_assert_copy_extra_332();
    v336 = v335;
    v337 = "";
    if (v335)
    {
      v337 = v335;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 233, v337);
LABEL_631:
    free(v336);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  db2_set_garbage_collector(v15, v358, v357, v356);
  v16 = *(a1 + 1192);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___SIInitSDB_block_invoke_4;
  aBlock[3] = &__block_descriptor_tmp_1154;
  aBlock[4] = a1;
  if (*v16 != 1685287992)
  {
    v338 = *__error();
    v339 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v339, OS_LOG_TYPE_ERROR))
    {
      v340 = *v16;
      *buf = 136315650;
      v368 = "db_set_dirty_callback";
      v369 = 1024;
      v370 = 235;
      v371 = 1024;
      v372 = v340;
      _os_log_error_impl(&dword_1C278D000, v339, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v338;
    v341 = __si_assert_copy_extra_332();
    v336 = v341;
    v342 = "";
    if (v341)
    {
      v342 = v341;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 235, v342);
    goto LABEL_631;
  }

  v17 = _Block_copy(aBlock);
  v18 = *(v16 + 104);
  if (v18)
  {
    _Block_release(v18);
  }

  *(v16 + 104) = v17;
  v19 = *(a1 + 6624);
  if (v19)
  {
    v354[0] = MEMORY[0x1E69E9820];
    v354[1] = 0x40000000;
    v354[2] = ___SIInitSDB_block_invoke_5;
    v354[3] = &__block_descriptor_tmp_1155;
    v354[4] = a1;
    v20 = _Block_copy(v354);
    v21 = *(v19 + 4640);
    if (v21)
    {
      _Block_release(v21);
    }

    *(v19 + 4640) = v20;
  }

  v348 = v11;
  v349 = add_explicit;
  v22 = *(a1 + 1392);
  v23 = *(a1 + 1384);
  v350[0] = MEMORY[0x1E69E9820];
  v350[1] = 0x40000000;
  v351 = ___SIInitSDB_block_invoke_6;
  v352 = &__block_descriptor_tmp_1157;
  v353 = a1;
  if (v22 && *(v22 + 8))
  {
    v24 = 0;
    while ((v351)(v350, *(*v22 + 8 * v24), 0))
    {
      if (++v24 >= *(v22 + 8))
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    if (v23 && *(v23 + 8))
    {
      v25 = 0;
      do
      {
        if (!(v351)(v350, *(*v23 + 8 * v25), 1))
        {
          break;
        }

        ++v25;
      }

      while (v25 < *(v23 + 8));
    }
  }

  v26 = a3;
  if (*(a1 + 2072) == 1)
  {
    v27 = SICopyProperty(a1, @"GroupAssignments");
    v28 = *v14;
    if (v27)
    {
      v29 = v27;
      *(a1 + 2088) = CFDictionaryCreateMutableCopy(*v14, 0, v27);
      CFRelease(v29);
    }

    else
    {
      *(a1 + 2088) = CFDictionaryCreateMutable(*v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    Mutable = CFBitVectorCreateMutable(v28, 256);
    *(a1 + 2096) = Mutable;
    CFBitVectorSetCount(Mutable, 256);
    CFBitVectorSetAllBits(*(a1 + 2096), 0);
    CFDictionaryApplyFunction(*(a1 + 2088), updateUsedBites, *(a1 + 2096));
  }

  v31 = (a1 + 1192);
  *(a1 + 2060) = db_create_id_for_field(*(a1 + 1192), "_kMDItemExternalID", 0x2308u, 11);
  *(a1 + 2064) = db_create_id_for_field(*(a1 + 1192), "_kMDItemBundleID", 0x4318u, 11);
  *(a1 + 2056) = db_create_id_for_field(*(a1 + 1192), "_kMDItemOwnerUserID", 0x308u, 7);
  *(a1 + 2068) = db_create_id_for_field(*(a1 + 1192), "_kMDItemDomainIdentifier", 0x4300u, 11);
  *(a1 + 2032) = db_create_id_for_field(*(a1 + 1192), "_kMDItemFileName", 0x308u, 11);
  *(a1 + 2000) = db_create_id_for_field(*(a1 + 1192), "kMDItemContentTypeTree", 0x330u, 11);
  *(a1 + 2004) = db_create_id_for_field(*(a1 + 1192), "kMDItemSupportFileType", 0x330u, 11);
  *(a1 + 1996) = db_create_id_for_field(*(a1 + 1192), "kMDItemContentType", 0x310u, 11);
  *(a1 + 2008) = db_create_id_for_field(*(a1 + 1192), "_kMDItemGroupId", 0x108u, 2);
  if (v26)
  {
    if ((a2 & 0x100) != 0)
    {
      v174 = "_kMDItemStorageSize";
    }

    else
    {
      if (!*(a1 + 6608))
      {
        v32 = *v14;
        v33 = CFDictionaryCreateMutable(*v14, 0, 0, 0);
        v34 = *v31;
        id_for_string = db_get_id_for_string(*v31, "public.message");
        if (id_for_string != -2)
        {
          CFDictionarySetValue(v33, (id_for_string & 0x7FFFFFFF), 1);
          v34 = *v31;
        }

        v36 = db_get_id_for_string(v34, "com.apple.mail.emlx");
        if (v36 != -2)
        {
          CFDictionarySetValue(v33, (v36 & 0x7FFFFFFF), 2);
          v34 = *v31;
        }

        v37 = db_get_id_for_string(v34, "com.apple.mail.eml");
        if (v37 != -2)
        {
          CFDictionarySetValue(v33, (v37 & 0x7FFFFFFF), 3);
          v34 = *v31;
        }

        v38 = db_get_id_for_string(v34, "com.microsoft.entourage.virtual.message");
        if (v38 != -2)
        {
          CFDictionarySetValue(v33, (v38 & 0x7FFFFFFF), 4);
          v34 = *v31;
        }

        v39 = db_get_id_for_string(v34, "com.apple.ichat.transcript");
        if (v39 != -2)
        {
          CFDictionarySetValue(v33, (v39 & 0x7FFFFFFF), 5);
          v34 = *v31;
        }

        v40 = db_get_id_for_string(v34, "public.contact");
        if (v40 != -2)
        {
          CFDictionarySetValue(v33, (v40 & 0x7FFFFFFF), 6);
          v34 = *v31;
        }

        v41 = db_get_id_for_string(v34, "public.vcard");
        if (v41 != -2)
        {
          CFDictionarySetValue(v33, (v41 & 0x7FFFFFFF), 7);
          v34 = *v31;
        }

        v42 = db_get_id_for_string(v34, "com.apple.addressbook.person");
        if (v42 != -2)
        {
          CFDictionarySetValue(v33, (v42 & 0x7FFFFFFF), 8);
          v34 = *v31;
        }

        v43 = db_get_id_for_string(v34, "com.apple.addressbook.group");
        if (v43 != -2)
        {
          CFDictionarySetValue(v33, (v43 & 0x7FFFFFFF), 9);
          v34 = *v31;
        }

        v44 = db_get_id_for_string(v34, "com.microsoft.entourage.virtual.contact");
        if (v44 != -2)
        {
          CFDictionarySetValue(v33, (v44 & 0x7FFFFFFF), 0xA);
          v34 = *v31;
        }

        v45 = db_get_id_for_string(v34, "com.microsoft.entourage.virtual.group");
        if (v45 != -2)
        {
          CFDictionarySetValue(v33, (v45 & 0x7FFFFFFF), 0xB);
          v34 = *v31;
        }

        v46 = db_get_id_for_string(v34, "com.apple.systempreference.prefpane");
        if (v46 != -2)
        {
          CFDictionarySetValue(v33, (v46 & 0x7FFFFFFF), 0xC);
          v34 = *v31;
        }

        v47 = db_get_id_for_string(v34, "public.font");
        if (v47 != -2)
        {
          CFDictionarySetValue(v33, (v47 & 0x7FFFFFFF), 0xD);
          v34 = *v31;
        }

        v48 = db_get_id_for_string(v34, "public.bookmark");
        if (v48 != -2)
        {
          CFDictionarySetValue(v33, (v48 & 0x7FFFFFFF), 0xE);
          v34 = *v31;
        }

        v49 = db_get_id_for_string(v34, "com.apple.safari.bookmark");
        if (v49 != -2)
        {
          CFDictionarySetValue(v33, (v49 & 0x7FFFFFFF), 0xF);
          v34 = *v31;
        }

        v50 = db_get_id_for_string(v34, "com.apple.safari.history");
        if (v50 != -2)
        {
          CFDictionarySetValue(v33, (v50 & 0x7FFFFFFF), 0x10);
          v34 = *v31;
        }

        v51 = db_get_id_for_string(v34, "public.to-do-item");
        if (v51 != -2)
        {
          CFDictionarySetValue(v33, (v51 & 0x7FFFFFFF), 0x11);
          v34 = *v31;
        }

        v52 = db_get_id_for_string(v34, "public.calendar-event");
        if (v52 != -2)
        {
          CFDictionarySetValue(v33, (v52 & 0x7FFFFFFF), 0x12);
          v34 = *v31;
        }

        v53 = db_get_id_for_string(v34, "com.apple.ical.bookmark");
        if (v53 != -2)
        {
          CFDictionarySetValue(v33, (v53 & 0x7FFFFFFF), 0x13);
          v34 = *v31;
        }

        v54 = db_get_id_for_string(v34, "com.apple.ical.bookmark.todo");
        if (v54 != -2)
        {
          CFDictionarySetValue(v33, (v54 & 0x7FFFFFFF), 0x14);
          v34 = *v31;
        }

        v55 = db_get_id_for_string(v34, "com.apple.ical.ics.event");
        if (v55 != -2)
        {
          CFDictionarySetValue(v33, (v55 & 0x7FFFFFFF), 0x15);
          v34 = *v31;
        }

        v56 = db_get_id_for_string(v34, "com.apple.ical.ics.todo");
        if (v56 != -2)
        {
          CFDictionarySetValue(v33, (v56 & 0x7FFFFFFF), 0x16);
          v34 = *v31;
        }

        v57 = db_get_id_for_string(v34, "com.microsoft.entourage.virtual.event");
        if (v57 != -2)
        {
          CFDictionarySetValue(v33, (v57 & 0x7FFFFFFF), 0x17);
          v34 = *v31;
        }

        v58 = db_get_id_for_string(v34, "com.microsoft.entourage.virtual.task");
        if (v58 != -2)
        {
          CFDictionarySetValue(v33, (v58 & 0x7FFFFFFF), 0x18);
          v34 = *v31;
        }

        v59 = db_get_id_for_string(v34, "public.movie");
        if (v59 != -2)
        {
          CFDictionarySetValue(v33, (v59 & 0x7FFFFFFF), 0x19);
          v34 = *v31;
        }

        v60 = db_get_id_for_string(v34, "com.apple.quicktime-movie");
        if (v60 != -2)
        {
          CFDictionarySetValue(v33, (v60 & 0x7FFFFFFF), 0x1A);
          v34 = *v31;
        }

        v61 = db_get_id_for_string(v34, "public.mpeg-video");
        if (v61 != -2)
        {
          CFDictionarySetValue(v33, (v61 & 0x7FFFFFFF), 0x1B);
          v34 = *v31;
        }

        v62 = db_get_id_for_string(v34, "public.mpeg-4");
        if (v62 != -2)
        {
          CFDictionarySetValue(v33, (v62 & 0x7FFFFFFF), 0x1C);
          v34 = *v31;
        }

        v63 = db_get_id_for_string(v34, "public.mpeg");
        if (v63 != -2)
        {
          CFDictionarySetValue(v33, (v63 & 0x7FFFFFFF), 0x1D);
          v34 = *v31;
        }

        v64 = db_get_id_for_string(v34, "public.3gpp");
        if (v64 != -2)
        {
          CFDictionarySetValue(v33, (v64 & 0x7FFFFFFF), 0x1E);
          v34 = *v31;
        }

        v65 = db_get_id_for_string(v34, "public.3gpp2");
        if (v65 != -2)
        {
          CFDictionarySetValue(v33, (v65 & 0x7FFFFFFF), 0x1F);
          v34 = *v31;
        }

        v66 = db_get_id_for_string(v34, "com.apple.application-bundle");
        if (v66 != -2)
        {
          CFDictionarySetValue(v33, (v66 & 0x7FFFFFFF), 0x20);
          v34 = *v31;
        }

        v67 = db_get_id_for_string(v34, "com.apple.application-file");
        if (v67 != -2)
        {
          CFDictionarySetValue(v33, (v67 & 0x7FFFFFFF), 0x21);
          v34 = *v31;
        }

        v68 = db_get_id_for_string(v34, "com.apple.dashboard-widget");
        if (v68 != -2)
        {
          CFDictionarySetValue(v33, (v68 & 0x7FFFFFFF), 0x22);
          v34 = *v31;
        }

        v69 = db_get_id_for_string(v34, "public.folder");
        if (v69 != -2)
        {
          CFDictionarySetValue(v33, (v69 & 0x7FFFFFFF), 0x23);
          v34 = *v31;
        }

        v70 = db_get_id_for_string(v34, "com.apple.mount-point");
        if (v70 != -2)
        {
          CFDictionarySetValue(v33, (v70 & 0x7FFFFFFF), 0x24);
          v34 = *v31;
        }

        v71 = db_get_id_for_string(v34, "public.audio");
        if (v71 != -2)
        {
          CFDictionarySetValue(v33, (v71 & 0x7FFFFFFF), 0x25);
          v34 = *v31;
        }

        v72 = db_get_id_for_string(v34, "public.mpeg-4-audio");
        if (v72 != -2)
        {
          CFDictionarySetValue(v33, (v72 & 0x7FFFFFFF), 0x26);
          v34 = *v31;
        }

        v73 = db_get_id_for_string(v34, "com.apple.protected-mpeg-4-audio");
        if (v73 != -2)
        {
          CFDictionarySetValue(v33, (v73 & 0x7FFFFFFF), 0x27);
          v34 = *v31;
        }

        v74 = db_get_id_for_string(v34, "com.adobe.pdf");
        if (v74 != -2)
        {
          CFDictionarySetValue(v33, (v74 & 0x7FFFFFFF), 0x28);
          v34 = *v31;
        }

        v75 = db_get_id_for_string(v34, "com.apple.localized-pdf-bundle");
        if (v75 != -2)
        {
          CFDictionarySetValue(v33, (v75 & 0x7FFFFFFF), 0x29);
          v34 = *v31;
        }

        v76 = db_get_id_for_string(v34, "public.presentation");
        if (v76 != -2)
        {
          CFDictionarySetValue(v33, (v76 & 0x7FFFFFFF), 0x2A);
          v34 = *v31;
        }

        v77 = db_get_id_for_string(v34, "com.microsoft.powerpoint.ppt");
        if (v77 != -2)
        {
          CFDictionarySetValue(v33, (v77 & 0x7FFFFFFF), 0x2B);
          v34 = *v31;
        }

        v78 = db_get_id_for_string(v34, "com.apple.keynote.key");
        if (v78 != -2)
        {
          CFDictionarySetValue(v33, (v78 & 0x7FFFFFFF), 0x2C);
          v34 = *v31;
        }

        v79 = db_get_id_for_string(v34, "com.apple.iwork.keynote.key");
        if (v79 != -2)
        {
          CFDictionarySetValue(v33, (v79 & 0x7FFFFFFF), 0x2D);
          v34 = *v31;
        }

        v80 = db_get_id_for_string(v34, "public.image");
        if (v80 != -2)
        {
          CFDictionarySetValue(v33, (v80 & 0x7FFFFFFF), 0x2E);
          v34 = *v31;
        }

        v81 = db_get_id_for_string(v34, "com.apple.motion.project");
        if (v81 != -2)
        {
          CFDictionarySetValue(v33, (v81 & 0x7FFFFFFF), 0x2F);
          v34 = *v31;
        }

        v82 = db_get_id_for_string(v34, "com.apple.iwork.pages.pages");
        if (v82 != -2)
        {
          CFDictionarySetValue(v33, (v82 & 0x7FFFFFFF), 0x30);
          v34 = *v31;
        }

        v83 = db_get_id_for_string(v34, "com.apple.iwork.pages.sffpages");
        if (v83 != -2)
        {
          CFDictionarySetValue(v33, (v83 & 0x7FFFFFFF), 0x31);
          v34 = *v31;
        }

        v84 = db_get_id_for_string(v34, "com.apple.iwork.pages.template");
        if (v84 != -2)
        {
          CFDictionarySetValue(v33, (v84 & 0x7FFFFFFF), 0x32);
          v34 = *v31;
        }

        v85 = db_get_id_for_string(v34, "com.apple.iwork.pages.sfftemplate");
        if (v85 != -2)
        {
          CFDictionarySetValue(v33, (v85 & 0x7FFFFFFF), 0x33);
          v34 = *v31;
        }

        v86 = db_get_id_for_string(v34, "public.rtf");
        if (v86 != -2)
        {
          CFDictionarySetValue(v33, (v86 & 0x7FFFFFFF), 0x34);
          v34 = *v31;
        }

        v87 = db_get_id_for_string(v34, "com.apple.rtfd");
        if (v87 != -2)
        {
          CFDictionarySetValue(v33, (v87 & 0x7FFFFFFF), 0x35);
          v34 = *v31;
        }

        v88 = db_get_id_for_string(v34, "com.apple.flat-rtfd");
        if (v88 != -2)
        {
          CFDictionarySetValue(v33, (v88 & 0x7FFFFFFF), 0x36);
          v34 = *v31;
        }

        v89 = db_get_id_for_string(v34, "com.microsoft.word.doc");
        if (v89 != -2)
        {
          CFDictionarySetValue(v33, (v89 & 0x7FFFFFFF), 0x37);
          v34 = *v31;
        }

        v90 = db_get_id_for_string(v34, "org.khronos.collada.digital-asset-exchange");
        if (v90 != -2)
        {
          CFDictionarySetValue(v33, (v90 & 0x7FFFFFFF), 0x38);
          v34 = *v31;
        }

        v91 = db_get_id_for_string(v34, "public.plain-text");
        if (v91 != -2)
        {
          CFDictionarySetValue(v33, (v91 & 0x7FFFFFFF), 0x39);
          v34 = *v31;
        }

        v92 = db_get_id_for_string(v34, "public.html");
        if (v92 != -2)
        {
          CFDictionarySetValue(v33, (v92 & 0x7FFFFFFF), 0x3A);
          v34 = *v31;
        }

        v93 = db_get_id_for_string(v34, "public.xhtml");
        if (v93 != -2)
        {
          CFDictionarySetValue(v33, (v93 & 0x7FFFFFFF), 0x3B);
          v34 = *v31;
        }

        v94 = db_get_id_for_string(v34, "public.shell-script");
        if (v94 != -2)
        {
          CFDictionarySetValue(v33, (v94 & 0x7FFFFFFF), 0x3C);
          v34 = *v31;
        }

        v95 = db_get_id_for_string(v34, "public.source-code");
        if (v95 != -2)
        {
          CFDictionarySetValue(v33, (v95 & 0x7FFFFFFF), 0x3D);
          v34 = *v31;
        }

        v96 = db_get_id_for_string(v34, "public.unix-executable");
        if (v96 != -2)
        {
          CFDictionarySetValue(v33, (v96 & 0x7FFFFFFF), 0x3E);
          v34 = *v31;
        }

        v97 = db_get_id_for_string(v34, "com.apple.xcode.project");
        if (v97 != -2)
        {
          CFDictionarySetValue(v33, (v97 & 0x7FFFFFFF), 0x3F);
          v34 = *v31;
        }

        v98 = db_get_id_for_string(v34, "com.apple.xcode.model");
        if (v98 != -2)
        {
          CFDictionarySetValue(v33, (v98 & 0x7FFFFFFF), 0x40);
          v34 = *v31;
        }

        v99 = db_get_id_for_string(v34, "com.apple.xcode.archive");
        if (v99 != -2)
        {
          CFDictionarySetValue(v33, (v99 & 0x7FFFFFFF), 0x41);
          v34 = *v31;
        }

        v100 = db_get_id_for_string(v34, "com.apple.xcode.docset");
        if (v100 != -2)
        {
          CFDictionarySetValue(v33, (v100 & 0x7FFFFFFF), 0x42);
          v34 = *v31;
        }

        v101 = db_get_id_for_string(v34, "com.apple.xcode.projectdata");
        if (v101 != -2)
        {
          CFDictionarySetValue(v33, (v101 & 0x7FFFFFFF), 0x43);
          v34 = *v31;
        }

        v102 = db_get_id_for_string(v34, "com.apple.xcode.dsym");
        if (v102 != -2)
        {
          CFDictionarySetValue(v33, (v102 & 0x7FFFFFFF), 0x44);
          v34 = *v31;
        }

        v103 = db_get_id_for_string(v34, "com.apple.xcode.configsettings");
        if (v103 != -2)
        {
          CFDictionarySetValue(v33, (v103 & 0x7FFFFFFF), 0x45);
          v34 = *v31;
        }

        v104 = db_get_id_for_string(v34, "com.apple.xcode.usersettings");
        if (v104 != -2)
        {
          CFDictionarySetValue(v33, (v104 & 0x7FFFFFFF), 0x46);
          v34 = *v31;
        }

        v105 = db_get_id_for_string(v34, "com.apple.xcode.strings-text");
        if (v105 != -2)
        {
          CFDictionarySetValue(v33, (v105 & 0x7FFFFFFF), 0x47);
          v34 = *v31;
        }

        v106 = db_get_id_for_string(v34, "com.apple.xcode.plugin");
        if (v106 != -2)
        {
          CFDictionarySetValue(v33, (v106 & 0x7FFFFFFF), 0x48);
          v34 = *v31;
        }

        v107 = db_get_id_for_string(v34, "com.apple.xcode.mom");
        if (v107 != -2)
        {
          CFDictionarySetValue(v33, (v107 & 0x7FFFFFFF), 0x49);
          v34 = *v31;
        }

        v108 = db_get_id_for_string(v34, "com.apple.property-list");
        if (v108 != -2)
        {
          CFDictionarySetValue(v33, (v108 & 0x7FFFFFFF), 0x4A);
          v34 = *v31;
        }

        v109 = db_get_id_for_string(v34, "dyn.ah62d4rv4ge81a7dk");
        if (v109 != -2)
        {
          CFDictionarySetValue(v33, (v109 & 0x7FFFFFFF), 0x4B);
          v34 = *v31;
        }

        v110 = db_get_id_for_string(v34, "dyn.ah62d4rv4ge80u5pbsa");
        if (v110 != -2)
        {
          CFDictionarySetValue(v33, (v110 & 0x7FFFFFFF), 0x4C);
          v34 = *v31;
        }

        v111 = db_get_id_for_string(v34, "com.apple.dashcode.xml");
        if (v111 != -2)
        {
          CFDictionarySetValue(v33, (v111 & 0x7FFFFFFF), 0x4D);
          v34 = *v31;
        }

        v112 = db_get_id_for_string(v34, "com.apple.dashcode.css");
        if (v112 != -2)
        {
          CFDictionarySetValue(v33, (v112 & 0x7FFFFFFF), 0x4E);
          v34 = *v31;
        }

        v113 = db_get_id_for_string(v34, "com.apple.dashcode.javascript");
        if (v113 != -2)
        {
          CFDictionarySetValue(v33, (v113 & 0x7FFFFFFF), 0x4F);
          v34 = *v31;
        }

        v114 = db_get_id_for_string(v34, "com.apple.dashcode.json");
        if (v114 != -2)
        {
          CFDictionarySetValue(v33, (v114 & 0x7FFFFFFF), 0x50);
          v34 = *v31;
        }

        v115 = db_get_id_for_string(v34, "com.apple.dashcode.manifest");
        if (v115 != -2)
        {
          CFDictionarySetValue(v33, (v115 & 0x7FFFFFFF), 0x51);
          v34 = *v31;
        }

        v116 = db_get_id_for_string(v34, "com.apple.interfacebuilder.document");
        if (v116 != -2)
        {
          CFDictionarySetValue(v33, (v116 & 0x7FFFFFFF), 0x52);
          v34 = *v31;
        }

        v117 = db_get_id_for_string(v34, "com.apple.interfacebuilder.document.cocoa");
        if (v117 != -2)
        {
          CFDictionarySetValue(v33, (v117 & 0x7FFFFFFF), 0x53);
          v34 = *v31;
        }

        v118 = db_get_id_for_string(v34, "com.apple.rez-source");
        if (v118 != -2)
        {
          CFDictionarySetValue(v33, (v118 & 0x7FFFFFFF), 0x54);
          v34 = *v31;
        }

        v119 = db_get_id_for_string(v34, "com.apple.iphone.developerprofile");
        if (v119 != -2)
        {
          CFDictionarySetValue(v33, (v119 & 0x7FFFFFFF), 0x55);
          v34 = *v31;
        }

        v120 = db_get_id_for_string(v34, "com.apple.iphone.mobileprovision");
        if (v120 != -2)
        {
          CFDictionarySetValue(v33, (v120 & 0x7FFFFFFF), 0x56);
          v34 = *v31;
        }

        v121 = db_get_id_for_string(v34, "com.apple.coreanimation-bundle");
        if (v121 != -2)
        {
          CFDictionarySetValue(v33, (v121 & 0x7FFFFFFF), 0x57);
          v34 = *v31;
        }

        v122 = db_get_id_for_string(v34, "com.apple.coreanimation-xml");
        if (v122 != -2)
        {
          CFDictionarySetValue(v33, (v122 & 0x7FFFFFFF), 0x58);
          v34 = *v31;
        }

        v123 = db_get_id_for_string(v34, "com.sun.java-class");
        if (v123 != -2)
        {
          CFDictionarySetValue(v33, (v123 & 0x7FFFFFFF), 0x59);
          v34 = *v31;
        }

        v124 = db_get_id_for_string(v34, "com.apple.scripting-definition");
        if (v124 != -2)
        {
          CFDictionarySetValue(v33, (v124 & 0x7FFFFFFF), 0x5A);
          v34 = *v31;
        }

        v125 = db_get_id_for_string(v34, "com.apple.dt.document.workspace");
        if (v125 != -2)
        {
          CFDictionarySetValue(v33, (v125 & 0x7FFFFFFF), 0x5B);
          v34 = *v31;
        }

        v126 = db_get_id_for_string(v34, "com.apple.dt.document.scheme");
        if (v126 != -2)
        {
          CFDictionarySetValue(v33, (v126 & 0x7FFFFFFF), 0x5C);
          v34 = *v31;
        }

        v127 = db_get_id_for_string(v34, "com.apple.dt.ide.plug-in");
        if (v127 != -2)
        {
          CFDictionarySetValue(v33, (v127 & 0x7FFFFFFF), 0x5D);
          v34 = *v31;
        }

        v128 = db_get_id_for_string(v34, "com.apple.dt.dvt.plug-in");
        if (v128 != -2)
        {
          CFDictionarySetValue(v33, (v128 & 0x7FFFFFFF), 0x5E);
          v34 = *v31;
        }

        v129 = db_get_id_for_string(v34, "com.apple.dt.document.snapshot");
        if (v129 != -2)
        {
          CFDictionarySetValue(v33, (v129 & 0x7FFFFFFF), 0x5F);
          v34 = *v31;
        }

        v130 = db_get_id_for_string(v34, "com.apple.dt.bundle.unit-test.objective-c");
        if (v130 != -2)
        {
          CFDictionarySetValue(v33, (v130 & 0x7FFFFFFF), 0x60);
          v34 = *v31;
        }

        v131 = db_get_id_for_string(v34, "com.apple.instruments.tracetemplate");
        if (v131 != -2)
        {
          CFDictionarySetValue(v33, (v131 & 0x7FFFFFFF), 0x61);
          v34 = *v31;
        }

        v132 = db_get_id_for_string(v34, "com.apple.quartzdebug.introspectiontrace");
        if (v132 != -2)
        {
          CFDictionarySetValue(v33, (v132 & 0x7FFFFFFF), 0x62);
          v34 = *v31;
        }

        v133 = db_get_id_for_string(v34, "com.apple.applescript.text-object");
        if (v133 != -2)
        {
          CFDictionarySetValue(v33, (v133 & 0x7FFFFFFF), 0x63);
          v34 = *v31;
        }

        v134 = db_get_id_for_string(v34, "com.apple.applescript.data-object");
        if (v134 != -2)
        {
          CFDictionarySetValue(v33, (v134 & 0x7FFFFFFF), 0x64);
        }

        v135 = *v31;
        v136 = db_get_id_for_string(*v31, "com.apple.applescript.url-object");
        if (v136 != -2)
        {
          CFDictionarySetValue(v33, (v136 & 0x7FFFFFFF), 0x65);
          v135 = *v31;
        }

        v137 = db_get_id_for_string(v135, "com.apple.applescript.alias-object");
        if (v137 != -2)
        {
          CFDictionarySetValue(v33, (v137 & 0x7FFFFFFF), 0x66);
          v135 = *v31;
        }

        v138 = db_get_id_for_string(v135, "com.apple.symbol-export");
        if (v138 != -2)
        {
          CFDictionarySetValue(v33, (v138 & 0x7FFFFFFF), 0x67);
          v135 = *v31;
        }

        v139 = db_get_id_for_string(v135, "com.apple.mach-o-binary");
        if (v139 != -2)
        {
          CFDictionarySetValue(v33, (v139 & 0x7FFFFFFF), 0x68);
          v135 = *v31;
        }

        v140 = db_get_id_for_string(v135, "com.apple.mach-o-object");
        if (v140 != -2)
        {
          CFDictionarySetValue(v33, (v140 & 0x7FFFFFFF), 0x69);
          v135 = *v31;
        }

        v141 = db_get_id_for_string(v135, "com.apple.mach-o-executable");
        if (v141 != -2)
        {
          CFDictionarySetValue(v33, (v141 & 0x7FFFFFFF), 0x6A);
          v135 = *v31;
        }

        v142 = db_get_id_for_string(v135, "com.apple.x11-mach-o-executable");
        if (v142 != -2)
        {
          CFDictionarySetValue(v33, (v142 & 0x7FFFFFFF), 0x6B);
          v135 = *v31;
        }

        v143 = db_get_id_for_string(v135, "public.object-code");
        if (v143 != -2)
        {
          CFDictionarySetValue(v33, (v143 & 0x7FFFFFFF), 0x6C);
          v135 = *v31;
        }

        v144 = db_get_id_for_string(v135, "com.microsoft.windows-executable");
        if (v144 != -2)
        {
          CFDictionarySetValue(v33, (v144 & 0x7FFFFFFF), 0x6D);
          v135 = *v31;
        }

        v145 = db_get_id_for_string(v135, "com.microsoft.windows-dynamic-link-library");
        if (v145 != -2)
        {
          CFDictionarySetValue(v33, (v145 & 0x7FFFFFFF), 0x6E);
          v135 = *v31;
        }

        v146 = db_get_id_for_string(v135, "com.sun.java-archive");
        if (v146 != -2)
        {
          CFDictionarySetValue(v33, (v146 & 0x7FFFFFFF), 0x6F);
          v135 = *v31;
        }

        v147 = db_get_id_for_string(v135, "com.sun.web-application-archive");
        if (v147 != -2)
        {
          CFDictionarySetValue(v33, (v147 & 0x7FFFFFFF), 0x70);
          v135 = *v31;
        }

        v148 = db_get_id_for_string(v135, "com.apple.xcode.plugindata");
        if (v148 != -2)
        {
          CFDictionarySetValue(v33, (v148 & 0x7FFFFFFF), 0x71);
          v135 = *v31;
        }

        v149 = db_get_id_for_string(v135, "com.apple.dt.playground");
        if (v149 != -2)
        {
          CFDictionarySetValue(v33, (v149 & 0x7FFFFFFF), 0x72);
          v135 = *v31;
        }

        v150 = db_get_id_for_string(v135, "com.apple.iwork.numbers.sffnumbers");
        if (v150 != -2)
        {
          CFDictionarySetValue(v33, (v150 & 0x7FFFFFFF), 0x73);
          v135 = *v31;
        }

        v151 = db_get_id_for_string(v135, "com.apple.iwork.numbers.numbers");
        if (v151 != -2)
        {
          CFDictionarySetValue(v33, (v151 & 0x7FFFFFFF), 0x74);
          v135 = *v31;
        }

        v152 = db_get_id_for_string(v135, "com.apple.iwork.numbers.template");
        if (v152 != -2)
        {
          CFDictionarySetValue(v33, (v152 & 0x7FFFFFFF), 0x75);
          v135 = *v31;
        }

        v153 = db_get_id_for_string(v135, "com.microsoft.excel.xls");
        if (v153 != -2)
        {
          CFDictionarySetValue(v33, (v153 & 0x7FFFFFFF), 0x76);
          v135 = *v31;
        }

        v154 = db_get_id_for_string(v135, "org.openxmlformats.spreadsheetml.sheet");
        if (v154 != -2)
        {
          CFDictionarySetValue(v33, (v154 & 0x7FFFFFFF), 0x77);
          v135 = *v31;
        }

        v155 = db_get_id_for_string(v135, "public.spreadsheet");
        if (v155 != -2)
        {
          CFDictionarySetValue(v33, (v155 & 0x7FFFFFFF), 0x78);
          v135 = *v31;
        }

        v156 = db_get_id_for_string(v135, "public.xml");
        if (v156 != -2)
        {
          CFDictionarySetValue(v33, (v156 & 0x7FFFFFFF), 0x79);
          v135 = *v31;
        }

        v157 = db_get_id_for_string(v135, "com.apple.log");
        if (v157 != -2)
        {
          CFDictionarySetValue(v33, (v157 & 0x7FFFFFFF), 0x7A);
          v135 = *v31;
        }

        v158 = db_get_id_for_string(v135, "com.apple.crashreport");
        if (v158 != -2)
        {
          CFDictionarySetValue(v33, (v158 & 0x7FFFFFFF), 0x7B);
          v135 = *v31;
        }

        v159 = db_get_id_for_string(v135, "com.apple.spinreport");
        if (v159 != -2)
        {
          CFDictionarySetValue(v33, (v159 & 0x7FFFFFFF), 0x7C);
          v135 = *v31;
        }

        v160 = db_get_id_for_string(v135, "com.apple.panicreport");
        if (v160 != -2)
        {
          CFDictionarySetValue(v33, (v160 & 0x7FFFFFFF), 0x7D);
          v135 = *v31;
        }

        v161 = db_get_id_for_string(v135, "com.apple.shutdownstall");
        if (v161 != -2)
        {
          CFDictionarySetValue(v33, (v161 & 0x7FFFFFFF), 0x7E);
          v135 = *v31;
        }

        v162 = db_get_id_for_string(v135, "com.apple.hangreport");
        if (v162 != -2)
        {
          CFDictionarySetValue(v33, (v162 & 0x7FFFFFFF), 0x7F);
          v135 = *v31;
        }

        v163 = db_get_id_for_string(v135, "public.json");
        if (v163 != -2)
        {
          CFDictionarySetValue(v33, (v163 & 0x7FFFFFFF), 0x80);
          v135 = *v31;
        }

        v164 = db_get_id_for_string(v135, "public.log");
        if (v164 != -2)
        {
          CFDictionarySetValue(v33, (v164 & 0x7FFFFFFF), 0x81);
          v135 = *v31;
        }

        v165 = db_get_id_for_string(v135, "public.content");
        if (v165 != -2)
        {
          CFDictionarySetValue(v33, (v165 & 0x7FFFFFFF), 0x82);
          v135 = *v31;
        }

        v166 = db_get_id_for_string(v135, "com.microsoft.excel.sheet.binary.macroenabled");
        if (v166 != -2)
        {
          CFDictionarySetValue(v33, (v166 & 0x7FFFFFFF), 0x83);
          v135 = *v31;
        }

        v167 = db_get_id_for_string(v135, "org.openxmlformats.spreadsheetml.sheet.macroenabled");
        if (v167 != -2)
        {
          CFDictionarySetValue(v33, (v167 & 0x7FFFFFFF), 0x84);
          v135 = *v31;
        }

        v168 = db_get_id_for_string(v135, "com.apple.protected-mpeg-4-audio-b");
        if (v168 != -2)
        {
          CFDictionarySetValue(v33, (v168 & 0x7FFFFFFF), 0x85);
          v135 = *v31;
        }

        v169 = db_get_id_for_string(v135, "com.audible.aa-audiobook");
        if (v169 != -2)
        {
          CFDictionarySetValue(v33, (v169 & 0x7FFFFFFF), 0x86);
          v135 = *v31;
        }

        v170 = db_get_id_for_string(v135, "com.audible.aax-audiobook");
        if (v170 != -2)
        {
          CFDictionarySetValue(v33, (v170 & 0x7FFFFFFF), 0x87);
          v135 = *v31;
        }

        v171 = db_get_id_for_string(v135, "com.apple.tips");
        if (v171 != -2)
        {
          CFDictionarySetValue(v33, (v171 & 0x7FFFFFFF), 0x88);
          v135 = *v31;
        }

        v172 = db_get_id_for_string(v135, "com.apple.helpviewer");
        if (v172 != -2)
        {
          CFDictionarySetValue(v33, (v172 & 0x7FFFFFFF), 0x89);
          v135 = *v31;
        }

        v173 = db_get_id_for_string(v135, "com.apple.help.topic");
        if (v173 != -2)
        {
          CFDictionarySetValue(v33, (v173 & 0x7FFFFFFF), 0x8A);
        }

        *(a1 + 6608) = CFDictionaryCreateCopy(v32, v33);
        CFRelease(v33);
      }

      v174 = "kMDItemPhysicalSize";
    }

    *(a1 + 2012) = db_get_id_for_field(*(a1 + 1192), v174);
    id_for_field = db_get_id_for_field(*(a1 + 1192), "kMDItemWhereFroms");
  }

  else
  {
    if ((a2 & 0x100) != 0)
    {
      v315 = "_kMDItemStorageSize";
    }

    else
    {
      if (!*(a1 + 6608))
      {
        v175 = *v14;
        v176 = CFDictionaryCreateMutable(*v14, 0, 0, 0);
        id_for_value = db_create_id_for_value(*v31, "public.message");
        if (id_for_value != -2)
        {
          CFDictionarySetValue(v176, (id_for_value & 0x7FFFFFFF), 1);
        }

        v178 = db_create_id_for_value(*v31, "com.apple.mail.emlx");
        if (v178 != -2)
        {
          CFDictionarySetValue(v176, (v178 & 0x7FFFFFFF), 2);
        }

        v179 = db_create_id_for_value(*v31, "com.apple.mail.eml");
        if (v179 != -2)
        {
          CFDictionarySetValue(v176, (v179 & 0x7FFFFFFF), 3);
        }

        v180 = db_create_id_for_value(*v31, "com.microsoft.entourage.virtual.message");
        if (v180 != -2)
        {
          CFDictionarySetValue(v176, (v180 & 0x7FFFFFFF), 4);
        }

        v181 = db_create_id_for_value(*v31, "com.apple.ichat.transcript");
        if (v181 != -2)
        {
          CFDictionarySetValue(v176, (v181 & 0x7FFFFFFF), 5);
        }

        v182 = db_create_id_for_value(*v31, "public.contact");
        if (v182 != -2)
        {
          CFDictionarySetValue(v176, (v182 & 0x7FFFFFFF), 6);
        }

        v183 = db_create_id_for_value(*v31, "public.vcard");
        if (v183 != -2)
        {
          CFDictionarySetValue(v176, (v183 & 0x7FFFFFFF), 7);
        }

        v184 = db_create_id_for_value(*v31, "com.apple.addressbook.person");
        if (v184 != -2)
        {
          CFDictionarySetValue(v176, (v184 & 0x7FFFFFFF), 8);
        }

        v185 = db_create_id_for_value(*v31, "com.apple.addressbook.group");
        if (v185 != -2)
        {
          CFDictionarySetValue(v176, (v185 & 0x7FFFFFFF), 9);
        }

        v186 = db_create_id_for_value(*v31, "com.microsoft.entourage.virtual.contact");
        if (v186 != -2)
        {
          CFDictionarySetValue(v176, (v186 & 0x7FFFFFFF), 0xA);
        }

        v187 = db_create_id_for_value(*v31, "com.microsoft.entourage.virtual.group");
        if (v187 != -2)
        {
          CFDictionarySetValue(v176, (v187 & 0x7FFFFFFF), 0xB);
        }

        v188 = db_create_id_for_value(*v31, "com.apple.systempreference.prefpane");
        if (v188 != -2)
        {
          CFDictionarySetValue(v176, (v188 & 0x7FFFFFFF), 0xC);
        }

        v189 = db_create_id_for_value(*v31, "public.font");
        if (v189 != -2)
        {
          CFDictionarySetValue(v176, (v189 & 0x7FFFFFFF), 0xD);
        }

        v190 = db_create_id_for_value(*v31, "public.bookmark");
        if (v190 != -2)
        {
          CFDictionarySetValue(v176, (v190 & 0x7FFFFFFF), 0xE);
        }

        v191 = db_create_id_for_value(*v31, "com.apple.safari.bookmark");
        if (v191 != -2)
        {
          CFDictionarySetValue(v176, (v191 & 0x7FFFFFFF), 0xF);
        }

        v192 = db_create_id_for_value(*v31, "com.apple.safari.history");
        if (v192 != -2)
        {
          CFDictionarySetValue(v176, (v192 & 0x7FFFFFFF), 0x10);
        }

        v193 = db_create_id_for_value(*v31, "public.to-do-item");
        if (v193 != -2)
        {
          CFDictionarySetValue(v176, (v193 & 0x7FFFFFFF), 0x11);
        }

        v194 = db_create_id_for_value(*v31, "public.calendar-event");
        if (v194 != -2)
        {
          CFDictionarySetValue(v176, (v194 & 0x7FFFFFFF), 0x12);
        }

        v195 = db_create_id_for_value(*v31, "com.apple.ical.bookmark");
        if (v195 != -2)
        {
          CFDictionarySetValue(v176, (v195 & 0x7FFFFFFF), 0x13);
        }

        v196 = db_create_id_for_value(*v31, "com.apple.ical.bookmark.todo");
        if (v196 != -2)
        {
          CFDictionarySetValue(v176, (v196 & 0x7FFFFFFF), 0x14);
        }

        v197 = db_create_id_for_value(*v31, "com.apple.ical.ics.event");
        if (v197 != -2)
        {
          CFDictionarySetValue(v176, (v197 & 0x7FFFFFFF), 0x15);
        }

        v198 = db_create_id_for_value(*v31, "com.apple.ical.ics.todo");
        if (v198 != -2)
        {
          CFDictionarySetValue(v176, (v198 & 0x7FFFFFFF), 0x16);
        }

        v199 = db_create_id_for_value(*v31, "com.microsoft.entourage.virtual.event");
        if (v199 != -2)
        {
          CFDictionarySetValue(v176, (v199 & 0x7FFFFFFF), 0x17);
        }

        v200 = db_create_id_for_value(*v31, "com.microsoft.entourage.virtual.task");
        if (v200 != -2)
        {
          CFDictionarySetValue(v176, (v200 & 0x7FFFFFFF), 0x18);
        }

        v201 = db_create_id_for_value(*v31, "public.movie");
        if (v201 != -2)
        {
          CFDictionarySetValue(v176, (v201 & 0x7FFFFFFF), 0x19);
        }

        v202 = db_create_id_for_value(*v31, "com.apple.quicktime-movie");
        if (v202 != -2)
        {
          CFDictionarySetValue(v176, (v202 & 0x7FFFFFFF), 0x1A);
        }

        v203 = db_create_id_for_value(*v31, "public.mpeg-video");
        if (v203 != -2)
        {
          CFDictionarySetValue(v176, (v203 & 0x7FFFFFFF), 0x1B);
        }

        v204 = db_create_id_for_value(*v31, "public.mpeg-4");
        if (v204 != -2)
        {
          CFDictionarySetValue(v176, (v204 & 0x7FFFFFFF), 0x1C);
        }

        v205 = db_create_id_for_value(*v31, "public.mpeg");
        if (v205 != -2)
        {
          CFDictionarySetValue(v176, (v205 & 0x7FFFFFFF), 0x1D);
        }

        v206 = db_create_id_for_value(*v31, "public.3gpp");
        if (v206 != -2)
        {
          CFDictionarySetValue(v176, (v206 & 0x7FFFFFFF), 0x1E);
        }

        v207 = db_create_id_for_value(*v31, "public.3gpp2");
        if (v207 != -2)
        {
          CFDictionarySetValue(v176, (v207 & 0x7FFFFFFF), 0x1F);
        }

        v208 = db_create_id_for_value(*v31, "com.apple.application-bundle");
        if (v208 != -2)
        {
          CFDictionarySetValue(v176, (v208 & 0x7FFFFFFF), 0x20);
        }

        v209 = db_create_id_for_value(*v31, "com.apple.application-file");
        if (v209 != -2)
        {
          CFDictionarySetValue(v176, (v209 & 0x7FFFFFFF), 0x21);
        }

        v210 = db_create_id_for_value(*v31, "com.apple.dashboard-widget");
        if (v210 != -2)
        {
          CFDictionarySetValue(v176, (v210 & 0x7FFFFFFF), 0x22);
        }

        v211 = db_create_id_for_value(*v31, "public.folder");
        if (v211 != -2)
        {
          CFDictionarySetValue(v176, (v211 & 0x7FFFFFFF), 0x23);
        }

        v212 = db_create_id_for_value(*v31, "com.apple.mount-point");
        if (v212 != -2)
        {
          CFDictionarySetValue(v176, (v212 & 0x7FFFFFFF), 0x24);
        }

        v213 = db_create_id_for_value(*v31, "public.audio");
        if (v213 != -2)
        {
          CFDictionarySetValue(v176, (v213 & 0x7FFFFFFF), 0x25);
        }

        v214 = db_create_id_for_value(*v31, "public.mpeg-4-audio");
        if (v214 != -2)
        {
          CFDictionarySetValue(v176, (v214 & 0x7FFFFFFF), 0x26);
        }

        v215 = db_create_id_for_value(*v31, "com.apple.protected-mpeg-4-audio");
        if (v215 != -2)
        {
          CFDictionarySetValue(v176, (v215 & 0x7FFFFFFF), 0x27);
        }

        v216 = db_create_id_for_value(*v31, "com.adobe.pdf");
        if (v216 != -2)
        {
          CFDictionarySetValue(v176, (v216 & 0x7FFFFFFF), 0x28);
        }

        v217 = db_create_id_for_value(*v31, "com.apple.localized-pdf-bundle");
        if (v217 != -2)
        {
          CFDictionarySetValue(v176, (v217 & 0x7FFFFFFF), 0x29);
        }

        v218 = db_create_id_for_value(*v31, "public.presentation");
        if (v218 != -2)
        {
          CFDictionarySetValue(v176, (v218 & 0x7FFFFFFF), 0x2A);
        }

        v219 = db_create_id_for_value(*v31, "com.microsoft.powerpoint.ppt");
        if (v219 != -2)
        {
          CFDictionarySetValue(v176, (v219 & 0x7FFFFFFF), 0x2B);
        }

        v220 = db_create_id_for_value(*v31, "com.apple.keynote.key");
        if (v220 != -2)
        {
          CFDictionarySetValue(v176, (v220 & 0x7FFFFFFF), 0x2C);
        }

        v221 = db_create_id_for_value(*v31, "com.apple.iwork.keynote.key");
        if (v221 != -2)
        {
          CFDictionarySetValue(v176, (v221 & 0x7FFFFFFF), 0x2D);
        }

        v222 = db_create_id_for_value(*v31, "public.image");
        if (v222 != -2)
        {
          CFDictionarySetValue(v176, (v222 & 0x7FFFFFFF), 0x2E);
        }

        v223 = db_create_id_for_value(*v31, "com.apple.motion.project");
        if (v223 != -2)
        {
          CFDictionarySetValue(v176, (v223 & 0x7FFFFFFF), 0x2F);
        }

        v224 = db_create_id_for_value(*v31, "com.apple.iwork.pages.pages");
        if (v224 != -2)
        {
          CFDictionarySetValue(v176, (v224 & 0x7FFFFFFF), 0x30);
        }

        v225 = db_create_id_for_value(*v31, "com.apple.iwork.pages.sffpages");
        if (v225 != -2)
        {
          CFDictionarySetValue(v176, (v225 & 0x7FFFFFFF), 0x31);
        }

        v226 = db_create_id_for_value(*v31, "com.apple.iwork.pages.template");
        if (v226 != -2)
        {
          CFDictionarySetValue(v176, (v226 & 0x7FFFFFFF), 0x32);
        }

        v227 = db_create_id_for_value(*v31, "com.apple.iwork.pages.sfftemplate");
        if (v227 != -2)
        {
          CFDictionarySetValue(v176, (v227 & 0x7FFFFFFF), 0x33);
        }

        v228 = db_create_id_for_value(*v31, "public.rtf");
        if (v228 != -2)
        {
          CFDictionarySetValue(v176, (v228 & 0x7FFFFFFF), 0x34);
        }

        v229 = db_create_id_for_value(*v31, "com.apple.rtfd");
        if (v229 != -2)
        {
          CFDictionarySetValue(v176, (v229 & 0x7FFFFFFF), 0x35);
        }

        v230 = db_create_id_for_value(*v31, "com.apple.flat-rtfd");
        if (v230 != -2)
        {
          CFDictionarySetValue(v176, (v230 & 0x7FFFFFFF), 0x36);
        }

        v231 = db_create_id_for_value(*v31, "com.microsoft.word.doc");
        if (v231 != -2)
        {
          CFDictionarySetValue(v176, (v231 & 0x7FFFFFFF), 0x37);
        }

        v232 = db_create_id_for_value(*v31, "org.khronos.collada.digital-asset-exchange");
        if (v232 != -2)
        {
          CFDictionarySetValue(v176, (v232 & 0x7FFFFFFF), 0x38);
        }

        v233 = db_create_id_for_value(*v31, "public.plain-text");
        if (v233 != -2)
        {
          CFDictionarySetValue(v176, (v233 & 0x7FFFFFFF), 0x39);
        }

        v234 = db_create_id_for_value(*v31, "public.html");
        if (v234 != -2)
        {
          CFDictionarySetValue(v176, (v234 & 0x7FFFFFFF), 0x3A);
        }

        v235 = db_create_id_for_value(*v31, "public.xhtml");
        if (v235 != -2)
        {
          CFDictionarySetValue(v176, (v235 & 0x7FFFFFFF), 0x3B);
        }

        v236 = db_create_id_for_value(*v31, "public.shell-script");
        if (v236 != -2)
        {
          CFDictionarySetValue(v176, (v236 & 0x7FFFFFFF), 0x3C);
        }

        v237 = db_create_id_for_value(*v31, "public.source-code");
        if (v237 != -2)
        {
          CFDictionarySetValue(v176, (v237 & 0x7FFFFFFF), 0x3D);
        }

        v238 = db_create_id_for_value(*v31, "public.unix-executable");
        if (v238 != -2)
        {
          CFDictionarySetValue(v176, (v238 & 0x7FFFFFFF), 0x3E);
        }

        v239 = db_create_id_for_value(*v31, "com.apple.xcode.project");
        if (v239 != -2)
        {
          CFDictionarySetValue(v176, (v239 & 0x7FFFFFFF), 0x3F);
        }

        v240 = db_create_id_for_value(*v31, "com.apple.xcode.model");
        if (v240 != -2)
        {
          CFDictionarySetValue(v176, (v240 & 0x7FFFFFFF), 0x40);
        }

        v241 = db_create_id_for_value(*v31, "com.apple.xcode.archive");
        if (v241 != -2)
        {
          CFDictionarySetValue(v176, (v241 & 0x7FFFFFFF), 0x41);
        }

        v242 = db_create_id_for_value(*v31, "com.apple.xcode.docset");
        if (v242 != -2)
        {
          CFDictionarySetValue(v176, (v242 & 0x7FFFFFFF), 0x42);
        }

        v243 = db_create_id_for_value(*v31, "com.apple.xcode.projectdata");
        if (v243 != -2)
        {
          CFDictionarySetValue(v176, (v243 & 0x7FFFFFFF), 0x43);
        }

        v244 = db_create_id_for_value(*v31, "com.apple.xcode.dsym");
        if (v244 != -2)
        {
          CFDictionarySetValue(v176, (v244 & 0x7FFFFFFF), 0x44);
        }

        v245 = db_create_id_for_value(*v31, "com.apple.xcode.configsettings");
        if (v245 != -2)
        {
          CFDictionarySetValue(v176, (v245 & 0x7FFFFFFF), 0x45);
        }

        v246 = db_create_id_for_value(*v31, "com.apple.xcode.usersettings");
        if (v246 != -2)
        {
          CFDictionarySetValue(v176, (v246 & 0x7FFFFFFF), 0x46);
        }

        v247 = db_create_id_for_value(*v31, "com.apple.xcode.strings-text");
        if (v247 != -2)
        {
          CFDictionarySetValue(v176, (v247 & 0x7FFFFFFF), 0x47);
        }

        v248 = db_create_id_for_value(*v31, "com.apple.xcode.plugin");
        if (v248 != -2)
        {
          CFDictionarySetValue(v176, (v248 & 0x7FFFFFFF), 0x48);
        }

        v249 = db_create_id_for_value(*v31, "com.apple.xcode.mom");
        if (v249 != -2)
        {
          CFDictionarySetValue(v176, (v249 & 0x7FFFFFFF), 0x49);
        }

        v250 = db_create_id_for_value(*v31, "com.apple.property-list");
        if (v250 != -2)
        {
          CFDictionarySetValue(v176, (v250 & 0x7FFFFFFF), 0x4A);
        }

        v251 = db_create_id_for_value(*v31, "dyn.ah62d4rv4ge81a7dk");
        if (v251 != -2)
        {
          CFDictionarySetValue(v176, (v251 & 0x7FFFFFFF), 0x4B);
        }

        v252 = db_create_id_for_value(*v31, "dyn.ah62d4rv4ge80u5pbsa");
        if (v252 != -2)
        {
          CFDictionarySetValue(v176, (v252 & 0x7FFFFFFF), 0x4C);
        }

        v253 = db_create_id_for_value(*v31, "com.apple.dashcode.xml");
        if (v253 != -2)
        {
          CFDictionarySetValue(v176, (v253 & 0x7FFFFFFF), 0x4D);
        }

        v254 = db_create_id_for_value(*v31, "com.apple.dashcode.css");
        if (v254 != -2)
        {
          CFDictionarySetValue(v176, (v254 & 0x7FFFFFFF), 0x4E);
        }

        v255 = db_create_id_for_value(*v31, "com.apple.dashcode.javascript");
        if (v255 != -2)
        {
          CFDictionarySetValue(v176, (v255 & 0x7FFFFFFF), 0x4F);
        }

        v256 = db_create_id_for_value(*v31, "com.apple.dashcode.json");
        if (v256 != -2)
        {
          CFDictionarySetValue(v176, (v256 & 0x7FFFFFFF), 0x50);
        }

        v257 = db_create_id_for_value(*v31, "com.apple.dashcode.manifest");
        if (v257 != -2)
        {
          CFDictionarySetValue(v176, (v257 & 0x7FFFFFFF), 0x51);
        }

        v258 = db_create_id_for_value(*v31, "com.apple.interfacebuilder.document");
        if (v258 != -2)
        {
          CFDictionarySetValue(v176, (v258 & 0x7FFFFFFF), 0x52);
        }

        v259 = db_create_id_for_value(*v31, "com.apple.interfacebuilder.document.cocoa");
        if (v259 != -2)
        {
          CFDictionarySetValue(v176, (v259 & 0x7FFFFFFF), 0x53);
        }

        v260 = db_create_id_for_value(*v31, "com.apple.rez-source");
        if (v260 != -2)
        {
          CFDictionarySetValue(v176, (v260 & 0x7FFFFFFF), 0x54);
        }

        v261 = db_create_id_for_value(*v31, "com.apple.iphone.developerprofile");
        if (v261 != -2)
        {
          CFDictionarySetValue(v176, (v261 & 0x7FFFFFFF), 0x55);
        }

        v262 = db_create_id_for_value(*v31, "com.apple.iphone.mobileprovision");
        if (v262 != -2)
        {
          CFDictionarySetValue(v176, (v262 & 0x7FFFFFFF), 0x56);
        }

        v263 = db_create_id_for_value(*v31, "com.apple.coreanimation-bundle");
        if (v263 != -2)
        {
          CFDictionarySetValue(v176, (v263 & 0x7FFFFFFF), 0x57);
        }

        v264 = db_create_id_for_value(*v31, "com.apple.coreanimation-xml");
        if (v264 != -2)
        {
          CFDictionarySetValue(v176, (v264 & 0x7FFFFFFF), 0x58);
        }

        v265 = db_create_id_for_value(*v31, "com.sun.java-class");
        if (v265 != -2)
        {
          CFDictionarySetValue(v176, (v265 & 0x7FFFFFFF), 0x59);
        }

        v266 = db_create_id_for_value(*v31, "com.apple.scripting-definition");
        if (v266 != -2)
        {
          CFDictionarySetValue(v176, (v266 & 0x7FFFFFFF), 0x5A);
        }

        v267 = db_create_id_for_value(*v31, "com.apple.dt.document.workspace");
        if (v267 != -2)
        {
          CFDictionarySetValue(v176, (v267 & 0x7FFFFFFF), 0x5B);
        }

        v268 = db_create_id_for_value(*v31, "com.apple.dt.document.scheme");
        if (v268 != -2)
        {
          CFDictionarySetValue(v176, (v268 & 0x7FFFFFFF), 0x5C);
        }

        v269 = db_create_id_for_value(*v31, "com.apple.dt.ide.plug-in");
        if (v269 != -2)
        {
          CFDictionarySetValue(v176, (v269 & 0x7FFFFFFF), 0x5D);
        }

        v270 = db_create_id_for_value(*v31, "com.apple.dt.dvt.plug-in");
        if (v270 != -2)
        {
          CFDictionarySetValue(v176, (v270 & 0x7FFFFFFF), 0x5E);
        }

        v271 = db_create_id_for_value(*v31, "com.apple.dt.document.snapshot");
        if (v271 != -2)
        {
          CFDictionarySetValue(v176, (v271 & 0x7FFFFFFF), 0x5F);
        }

        v272 = db_create_id_for_value(*v31, "com.apple.dt.bundle.unit-test.objective-c");
        if (v272 != -2)
        {
          CFDictionarySetValue(v176, (v272 & 0x7FFFFFFF), 0x60);
        }

        v273 = db_create_id_for_value(*v31, "com.apple.instruments.tracetemplate");
        if (v273 != -2)
        {
          CFDictionarySetValue(v176, (v273 & 0x7FFFFFFF), 0x61);
        }

        v274 = db_create_id_for_value(*v31, "com.apple.quartzdebug.introspectiontrace");
        if (v274 != -2)
        {
          CFDictionarySetValue(v176, (v274 & 0x7FFFFFFF), 0x62);
        }

        v275 = db_create_id_for_value(*v31, "com.apple.applescript.text-object");
        if (v275 != -2)
        {
          CFDictionarySetValue(v176, (v275 & 0x7FFFFFFF), 0x63);
        }

        v276 = db_create_id_for_value(*v31, "com.apple.applescript.data-object");
        if (v276 != -2)
        {
          CFDictionarySetValue(v176, (v276 & 0x7FFFFFFF), 0x64);
        }

        v277 = db_create_id_for_value(*v31, "com.apple.applescript.url-object");
        if (v277 != -2)
        {
          CFDictionarySetValue(v176, (v277 & 0x7FFFFFFF), 0x65);
        }

        v278 = db_create_id_for_value(*v31, "com.apple.applescript.alias-object");
        if (v278 != -2)
        {
          CFDictionarySetValue(v176, (v278 & 0x7FFFFFFF), 0x66);
        }

        v279 = db_create_id_for_value(*v31, "com.apple.symbol-export");
        if (v279 != -2)
        {
          CFDictionarySetValue(v176, (v279 & 0x7FFFFFFF), 0x67);
        }

        v280 = db_create_id_for_value(*v31, "com.apple.mach-o-binary");
        if (v280 != -2)
        {
          CFDictionarySetValue(v176, (v280 & 0x7FFFFFFF), 0x68);
        }

        v281 = db_create_id_for_value(*v31, "com.apple.mach-o-object");
        if (v281 != -2)
        {
          CFDictionarySetValue(v176, (v281 & 0x7FFFFFFF), 0x69);
        }

        v282 = db_create_id_for_value(*v31, "com.apple.mach-o-executable");
        if (v282 != -2)
        {
          CFDictionarySetValue(v176, (v282 & 0x7FFFFFFF), 0x6A);
        }

        v283 = db_create_id_for_value(*v31, "com.apple.x11-mach-o-executable");
        if (v283 != -2)
        {
          CFDictionarySetValue(v176, (v283 & 0x7FFFFFFF), 0x6B);
        }

        v284 = db_create_id_for_value(*v31, "public.object-code");
        if (v284 != -2)
        {
          CFDictionarySetValue(v176, (v284 & 0x7FFFFFFF), 0x6C);
        }

        v285 = db_create_id_for_value(*v31, "com.microsoft.windows-executable");
        if (v285 != -2)
        {
          CFDictionarySetValue(v176, (v285 & 0x7FFFFFFF), 0x6D);
        }

        v286 = db_create_id_for_value(*v31, "com.microsoft.windows-dynamic-link-library");
        if (v286 != -2)
        {
          CFDictionarySetValue(v176, (v286 & 0x7FFFFFFF), 0x6E);
        }

        v287 = db_create_id_for_value(*v31, "com.sun.java-archive");
        if (v287 != -2)
        {
          CFDictionarySetValue(v176, (v287 & 0x7FFFFFFF), 0x6F);
        }

        v288 = db_create_id_for_value(*v31, "com.sun.web-application-archive");
        if (v288 != -2)
        {
          CFDictionarySetValue(v176, (v288 & 0x7FFFFFFF), 0x70);
        }

        v289 = db_create_id_for_value(*v31, "com.apple.xcode.plugindata");
        if (v289 != -2)
        {
          CFDictionarySetValue(v176, (v289 & 0x7FFFFFFF), 0x71);
        }

        v290 = db_create_id_for_value(*v31, "com.apple.dt.playground");
        if (v290 != -2)
        {
          CFDictionarySetValue(v176, (v290 & 0x7FFFFFFF), 0x72);
        }

        v291 = db_create_id_for_value(*v31, "com.apple.iwork.numbers.sffnumbers");
        if (v291 != -2)
        {
          CFDictionarySetValue(v176, (v291 & 0x7FFFFFFF), 0x73);
        }

        v292 = db_create_id_for_value(*v31, "com.apple.iwork.numbers.numbers");
        if (v292 != -2)
        {
          CFDictionarySetValue(v176, (v292 & 0x7FFFFFFF), 0x74);
        }

        v293 = db_create_id_for_value(*v31, "com.apple.iwork.numbers.template");
        if (v293 != -2)
        {
          CFDictionarySetValue(v176, (v293 & 0x7FFFFFFF), 0x75);
        }

        v294 = db_create_id_for_value(*v31, "com.microsoft.excel.xls");
        if (v294 != -2)
        {
          CFDictionarySetValue(v176, (v294 & 0x7FFFFFFF), 0x76);
        }

        v295 = db_create_id_for_value(*v31, "org.openxmlformats.spreadsheetml.sheet");
        if (v295 != -2)
        {
          CFDictionarySetValue(v176, (v295 & 0x7FFFFFFF), 0x77);
        }

        v296 = db_create_id_for_value(*v31, "public.spreadsheet");
        if (v296 != -2)
        {
          CFDictionarySetValue(v176, (v296 & 0x7FFFFFFF), 0x78);
        }

        v297 = db_create_id_for_value(*v31, "public.xml");
        if (v297 != -2)
        {
          CFDictionarySetValue(v176, (v297 & 0x7FFFFFFF), 0x79);
        }

        v298 = db_create_id_for_value(*v31, "com.apple.log");
        if (v298 != -2)
        {
          CFDictionarySetValue(v176, (v298 & 0x7FFFFFFF), 0x7A);
        }

        v299 = db_create_id_for_value(*v31, "com.apple.crashreport");
        if (v299 != -2)
        {
          CFDictionarySetValue(v176, (v299 & 0x7FFFFFFF), 0x7B);
        }

        v300 = db_create_id_for_value(*v31, "com.apple.spinreport");
        if (v300 != -2)
        {
          CFDictionarySetValue(v176, (v300 & 0x7FFFFFFF), 0x7C);
        }

        v301 = db_create_id_for_value(*v31, "com.apple.panicreport");
        if (v301 != -2)
        {
          CFDictionarySetValue(v176, (v301 & 0x7FFFFFFF), 0x7D);
        }

        v302 = db_create_id_for_value(*v31, "com.apple.shutdownstall");
        if (v302 != -2)
        {
          CFDictionarySetValue(v176, (v302 & 0x7FFFFFFF), 0x7E);
        }

        v303 = db_create_id_for_value(*v31, "com.apple.hangreport");
        if (v303 != -2)
        {
          CFDictionarySetValue(v176, (v303 & 0x7FFFFFFF), 0x7F);
        }

        v304 = db_create_id_for_value(*v31, "public.json");
        if (v304 != -2)
        {
          CFDictionarySetValue(v176, (v304 & 0x7FFFFFFF), 0x80);
        }

        v305 = db_create_id_for_value(*v31, "public.log");
        if (v305 != -2)
        {
          CFDictionarySetValue(v176, (v305 & 0x7FFFFFFF), 0x81);
        }

        v306 = db_create_id_for_value(*v31, "public.content");
        if (v306 != -2)
        {
          CFDictionarySetValue(v176, (v306 & 0x7FFFFFFF), 0x82);
        }

        v307 = db_create_id_for_value(*v31, "com.microsoft.excel.sheet.binary.macroenabled");
        if (v307 != -2)
        {
          CFDictionarySetValue(v176, (v307 & 0x7FFFFFFF), 0x83);
        }

        v308 = db_create_id_for_value(*v31, "org.openxmlformats.spreadsheetml.sheet.macroenabled");
        if (v308 != -2)
        {
          CFDictionarySetValue(v176, (v308 & 0x7FFFFFFF), 0x84);
        }

        v309 = db_create_id_for_value(*v31, "com.apple.protected-mpeg-4-audio-b");
        if (v309 != -2)
        {
          CFDictionarySetValue(v176, (v309 & 0x7FFFFFFF), 0x85);
        }

        v310 = db_create_id_for_value(*v31, "com.audible.aa-audiobook");
        if (v310 != -2)
        {
          CFDictionarySetValue(v176, (v310 & 0x7FFFFFFF), 0x86);
        }

        v311 = db_create_id_for_value(*v31, "com.audible.aax-audiobook");
        if (v311 != -2)
        {
          CFDictionarySetValue(v176, (v311 & 0x7FFFFFFF), 0x87);
        }

        v312 = db_create_id_for_value(*v31, "com.apple.tips");
        if (v312 != -2)
        {
          CFDictionarySetValue(v176, (v312 & 0x7FFFFFFF), 0x88);
        }

        v313 = db_create_id_for_value(*v31, "com.apple.helpviewer");
        if (v313 != -2)
        {
          CFDictionarySetValue(v176, (v313 & 0x7FFFFFFF), 0x89);
        }

        v314 = db_create_id_for_value(*v31, "com.apple.help.topic");
        if (v314 != -2)
        {
          CFDictionarySetValue(v176, (v314 & 0x7FFFFFFF), 0x8A);
        }

        *(a1 + 6608) = CFDictionaryCreateCopy(v175, v176);
        CFRelease(v176);
      }

      v315 = "kMDItemPhysicalSize";
    }

    *(a1 + 2012) = db_create_id_for_field(*(a1 + 1192), v315, 0x300u, 7);
    id_for_field = db_create_id_for_field(*(a1 + 1192), "kMDItemWhereFroms", 0x220u, 11);
  }

  *(a1 + 2028) = id_for_field;
  v317 = *(a1 + 1192);
  if (*v317 != 1685287992)
  {
    v343 = *__error();
    v344 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v344, OS_LOG_TYPE_ERROR))
    {
      v345 = *v317;
      *buf = 136315650;
      v368 = "db_create_static_strings";
      v369 = 1024;
      v370 = 436;
      v371 = 1024;
      v372 = v345;
      _os_log_error_impl(&dword_1C278D000, v344, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v343;
    v346 = __si_assert_copy_extra_332();
    v336 = v346;
    v347 = "";
    if (v346)
    {
      v347 = v346;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 436, v347);
    goto LABEL_631;
  }

  v318 = v317[201];
  *buf = 18959;
  v317[234] = _get_id_for_string(v317, 0, "kMDItemLanguages", 16, ((v318 >> 3) & 1) == 0, buf);
  v319 = v317[201];
  if ((v319 & 4) != 0)
  {
    v320 = 17167;
  }

  else
  {
    v320 = -15601;
  }

  *buf = v320;
  v317[235] = _get_id_for_string(v317, 0, "kMDItemKind", 11, ((v319 >> 3) & 1) == 0, buf);
  v321 = v317[201];
  if ((v321 & 4) != 0)
  {
    v322 = 17163;
  }

  else
  {
    v322 = -15605;
  }

  *buf = v322;
  v317[236] = _get_id_for_string(v317, 0, "kMDItemDisplayName", 18, ((v321 >> 3) & 1) == 0, buf);
  v323 = v317[201];
  if ((v323 & 4) != 0)
  {
    v324 = 779;
  }

  else
  {
    v324 = -31989;
  }

  *buf = v324;
  v317[237] = _get_id_for_string(v317, 0, "kMDItemKeywords", 15, ((v323 >> 3) & 1) == 0, buf);
  v325 = v317[201];
  if ((v325 & 4) != 0)
  {
    v326 = 779;
  }

  else
  {
    v326 = -31989;
  }

  *buf = v326;
  v317[238] = _get_id_for_string(v317, 0, "com_apple_system_prefs_keywords", 31, ((v325 >> 3) & 1) == 0, buf);
  v327 = v317[201];
  if ((v327 & 4) != 0)
  {
    v328 = 783;
  }

  else
  {
    v328 = -31985;
  }

  *buf = v328;
  v317[239] = _get_id_for_string(v317, 0, "kMDItemKeywords", 15, ((v327 >> 3) & 1) == 0, buf);
  v329 = v317[201];
  if ((v329 & 4) != 0)
  {
    v330 = 783;
  }

  else
  {
    v330 = -31985;
  }

  *buf = v330;
  v317[240] = _get_id_for_string(v317, 0, "com_apple_system_prefs_keywords", 31, ((v329 >> 3) & 1) == 0, buf);
  *(a1 + 2016) = db_create_id_for_field(*(a1 + 1192), "kMDItemDisplayName", 0x12A0u, 11);
  *(a1 + 2020) = db_create_id_for_field(*(a1 + 1192), "kMDItemLanguages", 0x330u, 11);
  *(a1 + 2036) = db_create_id_for_field(*(a1 + 1192), "kMDItemRecipientEmailAddresses", 0x220u, 11);
  *(a1 + 2040) = db_create_id_for_field(*(a1 + 1192), "kMDItemPrimaryRecipientEmailAddresses", 0x4320u, 11);
  *(a1 + 2044) = db_create_id_for_field(*(a1 + 1192), "kMDItemAdditionalRecipientEmailAddresses", 0x4320u, 11);
  *(a1 + 2048) = db_create_id_for_field(*(a1 + 1192), "kMDItemHiddenAdditionalRecipientEmailAddresses", 0x4320u, 11);
  *(a1 + 2052) = db_create_id_for_field(*(a1 + 1192), "_kMDItemDisplayNameWithExtensions", 0x228u, 11);
  v331 = threadData[9 * v362 + 1] + 320 * v361;
  *(v331 + 312) = v348;
  v332 = *(v331 + 232);
  if (v332)
  {
    v332(*(v331 + 288));
  }

  dropThreadId(v362, 0, v349 + 1);
  v14 = MEMORY[0x1E695E480];
LABEL_617:
  v333 = *v14;
  *(a1 + 1800) = CFBagCreateMutable(*v14, 64, MEMORY[0x1E695E9D0]);
  *(a1 + 1808) = CFDictionaryCreateMutable(v333, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  return pthread_mutex_init((a1 + 1816), 0);
}