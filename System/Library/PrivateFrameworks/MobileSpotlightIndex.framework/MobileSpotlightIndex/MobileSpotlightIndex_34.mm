uint64_t __scan_lost_ids_on_queue_block_invoke(uint64_t result, int a2)
{
  if (!a2)
  {
    return scan_lost_ids(*(result + 32), *(result + 40));
  }

  return result;
}

uint64_t SIGetAttributes(uint64_t a1, unint64_t a2, uint64_t a3, const __CFArray *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  v24 = 0;
  SIFlattenArrayToCStringVector(a4, &v26, &v25, &v24);
  Mutable = _MDPlistBytesCreateMutable();
  _MDPlistBytesBeginPlist();
  _MDPlistBytesBeginArray();
  v8 = v26;
  v9 = v24;
  _MDPlistBytesAddNull();
  v10 = *(a1 + 1192);
  if (v10)
  {
    v29 = 0;
    if (v9 < 1 || db_get_obj(v10, a2, &v29, 0))
    {
      if (dword_1EBF46AE0 >= 5)
      {
        v21 = *__error();
        v22 = _SILogForLogForCategory(5);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v31 = a2;
          _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "No dbo for %llx", buf, 0xCu);
        }

        *__error() = v21;
      }

      _MDPlistBytesAddNull();
    }

    else
    {
      _MDPlistBytesBeginArray();
      v11 = v8;
      do
      {
        v27 = 0;
        v28 = 0;
        if (db_get_field(v10, v29, *v11, &v28, &v27))
        {
          v13 = *v11;
          v14 = strlen(*v11);
          v15 = CannedFieldTable::in_word_set(*v11, v14);
          if (!v15 || ((v15[1])(a1, v13, a3, a2, v29, 0, 0, 0, &__block_literal_global_94, Mutable) & 1) == 0)
          {
            if (dword_1EBF46AE0 >= 5)
            {
              v23 = *__error();
              v17 = _SILogForLogForCategory(5);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = *v11;
                *buf = 136315394;
                v31 = v18;
                v32 = 2048;
                v33 = a2;
                _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "No attribute %s for %llx", buf, 0x16u);
              }

              *__error() = v23;
            }

            _MDPlistBytesAddNull();
          }
        }

        else
        {
          if (a3)
          {
            v16 = *(a3 + 120);
          }

          else
          {
            v16 = 0;
          }

          MDPlistBytesAddSDBFieldLocalized(Mutable, v10, v28, v27, v16, 0, 1, 0, v12);
        }

        ++v11;
        --v9;
      }

      while (v9);
      _MDPlistBytesEndArray();
      free(v29);
    }
  }

  _MDPlistBytesEndArray();
  _MDPlistBytesEndPlist();
  v19 = _MDPlistBytesCopyPlistAtIndex();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  free(v8);
  return v19;
}

os_signpost_id_t SIExecuteQueryWithResultsCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  values = a5;
  v8 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, 0);
  v9 = SIExecuteQueryWithResultsCallbackForTags(a1, a2, a3, 0, v8);
  CFRelease(v8);
  return v9;
}

char *SIBulkGetAttributeNames(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = malloc_type_calloc(1uLL, 0x70uLL, 0x10200408DCF1539uLL);
  atomic_store(2u, v13);
  pthread_mutex_init((v13 + 48), 0);
  *(v13 + 8) = 3;
  v14 = malloc_type_calloc(1uLL, 0x38uLL, 0x1030040115CFCBFuLL);
  *v14 = a1;
  atomic_fetch_add((a5 + 8), 1u);
  v14[3] = a5;
  v14[4] = v13;
  if (a4)
  {
    v15 = CFRetain(a4);
  }

  else
  {
    v15 = 0;
  }

  v14[5] = v15;
  v14[1] = a2;
  v14[2] = a3;
  if ((a7 & 0x100000) == 0)
  {
    if ((a7 & 0x400000) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    *(v14 + 48) |= 2u;
    if ((a7 & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(v14 + 48) |= 4u;
  if ((a7 & 0x400000) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((a7 & 0x200000) != 0)
  {
LABEL_7:
    *(v14 + 48) |= 1u;
  }

LABEL_8:
  Log = _MDPerf_QueryLog();
  if ((v13 + 1) >= 2)
  {
    v18 = Log;
    if (os_signpost_enabled(Log))
    {
      v19 = qos_class_self();
      v20 = *(v13 + 8);
      v21 = 134218496;
      v22 = 0;
      v23 = 1024;
      v24 = v19;
      v25 = 1024;
      v26 = v20;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v13, "Job", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x JobType=%{signpost.description:attribute}d", &v21, 0x18u);
    }
  }

  si_enqueue_routine(a1, v13, si_getAttrNamesBulk, v14, 0xAu);
  return v13;
}

char *SIBulkGetAttributes(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v41 = *MEMORY[0x1E69E9840];
  v16 = malloc_type_calloc(1uLL, 0x70uLL, 0x10200408DCF1539uLL);
  atomic_store(2u, v16);
  pthread_mutex_init((v16 + 48), 0);
  *(v16 + 8) = 2;
  v17 = malloc_type_calloc(1uLL, 0x48uLL, 0x10700402C59DD4BuLL);
  *v17 = a1;
  *(v17 + 1) = CFRetain(a5);
  atomic_fetch_add((a6 + 8), 1u);
  *(v17 + 4) = a6;
  *(v17 + 5) = v16;
  if (a4)
  {
    v18 = CFRetain(a4);
  }

  else
  {
    v18 = 0;
  }

  *(v17 + 6) = v18;
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 7) = CFAbsoluteTimeGetCurrent();
  v19 = *(v17 + 64) & 0xF7;
  if ((a8 & 0x100000) != 0)
  {
    v19 = *(v17 + 64) & 0xF3 | 4;
  }

  *(v17 + 64) = v19 | (a8 >> 21) & 3;
  if (*(a1 + 1284) == 102)
  {
    v20 = si_attrs_remapping_copy(*(v17 + 1), (*(a1 + 6584) >> 6) & 1);
    if (v20)
    {
      v21 = v20;
      CFRelease(*(v17 + 1));
      *(v17 + 1) = v21;
    }
  }

  v22 = a3 != 0;
  if (a3)
  {
    v23 = a3 - 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = a2 + 8 * v22;
  Log = _MDPerf_QueryLog();
  if ((v16 + 1) >= 2)
  {
    v32 = Log;
    if (os_signpost_enabled(Log))
    {
      v33 = qos_class_self();
      v34 = *(v16 + 8);
      v35 = 134218496;
      v36 = 0;
      v37 = 1024;
      v38 = v33;
      v39 = 1024;
      v40 = v34;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Job", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x JobType=%{signpost.description:attribute}d", &v35, 0x18u);
    }
  }

  pthread_mutex_lock((a1 + 1320));
  v26 = *(a1 + 1152);
  if (v26 && si_peek_queue(v26, a7, v24, v23))
  {
    si_enqueue_barrier_routine(a1, v16, si_enqueue_getAttrBulk, v17, 0x12u);
    pthread_mutex_unlock((a1 + 1320));
  }

  else
  {
    pthread_mutex_unlock((a1 + 1320));
    v27 = *(a1 + 1048);
    if (!v27 || !si_peek_queue(v27, a7, v24, v23))
    {
      si_enqueue_routine(a1, v16, si_getAttrBulk, v17, 0xAu);
      return v16;
    }

    si_enqueue_barrier_routine(a1, v16, si_enqueue_getAttrBulk, v17, 5u);
  }

  v28 = *__error();
  v29 = _SILogForLogForCategory(0);
  v30 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v29, v30))
  {
    LOWORD(v35) = 0;
    _os_log_impl(&dword_1C278D000, v29, v30, "Stalled getAttr because task had pending sets", &v35, 2u);
  }

  *__error() = v28;
  return v16;
}

void si_enqueue_getAttrBulk(uint64_t *a1, int a2)
{
  if (a2)
  {
    si_getAttrBulk(a1, a2);
  }

  else
  {
    si_enqueue_routine(*a1, a1[5], si_getAttrBulk, a1, 0xAu);
  }
}

void SIPreHeatIndex(uint64_t result, const void *a2)
{
  if (result)
  {
    _SIPreHeatIndex(result, a2, 0);
  }
}

void _SIStartPreheatScheduler(int *result)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(result + 306))
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(3);
    v4 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(result + 112);
      v6 = 134217984;
      v7 = v5;
      _os_log_impl(&dword_1C278D000, v3, v4, "_SIStartPreheatScheduler for %p", &v6, 0xCu);
    }

    *__error() = v2;
    awakenPreheat(result);
  }
}

int *SIInitialIndexingStarted(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(v11, 0x400uLL);
  *(a1 + 2436) = 1;
  v2 = *__error();
  v3 = _SILogForLogForCategory(0);
  v4 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = fcntl(*(a1 + 48), 50, v11);
    if (v11[0])
    {
      v6 = v5 < 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v11;
    }

    *buf = 136315138;
    v10 = v7;
    _os_log_impl(&dword_1C278D000, v3, v4, "Started initial indexing of %s", buf, 0xCu);
  }

  result = __error();
  *result = v2;
  return result;
}

uint64_t SIGetMaxTransactionID(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  makeThreadId();
  if (a1 && *(a1 + 1048))
  {
    v2 = 0;
    v34 = 0;
    if (!fd_setDir(*(a1 + 32), &v34))
    {
      return v2;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v4 = setThreadIdAndInfo(*(a1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
    v33 = v4;
    v5 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
    v31 = v6;
    v32 = HIDWORD(v4);
    v30 = v7;
    *(v5 + 216) = 0;
    v8 = *(v5 + 312);
    v9 = *(v5 + 224);
    if (v9)
    {
      v9(*(v5 + 288));
    }

    if (_setjmp(v5))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v5 + 312) = v8;
      CIOnThreadCleanUpReset(v30);
      dropThreadId(v33, 1, add_explicit + 1);
      CICleanUpReset(v33, v31);
      v2 = 0;
LABEL_26:
      v26 = v34;
      MEMORY[0x1C6921200](v34);
      if ((v26 & 0x80000000) == 0)
      {
        close(v26);
      }

      return v2;
    }

    v14 = *(a1 + 1392);
    if (!v14 || !*v14 || (v15 = *(a1 + 1384)) == 0 || (v16 = *v15) == 0)
    {
      v20 = *__error();
      v21 = _SILogForLogForCategory(0);
      v22 = gSILogLevels[0] < 3;
      if (os_log_type_enabled(v21, (gSILogLevels[0] < 3)))
      {
        *buf = 136315138;
        v36 = "int32_t SIGetMaxTransactionID(SIRef)";
        _os_log_impl(&dword_1C278D000, v21, v22, "*warn* %s called on fs-only index", buf, 0xCu);
      }

      *__error() = v20;
      v23 = 0;
      goto LABEL_23;
    }

    v17 = *(v15 + 2);
    if (v17)
    {
      v18 = *(v15 + 2);
      if (*(v16 + 8 * (v17 - 1)))
      {
        v19 = *(v15 + 2);
LABEL_33:
        if (v18 != 1 || *(*v16 + 80))
        {
          v23 = *(*(v16 + 8 * (v19 - 1)) + 40);
LABEL_23:
          v24 = threadData[9 * v33 + 1] + 320 * v32;
          *(v24 + 312) = v8;
          v25 = *(v24 + 232);
          if (v25)
          {
            v25(*(v24 + 288));
          }

          dropThreadId(v33, 0, add_explicit + 1);
          v2 = v23;
          goto LABEL_26;
        }
      }

      else
      {
        v27 = *(v15 + 2);
        while (v27 != 1)
        {
          v28 = *(v16 + 8 * (v27 - 2));
          v29 = --v27;
          if (v28)
          {
            v18 = v29;
            *(v15 + 2) = v29;
            v19 = v29;
            goto LABEL_33;
          }
        }

        *(v15 + 2) = 0;
      }
    }

    v23 = 1;
    goto LABEL_23;
  }

  v10 = *__error();
  v11 = _SILogForLogForCategory(0);
  v12 = gSILogLevels[0] < 3;
  if (os_log_type_enabled(v11, (gSILogLevels[0] < 3)))
  {
    *buf = 136315394;
    v36 = "int32_t SIGetMaxTransactionID(SIRef)";
    v37 = 2048;
    v38 = a1;
    _os_log_impl(&dword_1C278D000, v11, v12, "*warn* %s called on fs-only or null index %p", buf, 0x16u);
  }

  *__error() = v10;
  return 0;
}

uint64_t SISetTransactionCount(uint64_t a1, int a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  makeThreadId();
  if (*(a1 + 1064) && *(a1 + 1048))
  {
    if (a2 == -1)
    {
      *(a1 + 6876) = 1;
    }

    else
    {
      v6 = *(a1 + 6876);
      if (v6 >= a2)
      {
        v6 = a2;
      }

      *(a1 + 6876) = v6;
      if (a2 == 1)
      {
        if (a3 && *(a1 + 6880))
        {
          *(a1 + 6893) = 1;
        }

        if (*(*(a1 + 1392) + 8) == 1 && *(*(a1 + 1384) + 8) == 1)
        {
          v7 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
          *v7 = a1;
          v7[1] = a3;
          v8 = *(a1 + 1064);
          v9 = si_set_transactioncount_0;
LABEL_29:
          si_enqueue_work(v8, v9, v7);
        }
      }

      else if (a2 >= 2)
      {
        v10 = *(a1 + 1384);
        v11 = *(v10 + 8);
        if (v11 == 1)
        {
          v12 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
          *v12 = a1;
          v12[1] = a3;
          si_enqueue_work(*(a1 + 1064), si_set_transactioncount_0, v12);
          v11 = *(v10 + 8);
        }

        if (v11)
        {
          v13 = 0;
          while (1)
          {
            v14 = *(*(*v10 + 8 * v13) + 40);
            if (v14 == a2)
            {
              break;
            }

            if (v14 > a2)
            {
              return 0xFFFFFFFFLL;
            }

            if (v11 == ++v13)
            {
              goto LABEL_27;
            }
          }

          if (v11 - 1 > v13)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_27:
          if (*(a1 + 1064))
          {
            v17 = v14 == a2;
            v7 = malloc_type_malloc(0x20uLL, 0x102004077D6F10EuLL);
            *(v7 + 8) = v17;
            v7[2] = a3;
            *v7 = a1;
            *(v7 + 6) = a2;
            v8 = *(a1 + 1064);
            v9 = si_prepareForTransaction;
            goto LABEL_29;
          }

          v19 = *__error();
          v20 = _SILogForLogForCategory(0);
          v21 = 2 * (gSILogLevels[0] < 4);
          if (os_log_type_enabled(v20, v21))
          {
            LOWORD(v22) = 0;
            _os_log_impl(&dword_1C278D000, v20, v21, "Not supported for read only index", &v22, 2u);
          }

          *__error() = v19;
        }

        else
        {
          v15 = *__error();
          v16 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v22 = 136315394;
            v23 = "SISetTransactionCount";
            v24 = 1024;
            v25 = 22220;
            _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: No live index", &v22, 0x12u);
          }

          *__error() = v15;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void si_prepareForTransaction(int *a1, int a2)
{
  if (!a2)
  {
    v3 = *a1;
    v4 = *(*a1 + 1384);
    v5 = count_IndexSetForWriting(v4, *(v4 + 8) - 1);
    v6 = *(*v4 + 8 * (*(v4 + 8) - 1));
    if (v5 < 0xF)
    {
      if ((*(v6 + 44) & 1) == 0)
      {
        v7 = ContentIndexListClone(v4);
        if ((a1[2] & 1) == 0 && prepareForTransaction(v3, v7, 0, a1[6]) || prepareForTransaction(v3, v7, *(a1 + 2), a1[6] + 1))
        {
          ContentIndexListFree(v7);
        }

        else
        {
          si_swapIndexSet(v3, v4, v7, (v3 + 1384), v8, v9, v10, v11);
        }
      }
    }

    else
    {
      ContentIndexSetEmergency(v6, 1);
    }
  }

  free(a1);
}

uint64_t prepareForTransaction(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v52 = *MEMORY[0x1E69E9840];
  memset(__str, 0, 255);
  snprintf(__str, 0xFFuLL, "live.%d.", *(a2 + 8));
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
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 0x40000000;
  v38[2] = __prepareForTransaction_block_invoke;
  v38[3] = &__block_descriptor_tmp_1936;
  v38[4] = a1;
  v12 = *(a1 + 32);
  v13 = *(*a2 + 8 * (*(a2 + 8) - 1));
  v14 = *(v13 + 68);
  v15 = *(v13 + 80);
  if (v14 >= 2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = a3 + 1025;
  v18 = a3 + 1025 + v15;
  v19 = *(a1 + 1284);
  v20 = *(a1 + 1192);
  if (v20)
  {
    vector_store = db_get_vector_store(v20);
  }

  else
  {
    vector_store = 0;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 0x40000000;
  v37[2] = __prepareForTransaction_block_invoke_2;
  v37[3] = &__block_descriptor_tmp_1937;
  v37[4] = a1;
  v22 = v18 + v16;
  v23 = a4;
  New = ContentIndexCreateNew(v12, @"tmp.", v22, a4, v10 | v11, 1, v19, vector_store, v37, v38, *(a1 + 60));
  v36 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = __prepareForTransaction_block_invoke_3;
  aBlock[3] = &__block_descriptor_tmp_1938;
  aBlock[4] = a1;
  aBlock[5] = New;
  ContentIndexSetDirtyCallback(New, aBlock);
  *(New + 15201) = 4;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  __buf = 0u;
  v46 = 0u;
  ContentIndexSyncIndex(New, &__buf, &v36);
  bzero(&__buf + 8, 0x208uLL);
  *&__buf = 0x6D6F76650A00;
  DWORD2(__buf) = 2;
  BYTE12(__buf) = 1;
  LODWORD(v46) = *(a2 + 8);
  HIDWORD(v46) = 1;
  ContentIndexListAppend(a2, New);
  si_clone_index_metadata_to_inflight(v25);
  __strlcpy_chk(&v50, (New + 15208), 255, 255);
  v26 = si_openat_protected(*(a1 + 32), "tmp.movePlan", 1538, 3);
  pwrite(v26, &__buf, 0x210uLL, 0);
  fcntl(v26, 85);
  ContentIndexChangePrefix(v27);
  unlinkat(*(a1 + 32), "tmp.movePlan", 2048);
  close(v26);
  v28 = *(*a2 + 8 * (*(a2 + 8) - 1));
  v29 = v28[17];
  if (v29 < 2)
  {
    v29 = 0;
  }

  _ContentIndexSetPayloadMaxCount(v28, v17 + v28[20] + v29, 22097);
  v30 = *__error();
  v31 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v40 = "prepareForTransaction";
    v41 = 1024;
    v42 = 22101;
    v43 = 1024;
    v44 = v23;
    _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: Prepare for transaction %d", buf, 0x18u);
  }

  *__error() = v30;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 0x40000000;
  v34[2] = __prepareForTransaction_block_invoke_1939;
  v34[3] = &__block_descriptor_tmp_1940;
  v34[4] = a1;
  v34[5] = New;
  ContentIndexSetDirtyCallback(New, v34);
  *(New + 15201) = 4;
  return 0;
}

void delayed_op_prop2(uint64_t a1, int a2)
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
      v3 = delayed_op_prop3;
    }

    v4 = *(*(a1 + 8) + 1040);

    si_enqueue_work_for_job(v4, v3, a1, 0);
  }
}

void delayed_op_prop3(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(a1 + 16))(*a1);

    free(a1);
  }

  else
  {
    if (*(a1 + 24) == 4)
    {
      v3 = delayed_op_final;
    }

    else
    {
      v3 = delayed_op_prop4;
    }

    v4 = *(*(a1 + 8) + 1064);

    si_enqueue_work_for_job(v4, v3, a1, 0);
  }
}

void delayed_op_prop4(void *a1, int a2)
{
  if (!a2 && (v3 = a1[1], (*(v3 + 6584) & 0x10) != 0))
  {
    v4 = *(v3 + 1096);

    si_enqueue_work_for_job(v4, delayed_op_final, a1, 0);
  }

  else
  {
    (a1[2])(*a1);

    free(a1);
  }
}

void _SIScheduleDiskOperation(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = *(a1 + 1080);
  if (a2)
  {
    si_enqueue_work_with_qos(v4, a2, a3, a4);
  }

  else
  {
    si_enqueue_work(v4, a3, a4);
  }
}

void _SIScheduleOperation(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = *(a1 + 1112);
  if (a2)
  {
    si_enqueue_work_with_qos(v4, a2, a3, a4);
  }

  else
  {
    si_enqueue_work(v4, a3, a4);
  }
}

void _SIScheduleOperationPostIndexUpdate(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, int a5)
{
  if (a1)
  {
    if (a5)
    {
      v5 = 18;
      if (!*(a1 + 1152))
      {
        v5 = 5;
      }
    }

    else
    {
      v5 = 5;
    }

    v6 = *(a1 + 8 * v5 + 1008);
    if (v6)
    {
      if (a2)
      {
        si_enqueue_barrier_with_qos(v6, a2, a3, a4);
      }

      else
      {
        si_enqueue_barrier(v6, a3, a4);
      }
    }
  }
}

void _SIIssueMerge(void *a1, int a2)
{
  if (a1[130])
  {
    v4 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
    v5 = v4;
    *v4 = a1;
    v4[16] = a2 != 0;
    *(v4 + 1041) = 0;
    *(v4 + 131) = "void _SIIssueMerge(SIRef, int)";
    *(v4 + 274) = 4;
    if (a2)
    {
      __strlcpy_chk((v4 + 17), "live.%d.", 1024, 1024);
    }

    else
    {
      __strlcpy_chk((v4 + 17), "%d.", 1024, 1024);
    }

    if (!*(v5 + 1088) && !*(v5 + 1064))
    {
      v7 = a1[295];
      if (v7)
      {
        v8 = *(v7 + 64);
        if (v8)
        {
          *(v5 + 1064) = v8(*(v7 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 23142, "void _SIIssueMerge(SIRef, int)");
        }
      }
    }

    v6 = a1[145];

    si_enqueue_barrier_with_qos(v6, 5, _SIContinueIssueMerge0, v5);
  }
}

void _SIIssueCompact(uint64_t a1, int a2)
{
  if (*(a1 + 1040))
  {
    compactReadOnlyIndexes(a1, a2 != 0);
  }
}

void si_merge_for_badness(uint64_t a1, char a2)
{
  if (*(a1 + 1160))
  {
    if ((a2 & 1) != 0 || (*(a1 + 2457) & 1) != 0 || (v4 = *(a1 + 2360), (v5 = *(v4 + 80)) == 0))
    {
      v7 = malloc_type_malloc(0x20uLL, 0x102004092C98459uLL);
      *v7 = a1;
      v7[1] = 0;
      *(v7 + 16) = a2;
      v7[3] = 0;
      v8 = *(a1 + 1160);

      si_enqueue_barrier_with_qos(v8, 5, _si_merge_for_badness_on_hold_queue, v7);
    }

    else
    {
      *(a1 + 2457) = 1;
      v6 = *(v4 + 144);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 0x40000000;
      v9[2] = __si_merge_for_badness_block_invoke;
      v9[3] = &__block_descriptor_tmp_581;
      v9[4] = a1;
      v5(v6, 0, @"MergeForBadness", v9);
    }
  }
}

void __si_merge_for_badness_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (a2 && *(a2 + 2457) == 1)
  {
    *(a2 + 2457) = 0;
    v16 = -1;
    v8 = *(*(a1 + 32) + 32);
    v9 = v8 == -1 || (fd_setDir(v8, &v16) & 1) == 0;
    v10 = *__error();
    v11 = _SILogForLogForCategory(12);
    v12 = 2 * (dword_1EBF46AFC < 4);
    if (os_log_type_enabled(v11, v12))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C278D000, v11, v12, "MergeForBadness started", v15, 2u);
    }

    *__error() = v10;
    if (!v9)
    {
      v13 = v16;
      MEMORY[0x1C6921200](v16);
      if ((v13 & 0x80000000) == 0)
      {
        close(v13);
      }
    }

    v14 = malloc_type_malloc(0x20uLL, 0x102004092C98459uLL);
    *v14 = a2;
    v14[1] = a5;
    *(v14 + 16) = 0;
    dispatch_retain(a5);
    dispatch_group_enter(a5);
    v14[3] = 0;
    si_enqueue_barrier_with_qos(*(*(a1 + 32) + 1160), 5, _si_merge_for_badness_on_hold_queue, v14);
  }
}

void _si_merge_for_badness_on_hold_queue(unsigned int **a1, int a2)
{
  if (a2)
  {
    si_merge_for_badness_ctx_free(a1);
  }

  else
  {
    si_scheduler_async_suspend_and_enqueue(*(*a1 + 109), *(*a1 + 130), _si_merge_for_badness_on_flush_queue, a1, a1 + 3);
  }
}

void si_merge_for_badness_ctx_free(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      si_scheduler_resume_with_token(v2);
    }

    v3 = *(a1 + 1);
    if (v3)
    {
      dispatch_group_leave(v3);
      dispatch_release(*(a1 + 1));
    }

    free(a1);
  }
}

void _si_merge_for_badness_on_flush_queue(uint64_t *a1, int a2)
{
  if (a2)
  {

    si_merge_for_badness_ctx_free(a1);
  }

  else
  {
    v3 = *a1;
    v4 = *(*a1 + 1392);
    v5 = *(*a1 + 1384);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v14 = ___si_merge_for_badness_on_flush_queue_block_invoke;
    v15 = &__block_descriptor_tmp_1972;
    v16 = v3;
    if (v5)
    {
      v6 = *(v5 + 8);
      while (v6 >= 1)
      {
        v7 = v6 - 1;
        v8 = v14(v13, *(*v5 + 8 * v6 - 8), 1);
        v6 = v7;
        if (!v8)
        {
          goto LABEL_14;
        }
      }
    }

    if (v4)
    {
      v9 = *(v4 + 8);
      do
      {
        if (v9 < 1)
        {
          break;
        }

        v10 = v9 - 1;
        v11 = v14(v13, *(*v4 + 8 * v9 - 8), 0);
        v9 = v10;
      }

      while (v11);
    }

LABEL_14:
    v12 = a1[3];
    if (v12)
    {
      si_scheduler_resume_with_token(v12);
      a1[3] = 0;
    }

    si_enqueue_work(*(v3 + 1064), _si_merge_for_badness_on_compact_queue, a1);
  }
}

uint64_t ___si_merge_for_badness_on_flush_queue_block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 32);
  if ((*(a2 + 15712) & 1) != 0 || *(a2 + 15206))
  {
    v6 = atomic_load((a2 + 36));
    if ((v6 & 3) == 0 && (*(a2 + 15203) & 1) == 0)
    {
      v7 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
      *v7 = v5;
      v7[1] = a2;
      *(v7 + 5) = *(a2 + 56);
      *(v7 + 80) = a3;
      *(v7 + 83) = 1;
      _swapIndex(v7, 0);
    }
  }

  return 1;
}

void _si_merge_for_badness_on_compact_queue(void *a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = *a1;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2000000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2000000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2000000000;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2000000000;
    v29 = 0;
    v4 = v3[174];
    v5 = v3[173];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v20 = ___si_merge_for_badness_on_compact_queue_block_invoke;
    v21 = &unk_1E8192768;
    v22 = &v38;
    v23 = &v34;
    v24 = &v30;
    v25 = &v26;
    if (v5)
    {
      v6 = *(v5 + 8);
      while (v6 >= 1)
      {
        v7 = v6 - 1;
        v8 = v20(v19, *(*v5 + 8 * v6 - 8), 1);
        v6 = v7;
        if (!v8)
        {
          goto LABEL_11;
        }
      }
    }

    if (v4)
    {
      v9 = *(v4 + 8);
      do
      {
        if (v9 < 1)
        {
          break;
        }

        v10 = v9 - 1;
        v11 = v20(v19, *(*v4 + 8 * v9 - 8), 0);
        v9 = v10;
      }

      while (v11);
    }

LABEL_11:
    if (v39[3])
    {
      if (v27[3] & 1) != 0 || *(v31 + 24) != 1 || (transfer_live_indexes(v3))
      {
        v12 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
        v13 = v12;
        v12[2] = *(v39[3] + 56);
        v12[3] = *(v35 + 6);
        *(v12 + 1042) = 0;
        *v12 = v3;
        v14 = v27;
        *(v12 + 16) = *(v27 + 24);
        *(v12 + 1041) = 0;
        *(v12 + 131) = "void _si_merge_for_badness_on_compact_queue(void *, Boolean)";
        v12[274] = 8;
        *(v12 + 139) = *(a1 + 1);
        *(a1 + 1) = 0;
        if (*(v14 + 24))
        {
          __strlcpy_chk(v12 + 17, "live.%d.", 1024, 1024);
        }

        else
        {
          __strlcpy_chk(v12 + 17, "%d.", 1024, 1024);
        }

        if (!*(v13 + 136) && !v13[266])
        {
          v17 = v3[295];
          if (v17)
          {
            v18 = *(v17 + 64);
            if (v18)
            {
              v13[266] = v18(*(v17 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 23228, "void _si_merge_for_badness_on_compact_queue(void *, Boolean)");
            }
          }
        }

        si_mergeIndex(v13, 0);
        si_merge_for_badness(v3, *(a1 + 16));
      }

      else
      {
        v15 = *__error();
        v16 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v43 = "_si_merge_for_badness_on_compact_queue";
          v44 = 1024;
          v45 = 23210;
          _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: transfer_live_indexes failed", buf, 0x12u);
        }

        *__error() = v15;
      }
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
  }

  si_merge_for_badness_ctx_free(a1);
}

uint64_t ___si_merge_for_badness_on_compact_queue_block_invoke(void *a1, _BYTE *a2, int a3)
{
  if (((a2[15712] & 1) != 0 || a2[15206]) && (a2[15207] & 1) == 0)
  {
    v3 = 1;
    a2[15207] = 1;
    *(*(a1[4] + 8) + 24) = a2;
    ++*(*(a1[5] + 8) + 24);
    if (a3)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }
  }

  else if (*(*(a1[5] + 8) + 24))
  {
    v3 = 0;
    *(*(a1[7] + 8) + 24) = a3;
    *(*(a1[4] + 8) + 24) = a2;
    ++*(*(a1[5] + 8) + 24);
  }

  else
  {
    return 1;
  }

  return v3;
}

void _SIIssueVerify(uint64_t a1, int a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
  *v4 = a1;
  v4[2] = a2;
  v5 = 1088;
  if (*(a1 + 1288))
  {
    v6 = si_verify;
  }

  else
  {
    v5 = 1048;
    v6 = si_verify0;
  }

  v7 = *(a1 + v5);

  si_enqueue_work(v7, v6, v4);
}

void si_verify0(void *a1, int a2)
{
  if (a2)
  {
    free(a1);
  }

  else
  {
    si_enqueue_work(*(*a1 + 1064), si_verify, a1);
  }
}

void si_verify(_DWORD *a1, int a2)
{
  v2 = a1;
  v68 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = *a1;
    v49 = a1[2];
    bzero(v67, 0x400uLL);
    v4 = *(v3 + 2360);
    v5 = *(v4 + 96);
    if (v5)
    {
      v6 = v5(*(v4 + 144), "com.apple.spotlightindex.verify");
    }

    else
    {
      v6 = 0;
    }

    v7 = _si_scheduler_suspend(*(v3 + 864), "SpotlightIndex.c", 23349);
    v50 = 0;
    v8 = 0;
    if (fd_setDir(*(v3 + 32), &v50))
    {
      v46 = v6;
      v47 = v2;
      v9 = *__error();
      v10 = _SILogForLogForCategory(0);
      v11 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = fcntl(*(v3 + 32), 50, v67);
        if (v67[0])
        {
          v13 = v12 < 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = v67;
        }

        *buf = 136315138;
        v52 = v14;
        _os_log_impl(&dword_1C278D000, v10, v11, "verifying %s", buf, 0xCu);
      }

      *__error() = v9;
      v15 = *(v3 + 1392);
      v16 = *(v3 + 1384);
      if (v15)
      {
        v17 = *(v15 + 8);
      }

      else
      {
        v17 = 0;
      }

      v45 = v7;
      v48 = *(v3 + 1384);
      if (v16)
      {
        v18 = *(v16 + 8);
      }

      else
      {
        v18 = 0;
      }

      *(v3 + 1256) = 0;
      v19 = (v3 + 1264);
      *(v3 + 1264) = -1;
      *(v3 + 1272) = -1;
      *(v3 + 1280) = 0;
      if (v17)
      {
        v20 = 0;
        while (1)
        {
          v21 = *(*v15 + v20);
          v22 = ContentIndexVerifyIndex(v21, v49, v21 + 15192);
          if (atomic_load((v21 + 15192)))
          {
            break;
          }

          if (v22)
          {
LABEL_39:
            _CIMakeInvalid(v21);
            if (v17)
            {
              v29 = *v15;
              do
              {
                v30 = *v29++;
                *(v30 + 8) = 0;
                --v17;
              }

              while (v17);
            }

            if (v18)
            {
              v31 = *v48;
              do
              {
                v32 = *v31++;
                *(v32 + 8) = 0;
                --v18;
              }

              while (v18);
            }

            *(v3 + 1280) = -2;
            v33 = *__error();
            v34 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v38 = fcntl(*(v3 + 32), 50, v67);
              if (v67[0])
              {
                v39 = v38 < 0;
              }

              else
              {
                v39 = 1;
              }

              v40 = *(v3 + 1264);
              if (v39)
              {
                v41 = 0;
              }

              else
              {
                v41 = v67;
              }

              v42 = *(v3 + 1272);
              v43 = *(v3 + 1256);
              v44 = *(v3 + 1260);
              *buf = 136316930;
              v52 = "si_verify";
              v53 = 1024;
              v54 = 23356;
              v55 = 2080;
              v56 = v41;
              v57 = 1024;
              v58 = -2;
              v59 = 1024;
              v60 = v40;
              v61 = 1024;
              v62 = v42;
              v63 = 1024;
              v64 = v43;
              v65 = 1024;
              v66 = v44;
              _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: verify index: %s, err: %d, (%d %d) , (%d, %d)", buf, 0x3Au);
            }

            *__error() = v33;
            if ((*(v3 + 1288) & 1) == 0)
            {
              si_makeUnavailable(v3, 4294967294, 2, 15, "verify err");
            }

            v8 = 1;
            goto LABEL_49;
          }

          v24 = *(v21 + 15560);
          if (v24 >= *(v21 + 15568))
          {
            v24 = *(v21 + 15568);
          }

          if (v24 > *v19)
          {
            *v19 = v24;
          }

          ++*(v3 + 1256);
          v20 += 8;
          if (8 * v17 == v20)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        if (v18)
        {
          for (i = 0; i != v18; ++i)
          {
            v21 = (*v48)[i];
            v26 = ContentIndexVerifyIndex(v21, v49, v21 + 15192);
            if (atomic_load((v21 + 15192)))
            {
              break;
            }

            if (v26)
            {
              goto LABEL_39;
            }

            v28 = *(v21 + 15560);
            if (v28 >= *(v21 + 15568))
            {
              v28 = *(v21 + 15568);
            }

            if (v28 > *v19)
            {
              *(v3 + 1272) = v28;
            }

            ++*(v3 + 1260);
          }
        }
      }

      v8 = 0;
LABEL_49:
      v6 = v46;
      v2 = v47;
      v7 = v45;
      v35 = v50;
      MEMORY[0x1C6921200](v50);
      if ((v35 & 0x80000000) == 0)
      {
        close(v35);
      }
    }

    si_scheduler_resume(*(v3 + 864), v7, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 23371);
    v36 = *(v3 + 2360);
    v37 = *(v36 + 104);
    if (v37)
    {
      v37(*(v36 + 144), v6, v8);
    }
  }

  free(v2);
}

void _SICleanupStrings(uint64_t a1, void *a2, NSObject *a3, _BYTE *a4, int a5)
{
  if (!**(a1 + 6592) && (!a4 || (*a4 & 1) == 0))
  {
    si_sync_ctx_create_with_defer_fd(a1, 0);
    v11 = v10;
    *(v10 + 40) = si_syncFinishedForCleanup;
    v12 = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040DF2DC81EuLL);
    *v12 = a1;
    *(v12 + 3) = a4;
    *(v12 + 8) = a5;
    if (a2)
    {
      v13 = xpc_retain(a2);
    }

    else
    {
      v13 = 0;
    }

    *(v12 + 1) = v13;
    if (a3)
    {
      *(v12 + 2) = a3;
      dispatch_retain(a3);
      dispatch_group_enter(*(v12 + 2));
    }

    *(v11 + 48) = v12;
    v14 = *(a1 + 1104);

    si_enqueue_work_with_qos(v14, 9, si_sync_index_delayed0, v11);
  }
}

void si_syncFinishedForCleanup(void *a1, int a2)
{
  v2 = a1;
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = *a1;
    if (*a1)
    {
      v4 = *(v3 + 1192);
      if (v4)
      {
        if (*v4 != 1685287992)
        {
          v6 = *(v3 + 1192);
          v7 = *__error();
          v8 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = *v6;
            *buf = 136315650;
            v14 = "db_garbage_collect_strings";
            v15 = 1024;
            v16 = 440;
            v17 = 1024;
            v18 = v9;
            _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
          }

          *__error() = v7;
          v10 = __si_assert_copy_extra_332();
          v11 = v10;
          if (v10)
          {
            v12 = v10;
          }

          else
          {
            v12 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 440, v12);
          free(v11);
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        v5 = db2_garbage_collect_strings(v4, v2[4] & 1, *(v3 + 6592));
        v2[5] = v5;
        if (v5)
        {
          si_enqueue_work_with_qos(*(v3 + 1064), 9, si_CleanupCommit, v2);
          v2 = 0;
        }
      }
    }
  }

  si_cleanup_strings_ctx_free(v2);
}

void si_cleanup_strings_ctx_free(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      dispatch_group_leave(v2);
      dispatch_release(*(a1 + 2));
    }

    v3 = *(a1 + 1);
    if (v3)
    {
      xpc_release(v3);
    }

    free(a1);
  }
}

void si_CleanupCommit(void **a1, int a2)
{
  if (!a2)
  {
    v3 = *a1;
    if (*a1)
    {
      if (*(v3 + 1192))
      {
        if (**(v3 + 6592))
        {
          v4 = 0;
          v5 = *(v3 + 1192);
        }

        else
        {
          v6 = malloc_type_calloc(0x12uLL, 8uLL, 0x2004093837F09uLL);
          for (i = 0; i != 144; i += 8)
          {
            if (i != 80)
            {
              *&v6[i] = _si_scheduler_suspend(*(v3 + 864 + i), "SpotlightIndex.c", 23453);
            }
          }

          v5 = *(v3 + 1192);
          v4 = v6;
        }

        add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
        v9 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, v5, 0x40000000, add_explicit + 1);
        v25 = v9;
        v10 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
        v24 = HIDWORD(v9);
        v23 = __PAIR64__(v11, v12);
        *(v10 + 216) = 0;
        v13 = *(v10 + 312);
        v14 = *(v10 + 224);
        if (v14)
        {
          v14(*(v10 + 288));
        }

        v22 = v25;
        v21 = v24;
        v20 = v23;
        if (_setjmp(v10))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v19 = 0;
            _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v19, 2u);
          }

          *(v10 + 312) = v13;
          CIOnThreadCleanUpReset(v20);
          dropThreadId(v22, 1, add_explicit + 1);
          CICleanUpReset(v22, HIDWORD(v20));
        }

        else
        {
          db_garbage_collect_strings_commit(*(v3 + 1192), a1[5], 0);
          v15 = threadData[9 * v22 + 1] + 320 * v21;
          *(v15 + 312) = v13;
          v16 = *(v15 + 232);
          if (v16)
          {
            v16(*(v15 + 288));
          }

          dropThreadId(v22, 0, add_explicit + 1);
        }

        v17 = v3 + 1000;
        for (j = 0; j != -144; j -= 8)
        {
          if (j != -56)
          {
            si_scheduler_resume(*(v17 + j), *&v4[j + 136], "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 23467);
          }
        }

        if (v4)
        {
          free(v4);
        }
      }
    }
  }

  si_cleanup_strings_ctx_free(a1);
}

void _SIIssueDefrag(uint64_t a1)
{
  if (!**(a1 + 6592))
  {
    si_sync_ctx_create_with_defer_fd(a1, 0);
    v4 = v3;
    *(v3 + 138) = 1;
    *(v3 + 96) = 1;
    v5 = *(a1 + 1104);

    si_enqueue_work_with_qos(v5, 9, si_sync_index_delayed0, v4);
  }
}

void _SIIssueFlush(uint64_t a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
  *v4 = a1;
  if (a2)
  {
    LiveIndex = si_getLiveIndex(*(a1 + 1384));
  }

  else
  {
    LiveIndex = si_getSyncIndex(a1, 0);
  }

  v4[1] = LiveIndex;
  v6 = LiveIndex[14];
  *(v4 + 4) = 2;
  *(v4 + 5) = v6;
  v7 = *(a1 + 1040);

  si_enqueue_work(v7, _flushCache, v4);
}

uint64_t SICrashStringInit(uint64_t result, int a2)
{
  gSICrashBuffer = result;
  gSICrashBufferSize = a2;
  return result;
}

uint64_t SISetPowerState(uint64_t result)
{
  gSISystemOnBattery = result & 1;
  gSISystemInDarkWake = (result & 2) != 0;
  return result;
}

__CFDictionary *_SICopyPropertyIDMap(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 1192);
  if (!v2)
  {
    return 0;
  }

  field_id_limit = db_get_field_id_limit(v2);
  if (field_id_limit < 1)
  {
    return 0;
  }

  v4 = field_id_limit;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], field_id_limit, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v4 != 1)
  {
    v7 = 1;
    do
    {
      field_name_for_id = db_get_field_name_for_id(*(a1 + 1192), v7);
      if (field_name_for_id)
      {
        v9 = field_name_for_id;
        valuePtr = v7 | (*(field_name_for_id - 2) << 28);
        v10 = CFNumberCreate(v5, kCFNumberSInt64Type, &valuePtr);
        v11 = CFStringCreateWithCString(v5, v9, 0x8000100u);
        CFDictionaryAddValue(Mutable, v10, v11);
        CFRelease(v11);
        CFRelease(v10);
      }

      v7 = (v7 + 1);
    }

    while (v4 != v7);
  }

  return Mutable;
}

uint64_t _SITermIndexIterate(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v12[2604] = *MEMORY[0x1E69E9840];
  result = GetContentIndex(v3, v4);
  if (result)
  {
    v6 = result;
    v7 = *(result + 4680);
    v8[0] = 0;
    v9 = result + 4984;
    v8[1] = v7;
    v10 = result + 9704;
    v11 = v2;
    bzero(v12, 0x5160uLL);
    return _bt_dumpTrie(v6 + 96, 0, v8, v12, iterateTermsCallback, v8);
  }

  return result;
}

uint64_t GetContentIndex(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    v3 = *(a1 + 1392);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = a2 >= v4;
        v6 = a2 - v4;
        if (v5)
        {
          a2 = v6;
        }

        else
        {
          v2 = *(*v3 + 8 * a2);
          if (v2)
          {
            return v2;
          }
        }
      }
    }

    v2 = *(a1 + 1384);
    if (v2)
    {
      v7 = *(v2 + 8);
      if (v7)
      {
        v8 = a2 < v7;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        return *(*v2 + 8 * a2);
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t _SIReverseStoreIterate(uint64_t result, uint64_t a2)
{
  if (*(result + 6624))
  {
    v3 = result;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v5 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
    v18 = HIDWORD(v5);
    v19 = v5;
    v17 = __PAIR64__(v6, v7);
    v8 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    v9 = *(v8 + 312);
    v10 = *(v8 + 224);
    if (v10)
    {
      v10(*(v8 + 288));
    }

    v16 = v19;
    v15 = v18;
    v14 = v17;
    if (_setjmp(v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v13, 2u);
      }

      *(v8 + 312) = v9;
      CIOnThreadCleanUpReset(v14);
      dropThreadId(v16, 1, add_explicit + 1);
      return CICleanUpReset(v16, HIDWORD(v14));
    }

    else
    {
      _reverseStoreIterate(*(v3 + 6624), a2);
      v11 = threadData[9 * v16 + 1] + 320 * v15;
      *(v11 + 312) = v9;
      v12 = *(v11 + 232);
      if (v12)
      {
        v12(*(v11 + 288));
      }

      return dropThreadId(v16, 0, add_explicit + 1);
    }
  }

  return result;
}

uint64_t _SIDirectoryStoreIterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = GetContentIndex(a1, a2);
  if (result && *(result + 4928))
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v6 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
    v25 = HIDWORD(v6);
    v26 = v6;
    v24 = __PAIR64__(v7, v8);
    v9 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
    v10 = *(v9 + 312);
    v11 = *(v9 + 224);
    if (v11)
    {
      v11(*(v9 + 288));
    }

    v23 = v26;
    v22 = v25;
    v21 = v24;
    if (_setjmp(v9))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v15, 2u);
      }

      *(v9 + 312) = v10;
      CIOnThreadCleanUpReset(v21);
      dropThreadId(v23, 1, add_explicit + 1);
      return CICleanUpReset(v23, HIDWORD(v21));
    }

    else
    {
      v16 = MEMORY[0x1E69E9820];
      v12.n128_u64[0] = 0x40000000;
      v17 = 0x40000000;
      v18 = ___SIDirectoryStoreIterate_block_invoke;
      v19 = &unk_1E8191228;
      v20 = a3;
      dumpDirectoryStore(v12);
      v13 = threadData[9 * v23 + 1] + 320 * v22;
      *(v13 + 312) = v10;
      v14 = *(v13 + 232);
      if (v14)
      {
        v14(*(v13 + 288));
      }

      return dropThreadId(v23, 0, add_explicit + 1);
    }
  }

  return result;
}

uint64_t _SIGetIndexCount(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 1392);
    if (v2)
    {
      result = *(v2 + 8);
    }

    else
    {
      result = 0;
    }

    v3 = *(v1 + 1384);
    if (v3)
    {
      result += *(v3 + 8);
    }
  }

  return result;
}

unint64_t _SIGetMissingParentOID(unint64_t result)
{
  if (result)
  {
    if (*(result + 2072) == 1)
    {
      return atomic_load((result + 2080));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFString *_SISchedulerCopyDump(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"Scheduler state:\n");
  CFStringAppend(Mutable, @"<<<<<<<<\n");
  for (i = 0; i != 18; ++i)
  {
    v5 = a1[i + 108];
    if (v5)
    {
      v6 = *(v5 + 32);
      block = MEMORY[0x1E69E9820];
      v15 = 0x40000000;
      v16 = __si_scheduler_dump_block_invoke;
      v17 = &__block_descriptor_tmp_39_1548;
      v18 = v5;
      v19 = Mutable;
      dispatch_sync(v6, &block);
    }
  }

  for (j = 0; j != 21; ++j)
  {
    si_workqueue_dump(a1[j + 126], Mutable, v3);
  }

  CFStringAppend(Mutable, @">>>>>>>>\n");
  v8 = a1[174];
  v9 = a1[173];
  v10 = a1[149];
  CFStringAppend(Mutable, @"===== VectorIndex begin =====\n");
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  block = MEMORY[0x1E69E9820];
  v15 = 0x40000000;
  v16 = __ContentIndexListDumpVectorIndex_block_invoke;
  v17 = &unk_1E8197640;
  v20 = Mutable;
  v21 = v10;
  v18 = &v26;
  v19 = &v22;
  if (v8 && *(v8 + 8))
  {
    v11 = 0;
    while ((v16)(&block, *(*v8 + 8 * v11), 0))
    {
      if (++v11 >= *(v8 + 8))
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (v9 && *(v9 + 8))
    {
      v12 = 0;
      do
      {
        if (!(v16)(&block, *(*v9 + 8 * v12), 1))
        {
          break;
        }

        ++v12;
      }

      while (v12 < *(v9 + 8));
    }
  }

  CFStringAppendFormat(Mutable, 0, @"===== VectorIndex Total %u vectors in %u generations =====\n", *(v27 + 6), *(v23 + 6), block, v15);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return Mutable;
}

void _SIIssueSchedulerDump(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _SISchedulerCopyDump(a1);
    v2 = *__error();
    v3 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = "_SIIssueSchedulerDump";
      v6 = 1024;
      v7 = 24028;
      v8 = 2112;
      v9 = v1;
      _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: %@", &v4, 0x1Cu);
    }

    *__error() = v2;
    CFRelease(v1);
  }
}

uint64_t _SIIssueLiveQueryDump(uint64_t result)
{
  if (result)
  {
    return si_dump_livequeries(result);
  }

  return result;
}

uint64_t _SIMinimizeDiskSpace(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock(&mergeMutex);
  v2 = *(a1 + 2434);
  v3 = *(a1 + 2428);
  *(a1 + 2428) = v3 + 1;
  if (v2 == 1)
  {
    do
    {
      pthread_cond_wait(&mergeCond, &mergeMutex);
    }

    while ((*(a1 + 2434) & 1) != 0);
    --*(a1 + 2428);
    pthread_mutex_unlock(&mergeMutex);
  }

  else
  {
    *(a1 + 2428) = v3;
    pthread_mutex_unlock(&mergeMutex);
    if (*(a1 + 1384))
    {
      v4 = *(a1 + 944);
      if (v4)
      {
        v5 = _si_scheduler_suspend(v4, "SpotlightIndex.c", 24054);
        v6 = *(a1 + 1384);
        v7 = *(v6 + 8);
        if (v7 < 1)
        {
          goto LABEL_19;
        }

        v8 = 0;
        v9 = 0;
        v10 = -1;
        do
        {
          v11 = *(*v6 + 8 * v7 - 8);
          LODWORD(v12) = v11[17];
          if (v12 >= 2)
          {
            v12 = v12;
          }

          else
          {
            v12 = 0;
          }

          v8 += v12;
          if (v11[13] <= 1)
          {
            v13 = atomic_load(v11 + 4);
            v9 += v13;
            if (v8 < 2 * v9)
            {
              v10 = v7 - 1;
            }
          }

          --v7;
        }

        while ((v7 + 1) > 1);
        if (v10 < 1)
        {
LABEL_19:
          si_scheduler_resume(*(a1 + 944), v5, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 24076);
        }

        else
        {
          v14 = *(*v6 + 8 * v10);
          si_scheduler_resume(*(a1 + 944), v5, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 24071);
          si_recycleForBadIndex(a1, v14, "low disk space");
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return v2;
}

void _SISetMeEmailAddresses(CFSetRef theSet)
{
  v1 = *MEMORY[0x1E695E480];
  if (theSet)
  {
    Copy = CFSetCreateCopy(*MEMORY[0x1E695E480], theSet);
  }

  else
  {
    Copy = CFSetCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9F8]);
  }

  v3 = Copy;
  os_unfair_lock_lock(&sSIMeEmailAddressesLock);
  v4 = sSIMeEmailAddresses;
  v5 = sSIMeEmailAddressMatchContextDict;
  sSIMeEmailAddresses = v3;
  if (v3 && CFSetGetCount(v3))
  {
    sSIMeEmailAddressMatchContextDict = CFDictionaryCreateMutable(v1, 0, MEMORY[0x1E695E9D8], &kMatchContextDictionaryValueCallbacks);
    CFSetApplyFunction(sSIMeEmailAddresses, populateMatcherContextPrefix, sSIMeEmailAddressMatchContextDict);
  }

  else
  {
    sSIMeEmailAddressMatchContextDict = 0;
  }

  os_unfair_lock_unlock(&sSIMeEmailAddressesLock);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

void populateMatcherContextPrefix(char *key, CFDictionaryRef theDict)
{
  if (!CFDictionaryContainsKey(theDict, key))
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
    *v4 = _icu_get_ctx_for_search_match_with_limit(key, 19);

    CFDictionaryAddValue(theDict, key, v4);
  }
}

uint64_t _icu_get_ctx_for_search_match_with_limit(char *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x400uLL);
  v5 = 0;
  if (a1 && (a1 = fasterUTF8String(a1, &v6, v7, 1024, &v5)) != 0)
  {
    CFStringGetCStringPtr(@"en", 0x8000100u);
    v3 = icu_search_context_create_with_wildcard_limit();
  }

  else
  {
    v3 = 0;
  }

  if (v5 == 1)
  {
    free(a1);
  }

  return v3;
}

void _SISetMeNames(CFStringRef theString, const __CFString *a2, const __CFString *a3)
{
  v4 = a2;
  v57 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  if (theString)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], theString);
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Copy = 0;
  if (a2)
  {
LABEL_3:
    v4 = CFStringCreateCopy(v5, v4);
  }

LABEL_4:
  if (a3)
  {
    a3 = CFStringCreateCopy(v5, a3);
  }

  os_unfair_lock_lock(&sSIMeNamesLock);
  cf = sSIMeGivenName;
  v43 = sSIMeMiddleName;
  v44 = sSIMeFamilyName;
  v45 = sSIMeFullName;
  v46 = sSIMeNameParts;
  v47 = sSIMeNameTokens;
  v48 = sSIMeGivenNameTokens;
  v49 = sSIMeNonGivenNameTokens;
  v50 = sSIMeNamePartMatchContextDict;
  theStringa = v4;
  v7 = sSIMeNameTokenMatchContextDict;
  v8 = sSIMeGivenNameTokenMatchContextDict;
  v9 = sSIMeNonGivenNameTokenMatchContextDict;
  v10 = sSIMeFullNameSearchContextPtr;
  sSIMeGivenName = Copy;
  v11 = sSIMeFullNamePrefixSearchContextPtr;
  sSIMeMiddleName = v4;
  v52 = a3;
  alloc = v5;
  sSIMeFamilyName = a3;
  v12 = sSIMeAliasNameSearchContextPtr;
  MutableCopy = CFStringCreateMutableCopy(v5, 0, Copy);
  CFStringLowercase(MutableCopy, 0);
  Length = CFStringGetLength(MutableCopy);
  v15 = Length;
  if (Length < 1024)
  {
    v16 = v56;
  }

  else
  {
    v16 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  }

  bzero(v56, 0x400uLL);
  if (!CFStringGetCString(MutableCopy, v16, v15 + 1, 0x8000100u))
  {
LABEL_21:
    v18 = 0;
    if (!MutableCopy)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v16);
  v17 = peopleNameAlias(__p);
  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(v17 + 23) < 0)
  {
    if (!v17[1])
    {
      goto LABEL_21;
    }

    v17 = *v17;
  }

  else if (!*(v17 + 23))
  {
    goto LABEL_21;
  }

  v18 = CFStringCreateWithCString(alloc, v17, 0x8000100u);
  if (MutableCopy)
  {
LABEL_22:
    CFRelease(MutableCopy);
  }

LABEL_23:
  if (v16 != v56)
  {
    free(v16);
  }

  v41 = v8;
  sSIMeAliasName = v18;
  v19 = v52;
  if (Copy)
  {
    v20 = CFStringGetLength(Copy);
    sSIMeGivenNameTokens = createTokenArray(Copy);
    v21 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v40 = v7;
  if (!theStringa)
  {
    v22 = 0;
    v23 = 0;
    if (v52)
    {
      goto LABEL_30;
    }

LABEL_32:
    if (!v21)
    {
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  v22 = CFStringGetLength(theStringa);
  ++v21;
  v23 = 1;
  if (!v52)
  {
    goto LABEL_32;
  }

LABEL_30:
  v19 = CFStringGetLength(v52);
  ++v21;
  ++v23;
LABEL_33:
  v39 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  Mutable = CFArrayCreateMutable(alloc, v21, MEMORY[0x1E695E9C0]);
  v28 = CFStringCreateMutable(alloc, v20 + v22 + v19 + 2);
  v29 = v28;
  if (v20)
  {
    CFStringAppend(v28, Copy);
    CFArrayAppendValue(Mutable, Copy);
  }

  if (v22)
  {
    CFStringAppendFormat(v29, 0, @" %@", theStringa);
    CFArrayAppendValue(Mutable, theStringa);
  }

  if (v19)
  {
    CFStringAppendFormat(v29, 0, @" %@", v52);
    CFArrayAppendValue(Mutable, v52);
  }

  sSIMeFullName = v29;
  sSIMeNameParts = Mutable;
  sSIMeNameTokens = createTokenArray(v29);
  v12 = v26;
  v11 = v25;
  v10 = v24;
  v9 = v39;
LABEL_40:
  if (v23)
  {
    v30 = CFArrayCreateMutable(alloc, v23, MEMORY[0x1E695E9C0]);
    v31 = CFStringCreateMutable(alloc, v22 + v19 + 1);
    v32 = v31;
    if (v22)
    {
      CFStringAppend(v31, theStringa);
      CFArrayAppendValue(v30, theStringa);
    }

    if (v19)
    {
      CFStringAppendFormat(v32, 0, @" %@", v52);
      CFArrayAppendValue(v30, v52);
    }

    sSIMeNonGivenNameTokens = createTokenArray(v32);
    CFRelease(v30);
    CFRelease(v32);
  }

  if (sSIMeNameParts && CFArrayGetCount(sSIMeNameParts))
  {
    sSIMeNamePartMatchContextDict = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], &kMatchContextDictionaryValueCallbacks);
    v33 = sSIMeNameParts;
    v59.length = CFArrayGetCount(sSIMeNameParts);
    v59.location = 0;
    CFArrayApplyFunction(v33, v59, populateMatcherContext, sSIMeNamePartMatchContextDict);
  }

  else
  {
    sSIMeNamePartMatchContextDict = 0;
  }

  if (sSIMeNameTokens && CFArrayGetCount(sSIMeNameTokens))
  {
    sSIMeNameTokenMatchContextDict = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], &kMatchContextDictionaryValueCallbacks);
    v34 = sSIMeNameTokens;
    v60.length = CFArrayGetCount(sSIMeNameTokens);
    v60.location = 0;
    CFArrayApplyFunction(v34, v60, populateMatcherContext, sSIMeNameTokenMatchContextDict);
  }

  else
  {
    sSIMeNameTokenMatchContextDict = 0;
  }

  if (sSIMeGivenNameTokens && CFArrayGetCount(sSIMeGivenNameTokens))
  {
    sSIMeGivenNameTokenMatchContextDict = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], &kMatchContextDictionaryValueCallbacks);
    v35 = sSIMeGivenNameTokens;
    v61.length = CFArrayGetCount(sSIMeGivenNameTokens);
    v61.location = 0;
    CFArrayApplyFunction(v35, v61, populateMatcherContext, sSIMeGivenNameTokenMatchContextDict);
  }

  else
  {
    sSIMeGivenNameTokenMatchContextDict = 0;
  }

  if (sSIMeNonGivenNameTokens && CFArrayGetCount(sSIMeNonGivenNameTokens))
  {
    sSIMeNonGivenNameTokenMatchContextDict = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], &kMatchContextDictionaryValueCallbacks);
    v36 = sSIMeNonGivenNameTokens;
    v62.length = CFArrayGetCount(sSIMeNonGivenNameTokens);
    v62.location = 0;
    CFArrayApplyFunction(v36, v62, populateMatcherContext, sSIMeNonGivenNameTokenMatchContextDict);
  }

  else
  {
    sSIMeNonGivenNameTokenMatchContextDict = 0;
  }

  if (sSIMeFullName && CFStringGetLength(sSIMeFullName))
  {
    sSIMeFullNameSearchContextPtr = _icu_get_ctx_for_search_match_with_limit(sSIMeFullName, 7);
    ctx_for_search_match_with_limit = _icu_get_ctx_for_search_match_with_limit(sSIMeFullName, 19);
  }

  else
  {
    ctx_for_search_match_with_limit = 0;
    sSIMeFullNameSearchContextPtr = 0;
  }

  sSIMeFullNamePrefixSearchContextPtr = ctx_for_search_match_with_limit;
  v38 = sSIMeAliasName;
  if (sSIMeAliasName)
  {
    v38 = CFStringGetLength(sSIMeAliasName);
    if (v38)
    {
      v38 = _icu_get_ctx_for_search_match_with_limit(sSIMeAliasName, 7);
    }
  }

  sSIMeAliasNameSearchContextPtr = v38;
  os_unfair_lock_unlock(&sSIMeNamesLock);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    icu_ctx_release();
  }

  if (v11)
  {
    icu_ctx_release();
  }

  if (v12)
  {

    icu_ctx_release();
  }
}

void sub_1C29421A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *createTokenArray(const __CFString *a1)
{
  if (!a1 || !CFStringGetLength(a1))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, *MEMORY[0x1E6998270]);
  CFArrayAppendValue(Mutable, *MEMORY[0x1E6998250]);
  CFArrayAppendValue(Mutable, *MEMORY[0x1E6998258]);
  v3 = NLTaggerCreate();
  if (!v3)
  {
    if (!Mutable)
    {
      return Mutable;
    }

    v7 = Mutable;
    goto LABEL_13;
  }

  v4 = v3;
  NLTaggerSetString();
  v5 = CFLocaleCopyCurrent();
  if (!v5)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v7 = v4;
LABEL_13:
    CFRelease(v7);
    return 0;
  }

  v6 = v5;
  CFStringGetLength(a1);
  NLTaggerSetLocaleForRange();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  NLTaggerEnumerateTokens();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  CFRelease(v4);
  CFRelease(v6);
  Mutable = v10[3];
  _Block_object_dispose(&v9, 8);
  return Mutable;
}

void populateMatcherContext(char *key, CFDictionaryRef theDict)
{
  if (!CFDictionaryContainsKey(theDict, key))
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
    *v4 = _icu_get_ctx_for_search_match_with_limit(key, 7);

    CFDictionaryAddValue(theDict, key, v4);
  }
}

void __createTokenArray_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 17) & 0xC) == 0)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(a1 + 40), *a2);
    if (v4)
    {
      v5 = v4;
      v6 = *(*(*(a1 + 32) + 8) + 24);
      if (!v6)
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
        v6 = *(*(*(a1 + 32) + 8) + 24);
      }

      CFArrayAppendValue(v6, v5);

      CFRelease(v5);
    }
  }
}

void _SISetDerivedFromToIsMeNameUpdated(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 6584) |= 0x8000u;
    v1 = fd_create_protected(*(a1 + 32), "derivedFromToIsMeNameUpdated1.created", 512, 0);

    fd_release(v1);
  }
}

void _SISetDerivedFromToIsMeNameAdded(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 6584) |= 0x10000u;
    v1 = fd_create_protected(*(a1 + 32), "derivedFromToIsMeNameAdded1.created", 512, 0);

    fd_release(v1);
  }
}

void _SISetDerivedFromToIsMeAliasUpdated(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 6584) |= 0x20000u;
    v1 = fd_create_protected(*(a1 + 32), "derivedFromToIsMeAliasUpdated1.created", 512, 0);

    fd_release(v1);
  }
}

void _SISetDerivedFromToIsMeAliasAdded(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 6584) |= 0x40000u;
    v1 = fd_create_protected(*(a1 + 32), "derivedFromToIsMeAliasAdded1.created", 512, 0);

    fd_release(v1);
  }
}

CFStringRef _SICopyMeAliasName()
{
  os_unfair_lock_lock(&sSIMeNamesLock);
  if (sSIMeAliasName)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], sSIMeAliasName);
  }

  else
  {
    Copy = 0;
  }

  os_unfair_lock_unlock(&sSIMeNamesLock);
  return Copy;
}

CFArrayRef _SICopyMeNameTokens()
{
  os_unfair_lock_lock(&sSIMeNamesLock);
  if (sSIMeNameTokens)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], sSIMeNameTokens);
  }

  else
  {
    Copy = 0;
  }

  os_unfair_lock_unlock(&sSIMeNamesLock);
  return Copy;
}

CFStringRef _SICopyMeFullName()
{
  os_unfair_lock_lock(&sSIMeNamesLock);
  if (sSIMeFullName)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], sSIMeFullName);
  }

  else
  {
    Copy = 0;
  }

  os_unfair_lock_unlock(&sSIMeNamesLock);
  return Copy;
}

CFArrayRef _SICopyMeGivenNameTokens()
{
  os_unfair_lock_lock(&sSIMeNamesLock);
  if (sSIMeGivenNameTokens)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], sSIMeGivenNameTokens);
  }

  else
  {
    Copy = 0;
  }

  os_unfair_lock_unlock(&sSIMeNamesLock);
  return Copy;
}

CFArrayRef _SICopyMeNonGivenNameTokens()
{
  os_unfair_lock_lock(&sSIMeNamesLock);
  if (sSIMeNonGivenNameTokens)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], sSIMeNonGivenNameTokens);
  }

  else
  {
    Copy = 0;
  }

  os_unfair_lock_unlock(&sSIMeNamesLock);
  return Copy;
}

CFSetRef _SICopyMeEmailAddresses()
{
  os_unfair_lock_lock(&sSIMeEmailAddressesLock);
  if (sSIMeEmailAddresses)
  {
    Copy = CFSetCreateCopy(*MEMORY[0x1E695E480], sSIMeEmailAddresses);
  }

  else
  {
    Copy = 0;
  }

  os_unfair_lock_unlock(&sSIMeEmailAddressesLock);
  return Copy;
}

void _SISetKnownContactEmailMapping(CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  }

  else
  {
    MutableCopy = 0;
  }

  os_unfair_lock_lock(&sEmailAddressMappingLock);
  v2 = sKnownEmailAdresses;
  sKnownEmailAdresses = MutableCopy;
  os_unfair_lock_unlock(&sEmailAddressMappingLock);
  if (v2)
  {

    CFRelease(v2);
  }
}

void _SISetKnownContactCounts(CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  }

  else
  {
    MutableCopy = 0;
  }

  os_unfair_lock_lock(&sContactCountsLock);
  v2 = sKnownContactCounts;
  sKnownContactCounts = MutableCopy;
  os_unfair_lock_unlock(&sContactCountsLock);
  if (v2)
  {

    CFRelease(v2);
  }
}

__CFArray *_SICreateContactMailCounts(const void *a1)
{
  Mutable = 0;
  if (a1)
  {
    if (sKnownEmailAdresses && sKnownContactCounts != 0)
    {
      os_unfair_lock_lock(&sEmailAddressMappingLock);
      Value = CFDictionaryGetValue(sKnownEmailAdresses, a1);
      if (Value)
      {
        v5 = Value;
        CFRetain(Value);
        os_unfair_lock_unlock(&sEmailAddressMappingLock);
        os_unfair_lock_lock(&sContactCountsLock);
        v6 = CFDictionaryGetValue(sKnownContactCounts, v5);
        v7 = v6;
        if (v6)
        {
          CFRetain(v6);
        }

        os_unfair_lock_unlock(&sContactCountsLock);
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 8, MEMORY[0x1E695E9C0]);
        initCountsArray_block_invoke(&__block_literal_global_634, Mutable, 8);
        readFromAllCountsArray_block_invoke_3(&__block_literal_global_641, v7, Mutable, 8, 8);
        CFRelease(v5);
        if (v7)
        {
          CFRelease(v7);
        }
      }

      else
      {
        os_unfair_lock_unlock(&sEmailAddressMappingLock);
        return 0;
      }
    }
  }

  return Mutable;
}

__CFArray *_SICreateContactSMSCounts(const void *a1)
{
  Mutable = 0;
  if (a1 && sKnownContactCounts)
  {
    os_unfair_lock_lock(&sContactCountsLock);
    Value = CFDictionaryGetValue(sKnownContactCounts, a1);
    v4 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    os_unfair_lock_unlock(&sContactCountsLock);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 8, MEMORY[0x1E695E9C0]);
    initCountsArray_block_invoke(&__block_literal_global_634, Mutable, 8);
    readFromAllCountsArray_block_invoke_3(&__block_literal_global_641, v4, Mutable, 16, 8);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return Mutable;
}

double SIGetAccumulatedWorkTimeSinceLastSync(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 2152);
  }

  else
  {
    return 0.0;
  }
}

uint64_t SISetAccumulatedWorkBoundaryCrossCallback(uint64_t result, uint64_t (*a2)(uint64_t, double), uint64_t a3, double a4, double a5)
{
  *(result + 2168) = a3;
  *(result + 2176) = a4;
  *(result + 2184) = a5;
  *(result + 2160) = a2;
  if (a2)
  {
    v5 = *(result + 2152);
    if (v5 >= a4 || v5 > a5)
    {
      return a2(a3, v5);
    }
  }

  return result;
}

uint64_t SIMoveDirectories(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && *(a1 + 6624) && *(a1 + 1048))
  {
    if ((a3 & 7) != 0)
    {
      v17 = __si_assert_copy_extra_661(-1);
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34199, "(count & 0x7) == 0", v19);
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

    if (dword_1EBF46ADC >= 5)
    {
      v21 = a3;
      v22 = *__error();
      v23 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "Do directory move.", buf, 2u);
      }

      *__error() = v22;
      a3 = v21;
    }

    v5 = 0;
    v6 = 0;
    v7 = a3 >> 3;
    while (v7 > v5)
    {
      v8 = a2 + 8 * v5;
      if (*v8)
      {
        ++v6;
      }

      v5 += *(v8 + 8) + 2;
      if (v7 < v5)
      {
        return 0;
      }
    }

    if (v6)
    {
      v9 = malloc_type_calloc(1uLL, 8 * v6 + 32, 0x1020040D2389C4FuLL);
      v10 = v9;
      v11 = 0;
      v9[1] = a1;
      v12 = v9 + 4;
      while (v7 > v11)
      {
        v13 = a2 + 8 * v11;
        v14 = *v13;
        if (*v13)
        {
          v15 = v9[2];
          v9[2] = v15 + 1;
          v12[v15] = v14;
        }

        v11 += *(v13 + 8) + 2;
        if (v7 < v11)
        {
          free(v9);
          return 0;
        }
      }

      journalMoves(a1, v9[2], v12, 0);
      si_enqueue_barrier(*(a1 + 1048), moveDirectories, v10);
    }

    if (dword_1EBF46ADC >= 5)
    {
      v24 = *__error();
      v25 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "Leave.", v26, 2u);
      }

      *__error() = v24;
    }
  }

  return 1;
}

void journalMoves(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = 8 * a2;
    v9 = malloc_type_malloc(8 * a2 + 12, 0x10000403E1C8BA9uLL);
    v10 = v9;
    if (a4)
    {
      v11 = -265421075;
    }

    else
    {
      v11 = -266469651;
    }

    *v9 = v11;
    v12 = v9 + 3;
    if (a2 >= 1)
    {
      v13 = a2;
      do
      {
        v14 = *a3++;
        *v12++ = v14;
        --v13;
      }

      while (v13);
    }

    v9[1] = v8;
    v9[2] = a2;
    pthread_mutex_lock((a1 + 1632));
    JournalFd = getJournalFd(a1, 0, 0);
    v16 = fd_write(JournalFd, v10, (v8 & 0xFFFFFFF8) + 12);
    pthread_mutex_unlock((a1 + 1632));
    if (v16 == -1)
    {
      v17 = *__error();
      v18 = *__error();
      v19 = _SILogForLogForCategory(4);
      v20 = 2 * (dword_1EBF46ADC < 4);
      if (os_log_type_enabled(v19, v20))
      {
        v21[0] = 67109120;
        v21[1] = v17;
        _os_log_impl(&dword_1C278D000, v19, v20, "Error writing to log file: %d", v21, 8u);
      }

      *__error() = v18;
    }

    free(v10);
  }
}

uint64_t SIMoveFiles(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 6624) && *(a1 + 1048))
  {
    if ((a3 & 7) != 0)
    {
      v22 = __si_assert_copy_extra_661(-1);
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34249, "(count & 0x7) == 0", v24);
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

    if (dword_1EBF46ADC >= 5)
    {
      v26 = *__error();
      v27 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "Do directory move.", buf, 2u);
      }

      *__error() = v26;
    }

    v6 = 0;
    v7 = 0;
    v8 = a3 >> 3;
    while (v8 > v6)
    {
      v9 = a2 + 8 * v6;
      if (*v9)
      {
        ++v7;
      }

      v6 += *(v9 + 8) + 2;
      if (v8 < v6)
      {
        return 0;
      }
    }

    if (v7)
    {
      v11 = malloc_type_calloc(1uLL, 8 * v7 + 32, 0x1020040D2389C4FuLL);
      v12 = v11;
      v13 = 0;
      v11[1] = a1;
      v14 = v11 + 4;
      while (v8 > v13)
      {
        v15 = a2 + 8 * v13;
        v16 = *v15;
        if (*v15)
        {
          v17 = v11[2];
          v11[2] = v17 + 1;
          v14[v17] = v16;
        }

        v13 += *(v15 + 8) + 2;
        if (v8 < v13)
        {
          v18 = __si_assert_copy_extra_661(-1);
          v19 = v18;
          v20 = "";
          if (v18)
          {
            v20 = v18;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34276, "i<=count/8", v20);
          free(v19);
          if (__valid_fs(-1))
          {
            v21 = 2989;
          }

          else
          {
            v21 = 3072;
          }

          *v21 = -559038737;
          abort();
        }
      }

      journalMoves(a1, v11[2], v14, 1);
      si_enqueue_barrier(*(a1 + 1048), moveFiles, v12);
    }

    if (dword_1EBF46ADC >= 5)
    {
      v28 = *__error();
      v29 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&dword_1C278D000, v29, OS_LOG_TYPE_DEFAULT, "Leave.", v30, 2u);
      }

      *__error() = v28;
    }
  }

  return 1;
}

void moveFiles(void *a1, int a2)
{
  if (!a2)
  {
    v3.n128_f64[0] = CFAbsoluteTimeGetCurrent();
    v4 = v3.n128_f64[0];
    innerMoveFiles(a1, v3);
    bumpWorkTime(a1[1], v4);
  }

  free(a1);
}

CFDictionaryRef __isEntitledForAttribute_block_invoke()
{
  __dst[61] = *MEMORY[0x1E69E9840];
  memcpy(__dst, off_1E81912C8, 0x1E8uLL);
  memcpy(values, &unk_1C2BFAFA0, sizeof(values));
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], __dst, values, 61, &kCStringDictionaryKeyCallBacks, &kIntDictionaryValueCallBacks);
  isEntitledForAttribute_attributeEntitlementMapping = result;
  return result;
}

__CFArray *SICopyCorrections(uint64_t a1, const __CFString *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  makeThreadId();
  if (a1)
  {
    bzero(buf, 0x404uLL);
    MutableCopy = CFStringCreateMutableCopy(0, 1024, a2);
    CFStringNormalize(MutableCopy, kCFStringNormalizationFormC);
    CFStringLowercase(MutableCopy, 0);
    v47 = 0;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v46[0] = 5;
    v46[1] = &v48;
    v5 = *(a1 + 1312);
    v48 = *(a1 + 1320);
    v49 = v5;
    v6 = *(a1 + 1352);
    v7 = *(a1 + 1336);
    *&v51 = *(a1 + 1344);
    *(&v51 + 1) = v7;
    v8 = *(a1 + 1380);
    *&v52 = *(a1 + 1384);
    *(&v52 + 1) = v8;
    v9 = *(a1 + 1256);
    *&v53 = *(a1 + 1368);
    *(&v53 + 1) = v9;
    v10 = *(a1 + 1272);
    *&v54 = *(a1 + 1264);
    *(&v54 + 1) = v10;
    v56 = 0;
    *&v55 = -1;
    *&v50 = 0;
    *(&v50 + 1) = v6;
    v49 = 0;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v12 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v46, 0, add_explicit + 1);
    v44 = HIDWORD(v12);
    v45 = v12;
    v43 = __PAIR64__(v13, v14);
    v15 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
    *(v15 + 216) = 0;
    v16 = *(v15 + 312);
    v17 = *(v15 + 224);
    v18 = v15;
    if (v17)
    {
      v17(*(v15 + 288));
    }

    v42 = v45;
    v41 = v44;
    v40 = v43;
    if (_setjmp(v18))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v39 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v39, 2u);
      }

      v18[78] = v16;
      CIOnThreadCleanUpReset(v40);
      dropThreadId(v42, 1, add_explicit + 1);
      CICleanUpReset(v42, HIDWORD(v40));
    }

    else
    {
      if (CFStringGetCString(MutableCopy, v58, 1024, 0x8000100u) && (*buf = 0, v24 = strlen(v58), (v25 = data_map32_id_get_with_key_noextra(a1, v58, v24 + 1)) != 0))
      {
        v26 = *(data_map32_get_data(a1, v25, 0) - 4);
        if (v26 && (v27 = data_map32_get_data(a1, v26, 0), v28 = *(v27 - 4), (v28 - 257) >= 0xFFFFFF00))
        {
          v31 = v27;
          Mutable = CFArrayCreateMutable(0, v28, MEMORY[0x1E695E9C0]);
          v33 = v31;
          v34 = v28;
          do
          {
            v35 = v33 + 1;
            data = data_map32_get_data(a1, *v33, 0);
            if (data)
            {
              v37 = CFStringCreateWithCString(0, data, 0x8000100u);
              if (v37)
              {
                v38 = v37;
                CFArrayAppendValue(Mutable, v37);
                CFRelease(v38);
              }
            }

            v33 = v35;
            --v34;
          }

          while (v34);
          v47 = 1;
          v19 = Mutable;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v29 = threadData[9 * v42 + 1] + 320 * v41;
      *(v29 + 312) = v16;
      v30 = *(v29 + 232);
      if (v30)
      {
        v30(*(v29 + 288));
      }

      dropThreadId(v42, 0, add_explicit + 1);
      if (!v19 || (v47 & 1) != 0)
      {
        goto LABEL_9;
      }

      CFRelease(v19);
    }

    v19 = 0;
LABEL_9:
    CFRelease(MutableCopy);
    return v19;
  }

  v21 = *__error();
  v22 = _SILogForLogForCategory(10);
  v23 = dword_1EBF46AF4 < 3;
  if (os_log_type_enabled(v22, (dword_1EBF46AF4 < 3)))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v22, v23, "*warn* invalid corrections commit", buf, 2u);
  }

  *__error() = v21;
  return 0;
}

void SICorrectionCommit(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 1462);
    if (!_data_map32_commit(a1, 0))
    {
      v3 = *(a1 + 1272);
      if (v3)
      {
        v4 = *(v3 + 44);
        if (v4 != -1)
        {
          bzero(v27, 0x400uLL);
          v5 = fd_name(v3, v27, 0x400uLL);
          if (v5)
          {
            v6 = v5;
            v7 = strlen(v5);
            if (v7 >= 8)
            {
              v8 = &v6[v7 - 7];
              if (!strcmp(v8, ".header"))
              {
                strcpy(v8, ".map");
                v9 = v2 ? 3 : 0;
                v10 = fd_create_protected(v4, v6, 1538, v9);
                if (v10)
                {
                  v11 = v10;
                  v12 = (*(a1 + 1376) + 103) & 0x1FFFFFFF8;
                  v13 = (*(a1 + 1348) + v12 + 15) & 0x3FFFFFFF8;
                  v14 = (*(a1 + 1328) + v13 + 15) & 0x7FFFFFFF8;
                  if (fd_truncate(v10, v14) || (v18 = fd_mmap(v11, v14, 3, 1, 0), v18 == -1))
                  {
                    _fd_unlink_with_origin(v11, 0);
                    fd_release(v11);
                  }

                  else
                  {
                    v19 = v18;
                    v20 = *(a1 + 1296);
                    v21 = *v20;
                    v22 = v20[1];
                    v23 = v20[2];
                    *(v18 + 48) = *(v20 + 6);
                    *(v18 + 16) = v22;
                    *(v18 + 32) = v23;
                    *v18 = v21;
                    *(v18 + 56) = 13;
                    *(v18 + 60) = v14;
                    *(v18 + 64) = 88;
                    *(v18 + 68) = v12;
                    *(v18 + 72) = v13;
                    memcpy((v18 + 88), *(a1 + 1384), *(a1 + 1376));
                    memcpy(&v19[v12], *(a1 + 1352), *(a1 + 1348));
                    memcpy(&v19[v13], *(a1 + 1320), *(a1 + 1328));
                    fd_system_status_stall_if_busy();
                    msync(v19, v14, 16);
                    munmap(v19, v14);
                    fd_release(v11);
                    free(*(a1 + 1296));
                    *(a1 + 1296) = 0;
                    _fd_unlink_with_origin(*(a1 + 1272), 0);
                    fd_release(*(a1 + 1272));
                    *(a1 + 1272) = 0;
                    munmap(*(a1 + 1384), *(a1 + 1380));
                    *(a1 + 1384) = -1;
                    _fd_unlink_with_origin(*(a1 + 1368), 0);
                    fd_release(*(a1 + 1368));
                    *(a1 + 1368) = 0;
                    munmap(*(a1 + 1352), *(a1 + 1344));
                    *(a1 + 1352) = -1;
                    _fd_unlink_with_origin(*(a1 + 1336), 0);
                    fd_release(*(a1 + 1336));
                    *(a1 + 1336) = 0;
                    munmap(*(a1 + 1320), *(a1 + 1312));
                    *(a1 + 1320) = -1;
                    _fd_unlink_with_origin(*(a1 + 1304), 0);
                    fd_release(*(a1 + 1304));
                    *(a1 + 1304) = 0;
                    if (*(a1 + 1462))
                    {
                      v24 = 3;
                    }

                    else
                    {
                      v24 = 0;
                    }

                    v25 = fd_create_protected(v4, v6, 0, v24);
                    *(a1 + 1272) = v25;
                    v26 = fd_mmap(v25, v14, 1, 1, 0);
                    if (v26 != -1)
                    {
                      *(a1 + 1256) = v26;
                      *(a1 + 1296) = v26;
                      *(a1 + 1384) = v26 + v26[16];
                      *(a1 + 1352) = v26 + v26[17];
                      *(a1 + 1320) = v26 + v26[18];
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

  else
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(10);
    v17 = dword_1EBF46AF4 < 3;
    if (os_log_type_enabled(v16, (dword_1EBF46AF4 < 3)))
    {
      *v27 = 0;
      _os_log_impl(&dword_1C278D000, v16, v17, "*warn* invalid corrections commit", v27, 2u);
    }

    *__error() = v15;
  }
}

void SICorrectionDestory(uint64_t result)
{
  if (result)
  {
    data_map32_destroy(result);
  }
}

uint64_t SICorrectionCreate(const __CFString *a1, int a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (!CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    strcpy(buffer, "default_corrections");
  }

  v8 = 0u;
  v9 = 0u;
  if (a3)
  {
    v6 = 9;
  }

  else
  {
    v6 = 10;
  }

  v11 = 0uLL;
  v12 = 0uLL;
  v10 = 0uLL;
  LODWORD(v8) = a2;
  *(&v8 + 1) = buffer;
  LODWORD(v9) = 4;
  DWORD1(v9) = v6;
  return data_map32_init_with_ctx(&v8);
}

void SIAddCorrection(uint64_t a1, CFStringRef theString, const __CFArray *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = *__error();
    v17 = _SILogForLogForCategory(10);
    v18 = dword_1EBF46AF4 < 3;
    if (os_log_type_enabled(v17, (dword_1EBF46AF4 < 3)))
    {
      *v24 = 0;
      _os_log_impl(&dword_1C278D000, v17, v18, "*warn* no correction dict passed", v24, 2u);
    }

    *__error() = v16;
    return;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 1024, theString);
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormC);
  theStringa = MutableCopy;
  CFStringLowercase(MutableCopy, 0);
  bzero(v24, 0x404uLL);
  Count = CFArrayGetCount(a3);
  bzero(&v28, 0x404uLL);
  if (Count < 1)
  {
    v15 = 4;
    goto LABEL_20;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, v8);
    if (CFStringGetLength(ValueAtIndex) >= 1025)
    {
      v10 = *__error();
      v11 = _SILogForLogForCategory(10);
      v12 = dword_1EBF46AF4 < 3;
      if (os_log_type_enabled(v11, (dword_1EBF46AF4 < 3)))
      {
        *buf = 138412290;
        v27 = theStringa;
        _os_log_impl(&dword_1C278D000, v11, v12, "*warn* exceeded max for %@", buf, 0xCu);
      }

      *__error() = v10;
      goto LABEL_11;
    }

    v28 = 0;
    if (CFStringGetCString(ValueAtIndex, v29, 1024, 0x8000100u))
    {
      break;
    }

LABEL_11:
    if (Count == ++v8)
    {
      v15 = 4 * v7 + 4;
      goto LABEL_20;
    }
  }

  v13 = strlen(v29);
  data_id = _data_map32_get_data_id(a1, *(a1 + 224), &v28, v13 + 5, 1);
  if (v7 != 256)
  {
    v25[v7++] = data_id;
    *v24 = v7;
    goto LABEL_11;
  }

  v19 = *__error();
  v20 = _SILogForLogForCategory(10);
  v21 = dword_1EBF46AF4 < 3;
  if (os_log_type_enabled(v20, (dword_1EBF46AF4 < 3)))
  {
    *buf = 138412290;
    v27 = theStringa;
    _os_log_impl(&dword_1C278D000, v20, v21, "*warn* correctDict exceeded max for %@", buf, 0xCu);
  }

  *__error() = v19;
  v15 = 1028;
LABEL_20:
  v28 = _data_map32_get_data_id(a1, *(a1 + 224), v24, v15, 1);
  CFStringGetCString(theStringa, v29, 1024, 0x8000100u);
  v22 = strlen(v29);
  _data_map32_get_data_id(a1, *(a1 + 224), &v28, v22 + 5, 1);
  CFRelease(theStringa);
}

uint64_t _SIGetLastUsedDate(int a1, char *path, _OWORD *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_9;
  }

  v6 = 0uLL;
  v7 = 0;
  if (a1 != -1)
  {
    v4 = fgetxattr(a1, "com.apple.lastuseddate#PS", &v6, 0x18uLL, 0, 0);
    if (v4 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_7;
  }

  if (!path)
  {
LABEL_9:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v4 = getxattr(path, "com.apple.lastuseddate#PS", &v6, 0x18uLL, 0, 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
LABEL_7:
    if (v4 == 16)
    {
      result = 0;
      *a3 = v6;
      return result;
    }

    goto LABEL_9;
  }

  return 0xFFFFFFFFLL;
}

uint64_t _SISetLastUsedDate(int a1, char *path, __int128 *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_6;
  }

  v4 = *a3;
  if (a1 != -1)
  {
    return fsetxattr(a1, "com.apple.lastuseddate#PS", &v4, 0x10uLL, 0, 0);
  }

  if (path)
  {
    return setxattr(path, "com.apple.lastuseddate#PS", &v4, 0x10uLL, 0, 0);
  }

LABEL_6:
  *__error() = 22;
  return 0xFFFFFFFFLL;
}

CFDictionaryRef _SIUserCopyUserFSCriteriaForQuery(char *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  query_node_with_ann = db_make_query_node_with_ann(a1, 0);
  if (!query_node_with_ann)
  {
    return 0;
  }

  v2 = query_node_with_ann;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = ___SIUserCopyUserFSCriteriaForQuery_block_invoke;
  v13[3] = &unk_1E81914B8;
  v13[4] = &v22;
  v13[5] = &v14;
  v13[6] = &v18;
  keys = MEMORY[0x1E69E9820];
  v29 = 0x40000000;
  v30 = __db_query_tree_apply_block_block_invoke;
  v31 = &unk_1E8198ED0;
  v32 = v13;
  db_query_tree_apply_block_with_meta(query_node_with_ann, &keys, 0);
  if (*(v23 + 24) == 1 && ((v3 = v15[3]) != 0 || v19[3]))
  {
    keys = 0;
    v29 = 0;
    v30 = 0;
    values = 0;
    v27[0] = 0;
    v27[1] = 0;
    v4 = *MEMORY[0x1E695E4D0];
    if (v3 == *MEMORY[0x1E695E4D0])
    {
      p_values = v27;
      p_keys = &v29;
      keys = @"kMDItemIsTrashed";
      values = v3;
      v5 = 1;
    }

    else
    {
      v5 = 0;
      p_keys = &keys;
      p_values = &values;
    }

    *p_keys = @"LISearchObjTypeReturnAll";
    v9 = v5 + 1;
    *p_values = v4;
    v10 = v19[3];
    if (v10)
    {
      *(&keys + v9) = @"LISearchFileNameContains";
      v27[v9 - 1] = v10;
      v9 = v5 | 2;
    }

    v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v8 = 0;
  }

  v11 = v19[3];
  if (v11)
  {
    CFRelease(v11);
  }

  keys = MEMORY[0x1E69E9820];
  v29 = 0x40000000;
  v30 = __db_query_tree_apply_block_block_invoke;
  v31 = &unk_1E8198ED0;
  v32 = &__block_literal_global_174;
  db_query_tree_apply_block_with_meta(v2, &keys, 0);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v8;
}

void SIFixupPaths(uint64_t result, unint64_t *a2, uint64_t a3)
{
  if (*(result + 1064))
  {
    v6 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
    *v6 = result;
    v6[1] = RLEOIDArrayCreate(*MEMORY[0x1E695E480], a2, a3);
    v7 = *(result + 1064);

    si_enqueue_work(v7, fixupOrphanItems, v6);
  }
}

void SIFetchTopKTerms(uint64_t a1, void *a2)
{
  if (a1 && *(a1 + 1088))
  {
    v4 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
    *v4 = a1;
    v4[1] = _Block_copy(a2);
    v5 = *(a1 + 1088);

    si_enqueue_work(v5, get_topK, v4);
  }

  else
  {
    v6 = a2[2];

    v6(a2, 0);
  }
}

void get_topK(const void **a1, int a2)
{
  if (a2)
  {
    (*(a1[1] + 2))();
  }

  else
  {
    v21[0] = _MDPlistContainerGetBytes();
    v21[1] = _MDPlistContainerGetLength();
    v21[2] = 0;
    v20[0] = 1;
    v20[1] = v21;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v4 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v20, 0, add_explicit + 1);
    v18 = HIDWORD(v4);
    v19 = v4;
    v17 = __PAIR64__(v5, v6);
    v7 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
    *(v7 + 216) = 0;
    v8 = *(v7 + 312);
    v9 = *(v7 + 224);
    v10 = v7;
    if (v9)
    {
      v9(*(v7 + 288));
    }

    v16 = v19;
    v15 = v18;
    v14 = v17;
    if (_setjmp(v10))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v13, 2u);
      }

      v10[78] = v8;
      CIOnThreadCleanUpReset(v14);
      dropThreadId(v16, 1, add_explicit + 1);
      CICleanUpReset(v16, HIDWORD(v14));
    }

    else
    {
      (*(a1[1] + 2))();
      v11 = threadData[9 * v16 + 1] + 320 * v15;
      *(v11 + 312) = v8;
      v12 = *(v11 + 232);
      if (v12)
      {
        v12(*(v11 + 288));
      }

      dropThreadId(v16, 0, add_explicit + 1);
    }
  }

  _Block_release(a1[1]);
  free(a1);
}

void _SITransferBundles(uint64_t a1, uint64_t a2, const __CFArray *a3, int a4, const void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### transfer start", v22, 2u);
  }

  if (a3)
  {
    Count = CFArrayGetCount(a3);
  }

  else
  {
    Count = 0;
  }

  v11 = malloc_type_calloc(1uLL, 4 * Count + 84, 0x10E004052165109uLL);
  *v11 = a1;
  v11[1] = a2;
  *(v11 + 6) = a4;
  if (a5)
  {
    v11[4] = _Block_copy(a5);
  }

  if (Count)
  {
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        bzero(v22, 0x400uLL);
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        if (CFStringGetCString(ValueAtIndex, v22, 1024, 0x8000100u))
        {
          v14 = strlen(v22);
          v15 = bundleIdHash(v22, v14 + 1);
          v16 = *(v11 + 18);
          *(v11 + 18) = v16 + 1;
          *(v11 + v16 + 19) = v15;
        }
      }
    }

    v17 = *(v11 + 18);
    if ((a4 & 2) == 0 && v17)
    {
      v18 = bundleIdHash("com.apple.searchd", 0x12u);
      v19 = v11 + 4 * v17;
      LODWORD(v17) = v17 + 1;
      *(v11 + 18) = v17;
      *(v19 + 19) = v18;
    }
  }

  else
  {
    LODWORD(v17) = *(v11 + 18);
  }

  if (a1 != a2 && a1 && v17 && *(a1 + 2072) == 1 && *(a1 + 1040))
  {
    v11[2] = *(a1 + 1192);
    if ((a4 & 4) == 0)
    {
      *(v11 + 7) = 0;
      si_enqueue_work(*(a1 + 1040), si_transferBundleItems, v11);
      return;
    }

    *(v11 + 7) = 18;
    v20 = v11;
    v21 = 0;
  }

  else
  {
    *(v11 + 12) = 22;
    v20 = v11;
    v21 = 1;
  }

  si_transferBundleItems(v20, v21);
}

void si_transferBundleItems(char *a1, int a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 12);
    if (!v3)
    {
      *(a1 + 12) = 89;
      v3 = 89;
    }
  }

  else
  {
    v40 = 0;
    v4 = db_clear_docids_setup(*(a1 + 2));
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v5 = 0;
    memset(buf, 0, sizeof(buf));
    do
    {
      if (v5 != *(a1 + 7))
      {
        buf[v5] = _si_scheduler_suspend(*(*a1 + 8 * v5 + 864), "SpotlightIndex.c", 35843);
      }

      ++v5;
    }

    while (v5 != 18);
    v42 = 0u;
    memset(v41, 0, sizeof(v41));
    if (*(a1 + 1))
    {
      v6 = v41;
      v7 = 108;
      do
      {
        v8 = v7;
        v9 = v6;
        *v6 = _si_scheduler_suspend(*(*(a1 + 1) + 8 * v7), "SpotlightIndex.c", 35853);
        v7 = v8 + 1;
        v6 = v9 + 1;
      }

      while (v8 != 125);
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v11 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
    v38 = HIDWORD(v11);
    v39 = v11;
    v37 = __PAIR64__(v12, v13);
    v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    v15 = *(v14 + 312);
    v16 = *(v14 + 224);
    if (v16)
    {
      v16(*(v14 + 288));
    }

    v36 = v39;
    v35 = v38;
    v34 = v37;
    if (_setjmp(v14))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v33[0] = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v33, 2u);
      }

      *(v14 + 312) = v15;
      CIOnThreadCleanUpReset(v34);
      dropThreadId(v36, 1, add_explicit + 1);
      CICleanUpReset(v36, HIDWORD(v34));
      v17 = 0;
    }

    else
    {
      v18 = db_clear_docids_matching_bundles(*(a1 + 2), v4, *(*a1 + 6592), a1 + 19, *(a1 + 18), transfer_bundles_match, a1);
      v40 = 1;
      v19 = threadData[9 * v36 + 1] + 320 * v35;
      *(v19 + 312) = v15;
      v20 = *(v19 + 232);
      if (v20)
      {
        v20(*(v19 + 288));
      }

      dropThreadId(v36, 0, add_explicit + 1);
      v17 = v18;
    }

    if (v40)
    {
      v21 = v17;
    }

    else
    {
      v21 = -1;
    }

    transfer_index_if_needed(a1, 0);
    db_clear_docids_cleanup(*(a1 + 2), v4);
    if (*(a1 + 1))
    {
      v22 = &v42 + 1;
      v23 = 125;
      do
      {
        v24 = v23;
        v25 = v22 - 1;
        si_scheduler_resume(*(*(a1 + 1) + 8 * v23), *v22, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 35875);
        v23 = v24 - 1;
        v22 = v25;
      }

      while (v24 != 108);
    }

    for (i = 0; i != -18; --i)
    {
      if (i + 17 != *(a1 + 7))
      {
        si_scheduler_resume(*(*a1 + 8 * i + 1000), *(&v50 + i + 1), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 35884);
      }
    }

    if (*(a1 + 12))
    {
      v27 = 1;
    }

    else
    {
      v27 = v21 == 0;
    }

    v28 = *(a1 + 12);
    if (!v27)
    {
      *(a1 + 12) = v21;
      v28 = v21;
    }

    v3 = v28;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 5);
    LODWORD(buf[0]) = 67109376;
    HIDWORD(buf[0]) = v3;
    LOWORD(buf[1]) = 2048;
    *(&buf[1] + 2) = v29;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### transfer complete res:%d matches:%lu", buf, 0x12u);
  }

  v30 = *(a1 + 4);
  if (v30)
  {
    (*(v30 + 16))(v30, *(a1 + 12));
    _Block_release(*(a1 + 4));
  }

  v31 = *(a1 + 7);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(a1 + 8);
  if (v32)
  {
    CFRelease(v32);
  }

  free(a1);
}

void transfer_index_if_needed(uint64_t a1, CFDictionaryRef theDict)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    v5 = (a1 + 64);
    if (!*(a1 + 64))
    {
      return;
    }

    Value = 0;
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(theDict, @"_kMDItemBundleID");
  v5 = (a1 + 64);
  if (!*(a1 + 64))
  {
    goto LABEL_22;
  }

  if (!Value || *(a1 + 52) > 512 || !CFEqual(*(a1 + 56), Value))
  {
LABEL_9:
    _MDPlistContainerAddNullValue();
    _MDPlistContainerEndArray();
    _MDPlistContainerEndContainer();
    v6 = *(a1 + 52);
    if (v6)
    {
      v7 = *(a1 + 56);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v7;
        *&buf[12] = 1024;
        *&buf[14] = v6;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### transfering %@ %d items", buf, 0x12u);
        v6 = *(a1 + 52);
      }

      if (v6 >= 1)
      {
        for (i = 0; i < v6; ++i)
        {
          memset(buf, 0, sizeof(buf));
          _MDPlistGetRootPlistObjectFromPlist();
          v9 = *(a1 + 8);
          v22 = *buf;
          v23 = *&buf[16];
          _MDPlistArrayGetPlistObjectAtIndex();
          v23 = 0;
          v22 = 0u;
          if (processOneCS(v9, -1, v7, 0, 0, v24, &v22, 0, 0, 0, 0, 0, 0, 0, &v25))
          {
            v10 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
            v11 = *(a1 + 8);
            *v10 = v11;
            LiveIndex = si_getLiveIndex(*(v11 + 1384));
            v10[1] = LiveIndex;
            v13 = LiveIndex[14];
            *(v10 + 4) = 2;
            *(v10 + 5) = v13;
            _flushCache(v10, 0);
          }

          v6 = *(a1 + 52);
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 56);
        *buf = 138412546;
        *&buf[4] = v14;
        *&buf[12] = 1024;
        *&buf[14] = v6;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### transferred %@ %d items", buf, 0x12u);
      }
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      CFRelease(v15);
      *(a1 + 56) = 0;
    }

    CFRelease(*(a1 + 64));
    *(a1 + 64) = 0;
    *(a1 + 52) = 0;
LABEL_22:
    if (!Value)
    {
      return;
    }
  }

  Count = CFDictionaryGetCount(theDict);
  MEMORY[0x1EEE9AC00](v17);
  v18 = (&v22 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v18, 8 * Count);
  MEMORY[0x1EEE9AC00](v19);
  v20 = v18;
  bzero(v18, 8 * Count);
  CFDictionaryGetKeysAndValues(theDict, v18, v18);
  if (!*v5)
  {
    *(a1 + 64) = _MDPlistContainerCreateMutable();
    _MDPlistContainerBeginContainer();
    _MDPlistContainerBeginArray();
    *(a1 + 56) = CFRetain(Value);
  }

  if (CFDictionaryGetValue(theDict, @"_kMDItemExternalID"))
  {
    _MDPlistContainerBeginDictionary();
    if (Count >= 1)
    {
      do
      {
        v21 = *v18;
        if (!CFEqual(*v18, @"kMDItemAttributeChangeDate") && !CFEqual(v21, @"_kMDItemProtectionClass") && !CFEqual(v21, @"_kMDItemGroupId") && !CFEqual(v21, @"_kMDItemTransfered"))
        {
          _MDPlistContainerAddObject();
          _MDPlistContainerAddObject();
        }

        ++v20;
        ++v18;
        --Count;
      }

      while (Count);
    }

    _MDPlistContainerAddObject();
    _MDPlistContainerAddBooleanValue();
    _MDPlistContainerEndDictionary();
    ++*(a1 + 52);
  }
}

uint64_t transfer_bundles_match(uint64_t *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 72) + ((*(a2 + 24) >> 1) & 1u) - 1;
  if (*(a2 + 72) + ((*(a2 + 24) >> 1) & 1) == 1)
  {
    return 0;
  }

  for (i = 76; *(a2 + i) != *(a1 + 1); i += 4)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  v22 = 0;
  v23 = 0;
  if (db_get_field(*(a2 + 16), a1, "_kMDItemExternalID", &v23, &v22) || (*buf = 0, db_get_field(*(a2 + 16), a1, "_kMDItemBundleID", &v23, buf)) || ((*(v23 + 2) & 0x10) != 0 ? (v8 = db_get_string_for_id(*(a2 + 16), *(v23 + 13)) != 0) : (v8 = 1), !v8 || !v22))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = *a1;
      *buf = 134217984;
      *&buf[4] = v11;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "### transfer oid: 0x%llx - could not resolve bundle and identifier", buf, 0xCu);
    }

    return 0;
  }

  ++*(a2 + 40);
  v9 = decodeDBOToDictionary(*(a2 + 16), a1, 0, 0, 0, 0, 0, 0, 2, *MEMORY[0x1E695E480]);
  v10 = v9;
  if (*(a2 + 8))
  {
    transfer_index_if_needed(a2, v9);
  }

  else
  {
    Count = CFDictionaryGetCount(v9);
    MEMORY[0x1EEE9AC00](v13);
    v14 = (&v22 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v14, 8 * Count);
    MEMORY[0x1EEE9AC00](v15);
    v16 = v14;
    bzero(v14, 8 * Count);
    CFDictionaryGetKeysAndValues(v10, v14, v14);
    if (Count >= 1)
    {
      do
      {
        v17 = *v14;
        if (!CFEqual(*v14, @"_kMDItemBundleID") && !CFEqual(v17, @"_kMDItemExternalID"))
        {
          v18 = CFGetTypeID(*v16);
          if (v18 != CFArrayGetTypeID())
          {
            CFDictionaryGetTypeID();
          }
        }

        ++v16;
        ++v14;
        --Count;
      }

      while (Count);
    }
  }

  CFRelease(v10);
  if (*(a2 + 24))
  {
    return 0;
  }

  v19 = a1[4];
  if (!v19 || !si_indexForDocId(*a2, a1[4]))
  {
    return 1;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v21 = *a1;
    *buf = 134218240;
    *&buf[4] = v21;
    v25 = 2048;
    v26 = v19;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### index delete oid: 0x%llx did: 0x%llx", buf, 0x16u);
  }

  v6 = 1;
  _CIDelete(v20);
  return v6;
}

void _SIDeleteBundles(uint64_t a1, const __CFArray *a2, unsigned int a3, const void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### delete bundles journal start", v20, 2u);
  }

  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  v9 = malloc_type_calloc(1uLL, 4 * Count + 52, 0x10A00404FE9ED91uLL);
  *v9 = a1;
  v9[4] = a3;
  if (a4)
  {
    *(v9 + 3) = _Block_copy(a4);
  }

  if (Count)
  {
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        bzero(v20, 0x400uLL);
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        if (CFStringGetCString(ValueAtIndex, v20, 1024, 0x8000100u))
        {
          v12 = strlen(v20);
          v13 = bundleIdHash(v20, v12 + 1);
          v14 = v9[11];
          v9[11] = v14 + 1;
          v9[v14 + 12] = v13;
        }
      }
    }

    v15 = v9[11];
    if ((a3 & 2) == 0 && v15)
    {
      v16 = bundleIdHash("com.apple.searchd", 0x12u);
      v17 = &v9[v15];
      LODWORD(v15) = v15 + 1;
      v9[11] = v15;
      v17[12] = v16;
    }

    if (!a1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    LODWORD(v15) = v9[11];
    if (!a1)
    {
LABEL_25:
      v9[10] = 22;
      v9[5] = 18;
      v18 = v9;
      v19 = 1;
      goto LABEL_26;
    }
  }

  if (!v15 || *(a1 + 2072) != 1 || !*(a1 + 1040))
  {
    goto LABEL_25;
  }

  *(v9 + 1) = *(a1 + 1192);
  if ((a3 & 4) == 0)
  {
    v9[5] = 0;
    si_enqueue_work(*(a1 + 1040), si_deleteBundleItems, v9);
    return;
  }

  v9[5] = 18;
  v18 = v9;
  v19 = 0;
LABEL_26:
  si_deleteBundleItems(v18, v19);
}

void si_deleteBundleItems(char *a1, int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 10);
    if (!v3)
    {
      *(a1 + 10) = 89;
      v3 = 89;
    }
  }

  else
  {
    v30 = 0;
    v4 = db_clear_docids_setup(*(a1 + 1));
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v5 = 0;
    memset(buf, 0, sizeof(buf));
    do
    {
      if (v5 != *(a1 + 5))
      {
        buf[v5] = _si_scheduler_suspend(*(*a1 + 8 * v5 + 864), "SpotlightIndex.c", 36040);
      }

      ++v5;
    }

    while (v5 != 18);
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v7 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
    v28 = HIDWORD(v7);
    v29 = v7;
    v27 = __PAIR64__(v8, v9);
    v10 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
    v11 = *(v10 + 312);
    v12 = *(v10 + 224);
    if (v12)
    {
      v12(*(v10 + 288));
    }

    v26 = v29;
    v25 = v28;
    v24 = v27;
    if (_setjmp(v10))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v23, 2u);
      }

      *(v10 + 312) = v11;
      CIOnThreadCleanUpReset(v24);
      dropThreadId(v26, 1, add_explicit + 1);
      CICleanUpReset(v26, HIDWORD(v24));
      v13 = 0;
    }

    else
    {
      v13 = db_clear_docids_matching_bundles(*(a1 + 1), v4, *(*a1 + 6592), a1 + 12, *(a1 + 11), delete_bundles_match, a1);
      v30 = 1;
      v14 = threadData[9 * v26 + 1] + 320 * v25;
      *(v14 + 312) = v11;
      v15 = *(v14 + 232);
      if (v15)
      {
        v15(*(v14 + 288));
      }

      dropThreadId(v26, 0, add_explicit + 1);
    }

    v16 = v30;
    db_clear_docids_cleanup(*(a1 + 1), v4);
    for (i = 0; i != -18; --i)
    {
      if (i + 17 != *(a1 + 5))
      {
        si_scheduler_resume(*(*a1 + 8 * i + 1000), *(&v38 + i + 1), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 36060);
      }
    }

    if (v16)
    {
      v18 = v13;
    }

    else
    {
      v18 = -1;
    }

    if (*(a1 + 10))
    {
      v19 = 1;
    }

    else
    {
      v19 = v18 == 0;
    }

    v20 = *(a1 + 10);
    if (!v19)
    {
      *(a1 + 10) = v18;
      v20 = v18;
    }

    v3 = v20;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 4);
    LODWORD(buf[0]) = 67109376;
    HIDWORD(buf[0]) = v3;
    LOWORD(buf[1]) = 2048;
    *(&buf[1] + 2) = v21;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### delete bundles complete res:%d matches:%lu", buf, 0x12u);
  }

  v22 = *(a1 + 3);
  if (v22)
  {
    (*(v22 + 16))(v22, *(a1 + 10));
    _Block_release(*(a1 + 3));
  }

  free(a1);
}

uint64_t delete_bundles_match(uint64_t *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 44) + ((*(a2 + 16) >> 1) & 1u) - 1;
  if (*(a2 + 44) + ((*(a2 + 16) >> 1) & 1) == 1)
  {
    return 0;
  }

  for (i = 48; *(a2 + i) != *(a1 + 1); i += 4)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  v16 = 0;
  v17 = 0;
  string_for_id = 0;
  if (!db_get_field(*(a2 + 8), a1, "_kMDItemExternalID", &v17, &v16))
  {
    *buf = 0;
    string_for_id = 0;
    if (!db_get_field(*(a2 + 8), a1, "_kMDItemBundleID", &v17, buf))
    {
      if ((*(v17 + 2) & 0x10) != 0)
      {
        string_for_id = db_get_string_for_id(*(a2 + 8), *(v17 + 13));
      }

      else
      {
        string_for_id = (v17 + 13);
      }
    }
  }

  ++*(a2 + 32);
  v7 = *(a2 + 16);
  v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v8)
    {
      v13 = *a1;
      v14 = a1[4];
      *buf = 134218754;
      *&buf[4] = v13;
      v19 = 2048;
      v20 = v14;
      v21 = 2080;
      v22 = string_for_id;
      v23 = 2080;
      v24 = v16;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### delete oid: 0x%llx did: 0x%llx %s %s", buf, 0x2Au);
    }

    return 0;
  }

  if (v8)
  {
    v9 = *a1;
    v10 = a1[4];
    *buf = 134218754;
    *&buf[4] = v9;
    v19 = 2048;
    v20 = v10;
    v21 = 2080;
    v22 = string_for_id;
    v23 = 2080;
    v24 = v16;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### delete oid: 0x%llx did: 0x%llx %s %s", buf, 0x2Au);
  }

  if (!a1[4] || !si_indexForDocId(*a2, a1[4]))
  {
    return 1;
  }

  v12 = 1;
  _CIDelete(v11);
  return v12;
}

uint64_t *_SIGetDocumentCount(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  itemCounts(*(a1 + 1392), &v10, &v8);
  result = itemCounts(*(a1 + 1384), &v9, &v7);
  if (a3)
  {
    *a3 = v7 + v8;
  }

  if (a2)
  {
    *a2 = v9 + v10 - (v7 + v8);
  }

  return result;
}

uint64_t SIExecuteResumeActivityCallback(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 2360);
    if (v2)
    {
      v3 = *(v2 + 136);
      if (v3)
      {
        return v3(a2);
      }
    }
  }

  return result;
}

char *_SIGetFieldNameForId(uint64_t a1, uint64_t a2)
{
  if (a1 && (v2 = *(a1 + 1192)) != 0)
  {
    return db_get_field_name_for_id(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t SISetHasPhotos(uint64_t result)
{
  if (result)
  {
    if ((*(result + 10112) & 1) == 0)
    {
      *(result + 10112) = 1;
      return SISetProperty(result, @"kSPHasPhotos", *MEMORY[0x1E695E4D0]);
    }
  }

  return result;
}

uint64_t SIHasPhotos(uint64_t result)
{
  if (result)
  {
    return *(result + 10112);
  }

  return result;
}

uint64_t SISetHasText(uint64_t result)
{
  if (result)
  {
    if ((*(result + 10113) & 1) == 0)
    {
      *(result + 10113) = 1;
      return SISetProperty(result, @"kSPHasText", *MEMORY[0x1E695E4D0]);
    }
  }

  return result;
}

uint64_t SIHasText(uint64_t result)
{
  if (result)
  {
    return *(result + 10113);
  }

  return result;
}

CFStringRef _SIDumpQueryInfo(CFStringRef result)
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v10 = 0u;
    v9 = 0u;
    v8 = 0u;
    v7 = 0u;
    *buffer = 0u;
    bzero(v5, 0x400uLL);
    bzero(cStr, 0x800uLL);
    data = v1[20].data;
    if (data)
    {
      CFStringGetCString(data, buffer, 256, 0x8000100u);
    }

    else
    {
      __sprintf_chk(buffer, 0, 0x100uLL, "(null)");
    }

    info = v1->info;
    if (info)
    {
      CFStringGetCString(info, v5, 1024, 0x8000100u);
    }

    else
    {
      __sprintf_chk(v5, 0, 0x400uLL, "(null)");
    }

    __sprintf_chk(cStr, 0, 0x800uLL, "qid:(%llu,%llu), pc:%d, live:%d, client:%s, queryString:%s", v1[19].isa, v1[19].info, HIDWORD(v1[4].length), (LODWORD(v1[6].info) >> 10) & 1, buffer, v5);
    return CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  }

  return result;
}

query_node *convertASTNodeToQueryNode(PRAstNode *a1, PRContext *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(PRAstNode *)a1 value])
    {
      if (([(PRAstNode *)a1 isIgnored]& 1) == 0)
      {
        v4 = [-[PRAstNode value](a1 "value")];
        if (v4)
        {
          v5 = v4;
          v47 = 0;
          v45 = 0u;
          *v46 = 0u;
          Attribs(&v45);
          v6 = v46[0];
          if ((*(a2 + 28) & 2) != 0)
          {
            if (v46[0])
            {
              v7 = 0;
              do
              {
                v27 = *(v6 + 10);
                if (v27 != 0.0)
                {
                  v28 = v6 + 16;
                  if (v6[39] < 0)
                  {
                    v28 = *v28;
                  }

                  QueryNode = createQueryNode(v28, v5, 112, 1, -1, v27, 0.0);
                  v7 = makeOrNode(v7, QueryNode);
                }

                v6 = *v6;
              }

              while (v6);
LABEL_66:
              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v46[0]);
              v30 = v45;
              *&v45 = 0;
              if (!v30)
              {
                return v7;
              }

              goto LABEL_82;
            }
          }

          else if (v46[0])
          {
            v7 = 0;
            do
            {
              v8 = v6 + 16;
              if (v6[39] < 0)
              {
                v8 = *v8;
              }

              v9 = createQueryNode(v8, v5, 112, 1, -1, 0.0, 0.0);
              v7 = makeOrNode(v7, v9);
              v6 = *v6;
            }

            while (v6);
            goto LABEL_66;
          }

          v7 = 0;
          goto LABEL_66;
        }
      }
    }

    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(PRAstNode *)a1 filterString])
    {
      v10 = [-[PRAstNode filterString](a1 "filterString")];
      if (v10)
      {
        query_node_with_ann = db_make_query_node_with_ann(v10, 0);
        v7 = query_node_with_ann;
        if (query_node_with_ann && (*(a2 + 28) & 2) != 0)
        {
          db_query_tree_apply_block(query_node_with_ann, __block_literal_global_877, 0);
        }

        return v7;
      }
    }

    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(PRAstNode *)a1 expression])
    {
      return 0;
    }

    *v40 = 0u;
    *v41 = 0u;
    v42 = 1065353216;
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    std::string::basic_string[abi:nn200100]<0>(&v54, "kMDItemAuthors");
    DWORD2(v55) = 1045220557;
    std::string::basic_string[abi:nn200100]<0>(&v56, "kMDItemAuthorEmailAddresses");
    DWORD2(v57) = 1041865114;
    std::unordered_map<std::string,float>::unordered_map(v44, &v54, 2);
    LODWORD(v45) = 1;
    std::unordered_map<std::string,float>::unordered_map(&v45 + 8, v44);
    std::string::basic_string[abi:nn200100]<0>(v50, "kMDItemRecipients");
    v51 = 1036831949;
    std::string::basic_string[abi:nn200100]<0>(v52, "kMDItemRecipientEmailAddresses");
    v53 = 1028443341;
    std::unordered_map<std::string,float>::unordered_map(__p, v50, 2);
    v48 = 2;
    std::unordered_map<std::string,float>::unordered_map(&v49, __p);
    std::unordered_map<int,std::unordered_map<std::string,float>>::unordered_map(&v37, &v45, 2);
    for (i = 7; i != -5; i -= 6)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v46[i - 2]);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(__p[2]);
    v13 = __p[0];
    __p[0] = 0;
    if (v13)
    {
      operator delete(v13);
    }

    for (j = 0; j != -8; j -= 4)
    {
      if (SHIBYTE(v52[j + 2]) < 0)
      {
        operator delete(v52[j]);
      }
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v44[2]);
    v15 = v44[0];
    v44[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }

    for (k = 0; k != -64; k -= 32)
    {
      if (*(&v57 + k + 7) < 0)
      {
        operator delete(*(&v56 + k));
      }
    }

    v17 = [(PRAstNode *)a1 fieldType];
    if (v17)
    {
      if (v17 != 1)
      {
        Attribs(&v45);
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(v40, &v45);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v45);
        goto LABEL_73;
      }

      if (!std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(v37, *(&v37 + 1), 2))
      {
        goto LABEL_73;
      }

      *&v45 = &TOK_ID_TO;
      v18 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v37, 2, &v45);
    }

    else
    {
      if (!std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(v37, *(&v37 + 1), 1))
      {
        goto LABEL_73;
      }

      *&v45 = &TOK_ID_FROM;
      v18 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v37, 1, &v45);
    }

    if (v40 != (v18 + 24))
    {
      LODWORD(v42) = *(v18 + 14);
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,float>,void *> *>>(v40, *(v18 + 5));
    }

LABEL_73:
    [(PRAstNode *)a1 expression:v37];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [objc_msgSend(-[PRAstNode expression](a1 "expression")];
      if (v31)
      {
        v7 = MsgAttribNode(*(a2 + 7), v41[0], v31);
        v32 = [-[PRAstNode originalKeyword](a1 "originalKeyword")];
        if (v32 && ([(PRAstNode *)a1 isIgnored]& 1) == 0)
        {
          v33 = createQueryNode("kMDItemTextContent", v32, 112, 1, -1, 0.0, 0.0);
          v34 = createQueryNode("kMDItemTextContent", v31, 112, 1, -1, 0.0, 0.0);
          v35 = makeAndNode(v33, v34);
          Node = makeOrNode(v7, v35);
LABEL_79:
          v7 = Node;
        }
      }

      else
      {
        v7 = 0;
      }

      std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::~__hash_table(&v37);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v41[0]);
      v30 = v40[0];
      v40[0] = 0;
      if (v30)
      {
LABEL_82:
        operator delete(v30);
        return v7;
      }

      return v7;
    }

    Node = convertASTNodeToQueryNode([(PRAstNode *)a1 expression], a2);
    goto LABEL_79;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (![(PRAstNode *)a1 children])
  {
    return 0;
  }

  if (![-[PRAstNode children](a1 "children")])
  {
    return 0;
  }

  v19 = [-[PRAstNode nodeType](a1 "nodeType")];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v20 = [(PRAstNode *)a1 children];
  v21 = [v20 countByEnumeratingWithState:&v54 objects:&v45 count:16];
  if (!v21)
  {
    return 0;
  }

  v7 = 0;
  v22 = *v55;
  do
  {
    for (m = 0; m != v21; ++m)
    {
      if (*v55 != v22)
      {
        objc_enumerationMutation(v20);
      }

      v24 = convertASTNodeToQueryNode(*(*(&v54 + 1) + 8 * m), a2);
      if (v24)
      {
        if (v19)
        {
          v25 = makeAndNode(v7, v24);
        }

        else
        {
          v25 = makeOrNode(v7, v24);
        }

        v7 = v25;
      }
    }

    v21 = [v20 countByEnumeratingWithState:&v54 objects:&v45 count:16];
  }

  while (v21);
  return v7;
}

void sub_1C2946BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::~__hash_table(&a9);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

_WORD *MessagesSemanticNode(const __CFDictionary *a1, void *a2, NSString *a3, NSString *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1 || !CFDictionaryContainsKey(a1, @"vec_dimensions") || !CFDictionaryContainsKey(a1, @"vec_data_format") || !CFDictionaryContainsKey(a1, @"vec_version"))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 138412290;
      v43 = a3;
      v13 = "%@ Skipping ANN node (ERROR: missing essential ann params)";
      goto LABEL_14;
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if (!CFDictionaryContainsKey(a1, @"vectors"))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(19);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v42 = 138412290;
    v43 = a3;
    v13 = "%@ Skipping ANN node (ERROR: missing vectors in ann params)";
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(a1, @"vectors");
  if (!Value || (v8 = Value, ![Value count]))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(19);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v42 = 138412290;
    v43 = a3;
    v13 = "%@ Skipping ANN node (ERROR: missing query embedding)";
    goto LABEL_14;
  }

  v9 = [v8 objectAtIndexedSubscript:0];
  if (!v9 || (v10 = v9, [v9 length] <= 1))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 138412290;
      v43 = a3;
      v13 = "%@ Skipping ANN node (ERROR: embedding has 0 dimensionality)";
LABEL_14:
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, v13, &v42, 0xCu);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v16 = CFDictionaryGetValue(a1, @"vec_dimensions");
  v17 = CFDictionaryGetValue(a1, @"vec_data_format");
  v18 = CFDictionaryGetValue(a1, @"vec_version");
  [a2 isEqualToString:@"en"];
  v19 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  v20 = 1.4;
  if (v19)
  {
    v21 = v19;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 floatValue];
      v20 = v22;
      v23 = *__error();
      v24 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v42 = 138412546;
        v43 = a3;
        v44 = 2048;
        v45 = v20;
        _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "%@ Using user specified ann threshold: %f", &v42, 0x16u);
      }

      *__error() = v23;
    }
  }

  v25 = [v18 intValue];
  v26 = [v16 intValue];
  v27 = [v17 intValue];
  v28 = [v10 length];
  if (v28 <= 1)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 138412290;
      v43 = a3;
      v31 = "%@ Skipping ANN node (ERROR: embedding has 0 dimensionality)";
LABEL_47:
      _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, v31, &v42, 0xCu);
      goto LABEL_48;
    }

    goto LABEL_48;
  }

  v32 = v28;
  v33 = [v10 bytes];
  if (!v33)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 138412290;
      v43 = a3;
      v31 = "%@ Skipping ANN node (ERROR: Failed to get bytes from embedding)";
      goto LABEL_47;
    }

LABEL_48:
    *__error() = v29;
LABEL_49:
    v11 = *__error();
    v12 = _SILogForLogForCategory(19);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v42 = 138412290;
    v43 = a3;
    v13 = "%@ Skipping ANN node (ERROR: failed to create it)";
    goto LABEL_14;
  }

  v34 = v33;
  if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
  {
    ++sTotal;
  }

  v35 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
  if (!v35)
  {
    _log_fault_for_malloc_failure();
  }

  *v35 = strdup("_kMDItemPrimaryTextEmbedding");
  *(v35 + 6) = 15;
  v35[16] = v20;
  *(v35 + 15) = v26 & 3 | (4 * (v27 & 3)) | (v25 << 25) | 0x50;
  *(v35 + 10) = 5;
  *(v35 + 40) |= 0x10000u;
  v36 = malloc_type_zone_malloc(queryZone, v32 & 0xFFFFFFFFFFFFFFFELL, 0xA4971684uLL);
  if (!v36)
  {
    _log_fault_for_malloc_failure();
  }

  v37 = 0;
  *(v35 + 37) = v36;
  if (v32 >> 1 <= 1)
  {
    v38 = 1;
  }

  else
  {
    v38 = v32 >> 1;
  }

  do
  {
    *(*(v35 + 37) + 2 * v37) = *(v34 + 2 * v37);
    ++v37;
  }

  while (v38 != v37);
  if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
  {
    ++sTotal;
  }

  v39 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (!v39)
  {
    _log_fault_for_malloc_failure();
    MEMORY[0x30] = 4;
    MEMORY[0x10] = v35;
    goto LABEL_49;
  }

  v14 = v39;
  v39[24] = 4;
  *(v39 + 2) = v35;
  v11 = *__error();
  v40 = _SILogForLogForCategory(19);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [v10 length];
    v42 = 138413058;
    v43 = a3;
    v44 = 2048;
    *&v45 = v41 >> 1;
    v46 = 2048;
    v47 = v20;
    v48 = 1024;
    v49 = 5;
    _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "%@ Adding ANN node (dim: %lu, thresh: %f, num results: %d)", &v42, 0x26u);
  }

LABEL_16:
  *__error() = v11;
  return v14;
}

uint64_t std::unordered_map<std::string,float>::unordered_map(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(a1, a2, a2);
      a2 += 32;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

void *___ZL31MessagePopulateFiltersFromParsePK14__CFDictionaryP14NSMutableArrayIP8NSStringEPS2_IP7NSValueES4__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 count];
  if (result)
  {
    v9 = [a2 objectForKeyedSubscript:@"kQPDescription"];
    result = [v9 length];
    if (result)
    {
      if ([a2 objectForKeyedSubscript:@"kQPDateExtension"])
      {
        if ([*(*(*(a1 + 48) + 8) + 40) length])
        {
          [*(a1 + 32) addObject:*(*(*(a1 + 48) + 8) + 40)];
          [*(a1 + 40) addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", a3, a4)}];
        }

        *(*(*(a1 + 48) + 8) + 40) = 0;
      }

      if ([a2 objectForKeyedSubscript:@"kQPDate"] || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPPerson") || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPSender") || (result = objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPRecipient")) != 0)
      {
        [*(a1 + 32) addObject:v9];
        [*(a1 + 40) addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", a3, a4)}];
        result = [a2 objectForKeyedSubscript:@"kQPDate"];
        if (result)
        {
          *(*(*(a1 + 48) + 8) + 40) = v9;
        }
      }
    }
  }

  return result;
}

void std::vector<MessageTokenInfo>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    v15 = &v13[-2 * (v8 >> 5)];
    memcpy(v15, v7, v8);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

uint64_t ___ZL18MessageNodeFromStrP9PRContextPKcf_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(v2 + 52) = *(a1 + 32);
      *(v2 + 56) = 0;
    }
  }

  return a2;
}

void Attribs(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemAttachmentNames");
  v4 = 1045220557;
  std::string::basic_string[abi:nn200100]<0>(v5, "kMDItemAuthors");
  v6 = 1053609165;
  std::string::basic_string[abi:nn200100]<0>(v7, "kMDItemAuthorAddresses");
  v8 = 1053609165;
  std::string::basic_string[abi:nn200100]<0>(v9, "kMDItemDescription");
  v10 = 1053609165;
  std::string::basic_string[abi:nn200100]<0>(v11, "kMDItemDisplayName");
  v12 = 1036831949;
  std::string::basic_string[abi:nn200100]<0>(v13, "kMDItemFilename");
  v14 = 1036831949;
  std::string::basic_string[abi:nn200100]<0>(v15, "kMDItemPhotosPeopleNames ");
  v16 = 1061997773;
  std::string::basic_string[abi:nn200100]<0>(v17, "kMDItemPhotosPeopleNamesAlternatives");
  v18 = 1061997773;
  std::string::basic_string[abi:nn200100]<0>(v19, "kMDItemPhotosSceneClassificationLabels");
  v20 = 1058642330;
  std::string::basic_string[abi:nn200100]<0>(v21, "kMDItemPhotosSceneClassificationSynonyms");
  v22 = 1058642330;
  std::string::basic_string[abi:nn200100]<0>(v23, "kMDItemRecipients");
  v24 = 1045220557;
  std::string::basic_string[abi:nn200100]<0>(v25, "kMDItemRecipientAddresses");
  v26 = 1045220557;
  std::string::basic_string[abi:nn200100]<0>(v27, "kMDItemTextContent");
  v28 = 1058642330;
  std::string::basic_string[abi:nn200100]<0>(v29, "kMDItemTitle");
  v30 = 1036831949;
  std::string::basic_string[abi:nn200100]<0>(v31, "kMDItemURL");
  v32 = 1036831949;
  std::unordered_map<std::string,float>::unordered_map(a1, v3, 15);
  v2 = 60;
  do
  {
    if (*(&v3[v2 - 1] - 1) < 0)
    {
      operator delete(v3[v2 - 4]);
    }

    v2 -= 4;
  }

  while (v2 * 8);
}

{
  v25 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemSubject");
  v4 = 1041865114;
  std::string::basic_string[abi:nn200100]<0>(v5, "kMDItemTextContent");
  v6 = 1028443341;
  std::string::basic_string[abi:nn200100]<0>(v7, "kMDItemAuthors");
  v8 = 1041865114;
  std::string::basic_string[abi:nn200100]<0>(v9, "_kMDItemAuthorEmailAddressesLocalParts");
  v10 = 1036831950;
  std::string::basic_string[abi:nn200100]<0>(v11, "kMDItemAuthorEmailAddresses");
  v12 = 0;
  std::string::basic_string[abi:nn200100]<0>(v13, "kMDItemRecipients");
  v14 = 1028443341;
  std::string::basic_string[abi:nn200100]<0>(v15, "_kMDItemPrimaryRecipientEmailAddressesLocalParts");
  v16 = 1028443341;
  std::string::basic_string[abi:nn200100]<0>(v17, "kMDItemRecipientEmailAddresses");
  v18 = 0;
  std::string::basic_string[abi:nn200100]<0>(v19, "kMDItemPrimaryRecipientEmailAddresses");
  v20 = 0;
  std::string::basic_string[abi:nn200100]<0>(v21, "kMDItemAttachmentNames");
  v22 = 0;
  std::string::basic_string[abi:nn200100]<0>(v23, "kMDItemAttachmentTypes");
  v24 = 0;
  std::unordered_map<std::string,float>::unordered_map(a1, v3, 11);
  v2 = 44;
  do
  {
    if (*(&v3[v2 - 1] - 1) < 0)
    {
      operator delete(v3[v2 - 4]);
    }

    v2 -= 4;
  }

  while (v2 * 8);
}

void sub_1C2947918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 471);
  v13 = -480;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t std::unordered_map<int,std::unordered_map<std::string,float>>::unordered_map(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[12 * a3]; i += 12)
    {
      v4 = *i;
      v5 = *(a1 + 8);
      if (!*&v5)
      {
        goto LABEL_20;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (*&v5 <= v4)
        {
          v7 = v4 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & v4;
      }

      v8 = *(*a1 + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        v10 = v9[1];
        if (v10 == v4)
        {
          break;
        }

        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v5)
          {
            v10 %= *&v5;
          }
        }

        else
        {
          v10 &= *&v5 - 1;
        }

        if (v10 != v7)
        {
          goto LABEL_20;
        }

LABEL_19:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_20;
        }
      }

      if (*(v9 + 4) != v4)
      {
        goto LABEL_19;
      }
    }
  }

  return a1;
}

void sub_1C2947C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_set<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_set<std::string>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::~__hash_table(v3);
  _Unwind_Resume(a1);
}

char *std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1C2947EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_set<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_set<std::string>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,float>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 16), (v2 + 2));
        *(v6 + 40) = *(v2 + 10);
        v8 = *v6;
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (v8)
        {
          v9 = v2 == 0;
        }

        else
        {
          v9 = 1;
        }

        v6 = v8;
      }

      while (!v9);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

query_node *MsgAttribNode(char a1, uint64_t *a2, char *__s)
{
  v4 = a2;
  if ((a1 & 2) == 0)
  {
    if (a2)
    {
      v5 = 0;
      do
      {
        v6 = (v4 + 2);
        if (*(v4 + 39) < 0)
        {
          v6 = *v6;
        }

        QueryNode = createQueryNode(v6, __s, 112, 1, -1, 0.0, 0.0);
        v5 = makeOrNode(v5, QueryNode);
        v4 = *v4;
      }

      while (v4);
      return v5;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v8 = *(v4 + 10);
    if (v8 != 0.0)
    {
      v9 = (v4 + 2);
      if (*(v4 + 39) < 0)
      {
        v9 = *v9;
      }

      v10 = createQueryNode(v9, __s, 112, 1, -1, v8, 0.0);
      v5 = makeOrNode(v5, v10);
    }

    v4 = *v4;
  }

  while (v4);
  return v5;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  if (v5 >= 0)
  {
    v6 = (a2 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 39);
  }

  else
  {
    v7 = *(a2 + 24);
  }

  v32 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  *(v4 - 1) = v32;
  v8 = *(a1 + 8);
  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v8 || (v10 * v8) < v9)
  {
    v11 = 1;
    if (v8 >= 3)
    {
      v11 = (v8 & (v8 - 1)) != 0;
    }

    v12 = v11 | (2 * v8);
    v13 = vcvtps_u32_f32(v9 / v10);
    if (v12 <= v13)
    {
      prime = v13;
    }

    else
    {
      prime = v12;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v8 = *(a1 + 8);
    }

    if (prime > v8)
    {
LABEL_19:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    if (prime < v8)
    {
      v15 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v8 < 3 || (v16 = vcnt_s8(v8), v16.i16[0] = vaddlv_u8(v16), v16.u32[0] > 1uLL))
      {
        v15 = std::__next_prime(v15);
      }

      else
      {
        v17 = 1 << -__clz(v15 - 1);
        if (v15 >= 2)
        {
          v15 = v17;
        }
      }

      if (prime <= v15)
      {
        prime = v15;
      }

      if (prime >= v8)
      {
        v8 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_19;
        }

        v18 = *a1;
        *a1 = 0;
        if (v18)
        {
          operator delete(v18);
        }

        v8 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v19 = vcnt_s8(v8);
  v19.i16[0] = vaddlv_u8(v19);
  v20 = v19.u32[0];
  if (v19.u32[0] > 1uLL)
  {
    v21 = v32;
    if (v8 <= v32)
    {
      v21 = v32 % v8;
    }
  }

  else
  {
    v21 = (v8 - 1) & v32;
  }

  v22 = *(*a1 + 8 * v21);
  v31 = *a1;
  if (v22)
  {
    v23 = *v22;
    if (*v22)
    {
      v24 = 0;
      do
      {
        v25 = v23;
        v26 = v23[1];
        if (v20 > 1)
        {
          v27 = v26;
          if (v26 >= v8)
          {
            v27 = v26 % v8;
          }
        }

        else
        {
          v27 = v26 & (v8 - 1);
        }

        if (v27 != v21)
        {
          break;
        }

        v28 = v26 == v32 && std::equal_to<std::string>::operator()[abi:nn200100](v25 + 2, v4);
        if ((v24 & (v28 != (v24 & 1))) != 0)
        {
          break;
        }

        v24 |= v28 != (v24 & 1);
        v23 = *v25;
        v22 = v25;
      }

      while (*v25);
    }
  }

  v29 = *(a2 + 8);
  if (v20 > 1)
  {
    if (v29 >= v8)
    {
      v29 %= v8;
    }
  }

  else
  {
    v29 &= v8 - 1;
  }

  if (!v22)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v31[v29] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_71;
    }

    v30 = *(*a2 + 8);
    if (v20 > 1)
    {
      if (v30 >= v8)
      {
        v30 %= v8;
      }
    }

    else
    {
      v30 &= v8 - 1;
    }

LABEL_70:
    *(*a1 + 8 * v30) = a2;
    goto LABEL_71;
  }

  *a2 = *v22;
  *v22 = a2;
  if (*a2)
  {
    v30 = *(*a2 + 8);
    if (v20 > 1)
    {
      if (v30 >= v8)
      {
        v30 %= v8;
      }
    }

    else
    {
      v30 &= v8 - 1;
    }

    if (v30 != v29)
    {
      goto LABEL_70;
    }
  }

LABEL_71:
  ++*(a1 + 24);
}

double ___ZL19convertQPFilterNodeP17PRAstQPFilterNodeP9PRContext_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *&result = 1045220557;
      *(v2 + 52) = 1045220557;
    }
  }

  return result;
}

uint64_t map_case(uint64_t result)
{
  if (result > 0x7F)
  {
    if ((result + 223) < 0x3Au || result < 0x587 || (result - 7680) <= 0x6E9u)
    {
      v6 = v1;
      v7 = v2;
      __key = result;
      v3 = result;
      v4 = bsearch(&__key, &case_mapping_table, 0x57AuLL, 4uLL, case_cmp);
      result = v3;
      if (v4)
      {
        return v4[1];
      }
    }
  }

  else if ((result - 97) > 0x19)
  {
    return tolower_map[result];
  }

  else
  {
    return toupper_map[result];
  }

  return result;
}

uint64_t _SICrashStateDump(const char *a1, FILE *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v41 = 0;
  v42 = -1;
  v39 = -1;
  size = 0;
  v38 = 0;
  v3 = open(a1, 256);
  if (v3 == -1)
  {
    __error();
    fprintf(a2, "Failed to open file %s. errno = %d\n");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = v3;
    v5 = 0;
    v32 = 0;
    v33 = -1;
    v29 = -1;
    v31 = a2;
    v30 = v3;
    while (read(v4, &v43, 4uLL) == 4)
    {
      if (v43 == 1127364148)
      {
        v6 = 1;
      }

      else
      {
        if (v43 != 875967043)
        {
          fprintf(a2, "Invalid crash file. magic=0x%x\n");
          return 0xFFFFFFFFLL;
        }

        v6 = 0;
        v43 = 1127364148;
      }

      if (read(v4, &size, 8uLL) != 8)
      {
        fprintf(a2, "Invalid header. len=%ld\n");
        return 0xFFFFFFFFLL;
      }

      v7 = malloc_type_malloc(size, 0x100004077774924uLL);
      if (!v7)
      {
        fwrite("Malloc failed\n", 0xEuLL, 1uLL, a2);
        return 4294967294;
      }

      v8 = v7;
      v9 = read(v4, v7, size);
      if (v9 != size)
      {
        fprintf(a2, "Read failed. len=%ld\n");
LABEL_37:
        free(v8);
        return 4294967294;
      }

      if (v9 <= 5)
      {
        fprintf(a2, "Read failed: len=%ld<6\n");
        goto LABEL_37;
      }

      if ((v6 & 1) == 0)
      {
        for (i = 0; i != 48; i += 16)
        {
          *&v8[i] = vrev64q_s8(*&v8[i]);
        }
      }

      v8[v9 - 1] = 0;
      v35 = *(v8 + 1);
      v36 = *v8;
      v34 = *(v8 + 2);
      v44[0] = *(v8 + 3);
      v11 = *(v8 + 4);
      v12 = *(v8 + 5);
      v13 = malloc_type_malloc(v11, 0x100004077774924uLL);
      v14 = malloc_type_malloc(v12, 0x100004077774924uLL);
      v16 = v8 + 48;
      v15 = v8[48];
      v37 = v5;
      if (v15 == 43)
      {
        v16 = v8 + 49;
        ++v32;
        v38 = v44[0];
        if (v29 == -1)
        {
          v39 = v44[0];
          v17 = -49;
          v29 = v44[0];
        }

        else
        {
          v17 = -49;
        }
      }

      else
      {
        v17 = -48;
      }

      v18 = size;
      v19 = v17 - (v12 + v11);
      v20 = malloc_type_malloc(v19 + size, 0x100004077774924uLL);
      if (v13)
      {
        memcpy(v13, v16, v11);
      }

      v21 = &v16[v11];
      if (v14)
      {
        memcpy(v14, v21, v12);
      }

      if (v20)
      {
        memcpy(v20, &v21[v12], v19 + v18);
      }

      v41 = v44[0];
      if (v33 == -1)
      {
        v42 = v44[0];
        v33 = v44[0];
      }

      v5 = v37 + 1;
      *v46 = 0;
      v47 = 0;
      v49 = 0;
      v48 = 0;
      v22 = localtime(v44);
      strftime(v46, 0x1AuLL, "%Y-%m-%d %H:%M:%S%z", v22);
      a2 = v31;
      fprintf(v31, "[%16s] crashed pc:0x%08lx, addr:%p, sig:0x%08lx, compact:%d, build:%s, spotlight_version:%s, path:%s\n", v46, v36, v35, v34, v15 == 43, v13, v14, v20);
      free(v13);
      free(v14);
      free(v20);
      free(v8);
      v4 = v30;
    }

    if (v5)
    {
      *v46 = 0;
      v47 = 0;
      v49 = 0;
      v48 = 0;
      v23 = localtime(&v41);
      strftime(v46, 0x1AuLL, "%Y-%m-%d %H:%M:%S%z", v23);
      if (v5 == 1)
      {
        fprintf(a2, "Detected crash at %s\n");
      }

      else
      {
        memset(v44, 0, sizeof(v44));
        v45 = 0;
        v25 = localtime(&v42);
        strftime(v44, 0x1AuLL, "%Y-%m-%d %H:%M:%S%z", v25);
        if (v41 <= v42)
        {
          v26 = 1.79769313e308;
        }

        else
        {
          v26 = (24 * v5) * 3600.0 / (v41 - v42);
        }

        fprintf(a2, "Detected %d crashes from %s to %s in total. crash rate %.2f/day\n", v5, v44, v46, v26);
        if (v32 >= 1)
        {
          v27 = localtime(&v38);
          strftime(v46, 0x1AuLL, "%Y-%m-%d %H:%M:%S%z", v27);
          if (v32 == 1)
          {
            fprintf(a2, "Detected compact crash at %s\n");
          }

          else
          {
            v28 = localtime(&v39);
            strftime(v44, 0x1AuLL, "%Y-%m-%d %H:%M:%S%z", v28);
            fprintf(a2, "Detected %d compact crashes from %s to %s in total. compact crash rate %.2f/day\n");
          }
        }
      }
    }

    else
    {
      fwrite("No crash detected\n", 0x12uLL, 1uLL, a2);
    }

    close(v4);
    return 0;
  }
}

void ScopeLogger::ScopeLogger(ScopeLogger *this, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  *this = a2;
  v4 = *__error();
  v5 = _SILogForLogForCategory(8);
  v6 = 2 * (dword_1EBF46AEC < 4);
  if (os_log_type_enabled(v5, v6))
  {
    LODWORD(v7.tv_sec) = 136315138;
    *(&v7.tv_sec + 4) = a2;
    _os_log_impl(&dword_1C278D000, v5, v6, "%s entry", &v7, 0xCu);
  }

  *__error() = v4;
  v7.tv_sec = 0;
  v7.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v7);
  *(this + 1) = v7.tv_nsec + 1000000000 * v7.tv_sec;
}

void DocStore::DocStore(DocStore *this, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  *this = a2;
  *(this + 1) = -1;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 850045863;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  *(this + 15) = 1;
  operator new();
}

void DocStore::~DocStore(DocStore *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2[7];
    if (v3)
    {
      v2[8] = v3;
      operator delete(v3);
    }

    v4 = v2[4];
    if (v4)
    {
      v2[5] = v4;
      operator delete(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      v2[2] = v5;
      operator delete(v5);
    }

    MEMORY[0x1C691FEF0](v2, 0x1010C40CE421770);
  }

  v6 = *(this + 1);
  if ((v6 & 0x80000000) == 0)
  {
    close(v6);
  }

  v7 = *(this + 23);
  if (v7)
  {
    FileBackedBloomMap::unmap(*(this + 23));
    MEMORY[0x1C691FEF0](v7, 0x1010C4095F1AE09);
  }

  v8 = *(this + 44);
  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
  }

  v9 = *(this + 21);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 19);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 17);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  std::mutex::~mutex((this + 40));
  v12 = *(this + 2);
  if (v12)
  {
    v13 = *(this + 3);
    v14 = *(this + 2);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 9);
        v13 -= 4;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(this + 2);
    }

    *(this + 3) = v12;
    operator delete(v14);
  }
}

void ScopeLogger::~ScopeLogger(ScopeLogger *this)
{
  v10 = *MEMORY[0x1E69E9840];
  *v9 = 0;
  *&v9[8] = 0;
  clock_gettime(_CLOCK_REALTIME, v9);
  v2 = *v9;
  v3 = *&v9[8];
  v4 = *__error();
  v5 = _SILogForLogForCategory(8);
  v6 = 2 * (dword_1EBF46AEC < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *this;
    v8 = (v3 + 1000000000 * v2 - *(this + 1)) * 0.000001;
    *v9 = 136315394;
    *&v9[4] = v7;
    *&v9[12] = 2048;
    *&v9[14] = v8;
    _os_log_impl(&dword_1C278D000, v5, v6, "%s exit; call took %.6fms", v9, 0x16u);
  }

  *__error() = v4;
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

DocStore *DocStore::init_file_backed_bloom_map(DocStore *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!*(this + 23))
  {
    v1 = this;
    strcpy(path, "tmp.XXXXXX");
    v2 = mkstempsat_np(*this, path, 0);
    if ((v2 & 0x80000000) == 0)
    {
      v3 = v2;
      unlinkat(*v1, path, 0);
      *(v1 + 44) = v3;
      *(v1 + 23) = 0;
      operator new();
    }

    v4 = *__error();
    v5 = *__error();
    v6 = _SILogForLogForCategory(8);
    v7 = dword_1EBF46AEC < 3;
    if (os_log_type_enabled(v6, (dword_1EBF46AEC < 3)))
    {
      v8 = 136315138;
      v9 = strerror(v4);
      _os_log_impl(&dword_1C278D000, v6, v7, "*warn* init_file_backed_bloom_map: mkstempsat_np: %s", &v8, 0xCu);
    }

    this = __error();
    *this = v5;
  }

  return this;
}

void std::vector<DocStore::ColdShardDescriptor>::push_back[abi:nn200100](void ***a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 59))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v11 = 32 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(v11 + 24) = *(a2 + 12);
    v6 = (32 * v7 + 32);
    v13 = *a1;
    v12 = a1[1];
    v14 = (32 * v7 + *a1 - v12);
    if (*a1 != v12)
    {
      v15 = *a1;
      v16 = (32 * v7 + *a1 - v12);
      do
      {
        v17 = *v15;
        *(v16 + 2) = v15[2];
        *v16 = v17;
        v15[1] = 0;
        v15[2] = 0;
        *v15 = 0;
        *(v16 + 12) = *(v15 + 12);
        v15 += 4;
        v16 += 32;
      }

      while (v15 != v12);
      do
      {
        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        v13 += 4;
      }

      while (v13 != v12);
    }

    v18 = *a1;
    *a1 = v14;
    a1[1] = v6;
    a1[2] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(v3 + 12) = *(a2 + 12);
    v6 = (v3 + 32);
  }

  a1[1] = v6;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(__int128 *a1, __int128 *a2, uint64_t a3, char a4)
{
  v198 = *MEMORY[0x1E69E9840];
  while (2)
  {
    v8 = (a2 - 24);
    v191 = a2 - 3;
    v9 = (a2 - 72);
    v10 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v10;
          v11 = a2 - v10;
          v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
          v13 = v12 - 2;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v127 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3, a1);
                v128 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1 + 3);
                if (v127)
                {
                  if (v128)
                  {
                    goto LABEL_116;
                  }

                  v188 = *a1;
                  v195 = *(a1 + 2);
                  v194 = v188;
                  *a1 = *(a1 + 24);
                  *(a1 + 2) = *(a1 + 5);
                  *(a1 + 24) = v194;
                  *(a1 + 5) = v195;
                  if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1 + 3))
                  {
                    return;
                  }

                  v131 = *(a1 + 24);
                  v194 = v131;
                  v132 = *(a1 + 5);
                  v195 = v132;
                  v189 = *(a2 - 1);
                  *(a1 + 24) = *v8;
                  *(a1 + 5) = v189;
LABEL_117:
                  *(a2 - 1) = v132;
                  *v8 = v131;
                  return;
                }

                if (!v128)
                {
                  return;
                }

                v194 = *(a1 + 24);
                v178 = v194;
                v195 = *(a1 + 5);
                v179 = v195;
                v180 = *(a2 - 1);
                *(a1 + 24) = *v8;
                *(a1 + 5) = v180;
                *(a2 - 1) = v179;
                *v8 = v178;
LABEL_173:
                if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3, a1))
                {
                  v181 = *a1;
                  v195 = *(a1 + 2);
                  v194 = v181;
                  *a1 = *(a1 + 24);
                  *(a1 + 2) = *(a1 + 5);
                  *(a1 + 24) = v194;
                  *(a1 + 5) = v195;
                }

                return;
              case 4:

                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
                return;
              case 5:
                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
                if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1 + 9))
                {
                  return;
                }

                v194 = *(a1 + 72);
                v119 = v194;
                v195 = *(a1 + 11);
                v120 = v195;
                v121 = *(a2 - 1);
                *(a1 + 72) = *v8;
                *(a1 + 11) = v121;
                *(a2 - 1) = v120;
                *v8 = v119;
                if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 9, a1 + 6))
                {
                  return;
                }

                v122 = *(a1 + 8);
                v123 = a1[3];
                a1[3] = *(a1 + 72);
                *(a1 + 8) = *(a1 + 11);
                *(a1 + 72) = v123;
                *(a1 + 11) = v122;
                if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 6, a1 + 3))
                {
                  return;
                }

                v124 = *(a1 + 5);
                v125 = *(a1 + 24);
                *(a1 + 24) = a1[3];
                *(a1 + 5) = *(a1 + 8);
                a1[3] = v125;
                *(a1 + 8) = v124;
                goto LABEL_173;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return;
            }

            if (v12 == 2)
            {
              if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1))
              {
                return;
              }

LABEL_116:
              v129 = *a1;
              v195 = *(a1 + 2);
              v194 = v129;
              v130 = *v8;
              *(a1 + 2) = *(a2 - 1);
              *a1 = v130;
              v131 = v194;
              v132 = v195;
              goto LABEL_117;
            }
          }

          if (v11 <= 575)
          {
            v133 = (a1 + 24);
            v135 = a1 == a2 || v133 == a2;
            if (a4)
            {
              if (!v135)
              {
                v136 = 0;
                v137 = a1;
                do
                {
                  v138 = v137;
                  v137 = v133;
                  if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v133, v138))
                  {
                    v139 = *v137;
                    v195 = *(v137 + 16);
                    v194 = v139;
                    *(v137 + 8) = 0;
                    *(v137 + 16) = 0;
                    *v137 = 0;
                    v140 = v136;
                    while (1)
                    {
                      v141 = a1 + v140;
                      *(v141 + 24) = *(a1 + v140);
                      *(v141 + 5) = *(a1 + v140 + 16);
                      v141[23] = 0;
                      *v141 = 0;
                      if (!v140)
                      {
                        break;
                      }

                      v140 -= 24;
                      if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v194, (a1 + v140)))
                      {
                        v142 = a1 + v140 + 24;
                        goto LABEL_136;
                      }
                    }

                    v142 = a1;
LABEL_136:
                    v143 = v194;
                    *(v142 + 16) = v195;
                    *v142 = v143;
                  }

                  v133 = (v137 + 24);
                  v136 += 24;
                }

                while ((v137 + 24) != a2);
              }
            }

            else if (!v135)
            {
              do
              {
                v182 = a1;
                a1 = v133;
                if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v133, v182))
                {
                  v183 = *a1;
                  v195 = *(a1 + 2);
                  v194 = v183;
                  *(a1 + 1) = 0;
                  *(a1 + 2) = 0;
                  *a1 = 0;
                  v184 = a1;
                  do
                  {
                    v185 = v184 - 24;
                    *v184 = *(v184 - 24);
                    *(v184 + 16) = *(v184 - 8);
                    *(v184 - 1) = 0;
                    *(v184 - 24) = 0;
                    v186 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v194, (v184 - 48));
                    v184 = v185;
                  }

                  while (v186);
                  v187 = v194;
                  *(v185 + 16) = v195;
                  *v185 = v187;
                }

                v133 = (a1 + 24);
              }

              while ((a1 + 24) != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v192 = a2;
              v144 = v13 >> 1;
              v145 = v13 >> 1;
              do
              {
                v146 = v145;
                if (v144 >= v145)
                {
                  v147 = (2 * v145) | 1;
                  v148 = a1 + 24 * v147;
                  if (2 * v145 + 2 < v12 && std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3 * v147, v148 + 3))
                  {
                    v148 += 24;
                    v147 = 2 * v146 + 2;
                  }

                  v149 = a1 + 3 * v146;
                  if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v148, v149))
                  {
                    v150 = *v149;
                    v195 = v149[2];
                    v194 = v150;
                    v149[1] = 0;
                    v149[2] = 0;
                    *v149 = 0;
                    do
                    {
                      v151 = v148;
                      v152 = *v148;
                      v149[2] = *(v148 + 2);
                      *v149 = v152;
                      v148[23] = 0;
                      *v148 = 0;
                      if (v144 < v147)
                      {
                        break;
                      }

                      v153 = (2 * v147) | 1;
                      v148 = a1 + 24 * v153;
                      v154 = 2 * v147 + 2;
                      if (v154 < v12 && std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3 * v153, v148 + 3))
                      {
                        v148 += 24;
                        v153 = v154;
                      }

                      v149 = v151;
                      v147 = v153;
                    }

                    while (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v148, &v194));
                    v155 = v194;
                    v151[2] = v195;
                    *v151 = v155;
                  }
                }

                v145 = v146 - 1;
              }

              while (v146);
              v156 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
              v157 = v192;
              do
              {
                v158 = 0;
                v159 = v157;
                v190 = *a1;
                *&v196 = *(a1 + 1);
                *(&v196 + 7) = *(a1 + 15);
                v193 = *(a1 + 23);
                *(a1 + 1) = 0;
                *(a1 + 2) = 0;
                *a1 = 0;
                v160 = a1;
                do
                {
                  v161 = v160 + 24 * v158;
                  v162 = v161 + 24;
                  v163 = (2 * v158) | 1;
                  v164 = 2 * v158 + 2;
                  if (v164 < v156)
                  {
                    v165 = v161 + 48;
                    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>((v161 + 24), (v161 + 48)))
                    {
                      v162 = v165;
                      v163 = v164;
                    }
                  }

                  v166 = *v162;
                  *(v160 + 16) = *(v162 + 16);
                  *v160 = v166;
                  *(v162 + 23) = 0;
                  *v162 = 0;
                  v160 = v162;
                  v158 = v163;
                }

                while (v163 <= (v156 - 2) / 2);
                if (v162 == (v159 - 24))
                {
                  v157 = (v159 - 24);
                  *v162 = v190;
                  v176 = *(&v196 + 7);
                  *(v162 + 8) = v196;
                  *(v162 + 15) = v176;
                  *(v162 + 23) = v193;
                }

                else
                {
                  v167 = *(v159 - 24);
                  v157 = (v159 - 24);
                  *(v162 + 16) = *(v159 - 1);
                  *v162 = v167;
                  *(v159 - 3) = v190;
                  v168 = v196;
                  *(v159 - 9) = *(&v196 + 7);
                  *(v159 - 2) = v168;
                  *(v159 - 1) = v193;
                  v169 = v162 - a1 + 24;
                  if (v169 >= 25)
                  {
                    v170 = (-2 - 0x5555555555555555 * (v169 >> 3)) >> 1;
                    v171 = a1 + 24 * v170;
                    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v171, v162))
                    {
                      v172 = *v162;
                      v195 = *(v162 + 16);
                      v194 = v172;
                      *(v162 + 8) = 0;
                      *(v162 + 16) = 0;
                      *v162 = 0;
                      do
                      {
                        v173 = v171;
                        v174 = *v171;
                        *(v162 + 16) = *(v171 + 2);
                        *v162 = v174;
                        v171[23] = 0;
                        *v171 = 0;
                        if (!v170)
                        {
                          break;
                        }

                        v170 = (v170 - 1) >> 1;
                        v171 = a1 + 24 * v170;
                        v162 = v173;
                      }

                      while (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v171, &v194));
                      v175 = v194;
                      *(v173 + 16) = v195;
                      *v173 = v175;
                    }
                  }
                }
              }

              while (v156-- > 2);
            }

            return;
          }

          v14 = v12 >> 1;
          v15 = a1 + 3 * (v12 >> 1);
          if (v11 >= 0xC01)
          {
            v16 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v15, a1);
            v17 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, v15);
            if (v16)
            {
              if (v17)
              {
                v18 = *a1;
                v195 = *(a1 + 2);
                v194 = v18;
                v19 = *v8;
                *(a1 + 2) = *(a2 - 1);
                *a1 = v19;
              }

              else
              {
                v36 = *a1;
                v195 = *(a1 + 2);
                v194 = v36;
                v37 = *v15;
                *(a1 + 2) = v15[2];
                *a1 = v37;
                v38 = v194;
                v15[2] = v195;
                *v15 = v38;
                if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, v15))
                {
                  goto LABEL_28;
                }

                v39 = *v15;
                v195 = v15[2];
                v194 = v39;
                v40 = *v8;
                v15[2] = *(a2 - 1);
                *v15 = v40;
              }

              v41 = v194;
              *(a2 - 1) = v195;
              *v8 = v41;
            }

            else if (v17)
            {
              v24 = *v15;
              v195 = v15[2];
              v194 = v24;
              v25 = *v8;
              v15[2] = *(a2 - 1);
              *v15 = v25;
              v26 = v194;
              *(a2 - 1) = v195;
              *v8 = v26;
              if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v15, a1))
              {
                v27 = *a1;
                v195 = *(a1 + 2);
                v194 = v27;
                v28 = *v15;
                *(a1 + 2) = v15[2];
                *a1 = v28;
                v29 = v194;
                v15[2] = v195;
                *v15 = v29;
              }
            }

LABEL_28:
            v42 = a1 + 3 * v14 - 3;
            v43 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v42, a1 + 3);
            v44 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v191, v42);
            if (v43)
            {
              if (v44)
              {
                v194 = *(a1 + 24);
                v45 = v194;
                v195 = *(a1 + 5);
                v46 = v195;
                v47 = *(a2 - 4);
                *(a1 + 24) = *v191;
                *(a1 + 5) = v47;
                *(a2 - 4) = v46;
                *v191 = v45;
              }

              else
              {
                v194 = *(a1 + 24);
                v60 = v194;
                v195 = *(a1 + 5);
                v61 = v195;
                v62 = *(a1 + 3 * v14 - 1);
                *(a1 + 24) = *v42;
                *(a1 + 5) = v62;
                *(a1 + 3 * v14 - 1) = v61;
                *v42 = v60;
                if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v191, v42))
                {
                  v63 = *v42;
                  v195 = *(a1 + 3 * v14 - 1);
                  v194 = v63;
                  v64 = *v191;
                  *(a1 + 3 * v14 - 1) = *(a2 - 4);
                  *v42 = v64;
                  v65 = v194;
                  *(a2 - 4) = v195;
                  *v191 = v65;
                }
              }
            }

            else if (v44)
            {
              v48 = *v42;
              v195 = *(a1 + 3 * v14 - 1);
              v194 = v48;
              v49 = *v191;
              *(a1 + 3 * v14 - 1) = *(a2 - 4);
              *v42 = v49;
              v50 = v194;
              *(a2 - 4) = v195;
              *v191 = v50;
              if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v42, a1 + 3))
              {
                v194 = *(a1 + 24);
                v51 = v194;
                v195 = *(a1 + 5);
                v52 = v195;
                v53 = *(a1 + 3 * v14 - 1);
                *(a1 + 24) = *v42;
                *(a1 + 5) = v53;
                *(a1 + 3 * v14 - 1) = v52;
                *v42 = v51;
              }
            }

            v66 = a1 + 24 * v14;
            v67 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v66 + 3, a1 + 6);
            v68 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 9, v66 + 3);
            if (v67)
            {
              if (v68)
              {
                v69 = a1[3];
                v194 = v69;
                v70 = *(a1 + 8);
                v195 = v70;
                v71 = *(a2 - 7);
                a1[3] = *v9;
                *(a1 + 8) = v71;
              }

              else
              {
                v194 = a1[3];
                v78 = v194;
                v195 = *(a1 + 8);
                v79 = v195;
                v80 = *(v66 + 5);
                a1[3] = *(v66 + 24);
                *(a1 + 8) = v80;
                *(v66 + 5) = v79;
                *(v66 + 24) = v78;
                if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 9, v66 + 3))
                {
                  goto LABEL_48;
                }

                v81 = *(v66 + 24);
                v195 = *(v66 + 5);
                v194 = v81;
                v82 = *v9;
                *(v66 + 5) = *(a2 - 7);
                *(v66 + 24) = v82;
                v69 = v194;
                v70 = v195;
              }

              *(a2 - 7) = v70;
              *v9 = v69;
            }

            else if (v68)
            {
              v72 = *(v66 + 24);
              v195 = *(v66 + 5);
              v194 = v72;
              v73 = *v9;
              *(v66 + 5) = *(a2 - 7);
              *(v66 + 24) = v73;
              v74 = v194;
              *(a2 - 7) = v195;
              *v9 = v74;
              if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v66 + 3, a1 + 6))
              {
                v194 = a1[3];
                v75 = v194;
                v195 = *(a1 + 8);
                v76 = v195;
                v77 = *(v66 + 5);
                a1[3] = *(v66 + 24);
                *(a1 + 8) = v77;
                *(v66 + 5) = v76;
                *(v66 + 24) = v75;
              }
            }

LABEL_48:
            v83 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v15, v42);
            v84 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v66 + 3, v15);
            if (!v83)
            {
              if (v84)
              {
                v86 = *v15;
                v195 = v15[2];
                v194 = v86;
                *v15 = *(v66 + 24);
                v15[2] = *(v66 + 5);
                v87 = v194;
                *(v66 + 5) = v195;
                *(v66 + 24) = v87;
                if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v15, v42))
                {
                  v88 = *v42;
                  v195 = v42[2];
                  v194 = v88;
                  *v42 = *v15;
                  v42[2] = v15[2];
                  v89 = v194;
                  v15[2] = v195;
                  *v15 = v89;
                }
              }

              goto LABEL_57;
            }

            if (v84)
            {
              v85 = *v42;
              v195 = v42[2];
              v194 = v85;
              *v42 = *(v66 + 24);
              v42[2] = *(v66 + 5);
            }

            else
            {
              v90 = *v42;
              v195 = v42[2];
              v194 = v90;
              *v42 = *v15;
              v42[2] = v15[2];
              v91 = v194;
              v15[2] = v195;
              *v15 = v91;
              if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v66 + 3, v15))
              {
LABEL_57:
                v94 = *a1;
                v195 = *(a1 + 2);
                v194 = v94;
                v95 = *v15;
                *(a1 + 2) = v15[2];
                *a1 = v95;
                v96 = v194;
                v15[2] = v195;
                *v15 = v96;
                goto LABEL_58;
              }

              v92 = *v15;
              v195 = v15[2];
              v194 = v92;
              *v15 = *(v66 + 24);
              v15[2] = *(v66 + 5);
            }

            v93 = v194;
            *(v66 + 5) = v195;
            *(v66 + 24) = v93;
            goto LABEL_57;
          }

          v20 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1, v15);
          v21 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1);
          if (v20)
          {
            if (v21)
            {
              v22 = *v15;
              v195 = v15[2];
              v194 = v22;
              v23 = *v8;
              v15[2] = *(a2 - 1);
              *v15 = v23;
LABEL_36:
              v59 = v194;
              *(a2 - 1) = v195;
              *v8 = v59;
              goto LABEL_58;
            }

            v54 = *v15;
            v195 = v15[2];
            v194 = v54;
            v55 = *a1;
            v15[2] = *(a1 + 2);
            *v15 = v55;
            v56 = v194;
            *(a1 + 2) = v195;
            *a1 = v56;
            if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1))
            {
              v57 = *a1;
              v195 = *(a1 + 2);
              v194 = v57;
              v58 = *v8;
              *(a1 + 2) = *(a2 - 1);
              *a1 = v58;
              goto LABEL_36;
            }
          }

          else if (v21)
          {
            v30 = *a1;
            v195 = *(a1 + 2);
            v194 = v30;
            v31 = *v8;
            *(a1 + 2) = *(a2 - 1);
            *a1 = v31;
            v32 = v194;
            *(a2 - 1) = v195;
            *v8 = v32;
            if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1, v15))
            {
              v33 = *v15;
              v195 = v15[2];
              v194 = v33;
              v34 = *a1;
              v15[2] = *(a1 + 2);
              *v15 = v34;
              v35 = v194;
              *(a1 + 2) = v195;
              *a1 = v35;
            }
          }

LABEL_58:
          --a3;
          if ((a4 & 1) != 0 || std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 - 3, a1))
          {
            break;
          }

          v109 = *a1;
          v197 = *(a1 + 2);
          v196 = v109;
          *(a1 + 1) = 0;
          *(a1 + 2) = 0;
          *a1 = 0;
          if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v196, a2 - 3))
          {
            v10 = a1;
            do
            {
              v10 = (v10 + 24);
            }

            while (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v196, v10));
          }

          else
          {
            v110 = (a1 + 24);
            do
            {
              v10 = v110;
              if (v110 >= a2)
              {
                break;
              }

              v111 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v196, v110);
              v110 = (v10 + 24);
            }

            while (!v111);
          }

          v112 = a2;
          if (v10 < a2)
          {
            v112 = a2;
            do
            {
              v112 = (v112 - 24);
            }

            while (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v196, v112));
          }

          while (v10 < v112)
          {
            v113 = *v10;
            v195 = *(v10 + 2);
            v194 = v113;
            v114 = *v112;
            *(v10 + 2) = *(v112 + 2);
            *v10 = v114;
            v115 = v194;
            *(v112 + 2) = v195;
            *v112 = v115;
            do
            {
              v10 = (v10 + 24);
            }

            while (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v196, v10));
            do
            {
              v112 = (v112 - 24);
            }

            while (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v196, v112));
          }

          v116 = v10 - 3;
          if ((v10 - 24) == a1)
          {
            if (*(v10 - 1) < 0)
            {
              operator delete(*v116);
            }
          }

          else
          {
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v117 = *v116;
            *(a1 + 2) = *(v10 - 1);
            *a1 = v117;
            *(v10 - 1) = 0;
            *(v10 - 24) = 0;
          }

          a4 = 0;
          v118 = v196;
          *(v10 - 1) = v197;
          *v116 = v118;
        }

        v97 = *a1;
        v197 = *(a1 + 2);
        v196 = v97;
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *a1 = 0;
        v98 = a1;
        do
        {
          v99 = v98;
          v98 = (v98 + 24);
        }

        while (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v98, &v196));
        v100 = a2;
        if (v99 == a1)
        {
          v100 = a2;
          do
          {
            if (v98 >= v100)
            {
              break;
            }

            v100 = (v100 - 24);
          }

          while (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v100, &v196));
        }

        else
        {
          do
          {
            v100 = (v100 - 24);
          }

          while (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v100, &v196));
        }

        v10 = v98;
        if (v98 < v100)
        {
          v101 = v100;
          do
          {
            v194 = *v10;
            v102 = v194;
            v195 = *(v10 + 2);
            v103 = v195;
            v104 = *(v101 + 2);
            *v10 = *v101;
            *(v10 + 2) = v104;
            *(v101 + 2) = v103;
            *v101 = v102;
            do
            {
              v10 = (v10 + 24);
            }

            while (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v10, &v196));
            do
            {
              v101 = (v101 - 24);
            }

            while (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v101, &v196));
          }

          while (v10 < v101);
        }

        v105 = v10 - 3;
        if ((v10 - 24) == a1)
        {
          if (*(v10 - 1) < 0)
          {
            operator delete(*v105);
          }
        }

        else
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v106 = *v105;
          *(a1 + 2) = *(v10 - 1);
          *a1 = v106;
          *(v10 - 1) = 0;
          *(v10 - 24) = 0;
        }

        v107 = v196;
        *(v10 - 1) = v197;
        *v105 = v107;
        if (v98 >= v100)
        {
          break;
        }

LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, (v10 - 24), a3, a4 & 1);
        a4 = 0;
      }

      v108 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v10 - 3);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2))
      {
        break;
      }

      if (!v108)
      {
        goto LABEL_83;
      }
    }

    a2 = (v10 - 24);
    if (!v108)
    {
      continue;
    }

    break;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,false>(const void **a1, const void **a2, uint64_t a3, char a4)
{
  v307 = *MEMORY[0x1E69E9840];
LABEL_2:
  v7 = a1;
  while (1)
  {
    v8 = (a2 - v7) >> 5;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(v7, v7 + 4, a2 - 4);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(v7, (v7 + 4), (v7 + 8), a2 - 4);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(v7, v7 + 4, v7 + 8, (v7 + 12), a2 - 4);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v125 = *(a2 - 4);
        v124 = a2 - 4;
        v123 = v125;
        v126 = *(v7 + 23);
        v127 = *(v124 + 23);
        if (v127 >= 0)
        {
          v128 = *(v124 + 23);
        }

        else
        {
          v128 = v124[1];
        }

        if (v127 >= 0)
        {
          v129 = v124;
        }

        else
        {
          v129 = v123;
        }

        if (v126 >= 0)
        {
          v130 = *(v7 + 23);
        }

        else
        {
          v130 = v7[1];
        }

        if (v126 >= 0)
        {
          v131 = v7;
        }

        else
        {
          v131 = *v7;
        }

        if (v130 >= v128)
        {
          v132 = v128;
        }

        else
        {
          v132 = v130;
        }

        v133 = memcmp(v129, v131, v132);
        v134 = v128 < v130;
        if (v133)
        {
          v134 = v133 < 0;
        }

        if (v134)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(v7, v124);
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    v299 = a2;
    if (!a3)
    {
      if (v7 != a2)
      {
        v161 = (v8 - 2) >> 1;
        v162 = v161;
        v302 = v7;
        v297 = v161;
        do
        {
          v163 = v162;
          if (v161 >= v162)
          {
            v295 = v162;
            v164 = (2 * v162) | 1;
            v165 = &v7[4 * v164];
            v166 = 2 * v162 + 2;
            if (v166 >= v8)
            {
              v177 = *v165;
            }

            else
            {
              v167 = *(v165 + 55);
              v168 = v165[4];
              v169 = *(v165 + 23);
              v294 = *v165;
              if (v169 >= 0)
              {
                v170 = *(v165 + 23);
              }

              else
              {
                v170 = v165[1];
              }

              if (v169 >= 0)
              {
                v171 = &v7[4 * v164];
              }

              else
              {
                v171 = *v165;
              }

              if (v167 >= 0)
              {
                v172 = *(v165 + 55);
              }

              else
              {
                v172 = v165[5];
              }

              if (v167 >= 0)
              {
                v173 = v165 + 4;
              }

              else
              {
                v173 = v165[4];
              }

              if (v172 >= v170)
              {
                v174 = v170;
              }

              else
              {
                v174 = v172;
              }

              v175 = memcmp(v171, v173, v174);
              v176 = v170 < v172;
              if (v175)
              {
                v176 = v175 < 0;
              }

              v204 = !v176;
              v177 = v294;
              if (!v204)
              {
                v177 = v168;
                v165 += 4;
                v164 = v166;
              }
            }

            v163 = v295;
            v178 = &v7[4 * v295];
            v179 = *(v178 + 23);
            v180 = *(v165 + 23);
            if (v180 >= 0)
            {
              v181 = *(v165 + 23);
            }

            else
            {
              v181 = v165[1];
            }

            if (v180 >= 0)
            {
              v182 = v165;
            }

            else
            {
              v182 = v177;
            }

            if (v179 >= 0)
            {
              v183 = *(v178 + 23);
            }

            else
            {
              v183 = v178[1];
            }

            if (v179 >= 0)
            {
              v184 = &v7[4 * v295];
            }

            else
            {
              v184 = *v178;
            }

            if (v183 >= v181)
            {
              v185 = v181;
            }

            else
            {
              v185 = v183;
            }

            v186 = memcmp(v182, v184, v185);
            v187 = v181 < v183;
            if (v186)
            {
              v187 = v186 < 0;
            }

            if (!v187)
            {
              v306 = 0;
              v188 = *v178;
              v305 = v178[2];
              v304 = v188;
              v178[1] = 0;
              v178[2] = 0;
              *v178 = 0;
              LOWORD(v306) = *(v178 + 12);
              do
              {
                v189 = v165;
                if (*(v178 + 23) < 0)
                {
                  operator delete(*v178);
                }

                v190 = *v165;
                v178[2] = v165[2];
                *v178 = v190;
                *(v165 + 23) = 0;
                *v165 = 0;
                *(v178 + 12) = *(v165 + 12);
                if (v161 < v164)
                {
                  break;
                }

                v191 = (2 * v164) | 1;
                v165 = &v7[4 * v191];
                v164 = 2 * v164 + 2;
                if (v164 >= v8)
                {
                  v205 = *v165;
                  v164 = v191;
                }

                else
                {
                  v192 = *(v165 + 55);
                  v193 = v165[4];
                  v194 = *(v165 + 23);
                  v195 = *v165;
                  if (v194 >= 0)
                  {
                    v196 = *(v165 + 23);
                  }

                  else
                  {
                    v196 = v165[1];
                  }

                  if (v194 >= 0)
                  {
                    v197 = &v7[4 * v191];
                  }

                  else
                  {
                    v197 = *v165;
                  }

                  v198 = v8;
                  if (v192 >= 0)
                  {
                    v199 = *(v165 + 55);
                  }

                  else
                  {
                    v199 = v165[5];
                  }

                  if (v192 >= 0)
                  {
                    v200 = v165 + 4;
                  }

                  else
                  {
                    v200 = v165[4];
                  }

                  if (v199 >= v196)
                  {
                    v201 = v196;
                  }

                  else
                  {
                    v201 = v199;
                  }

                  v202 = memcmp(v197, v200, v201);
                  v70 = v196 >= v199;
                  v161 = v297;
                  v8 = v198;
                  v7 = v302;
                  v203 = !v70;
                  if (v202)
                  {
                    v203 = v202 < 0;
                  }

                  v204 = !v203;
                  v205 = (v203 ? v193 : v195);
                  if (v204)
                  {
                    v164 = v191;
                  }

                  else
                  {
                    v165 += 4;
                  }
                }

                v206 = *(v165 + 23);
                if (v206 >= 0)
                {
                  v207 = *(v165 + 23);
                }

                else
                {
                  v207 = v165[1];
                }

                if (v206 >= 0)
                {
                  v208 = v165;
                }

                else
                {
                  v208 = v205;
                }

                if (SHIBYTE(v305) >= 0)
                {
                  v209 = HIBYTE(v305);
                }

                else
                {
                  v209 = *(&v304 + 1);
                }

                if (SHIBYTE(v305) >= 0)
                {
                  v210 = &v304;
                }

                else
                {
                  v210 = v304;
                }

                if (v209 >= v207)
                {
                  v211 = v207;
                }

                else
                {
                  v211 = v209;
                }

                v212 = memcmp(v208, v210, v211);
                v213 = v207 < v209;
                if (v212)
                {
                  v213 = v212 < 0;
                }

                v178 = v189;
              }

              while (!v213);
              if (*(v189 + 23) < 0)
              {
                operator delete(*v189);
              }

              v214 = v304;
              v189[2] = v305;
              *v189 = v214;
              *(v189 + 12) = v306;
              v163 = v295;
            }
          }

          v162 = v163 - 1;
        }

        while (v163);
        v215 = v299;
        do
        {
          if (v8 >= 2)
          {
            v300 = v215;
            v216 = 0;
            v296 = *v7;
            *v303 = v7[1];
            *&v303[7] = *(v7 + 15);
            v298 = *(v7 + 23);
            v7[1] = 0;
            v7[2] = 0;
            *v7 = 0;
            v217 = *(v7 + 12);
            v218 = (v8 - 2) >> 1;
            v219 = v7;
            do
            {
              v220 = &v219[4 * v216];
              v221 = v220 + 4;
              v222 = (2 * v216) | 1;
              v216 = 2 * v216 + 2;
              if (v216 >= v8)
              {
                v216 = v222;
              }

              else
              {
                v225 = v220[8];
                v224 = v220 + 8;
                v223 = v225;
                v226 = *(v224 + 23);
                v227 = *(v224 - 9);
                if (v227 >= 0)
                {
                  v228 = *(v224 - 9);
                }

                else
                {
                  v228 = *(v224 - 3);
                }

                if (v227 >= 0)
                {
                  v229 = v221;
                }

                else
                {
                  v229 = *(v224 - 4);
                }

                v230 = v8;
                if (v226 >= 0)
                {
                  v231 = *(v224 + 23);
                }

                else
                {
                  v231 = v224[1];
                }

                if (v226 >= 0)
                {
                  v232 = v224;
                }

                else
                {
                  v232 = v223;
                }

                if (v231 >= v228)
                {
                  v233 = v228;
                }

                else
                {
                  v233 = v231;
                }

                v234 = memcmp(v229, v232, v233);
                v70 = v228 >= v231;
                v8 = v230;
                v7 = v302;
                v235 = !v70;
                if (v234)
                {
                  v235 = v234 < 0;
                }

                if (v235)
                {
                  v221 = v224;
                }

                else
                {
                  v216 = v222;
                }
              }

              if (*(v219 + 23) < 0)
              {
                operator delete(*v219);
              }

              v236 = *v221;
              v219[2] = v221[2];
              *v219 = v236;
              *(v221 + 23) = 0;
              *v221 = 0;
              *(v219 + 12) = *(v221 + 12);
              v219 = v221;
            }

            while (v216 <= v218);
            v215 = v300;
            v237 = (v300 - 4);
            v238 = *(v221 + 23);
            if (v221 == v300 - 4)
            {
              if (v238 < 0)
              {
                operator delete(*v221);
              }

              *v221 = v296;
              v221[1] = *v303;
              *(v221 + 15) = *&v303[7];
              *(v221 + 23) = v298;
              *(v221 + 12) = v217;
            }

            else
            {
              if (v238 < 0)
              {
                operator delete(*v221);
              }

              v239 = *v237;
              v221[2] = *(v300 - 2);
              *v221 = v239;
              *(v300 - 9) = 0;
              *(v300 - 32) = 0;
              *(v221 + 12) = *(v300 - 4);
              if (*(v300 - 9) < 0)
              {
                operator delete(*v237);
              }

              *(v300 - 4) = v296;
              *(v300 - 17) = *&v303[7];
              *(v300 - 3) = *v303;
              *(v300 - 9) = v298;
              *(v300 - 4) = v217;
              v240 = ((v221 + 4) - v7) >> 5;
              v241 = v240 < 2;
              v242 = v240 - 2;
              if (!v241)
              {
                v243 = v242 >> 1;
                v244 = &v7[4 * (v242 >> 1)];
                v245 = *(v221 + 23);
                v246 = *(v244 + 23);
                if (v246 >= 0)
                {
                  v247 = *(v244 + 23);
                }

                else
                {
                  v247 = v244[1];
                }

                if (v246 >= 0)
                {
                  v248 = &v7[4 * (v242 >> 1)];
                }

                else
                {
                  v248 = *v244;
                }

                if (v245 >= 0)
                {
                  v249 = *(v221 + 23);
                }

                else
                {
                  v249 = v221[1];
                }

                if (v245 >= 0)
                {
                  v250 = v221;
                }

                else
                {
                  v250 = *v221;
                }

                if (v249 >= v247)
                {
                  v251 = v247;
                }

                else
                {
                  v251 = v249;
                }

                v252 = memcmp(v248, v250, v251);
                v253 = v247 < v249;
                if (v252)
                {
                  v253 = v252 < 0;
                }

                if (v253)
                {
                  v306 = 0;
                  v254 = *v221;
                  v305 = v221[2];
                  v304 = v254;
                  v221[1] = 0;
                  v221[2] = 0;
                  *v221 = 0;
                  LOWORD(v306) = *(v221 + 12);
                  if (SHIBYTE(v305) >= 0)
                  {
                    v255 = HIBYTE(v305);
                  }

                  else
                  {
                    v255 = *(&v304 + 1);
                  }

                  if (SHIBYTE(v305) >= 0)
                  {
                    v256 = &v304;
                  }

                  else
                  {
                    v256 = v304;
                  }

                  do
                  {
                    v257 = v244;
                    if (*(v221 + 23) < 0)
                    {
                      operator delete(*v221);
                    }

                    v258 = *v244;
                    v221[2] = v244[2];
                    *v221 = v258;
                    *(v244 + 23) = 0;
                    *v244 = 0;
                    *(v221 + 12) = *(v244 + 12);
                    if (!v243)
                    {
                      break;
                    }

                    v243 = (v243 - 1) >> 1;
                    v244 = &v7[4 * v243];
                    v259 = *(v244 + 23);
                    if (v259 >= 0)
                    {
                      v260 = *(v244 + 23);
                    }

                    else
                    {
                      v260 = v244[1];
                    }

                    if (v259 >= 0)
                    {
                      v261 = &v7[4 * v243];
                    }

                    else
                    {
                      v261 = *v244;
                    }

                    if (v255 >= v260)
                    {
                      v262 = v260;
                    }

                    else
                    {
                      v262 = v255;
                    }

                    v263 = memcmp(v261, v256, v262);
                    v264 = v260 < v255;
                    if (v263)
                    {
                      v264 = v263 < 0;
                    }

                    v221 = v257;
                  }

                  while (v264);
                  if (*(v257 + 23) < 0)
                  {
                    operator delete(*v257);
                  }

                  v265 = v304;
                  v257[2] = v305;
                  *v257 = v265;
                  *(v257 + 12) = v306;
                  v215 = v300;
                }
              }
            }
          }

          v215 -= 4;
          v241 = v8-- > 2;
        }

        while (v241);
      }

      return;
    }

    v9 = v8 >> 1;
    v10 = &v7[4 * (v8 >> 1)];
    v11 = a2 - 4;
    if (v8 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(&v7[4 * (v8 >> 1)], v7, a2 - 4);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(v7, &v7[4 * (v8 >> 1)], a2 - 4);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(v7 + 4, v10 - 4, a2 - 8);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(v7 + 8, &v7[4 * v9 + 4], a2 - 12);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(v10 - 4, &v7[4 * (v8 >> 1)], &v7[4 * v9 + 4]);
      v12 = *v7;
      v13 = v7[1];
      *(&v304 + 7) = *(v7 + 15);
      *&v304 = v13;
      LOBYTE(v13) = *(v7 + 23);
      v7[1] = 0;
      v7[2] = 0;
      *v7 = 0;
      v14 = *(v7 + 12);
      v15 = *v10;
      v7[2] = v10[2];
      *v7 = v15;
      *(v10 + 23) = 0;
      *(v7 + 12) = *(v10 + 12);
      *v10 = v12;
      v16 = v304;
      *(v10 + 15) = *(&v304 + 7);
      v10[1] = v16;
      *(v10 + 23) = v13;
      *(v10 + 12) = v14;
    }

    --a3;
    if ((a4 & 1) == 0)
    {
      v17 = *(v7 + 23);
      v18 = *(v7 - 9);
      if (v18 >= 0)
      {
        v19 = *(v7 - 9);
      }

      else
      {
        v19 = *(v7 - 3);
      }

      if (v18 >= 0)
      {
        v20 = v7 - 4;
      }

      else
      {
        v20 = *(v7 - 4);
      }

      if (v17 >= 0)
      {
        v21 = *(v7 + 23);
      }

      else
      {
        v21 = v7[1];
      }

      if (v17 >= 0)
      {
        v22 = v7;
      }

      else
      {
        v22 = *v7;
      }

      if (v21 >= v19)
      {
        v23 = v19;
      }

      else
      {
        v23 = v21;
      }

      v24 = memcmp(v20, v22, v23);
      v25 = v19 < v21;
      if (v24)
      {
        v25 = v24 < 0;
      }

      if (!v25)
      {
        v306 = 0;
        v72 = *v7;
        v305 = v7[2];
        v304 = v72;
        v7[1] = 0;
        v7[2] = 0;
        *v7 = 0;
        v73 = *(v7 + 12);
        LOWORD(v306) = v73;
        v74 = *(a2 - 9);
        v75 = *(a2 - 4);
        v76 = *(a2 - 3);
        v77 = a2;
        if (SHIBYTE(v305) >= 0)
        {
          v78 = HIBYTE(v305);
        }

        else
        {
          v78 = *(&v304 + 1);
        }

        if (SHIBYTE(v305) >= 0)
        {
          v79 = &v304;
        }

        else
        {
          v79 = v304;
        }

        if ((v74 & 0x80u) == 0)
        {
          v80 = v74;
        }

        else
        {
          v80 = v76;
        }

        if ((v74 & 0x80u) == 0)
        {
          v81 = v11;
        }

        else
        {
          v81 = v75;
        }

        if (v80 >= v78)
        {
          v82 = v78;
        }

        else
        {
          v82 = v80;
        }

        v83 = memcmp(v79, v81, v82);
        v84 = v78 < v80;
        if (v83)
        {
          v84 = v83 < 0;
        }

        if (v84)
        {
          v85 = v7 + 4;
          do
          {
            v86 = *(v85 + 23);
            if (v86 >= 0)
            {
              v87 = *(v85 + 23);
            }

            else
            {
              v87 = v85[1];
            }

            if (v86 >= 0)
            {
              v88 = v85;
            }

            else
            {
              v88 = *v85;
            }

            if (v87 >= v78)
            {
              v89 = v78;
            }

            else
            {
              v89 = v87;
            }

            v90 = memcmp(v79, v88, v89);
            v91 = v78 < v87;
            if (v90)
            {
              v91 = v90 < 0;
            }

            v85 += 4;
          }

          while (!v91);
          a1 = v85 - 4;
        }

        else
        {
          v92 = v7 + 4;
          do
          {
            a1 = v92;
            if (v92 >= v77)
            {
              break;
            }

            v93 = *(v92 + 23);
            if (v93 >= 0)
            {
              v94 = *(v92 + 23);
            }

            else
            {
              v94 = v92[1];
            }

            if (v93 >= 0)
            {
              v95 = v92;
            }

            else
            {
              v95 = *v92;
            }

            if (v94 >= v78)
            {
              v96 = v78;
            }

            else
            {
              v96 = v94;
            }

            v97 = memcmp(v79, v95, v96);
            v98 = v97 < 0;
            if (!v97)
            {
              v98 = v78 < v94;
            }

            v92 = a1 + 4;
          }

          while (!v98);
        }

        v99 = v77;
        if (a1 < v77)
        {
          do
          {
            v100 = *(v11 + 23);
            if (v100 >= 0)
            {
              v101 = *(v11 + 23);
            }

            else
            {
              v101 = v11[1];
            }

            if (v100 >= 0)
            {
              v102 = v11;
            }

            else
            {
              v102 = *v11;
            }

            if (v101 >= v78)
            {
              v103 = v78;
            }

            else
            {
              v103 = v101;
            }

            v104 = memcmp(v79, v102, v103);
            v105 = v78 < v101;
            if (v104)
            {
              v105 = v104 < 0;
            }

            v11 -= 4;
          }

          while (v105);
          v99 = v11 + 4;
        }

        while (a1 < v99)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a1, v99);
          v106 = a1 + 4;
          do
          {
            a1 = v106;
            v107 = *(v106 + 23);
            if (v107 >= 0)
            {
              v108 = v107;
            }

            else
            {
              v108 = a1[1];
            }

            if (v107 >= 0)
            {
              v109 = a1;
            }

            else
            {
              v109 = *a1;
            }

            if (v108 >= v78)
            {
              v110 = v78;
            }

            else
            {
              v110 = v108;
            }

            v111 = memcmp(v79, v109, v110);
            v112 = v111 < 0;
            if (!v111)
            {
              v112 = v78 < v108;
            }

            v106 = a1 + 4;
          }

          while (!v112);
          v113 = v99 - 4;
          do
          {
            v99 = v113;
            v114 = *(v113 + 23);
            if ((v114 & 0x80u) == 0)
            {
              v115 = v114;
            }

            else
            {
              v115 = v99[1];
            }

            if ((v114 & 0x80u) == 0)
            {
              v116 = v99;
            }

            else
            {
              v116 = *v99;
            }

            if (v115 >= v78)
            {
              v117 = v78;
            }

            else
            {
              v117 = v115;
            }

            v118 = memcmp(v79, v116, v117);
            v119 = v118 < 0;
            if (!v118)
            {
              v119 = v78 < v115;
            }

            v113 = v99 - 4;
          }

          while (v119);
        }

        v120 = (a1 - 4);
        a2 = v77;
        if (a1 - 4 != v7)
        {
          if (*(v7 + 23) < 0)
          {
            operator delete(*v7);
          }

          v121 = *v120;
          v7[2] = *(a1 - 2);
          *v7 = v121;
          *(a1 - 9) = 0;
          *(a1 - 32) = 0;
          *(v7 + 12) = *(a1 - 4);
        }

        if (*(a1 - 9) < 0)
        {
          operator delete(*v120);
        }

        a4 = 0;
        v122 = v304;
        *(a1 - 2) = v305;
        *v120 = v122;
        *(a1 - 4) = v73;
        goto LABEL_2;
      }
    }

    v26 = a3;
    v27 = 0;
    v306 = 0;
    v28 = *v7;
    v305 = v7[2];
    v304 = v28;
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    v29 = *(v7 + 12);
    LOWORD(v306) = v29;
    if (SHIBYTE(v305) >= 0)
    {
      v30 = HIBYTE(v305);
    }

    else
    {
      v30 = *(&v304 + 1);
    }

    if (SHIBYTE(v305) >= 0)
    {
      v31 = &v304;
    }

    else
    {
      v31 = v304;
    }

    do
    {
      v32 = SHIBYTE(v7[v27 + 6]);
      if (v32 >= 0)
      {
        v33 = HIBYTE(v7[v27 + 6]);
      }

      else
      {
        v33 = v7[v27 + 5];
      }

      if (v32 >= 0)
      {
        v34 = &v7[v27 + 4];
      }

      else
      {
        v34 = v7[v27 + 4];
      }

      if (v30 >= v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v30;
      }

      v36 = memcmp(v34, v31, v35);
      v37 = v33 < v30;
      if (v36)
      {
        v37 = v36 < 0;
      }

      v27 += 4;
    }

    while (v37);
    v38 = &v7[v27];
    if (&v7[v27 - 4] == v7)
    {
      while (1)
      {
        v45 = v11 + 4;
        if (v38 >= v11 + 4)
        {
          break;
        }

        v46 = *(v11 + 23);
        if (v46 >= 0)
        {
          v47 = *(v11 + 23);
        }

        else
        {
          v47 = v11[1];
        }

        if (v46 >= 0)
        {
          v48 = v11;
        }

        else
        {
          v48 = *v11;
        }

        if (v30 >= v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = v30;
        }

        v50 = memcmp(v48, v31, v49);
        v51 = v47 < v30;
        if (v50)
        {
          v51 = v50 < 0;
        }

        v11 -= 4;
        if (v51)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      do
      {
        v39 = *(v11 + 23);
        if (v39 >= 0)
        {
          v40 = *(v11 + 23);
        }

        else
        {
          v40 = v11[1];
        }

        if (v39 >= 0)
        {
          v41 = v11;
        }

        else
        {
          v41 = *v11;
        }

        if (v30 >= v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = v30;
        }

        v43 = memcmp(v41, v31, v42);
        v44 = v40 < v30;
        if (v43)
        {
          v44 = v43 < 0;
        }

        v11 -= 4;
      }

      while (!v44);
LABEL_79:
      v45 = v11 + 4;
    }

    a1 = v38;
    if (v38 < v45)
    {
      v52 = v45;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a1, v52);
        v53 = a1 + 4;
        do
        {
          a1 = v53;
          v54 = *(v53 + 23);
          if (v54 >= 0)
          {
            v55 = v54;
          }

          else
          {
            v55 = a1[1];
          }

          if (v54 >= 0)
          {
            v56 = a1;
          }

          else
          {
            v56 = *a1;
          }

          if (v30 >= v55)
          {
            v57 = v55;
          }

          else
          {
            v57 = v30;
          }

          v58 = memcmp(v56, v31, v57);
          v59 = v58 < 0;
          if (!v58)
          {
            v59 = v55 < v30;
          }

          v53 = a1 + 4;
        }

        while (v59);
        v60 = v52 - 4;
        do
        {
          v52 = v60;
          v61 = *(v60 + 23);
          if ((v61 & 0x80u) == 0)
          {
            v62 = v61;
          }

          else
          {
            v62 = v52[1];
          }

          if ((v61 & 0x80u) == 0)
          {
            v63 = v52;
          }

          else
          {
            v63 = *v52;
          }

          if (v30 >= v62)
          {
            v64 = v62;
          }

          else
          {
            v64 = v30;
          }

          v65 = memcmp(v63, v31, v64);
          v66 = v65 < 0;
          if (!v65)
          {
            v66 = v62 < v30;
          }

          v60 = v52 - 4;
        }

        while (!v66);
      }

      while (a1 < v52);
    }

    v67 = (a1 - 4);
    a3 = v26;
    if (a1 - 4 != v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v68 = *v67;
      v7[2] = *(a1 - 2);
      *v7 = v68;
      *(a1 - 9) = 0;
      *(a1 - 32) = 0;
      *(v7 + 12) = *(a1 - 4);
    }

    if (*(a1 - 9) < 0)
    {
      operator delete(*v67);
    }

    v69 = v304;
    *(a1 - 2) = v305;
    *v67 = v69;
    *(a1 - 4) = v29;
    v70 = v38 >= v45;
    a2 = v299;
    if (!v70)
    {
      goto LABEL_121;
    }

    v71 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*>(v7, a1 - 4);
    if (!std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*>(a1, v299))
    {
      if (v71)
      {
        goto LABEL_2;
      }

LABEL_121:
      std::__introsort<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,false>(v7, a1 - 4, v26, a4 & 1);
      a4 = 0;
      goto LABEL_2;
    }

    a2 = a1 - 4;
    if (v71)
    {
      return;
    }
  }

  if (a4)
  {
    if (v7 != a2)
    {
      v135 = v7 + 4;
      if (v7 + 4 != a2)
      {
        v136 = 0;
        v137 = v7;
        do
        {
          v138 = v135;
          v139 = *(v137 + 23);
          v140 = *(v137 + 55);
          if (v140 >= 0)
          {
            v141 = *(v137 + 55);
          }

          else
          {
            v141 = v137[5];
          }

          if (v140 >= 0)
          {
            v142 = v135;
          }

          else
          {
            v142 = v137[4];
          }

          if (v139 >= 0)
          {
            v143 = *(v137 + 23);
          }

          else
          {
            v143 = v137[1];
          }

          if (v139 >= 0)
          {
            v144 = v137;
          }

          else
          {
            v144 = *v137;
          }

          if (v143 >= v141)
          {
            v145 = v141;
          }

          else
          {
            v145 = v143;
          }

          v146 = memcmp(v142, v144, v145);
          v147 = v141 < v143;
          if (v146)
          {
            v147 = v146 < 0;
          }

          if (v147)
          {
            v306 = 0;
            v148 = *v138;
            v305 = v138[2];
            v304 = v148;
            v138[1] = 0;
            v138[2] = 0;
            *v138 = 0;
            LOWORD(v306) = *(v137 + 28);
            if (SHIBYTE(v305) >= 0)
            {
              v149 = HIBYTE(v305);
            }

            else
            {
              v149 = *(&v304 + 1);
            }

            if (SHIBYTE(v305) >= 0)
            {
              v150 = &v304;
            }

            else
            {
              v150 = v304;
            }

            v151 = v136;
            while (1)
            {
              v152 = (v7 + v151);
              if (*(v7 + v151 + 55) < 0)
              {
                operator delete(v152[4]);
              }

              *(v152 + 2) = *v152;
              v152[6] = v152[2];
              *(v152 + 23) = 0;
              *v152 = 0;
              *(v152 + 28) = *(v152 + 12);
              if (!v151)
              {
                break;
              }

              v153 = *(v7 + v151 - 9);
              if (v153 >= 0)
              {
                v154 = *(v7 + v151 - 9);
              }

              else
              {
                v154 = *(v7 + v151 - 24);
              }

              if (v153 >= 0)
              {
                v155 = v7 + v151 - 32;
              }

              else
              {
                v155 = *(v7 + v151 - 32);
              }

              if (v154 >= v149)
              {
                v156 = v149;
              }

              else
              {
                v156 = v154;
              }

              v157 = memcmp(v150, v155, v156);
              v158 = v149 < v154;
              if (v157)
              {
                v158 = v157 < 0;
              }

              v151 -= 32;
              if (!v158)
              {
                v159 = v7 + v151 + 32;
                goto LABEL_292;
              }
            }

            v159 = v7;
LABEL_292:
            if (*(v159 + 23) < 0)
            {
              operator delete(*v159);
            }

            v160 = v304;
            *(v159 + 16) = v305;
            *v159 = v160;
            *(v159 + 24) = v306;
          }

          v135 = v138 + 4;
          v136 += 32;
          v137 = v138;
        }

        while (v138 + 4 != a2);
      }
    }
  }

  else if (v7 != a2)
  {
    v266 = v7 + 4;
    if (v7 + 4 != a2)
    {
      v267 = v7 + 7;
      do
      {
        v268 = v266;
        v269 = *(v7 + 23);
        v270 = *(v7 + 55);
        if (v270 >= 0)
        {
          v271 = *(v7 + 55);
        }

        else
        {
          v271 = v7[5];
        }

        if (v270 >= 0)
        {
          v272 = v266;
        }

        else
        {
          v272 = v7[4];
        }

        if (v269 >= 0)
        {
          v273 = *(v7 + 23);
        }

        else
        {
          v273 = v7[1];
        }

        if (v269 >= 0)
        {
          v274 = v7;
        }

        else
        {
          v274 = *v7;
        }

        if (v273 >= v271)
        {
          v275 = v271;
        }

        else
        {
          v275 = v273;
        }

        v276 = memcmp(v272, v274, v275);
        v277 = v271 < v273;
        if (v276)
        {
          v277 = v276 < 0;
        }

        if (v277)
        {
          v306 = 0;
          v278 = *v268;
          v305 = v268[2];
          v304 = v278;
          v268[1] = 0;
          v268[2] = 0;
          *v268 = 0;
          LOWORD(v306) = *(v7 + 28);
          if (SHIBYTE(v305) >= 0)
          {
            v279 = HIBYTE(v305);
          }

          else
          {
            v279 = *(&v304 + 1);
          }

          if (SHIBYTE(v305) >= 0)
          {
            v280 = &v304;
          }

          else
          {
            v280 = v304;
          }

          v281 = v267;
          do
          {
            v282 = (v281 - 12);
            if (*(v281 - 1) < 0)
            {
              operator delete(*v282);
            }

            *v282 = *(v281 - 28);
            *(v281 - 1) = *(v281 - 5);
            *(v281 - 33) = 0;
            *(v281 - 56) = 0;
            v283 = v281 - 28;
            v284 = v281 - 16;
            *v281 = *(v281 - 16);
            v285 = *(v281 - 65);
            v286 = v281 - 44;
            v287 = *(v281 - 11);
            if (v285 >= 0)
            {
              v288 = *(v281 - 65);
            }

            else
            {
              v288 = *(v281 - 10);
            }

            if (v285 >= 0)
            {
              v289 = v286;
            }

            else
            {
              v289 = v287;
            }

            if (v288 >= v279)
            {
              v290 = v279;
            }

            else
            {
              v290 = v288;
            }

            v291 = memcmp(v280, v289, v290);
            v292 = v279 < v288;
            if (v291)
            {
              v292 = v291 < 0;
            }

            v281 = v284;
          }

          while (v292);
          if (*(v283 + 23) < 0)
          {
            operator delete(*v283);
          }

          v293 = v304;
          *(v283 + 2) = v305;
          *v283 = v293;
          v283[12] = v306;
        }

        v266 = v268 + 4;
        v267 += 4;
        v7 = v268;
      }

      while (v268 + 4 != a2);
    }
  }
}