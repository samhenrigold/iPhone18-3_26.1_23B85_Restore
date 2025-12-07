void si_enqueue_work(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 32) == 1)
    {
      si_enqueue_work_with_qos(a1, *(a1 + 24), a2, a3);
    }

    else
    {
      si_enqueue_work_for_job(a1, a2, a3, 0);
    }
  }

  else
  {
    a2(a3, 1);
  }
}

void _SIScheduleBackgroundOperation(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = *(a1 + 1104);
  if (a2)
  {
    si_enqueue_work_with_qos(v4, a2, a3, a4);
  }

  else
  {
    si_enqueue_work(v4, a3, a4);
  }
}

void work_fun_inner(char *a1)
{
  v59 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B00 >= 5)
  {
    v28 = *__error();
    v29 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v56 = 67109376;
      *&v56[4] = qos_class_self();
      LOWORD(v57) = 2048;
      *(&v57 + 2) = a1;
      _os_log_impl(&dword_1C278D000, v29, OS_LOG_TYPE_DEFAULT, "QOS work_fun: %d %p", v56, 0x12u);
    }

    *__error() = v28;
  }

  if (dword_1EBF46AD8 >= 5)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = qos_class_self();
      current_queue = dispatch_get_current_queue();
      *v56 = 67109378;
      *&v56[4] = v32;
      LOWORD(v57) = 2112;
      *(&v57 + 2) = current_queue;
      _os_log_impl(&dword_1C278D000, v31, OS_LOG_TYPE_DEFAULT, "qos: 0x%x %@", v56, 0x12u);
    }

    *__error() = v30;
  }

  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a1;
  v5 = *(a1 + 2);
  *v56 = 0;
  *&v57 = v56;
  *(&v57 + 1) = 0x2000000000;
  v58 = 0;
  v6 = veorq_s8(*(a1 + 24), *(a1 + 40));
  if (*(a1 + 7) != veor_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)))
  {
    v34 = __si_assert_copy_extra_661(*(v5 + 10));
    v35 = v34;
    v36 = "";
    if (v34)
    {
      v36 = v34;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Bad CRC on work unit. %p %p %p %p %p %p", "SIScheduler.c", 393, "cu->u.crc==compute_workunit_crc(cu->u)", v36, v4, v3, v5, *(a1 + 4), *(a1 + 5), *(a1 + 3));
    free(v35);
    if (__valid_fs(*(v5 + 10)))
    {
      v37 = 2989;
    }

    else
    {
      v37 = 3072;
    }

    *v37 = -559038737;
    abort();
  }

  makeThreadId();
  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  v55 = 0;
  if (v3)
  {
    if ((!*(v3 + 26) || *(v3 + 64) == 1) && v3 == *v5)
    {
      v7 = *v3;
      v8 = v3[4];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __work_fun_inner_block_invoke;
      block[3] = &unk_1E8192F78;
      block[6] = v3;
      block[7] = v5;
      block[8] = v7;
      block[9] = v4;
      block[4] = v56;
      block[5] = &v52;
      dispatch_sync(v8, block);
      v9 = v53[3];
      if (v9)
      {
        SIGCContextWrapperCleanup(v9);
      }
    }

    if (*(v57 + 24) == 1 && *(v3 + 29) && quick_check_suspension(v3))
    {
      v10 = v3[4];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 0x40000000;
      v50[2] = __work_fun_inner_block_invoke_2;
      v50[3] = &unk_1E8192FA0;
      v50[4] = v56;
      v50[5] = v3;
      v50[6] = v5;
      v50[7] = 0;
      v50[8] = v4;
      dispatch_sync(v10, v50);
    }
  }

  v11 = v5[6];
  if (v11)
  {
    set_crash_info(v11);
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v13 = setThreadIdAndInfo(*(v5 + 10), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  LODWORD(v42) = v13;
  v14 = threadData[9 * v13 + 1] + 320 * HIDWORD(v13);
  v49 = HIDWORD(v13);
  v48 = __PAIR64__(v15, v16);
  *(v14 + 216) = 0;
  v17 = *(v14 + 312);
  v18 = *(v14 + 224);
  if (v18)
  {
    v18(*(v14 + 288));
  }

  v47 = v42;
  v46 = v49;
  v45 = v48;
  if (_setjmp(v14))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v14 + 312) = v17;
    CIOnThreadCleanUpReset(v45);
    dropThreadId(v47, 1, add_explicit + 1);
    CICleanUpReset(v47, HIDWORD(v45));
  }

  else
  {
    if (*(v57 + 24) != 1 || (v19 = *(a1 + 5)) != 0 && *(v19 + 36))
    {
      (*(a1 + 3))(*(a1 + 4), 1);
    }

    else
    {
      (*(v4 + 152))(v4, *(a1 + 3), *(a1 + 4));
    }

    v20 = threadData[9 * v47 + 1] + 320 * v46;
    *(v20 + 312) = v17;
    v21 = *(v20 + 232);
    if (v21)
    {
      v21(*(v20 + 288));
    }

    dropThreadId(v47, 0, add_explicit + 1);
  }

  v22 = pthread_getspecific(__THREAD_STR_DATA_KEY[0]);
  if (v22)
  {
    *v22 = 0;
  }

  v23 = *(a1 + 5);
  if (v23)
  {
    si_release_qid(v23);
  }

  if (v3 && !*(v3 + 26))
  {
    v24 = *(v4 + 32);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 0x40000000;
    v43[2] = __work_fun_inner_block_invoke_53;
    v43[3] = &unk_1E8192FC8;
    v43[4] = v56;
    v43[5] = v5;
    v43[6] = v3;
    v43[7] = v4;
    v43[8] = 0;
    dispatch_sync(v24, v43);
    v42 = 0;
    if (*v5 == v3)
    {
      if (*(v3 + 34) == 1 && *(v3 + 88) < *(v3 + 50) && (*(v3 + 30) || v3[18]))
      {
        pthread_mutex_lock(v3[1]);
        *(v3 + 50) = 0;
        si_scheduler_do_suspend(v3, &v42);
        pthread_mutex_unlock(v3[1]);
        v38 = v5[2];
        dispatch_retain(v38);
        dispatch_suspend(v38);
        v39 = v3[20];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 0x40000000;
        v41[2] = __work_fun_inner_block_invoke_2_55;
        v41[3] = &__block_descriptor_tmp_56;
        v41[4] = v38;
        dispatch_async(v39, v41);
        v25 = v42;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    si_scheduler_trigger_tokens(v25);
    goto LABEL_46;
  }

  if (v4)
  {
LABEL_46:
    atomic_fetch_add_explicit((v2 + 132), 0xFFFFFFFF, memory_order_relaxed);
  }

  if (a1[64] == 1)
  {
    v26 = v5[2];
    dispatch_suspend(v26);
    v27 = *(v4 + 160);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 0x40000000;
    v40[2] = __work_fun_inner_block_invoke_3;
    v40[3] = &__block_descriptor_tmp_57;
    v40[4] = v26;
    dispatch_async(v27, v40);
  }

  free(a1);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v56, 8);
}

void work_fun(char *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 1) + 220);
  if (dword_1EBF46AD8 >= 5)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*a1 + 80);
      v6 = *(*(a1 + 1) + 80);
      v7[0] = 67109634;
      v7[1] = v2;
      v8 = 2080;
      v9 = v5;
      v10 = 2080;
      v11 = v6;
      _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "work_fun pc_priority %u: (%s, %s)", v7, 0x1Cu);
    }

    *__error() = v3;
  }

  work_fun_Priority(a1);
}

void __si_enqueue_work_for_job_block_invoke(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  if (!v1)
  {
    v17 = __si_assert_copy_extra_661(-1);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 910, "queue", v19);
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

  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = *v1;
  v7 = v2 == 0;
  if (v5)
  {
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 132), 1u, memory_order_relaxed);
    }

    v27 = v3;
    atomic_fetch_add(v5, 1u);
    goto LABEL_6;
  }

  if (v2 && (!v6 || !*(v6 + 104) && *(v6 + 64) != 1))
  {
    v27 = a1[6];
    v7 = 0;
    v5 = 0;
    atomic_fetch_add_explicit((v2 + 132), 1u, memory_order_relaxed);
LABEL_6:
    v8 = v1[2];
    *(v1 + 7) = vaddq_s64(*(v1 + 7), vdupq_n_s64(1uLL));
    v9 = malloc_type_malloc(0x48uLL, 0x10A0040047F2C8DuLL);
    v9[3] = v27;
    v9[4] = v4;
    v9[5] = v5;
    v9[6] = 0;
    v9[7] = v4 ^ v27 ^ v5;
    if (v7)
    {
      v21 = __si_assert_copy_extra_661(-1);
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 834, "root", v23);
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

    *v9 = v2;
    v9[1] = v6;
    v9[2] = v1;
    v10 = *(v2 + 136) == 1 && (v1[7] & 0xF) == 0;
    *(v9 + 64) = v10;
    v12 = qos_class_self();
    v13 = v12;
    if (*(v6 + 192) && *(v6 + 216) < v12)
    {
      pthread_mutex_lock(*(v6 + 8));
      v14 = *(v6 + 192);
      if (v14)
      {
        if (*(v6 + 216) < v13)
        {
          v15 = *(v6 + 208);
          *(v6 + 208) = pthread_override_qos_class_start_np(v14, v13, 0);
          *(v6 + 216) = v13;
          if (v15)
          {
            pthread_override_qos_class_end_np(v15);
          }
        }
      }

      pthread_mutex_unlock(*(v6 + 8));
    }

    if (dword_1EBF46B00 >= 5)
    {
      v25 = *__error();
      v26 = _SILogForLogForCategory(13);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(block) = 67109376;
        HIDWORD(block) = v13;
        LOWORD(v29) = 2048;
        *(&v29 + 2) = v9;
        _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "QOS enqueue_work: %d %p", &block, 0x12u);
      }

      *__error() = v25;
    }

    if (v13 == QOS_CLASS_USER_INTERACTIVE)
    {
      block = MEMORY[0x1E69E9820];
      *&v29 = 0x40000000;
      *(&v29 + 1) = __enqueue_work_block_invoke;
      v30 = &__block_descriptor_tmp_59;
      v31 = v9;
      v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &block);
      dispatch_async(v8, v16);
      _Block_release(v16);
    }

    else
    {
      dispatch_async_enforce_qos_class_f();
    }

    return;
  }

  v11 = a1[7];

  v3(v11, 1);
}

thread_read_t *SIResumeForUnlock()
{
  if ((sForceResume & 1) != 0 || !sGetLockStateCallback || (result = (*(sGetLockStateCallback + 16))(), !result))
  {
    while (1)
    {
      result = OSAtomicDequeue(&threadResumeQueue, 0);
      if (!result)
      {
        break;
      }

      v1 = result;
      v2 = *(result + 2);
      if (v2)
      {
        v2[2](*(result + 2), 0);
        _Block_release(v2);
      }

      thread_resume(v1[2]);
      OSAtomicEnqueue(&threadResumeFreeQueue, v1, 0);
    }
  }

  return result;
}

void si_enqueue_work_for_job(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = *a1;
    if (*a1)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[5] = a1;
    block[6] = a2;
    block[2] = __si_enqueue_work_for_job_block_invoke;
    block[3] = &__block_descriptor_tmp_3;
    block[4] = v6;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(v7, block);
  }

  else
  {

    a2(a3, 1);
  }
}

uint64_t SISetCSAttributes(uint64_t a1, const void *a2, CFArrayRef theArray, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1288) == 1)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v49 = a1;
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "Can't set attributes because the index is read-only. ref:%p", buf, 0xCu);
    }

LABEL_26:
    v30 = __error();
    result = 0;
    *v30 = v7;
    return result;
  }

  v11 = a4;
  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    goto LABEL_48;
  }

  v15 = Count;
  v44 = a5;
  v45 = a6;
  TypeID = CFDictionaryGetTypeID();
  v17 = CFStringGetTypeID();
  if (v15 >= 1)
  {
    v18 = v17;
    v19 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19);
      v21 = ValueAtIndex;
      if (!ValueAtIndex)
      {
        break;
      }

      if (CFGetTypeID(ValueAtIndex) != TypeID)
      {
        break;
      }

      Value = CFDictionaryGetValue(v21, @"_kMDItemExternalID");
      if (!Value || CFGetTypeID(Value) != v18)
      {
        break;
      }

      if (v15 == ++v19)
      {
        goto LABEL_12;
      }
    }

    v7 = *__error();
    v29 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v49 = "SISetCSAttributes";
      v50 = 1024;
      *v51 = 21086;
      *&v51[4] = 2112;
      *&v51[6] = v21;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: bad object %@", buf, 0x1Cu);
    }

    goto LABEL_26;
  }

LABEL_12:
  if (!a2 || (v23 = CFStringGetTypeID(), v23 != CFGetTypeID(a2)))
  {
    v32 = *__error();
    v33 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v49 = "mobile_journal";
      v50 = 1024;
      *v51 = 20399;
      *&v51[4] = 2048;
      *&v51[6] = a2;
      v52 = 1024;
      v53 = v11;
      v54 = 2112;
      v55 = theArray;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: missing bundle %p 0x%x %@", buf, 0x2Cu);
    }

    *__error() = v32;
    return 0;
  }

  Mutable = _MDPlistContainerCreateMutable();
  _MDPlistContainerBeginContainer();
  _MDPlistContainerBeginArray();
  _MDPlistContainerAddObject();
  _MDPlistContainerAddObject();
  _MDPlistContainerEndArray();
  _MDPlistContainerEndContainer();
  pthread_mutex_lock((a1 + 1632));
  JournalFd = getJournalFd(a1, 0, 0);
  if (!JournalFd)
  {
    v28 = 0;
    v34 = 0;
    goto LABEL_37;
  }

  v27 = JournalFd;
  v28 = *(a1 + 2104);
  if (!v28)
  {
LABEL_20:
    if (*(a1 + 2072) == 1 && (*(a1 + 829) & 0x10) == 0 && _os_feature_enabled_impl())
    {
      _os_feature_enabled_impl();
    }

    v28 = si_mobile_journal_create(v26);
    *(a1 + 2104) = v28;
    if (!v28)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (*(v28 + 1) != JournalFd)
  {
    if (atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
    {
      _si_mobile_journal_finalize(v28, 1);
    }

    *(a1 + 2104) = 0;
    goto LABEL_20;
  }

LABEL_32:
  atomic_fetch_add(v28, 1u);
LABEL_33:
  TypeID = atomic_fetch_add_explicit((a1 + 2128), 1uLL, memory_order_relaxed);
  if (si_clientstatesandmeta_update(a1, TypeID + 1, 0))
  {
    v46 = 0;
    v47 = 0;
    v34 = mobile_journal_plist(v27, TypeID, v11, Mutable, &v47, &v46) == 0;
  }

  else
  {
    v34 = 0;
  }

LABEL_37:
  pthread_mutex_unlock((a1 + 1632));
  CFRelease(Mutable);
  if (!v34)
  {
    if (v28 && atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
    {
      _si_mobile_journal_finalize(v28, 1);
    }

    return 0;
  }

  v36 = v46;
  v35 = v47;
  v37 = si_mobile_set_attr_ctx_create(a1, a2);
  v47 = v37;
  v37[1] = v28;
  v37[2] = v35;
  v37[3] = v36;
  *(v37 + 32) = TypeID != 0;
  *(v37 + 33) = 0;
  *(v37 + 9) = 0;
  add_explicit = atomic_fetch_add_explicit(&gEnqueuedSize, v36, memory_order_relaxed);
  a5 = v44;
  if (v44 && (v39 = add_explicit + v36, (add_explicit + v36) >= 0x40000))
  {
    v40 = *__error();
    v41 = _SILogForLogForCategory(0);
    v42 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v41, v42))
    {
      *buf = 134218240;
      v49 = v36;
      v50 = 2048;
      *v51 = v39;
      _os_log_impl(&dword_1C278D000, v41, v42, "#index too much enqueued (%ld); defer callback for work unit of %ld", buf, 0x16u);
    }

    *__error() = v40;
    a6 = v45;
    v37[5] = v44;
    v37[6] = v45;
    a5 = 0;
  }

  else
  {
    a6 = v45;
  }

  *(v37 + 8) = CFAbsoluteTimeGetCurrent();
  v43 = si_backtrace_routine_resolve(*v37, v37[9], setCSAttributes1, v37, &v47);
  si_enqueue_barrier_with_qos(*(a1 + 1048), 9, v43, v47);
LABEL_48:
  result = 1;
  if (a5)
  {
    a5(a6, 0);
    return 1;
  }

  return result;
}

void runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
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

void *makeThreadId()
{
  v26 = *MEMORY[0x1E69E9840];
  if (makeThreadId_once != -1)
  {
    dispatch_once(&makeThreadId_once, &__block_literal_global_6993);
  }

  v0 = &qword_1EDD81000;
  result = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  if (!result)
  {
    v2 = OSAtomicDequeue(&sAvailabeThreadEntries, 0);
    if (v2)
    {
      v3 = v2;
      if (*(v2 + 3) != -1)
      {
        v10 = __si_assert_copy_extra_332();
        __message_assert("%s:%u: failed assertion '%s' %s invalid count %d");
        goto LABEL_27;
      }

      v4 = (v2 - &threadList) >> 4;
      v5 = MEMORY[0x1C6920BC0]();
      if (gSILogLevels[0] >= 5)
      {
        v11 = *__error();
        v12 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v23 = (v3 - &threadList) >> 4;
          v24 = 1024;
          v25 = v5;
          _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "Adding handler slot:%u port:%d", buf, 0xEu);
        }

        *__error() = v11;
        v0 = &qword_1EDD81000;
        v4 = (v3 - &threadList) >> 4;
      }

      *(v3 + 2) = v5;
      *(v3 + 3) = 0;
      if (!pthread_setspecific(v0[53], (v4 + 1)))
      {
        v6 = malloc_type_malloc(0x404uLL, 0x100004084B5CCE0uLL);
        threadData[9 * v4] = v6;
        bzero(v6 + 4, 0x400uLL);
        *v6 = 64;
        exception_ports = thread_get_exception_ports(v5, 0x22u, v6 + 1, v6, v6 + 65, v6 + 129, v6 + 193);
        if (exception_ports)
        {
          v14 = exception_ports;
          v15 = __si_assert_copy_extra_332();
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = "";
          }

          v18 = mach_error_string(v14);
          __message_assert("%s:%u: failed assertion '%s' %s %s", "ContentIndexExceptionHandler.c", 1322, "krc==KERN_SUCCESS", v17, v18);
          free(v16);
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

        v8 = thread_set_exception_ports(v5, 0x22u, _exceptionPort[0], -2147483644, 7);
        if (!v8)
        {
          return mach_port_deallocate(*MEMORY[0x1E69E9A60], v5);
        }

        v20 = v8;
        v10 = __si_assert_copy_extra_332();
        mach_error_string(v20);
        __message_assert("%s:%u: failed assertion '%s' %s %s");
LABEL_27:
        free(v10);
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

      v9 = __si_assert_copy_extra_332();
      __message_assert("%s:%u: failed assertion '%s' %s ");
    }

    else
    {
      v9 = __si_assert_copy_extra_332();
      __message_assert("%s:%u: failed assertion '%s' %s Active handlers > MAX_CI_THREAD_COUNT");
    }

    free(v9);
    if (__valid_fs(-1))
    {
      v13 = 2989;
    }

    else
    {
      v13 = 3072;
    }

    *v13 = -559038737;
    abort();
  }

  return result;
}

unint64_t setThreadIdAndInfo(int a1, __int128 *a2, uint64_t a3, int a4, int a5)
{
  v10 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  if (!v10)
  {
    v25 = __si_assert_copy_extra_332();
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "ContentIndexExceptionHandler.c", 1347, v27);
    free(v26);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v11 = v10 - 1;
  ++*(&threadList + 4 * (v10 - 1) + 3);
  v12 = &threadData[9 * (v10 - 1)];
  if (!v12[1])
  {
    *(v12 + 5) = 16;
    v12[1] = malloc_type_malloc(0x1400uLL, 0x10800407CA5EF92uLL);
  }

  v12[5] = pthread_self();
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 5))
  {
    v21 = __si_assert_copy_extra_332();
    v22 = v21;
    v23 = "";
    if (v21)
    {
      v23 = v21;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1356, "td->itemCount < td->itemSize", v23);
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

  v14 = 5 * v13;
  v15 = v12[1] + (v14 << 6);
  *(v15 + 296) = a1;
  *(v15 + 288) = a3;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[3];
  *(v15 + 256) = a2[2];
  *(v15 + 272) = v18;
  *(v15 + 224) = v16;
  *(v15 + 240) = v17;
  v19 = (v12[1] + (v14 << 6));
  v19[53] = a4 & 0x7FFFFFFF;
  v19[75] = *(v12 + 8);
  v19[76] = *(v12 + 14);
  v19[77] = a5;
  v19[79] = 0;
  LODWORD(v19) = *(v12 + 4);
  *(v12 + 4) = v19 + 1;
  return v11 | (v19 << 32);
}

void __work_fun_inner_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = !*(v2 + 104) && (*(v2 + 64) & 1) == 0 && *(a1[7] + 36) == 0;
  *(*(a1[4] + 8) + 24) = v3;
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    os_unfair_lock_lock((v2 + 128));
    ++*(v2 + 112);
    os_unfair_lock_unlock((v2 + 128));
    v4 = a1[8];
    if (v4)
    {
      *(v4 + 24) = a1[6];
    }

    v5 = a1[9];
    os_unfair_lock_lock(v5 + 32);
    ++v5[28]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v5 + 32);
    v6 = a1[6];
    if (*(v6 + 112) == 1)
    {
      v7 = *(v6 + 48);
      if (v7 || *(v6 + 56))
      {
        *(v6 + 48) = 0;
        *(v6 + 56) = 0;
      }

      *(*(a1[5] + 8) + 24) = v7;
    }
  }
}

size_t set_crash_info(const char *a1)
{
  result = pthread_getspecific(__THREAD_STR_DATA_KEY[0]);
  v3 = result;
  if (result)
  {
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    result = malloc_type_malloc(0x80uLL, 0xEAF603C2uLL);
    if (!result)
    {
      return result;
    }

    v3 = result;
    *result = 0;
    result = pthread_setspecific(__THREAD_STR_DATA_KEY[0], result);
    if (!a1)
    {
      return result;
    }
  }

  return strlcpy(v3, a1, 0x80uLL);
}

atomic_uint *getJournalFd(uint64_t a1, int a2, int a3)
{
  v64 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2072) == 1)
  {
    dispatch_assert_queue_V2(*(*(a1 + 1104) + 16));
  }

  if (a2)
  {
    pthread_mutex_lock((a1 + 1632));
  }

  v6 = *(a1 + 2320);
  if (v6 || (a3 & 1) != 0)
  {
LABEL_45:
    if (a3)
    {
      if (*(a1 + 2072) == 1 && *(a1 + 2104))
      {
        v27 = *__error();
        v28 = _SILogForLogForCategory(11);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(a1 + 60);
          if (v29 == 1)
          {
            v30 = "cs_priority";
          }

          else if (v29 == 3)
          {
            v30 = "cs_mail";
          }

          else
          {
            if (v29)
            {
              v33 = 2;
            }

            else
            {
              v33 = (v29 >> 1) - 1;
            }

            if (v33 >= 7)
            {
              v30 = "cs_default";
            }

            else
            {
              v30 = off_1E8196C28[v33];
            }
          }

          v36 = *(a1 + 2344);
          *__str = 136315394;
          *&__str[4] = v30;
          *&__str[12] = 1024;
          *&__str[14] = v36;
          _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "[%s] reset journal %d", __str, 0x12u);
        }

        *__error() = v27;
        v37 = *(a1 + 2104);
        if (v37 && atomic_fetch_add(v37, 0xFFFFFFFF) == 1)
        {
          _si_mobile_journal_finalize(v37, 1);
        }

        *(a1 + 2104) = 0;
      }

      *(a1 + 2320) = 0;
    }

    goto LABEL_70;
  }

  v7 = *(a1 + 32);
  if (v7 == -1)
  {
    v43 = __si_assert_copy_extra_661(-1);
    v44 = v43;
    v45 = "";
    if (v43)
    {
      v45 = v43;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 3914, "indexFd != -1", v45);
    free(v44);
    if (__valid_fs(-1))
    {
      v46 = 2989;
    }

    else
    {
      v46 = 3072;
    }

    *v46 = -559038737;
    abort();
  }

  if (!*(a1 + 6964))
  {
LABEL_26:
    v18 = *(a1 + 2344);
    if (v18 == 0x7FFFFFFF)
    {
LABEL_35:
      v23 = __si_assert_copy_extra_661(-1);
      v24 = v23;
      v25 = "";
      if (v23)
      {
        v25 = v23;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 3966, "syncCount < 2147483647", v25);
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

    while (1)
    {
      v19 = *(a1 + 6960);
      if (v19 >= 1)
      {
        break;
      }

      v62 = 0uLL;
      memset(v63, 0, sizeof(v63));
      v60 = 0uLL;
      v61 = 0uLL;
      v58 = 0uLL;
      v59 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
      v54 = 0uLL;
      v55 = 0uLL;
      v52 = 0uLL;
      v53 = 0uLL;
      v51 = 0uLL;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0xFFuLL, "%s%d", "journalAttr.", v18);
      if ((*(a1 + 6944) & 1) != 0 || *(a1 + 60) == 2)
      {
        v20 = v7;
        v21 = 2;
      }

      else
      {
        v20 = v7;
        v21 = 0;
      }

      v22 = fd_create_protected(v20, __str, 536873482, v21);
      if (v22)
      {
        ++*(a1 + 2344);
        goto LABEL_42;
      }

      if (*__error() != 17)
      {
        goto LABEL_40;
      }

      v18 = *(a1 + 2344) + 1;
      *(a1 + 2344) = v18;
      if (v18 == 0x7FFFFFFF)
      {
        goto LABEL_35;
      }
    }

    v62 = 0uLL;
    memset(v63, 0, sizeof(v63));
    v60 = 0uLL;
    v61 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v51 = 0uLL;
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0xFFuLL, "%s%d", "journalAttr.", v19);
    v22 = fd_create_protected(v7, __str, 536870922, 2u);
    if (!v22)
    {
LABEL_40:
      v6 = 0;
      goto LABEL_70;
    }

LABEL_42:
    *(a1 + 2320) = v22;
    if (*(a1 + 6960) <= 0)
    {
      SIActivityJournalNewJournal((a1 + 2192), v22);
      v22 = *(a1 + 2320);
    }

    v47 = 0;
    _fd_acquire_fd(v22, &v47);
    v6 = *(a1 + 2320);
    goto LABEL_45;
  }

  v8 = openat(*(a1 + 32), "assertedJournalAttr.1", 536870922);
  if (v8 == -1)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v39 = __error();
      v40 = strerror(*v39);
      *__str = 136315650;
      *&__str[4] = "getJournalFd";
      *&__str[12] = 1024;
      *&__str[14] = 3925;
      *&__str[18] = 2080;
      *&__str[20] = v40;
      _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: Unable to open asserted jfile: %s", __str, 0x1Cu);
    }

    *__error() = v14;
    goto LABEL_23;
  }

  v9 = v8;
  v6 = fd_create_protected(*(a1 + 32), "assertedJournalAttr.1", 536870922, 2u);
  close(v9);
  if (!v6)
  {
LABEL_23:
    v16 = *__error();
    v17 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v34 = __error();
      v35 = strerror(*v34);
      *__str = 136315650;
      *&__str[4] = "getJournalFd";
      *&__str[12] = 1024;
      *&__str[14] = 3946;
      *&__str[18] = 2080;
      *&__str[20] = v35;
      _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Unable to open asserted journal file: %s", __str, 0x1Cu);
    }

    *__error() = v16;
    goto LABEL_26;
  }

  v48 = 0;
  if (fd_setDir(*(a1 + 32), &v48))
  {
    v62 = 0u;
    memset(v63, 0, sizeof(v63));
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    memset(__str, 0, sizeof(__str));
    for (i = *(a1 + 2344); i != 0x7FFFFFFF; *(a1 + 2344) = i)
    {
      snprintf(__str, 0xFFuLL, "%s%d", "journalAttr.", i);
      memset(&v49, 0, sizeof(v49));
      if (stat(__str, &v49))
      {
        break;
      }

      i = *(a1 + 2344) + 1;
    }

    if (fd_rename(v6, __str))
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v41 = __error();
        v42 = strerror(*v41);
        v49.st_dev = 136315906;
        *&v49.st_mode = "getJournalFd";
        WORD2(v49.st_ino) = 1024;
        *(&v49.st_ino + 6) = 3940;
        HIWORD(v49.st_uid) = 2080;
        *&v49.st_gid = __str;
        *(&v49.st_rdev + 2) = 2080;
        *(&v49.st_rdev + 6) = v42;
        _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Unable to rename asserted journal file to: %s (%s)", &v49, 0x26u);
      }

      *__error() = v11;
      fd_release(v6);
      v13 = v48;
      MEMORY[0x1C6921200](v48);
      if ((v13 & 0x80000000) == 0)
      {
        close(v13);
      }

      goto LABEL_26;
    }

    v31 = v48;
    MEMORY[0x1C6921200](v48);
    if ((v31 & 0x80000000) == 0)
    {
      close(v31);
    }
  }

  *(a1 + 2320) = v6;
  v32 = v6;
  if (*(a1 + 6960) <= 0)
  {
    SIActivityJournalNewJournal((a1 + 2192), v6);
    v32 = *(a1 + 2320);
  }

  _fd_acquire_fd(v32, __str);
  ++*(a1 + 2344);
LABEL_70:
  if (a2)
  {
    pthread_mutex_unlock((a1 + 1632));
  }

  return v6;
}

uint64_t _fd_acquire_fd(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    v10 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v9, v10, "open error NULL obj", buf, 2u);
    }

    *__error() = v8;
    v6 = __error();
    v7 = 2;
    goto LABEL_10;
  }

  if (*a1 != -50529037)
  {
    v29 = __si_assert_copy_extra_661(-1);
    v30 = v29;
    v31 = "";
    if (v29)
    {
      v31 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1644, "obj->_magic==(0xFCFCFCF3)", v31);
    free(v30);
    if (__valid_fs(-1))
    {
      v32 = 2989;
    }

    else
    {
      v32 = 3072;
    }

    *v32 = -559038737;
    abort();
  }

  pthread_mutex_lock(&g_fd_lock);
  if (*(a1 + 52) == 1)
  {
    pthread_mutex_unlock(&g_fd_lock);
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "_fd_acquire_fd";
      v40 = 1024;
      v41 = 1649;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: fd_ptr instance was invalidated", buf, 0x12u);
    }

    *__error() = v4;
    v6 = __error();
    v7 = 22;
LABEL_10:
    *v6 = v7;
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 40) == -1)
  {
    pthread_mutex_unlock(&g_fd_lock);
    bzero(buf, 0x400uLL);
    v14 = (*(a1 + 56) >> 4);
    v15 = fd_name(a1, buf, 0x400uLL);
    v20 = _fd_open(*(a1 + 44), v15, *(a1 + 48), *(a1 + 56) & 1, v14, v16, v17, v18, v19);
    if (v20 != -1)
    {
      v21 = v20;
      __buf = 0;
      arc4random_buf(&__buf, 8uLL);
      v36 = *(a1 + 48);
      v22 = change_fdguard_np();
      __error();
      if (v22 && gSILogLevels[0] >= 5)
      {
        v33 = *__error();
        v34 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *v35 = 0;
          _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "open file failed to change fdguard", v35, 2u);
        }

        *__error() = v33;
      }

      pthread_mutex_lock(&g_fd_lock);
      if (*(a1 + 40) == -1)
      {
        *(a1 + 8) = __buf;
        *(a1 + 40) = v21;
        updated = _fd_update_locked(a1, 1, a2);
        v23 = *(g_fd_list + 4);
        v24 = *(g_fd_list + 8);
        pthread_mutex_unlock(&g_fd_lock);
        if (v23 > v24 && !_fd_close_inactive(*(a1 + 44), 0, 1, 1, v25) && !_fd_close_inactive(-1, 0, 1, 1, v26) && !_fd_close_inactive(*(a1 + 44), 0, 1, 0, v27))
        {
          _fd_close_inactive(-1, 0, 1, 0, v28);
        }
      }

      else
      {
        updated = _fd_update_locked(a1, 0, a2);
        pthread_mutex_unlock(&g_fd_lock);
        guarded_close_np();
      }

      return updated;
    }

    return 0xFFFFFFFFLL;
  }

  v13 = _fd_update_locked(a1, 0, a2);
  pthread_mutex_unlock(&g_fd_lock);
  return v13;
}

uint64_t _fd_update_locked(uint64_t a1, int a2, void *a3)
{
  result = *(a1 + 40);
  if (result == -1)
  {
    v14 = __si_assert_copy_extra_661(-1);
    v15 = v14;
    v16 = "";
    if (v14)
    {
      v16 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1587, "obj->fd != -1", v16);
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

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (!v6)
  {
    if (v5)
    {
      v23 = __si_assert_copy_extra_661(-1);
      v19 = v23;
      v24 = "";
      if (v23)
      {
        v24 = v23;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1589, "!obj->prev", v24);
    }

    else
    {
      v7 = g_fd_list;
      v10 = *(g_fd_list + 16);
      v11 = *g_fd_list;
      if (v10)
      {
        if (v11)
        {
          v12 = *(v10 + 16);
          *(a1 + 16) = v12;
          *(a1 + 24) = v10;
          *(v12 + 24) = a1;
          *(v10 + 16) = a1;
          v13 = v11 + 1;
          goto LABEL_16;
        }

        v25 = __si_assert_copy_extra_661(-1);
        v19 = v25;
        v26 = "";
        if (v25)
        {
          v26 = v25;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1594, "g_fd_list->item_count!=0", v26);
      }

      else
      {
        if (!v11)
        {
          *(a1 + 16) = a1;
          *(a1 + 24) = a1;
          v13 = 1;
LABEL_16:
          *v7 = v13;
          if ((a2 & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        v27 = __si_assert_copy_extra_661(-1);
        v19 = v27;
        v28 = "";
        if (v27)
        {
          v28 = v27;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1591, "g_fd_list->item_count==0", v28);
      }
    }

LABEL_39:
    free(v19);
    if (__valid_fs(-1))
    {
      v29 = 2989;
    }

    else
    {
      v29 = 3072;
    }

    *v29 = -559038737;
    abort();
  }

  if (!v5)
  {
    v18 = __si_assert_copy_extra_661(-1);
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1605, "obj->prev", v20);
    goto LABEL_39;
  }

  v7 = g_fd_list;
  v8 = *(g_fd_list + 16);
  if (!v8)
  {
    v21 = __si_assert_copy_extra_661(-1);
    v19 = v21;
    v22 = "";
    if (v21)
    {
      v22 = v21;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1606, "g_fd_list->head", v22);
    goto LABEL_39;
  }

  if (v8 != a1)
  {
    *(v5 + 24) = v6;
    *(*(a1 + 24) + 16) = v5;
    v9 = *(v8 + 16);
    *(a1 + 16) = v9;
    *(a1 + 24) = v8;
    *(v9 + 24) = a1;
    *(v8 + 16) = a1;
  }

  if (a2)
  {
LABEL_8:
    ++*(v7 + 4);
  }

LABEL_9:
  *(v7 + 16) = a1;
  ++*(a1 + 36);
  *a3 = *(a1 + 8);
  return result;
}

_DWORD *_fd_release_fd(_DWORD *result, int a2, int a3, uint64_t a4)
{
  if (!result || a2 == -1)
  {
    return result;
  }

  v5 = result;
  v23 = 0;
  if (*result != -50529037)
  {
    v11 = __si_assert_copy_extra_661(-1);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1723, "obj->_magic==(0xFCFCFCF3)", v13);
LABEL_29:
    free(v12);
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

  pthread_mutex_lock(&g_fd_lock);
  v8 = *(v5 + 52);
  if ((v8 & 1) == 0)
  {
    if (v5[10] != a2)
    {
      v16 = __si_assert_copy_extra_661(-1);
      v17 = v16;
      v18 = "";
      if (v16)
      {
        v18 = v16;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1728, "obj->fd == in_fd", v18);
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

    if (*(v5 + 1) != a4)
    {
      v20 = __si_assert_copy_extra_661(-1);
      v12 = v20;
      v21 = "";
      if (v20)
      {
        v21 = v20;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1729, "obj->_guard == inguard", v21);
      goto LABEL_29;
    }
  }

  v9 = v5[9];
  if (!v9)
  {
    v14 = __si_assert_copy_extra_661(-1);
    v12 = v14;
    v15 = "";
    if (v14)
    {
      v15 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1731, "obj->open_count", v15);
    goto LABEL_29;
  }

  v10 = v9 - 1;
  v5[9] = v10;
  if (v10 || !a3 || (v8 & 1) != 0 || v5[17] || _fd_remove_locked(v5, &v23) == -1)
  {
    return pthread_mutex_unlock(&g_fd_lock);
  }

  *(v5 + 28) &= ~8u;
  pthread_mutex_unlock(&g_fd_lock);
  return guarded_close_np();
}

uint64_t fd_write(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *__error() = 2;
    return -1;
  }

  if (*(a1 + 96))
  {
    v19 = __si_assert_copy_extra_661(-1);
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 694, "!obj->forbidder", v21);
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

  v23 = 0;
  v6 = _fd_acquire_fd(a1, &v23);
  if (v6 == -1)
  {
    goto LABEL_14;
  }

  v7 = 0;
  v8 = a3;
  do
  {
    while (1)
    {
      v9 = guarded_write_np();
      if ((v9 & 0x8000000000000000) != 0)
      {
        break;
      }

      v7 += v9;
      v12 = v8 > v9;
      v8 -= v9;
      if (!v12)
      {
        goto LABEL_13;
      }

      a2 += v9;
    }

    v10 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v11 = __error();
  }

  while (((*(v10 + 16))(v10, v6, *v11, 6) & 1) != 0);
  v7 = -1;
LABEL_13:
  v13 = *__error();
  _fd_release_fd(a1, v6, 0, v23);
  *__error() = v13;
  if (v7 == -1)
  {
LABEL_14:
    bzero(v36, 0x400uLL);
    v14 = *__error();
    v15 = *__error();
    v16 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = fd_realpath(a1, v36);
      if (!v18)
      {
        v18 = fd_name(a1, v36, 0x400uLL);
        if (!v18)
        {
          v18 = "";
        }
      }

      *buf = 136316418;
      v25 = "fd_write";
      v26 = 1024;
      v27 = 709;
      v28 = 1024;
      v29 = v6;
      v30 = 2080;
      v31 = v18;
      v32 = 1024;
      v33 = a3;
      v34 = 1024;
      v35 = v14;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: write(%d %s, s:%d) err:%d", buf, 0x2Eu);
    }

    *__error() = v15;
    *__error() = v14;
    return -1;
  }

  return v7;
}

void SIActivityJournalNewJournal(os_unfair_lock_s *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v3 = fd_name(a2, v11, 0x100uLL);
  if (v3)
  {
    v4 = v3;
    if (!strncmp(v3, "journalAttr.", 0xCuLL))
    {
      v8 = atoi(v4 + 12);
      v6 = a1 + 8;
      os_unfair_lock_lock(a1 + 8);
      v12 = 0u;
      v13 = 0u;
      if (v8 > 0x7F)
      {
        if (v8 >> 14)
        {
          if (v8 >> 21)
          {
            if (v8 >> 28)
            {
              LOBYTE(v12) = -16;
              *(&v12 + 1) = v8;
              v7 = 5;
            }

            else
            {
              LOBYTE(v12) = HIBYTE(v8) | 0xE0;
              BYTE1(v12) = BYTE2(v8);
              BYTE2(v12) = BYTE1(v8);
              BYTE3(v12) = v8;
              v7 = 4;
            }
          }

          else
          {
            LOBYTE(v12) = BYTE2(v8) | 0xC0;
            BYTE1(v12) = BYTE1(v8);
            BYTE2(v12) = v8;
            v7 = 3;
          }
        }

        else
        {
          LOBYTE(v12) = BYTE1(v8) | 0x80;
          BYTE1(v12) = v8;
          v7 = 2;
        }
      }

      else
      {
        LOBYTE(v12) = v8;
        v7 = 1;
      }

      v9 = a1;
      v10 = 24;
    }

    else
    {
      if (strncmp(v4, "deferAttr.", 0xAuLL))
      {
        return;
      }

      v5 = atoi(v4 + 10);
      v6 = a1 + 8;
      os_unfair_lock_lock(a1 + 8);
      v12 = 0u;
      v13 = 0u;
      if (v5 > 0x7F)
      {
        if (v5 >> 14)
        {
          if (v5 >> 21)
          {
            if (v5 >> 28)
            {
              LOBYTE(v12) = -16;
              *(&v12 + 1) = v5;
              v7 = 5;
            }

            else
            {
              LOBYTE(v12) = HIBYTE(v5) | 0xE0;
              BYTE1(v12) = BYTE2(v5);
              BYTE2(v12) = BYTE1(v5);
              BYTE3(v12) = v5;
              v7 = 4;
            }
          }

          else
          {
            LOBYTE(v12) = BYTE2(v5) | 0xC0;
            BYTE1(v12) = BYTE1(v5);
            BYTE2(v12) = v5;
            v7 = 3;
          }
        }

        else
        {
          LOBYTE(v12) = BYTE1(v5) | 0x80;
          BYTE1(v12) = v5;
          v7 = 2;
        }
      }

      else
      {
        LOBYTE(v12) = v5;
        v7 = 1;
      }

      v9 = a1;
      v10 = 52;
    }

    activityJournalWrite(v9, v10, &v12, v7);
    os_unfair_lock_unlock(v6);
  }
}

uint64_t fd_setDir(uint64_t a1, int *a2)
{
  *a2 = -1;
  memset(&v5, 0, sizeof(v5));
  if (!fstat(a1, &v5))
  {
    *a2 = open(".", 4);
    if (!MEMORY[0x1C6921200](a1))
    {
      return 1;
    }

    if ((*a2 & 0x80000000) == 0)
    {
      close(*a2);
      result = 0;
      *a2 = -1;
      return result;
    }
  }

  return 0;
}

void *fd_create_protected(int a1, const char *a2, int a3, unsigned __int8 a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (fd_create_protected_once[0] != -1)
  {
    dispatch_once(fd_create_protected_once, &__block_literal_global_8510);
  }

  v8 = malloc_type_malloc(0x68uLL, 0x10300409CE040BCuLL);
  *v8 = -50529037;
  v8[1] = 0;
  *(v8 + 1) = 0u;
  v8[4] = 1;
  *(v8 + 10) = -1;
  *(v8 + 11) = a1;
  v9 = (a3 & 3) != 0;
  *(v8 + 12) = a3 | (v9 << 29);
  v10 = *(v8 + 28);
  *(v8 + 30) &= 0xFC00u;
  v11 = v10 & 0xFFF0 | (4 * v9);
  *(v8 + 28) = v11;
  v12 = strdup(a2);
  *(v8 + 52) = 0;
  *(v8 + 17) = 0;
  v8[9] = v12;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  *(v8 + 28) = v11 & 0xF00F | (16 * a4);
  v23 = 0;
  v13 = _fd_acquire_fd(v8, &v23);
  if (v13 == -1)
  {
    v14 = *__error();
    bzero(v35, 0x400uLL);
    v15 = fcntl(a1, 50, v35);
    if (v35[0])
    {
      v16 = v15 < 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v35;
    }

    if ((a3 & 0x200) != 0)
    {
      v18 = 17;
    }

    else
    {
      v18 = 2;
    }

    if (v14 == v18)
    {
      if (gSILogLevels[0] < 5)
      {
LABEL_21:
        fd_release(v8);
        v8 = 0;
        *__error() = v14;
        return v8;
      }

      v19 = *__error();
      v20 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v25 = v17;
        v26 = 2080;
        *v27 = a2;
        *&v27[8] = 1024;
        *&v27[10] = a3;
        v28 = 1024;
        *v29 = a1;
        *&v29[4] = 1024;
        *&v29[6] = v14;
        _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "fd_open failed, path:%s, name:%s, flags:0x%x, parent_fd:%d, errno:%d", buf, 0x28u);
      }
    }

    else
    {
      v19 = *__error();
      v21 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v25 = "fd_create_protected";
        v26 = 1024;
        *v27 = 207;
        *&v27[4] = 2080;
        *&v27[6] = v17;
        v28 = 2080;
        *v29 = a2;
        *&v29[8] = 1024;
        v30 = a3;
        v31 = 1024;
        v32 = a1;
        v33 = 1024;
        v34 = v14;
        _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: fd_open failed, path:%s, name:%s, flags:0x%x, parent_fd:%d, errno:%d", buf, 0x38u);
      }
    }

    *__error() = v19;
    goto LABEL_21;
  }

  *(v8 + 12) &= 0xFFFFF9FF;
  _fd_release_fd(v8, v13, 0, v23);
  return v8;
}

uint64_t _fd_open(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v27 = *MEMORY[0x1E69E9840];
  a9.n128_u64[0] = 136315394;
  while (1)
  {
    v14 = v9 ? si_openat_protected(a1, a2, v11, v9) : _safe_open_at(a1, a2, v11, a4, a5, a6, a7, a8, a9, 384);
    v15 = v14;
    if (v10)
    {
      if (v14 != -1)
      {
        break;
      }
    }

    if (v14 != -1 || !g_prot_error_callback)
    {
      return v15;
    }

    v16 = *__error();
    if (gSILogLevels[0] >= 5)
    {
      v22 = *__error();
      v19 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *__error();
        *buf = 136315394;
        v24 = a2;
        v25 = 1024;
        v26 = v20;
        _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", buf, 0x12u);
      }

      *__error() = v22;
    }

    v17 = g_prot_error_callback;
    v18 = __error();
    if (((*(v17 + 16))(v17, a1, *v18, 15) & 1) == 0)
    {
      *__error() = v16;
      return 0xFFFFFFFFLL;
    }
  }

  fcntl(v14, 48, 1);
  fcntl(v15, 76, 1);
  return v15;
}

uint64_t _safe_open_at(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __int16 a10)
{
  v68 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x200) != 0)
  {
    bzero(&v64, 0x400uLL);
    if (fcntl(a1, 50, &v64) < 0 || !v64)
    {
      v27 = *__error();
      v28 = *__error();
      v29 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v61 = 136316418;
        *v62 = "_safe_open_at";
        *&v62[8] = 1024;
        LODWORD(v63[0]) = 1417;
        WORD2(v63[0]) = 1024;
        *(v63 + 6) = a1;
        WORD1(v63[1]) = 2080;
        *(&v63[1] + 4) = a2;
        WORD2(v63[2]) = 2048;
        *(&v63[2] + 6) = a3;
        HIWORD(v63[3]) = 1024;
        LODWORD(v63[4]) = v27;
        _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: faccurate_realpath() failed, parent_fd:%d, path:%s, flags:0x%lx, errno:%d\n", &v61, 0x32u);
      }
    }

    else
    {
      if (v64 != 47)
      {
        v13 = a10;
        goto LABEL_7;
      }

      v28 = *__error();
      v35 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v61 = 136316162;
        *v62 = "_safe_open_at";
        *&v62[8] = 1024;
        LODWORD(v63[0]) = 1421;
        WORD2(v63[0]) = 2080;
        *(v63 + 6) = &v64;
        HIWORD(v63[1]) = 2080;
        v63[2] = a2;
        LOWORD(v63[3]) = 2048;
        *(&v63[3] + 2) = a3;
        _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: Invalid parent path, currentPath:%s, path:%s, flags:0x%lx\n", &v61, 0x30u);
      }

      v27 = 22;
    }

    *__error() = v28;
    *__error() = v27;
    return 0xFFFFFFFFLL;
  }

  v13 = 0;
LABEL_7:
  a9.n128_u64[0] = 136315394;
  v58 = a9;
  while (1)
  {
    result = openat(a1, a2, a3, a4, a5, a6, a7, a8, v13);
    if (result != -1)
    {
      break;
    }

    v15 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    if (gSILogLevels[0] >= 5)
    {
      LODWORD(v59) = *__error();
      v17 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *__error();
        v64 = v58.n128_u32[0];
        v65 = a2;
        v66 = 1024;
        v67 = v18;
        _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", &v64, 0x12u);
      }

      *__error() = v59;
      v15 = g_prot_error_callback;
    }

    v16 = __error();
    if (((*(v15 + 16))(v15, a1, *v16, 13) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (result != -1)
  {
    return result;
  }

LABEL_17:
  LODWORD(v59) = *__error();
  if ((v59 - 23) > 1)
  {
    goto LABEL_32;
  }

  v19 = *__error();
  v20 = _SILogForLogForCategory(0);
  v21 = gSILogLevels[0] < 3;
  if (os_log_type_enabled(v20, (gSILogLevels[0] < 3)))
  {
    v64 = 67109120;
    LODWORD(v65) = v59;
    _os_log_impl(&dword_1C278D000, v20, v21, "*warn* too many open files, err: %d, closing inactive and trying again", &v64, 8u);
  }

  *__error() = v19;
  _fd_close_inactive(-1, 0, 0, 0, v22);
  while (1)
  {
    result = openat(a1, a2, a3, v13);
    if (result != -1)
    {
      break;
    }

    v23 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    if (gSILogLevels[0] >= 5)
    {
      v57 = *__error();
      v25 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *__error();
        v64 = v58.n128_u32[0];
        v65 = a2;
        v66 = 1024;
        v67 = v26;
        _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", &v64, 0x12u);
      }

      *__error() = v57;
      v23 = g_prot_error_callback;
    }

    v24 = __error();
    if (((*(v23 + 16))(v23, a1, *v24, 14) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (result == -1)
  {
LABEL_32:
    if (v59 == 23)
    {
      v36 = __si_assert_copy_extra_661(-1);
      v37 = v36;
      v38 = "";
      if (v36)
      {
        v38 = v36;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Too many open files in system %d", "fd_obj.c", 1533, "false", v38, 23);
      free(v37);
      if (__valid_fs(-1))
      {
        v39 = 2989;
      }

      else
      {
        v39 = 3072;
      }

      *v39 = -559038737;
      abort();
    }

    if (v59 == 24)
    {
      v30 = *MEMORY[0x1E695E480];
      Mutable = CFBagCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D0]);
      bzero(&v64, 0x400uLL);
      if (gOpenLimit < 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = 0;
        v33 = 0;
        do
        {
          if ((fcntl(v33, 50, &v64) & 0x80000000) == 0 && v64)
          {
            v34 = CFStringCreateWithCString(v30, &v64, 0x8000100u);
            CFBagAddValue(Mutable, v34);
            CFRelease(v34);
            ++v32;
          }

          ++v33;
        }

        while (v33 < gOpenLimit);
      }

      v40 = MEMORY[0x1C691E5D0](Mutable);
      MEMORY[0x1EEE9AC00](v41);
      v43 = &v56 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v43, v42);
      CFBagGetValues(Mutable, v43);
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 0x40000000;
      v60[2] = ___safe_open_at_block_invoke;
      v60[3] = &__block_descriptor_tmp_28_8548;
      v60[4] = Mutable;
      qsort_b(v43, v40, 8uLL, v60);
      pthread_mutex_lock(&g_fd_lock);
      if (v32 >= 1)
      {
        v45 = 0;
        v46 = 0;
        *&v44 = 67109634;
        v59 = v44;
        do
        {
          if (*&v43[8 * v45] != v46)
          {
            v47 = *__error();
            v48 = _SILogForLogForCategory(0);
            v49 = gSILogLevels[0] < 3;
            if (os_log_type_enabled(v48, (gSILogLevels[0] < 3)))
            {
              v50 = MEMORY[0x1C691E5E0](Mutable, *&v43[8 * v45]);
              v51 = *&v43[8 * v45];
              v61 = v59;
              *v62 = v45;
              *&v62[4] = 1024;
              *&v62[6] = v50;
              LOWORD(v63[0]) = 2112;
              *(v63 + 2) = v51;
              _os_log_impl(&dword_1C278D000, v48, v49, "*warn* [%d] (%d) - %@", &v61, 0x18u);
            }

            *__error() = v47;
            v46 = *&v43[8 * v45];
          }

          ++v45;
        }

        while (v32 != v45);
      }

      pthread_mutex_unlock(&g_fd_lock);
      CFRelease(Mutable);
      v52 = __si_assert_copy_extra_661(-1);
      v53 = v52;
      v54 = "";
      if (v52)
      {
        v54 = v52;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Too many open files %d (%d) (%d)", "fd_obj.c", 1530, "false", v54, 24, v32, 0);
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

    return 0xFFFFFFFFLL;
  }

  return result;
}

char *fd_name(uint64_t a1, char *a2, size_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -50529037)
  {
    v7 = __si_assert_copy_extra_661(-1);
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1248, "obj->_magic==(0xFCFCFCF3)", v9);
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

  os_unfair_lock_lock(&g_name_lock);
  if (strlcpy(a2, *(a1 + 72), a3) > a3)
  {
    a2 = 0;
  }

  os_unfair_lock_unlock(&g_name_lock);
  return a2;
}

uint64_t SIValidIndex(uint64_t a1)
{
  if (a1)
  {
    v1 = atomic_load_explicit((a1 + 2439), memory_order_acquire) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void activityJournalWrite(uint64_t a1, char a2, uint64_t a3, unsigned int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    bzero(&v15, 0x400uLL);
    if ((*(a1 + 36) & 1) == 0)
    {
      *(a1 + 36) = 1;
      v15 = 113;
      v7 = getpid();
      if (v7 > 0x7F)
      {
        if (v7 >> 14)
        {
          if (v7 >> 21)
          {
            if (v7 >> 28)
            {
              v16 = -16;
              v17 = v7;
              v8 = 6;
            }

            else
            {
              v16 = HIBYTE(v7) | 0xE0;
              LOBYTE(v17) = BYTE2(v7);
              BYTE1(v17) = BYTE1(v7);
              BYTE2(v17) = v7;
              v8 = 5;
            }
          }

          else
          {
            v16 = BYTE2(v7) | 0xC0;
            LOBYTE(v17) = BYTE1(v7);
            BYTE1(v17) = v7;
            v8 = 4;
          }
        }

        else
        {
          v16 = BYTE1(v7) | 0x80;
          LOBYTE(v17) = v7;
          v8 = 3;
        }
      }

      else
      {
        v16 = v7;
        v8 = 2;
      }

      Current = CFAbsoluteTimeGetCurrent();
      v10 = v2_writeVInt64_11288(&v15, v8, Current);
      *(&v15 + v10) = 0;
      v11 = _CFCopySystemVersionDictionary();
      if (v11)
      {
        v12 = v11;
        Value = CFDictionaryGetValue(v11, *MEMORY[0x1E695E1E8]);
        if (Value && !CFStringGetCString(Value, &v15 + v10, 1024 - v10, 0x8000100u))
        {
          *(&v15 + v10) = 0;
        }

        CFRelease(v12);
      }

      v14 = strlen(&v15 + v10);
      fd_write(*a1, &v15, v10 + v14 + 1);
    }

    v15 = (2 * a2) | 1;
    if (a4 <= 0x3FE)
    {
      __memcpy_chk();
      fd_write(*a1, &v15, a4 + 1);
    }
  }
}

uint64_t si_openat_protected(uint64_t a1, const char *a2, int a3, int a4)
{
  v11 = 0;
  if ((fd_setDir(a1, &v11) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = open_dprotected_np(a2, a3, a4, 0, 384);
  v8 = *__error();
  v9 = v11;
  MEMORY[0x1C6921200](v11);
  if ((v9 & 0x80000000) == 0)
  {
    close(v9);
  }

  if (v7 == -1 && v8)
  {
    *__error() = v8;
    return 0xFFFFFFFFLL;
  }

  return v7;
}

void *si_mobile_journal_create(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v89[129] = *MEMORY[0x1E69E9840];
  v11 = malloc_type_calloc(1uLL, 0x80uLL, 0x10F004037D4A986uLL);
  v12 = v11;
  if (v11)
  {
    *(v11 + 2) = -1;
    atomic_store(1u, v11);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 32), 1u, memory_order_relaxed);
    }

    *(v11 + 1) = v8;
    *(v11 + 120) = (*(v10 + 828) & 0x100000) != 0;
    v13 = *MEMORY[0x1E695E480];
    v14 = si_storecookieRef(v10);
    v15 = CFUUIDCreateString(v13, v14);
    Length = CFStringGetLength(v15);
    v17 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
    CFStringGetCString(v15, v17, Length + 1, 0x8000100u);
    CFRelease(v15);
    *(v12 + 112) = v17;
    *(v12 + 104) = v6;
    if (v4)
    {
      memset(v76, 0, sizeof(v76));
      v18 = fd_name(*(v12 + 8), v76, 0x100uLL);
      if (v18)
      {
        v19 = v18;
        v20 = strrchr(v18, 46);
        if (v20)
        {
          v21 = v20;
          v23 = v20[1];
          v22 = v20 + 1;
          if (v23)
          {
            v89[0] = 0;
            v24 = strtol(v22, v89, 0);
            *(v12 + 40) = v24;
            if (v24 >= 1)
            {
              *(v12 + 48) = strndup(v19, v21 - v19);
            }
          }
        }
      }

      if (*(v12 + 40) >= 1)
      {
        memset(&v75, 0, sizeof(v75));
        if (!fd_stat(*(v12 + 8), &v75))
        {
          *(v12 + 56) = v75.st_dev;
          *(v12 + 64) = v75.st_ino;
        }

        sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v12 + 8), "_toc", 1537);
        *(v12 + 80) = sibling_with_suffix_protected;
        if (!fd_stat(sibling_with_suffix_protected, &v75))
        {
          *(v12 + 72) = v75.st_ino;
        }

        if (v2)
        {
          bzero(v89, 0x400uLL);
          bzero(v88, 0x400uLL);
          bzero(v87, 0x400uLL);
          bzero(__str, 0x400uLL);
          bzero(&v85, 0x400uLL);
          bzero(v84, 0x400uLL);
          v26 = 0;
          if ((fcntl(*(v10 + 32), 50, v89) & 0x80000000) == 0)
          {
            if (LOBYTE(v89[0]))
            {
              v26 = v89;
              v27 = strrchr(v89, 47);
              if (v27)
              {
                v28 = 1;
                do
                {
                  v29 = v28;
                  if (v27 <= v89)
                  {
LABEL_24:
                    if (*v27 != 47)
                    {
                      break;
                    }
                  }

                  else
                  {
                    while (*v27 != 47)
                    {
                      if (--v27 <= v89)
                      {
                        v27 = v89;
                        goto LABEL_24;
                      }
                    }
                  }

                  v28 = 0;
                  *v27 = 0;
                }

                while ((v29 & 1) != 0);
                v26 = v89;
              }
            }
          }

          v30 = fd_realpath(*(v12 + 8), v88);
          if (v30)
          {
            v31 = v30;
            v32 = fd_realpath(*(v12 + 80), v87);
            if (v32)
            {
              v33 = v32;
              v34 = *(v12 + 104);
              if (v34 == 1)
              {
                v35 = "cs_priority";
              }

              else if (v34 == 3)
              {
                v35 = "cs_mail";
              }

              else
              {
                if (v34)
                {
                  v41 = 2;
                }

                else
                {
                  v41 = (v34 >> 1) - 1;
                }

                if (v41 >= 7)
                {
                  v35 = "cs_default";
                }

                else
                {
                  v35 = off_1E8196C28[v41];
                }
              }

              snprintf(__str, 0x400uLL, "%s/%s/%d/%s", v26, "SpotlightKnowledgeEvents/index.V2/journals", 12, v35);
              snprintf(&v85, 0x400uLL, "%s/%s_%s_%d_%llu_%s_%ld.journal", __str, "skg_events", *(v12 + 112), *(v12 + 56), *(v12 + 64), *(v12 + 48), *(v12 + 40));
              snprintf(v84, 0x400uLL, "%s/%s_%s_%d_%s_%ld.toc", __str, "skg_events", *(v12 + 112), *(v12 + 56), *(v12 + 48), *(v12 + 40));
              memset(&v83, 0, sizeof(v83));
              if (stat(__str, &v83) != -1)
              {
                goto LABEL_44;
              }

              v47 = strdup(__str);
              if (v47)
              {
                v48 = v47;
                for (i = 1; ; ++i)
                {
                  if (v48[i] == 47)
                  {
                    v48[i] = 0;
                    if (mkdir(v48, 0x1FFu) == -1 && *__error() != 17)
                    {
                      v62 = *__error();
                      v63 = _SILogForLogForCategory(4);
                      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        v78 = "si_create_nested_dirs";
                        v79 = 1024;
                        *v80 = 4488;
                        *&v80[4] = 2080;
                        *&v80[6] = v48;
                        goto LABEL_95;
                      }

LABEL_76:
                      *__error() = v62;
                      free(v48);
                      goto LABEL_77;
                    }

                    v48[i] = 47;
                  }

                  else if (!v48[i])
                  {
                    if (mkdir(v48, 0x1FFu) == -1 && *__error() != 17)
                    {
                      v62 = *__error();
                      v63 = _SILogForLogForCategory(4);
                      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        v78 = "si_create_nested_dirs";
                        v79 = 1024;
                        *v80 = 4499;
                        *&v80[4] = 2080;
                        *&v80[6] = v48;
LABEL_95:
                        _os_log_error_impl(&dword_1C278D000, v63, OS_LOG_TYPE_ERROR, "%s:%d: SpotlightIndex#si_create_nested_dirsmkdir failed on %s", buf, 0x1Cu);
                      }

                      goto LABEL_76;
                    }

                    free(v48);
                    v58 = *__error();
                    v59 = _SILogForLogForCategory(4);
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v78 = __str;
                      _os_log_impl(&dword_1C278D000, v59, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#si_mobile_journal_hardlink_new_journal Created dir for hardlinking journals: %s", buf, 0xCu);
                    }

                    *__error() = v58;
LABEL_44:
                    v42 = link(v31, &v85);
                    v43 = *__error();
                    v44 = _SILogForLogForCategory(4);
                    v45 = v44;
                    if (v42)
                    {
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                      {
                        v46 = *__error();
                        *buf = 136316162;
                        v78 = "si_mobile_journal_hardlink_new_journal";
                        v79 = 1024;
                        *v80 = 4589;
                        *&v80[4] = 1024;
                        *&v80[6] = v46;
                        *&v80[10] = 2080;
                        *&v80[12] = v31;
                        v81 = 2080;
                        v82 = &v85;
                        _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: SpotlightIndex#si_mobile_journal_hardlink_new_journal Error %d linking journal(%s) for spotlightknowledged(%s)", buf, 0x2Cu);
                      }
                    }

                    else if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v78 = v31;
                      v79 = 2080;
                      *v80 = &v85;
                      _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#si_mobile_journal_hardlink_new_journal Linked journal(%s) for spotlightknowledged(%s)", buf, 0x16u);
                    }

                    *__error() = v43;
                    v50 = link(v33, v84);
                    v51 = *__error();
                    v52 = _SILogForLogForCategory(4);
                    v53 = v52;
                    if (v50)
                    {
                      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                      {
                        v54 = *__error();
                        *buf = 136316162;
                        v78 = "si_mobile_journal_hardlink_new_journal";
                        v79 = 1024;
                        *v80 = 4596;
                        *&v80[4] = 1024;
                        *&v80[6] = v54;
                        *&v80[10] = 2080;
                        *&v80[12] = v33;
                        v81 = 2080;
                        v82 = v84;
                        v55 = "%s:%d: SpotlightIndex#si_mobile_journal_hardlink_new_journal Error %d linking journal toc(%s) for spotlightknowledged(%s)";
                        v56 = v53;
                        v57 = 44;
                        goto LABEL_93;
                      }
                    }

                    else if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v78 = v33;
                      v79 = 2080;
                      *v80 = v84;
                      _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#si_mobile_journal_hardlink_new_journal Linked journal toc(%s) for spotlightknowledged(%s)", buf, 0x16u);
                    }

                    goto LABEL_78;
                  }
                }
              }

              v60 = *__error();
              v61 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v78 = "si_create_nested_dirs";
                v79 = 1024;
                *v80 = 4478;
                *&v80[4] = 2080;
                *&v80[6] = __str;
                _os_log_error_impl(&dword_1C278D000, v61, OS_LOG_TYPE_ERROR, "%s:%d: SpotlightIndex#si_create_nested_dirs strdup failed on %s", buf, 0x1Cu);
              }

              *__error() = v60;
LABEL_77:
              v51 = *__error();
              v66 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                v74 = *__error();
                *buf = 136315906;
                v78 = "si_mobile_journal_hardlink_new_journal";
                v79 = 1024;
                *v80 = 4579;
                *&v80[4] = 1024;
                *&v80[6] = v74;
                *&v80[10] = 2080;
                *&v80[12] = __str;
                v55 = "%s:%d: SpotlightIndex#si_mobile_journal_hardlink_new_journal Error %d creating dir for hardlinkging: %s";
                v56 = v66;
                v57 = 34;
LABEL_93:
                _os_log_error_impl(&dword_1C278D000, v56, OS_LOG_TYPE_ERROR, v55, buf, v57);
              }

LABEL_78:
              *__error() = v51;
LABEL_79:
              if (!*(v12 + 56) || !*(v12 + 64) || !*(v12 + 72) || *(v12 + 40) < 1)
              {
                return v12;
              }

              message = _si_mobile_journal_create_message(v12, 1u);
              v68 = si_xpc_send_client_msg(message, &__block_literal_global_1054);
              v69 = *__error();
              v70 = _SILogForLogForCategory(0);
              v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
              if (v68)
              {
                if (!v71)
                {
                  goto LABEL_89;
                }

                LOWORD(v89[0]) = 0;
                v72 = "### skg journal_new message sent";
              }

              else
              {
                if (!v71)
                {
                  goto LABEL_89;
                }

                LOWORD(v89[0]) = 0;
                v72 = "### skg journal_new NOT sent";
              }

              _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, v72, v89, 2u);
LABEL_89:
              *__error() = v69;
              if (message)
              {
                CFRelease(message);
              }

              return v12;
            }

            v36 = *__error();
            v37 = _SILogForLogForCategory(4);
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
LABEL_35:
              *__error() = v36;
              goto LABEL_79;
            }

            v65 = *(v12 + 40);
            v64 = *(v12 + 48);
            v83.st_dev = 136315906;
            *&v83.st_mode = "si_mobile_journal_hardlink_new_journal";
            WORD2(v83.st_ino) = 1024;
            *(&v83.st_ino + 6) = 4555;
            HIWORD(v83.st_uid) = 2080;
            *&v83.st_gid = v64;
            *(&v83.st_rdev + 2) = 2048;
            *(&v83.st_rdev + 6) = v65;
            v40 = "%s:%d: SpotlightIndex#si_mobile_journal_hardlink_new_journal Could not get journal toc realpath for journal: %s.%ld";
          }

          else
          {
            v36 = *__error();
            v37 = _SILogForLogForCategory(4);
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_35;
            }

            v39 = *(v12 + 40);
            v38 = *(v12 + 48);
            v83.st_dev = 136315906;
            *&v83.st_mode = "si_mobile_journal_hardlink_new_journal";
            WORD2(v83.st_ino) = 1024;
            *(&v83.st_ino + 6) = 4549;
            HIWORD(v83.st_uid) = 2080;
            *&v83.st_gid = v38;
            *(&v83.st_rdev + 2) = 2048;
            *(&v83.st_rdev + 6) = v39;
            v40 = "%s:%d: SpotlightIndex#si_mobile_journal_hardlink_new_journal Could not get journal realpath: %s.%ld";
          }

          _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, v40, &v83, 0x26u);
          goto LABEL_35;
        }
      }
    }
  }

  return v12;
}

uint64_t si_storecookieRef(uint64_t a1)
{
  if (!*(a1 + 1440))
  {
    if (*(a1 + 1192))
    {
      indexmetadata = si_create_indexmetadata(a1, 1);
      v16 = indexmetadata;
      if (indexmetadata)
      {
        v14 = 0;
        v15 = 0;
        field = db_get_field(*(a1 + 1192), indexmetadata, "kMDStoreUUID", &v14, &v15);
        v4 = *MEMORY[0x1E695E480];
        if (field)
        {
          v5 = CFUUIDCreate(v4);
          *(a1 + 1440) = v5;
          *(a1 + 1424) = CFUUIDGetUUIDBytes(v5);
          db_add_field(*(a1 + 1192), &v16, 1u, "kMDStoreUUID", 0, 0x108u, 14, (a1 + 1424), v6, 16);
          indexmetadata = v16;
          if (db_update_obj(*(a1 + 1192), v16, 12))
          {
            v7 = *__error();
            v8 = _SILogForLogForCategory(7);
            v9 = dword_1EBF46AE8 < 3;
            if (os_log_type_enabled(v8, (dword_1EBF46AE8 < 3)))
            {
              *buf = 0;
              _os_log_impl(&dword_1C278D000, v8, v9, "*warn* Failed getting store cookie", buf, 2u);
            }

            *__error() = v7;
          }
        }

        else
        {
          v11 = CFUUIDCreateFromUUIDBytes(v4, *v15);
          *(a1 + 1440) = v11;
          *(a1 + 1424) = CFUUIDGetUUIDBytes(v11);
        }
      }

      free(indexmetadata);
    }

    else
    {
      v10 = CFUUIDCreate(*MEMORY[0x1E695E480]);
      *(a1 + 1440) = v10;
      *(a1 + 1424) = CFUUIDGetUUIDBytes(v10);
    }
  }

  return *(a1 + 1440);
}

uint64_t fd_stat(uint64_t a1, stat *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    result = fstatat(*(a1 + 44), *(a1 + 72), a2, 2048);
    v5 = g_prot_error_callback;
    if (result != -1 || g_prot_error_callback == 0)
    {
      break;
    }

    v7 = *(a1 + 40);
    v8 = __error();
    if (((*(v5 + 16))(v5, v7, *v8, 8) & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t si_xpc_send_client_msg(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = qword_1EBF47B38;
  if (!qword_1EBF47B38)
  {
    os_unfair_lock_lock(&si_retain_service_connection_s_service_queue_lock);
    if (!qword_1EBF47B38)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      *__str = 0u;
      snprintf(__str, 0x100uLL, "%s.xpc.client.queue", "com.apple.spotlightknowledged");
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      qword_1EBF47B38 = dispatch_queue_create(__str, v5);
    }

    os_unfair_lock_unlock(&si_retain_service_connection_s_service_queue_lock);
    v4 = qword_1EBF47B38;
    if (!qword_1EBF47B38)
    {
      return 0;
    }
  }

  *__str = 0;
  *&__str[8] = __str;
  v13 = 0x2000000000uLL;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __si_retain_service_connection_block_invoke;
  block[3] = &unk_1E8193888;
  v11 = 3;
  block[4] = __str;
  block[5] = "com.apple.spotlightknowledged";
  dispatch_sync(v4, block);
  v6 = *(*&__str[8] + 24);
  _Block_object_dispose(__str, 8);
  if (!v6)
  {
    return 0;
  }

  if (qword_1EBF47B38)
  {
    v7 = a1 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    *__str = MEMORY[0x1E69E9820];
    *&__str[8] = 0x40000000;
    *&v13 = __si_xpc_send_msg_block_invoke;
    *(&v13 + 1) = &unk_1E81938B0;
    *&v14 = a2;
    *(&v14 + 1) = v6;
    xpc_connection_send_message_with_reply(v6, a1, qword_1EBF47B38, __str);
  }

  CFRelease(v6);
  return v8;
}

void *fd_create_sibling_with_suffix_protected(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a3;
  v7 = 0;
  asprintf(&v7, "%s%s", *(a1 + 72), a2);
  sibling_protected = fd_create_sibling_protected(a1, v7, v3, 3u);
  free(v7);
  return sibling_protected;
}

void *fd_create_sibling_protected(uint64_t a1, const char *a2, int a3, unsigned __int8 a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v8 = malloc_type_malloc(0x68uLL, 0x10300409CE040BCuLL);
  *v8 = -50529037;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = 1;
  v9 = *(a1 + 44);
  *(v8 + 10) = -1;
  *(v8 + 11) = v9;
  *(v8 + 12) = a3 | (((a3 & 3) != 0) << 29);
  LOWORD(a3) = *(v8 + 28);
  *(v8 + 30) &= 0xFC00u;
  *(v8 + 28) = a3 & 0xFFF0;
  v10 = strdup(a2);
  *(v8 + 52) = 0;
  v8[9] = v10;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  *(v8 + 28) = a3 & 0xF000 | (16 * a4);
  v18 = 0;
  v11 = _fd_acquire_fd(v8, &v18);
  if (v11 == -1)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = v8[9];
      v16 = *(v8 + 11);
      v17 = *__error();
      *buf = 136316162;
      v20 = "fd_create_sibling_protected";
      v21 = 1024;
      v22 = 393;
      v23 = 2080;
      v24 = v15;
      v25 = 1024;
      v26 = v16;
      v27 = 1024;
      v28 = v17;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: Open failed on %s child of %d with error %d", buf, 0x28u);
    }

    *__error() = v12;
    fd_release(v8);
    return 0;
  }

  *(v8 + 12) &= 0xFFFFF9FF;
  _fd_release_fd(v8, v11, 0, v18);
  return v8;
}

_BYTE *fd_realpath(_DWORD *a1, _BYTE *a2)
{
  v7 = 0;
  v4 = _fd_acquire_fd(a1, &v7);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  if (fcntl(v4, 50, a2) < 0 || !*a2)
  {
    a2 = 0;
  }

  _fd_release_fd(a1, v5, 0, v7);
  return a2;
}

uint64_t fd_mmap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    *__error() = 22;
    return -1;
  }

  v12 = 0;
  if (*(a1 + 44) == -1)
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = _fd_acquire_fd(a1, &v12);
  }

  if (v6 == -1)
  {
    return -1;
  }

  do
  {
    v7 = __mmap();
    if (v7 != -1)
    {
      break;
    }

    v8 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v9 = *(a1 + 40);
    v10 = __error();
  }

  while (((*(v8 + 16))(v8, v9, *v10, 10) & 1) != 0);
  if (*(a1 + 44) != -1)
  {
    _fd_release_fd(a1, v6, (*(a1 + 56) & 2) == 0, v12);
  }

  return v7;
}

uint64_t _SILogForLogForCategory(int a1)
{
  if (_SILogForLogForCategory_onceToken != -1)
  {
    dispatch_once(&_SILogForLogForCategory_onceToken, &__block_literal_global_120);
  }

  return gSILogArray[a1];
}

uint64_t _SIBudgetCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 160);
  if (v7)
  {
    return (*(v7 + 16))(v7, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return (*(a7 + 16))(a7);
  }
}

xpc_object_t _si_mobile_journal_create_message(uint64_t a1, unsigned int a2)
{
  add = atomic_fetch_add(&g_si_msg_id, 1uLL);
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, "msg_id", add);
  xpc_dictionary_set_uint64(v5, "je", a2);
  xpc_dictionary_set_string(v5, "command", "j");
  xpc_dictionary_set_string(v5, "j_name", *(a1 + 48));
  xpc_dictionary_set_uint64(v5, "j_num", *(a1 + 40));
  xpc_dictionary_set_string(v5, "j_cookie", *(a1 + 112));
  xpc_dictionary_set_uint64(v5, "j_dev", *(a1 + 56));
  xpc_dictionary_set_uint64(v5, "j_ino", *(a1 + 64));
  xpc_dictionary_set_uint64(v5, "toc_ino", *(a1 + 72));
  xpc_dictionary_set_uint64(v5, "i_pc_pr", *(a1 + 104));
  xpc_dictionary_set_BOOL(v5, "j_managed", *(a1 + 120));
  return v5;
}

void __si_retain_service_connection_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = gSIMachServicesNames_block_invoke_s_service_connections[v2];
  if (v3)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 40);
  v5 = g_service_queues[v2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __si_retain_service_connection_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_4305;
  v8[4] = v4;
  v9 = v2;
  mach_service = xpc_connection_create_mach_service(v4, v5, 0);
  if (mach_service)
  {
    v3 = mach_service;
    *&handler = MEMORY[0x1E69E9820];
    *(&handler + 1) = 0x40000000;
    v11 = __si_xpc_setup_connection_block_invoke;
    v12 = &unk_1E81938F8;
    v13 = v8;
    v14 = v5;
    xpc_connection_set_event_handler(mach_service, &handler);
    xpc_connection_activate(v3);
    gSIMachServicesNames_block_invoke_s_service_connections[*(a1 + 48)] = v3;
LABEL_4:
    *(*(*(a1 + 32) + 8) + 24) = xpc_retain(v3);
    return;
  }

  gSIMachServicesNames_block_invoke_s_service_connections[*(a1 + 48)] = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    LODWORD(handler) = 136315138;
    *(&handler + 4) = v7;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### could not get client connection for %s", &handler, 0xCu);
  }
}

uint64_t (*si_backtrace_routine_resolve(uint64_t a1, const __CFString *cf1, uint64_t (*a3)(), void *a4, void *a5))()
{
  if (!cf1)
  {
    goto LABEL_23;
  }

  if (!CFEqual(cf1, @"com.apple.mobilemail") && !CFEqual(cf1, @"com.apple.MobileSMS") && !CFEqual(cf1, @"com.apple.mobilecal") && !CFEqual(cf1, @"com.apple.FileProvider.LocalStorage") && !CFEqual(cf1, @"com.apple.CloudDocs.iCloudDriveFileProvider") && !CFEqual(cf1, @"com.apple.CloudDocs.iCloudDriveFileProviderManaged") && !CFEqual(cf1, @"com.apple.CloudDocs.MobileDocumentsFileProvider") && !CFEqual(cf1, @"com.apple.mobilenotes") && !CFEqual(cf1, @"com.apple.mobileslideshow") && !CFEqual(cf1, @"com.apple.photoanalysisd") && !CFEqual(cf1, @"com.apple.duetexpertd") && !CFEqual(cf1, @"com.apple.MobileAddressBook"))
  {
    CFEqual(cf1, @"com.apple.synapse.contentlinkingd");
  }

  if (CFEqual(cf1, @"com.apple.pommesctl"))
  {
    v10 = off_1EEADE960;
    goto LABEL_21;
  }

  if (CFEqual(cf1, @"com.apple.suggestd"))
  {
    v10 = off_1EEADE980;
    goto LABEL_21;
  }

  if (CFStringHasPrefix(cf1, @"com.apple.omniSearch."))
  {
    v10 = off_1EEADE988;
    goto LABEL_21;
  }

  if (!CFStringHasPrefix(cf1, @"com.apple.corespotlight.fixup"))
  {
    HasPrefix = CFStringHasPrefix(cf1, @"com.apple.");
    v10 = off_1EEADEA78;
    v20 = off_1EEADEA80;
    v21 = HasPrefix == 0;
LABEL_66:
    if (v21)
    {
      v10 = v20;
    }

    goto LABEL_21;
  }

  if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMe", 0))
  {
    if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeNot", 0))
    {
      if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeTextContentMatch", 0))
      {
        if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeTextContentMatchNot", 0))
        {
          if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingSpan", 0))
          {
            if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingSpanNot", 0))
            {
              if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingToken", 0))
              {
                if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingTokenNot", 0))
                {
                  if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingOCR", 0))
                  {
                    if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingOCRNot", 0))
                    {
                      if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingOCRTextContentMatch", 0))
                      {
                        if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingOCRTextContentMatchNot", 0))
                        {
                          if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingPreExtraction", 0))
                          {
                            if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingPreExtractionNot", 0))
                            {
                              if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRanking", 0))
                              {
                                if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingNot", 0))
                                {
                                  if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingTextContentMatch", 0))
                                  {
                                    if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingTextContentMatchNot", 0))
                                    {
                                      if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsMeRankingTextContentMatchNot2", 0))
                                      {
                                        if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsFromMe", 0))
                                        {
                                          if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsFromMeNot", 0))
                                          {
                                            if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsFromMeRanking", 0))
                                            {
                                              if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsFromMeRankingNot", 0))
                                              {
                                                if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsToMe", 0))
                                                {
                                                  if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsToMeNot", 0))
                                                  {
                                                    if (CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsToMeRanking", 0))
                                                    {
                                                      v19 = CFStringCompare(cf1, @"com.apple.corespotlight.fixup.kSPDerivedIsToMeRankingNot", 0);
                                                      v10 = off_1EEADE990;
                                                      v20 = off_1EEADEA70;
                                                      v21 = v19 == kCFCompareEqualTo;
                                                      goto LABEL_66;
                                                    }

                                                    v10 = off_1EEADEA68;
                                                  }

                                                  else
                                                  {
                                                    v10 = off_1EEADEA60;
                                                  }
                                                }

                                                else
                                                {
                                                  v10 = off_1EEADEA58;
                                                }
                                              }

                                              else
                                              {
                                                v10 = off_1EEADEA50;
                                              }
                                            }

                                            else
                                            {
                                              v10 = off_1EEADEA48;
                                            }
                                          }

                                          else
                                          {
                                            v10 = off_1EEADEA40;
                                          }
                                        }

                                        else
                                        {
                                          v10 = off_1EEADEA38;
                                        }
                                      }

                                      else
                                      {
                                        v10 = off_1EEADEA30;
                                      }
                                    }

                                    else
                                    {
                                      v10 = off_1EEADEA28;
                                    }
                                  }

                                  else
                                  {
                                    v10 = off_1EEADEA20;
                                  }
                                }

                                else
                                {
                                  v10 = off_1EEADEA18;
                                }
                              }

                              else
                              {
                                v10 = off_1EEADEA10;
                              }
                            }

                            else
                            {
                              v10 = off_1EEADEA08;
                            }
                          }

                          else
                          {
                            v10 = off_1EEADEA00;
                          }
                        }

                        else
                        {
                          v10 = off_1EEADE9F8;
                        }
                      }

                      else
                      {
                        v10 = off_1EEADE9F0;
                      }
                    }

                    else
                    {
                      v10 = off_1EEADE9E8;
                    }
                  }

                  else
                  {
                    v10 = off_1EEADE9E0;
                  }
                }

                else
                {
                  v10 = off_1EEADE9D8;
                }
              }

              else
              {
                v10 = off_1EEADE9D0;
              }
            }

            else
            {
              v10 = off_1EEADE9C8;
            }
          }

          else
          {
            v10 = off_1EEADE9C0;
          }
        }

        else
        {
          v10 = off_1EEADE9B8;
        }
      }

      else
      {
        v10 = off_1EEADE9B0;
      }
    }

    else
    {
      v10 = off_1EEADE9A8;
    }
  }

  else
  {
    v10 = off_1EEADE9A0;
  }

LABEL_21:
  v11 = *v10;
  if (*v10)
  {
    v12 = malloc_type_malloc(0x18uLL, 0x1080040A502281CuLL);
    *v12 = a3;
    v12[1] = a4;
    *(v12 + 16) = 1;
    a4 = v12;
    a3 = v11;
  }

LABEL_23:
  if (!a1)
  {
    goto LABEL_36;
  }

  v13 = *(a1 + 60);
  if (v13 == 1)
  {
    v14 = off_1EEADEA88;
    goto LABEL_28;
  }

  if (v13 == 3)
  {
    v14 = off_1EEADEA90;
    goto LABEL_28;
  }

  if (v13)
  {
    v17 = 2;
  }

  else
  {
    v17 = (v13 >> 1) - 1;
  }

  if (v17 <= 6 && ((0x47u >> v17) & 1) != 0)
  {
    v14 = off_1E8192900[v17];
LABEL_28:
    v15 = *v14;
    if (*v14)
    {
      v16 = malloc_type_malloc(0x18uLL, 0x1080040A502281CuLL);
      *v16 = a3;
      v16[1] = a4;
      *(v16 + 16) = 1;
      a4 = v16;
      a3 = v15;
    }
  }

LABEL_36:
  *a5 = a4;
  return a3;
}

void setattr_runLoop(void *a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = a1[4];
  v11 = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = __si_scheduler_set_thread_block_invoke;
  v14 = &__block_descriptor_tmp_29_1536;
  v15 = a1;
  v16 = v6;
  dispatch_sync(v7, &v11);
  a2(a3, 0);
  v8 = a1[4];
  v11 = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = __si_scheduler_set_thread_block_invoke;
  v14 = &__block_descriptor_tmp_29_1536;
  v15 = a1;
  v16 = 0;
  dispatch_sync(v8, &v11);
  do
  {
    v9 = a1;
    a1 = *a1;
  }

  while (a1);
  if (v9[33] <= 1)
  {
    v10 = 240;
    do
    {
      slab_cleanup(v10);
      v10 = (v10 + 1);
    }

    while (v10 != 255);
  }
}

uint64_t si_clientstatesandmeta_update(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = a2;
  if (*(a1 + 2072) != 1)
  {
    return 1;
  }

  v4 = *(a1 + 60);
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4 >> 1;
  }

  v6 = 1;
  v7 = v5 > 7;
  v8 = (1 << v5) & 0x86;
  if (!v7 && v8 != 0)
  {
    pthread_rwlock_wrlock((a1 + 80));
    Value = CFDictionaryGetValue(*(a1 + 72), @"journalSerialNumber");
    if (Value)
    {
      v26 = 0;
      CFNumberGetValue(Value, kCFNumberSInt64Type, &v26);
      if (v26 >= a2)
      {
        valuePtr = v26;
      }
    }

    v13 = *MEMORY[0x1E695E480];
    v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v14)
    {
      v15 = v14;
      CFDictionarySetValue(*(a1 + 72), @"journalSerialNumber", v14);
      CFRelease(v15);
    }

    v16 = CFNumberCreate(v13, kCFNumberIntType, (a1 + 2344));
    if (v16)
    {
      v17 = v16;
      CFDictionarySetValue(*(a1 + 72), @"syncCount", v16);
      CFRelease(v17);
    }

    v18 = CFNumberCreate(v13, kCFNumberIntType, (a1 + 2348));
    if (v18)
    {
      v19 = v18;
      CFDictionarySetValue(*(a1 + 72), @"deferSyncCount", v18);
      CFRelease(v19);
    }

    v20 = 2320;
    if (a3)
    {
      v20 = 2328;
    }

    v21 = *(a1 + v20);
    if (v21)
    {
      v22 = fd_name_ptr(v21);
      if (v22)
      {
        v23 = CFStringCreateWithCString(v13, v22, 0x8000100u);
        if (v23)
        {
          v24 = v23;
          CFDictionarySetValue(*(a1 + 72), @"journalName", v23);
          CFRelease(v24);
        }
      }
    }

    v6 = SIPersistClientStateAndMeta(a1, 0);
    pthread_rwlock_unlock((a1 + 80));
  }

  return v6;
}

uint64_t mobile_journal_plist(_DWORD *a1, unint64_t a2, int a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = fd_lseek(a1, 0, 2);
  if (v11 == -1)
  {
    goto LABEL_8;
  }

  v12 = v11;
  if (a5)
  {
    *a5 = v11;
  }

  Length = _MDPlistContainerGetLength();
  v14 = Length;
  if (!Length)
  {
LABEL_8:
    v17 = 22;
  }

  else
  {
    v15 = -264306963;
    if (a2)
    {
      if (a2 >= 0x80)
      {
        if (a2 >= 0x4000)
        {
          if (a2 >= 0x200000)
          {
            if (a2 >> 28)
            {
              if (a2 >> 35)
              {
                if (a2 >> 42)
                {
                  if (a2 >> 49)
                  {
                    if (HIBYTE(a2))
                    {
                      v16 = 9;
                    }

                    else
                    {
                      v16 = 8;
                    }
                  }

                  else
                  {
                    v16 = 7;
                  }
                }

                else
                {
                  v16 = 6;
                }
              }

              else
              {
                v16 = 5;
              }
            }

            else
            {
              v16 = 4;
            }
          }

          else
          {
            v16 = 3;
          }
        }

        else
        {
          v16 = 2;
        }
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
      v15 = -264372499;
    }

    v25[2] = a3;
    v18 = v16 + Length;
    v25[0] = v15;
    v25[1] = v16 + Length;
    if (fd_write(a1, v25, 0xCuLL) != -1)
    {
      if (!a2 || ((*buf = 0u, v27 = 0u, a2 > 0x7F) ? (a2 >> 14 ? (a2 >> 21 ? (a2 >> 28 ? (a2 >> 35 ? (a2 >> 42 ? (a2 >> 49 ? (HIBYTE(a2) ? (buf[0] = -1, *&buf[1] = a2, v19 = 9) : (buf[0] = -2, buf[1] = BYTE6(a2), buf[2] = BYTE5(a2), buf[3] = BYTE4(a2), buf[4] = BYTE3(a2), buf[5] = BYTE2(a2), buf[6] = BYTE1(a2), v19 = 8, buf[7] = a2)) : (buf[0] = BYTE6(a2) | 0xFC, buf[1] = BYTE5(a2), buf[2] = BYTE4(a2), buf[3] = BYTE3(a2), buf[4] = BYTE2(a2), buf[5] = BYTE1(a2), v19 = 7, buf[6] = a2)) : (buf[0] = BYTE5(a2) | 0xF8, buf[1] = BYTE4(a2), buf[2] = BYTE3(a2), buf[3] = BYTE2(a2), buf[4] = BYTE1(a2), buf[5] = a2, v19 = 6)) : (buf[0] = BYTE4(a2) | 0xF0, buf[1] = BYTE3(a2), buf[2] = BYTE2(a2), buf[3] = BYTE1(a2), buf[4] = a2, v19 = 5)) : (buf[0] = BYTE3(a2) | 0xE0, buf[1] = BYTE2(a2), buf[2] = BYTE1(a2), buf[3] = a2, v19 = 4)) : (buf[0] = BYTE2(a2) | 0xC0, buf[1] = BYTE1(a2), buf[2] = a2, v19 = 3)) : (buf[0] = BYTE1(a2) | 0x80, buf[1] = a2, v19 = 2)) : (buf[0] = a2, v19 = 1), fd_write(a1, buf, v19) != -1))
      {
        Bytes = _MDPlistContainerGetBytes();
        if (fd_write(a1, Bytes, v14) != -1)
        {
          result = 0;
          if (a6)
          {
            *a6 = v18 + 12;
          }

          return result;
        }
      }
    }

    v17 = *__error();
    fd_truncate(a1, v12);
  }

  v22 = *__error();
  v23 = _SILogForLogForCategory(4);
  v24 = 2 * (dword_1EBF46ADC < 4);
  if (os_log_type_enabled(v23, v24))
  {
    *buf = 67109120;
    *&buf[4] = v17;
    _os_log_impl(&dword_1C278D000, v23, v24, "Error writing to log file: %d", buf, 8u);
  }

  *__error() = v22;
  return 0xFFFFFFFFLL;
}

off_t fd_lseek(_DWORD *a1, off_t a2, int a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v6 = _fd_acquire_fd(a1, &v17);
  if (v6 == -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v7 = lseek(v6, a2, a3);
    if (v7 != -1 || !g_prot_error_callback)
    {
      break;
    }

    v8 = *__error();
    v9 = g_prot_error_callback;
    v10 = a1[10];
    v11 = __error();
    if (((*(v9 + 16))(v9, v10, *v11, 9) & 1) == 0)
    {
      *__error() = v8;
      _fd_release_fd(a1, v6, 0, v17);
      goto LABEL_7;
    }
  }

  _fd_release_fd(a1, v6, 0, v17);
  if (v7 == -1)
  {
LABEL_7:
    bzero(v32, 0x400uLL);
    v12 = *__error();
    v13 = *__error();
    v14 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = fd_realpath(a1, v32);
      if (!v16)
      {
        v16 = fd_name(a1, v32, 0x400uLL);
        if (!v16)
        {
          v16 = "";
        }
      }

      *buf = 136316674;
      v19 = "fd_lseek";
      v20 = 1024;
      v21 = 631;
      v22 = 1024;
      v23 = v6;
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a2;
      v28 = 1024;
      v29 = a3;
      v30 = 1024;
      v31 = v12;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: lseek(%d %s, o:%lx, w:%d) err:%d", buf, 0x38u);
    }

    *__error() = v13;
    *__error() = v12;
    return -1;
  }

  return v7;
}

void si_enqueue_barrier_with_qos(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a1)
  {
    v5 = *a1;
    if (*a1)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
      if (a2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = 0;
      if (a2)
      {
LABEL_5:
        v7 = *(a1 + 8);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[5] = a1;
        block[6] = a3;
        block[2] = __si_enqueue_barrier_with_qos_block_invoke;
        block[3] = &__block_descriptor_tmp_2;
        block[4] = v6;
        v9 = a2;
        block[7] = a4;
        dispatch_sync(v7, block);
        return;
      }
    }

    a2 = *(a1 + 24);
    goto LABEL_5;
  }

  a3(a4, 1);
}

void si_routine_priority(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_firstParty(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void setCSAttributes1(unsigned __int8 *a1, int a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v53 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 7))
  {
    v6 = dword_1EBF46AD8 < 5;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v41 = *__error();
    v42 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v44 = CFAbsoluteTimeGetCurrent();
      v45 = " canceled";
      v46 = v44 - *(a1 + 8);
      if (!a2)
      {
        v45 = "";
      }

      *buf = 134218242;
      *&buf[4] = v46;
      *&buf[12] = 2080;
      *&buf[14] = v45;
      _os_log_impl(&dword_1C278D000, v42, OS_LOG_TYPE_DEFAULT, "Set attributes waited for %f seconds%s", buf, 0x16u);
    }

    *__error() = v41;
  }

  v7 = *a1;
  v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (!a2)
  {
    v9 = v8;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v11 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, a1, 0x40000000, add_explicit + 1);
    v51 = HIDWORD(v11);
    v52 = v11;
    v49 = v13;
    v50 = v12;
    v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    *(v14 + 216) = 0;
    v15 = *(v14 + 312);
    v16 = *(v14 + 224);
    v17 = v14;
    if (v16)
    {
      v16(*(v14 + 288));
    }

    if (_setjmp(v17))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      v17[78] = v15;
      CIOnThreadCleanUpReset(v49);
      dropThreadId(v52, 1, add_explicit + 1);
      CICleanUpReset(v52, v50);
LABEL_36:
      bumpWorkTime(v7, Current);
      goto LABEL_37;
    }

    base = si_mobile_journal_get_base(*(a1 + 1), *(a1 + 2), *(a1 + 3));
    if (!base || *(a1 + 3) < 0xCuLL || *base != -264306963 && *base != -264372499)
    {
LABEL_33:
      v35 = threadData[9 * v52 + 1] + 320 * v51;
      *(v35 + 312) = v15;
      v36 = *(v35 + 232);
      if (v36)
      {
        v36(*(v35 + 288));
      }

      dropThreadId(v52, 0, add_explicit + 1);
      goto LABEL_36;
    }

    v19 = *(base + 1);
    v20 = base + 12;
    if (a1[32] == 1)
    {
      *buf = 0;
      VInt64 = v2_readVInt64(v20, buf);
      v22 = v19 - *buf;
      v23 = VInt64;
    }

    else
    {
      v23 = 0;
      v22 = v19;
    }

    v24 = v22;
    _MDPlistGetRootPlistObjectFromBytes();
    memset(buf, 0, 24);
    if (_MDPlistArrayGetCount() != 2)
    {
      v31 = 0;
LABEL_30:
      if (v23 && (v31 & 1) == 0)
      {
        *(v7 + 2136) = v23;
      }

      goto LABEL_33;
    }

    v47 = v24;
    v48 = v23;
    memset(buf, 0, 24);
    _MDPlistArrayGetPlistObjectAtIndex();
    memset(buf, 0, 24);
    _MDPlistArrayGetPlistObjectAtIndex();
    memset(buf, 0, 24);
    v25 = _MDPlistContainerCopyObject();
    if (v25 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v25)))
    {
      memset(buf, 0, 24);
      Count = _MDPlistArrayGetCount();
      v23 = v48;
      (*(*(v7 + 2360) + 120))(*(*(v7 + 2360) + 144), v25, a1[85], (*(a1 + 20) >> 4) & 1, Count, v47);
      v28 = SIGetAccumulatedSizeForGroup(v7, v25, 0);
      v29 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      logIndexingEventInCoreAnalyticsWithBundleId(v25, Count, v28, v29 - v9);
      v30 = v25;
    }

    else
    {
      v32 = v25;
      v33 = *__error();
      v34 = _SILogForLogForCategory(0);
      v23 = v48;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "setCSAttributes1";
        *&buf[12] = 1024;
        *&buf[14] = 32176;
        *&buf[18] = 2048;
        *&buf[20] = v48;
        v55 = 2112;
        v56 = v32;
        _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: Invalid bundleID %ld %@", buf, 0x26u);
      }

      *__error() = v33;
      v30 = v32;
      if (!v32)
      {
        goto LABEL_29;
      }
    }

    CFRelease(v30);
    LOBYTE(v30) = v53 != 0;
LABEL_29:
    v31 = v30;
    goto LABEL_30;
  }

LABEL_37:
  v37 = *(a1 + 3);
  if (v37)
  {
    atomic_fetch_add_explicit(&gEnqueuedSize, -v37, memory_order_relaxed);
  }

  v38 = *(a1 + 5);
  if (v38)
  {
    v38(*(a1 + 6), v53);
  }

  v39 = *(a1 + 1);
  if (v39 && atomic_fetch_add(v39, 0xFFFFFFFF) == 1)
  {
    _si_mobile_journal_finalize(v39, 1);
  }

  v40 = *(a1 + 9);
  if (v40)
  {
    CFRelease(v40);
  }

  free(a1);
}

uint64_t *si_mobile_journal_get_base(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    memset(v23, 0, 255);
    v6 = *__error();
    v7 = _SILogForLogForCategory(4);
    v8 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = fd_name(v5[1], v23, 0xFFuLL);
      v21 = 136315138;
      v22 = v9;
      _os_log_impl(&dword_1C278D000, v7, v8, "Get_base for journal %s", &v21, 0xCu);
    }

    *__error() = v6;
    fd_assert_not_unlinked(v5[1]);
    v10 = v5[2];
    if (v10 != -1)
    {
      v11 = v5[4];
      v12 = a2 - v11;
      if (a2 >= v11 && a3 + a2 <= (v5[3] + v11))
      {
        return &v10[v12];
      }
    }

    v13 = *MEMORY[0x1E69E9AC8];
    v14 = *MEMORY[0x1E69E9AC8] + a3;
    if (v14 <= 0x100000)
    {
      v14 = 0x100000;
    }

    v15 = v13 + v14;
    v16 = -v13;
    v17 = v16 & a2;
    v18 = v15 - 1;
    v19 = v18 & v16;
    v20 = v5[3];
    if (v20)
    {
      if (v10 != -1)
      {
        munmap(v10, v20);
      }

      v5[2] = -1;
      v5[3] = v19;
      v5[4] = 0;
      v10 = fd_mmap(v5[1], v19, 1, 1025, v17);
    }

    else
    {
      v10 = fd_guarded_mmap(v5[1], v18 & v16, v16 & a2);
    }

    v5[2] = v10;
    if (v10 != -1)
    {
      v5[3] = v19;
      v5[4] = v17;
      v12 = a2 - v17;
      return &v10[v12];
    }

    return 0;
  }

  return result;
}

void si_enqueue_barrier_inner_with_qos(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  if (!a2)
  {
    v17 = __si_assert_copy_extra_661(-1);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 727, "queue", v19);
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

  if (a1 && (v8 = *a2) != 0 && !*(v8 + 104) && *(v8 + 64) != 1)
  {
    v9 = a3;
    atomic_fetch_add_explicit((a1 + 132), 1u, memory_order_relaxed);
    v10 = a2[2];
    *(a2 + 7) = vaddq_s64(*(a2 + 7), vdupq_n_s64(1uLL));
    v11 = malloc_type_malloc(0x48uLL, 0x10A0040047F2C8DuLL);
    v11[4] = a5;
    v11[5] = 0;
    v11[6] = 0;
    v11[7] = a5 ^ a4;
    *v11 = a1;
    v11[1] = v8;
    v11[2] = a2;
    v11[3] = a4;
    v12 = *(a1 + 136) == 1 && (a2[7] & 0xF) == 0;
    *(v11 + 64) = v12;
    if (v9 <= QOS_CLASS_USER_INITIATED)
    {
      v13 = 25;
    }

    else
    {
      v13 = v9;
    }

    if (gTurboMode == 1)
    {
      v9 = v13;
    }

    if (*(v8 + 192) && *(v8 + 216) < v9)
    {
      pthread_mutex_lock(*(v8 + 8));
      v14 = *(v8 + 192);
      if (v14)
      {
        if (*(v8 + 216) < v9)
        {
          v15 = *(v8 + 208);
          *(v8 + 208) = pthread_override_qos_class_start_np(v14, v9, 0);
          *(v8 + 216) = v9;
          if (v15)
          {
            pthread_override_qos_class_end_np(v15);
          }
        }
      }

      pthread_mutex_unlock(*(v8 + 8));
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __enqueue_barrier_with_qos_block_invoke;
    block[3] = &__block_descriptor_tmp_48;
    block[4] = v11;
    v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v9, 0, block);
    dispatch_barrier_async(v10, v16);
    _Block_release(v16);
  }

  else
  {

    a4(a5, 1, a3);
  }
}

void __work_fun_inner_block_invoke_53(void *result)
{
  if (*(*(result[4] + 8) + 24) == 1)
  {
    v3 = result[5];
    v2 = result[6];
    --v3[8];
    if (v2 == *v3)
    {
      dec_running(v2);
    }

    dec_running(result[7]);
    v4 = result[8];
    if (v4)
    {
      *(v4 + 24) = 0;
    }
  }
}

void dec_running(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 128));
  v2 = *(a1 + 112) - 1;
  *(a1 + 112) = v2;
  os_unfair_lock_unlock((a1 + 128));
  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      *(a1 + 40) = 0;
      v3[2](v3);

      _Block_release(v3);
    }
  }
}

uint64_t dropThreadId(uint64_t result, int a2, int a3)
{
  v3 = result;
  v4 = &threadData[9 * result];
  v5 = *(v4 + 4);
  if (!v5)
  {
    v22 = __si_assert_copy_extra_332();
    v16 = v22;
    v23 = "";
    if (v22)
    {
      v23 = v22;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1470, "td->itemCount", v23);
    goto LABEL_12;
  }

  if (!a2)
  {
    v19 = v5 - 1;
    *(v4 + 4) = v19;
    --*(&threadList + 4 * result + 3);
    if (*(v4[1] + 320 * v19 + 308) == a3)
    {
      return result;
    }

    v20 = __si_assert_copy_extra_332();
    v16 = v20;
    v21 = "";
    if (v20)
    {
      v21 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1492, "seqNum == td->items[td->itemCount].seqNum", v21);
LABEL_12:
    free(v16);
    if (__valid_fs(-1))
    {
      v18 = 2989;
    }

    else
    {
      v18 = 3072;
    }

    *v18 = -559038737;
    abort();
  }

  v7 = v5 & (v5 >> 31);
  v8 = v5 - v7;
  v9 = 320 * v5;
  v10 = v7 - v5;
  v11 = 1;
  while (1)
  {
    if (v10 + v11 == 1)
    {
      goto LABEL_19;
    }

    v12 = v4[1] + v9;
    v13 = *(v12 - 72);
    if (v13)
    {
      result = v13(*(v12 - 32));
      *(v12 - 72) = 0;
    }

    if ((*(v12 - 108) & 0x80000001) != 0)
    {
      break;
    }

    v14 = *(v4[1] + v9 - 12);
    v9 -= 320;
    ++v11;
    if (v14 < a3)
    {
      v15 = __si_assert_copy_extra_332();
      v16 = v15;
      v17 = "";
      if (v15)
      {
        v17 = v15;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1485, "seqNum <= td->items[j].seqNum", v17);
      goto LABEL_12;
    }
  }

  v8 = v11;
LABEL_19:
  *(v4 + 4) -= v8;
  *(&threadList + 4 * v3 + 3) -= v8;
  return result;
}

void si_scheduler_trigger_tokens(uint64_t result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *(v1 + 16);
      si_enqueue_barrier(*(v1 + 24), *(v1 + 32), *(v1 + 40));
      *(v1 + 32) = 0;
      *(v1 + 40) = 0;
      release_token(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t db2_get_obj_callback(uint64_t a1, unint64_t a2, void **a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, _DWORD *a7)
{
  v10 = a4;
  v168 = *MEMORY[0x1E69E9840];
  v164 = 0;
  if ((a4 & 1) == 0)
  {
    v163 = a5;
    goto LABEL_3;
  }

  if (db_read_lock(a1 + 584))
  {
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13296);
  }

  *buf = 0;
  *&buf[8] = 0;
  v15 = *(a1 + 992);
  v16 = v15[1];
  if (!*&v16)
  {
    goto LABEL_21;
  }

  v17 = vcnt_s8(v16);
  v17.i16[0] = vaddlv_u8(v17);
  if (v17.u32[0] > 1uLL)
  {
    v18 = a2;
    if (*&v16 <= a2)
    {
      v18 = a2 % *&v16;
    }
  }

  else
  {
    v18 = (*&v16 - 1) & a2;
  }

  v19 = *(*v15 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_21:
    v22 = *(a1 + 856);
    v23 = *(v22 + 8);
    if (v23)
    {
      v24 = *(v22 + 16);
      if (v24 >= v23 || (v25 = v22 + 16 * v24, v27 = *(v25 + 20), v26 = v25 + 20, v27 != a2) || (v28 = *(v26 + 12), v28 >> 28))
      {
        v29 = v23;
        if (v23 < 1)
        {
          v31 = 0;
          v32 = 0;
        }

        else
        {
          v30 = 0;
          while (1)
          {
            while (1)
            {
              v32 = (v23 + v30) >> 1;
              v33 = v22 + 20 + 16 * v32;
              if (!(*(v33 + 12) >> 28))
              {
                v34 = *v33;
                if (v34 <= a2)
                {
                  break;
                }
              }

              v31 = 0;
              v23 = (v23 + v30) >> 1;
              if (v30 >= v32)
              {
                goto LABEL_39;
              }
            }

            if (v34 == a2)
            {
              break;
            }

            v30 = v32 + 1;
            v31 = 1;
            if ((v32 + 1) >= v23)
            {
              goto LABEL_39;
            }
          }

          v31 = 0;
        }

LABEL_39:
        if (v29 - 1 > v32)
        {
          v37 = v31;
        }

        else
        {
          v37 = 0;
        }

        v38 = v32 + v37;
        v39 = v22 + 16 * v38;
        *(v22 + 16) = v38;
        v26 = v39 + 20;
        v28 = *(v39 + 32);
      }

      if (!page_find_oid_with_flags(a1, *(v26 + 8), v28 & 0xFFFFFFF, a2, 0, &v164, 1, buf))
      {
        goto LABEL_216;
      }

      v40 = *(a1 + 856);
      v41 = *(v40 + 8);
      if (v41)
      {
        v42 = *(v40 + 16);
        if (v42 < v41)
        {
          v43 = v40 + 16 * v42;
          v45 = *(v43 + 20);
          v44 = v43 + 20;
          if (v45 == a2)
          {
            v46 = *(v44 + 12);
            if (v46 >> 28 == 1)
            {
              goto LABEL_75;
            }
          }

          if (*v44 == a2)
          {
            v46 = *(v44 + 12);
            if (v46 >> 28 == 1)
            {
              goto LABEL_75;
            }
          }
        }

        v47 = v41;
        if (v41 < 1)
        {
          v56 = 0;
          v51 = 0;
          goto LABEL_72;
        }

        v48 = 0;
        while (1)
        {
          v51 = (v41 + v48) >> 1;
          v52 = v40 + 20 + 16 * v51;
          v53 = *(v52 + 12) >> 28;
          if (v53 == 1)
          {
            v49 = a2 - *v52;
            v50 = (v41 + v48) >> 1;
            if (v49 < 0)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v49 = 1 - v53;
            v50 = (v41 + v48) >> 1;
            if (v49 < 0)
            {
              goto LABEL_55;
            }
          }

          if (!v49)
          {
            v56 = 0;
LABEL_72:
            if (v47 - 1 <= v51)
            {
              v56 = 0;
            }

            v59 = v51 + v56;
            v60 = v40 + 16 * v59;
            *(v40 + 16) = v59;
            v44 = v60 + 20;
            v46 = *(v60 + 32);
LABEL_75:
            if (page_find_oid_with_flags(a1, *(v44 + 8), v46 & 0xFFFFFFF, a2, 1u, &v164, 1, buf))
            {
              v163 = a5;
              v61 = pthread_mutex_lock((a1 + 584));
              v62 = *(a1 + 780) - 1;
              *(a1 + 780) = v62;
              if (!v62)
              {
                db_rwlock_wakeup(a1 + 584, 0, 0);
              }

              pthread_mutex_unlock((a1 + 584));
              if (v61)
              {
                sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13337);
              }

              goto LABEL_79;
            }

LABEL_216:
            if (a3)
            {
              v102 = _inflateDBO(a1, v164, a3, 0, v10, 0);
              if (*&buf[12])
              {
                page_release(a1, *buf, *&buf[12], *&buf[8], 0);
              }

              if (a5 && !v102)
              {
                a5(*a3, a6);
              }
            }

            else
            {
              v102 = 0;
            }

            v152 = pthread_mutex_lock((a1 + 584));
            v153 = *(a1 + 780) - 1;
            *(a1 + 780) = v153;
            if (!v153)
            {
              db_rwlock_wakeup(a1 + 584, 0, 0);
            }

            pthread_mutex_unlock((a1 + 584));
            if (v152)
            {
              sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13354);
            }

            goto LABEL_226;
          }

          v48 = v51 + 1;
          v50 = v41;
LABEL_55:
          v41 = v50;
          if (v48 >= v50)
          {
            v56 = v49 > 0;
            goto LABEL_72;
          }
        }
      }

      v163 = a5;
      v54 = pthread_mutex_lock((a1 + 584));
      v55 = *(a1 + 780) - 1;
      *(a1 + 780) = v55;
      if (!v55)
      {
        db_rwlock_wakeup(a1 + 584, 0, 0);
      }

      pthread_mutex_unlock((a1 + 584));
      if (v54)
      {
        sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13329);
      }
    }

    else
    {
      v163 = a5;
      v35 = pthread_mutex_lock((a1 + 584));
      v36 = *(a1 + 780) - 1;
      *(a1 + 780) = v36;
      if (!v36)
      {
        db_rwlock_wakeup(a1 + 584, 0, 0);
      }

      pthread_mutex_unlock((a1 + 584));
      if (v35)
      {
        sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13310);
      }
    }

LABEL_79:
    if (!a7)
    {
      return 2;
    }

    v14 = 1;
    goto LABEL_81;
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == a2)
    {
      break;
    }

    if (v17.u32[0] > 1uLL)
    {
      if (v21 >= *&v16)
      {
        v21 %= *&v16;
      }
    }

    else
    {
      v21 &= *&v16 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_21;
    }

LABEL_14:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_21;
    }
  }

  if (v20[2] != a2)
  {
    goto LABEL_14;
  }

  if (*(v20 + 6) != 3)
  {
    v164 = v20[4];
    goto LABEL_216;
  }

  v163 = a5;
  v57 = pthread_mutex_lock((a1 + 584));
  v58 = *(a1 + 780) - 1;
  *(a1 + 780) = v58;
  if (!v58)
  {
    db_rwlock_wakeup(a1 + 584, 0, 0);
  }

  pthread_mutex_unlock((a1 + 584));
  if (v57)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13301);
  }

  if (!a7)
  {
    return 2;
  }

LABEL_3:
  v14 = 0;
LABEL_81:
  v162 = a6;
  v63 = __THREAD_SLOT_KEY[0];
  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v63 = __THREAD_SLOT_KEY[0];
  }

  v64 = pthread_getspecific(v63);
  HIDWORD(v66) = qos_class_self() - 9;
  LODWORD(v66) = HIDWORD(v66);
  v65 = v66 >> 2;
  if (v65 > 6)
  {
    v67 = 0;
  }

  else
  {
    v67 = dword_1C2BFF8F0[v65];
  }

  v68 = pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_89:
    db_rwlock_wait(a1 + 584, v67, 2);
  }

  else
  {
    if (v67 <= 5)
    {
      v128 = v67 - 6;
      v129 = (a1 + 16 * v67 + 648);
      while (!*v129)
      {
        v129 += 2;
        if (__CFADD__(v128++, 1))
        {
          goto LABEL_173;
        }
      }

      goto LABEL_89;
    }

LABEL_173:
    *(a1 + 768) = pthread_self();
  }

  pthread_mutex_unlock((a1 + 584));
  if (v68)
  {
    v160 = *__error();
    v161 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "db2_get_obj_callback";
      *&buf[12] = 1024;
      *&buf[14] = 13357;
      v166 = 1024;
      v167 = v68;
      _os_log_error_impl(&dword_1C278D000, v161, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
    }

    *__error() = v160;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13357);
  }

  v69 = v64 - 1;
  if (v64)
  {
    v70 = CIOnThreadCleanUpPush((v64 - 1), db_write_unlock, a1 + 584);
  }

  else
  {
    v70 = -1;
  }

  v71 = *(a1 + 992);
  v72 = v71[1];
  if (v72)
  {
    v73 = vcnt_s8(v72);
    v73.i16[0] = vaddlv_u8(v73);
    if (v73.u32[0] > 1uLL)
    {
      v74 = a2;
      if (*&v72 <= a2)
      {
        v74 = a2 % *&v72;
      }
    }

    else
    {
      v74 = (*&v72 - 1) & a2;
    }

    v75 = *(*v71 + 8 * v74);
    if (v75)
    {
      for (i = *v75; i; i = *i)
      {
        v77 = i[1];
        if (v77 == a2)
        {
          if (i[2] == a2)
          {
            if (*(i + 6) != 3)
            {
              v164 = i[4];
              goto LABEL_204;
            }

            if (!a7 || db2_store_obj_preamble(*(a1 + 804), a7, 0) || db2_store_obj_inner(a1, a7, 0, v131))
            {
              v102 = 2;
            }

            else
            {
              v155 = malloc_type_malloc((a7[3] + 512), 0x1000040EED21634uLL);
              v156 = v155;
              if (v155)
              {
                memcpy(v155, a7, a7[3]);
                v156[2] = a7[3] + 512;
              }

              *a3 = v156;
              v102 = 3;
            }

            v132 = pthread_mutex_lock((a1 + 584));
            *(a1 + 788) = 0;
            v133 = *(a1 + 760);
            *(a1 + 760) = 0u;
            v134 = *(a1 + 780) != 0;
            *(a1 + 796) = 0;
            db_rwlock_wakeup(a1 + 584, v134, 0);
            pthread_mutex_unlock((a1 + 584));
            if (v133)
            {
              pthread_override_qos_class_end_np(v133);
            }

            if (v132)
            {
              sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13367);
            }

LABEL_201:
            if (v64)
            {
              CIOnThreadCleanUpClearItem((v64 - 1), v70);
              v140 = &threadData[9 * v69];
              v143 = *(v140 + 14);
              v141 = v140 + 7;
              v142 = v143;
              if (v70 + 1 == v143)
              {
                *v141 = v142 - 1;
              }
            }

            return v102;
          }
        }

        else
        {
          if (v73.u32[0] > 1uLL)
          {
            if (v77 >= *&v72)
            {
              v77 %= *&v72;
            }
          }

          else
          {
            v77 &= *&v72 - 1;
          }

          if (v77 != v74)
          {
            break;
          }
        }
      }
    }
  }

  v78 = *(a1 + 856);
  v79 = *(v78 + 8);
  if (!v79)
  {
    if (a7 && !db2_store_obj_preamble(*(a1 + 804), a7, 0) && !db2_store_obj_inner(a1, a7, 0, v92))
    {
      v93 = malloc_type_malloc((a7[3] + 512), 0x1000040EED21634uLL);
      v94 = v93;
      if (v93)
      {
        memcpy(v93, a7, a7[3]);
        v94[2] = a7[3] + 512;
      }

      *a3 = v94;
    }

    v95 = pthread_mutex_lock((a1 + 584));
    *(a1 + 788) = 0;
    v96 = *(a1 + 760);
    *(a1 + 760) = 0u;
    v97 = *(a1 + 780) != 0;
    *(a1 + 796) = 0;
    db_rwlock_wakeup(a1 + 584, v97, 0);
    pthread_mutex_unlock((a1 + 584));
    if (v96)
    {
      pthread_override_qos_class_end_np(v96);
    }

    if (v95)
    {
      sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13380);
    }

    goto LABEL_132;
  }

  v80 = *(v78 + 16);
  if (v80 < v79)
  {
    v81 = v78 + 16 * v80;
    v83 = *(v81 + 20);
    v82 = v81 + 20;
    if (v83 == a2)
    {
      v84 = *(v82 + 12);
      if (v14 == v84 >> 28)
      {
        goto LABEL_143;
      }
    }
  }

  v85 = v79;
  if (v79 < 1)
  {
    v103 = 0;
    v87 = 0;
    goto LABEL_139;
  }

  v86 = 0;
  while (2)
  {
    v87 = (v79 + v86) >> 1;
    v88 = v78 + 20 + 16 * v87;
    v89 = v14 - (*(v88 + 12) >> 28);
    if (v89)
    {
      v90 = v89;
      v91 = (v79 + v86) >> 1;
      if (v90 < 0)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v90 = a2 - *v88;
      v91 = (v79 + v86) >> 1;
      if (v90 < 0)
      {
LABEL_116:
        v79 = v91;
        if (v86 >= v91)
        {
          v103 = v90 > 0;
          goto LABEL_139;
        }

        continue;
      }
    }

    break;
  }

  if (v90)
  {
    v86 = v87 + 1;
    v91 = v79;
    goto LABEL_116;
  }

  v103 = 0;
LABEL_139:
  v104 = v85 - 1 > v87 && v103;
  v105 = v87 + v104;
  v106 = v78 + 16 * v105;
  *(v78 + 16) = v105;
  v82 = v106 + 20;
  v84 = *(v106 + 32);
LABEL_143:
  oid_with_flags = page_find_oid_with_flags(a1, *(v82 + 8), v84 & 0xFFFFFFF, a2, v14, &v164, 0, 0);
  if (!oid_with_flags)
  {
    goto LABEL_204;
  }

  if (v14)
  {
    v102 = oid_with_flags;
    if (a7 && !db2_store_obj_preamble(*(a1 + 804), a7, 0) && !db2_store_obj_inner(a1, a7, 0, v108))
    {
      v109 = malloc_type_malloc((a7[3] + 512), 0x1000040EED21634uLL);
      v110 = v109;
      if (v109)
      {
        memcpy(v109, a7, a7[3]);
        v110[2] = a7[3] + 512;
      }

      *a3 = v110;
      v102 = 3;
    }

    v111 = pthread_mutex_lock((a1 + 584));
    *(a1 + 788) = 0;
    v112 = *(a1 + 760);
    *(a1 + 760) = 0u;
    v113 = *(a1 + 780) != 0;
    *(a1 + 796) = 0;
    db_rwlock_wakeup(a1 + 584, v113, 0);
    pthread_mutex_unlock((a1 + 584));
    if (v112)
    {
      pthread_override_qos_class_end_np(v112);
    }

    if (v111)
    {
      sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13396);
    }

    goto LABEL_201;
  }

  v114 = *(a1 + 856);
  v115 = *(v114 + 8);
  if (!v115)
  {
    if (a7)
    {
      db2_obj_insert_from_prototype(a1, a3, a7);
    }

    if (db_write_unlock(a1 + 584))
    {
      sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13408);
    }

LABEL_132:
    if (v64)
    {
      CIOnThreadCleanUpClearItem((v64 - 1), v70);
      v98 = &threadData[9 * v69];
      v101 = *(v98 + 14);
      v99 = v98 + 7;
      v100 = v101;
      if (v70 + 1 == v101)
      {
        *v99 = v100 - 1;
      }
    }

    return 2;
  }

  v116 = *(v114 + 16);
  if (v116 < v115)
  {
    v117 = v114 + 16 * v116;
    v119 = *(v117 + 20);
    v118 = v117 + 20;
    if (v119 == a2)
    {
      v120 = *(v118 + 12);
      if (v120 >> 28 == 1)
      {
        goto LABEL_195;
      }
    }
  }

  v121 = v115;
  if (v115 < 1)
  {
    v135 = 0;
    v123 = 0;
    goto LABEL_191;
  }

  v122 = 0;
  while (2)
  {
    v123 = (v115 + v122) >> 1;
    v124 = v114 + 20 + 16 * v123;
    v125 = *(v124 + 12) >> 28;
    if (v125 == 1)
    {
      v126 = a2 - *v124;
      v127 = (v115 + v122) >> 1;
      if (v126 < 0)
      {
LABEL_161:
        v115 = v127;
        if (v122 >= v127)
        {
          v135 = v126 > 0;
          goto LABEL_191;
        }

        continue;
      }
    }

    else
    {
      v126 = 1 - v125;
      v127 = (v115 + v122) >> 1;
      if (v126 < 0)
      {
        goto LABEL_161;
      }
    }

    break;
  }

  if (v126)
  {
    v122 = v123 + 1;
    v127 = v115;
    goto LABEL_161;
  }

  v135 = 0;
LABEL_191:
  v136 = v121 - 1 > v123 && v135;
  v137 = v123 + v136;
  v138 = v114 + 16 * v137;
  *(v114 + 16) = v137;
  v118 = v138 + 20;
  v120 = *(v138 + 32);
LABEL_195:
  v139 = page_find_oid_with_flags(a1, *(v118 + 8), v120 & 0xFFFFFFF, a2, 1u, &v164, 0, 0);
  if (v139)
  {
    v102 = v139;
    if (a7)
    {
      if (db2_obj_insert_from_prototype(a1, a3, a7))
      {
        v102 = v102;
      }

      else
      {
        v102 = 3;
      }
    }

    if (db_write_unlock(a1 + 584))
    {
      sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13420);
    }

    goto LABEL_201;
  }

LABEL_204:
  if (a3)
  {
    v144 = _inflateDBO(a1, v164, a3, 0, v10, 0);
    v102 = v144;
    if (v163 && !v144)
    {
      v163(*a3, v162);
    }
  }

  else
  {
    v102 = 0;
  }

  v145 = pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v146 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v147 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v147, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v146)
  {
    pthread_override_qos_class_end_np(v146);
  }

  if (v145)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13432);
  }

  if (v64)
  {
    CIOnThreadCleanUpClearItem((v64 - 1), v70);
    v148 = &threadData[9 * v69];
    v151 = *(v148 + 14);
    v149 = v148 + 7;
    v150 = v151;
    if (v70 + 1 == v151)
    {
      *v149 = v150 - 1;
    }
  }

LABEL_226:
  if (a3 && *a3 && *(*a3 + 3) <= 0x2Fu)
  {
    v157 = __si_assert_copy_extra_3233(0, -1);
    v158 = v157;
    v159 = "";
    if (v157)
    {
      v159 = v157;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v159);
    free(v158);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return v102;
}

void gatherAttributesToAdd(void *value, uint64_t a2, uint64_t a3)
{
  if (sSIAttributesToIncludeAndRolesCount == 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a3 + 16);
    do
    {
      v8 = *(sIncludeAttributesAndRoles + v5);
      if (CFSetContainsValue(v8, value))
      {
        CFSetApplyFunction(v8, addIfNotPresent, v7);
        v9 = *(a3 + 24);
        v10 = 1 << *(sIncludeAttributesAndRoles + v5 + 8);
        if ((v9 & v10) == 0)
        {
          *(a3 + 24) = v9 | v10;
        }
      }

      v11 = sSIAttributesToIncludeAndRolesCount != 1 || v6++ >= 9;
      v5 += 16;
    }

    while (!v11);
  }
}

BOOL processOne(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, unsigned int a6, const __CFAllocator *a7, unsigned __int8 a8, _BYTE *a9, _BYTE *a10)
{
  memset(v21, 0, sizeof(v21));
  v17 = dispatch_group_create();
  v22 = *a5;
  v23 = *(a5 + 2);
  v18 = processOneCS(a1, a2, a3, a4, a6, &v22, v21, 0, v22, 0, a7, a8, v17, a9, a10);
  dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v17);
  return v18;
}

uint64_t db_read_lock(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  HIDWORD(v4) = qos_class_self() - 9;
  LODWORD(v4) = HIDWORD(v4);
  v3 = v4 >> 2;
  if (v3 > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_1C2BFF8F0[v3];
  }

  v6 = *(a1 + 184);
  if (v6 == pthread_self())
  {
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert(v8, "sdb2_rwlock.c", 580, "lock->writer != pthread_self()", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  if (db_rwlock_reader_excluded(a1, v5, 0))
  {
    db_rwlock_wait(a1, v5, 4);
  }

  else
  {
    ++*(a1 + 196);
  }

  pthread_mutex_unlock(a1);
  return v2;
}

char *fasterUTF8String(const __CFString *a1, void *a2, char *a3, CFIndex a4, _BYTE *a5)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  if (CStringPtr)
  {
    v11 = CStringPtr;
    *a5 = 0;
    *a2 = CFStringGetLength(a1) + 1;
    return v11;
  }

  else if (CFStringGetCString(a1, a3, a4, 0x8000100u))
  {
    *a2 = strlen(a3) + 1;
    *a5 = 0;
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    a3 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    CFStringGetCString(a1, a3, MaximumSizeForEncoding + 1, 0x8000100u);
    *a2 = strlen(a3) + 1;
    *a5 = 1;
  }

  return a3;
}

uint64_t si_compute_oid_for_identifier_bundle_id(char *__str, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  if (a2 > 8 || ((__endptr = 0, v8 = strtol(__str, &__endptr, 10), !*__endptr) ? (v9 = v8 == 0) : (v9 = 1), v9))
  {
    v8 = MurmurHash3_x86_32(__str, v6);
  }

  return v8 | ((MurmurHash3_x86_32(a3, v4) & 0x7FFFFFFF) << 32);
}

uint64_t _si_get_object_for_identifier_createParentDBO(uint64_t a1, uint64_t a2, char *__str, uint64_t a4, const char *a5, int a6, char *a7, uint64_t **a8, uint64_t *a9, int a10, char a11)
{
  v80 = a7;
  v13 = a5;
  v14 = a2;
  v16 = a11;
  v82 = a10;
  v106 = *MEMORY[0x1E69E9840];
  v90 = 0;
  v18 = *(a1 + 1192);
  v81 = __str;
  v19 = si_compute_oid_for_identifier_bundle_id(__str, a2, a5, a4);
  v20 = (a6 + v14 + 250);
  v105[0] = *(a1 + 2060);
  v105[1] = 0;
  v83 = a1;
  v104 = *(a1 + 2064);
  *&v21 = 136316418;
  v77 = v21;
  while (1)
  {
    v84 = &v77;
    v89 = 0;
    MEMORY[0x1EEE9AC00](v21);
    v22 = (&v77 - ((v20 + 15) & 0x1FFFFFFF0));
    bzero(v22, v20);
    if (v16)
    {
      if (*v18 != 1685287992)
      {
        v71 = *__error();
        v72 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v73 = *v18;
          *buf = 136315650;
          v92 = "db_create_obj_with_buffer";
          v93 = 1024;
          v94 = 313;
          v95 = 1024;
          LODWORD(v96) = v73;
          _os_log_error_impl(&dword_1C278D000, v72, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
        }

        *__error() = v71;
        v74 = __si_assert_copy_extra_332();
        v75 = v74;
        if (v74)
        {
          v76 = v74;
        }

        else
        {
          v76 = "";
        }

        __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 313, v76);
        free(v75);
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      v23 = 22;
      if (v20 < 0x30 || (v18[201] & 8) != 0)
      {
        goto LABEL_46;
      }

      *(v22 + 2) = v20;
      *(v22 + 3) = 48;
      v22[3] = 0;
      v22[4] = 0;
      v22[5] = 520;
      v89 = &v77 - ((v20 + 15) & 0x1FFFFFFF0);
      *v22 = v19;
      v24 = v13;
      v25 = a9;
      v26 = v16;
      v27 = a8;
      v28 = v83;
      v29 = strlen(v81);
      db_add_field(v18, &v89, 0, "_kMDItemExternalID", *(v83 + 2060), 0x2308u, 11, v81, v30, v29 + 1);
      v31 = *(v28 + 2064);
      a8 = v27;
      v16 = v26;
      a9 = v25;
      v13 = v24;
      v32 = strlen(v24);
      db_add_field(v18, &v89, 0, "_kMDItemBundleID", v31, 0x4318u, 11, v24, v33, v32 + 1);
      if (v80)
      {
        v34 = strlen(v80);
        v13 = v24;
        db_add_field(v18, &v89, 0, "_kMDItemDomainIdentifier", *(v83 + 2068), 0x4300u, 11, v80, v35, v34 + 1);
      }
    }

    obj_callback = db_get_obj_callback(v18, v19, &v90, 1, si_docIdRewriteCallback, *(v83 + 2368), v89);
    if (obj_callback != 3 && obj_callback != 0)
    {
      v23 = obj_callback;
LABEL_46:
      v90 = 0;
      if (!a9)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v87 = 0;
    v88 = 0;
    field_by_id = db_get_field_by_id(v18, v90, v105, &v88, &v87);
    v85 = 0;
    v86 = 0;
    v39 = db_get_field_by_id(v18, v90, &v104, &v86, &v85);
    if (field_by_id | v39)
    {
      break;
    }

    if (*v88 != 11 || (v40 = v86, *v86 != 11))
    {
      v61 = a9;
      v62 = *__error();
      v63 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v67 = *v88;
        v68 = v88[1];
        v69 = *v86;
        v70 = v86[1];
        *buf = 136316930;
        v92 = "_si_get_object_for_identifier_createParentDBO";
        v93 = 1024;
        v94 = 28278;
        v95 = 2048;
        v96 = v19;
        v97 = 2048;
        v98 = v19;
        v99 = 1024;
        *v100 = v67;
        *&v100[4] = 1024;
        *&v100[6] = v68;
        *v101 = 1024;
        *&v101[2] = v69;
        v102 = 1024;
        v103 = v70;
        _os_log_error_impl(&dword_1C278D000, v63, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type for bundleId/identifier field, oid:0x%llx(%lld), type1:%d, flags1:0x%x, type2:%d, flags2:0x%x", buf, 0x3Eu);
      }

      goto LABEL_42;
    }

    string_for_id = v87;
    if ((v88[1] & 0x10) != 0)
    {
      string_for_id = db_get_string_for_id(v18, *v87);
      v40 = v86;
    }

    v42 = v85;
    if ((v40[1] & 0x10) != 0)
    {
      v42 = db_get_string_for_id(v18, *v85);
    }

    if (!string_for_id || !v42)
    {
      if (string_for_id)
      {
        if (v42)
        {
          goto LABEL_31;
        }

        v43 = *__error();
        v44 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = *v86;
          v46 = v86[1];
          *buf = v77;
          v92 = "_si_get_object_for_identifier_createParentDBO";
          v93 = 1024;
          v94 = 28293;
          v95 = 2048;
          v96 = v19;
          v97 = 2048;
          v98 = v19;
          v99 = 1024;
          *v100 = v45;
          *&v100[4] = 1024;
          *&v100[6] = v46;
          v47 = v44;
          v48 = "%s:%d: Missing bundleId field, oid:0x%llx(%lld), type:%d, flags:0x%x";
          goto LABEL_39;
        }
      }

      else
      {
        v43 = *__error();
        v49 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v59 = *v88;
          v60 = v88[1];
          *buf = v77;
          v92 = "_si_get_object_for_identifier_createParentDBO";
          v93 = 1024;
          v94 = 28291;
          v95 = 2048;
          v96 = v19;
          v97 = 2048;
          v98 = v19;
          v99 = 1024;
          *v100 = v59;
          *&v100[4] = 1024;
          *&v100[6] = v60;
          v47 = v49;
          v48 = "%s:%d: Missing identifier field, oid:0x%llx(%lld), type:%d, flags:0x%x";
LABEL_39:
          _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, v48, buf, 0x32u);
        }
      }

      *__error() = v43;
      goto LABEL_31;
    }

    if (!strcmp(string_for_id, v81) && !strcmp(v42, v13))
    {
      v23 = 0;
      goto LABEL_58;
    }

LABEL_31:
    v50 = v90;
    v51 = *(v90 + 10);
    if (v82)
    {
      *(v90 + 10) = v51 | 0x10;
      updated = db_update_obj(v18, v50, 11);
      if (updated)
      {
        v53 = updated;
        v78 = v16;
        v79 = v13;
        v54 = a9;
        v55 = a8;
        v56 = *__error();
        v57 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = *(v90 + 10);
          *buf = v77;
          v92 = "_si_get_object_for_identifier_createParentDBO";
          v93 = 1024;
          v94 = 28304;
          v95 = 2048;
          v96 = v19;
          v97 = 2048;
          v98 = v19;
          v99 = 2048;
          *v100 = v58;
          *&v100[8] = 1024;
          *v101 = v53;
          _os_log_error_impl(&dword_1C278D000, v57, OS_LOG_TYPE_ERROR, "%s:%d: Failed to update the dbo for oid:0x%llx(%lld), flags:0x%lx, rc:%d", buf, 0x36u);
        }

        *__error() = v56;
        a8 = v55;
        a9 = v54;
        v13 = v79;
        v16 = v78;
      }
    }

    else if ((v51 & 0x10) == 0)
    {
      if (a9)
      {
        *a9 = 0;
      }

      if (a8)
      {
        *a8 = 0;
      }

      free(v50);
      v90 = 0;
      v23 = 2;
      goto LABEL_58;
    }

    free(v90);
    v90 = 0;
    ++v19;
  }

  v64 = v39;
  v61 = a9;
  v62 = *__error();
  v65 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    *buf = v77;
    v92 = "_si_get_object_for_identifier_createParentDBO";
    v93 = 1024;
    v94 = 28273;
    v95 = 2048;
    v96 = v19;
    v97 = 2048;
    v98 = v19;
    v99 = 1024;
    *v100 = field_by_id;
    *&v100[4] = 1024;
    *&v100[6] = v64;
    _os_log_error_impl(&dword_1C278D000, v65, OS_LOG_TYPE_ERROR, "%s:%d: Failed to fetch the bundleId/identifier field, oid:0x%llx(%lld), rc1:%d, rc2:%d", buf, 0x32u);
  }

LABEL_42:
  *__error() = v62;
  v23 = 22;
  a9 = v61;
LABEL_58:
  if (a9)
  {
LABEL_47:
    *a9 = v19;
  }

LABEL_48:
  if (a8)
  {
    *a8 = v90;
  }

  else if (v90)
  {
    free(v90);
  }

  return v23;
}

uint64_t MurmurHash3_x86_32(uint64_t a1, unsigned int a2)
{
  v2 = -1759636613;
  if ((a2 & 0x80000000) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 3;
  }

  v4 = (a1 + (v3 & 0xFFFFFFFC));
  if (a2 + 3 >= 7)
  {
    v7 = -(v3 >> 2);
    v8 = -1789642873;
    v9 = 718793509;
    do
    {
      v8 = 5 * v8 + 2071795100;
      v9 = 5 * v9 + 1808688022;
      HIDWORD(v10) = *&v4[4 * v7] * v8;
      LODWORD(v10) = HIDWORD(v10);
      v11 = (v10 >> 21) * v9;
      HIDWORD(v10) = v2;
      LODWORD(v10) = v2;
      v2 = v11 ^ (5 * (v10 >> 19) + 1390208809);
    }

    while (!__CFADD__(v7++, 1));
    v6 = 5 * v8 + 2071795100;
    v5 = 5 * v9 + 1808688022;
  }

  else
  {
    v5 = 1107688271;
    v6 = 1713515327;
  }

  v13 = 0;
  if ((a2 & 3) > 1)
  {
    if ((a2 & 3) != 2)
    {
      v13 = v4[2] << 16;
    }

    v13 |= v4[1] << 8;
  }

  else if ((a2 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v14) = (v13 ^ *v4) * v6;
  LODWORD(v14) = HIDWORD(v14);
  v15 = (v14 >> 21) * v5;
  HIDWORD(v14) = v2;
  LODWORD(v14) = v2;
  v2 = v15 ^ (5 * (v14 >> 19) + 1390208809);
LABEL_17:
  v16 = -1028477387 * ((-2048144789 * (v2 ^ a2)) ^ ((-2048144789 * (v2 ^ a2)) >> 13));
  return v16 ^ HIWORD(v16);
}

uint64_t si_get_object_for_identifier_createParentDBO(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, int a5, uint64_t *a6, uint64_t **a7, char a8)
{
  v48 = *MEMORY[0x1E69E9840];
  bzero(v47, 0x400uLL);
  v44 = 0;
  *v43 = 0;
  if (a3)
  {
    v14 = fasterUTF8String(a3, v43, v47, 1024, &v44);
  }

  else
  {
    v14 = "";
  }

  v15 = 0uLL;
  memset(v46, 0, sizeof(v46));
  v42 = 0;
  *v41 = 0;
  if (a2)
  {
    v16 = fasterUTF8String(a2, v41, v46, 128, &v42);
    v15 = 0uLL;
    v17 = v16;
  }

  else
  {
    v17 = "";
  }

  v45[6] = v15;
  v45[7] = v15;
  v45[4] = v15;
  v45[5] = v15;
  v45[2] = v15;
  v45[3] = v15;
  v45[0] = v15;
  v45[1] = v15;
  *v39 = 0;
  if (a4)
  {
    v18 = fasterUTF8String(a4, v39, v45, 128, &v40);
  }

  else
  {
    v18 = 0;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v20 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
  v38 = v20;
  v21 = threadData[9 * v20 + 1] + 320 * HIDWORD(v20);
  v37 = HIDWORD(v20);
  v36 = __PAIR64__(v22, v23);
  *(v21 + 216) = 0;
  v24 = *(v21 + 312);
  v25 = *(v21 + 224);
  if (v25)
  {
    v25(*(v21 + 288));
  }

  v35 = v38;
  v34 = v37;
  v33 = v36;
  if (_setjmp(v21))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v21 + 312) = v24;
    CIOnThreadCleanUpReset(v33);
    dropThreadId(v35, 1, add_explicit + 1);
    CICleanUpReset(v35, HIDWORD(v33));
    ParentDBO = 0xFFFFFFFFLL;
  }

  else
  {
    ParentDBO = _si_get_object_for_identifier_createParentDBO(a1, *v43, v14, *v41, v17, v39[0], v18, a7, a6, a5, a8);
    v27 = threadData[9 * v35 + 1] + 320 * v34;
    *(v27 + 312) = v24;
    v28 = *(v27 + 232);
    if (v28)
    {
      v28(*(v27 + 288));
    }

    dropThreadId(v35, 0, add_explicit + 1);
  }

  if (v44 == 1)
  {
    free(v14);
  }

  if (v42 == 1)
  {
    free(v17);
  }

  return ParentDBO;
}

BOOL processOneCS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 q0_0, uint64_t a9, const __CFAllocator *a10, unsigned __int8 a11, NSObject *a12, _BYTE *a13, _BYTE *a14)
{
  MEMORY[0x1EEE9AC00](q0_0);
  v769 = *MEMORY[0x1E69E9840];
  v725 = v22;
  if (*(v15 + 1288) == 1)
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v743[0]) = 0;
      _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "processOneCS failed: index is read-only", v743, 2u);
    }

    *__error() = v23;
    return 0;
  }

  v26 = v20;
  v27 = v19;
  v28 = v18;
  v29 = v16;
  v30 = v15;
  v651 = v17;
  v684 = v21;
  v31 = a10;
  v689 = v18 & 0x80000;
  v653 = (v18 & 0x80000) == 0;
  TypeID = CFStringGetTypeID();
  v721 = 0;
  v722 = &v721;
  v723 = 0x2000000000;
  v724 = 0;
  cs_orphan_oid = si_get_cs_orphan_oid(v30);
  v672 = v31;
  Mutable = CFDictionaryCreateMutable(v31, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v720 = Mutable;
  v743[0] = *v27;
  *&v743[1] = *(v27 + 16);
  if (_MDPlistGetPlistObjectType() == 241)
  {
    v719[10] = MEMORY[0x1E69E9820];
    v719[11] = 0x40000000;
    v719[12] = __processOneCS_block_invoke;
    v719[13] = &unk_1E81920B8;
    v719[15] = v672;
    v719[14] = &v721;
    v719[16] = TypeID;
    v719[17] = Mutable;
    v743[0] = *v27;
    *&v743[1] = *(v27 + 16);
    _MDPlistDictionaryIterate();
  }

  v743[0] = *v26;
  *&v743[1] = *(v26 + 16);
  v696 = v30;
  v692 = v28;
  if (_MDPlistGetPlistObjectType() == 241)
  {
    v33 = CFDictionaryCreateMutable(v672, 0, MEMORY[0x1E695E9D8], 0);
    v719[1] = MEMORY[0x1E69E9820];
    v719[2] = 0x40000000;
    v719[9] = v33;
    v34 = v33;
    v719[3] = __processOneCS_block_invoke_2;
    v719[4] = &unk_1E81920E0;
    v719[7] = Mutable;
    v719[8] = TypeID;
    v719[6] = v672;
    v719[5] = &v721;
    v743[0] = *v26;
    *&v743[1] = *(v26 + 16);
    _MDPlistDictionaryIterate();
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v695 = v35;
  Value = CFDictionaryGetValue(Mutable, @"kMDItemFileProviderID");
  v37 = CFDictionaryGetValue(Mutable, @"kMDItemFileItemID");
  v623 = CFDictionaryGetValue(Mutable, @"_kMDItemUserActivityRequiredString");
  v38 = CFDictionaryGetValue(Mutable, @"FPRepeatDonation");
  v39 = CFDictionaryGetValue(Mutable, @"FPDownloaded");
  v40 = CFDictionaryGetValue(Mutable, @"_kMDItemEvictedDuringImport");
  v41 = _os_feature_enabled_impl();
  v42 = (v692 >> 17) & 1;
  if (v41)
  {
    v43 = v38 == *MEMORY[0x1E695E4D0] && v39 == *MEMORY[0x1E695E4C0];
    v44 = v43 || v40 == *MEMORY[0x1E695E4D0];
    if (v44 && Value)
    {
      if (CFStringCompare(Value, @"com.apple.CloudDocs.iCloudDriveFileProvider", 0) && CFStringCompare(Value, @"com.apple.CloudDocs.iCloudDriveFileProviderManaged", 0))
      {
        if (CFStringCompare(Value, @"com.apple.FruitBasket", 0))
        {
          v42 = (v692 >> 17) & 1;
        }

        else
        {
          v42 = 1;
        }
      }

      else
      {
        v42 = 1;
      }
    }
  }

  v675 = v42;
  v719[0] = 0;
  v718 = 0;
  v45 = CFDictionaryGetValue(Mutable, @"kMDItemPhotosMediaTypes");
  v46 = v45;
  if (v45)
  {
    v47 = CFGetTypeID(v45);
    if (v47 == CFArrayGetTypeID())
    {
      v718 = CFArrayGetCount(v46) != 0;
    }
  }

  v48 = v40;
  v49 = CFDictionaryGetValue(Mutable, @"_kMDItemExternalID");
  v50 = v49 != 0;
  v641 = Value;
  if (!v49)
  {
    goto LABEL_37;
  }

  v51 = v49;
  if (CFGetTypeID(v49) != TypeID)
  {
    v57 = *__error();
    v58 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v743[0]) = 136315650;
      *(v743 + 4) = "processOneCS";
      WORD6(v743[0]) = 1024;
      *(v743 + 14) = 30547;
      WORD1(v743[1]) = 2112;
      *(&v743[1] + 4) = Mutable;
      _os_log_error_impl(&dword_1C278D000, v58, OS_LOG_TYPE_ERROR, "%s:%d: bad identifier %@", v743, 0x1Cu);
    }

    *__error() = v57;
LABEL_37:
    v51 = 0;
    v56 = v696;
    v55 = (v696 + 1192);
    v717 = 0;
    v54 = 1;
    v53 = v50;
    goto LABEL_38;
  }

  v52 = *(v696 + 1192);
  v717 = 0;
  *&v743[0] = 0;
  if (((si_get_object_for_identifier_createParentDBO(v696, v29, v51, 0, 0, v743, &v717, 0) == 0) & v675) == 1)
  {
    derivedAttributesCheck(Mutable, &v720, v719, v46 == 0, &v718, v52, v717, *&v743[0]);
  }

  v53 = 0;
  v54 = 0;
  v55 = (v696 + 1192);
  v56 = v696;
LABEL_38:
  v59 = v51;
  v673 = v53;
  v60 = v55;
  v670 = v54;
  if (v48)
  {
    v61 = *__error();
    v62 = _SILogForLogForCategory(4);
    v63 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v62, v63))
    {
      LOWORD(v743[0]) = 0;
      _os_log_impl(&dword_1C278D000, v62, v63, "Importer flagged as evicted during import, removing the sentinel attribute", v743, 2u);
    }

    *__error() = v61;
    CFDictionaryRemoveValue(v720, @"_kMDItemEvictedDuringImport");
  }

  v685 = v60;
  if ((v675 & 1) == 0)
  {
    v64 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &a9);
    CFDictionarySetValue(v720, @"kMDItemPhysicalSize", v64);
    CFRelease(v64);
  }

  v65 = v37;
  if (Value)
  {
    v66 = v37 == 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = !v66;
  if (!v623)
  {
    if (!v67 || (v72 = v720, CFDictionaryGetValue(v720, @"_kMDItemHasClientData") != *MEMORY[0x1E695E4D0]))
    {
      v73 = v685;
      if (!v29)
      {
        v82 = v67;
        v80 = 0;
        v83 = v684;
        goto LABEL_66;
      }

      v74 = 0;
      v75 = 0;
      v76 = v720;
      goto LABEL_58;
    }

    v131 = CFDictionaryGetValue(v72, @"_kMDItemExternalID");
    v73 = v685;
    if (v131)
    {
      CFDictionarySetValue(v72, @"_kMDItemClientExternalID", v131);
    }

    if (v29)
    {
      CFDictionarySetValue(v72, @"_kMDItemClientBundleID", v29);
    }

    if (sSICoreSpotlightCopyBundleRemapCallback)
    {
      v29 = v641;
      v132 = sSICoreSpotlightCopyBundleRemapCallback(v641);
      CFDictionarySetValue(v72, @"_kMDItemExternalID", v65);
      if (v132)
      {
        v29 = v132;
        v74 = 1;
        v67 = 0;
        v76 = v72;
        v75 = v132;
LABEL_58:
        v77 = v75;
        v78 = v74;
        CFDictionarySetValue(v76, @"_kMDItemBundleID", v29);
        v79 = v77;
        v80 = v78;
        v81 = v67;
        goto LABEL_64;
      }
    }

    else
    {
      CFDictionarySetValue(v72, @"_kMDItemExternalID", v65);
      v29 = v641;
    }

    v75 = 0;
    v74 = 1;
    v76 = v72;
    v67 = 0;
    goto LABEL_58;
  }

  if (!v67)
  {
    v71 = 0;
    v70 = 0;
    goto LABEL_60;
  }

  v68 = v720;
  v69 = CFDictionaryGetValue(v720, @"kMDItemRelatedUniqueIdentifier");
  if (CFDictionaryGetValue(v68, @"_kMDItemHasClientData") != *MEMORY[0x1E695E4D0])
  {
    v70 = 1;
    v71 = 0;
LABEL_60:
    v80 = 0;
    goto LABEL_61;
  }

  if (v69)
  {
    CFDictionarySetValue(v68, @"kMDItemRelatedUniqueIdentifier", v65);
    v73 = v685;
    if (sSICoreSpotlightCopyBundleRemapCallback)
    {
      v71 = sSICoreSpotlightCopyBundleRemapCallback(v641);
    }

    else
    {
      v71 = 0;
    }

    if (v71)
    {
      v140 = v71;
    }

    else
    {
      v140 = Value;
    }

    if (!CFEqual(v140, v29))
    {
      CFDictionarySetValue(v68, @"_kMDItemRelatedBundleID", v140);
    }

    v80 = 1;
    v70 = 0;
    if (!v29)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v80 = 1;
  v71 = 0;
  v70 = 0;
LABEL_61:
  v73 = v685;
  if (v29)
  {
LABEL_62:
    CFDictionarySetValue(v720, @"_kMDItemBundleID", v29);
  }

LABEL_63:
  v79 = v71;
  v81 = v70;
LABEL_64:
  v82 = v81;
  v83 = v684;
  if (v79)
  {
    CFRelease(v79);
  }

LABEL_66:
  v671 = v80;
  v677 = v82;
  if (v651)
  {
    CFDictionarySetValue(v720, @"_kMDItemPersonaID", v651);
  }

  if (v83)
  {
    v84 = CFGetTypeID(v83);
    if (v84 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(v83);
      v86 = v720;
      CFDictionarySetValue(v720, @"kMDItemTextContent", v684);
      v87 = v722[3] + Length;
      v88 = v684;
      v722[3] = v87;
      if (v29)
      {
        if (!CFDictionaryGetValue(v86, @"_kMDItemSnippet"))
        {
          if (CFStringHasPrefix(v29, @"com.apple."))
          {
            v129 = SICreateStringByRemovingWhitespaceFromTextContent(v672, v88, 300);
            if (v129)
            {
              v130 = v129;
              CFDictionarySetValue(v720, @"_kMDItemSnippet", v129);
              CFRelease(v130);
            }
          }
        }
      }
    }
  }

  v89 = CFEqual(v29, @"com.apple.MobileSMS");
  v90 = v720;
  if (v89)
  {
    v91 = CFDictionaryContainsKey(v720, @"com_apple_mobilesms_isHighlightedContent") || CFDictionaryContainsKey(v90, @"kMDItemSyndicationStatus") || CFDictionaryContainsKey(v90, @"com_apple_mobilesms_isChatAutoDonating");
    if (!CFDictionaryContainsKey(v90, @"com_apple_mobilesms_groupPhotoPath") && !CFDictionaryContainsKey(v90, @"com_apple_mobilesms_highlightedContentServerDate") && !CFDictionaryContainsKey(v90, @"com_apple_mobilesms_chatAutoDonatingServerDate") && !CFDictionaryContainsKey(v90, @"_kMDItemIsFromMe") && !CFDictionaryContainsKey(v90, @"kMDItemDisplayName") && !CFDictionaryContainsKey(v90, @"kMDItemAuthors") && !CFDictionaryContainsKey(v90, @"kMDItemAuthorAddresses") && !CFDictionaryContainsKey(v90, @"kMDItemRecipients"))
    {
      CFDictionaryContainsKey(v90, @"kMDItemRecipientAddresses");
    }
  }

  else
  {
    v91 = 0;
  }

  v683 = v91;
  if (!CFDictionaryGetValue(v90, @"_kMDItemWillModify") && (v692 & v675 & 1) == 0)
  {
    CFDictionarySetValue(v90, @"_kMDItemWillModify", *MEMORY[0x1E695E738]);
  }

  if (v675)
  {
    v92 = CFDictionaryGetValue(v90, @"_kMDItemBundleID");
    v94 = 0;
    if (v92)
    {
      v93 = v92;
      if (CFStringCompare(v92, @"com.apple.searchd", 0) == kCFCompareEqualTo || CFStringCompare(v93, @"com.apple.MobileSMS", 0) == kCFCompareEqualTo || CFStringCompare(v93, @"com.apple.mobilesafari", 0) == kCFCompareEqualTo || CFStringCompare(v93, @"com.apple.mobilenotes", 0) == kCFCompareEqualTo || CFStringCompare(v93, @"com.apple.mobileslideshow", 0) == kCFCompareEqualTo || isApplicationImport(v93, v90))
      {
        v94 = 1;
      }
    }
  }

  else
  {
    v94 = v653;
    v95 = CFNumberCreate(v672, kCFNumberCFIndexType, v722 + 3);
    if (v95)
    {
      v96 = v95;
      CFDictionarySetValue(v90, @"_kMDItemStorageSize", v95);
      CFRelease(v96);
    }
  }

  v97 = CFNumberCreate(v672, kCFNumberSInt64Type, &v725);
  CFDictionarySetValue(v90, @"_kMDItemSerialNumber", v97);
  CFRelease(v97);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v716 = 0;
  *&v715[4] = 0;
  *v715 = 0;
  v99 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *v73, 0x40000000, add_explicit + 1);
  *&v715[8] = HIDWORD(v99);
  v716 = v99;
  *&v715[4] = v100;
  *v715 = v101;
  v102 = threadData[9 * v99 + 1] + 320 * HIDWORD(v99);
  *(v102 + 216) = 0;
  v103 = *(v102 + 312);
  v104 = *(v102 + 224);
  v105 = v102;
  if (v104)
  {
    v104(*(v102 + 288));
  }

  v714 = v716;
  v713 = *&v715[8];
  v712 = *v715;
  if (!_setjmp(v105))
  {
    v691 = v59;
    v693 = v103;
    v694 = add_explicit;
    v107 = v90;
    v108 = v692;
    if (v670)
    {
      goto LABEL_213;
    }

    v711 = 0;
    v727 = 0;
    v726 = 0;
    if ((v692 & 0x8000) == 0)
    {
      v109 = CFDictionaryGetValue(v90, @"kMDItemRelatedUniqueIdentifier");
      if (v109)
      {
        v110 = v109;
        v111 = CFGetTypeID(v109);
        if (v111 == CFStringGetTypeID() && (CFDictionaryContainsKey(v90, @"_MDItemDeletedWithRelatedUniqueIdentifier") || CFDictionaryContainsKey(v90, @"_kMDItemUserActivityRequiredString") || CFEqual(v29, @"com.apple.MobileSMS")))
        {
          v620 = *MEMORY[0x1E695E480];
          v112 = CFStringGetLength(v110);
          MutableCopy = CFStringCreateMutableCopy(v620, v112, v110);
          v113 = CFStringGetLength(v29);
          v114 = CFStringCreateMutableCopy(v620, v113, v29);
          v115 = CFStringGetLength(v691);
          v116 = CFStringCreateMutableCopy(v620, v115, v691);
          v644 = CFRetain(v114);
          object_for_identifier_createParentDBO = si_get_object_for_identifier_createParentDBO(v56, v29, MutableCopy, 0, 0, &v727, &v726, 0);
          if (!object_for_identifier_createParentDBO)
          {
            goto LABEL_120;
          }

          v118 = CFDictionaryGetValue(v90, @"_kMDItemRelatedBundleID");
          if (v118)
          {
            v119 = v118;
            v120 = si_get_object_for_identifier_createParentDBO(v56, v118, MutableCopy, 0, 0, &v727, &v726, 0);
            if (!v120)
            {
              if (dword_1EBF46ADC >= 5)
              {
                v590 = *__error();
                v591 = _SILogForLogForCategory(4);
                if (os_log_type_enabled(v591, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v743[0]) = 138412802;
                  *(v743 + 4) = v29;
                  WORD6(v743[0]) = 2112;
                  *(v743 + 14) = MutableCopy;
                  WORD3(v743[1]) = 2112;
                  *(&v743[1] + 1) = v119;
                  _os_log_impl(&dword_1C278D000, v591, OS_LOG_TYPE_DEFAULT, "Remapped related identifier for %@ to relatedIdent %@, bundleID:%@", v743, 0x20u);
                }

                *__error() = v590;
              }

              CFRelease(v114);
              v121 = CFStringGetLength(v29);
              v114 = CFStringCreateMutableCopy(v620, v121, v29);
LABEL_120:
              v122 = v114;
              *&v743[0] = 0;
              *v731 = 0;
              if (db_get_field(*v685, v726, "kMDItemDocumentIdentifier", v743, v731) || **&v743[0] != 7)
              {
                v711 = 0;
              }

              else
              {
                v711 = **v731;
                if (v711)
                {
                  v123 = 1;
                  goto LABEL_162;
                }
              }

              v123 = 0;
LABEL_162:
              if (v726)
              {
                v627 = v123;
                v645 = v116;
                v744 = 0u;
                memset(v743, 0, sizeof(v743));
                v730 = 0;
                v141 = "_kMDItemRelatedObjects";
                *v733 = 0;
                if (object_for_identifier_createParentDBO)
                {
                  v142 = CFStringGetLength(v29);
                  v143 = CFStringGetLength(v691);
                  v144 = CFStringCreateMutableCopy(v620, v142 + v143 + 1, v29);
                  CFStringAppend(v144, @":");
                  CFStringAppend(v144, v691);
                  v141 = "_kMDItemRelatedObjectsWithBundle";
                  v145 = v144;
                  v146 = v144;
                }

                else
                {
                  v146 = 0;
                  v145 = v691;
                }

                v164 = v146;
                v165 = fasterUTF8String(v145, v733, v743, 256, &v730);
                v166 = *v733;
                if (*v733)
                {
                  v621 = v165;
                  v709[0] = 0;
                  v707[0] = 0;
                  field = db_get_field(*v685, v726, v141, v709, v707);
                  v631 = v122;
                  v616 = v141;
                  if (field)
                  {
                    goto LABEL_185;
                  }

                  v218 = *(v709[0] + 2);
                  if ((v218 & 0x90) == 0)
                  {
                    v219 = *(v709[0] + 8);
                    v220 = v707[0];
                    if ((v218 & 0x20) != 0)
                    {
                      if (v219)
                      {
                        v228 = v707[0] + v219;
                        while (1)
                        {
                          v229 = v228 - v220;
                          v230 = strnlen(v220, v228 - v220);
                          if (v230 + 1 < v228 - v220)
                          {
                            v229 = v230 + 1;
                          }

                          if (!v229)
                          {
                            break;
                          }

                          v168 = v166 == v229 && memcmp(v220, v621, v166) == 0;
                          if (!v168)
                          {
                            v220 += v229;
                            if (v220 < v228)
                            {
                              continue;
                            }
                          }

                          goto LABEL_186;
                        }

                        v560 = __si_assert_copy_extra_661(-1);
                        v561 = v560;
                        v562 = "";
                        if (v560)
                        {
                          v562 = v560;
                        }

                        *v605 = "size";
                        v606 = v562;
                        v563 = 28501;
                        goto LABEL_887;
                      }
                    }

                    else
                    {
                      v221 = strnlen(v707[0], v219);
                      if (v221 + 1 < v219)
                      {
                        v222 = v221 + 1;
                      }

                      else
                      {
                        v222 = v219;
                      }

                      if (v166 == v222)
                      {
                        v168 = memcmp(v220, v621, v166) == 0;
                        goto LABEL_186;
                      }
                    }

LABEL_185:
                    v168 = 0;
LABEL_186:
                    v622 = v164;
                    v169 = v168;
                    v707[0] = 0;
                    v709[0] = 0;
                    v729 = 1;
                    v170 = v685;
                    if (!db_get_field(*v685, v726, "_kMDItemRelatedActivityLaunchCount", v709, v707))
                    {
                      v729 = *v707[0] + 1;
                    }

                    v171.n128_f64[0] = CFAbsoluteTimeGetCurrent();
                    v728 = v171.n128_u64[0];
                    db_add_field(*v685, &v726, 1u, "_kMDItemRelatedActivityLastLaunchDate", 0, 0x2100u, 12, &v728, v171, 8);
                    db_add_field(*v685, &v726, 1u, "_kMDItemRelatedActivityLaunchCount", 0, 0x2100u, 8, &v729, v172, 8);
                    if (!v169)
                    {
                      db_add_field(*v685, &v726, 2u, v616, 0, 0x2120u, 11, v621, v173, v166);
                      if (dword_1EBF46ADC >= 5)
                      {
                        v585 = *__error();
                        v586 = _SILogForLogForCategory(4);
                        if (os_log_type_enabled(v586, OS_LOG_TYPE_DEFAULT))
                        {
                          *v731 = 136315906;
                          *&v731[4] = "_kMDItemRelatedObjects";
                          *&v731[12] = 2112;
                          *&v731[14] = MutableCopy;
                          *&v731[22] = 2112;
                          *&v731[24] = v29;
                          *&v731[32] = 2112;
                          *&v731[34] = v691;
                          _os_log_impl(&dword_1C278D000, v586, OS_LOG_TYPE_DEFAULT, "Updated %s field for relatedIdentifier:%@, bundleID:%@, identifier:%@", v731, 0x2Au);
                        }

                        *__error() = v585;
                        v170 = v685;
                      }
                    }

                    db_update_obj(*v170, v726, 3);
                    v56 = v696;
                    v116 = v645;
                    if (v730 == 1)
                    {
                      free(v621);
                    }

                    if (v622)
                    {
                      CFRelease(v622);
                    }

                    v160 = v692;
                    v114 = v631;
                    v163 = v627;
LABEL_195:
                    if (sCSRelatedItemCallback)
                    {
                      sCSRelatedItemCallback(v56, v114, MutableCopy, v116, (v160 >> 14) & 2);
                    }

                    if (v644)
                    {
                      CFRelease(v644);
                    }

                    if (v114)
                    {
                      CFRelease(v114);
                    }

                    if (v116)
                    {
                      CFRelease(v116);
                    }

                    v161 = MutableCopy;
                    v162 = v163;
                    goto LABEL_204;
                  }

                  v587 = __si_assert_copy_extra_661(-1);
                  v570 = v587;
                  v588 = "";
                  if (v587)
                  {
                    v588 = v587;
                  }

                  *v605 = "(fieldFlags & (DB_FIELD_UNIQUED_VALS|DB_FIELD_LOCALIZED_STR)) == 0";
                  v606 = v588;
                  v572 = 28489;
                }

                else
                {
                  v573 = __si_assert_copy_extra_661(-1);
                  v570 = v573;
                  v574 = "";
                  if (v573)
                  {
                    v574 = v573;
                  }

                  *v605 = "identifierCStrSize";
                  v606 = v574;
                  v572 = 28480;
                }
              }

              else
              {
                v569 = __si_assert_copy_extra_661(-1);
                v570 = v569;
                v571 = "";
                if (v569)
                {
                  v571 = v569;
                }

                *v605 = "dbop && *dbop";
                v606 = v571;
                v572 = 28459;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", v572, *v605, v606);
              free(v570);
              if (__valid_fs(-1))
              {
                v589 = 2989;
              }

              else
              {
                v589 = 3072;
              }

              *v589 = -559038737;
              abort();
            }
          }

          else
          {
            v120 = object_for_identifier_createParentDBO;
          }

          if (dword_1EBF46ADC >= 5)
          {
            v575 = v116;
            v576 = *__error();
            v577 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v577, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v743[0]) = 138413058;
              *(v743 + 4) = MutableCopy;
              WORD6(v743[0]) = 2112;
              *(v743 + 14) = v114;
              WORD3(v743[1]) = 1024;
              DWORD2(v743[1]) = v120;
              WORD6(v743[1]) = 2112;
              *(&v743[1] + 14) = v691;
              _os_log_impl(&dword_1C278D000, v577, OS_LOG_TYPE_DEFAULT, "Failed to fetch the dbo for relatedIdentifier:%@, bundleID:%@, rc:%d (dropping %@)", v743, 0x26u);
            }

            *__error() = v576;
            v56 = v696;
            v116 = v575;
          }

          v160 = v692 | 0x8000;
          v163 = 0;
          goto LABEL_195;
        }
      }

      goto LABEL_149;
    }

    v124 = v691;
    v125 = si_get_object_for_identifier_createParentDBO(v56, v29, v691, 0, 0, &v727, &v726, 0);
    if (v125)
    {
      v126 = v125;
      if (v125 == 2)
      {
        v127 = 0;
        v128 = v692;
LABEL_207:
        v174 = v127;
        if (v726)
        {
          free(v726);
        }

        if (v174)
        {
          v175 = CFNumberCreate(v672, kCFNumberSInt64Type, &v711);
          v107 = v720;
          CFDictionaryAddValue(v720, @"kMDItemDocumentIdentifier", v175);
          CFRelease(v175);
        }

        else
        {
          v107 = v720;
        }

        v108 = v128;
LABEL_213:
        v176 = v108;
        v662 = a13;
        v177 = a11;
        v178 = CFDictionaryGetValue(v107, @"FPParentFileItemID");
        if (v178)
        {
          v179 = v178;
          v180 = CFGetTypeID(v178);
          v181 = 0;
          if (TypeID == v180)
          {
            v181 = v179;
          }
        }

        else
        {
          v181 = 0;
        }

        v182 = v662;
        v690 = v177;
        if ((v108 & 0x8000) == 0)
        {
          v183 = v181;
          v664 = v662;
          v666 = v176;
          if (v675)
          {
            if (isAppleInternalInstall_onceToken != -1)
            {
              dispatch_once(&isAppleInternalInstall_onceToken, &__block_literal_global_2134);
            }

            if (isAppleInternalInstall_isInternalInstall == 1)
            {
              v184 = *__error();
              v185 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v743[0]) = 138412546;
                *(v743 + 4) = v29;
                WORD6(v743[0]) = 2112;
                *(v743 + 14) = v691;
                _os_log_impl(&dword_1C278D000, v185, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#processOneCS Index update bundleID:%@ identifier:%@", v743, 0x16u);
              }

              *__error() = v184;
LABEL_248:
              v196 = v673;
              if (v107)
              {
                v197 = v673;
              }

              else
              {
                v197 = 1;
              }

              if ((v197 & 1) == 0)
              {
                bzero(&v743[1], 0x3F0uLL);
                strcpy(v743, "processing item");
                v196 = v673;
                __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 30825, v743);
              }

              LiveIndex = si_getLiveIndex(*(v56 + 1384));
              v199 = LiveIndex;
              if (v196)
              {
                v188 = v694;
                if (dword_1EBF46ADC < 5)
                {
                  v187 = LiveIndex;
                  v106 = 0;
                  v186 = 0;
                  goto LABEL_742;
                }

                v556 = *__error();
                v557 = _SILogForLogForCategory(4);
                if (os_log_type_enabled(v557, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v743[0]) = 138412546;
                  *(v743 + 4) = v29;
                  WORD6(v743[0]) = 2112;
                  *(v743 + 14) = v691;
                  _os_log_impl(&dword_1C278D000, v557, OS_LOG_TYPE_DEFAULT, "isDummy :%@ %@", v743, 0x16u);
                }

                *__error() = v556;
                v187 = v199;
                v106 = 0;
                v186 = 0;
                goto LABEL_874;
              }

              v686 = LiveIndex;
              v687 = LiveIndex;
              bzero(v742, 0x800uLL);
              v680 = *(v56 + 1192);
              v709[0] = 0;
              v707[0] = 0;
              ParentDBO = si_get_object_for_identifier_createParentDBO(v56, v29, v691, 0, v94, v709, v707, 0);
              v201 = ParentDBO;
              if ((v94 & 1) == 0)
              {
                if (v707[0])
                {
                  if (BOOLValueForDBOProperty(v680, v707[0], "_kMDItemIsZombie"))
                  {
                    v202 = *__error();
                    v203 = _SILogForLogForCategory(4);
                    v204 = dword_1EBF46ADC < 3;
                    if (os_log_type_enabled(v203, (dword_1EBF46ADC < 3)))
                    {
                      LODWORD(v743[0]) = 138412546;
                      *(v743 + 4) = v29;
                      WORD6(v743[0]) = 2112;
                      *(v743 + 14) = v691;
                      _os_log_impl(&dword_1C278D000, v203, v204, "*warn* update requires non-zombie item :%@ %@", v743, 0x16u);
                    }

                    *__error() = v202;
                    free(v707[0]);
                    goto LABEL_284;
                  }
                }

                else
                {
                  v678 = v183;
                  v210 = ParentDBO;
                  v211 = *__error();
                  v212 = _SILogForLogForCategory(4);
                  v213 = dword_1EBF46ADC < 3;
                  if (os_log_type_enabled(v212, (dword_1EBF46ADC < 3)))
                  {
                    LODWORD(v743[0]) = 138412546;
                    *(v743 + 4) = v29;
                    WORD6(v743[0]) = 2112;
                    *(v743 + 14) = v691;
                    _os_log_impl(&dword_1C278D000, v212, v213, "*warn* update requires existing item :%@ %@", v743, 0x16u);
                  }

                  *__error() = v211;
                  v201 = v210;
                  v183 = v678;
                }

                if (!v707[0])
                {
LABEL_284:
                  v187 = 0;
                  v106 = 0;
                  v186 = 0;
LABEL_285:
                  v188 = v694;
                  goto LABEL_742;
                }
              }

              v648 = v201;
              si_indexDeleteDeferredItemsIfItemIncluded(v56, v709[0]);
              v655 = v201;
              if (v201)
              {
                v214 = v675;
              }

              else
              {
                db_validate_obj(v680);
                v215 = CFEqual(v29, @"com.apple.MobileSMS");
                if (v664)
                {
                  if (v215)
                  {
                    v216 = v720;
                    if (((changesExistingSyndicationAttributes(v56, v707[0], v720, v675) & 1) != 0 || changesExistingSyndicationRelatedAttributes(v56, v707[0], v216, v675)) && (v683 || isSyndicatedContent(v56, v707[0])))
                    {
                      *v664 = 1;
                    }
                  }
                }

                v214 = v675;
                if (((v675 | v677 ^ 1) & 1) == 0)
                {
                  *&v743[0] = 0;
                  *v731 = 0;
                  if (db_get_field(v680, v707[0], "_kMDItemHasClientData", v731, v743))
                  {
                    v217 = 0;
                  }

                  else
                  {
                    v217 = **&v743[0] != 0;
                  }

                  v214 = v217;
                }
              }

              if (v707[0])
              {
                v223 = v707[0][3];
                v224 = v223;
                v225 = v183 != 0;
                v226 = v677 | v671;
                if ((v677 | v671) == 1 && v183 && !v655 && v223)
                {
                  if (CFStringHasSuffix(v183, @"NSFileProviderRootContainerItemIdentifier"))
                  {
                    v226 = 1;
                    v224 = 2;
                  }

                  else
                  {
                    v227 = v707[0][3];
                    if (v227)
                    {
                      if (v227 == cs_orphan_oid)
                      {
                        v224 = 0;
                      }

                      else
                      {
                        *v731 = 0;
                        *v733 = 0;
                        if (!db_get_field(v680, v707[0], "FPParentFileItemID", v731, v733) && **v731 == 11 && (*(*v731 + 2) & 0x10) == 0)
                        {
                          bzero(v743, 0x400uLL);
                          if (CFStringGetCString(v183, v743, 1024, 0x8000100u))
                          {
                            if (!strcmp(v743, (*v731 + 13)))
                            {
                              v224 = v223;
                            }

                            else
                            {
                              v224 = 0;
                            }
                          }
                        }
                      }
                    }

                    v226 = 1;
                  }

                  v225 = 1;
                }
              }

              else
              {
                v224 = 0;
                v225 = v183 != 0;
                v226 = v677 | v671;
              }

              v669 = v225;
              v668 = v224;
              v667 = v226;
              if (v90)
              {
                Count = CFDictionaryGetCount(v90);
              }

              else
              {
                Count = 0;
              }

              v232 = Count + 29;
              v233 = Count + 4;
              v234 = 16 * (Count + 29 + Count + 4);
              if (v234 >= 2048)
              {
                v235 = malloc_type_calloc(1uLL, v234, 0x100004077774924uLL);
              }

              else
              {
                v235 = v742;
              }

              v236 = Count + 29;
              v676 = v235;
              v237 = &v235[v232];
              v238 = &v237[v232];
              v656 = v237;
              v239 = &v238[Count];
              bzero(v743 + 8, 0x260uLL);
              v240 = *MEMORY[0x1E695E4C0];
              *&v743[0] = 0xFFF0000000000000;
              v652 = v240;
              *&v743[2] = v240;
              if (v684)
              {
                v241 = 4352;
              }

              else
              {
                v241 = 256;
              }

              DWORD2(v743[2]) = v241;
              if (v719[0])
              {
                v242 = CFRetain(v719[0]);
              }

              else
              {
                v242 = 0;
              }

              *&v744 = v242;
              v749 = v676;
              v750 = v656;
              v752 = v236;
              v753 = v238;
              v754 = v239;
              v756 = v233;
              v765 = -1;
              v767 = -1;
              if (!v29)
              {
                CFStringCompare(0, @"com.apple.searchstressattr", 0);
                v243 = v696;
                goto LABEL_359;
              }

              v243 = v696;
              if (CFEqual(v29, @"com.apple.mobilemail"))
              {
                v244 = DWORD2(v743[2]) | 0x10000;
              }

              else if (CFEqual(v29, @"com.apple.mobileslideshow"))
              {
                v244 = DWORD2(v743[2]) | 0x20000;
              }

              else
              {
                if (!CFEqual(v29, @"com.apple.MobileAddressBook"))
                {
                  CFStringCompare(v29, @"com.apple.searchstressattr", 0);
LABEL_357:
                  if (!CFEqual(v29, @"com.apple.mobilesafari"))
                  {
                    DWORD2(v743[2]) |= 0x40000u;
                  }

LABEL_359:
                  if (v718)
                  {
                    DWORD2(v743[2]) |= 0x200000u;
                    if (*(v243 + 10112))
                    {
                      goto LABEL_367;
                    }

                    *(v243 + 10112) = 1;
                    v245 = @"kSPHasPhotos";
                  }

                  else
                  {
                    if (v29)
                    {
                      v246 = v214;
                    }

                    else
                    {
                      v246 = 1;
                    }

                    if (v246 & 1) != 0 || (v252 = CFEqual(v29, @"com.apple.searchd"), !v243) || v252 || (*(v243 + 10113))
                    {
LABEL_367:
                      if (!v90)
                      {
                        goto LABEL_388;
                      }

                      v247 = CFDictionaryGetValue(v90, @"kMDItemPhotosInferredTimeZoneOffset");
                      if (!v247)
                      {
                        v247 = CFDictionaryGetValue(v90, @"kMDItemPhotosTimeZoneOffset");
                        if (!v247)
                        {
LABEL_382:
                          if (CFStringCompare(v29, @"com.apple.MobileAddressBook", 0) == kCFCompareEqualTo || CFStringCompare(v29, @"com.apple.Music", 0) == kCFCompareEqualTo)
                          {
                            DWORD2(v743[2]) |= 0x400u;
                          }

                          CFDictionaryGetValue(v90, @"_kMDItemExternalID");
                          CFDictionaryApplyFunction(v90, preProcess, v743);
                          postPreprocess(v743, v29);
                          handleUserTags(v743);
                          if ((BYTE8(v743[2]) & 0x10) != 0 && v751)
                          {
                            DWORD2(v743[2]) &= ~0x10u;
                          }

LABEL_388:
                          v650 = gDefaultSchema;
                          if ((v648 != 0) | v214 & 1 || ((v677 ^ 1) & 1) != 0 || (BYTE9(v743[2]) & 0x80) == 0 || !*(v696 + 1704))
                          {
                            if ((v214 & 1) == 0)
                            {
                              goto LABEL_430;
                            }
                          }

                          else
                          {
                            *v731 = 0;
                            *v733 = 0;
                            if (db_get_field(*v685, v707[0], "kMDItemEmbeddingVersion", v733, v731))
                            {
                              goto LABEL_430;
                            }

                            v254 = *MEMORY[0x1E695E480];
                            v255 = _decodeSDBField(*v685, *v733, *v731, 0, 0, 0, 0, *MEMORY[0x1E695E480], v253);
                            if (!v255)
                            {
                              goto LABEL_430;
                            }

                            v608 = v254;
                            v256 = v255;
                            LODWORD(v729) = 0;
                            v257 = CFNumberGetValue(v255, kCFNumberIntType, &v729);
                            v258 = v729;
                            CFRelease(v256);
                            if (!v257 || v258 != 3)
                            {
                              goto LABEL_430;
                            }

                            v613 = v608;
                            if (!db_get_field(*v685, v707[0], "_kMDItemMediaEmbeddingVersion", v733, v731))
                            {
                              v289 = _decodeSDBField(*v685, *v733, *v731, 0, 0, 0, 0, v613, v259);
                              if (v289)
                              {
                                v290 = v289;
                                LODWORD(v729) = 0;
                                if (CFNumberGetValue(v289, kCFNumberIntType, &v729))
                                {
                                  v291 = v729;
                                  v292 = SPEmbeddingModelVersion();
                                  CFRelease(v290);
                                  if (v292 != v291)
                                  {
LABEL_430:
                                    if ((BYTE9(v743[2]) & 0x80) != 0)
                                    {
                                      v293 = CFDictionaryGetValue(v720, @"_kMDItemExternalID");
                                      if (v293)
                                      {
                                        v294 = v293;
                                        v295 = CFGetTypeID(v293);
                                        if (v295 == CFStringGetTypeID())
                                        {
                                          v296 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@:%@", v294, v29);
                                          if (!v296)
                                          {
                                            v279 = 0;
                                            v281 = 1;
                                            v276 = 0;
                                            goto LABEL_437;
                                          }

                                          v297 = v296;
                                          os_unfair_lock_lock((v696 + 1696));
                                          CFBagAddValue(*(v696 + 1704), v297);
                                          os_unfair_lock_unlock((v696 + 1696));
                                          CFRelease(v297);
                                        }
                                      }
                                    }

                                    v281 = 1;
                                    v276 = 0;
                                    goto LABEL_436;
                                  }
                                }

                                else
                                {
                                  CFRelease(v290);
                                }
                              }
                            }

                            v260 = v720;
                            v261 = CFDictionaryGetValue(v720, @"FPDownloaded");
                            if (v261)
                            {
                              v262 = v261;
                              v263 = v260;
                              v264 = CFGetTypeID(v261);
                              v43 = v264 == CFBooleanGetTypeID();
                              v260 = v263;
                              if (v43 && CFBooleanGetValue(v262) && !db_get_field(*v685, v707[0], "FPDownloaded", v733, v731))
                              {
                                v266 = _decodeSDBField(*v685, *v733, *v731, 0, 0, 0, 0, v613, v265);
                                v267 = CFBooleanGetValue(v266);
                                if (v266)
                                {
                                  CFRelease(v266);
                                }

                                v260 = v263;
                                if (!v267)
                                {
                                  goto LABEL_430;
                                }
                              }
                            }

                            v268 = CFDictionaryGetValue(v260, @"kMDItemContentModificationDate");
                            if (!v268)
                            {
                              goto LABEL_430;
                            }

                            v269 = v268;
                            v270 = CFGetTypeID(v268);
                            if (v270 != CFDateGetTypeID())
                            {
                              goto LABEL_430;
                            }

                            if (db_get_field(*v685, v707[0], "kMDItemContentModificationDate", v733, v731))
                            {
                              goto LABEL_430;
                            }

                            v272 = _decodeSDBField(*v685, *v733, *v731, 0, 0, 0, 0, v613, v271);
                            if (!v272)
                            {
                              goto LABEL_430;
                            }

                            v273 = v272;
                            v274 = CFEqual(v272, v269);
                            CFRelease(v273);
                            if (!v274)
                            {
                              goto LABEL_430;
                            }
                          }

                          if ((v677 ^ 1) & 1 | (v648 != 0))
                          {
                            v275 = v696;
                            if (v655)
                            {
                              v276 = 1;
                              v277 = v707[0];
                              v278 = 0;
                              v279 = 0;
                              v280 = 0;
                              v281 = 0;
                              goto LABEL_446;
                            }
                          }

                          else
                          {
                            v275 = v696;
                            if ((BYTE9(v743[2]) & 0x80) != 0)
                            {
                              v282 = v720;
                              CFDictionaryRemoveValue(v720, @"_kMDItemRequiresImport");
                              CFDictionaryRemoveValue(v282, @"_kMDItemImportSandboxExtension");
                              CFDictionaryRemoveValue(v282, @"_kMDItemImportHasSandboxExtension");
                            }
                          }

                          v283 = v680;
                          if (objectHasContent(v680, v707[0]))
                          {
                            MEMORY[0x1EEE9AC00](v284);
                            bzero(v603, 0x1000uLL);
                            allocator = _SIStackAllocatorCreate(v603, 4096, indexingZone);
                            v276 = 1;
                            v281 = 0;
                            v279 = decodeDBOToDictionary(v283, v707[0], 0, 0x2000, 2, *(v275 + 2028), *(v275 + 2060), 1, 0, allocator);
LABEL_437:
                            v280 = 0;
                            v277 = v707[0];
                            if (v655 || !v707[0])
                            {
                              v278 = 0;
                            }

                            else
                            {
                              v678 = v183;
                              v298 = v177;
                              v278 = 0;
                              v299 = v696;
                              *v731 = *(v696 + 2012);
                              *v733 = 0;
                              v729 = 0;
                              v300 = v680;
                              if (!db_get_field_by_id(v680, v707[0], v731, v733, &v729))
                              {
                                v278 = *v729;
                              }

                              *v731 = *(v299 + 2008);
                              if (db_get_field_by_id(v300, v707[0], v731, v733, &v729))
                              {
                                v301 = 0;
                              }

                              else
                              {
                                v301 = *v729;
                              }

                              v177 = v298;
                              v277 = v707[0];
                              v280 = v301;
                              v183 = v678;
                            }

LABEL_446:
                            v660 = v278;
                            v659 = v280;
                            v302 = v276;
                            v303 = v281;
                            v663 = v279;
                            v674 = v277;
                            v665 = v302;
                            v679 = v177;
                            if (v277)
                            {
                              v304 = v277;
                              v707[0] = db_copy_obj(v277, 1024);
                              v305 = v680;
                              db_validate_obj(v680);
                              free(v304);
                              if (v302)
                              {
                                v306 = candidateForReimport(v696, v707);
                                v308 = 0;
                                v309 = v666;
                                v310 = v650;
                                goto LABEL_462;
                              }

                              v315 = db_delete_fields_with_flags(v305, v707[0]);
                              v308 = v315 == 0;
                              if (v315 && dword_1EBF46AE8 >= 5)
                              {
                                v580 = v315;
                                v581 = *__error();
                                v582 = _SILogForLogForCategory(7);
                                if (os_log_type_enabled(v582, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v731 = 67109120;
                                  *&v731[4] = v580;
                                  _os_log_impl(&dword_1C278D000, v582, OS_LOG_TYPE_DEFAULT, "Deleting importer fields failed, rc:%d", v731, 8u);
                                }

                                *__error() = v581;
                                v305 = v680;
                              }

                              v309 = v666;
                              v310 = v650;
                              if (v745)
                              {
                                v306 = 0;
                                goto LABEL_462;
                              }

                              InsertPreProcessContextAddAttr(v743, @"_kMDItemTextContentIndexExists", v652, 0);
                              v306 = 0;
                            }

                            else
                            {
                              v311 = v680;
                              v707[0] = db_create_obj(v680, 1024, 0);
                              *v707[0] = v709[0];
                              v312 = v302;
                              if (*&v743[1])
                              {
                                v313.n128_f64[0] = MEMORY[0x1C691E960]();
                                *v731 = v313.n128_u64[0];
                                v312 = 0;
                                db_add_field(v311, v707, 1u, "kMDItemExpirationDate", 0, 0, 12, v731, v313, 8);
                              }

                              v314 = !v683;
                              if (!v662)
                              {
                                v314 = 1;
                              }

                              v310 = v650;
                              if ((v314 & 1) == 0)
                              {
                                *v664 = 1;
                              }

                              v308 = 0;
                              v306 = v312;
                              v305 = v680;
                            }

                            v309 = v666;
LABEL_462:
                            v654 = v306;
                            v316 = v308;
                            if ((BYTE8(v743[2]) & 8) != 0)
                            {
                              *(v707[0] + 10) |= 2u;
                            }

                            v317 = v309 | 0x200;
                            v318 = v310;
                            if (v755)
                            {
                              setDatastoreLocalizedAttributes(v305, v707, v753, v754, v755, v310, v695, v303, 0);
                              db_validate_obj(v305);
                              v316 = 1;
                            }

                            v682 = v686 + 3072;
                            v319 = v317;
                            if (v751)
                            {
                              v320 = CFDictionaryCreate(*MEMORY[0x1E695E480], v749, v656, v751, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                              v321 = setDatastoreAttributes(v305, v707, v320, v319, v318, v695, v303, 0);
                              v322 = v321;
                              if (v320)
                              {
                                CFRelease(v320);
                                if (!v322)
                                {
                                  goto LABEL_536;
                                }
                              }

                              else if (!v321)
                              {
                                goto LABEL_536;
                              }

                              v316 = 1;
                            }

                            v323 = *(&v743[0] + 1);
                            if (*(&v743[0] + 1))
                            {
                              v324 = *v743;
                            }

                            else
                            {
                              if ((BYTE9(v743[2]) & 8) == 0)
                              {
                                goto LABEL_477;
                              }

                              v324 = *v743;
                              v323 = 0;
                            }

                            markItemAsUsedForField(v305, v707, "kMDItemLastUsedDate", "kMDItemUsedDates", v323, 1, 1, 0, v324);
                            v316 = 1;
LABEL_477:
                            if (v764)
                            {
                              memset(v731, 0, 32);
                              v325 = CFStringGetTypeID();
                              if (v325 == CFGetTypeID(v764) && CFStringGetCString(v764, v731, 32, 0x8000100u))
                              {
                                Current = CFAbsoluteTimeGetCurrent();
                                v327 = v765;
                                v328 = v731;
                              }

                              else
                              {
                                v328 = 0;
                                v327 = 0;
                                Current = 0.0;
                              }

                              updateItemRecentEngagementData(v305, v707, v328, v327, "_kMDItemRecentAppSearchEngagementQueries", "_kMDItemRecentAppSearchEngagementDates", "_kMDItemRecentAppSearchEngagementRenderPositions", 1, Current);
                              v316 = 1;
                            }

                            if (v766)
                            {
                              memset(v731, 0, 32);
                              v329 = CFStringGetTypeID();
                              if (v329 == CFGetTypeID(v766) && CFStringGetCString(v766, v731, 32, 0x8000100u))
                              {
                                v330.n128_f64[0] = CFAbsoluteTimeGetCurrent();
                                v331 = v767;
                                v332 = v731;
                              }

                              else
                              {
                                v332 = 0;
                                v331 = 0;
                                v330.n128_u64[0] = 0;
                              }

                              updateItemRecentSpotlightEngagementData(v305, v707, v332, v331, v330);
                              v316 = 1;
                            }

                            v333 = v316;
                            if (v768)
                            {
                              v334 = CFDateGetTypeID();
                              v335 = CFGetTypeID(v768);
                              v336 = 0.0;
                              if (v334 == v335)
                              {
                                v336 = MEMORY[0x1C691E960](v768, 0.0);
                              }

                              updateItemRecentOutOfSpotlightEngagementData(v305, v707, v336);
                              v333 = 1;
                            }

                            if (v761)
                            {
                              v337 = v305;
                              v338 = fmax(markItemAsUsedForField(v305, v707, "_kMDItemInterestingDate", 0, v761, 0, 0, 8456, 0.0), 0.0);
                              v339 = v29;
                              v340 = v319;
                              v341 = v183;
                              v342 = SICopyRoundedDate();
                              markItemAsUsedForField(v337, v707, "kMDItemInterestingDate_Ranking", 0, v342, 0, 0, 256, 0.0);
                              v343 = v342;
                              v183 = v341;
                              v319 = v340;
                              v29 = v339;
                              CFRelease(v343);
                              v344 = 1;
                              v345 = v338;
                            }

                            else
                            {
                              if (v760)
                              {
                                *v731 = 0;
                                CFNumberGetValue(v760, kCFNumberSInt32Type, v731);
                              }

                              v344 = v333;
                              v345 = 0;
                            }

                            v346 = v344;
                            v347 = v665;
                            if (v761)
                            {
                              v347 = 0;
                            }

                            v348 = v674;
                            if (v347 == 1)
                            {
                              v731[0] = 0;
                              v349 = fmax(getTimeForDateField(v680, v707[0], v731), 0.0);
                              if (v731[0])
                              {
                                v350 = v349;
                              }

                              else
                              {
                                v350 = v345;
                              }
                            }

                            else
                            {
                              v350 = v345;
                            }

                            v307.n128_f64[0] = v757;
                            v351 = v758;
                            v352 = v757 == 0.0;
                            if (v758 != 0.0)
                            {
                              v352 = 0;
                            }

                            if (v759 != 0.0)
                            {
                              v352 = 0;
                            }

                            if (!v348)
                            {
                              v352 = 1;
                            }

                            v647 = v352;
                            if (v352)
                            {
                              if (v346)
                              {
                                goto LABEL_540;
                              }

                              goto LABEL_536;
                            }

                            v617 = v346;
                            v353 = "_kMDItemEngagementData";
                            if (v758 == 0.0)
                            {
                              v351 = v759;
                              v353 = "_kMDItemAppEngagementData";
                            }

                            if (v757 == 0.0)
                            {
                              v354 = v351;
                            }

                            else
                            {
                              v354 = v757;
                            }

                            if (v757 == 0.0)
                            {
                              v355 = v353;
                            }

                            else
                            {
                              v355 = "_kMDItemRenderData";
                            }

                            *v733 = 0;
                            v729 = 0;
                            v356 = v680;
                            MEMORY[0x1EEE9AC00](v307);
                            bzero(v604, v357);
                            db_validate_obj(v356);
                            if (!*v707[0])
                            {
                              if (v617)
                              {
LABEL_540:
                                v377 = atomic_load(v686 + 9);
                                if ((v377 & 3) == 0 && *(v682 + 2915) != 1)
                                {
                                  v657 = v319;
                                  if ((DWORD2(v743[2]) & 0x100040) == 0)
                                  {
                                    if (v745)
                                    {
                                      v378 = CFDictionaryGetValue(v90, @"kMDItemContentType");
                                      if (v378)
                                      {
                                        v379 = v378;
                                        v380 = CFGetTypeID(v378);
                                        if (TypeID == v380)
                                        {
                                          if (CFEqual(v379, @"public.plain-text") || CFEqual(v379, @"public.data") || CFStringHasPrefix(v379, @"dyn.") || v90 && (v547 = CFDictionaryGetValue(v90, @"kMDItemContentTypeTree")) != 0 && (v548 = v547, v549 = CFArrayGetTypeID(), v549 == CFGetTypeID(v548)) && (v770.length = CFArrayGetCount(v548), v770.location = 0, CFArrayContainsValue(v548, v770, @"public.plain-text")))
                                          {
                                            DWORD2(v743[2]) |= 0x40u;
                                          }
                                        }
                                      }
                                    }
                                  }

                                  v372 = v696;
                                  if (v350 && dword_1EBF46ADC >= 5)
                                  {
                                    v578 = *__error();
                                    v579 = _SILogForLogForCategory(4);
                                    if (os_log_type_enabled(v579, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *v731 = 67109120;
                                      *&v731[4] = v350;
                                      _os_log_impl(&dword_1C278D000, v579, OS_LOG_TYPE_DEFAULT, "date:%x", v731, 8u);
                                    }

                                    *__error() = v578;
                                    v372 = v696;
                                  }

                                  v381 = v689;
                                  v382 = v707[0][3];
                                  v383 = v668;
                                  if (v689)
                                  {
                                    v384 = v668 == 0;
                                  }

                                  else
                                  {
                                    v384 = 1;
                                  }

                                  v385 = v667;
                                  if (!v384)
                                  {
                                    v385 = 1;
                                  }

                                  v373 = v692;
                                  if (v385 != 1)
                                  {
                                    goto LABEL_588;
                                  }

                                  v707[0][3] = v668;
                                  if (v383)
                                  {
                                    goto LABEL_588;
                                  }

                                  v386 = v691;
                                  v387 = CFStringGetLength(v691);
                                  if (CFStringHasPrefix(v386, @"__fpdefault/"))
                                  {
                                    v388 = !v669;
                                    if (v387 < 13)
                                    {
                                      v388 = 1;
                                    }

                                    if (v388)
                                    {
                                      goto LABEL_585;
                                    }

                                    v389 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s%@", "__fpdefault/", v183);
                                    goto LABEL_577;
                                  }

                                  if (!CFStringHasPrefix(v386, @"__fp/"))
                                  {
                                    v382 = -1;
                                    goto LABEL_586;
                                  }

                                  v382 = -1;
                                  v381 = v689;
                                  if (v387 < 6)
                                  {
                                    goto LABEL_588;
                                  }

                                  v649 = v350;
                                  v390 = 0;
                                  *&v731[8] = 0;
                                  *v731 = 0;
                                  v771.length = v387 - 5;
                                  v771.location = 5;
                                  v391 = v691;
                                  if (CFStringFindWithOptions(v691, @"/", v771, 0, v731))
                                  {
                                    v392 = *v731 == -1;
                                  }

                                  else
                                  {
                                    v392 = 1;
                                  }

                                  v393 = v669;
                                  if (v392)
                                  {
                                    v393 = 0;
                                  }

                                  if (v393)
                                  {
                                    v389 = 0;
                                    v772.length = *v731 + 1;
                                    *&v731[8] = *v731 + 1;
                                    *v731 = 0;
                                    v394 = *MEMORY[0x1E695E480];
                                    v772.location = 0;
                                    v395 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v391, v772);
                                    if (!v395)
                                    {
LABEL_576:
                                      v350 = v649;
LABEL_577:
                                      v381 = v689;
                                      if (v389)
                                      {
                                        v649 = v350;
                                        *v733 = 0;
                                        if (CFStringCompare(v389, v691, 0))
                                        {
                                          v397 = v389;
                                        }

                                        else
                                        {
                                          v397 = v183;
                                        }

                                        v350 = v649;
                                        if (!si_get_object_for_identifier_createParentDBO(v372, v29, v397, 0, 0, v733, 0, 1))
                                        {
                                          if (gSILogLevels[0] >= 5)
                                          {
                                            v596 = v373;
                                            v597 = *__error();
                                            v598 = _SILogForLogForCategory(0);
                                            if (os_log_type_enabled(v598, OS_LOG_TYPE_DEFAULT))
                                            {
                                              *v731 = 134218498;
                                              *&v731[4] = *v733;
                                              *&v731[12] = 2112;
                                              *&v731[14] = v397;
                                              *&v731[22] = 2112;
                                              *&v731[24] = v691;
                                              _os_log_impl(&dword_1C278D000, v598, OS_LOG_TYPE_DEFAULT, "found parent oid: %lld (%@) for %@", v731, 0x20u);
                                            }

                                            *__error() = v597;
                                            v372 = v696;
                                            v373 = v596;
                                            v350 = v649;
                                          }

                                          v398 = *v733;
                                          v707[0][3] = *v733;
                                          si_indexDeleteDeferredItemsIfItemIncluded(v372, v398);
                                        }

                                        CFRelease(v389);
LABEL_585:
                                        v382 = -1;
LABEL_586:
                                        v381 = v689;
                                        goto LABEL_588;
                                      }

                                      v382 = -1;
LABEL_588:
                                      v399 = v382;
                                      v400 = a12;
                                      if (v665)
                                      {
                                        v401 = 1026;
                                      }

                                      else
                                      {
                                        v401 = 1030;
                                      }

                                      v402 = v401 | HIWORD(v381) | (2 * DWORD2(v743[2])) & 0x20 | (8 * DWORD2(v743[2])) & 0x40 | (2 * DWORD2(v743[2])) & 0x80 | (DWORD2(v743[2]) >> 3) & 0x200;
                                      if (!v674)
                                      {
                                        v402 |= 0x800u;
                                      }

                                      if (v654)
                                      {
                                        v402 |= 0x1000u;
                                      }

                                      if (v647)
                                      {
                                        v402 |= 0x2000u;
                                      }

                                      if (v679)
                                      {
                                        v403 = v402 | 0x4000;
                                      }

                                      else
                                      {
                                        v403 = v402;
                                      }

                                      if (CFEqual(v29, @"com.apple.mobilemail") || CFEqual(v29, @"com.apple.pommesctl"))
                                      {
                                        v404 = v403 | 0x8000;
                                      }

                                      else
                                      {
                                        v404 = v403;
                                      }

                                      v405 = v746;
                                      *&v731[40] = v746;
                                      *v731 = v90;
                                      *&v731[8] = v745;
                                      *&v731[32] = 0;
                                      *&v731[16] = v748;
                                      *&v731[24] = 0;
                                      *v732 = v747;
                                      v405.n128_u32[0] = v762;
                                      v375 = v663;
                                      v406 = si_writeBackAndIndexWithLiveQueryToggle(v405, v372, v687, v731, v663, v399, v707, 0, v404, 0, 0, v660, v659, v350, v763, v400);
                                      if (v406)
                                      {
                                        v407 = v406;
                                        v408 = v406;
                                        v409 = *__error();
                                        v410 = _SILogForLogForCategory(0);
                                        if (os_log_type_enabled(v410, OS_LOG_TYPE_ERROR))
                                        {
                                          *v733 = 136316930;
                                          *&v733[4] = "processOneCS";
                                          *&v733[12] = 1024;
                                          *&v733[14] = 31490;
                                          *&v733[18] = 2112;
                                          *&v733[20] = v29;
                                          *&v733[28] = 2048;
                                          *&v733[30] = v725;
                                          v734 = 1024;
                                          v735 = v657;
                                          v736 = 2048;
                                          v737 = v709[0];
                                          v738 = 2048;
                                          v739 = v709[0];
                                          v740 = 1024;
                                          v741 = v408;
                                          _os_log_error_impl(&dword_1C278D000, v410, OS_LOG_TYPE_ERROR, "%s:%d: Failed to update the index for bundleId:%@, serial:%lld, options:0x%x, oid:0x%lld(%lld), updateErr:%d", v733, 0x46u);
                                        }

                                        *__error() = v409;
                                        if (v407 > 21)
                                        {
                                          if (v407 == 22)
                                          {
                                            goto LABEL_621;
                                          }

                                          if (v407 != 89)
                                          {
LABEL_614:
                                            if (v687[3] == 28 || v407 == 28)
                                            {
                                              v412 = 1;
                                            }

                                            else
                                            {
                                              v412 = 2;
                                            }

                                            si_makeUnavailable(v372, v408, v412, 17, "set attributes err");
                                            goto LABEL_621;
                                          }

                                          *a14 = 1;
                                        }

                                        else
                                        {
                                          if (v407 != -3)
                                          {
                                            if (v407 != 2)
                                            {
                                              goto LABEL_614;
                                            }

LABEL_621:
                                            v374 = v676;
LABEL_539:
                                            v376 = 0;
                                            _SIActivityJournalAdd(v372 + 2192, 15, *v707[0], 0, v725, (v373 >> 4) & 1);
                                            goto LABEL_658;
                                          }

                                          if ((*(v372 + 2458) & 1) == 0)
                                          {
                                            *(v372 + 2458) = 1;
                                            _SIConsistencyCheck(v372);
                                          }
                                        }
                                      }

                                      LODWORD(v729) = 0;
                                      if (CFStringCompare(v29, @"com.apple.mobilemail", 0) == kCFCompareEqualTo)
                                      {
                                        v417 = v720;
                                        v418 = CFDictionaryGetValue(v720, @"com_apple_mail_read");
                                        v419 = CFDictionaryGetValue(v417, @"com_apple_mail_flagged");
                                        v420 = CFDictionaryGetValue(v417, @"com_apple_mail_flagColor");
                                        v421 = CFDictionaryGetValue(v417, @"com_apple_mail_transaction");
                                        if (v421)
                                        {
                                          v422 = v421;
                                          v423 = CFNumberGetTypeID();
                                          if (v423 == CFGetTypeID(v422))
                                          {
                                            CFNumberGetValue(v422, kCFNumberSInt32Type, &v729);
                                          }
                                        }

                                        v424 = v707[0];
                                        if (!v418 && v375 && v707[0])
                                        {
                                          *v731 = 0;
                                          *v733 = 0;
                                          if (db_get_field(v680, v707[0], "com_apple_mail_read", v733, v731))
                                          {
                                            v425 = 0;
                                          }

                                          else if (*(*v733 + 8) == 1)
                                          {
                                            if (**v731)
                                            {
                                              v425 = *MEMORY[0x1E695E4D0];
                                            }

                                            else
                                            {
                                              v425 = 0;
                                            }
                                          }

                                          else
                                          {
                                            v425 = 0;
                                          }

                                          v424 = v707[0];
                                          v429 = v425;
                                        }

                                        else
                                        {
                                          v429 = v418;
                                        }

                                        SIActivityJournalMailCSItem(v372 + 2192, v691, *v424, v729, v725, (v373 >> 4) & 1, v665, v429, v419, v420);
                                        goto LABEL_657;
                                      }

                                      v413 = CFStringCompare(v29, @"com.apple.searchd", 0);
                                      v414 = v691;
                                      v415 = v691;
                                      if (v413)
                                      {
LABEL_626:
                                        v416 = v415;
                                        SIActivityJournalCSItem(v372 + 2192, v415, *v707[0], v729, v725, (v373 >> 4) & 1, v665);
                                        if (v416 != v414)
                                        {
                                          CFRelease(v416);
                                        }

LABEL_657:
                                        db_validate_obj(v680);
                                        v376 = 1;
                                        v374 = v676;
LABEL_658:
                                        v440 = v376;
                                        if (v707[0])
                                        {
                                          free(v707[0]);
                                        }

                                        cleanupPreProcContext(v743);
                                        v441 = v665;
                                        if (v375)
                                        {
                                          CFRelease(v375);
                                        }

                                        if (v742 != v374)
                                        {
                                          free(v374);
                                        }

                                        v442 = v720;
                                        v443 = CFDictionaryGetValue(v720, @"_kMDItemBundleID");
                                        v658 = v443;
                                        if (!v441 || !CFEqual(@"com.apple.MobileAddressBook", v443) || ((v661 = v440, v615 = CFDictionaryGetValue(v442, @"_kMDItemExternalID"), v444 = CFDictionaryGetValue(v442, @"_kMDItemIncomingCounts"), v633 = CFDictionaryGetValue(v442, @"_kMDItemOutgoingCounts"), v445 = CFDictionaryGetValue(v442, @"_kMDItemIncomingMailCounts"), v446 = CFDictionaryGetValue(v442, @"_kMDItemOutgoingMailCounts"), v447 = CFDictionaryGetValue(v442, @"_kMDItemIncomingSMSCounts"), v448 = CFDictionaryGetValue(v442, @"_kMDItemOutgoingSMSCounts"), v449 = CFDictionaryGetValue(v442, @"_kMDItemIncomingCalendarCounts"), v450 = CFDictionaryGetValue(v442, @"_kMDItemOutgoingCalendarCounts"), v610 = CFDictionaryGetValue(v442, @"_kMDItemIncomingFileProviderCounts"), v612 = CFDictionaryGetValue(v442, @"_kMDItemOutgoingFileProviderCounts"), (v634 = v444) == 0) ? (v451 = 0) : (v451 = CFArrayGetCount(v444)), (v452 = v451, !v633) ? (v453 = 0) : (v453 = CFArrayGetCount(v633)), (v642 = v453, v454 = v446, !v445) ? (v455 = 0) : (v455 = CFArrayGetCount(v445)), (v456 = v455, v624 = v447, !v454) ? (v458 = v447, v459 = 0) : (v457 = CFArrayGetCount(v454), v458 = v624, v459 = v457), (v440 = v661, v639 = v459, !v458) ? (v460 = 0) : (v460 = CFArrayGetCount(v458)), (v638 = v460, !v448) ? (v461 = 0) : (v461 = CFArrayGetCount(v448)), (v637 = v461, v625 = v454, !v449) ? (v462 = 0) : (v462 = CFArrayGetCount(v449)), (v635 = v462, v463 = v610, v626 = v445, !v450) ? (v464 = 0) : (v464 = CFArrayGetCount(v450)), (v632 = v464, v465 = v612, !v463) ? (v466 = 0) : (v466 = CFArrayGetCount(v463)), (v630 = v466, v628 = v615, !v465) ? (v467 = 0) : (v467 = CFArrayGetCount(v465)), !v628 || !v452 && !v642 && !v456 && !v639 && !v638 && !v637 && !v635 && !v632 && !v630 && !v467))
                                        {
LABEL_728:
                                          if (v674)
                                          {
                                            goto LABEL_729;
                                          }

                                          v491 = v658;
                                          if (CFEqual(@"com.apple.MobileAddressBook", v658))
                                          {
                                            v492 = CFDictionaryGetValue(v442, @"_kMDItemExternalID");
                                            v493 = CFDictionaryGetValue(v442, @"kMDItemEmailAddresses");
                                            if (v493)
                                            {
                                              v494 = v493;
                                              v495 = CFGetTypeID(v493);
                                              if (v495 == CFArrayGetTypeID())
                                              {
                                                v496 = CFArrayGetCount(v494);
                                                if (v496)
                                                {
                                                  if (v492)
                                                  {
                                                    v497 = v496;
                                                    v498 = v440;
                                                    v499 = safeCFStringCopy(v492);
                                                    os_unfair_lock_lock(&sEmailAddressMappingLock);
                                                    if (!sKnownEmailAdresses)
                                                    {
                                                      sKnownEmailAdresses = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                                    }

                                                    if (v497 >= 1)
                                                    {
                                                      v500 = 0;
                                                      v501 = *MEMORY[0x1E695E480];
                                                      do
                                                      {
                                                        ValueAtIndex = CFArrayGetValueAtIndex(v494, v500);
                                                        v503 = CFStringGetLength(ValueAtIndex);
                                                        v504 = CFStringCreateMutableCopy(v501, v503, ValueAtIndex);
                                                        CFDictionarySetValue(sKnownEmailAdresses, v504, v499);
                                                        CFRelease(v504);
                                                        ++v500;
                                                      }

                                                      while (v497 != v500);
                                                    }

                                                    os_unfair_lock_unlock(&sEmailAddressMappingLock);
                                                    CFRelease(v499);
                                                    v440 = v498;
                                                  }
                                                }
                                              }
                                            }

                                            goto LABEL_729;
                                          }

                                          v505 = v440;
                                          v506 = CFDictionaryGetValue(v442, @"kMDItemAuthorContactIdentifiers");
                                          v507 = CFDictionaryGetValue(v442, @"kMDItemRecipientContactIdentifiers");
                                          if (v506)
                                          {
                                            v508 = CFArrayGetTypeID();
                                            if (v508 != CFGetTypeID(v506))
                                            {
                                              v506 = 0;
                                            }
                                          }

                                          v509 = v696;
                                          if (v507)
                                          {
                                            v510 = CFArrayGetTypeID();
                                            if (v510 != CFGetTypeID(v507))
                                            {
                                              v507 = 0;
                                            }
                                          }

                                          else
                                          {
                                            v507 = 0;
                                          }

                                          v440 = v505;
                                          if (v506 | v507)
                                          {
                                            v511 = CFDictionaryGetValue(v442, @"kMDItemContentCreationDate");
                                            if (v511)
                                            {
                                              v512 = v511;
                                              v513 = CFDateGetTypeID();
                                              v43 = v513 == CFGetTypeID(v512);
                                              v440 = v505;
                                              if (v43)
                                              {
                                                updatedRelatedPersons(v509, v506, v507, v512, v491);
                                              }
                                            }
                                          }

                                          if (dword_1EBF46ADC >= 5)
                                          {
                                            v583 = *__error();
                                            v584 = _SILogForLogForCategory(4);
                                            if (os_log_type_enabled(v584, OS_LOG_TYPE_DEFAULT))
                                            {
                                              LODWORD(v743[0]) = 138412546;
                                              *(v743 + 4) = sSIMeEmailAddresses;
                                              WORD6(v743[0]) = 2112;
                                              *(v743 + 14) = v506;
                                              _os_log_impl(&dword_1C278D000, v584, OS_LOG_TYPE_DEFAULT, "~~~ sSIMeEmailAddresses: %@, authorPersons: %@", v743, 0x16u);
                                            }

                                            *__error() = v583;
                                            v440 = v505;
                                            if (v506)
                                            {
LABEL_729:
                                              if (v686)
                                              {
                                                v479 = v440;
                                              }

                                              else
                                              {
                                                v479 = 0;
                                              }

                                              if (v479 != 1 || (v480 = atomic_load(v686 + 9), (v480 & 2) != 0) || (*(v682 + 2915) & 1) != 0 || !*(v682 + 3376))
                                              {
                                                v56 = v696;
                                                v188 = v694;
                                                if (dword_1EBF46ADC >= 5)
                                                {
                                                  v558 = *__error();
                                                  v559 = _SILogForLogForCategory(4);
                                                  if (os_log_type_enabled(v559, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    LOWORD(v743[0]) = 0;
                                                    _os_log_impl(&dword_1C278D000, v559, OS_LOG_TYPE_DEFAULT, "Flush not required", v743, 2u);
                                                  }

                                                  *__error() = v558;
                                                  v187 = v687;
                                                  v186 = v440;
                                                  v106 = 0;
LABEL_874:
                                                  v56 = v696;
                                                  goto LABEL_285;
                                                }

                                                v187 = v687;
                                                v186 = v440;
                                              }

                                              else
                                              {
                                                v56 = v696;
                                                v481 = atomic_fetch_or((v696 + 1448), 2u);
                                                v188 = v694;
                                                if (v481)
                                                {
                                                  v482 = atomic_load((v56 + 1448));
                                                  if ((v482 & 2) != 0)
                                                  {
                                                    v483 = atomic_load((v56 + 1452));
                                                    v106 = v483 == 0;
                                                    v186 = 1;
                                                    v187 = v687;
                                                    goto LABEL_742;
                                                  }
                                                }

                                                else
                                                {
                                                  if (dword_1EBF46ADC >= 5)
                                                  {
                                                    v592 = *__error();
                                                    v593 = _SILogForLogForCategory(4);
                                                    if (os_log_type_enabled(v593, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      LOWORD(v743[0]) = 0;
                                                      _os_log_impl(&dword_1C278D000, v593, OS_LOG_TYPE_DEFAULT, "Schedule index flush", v743, 2u);
                                                    }

                                                    *__error() = v592;
                                                    v56 = v696;
                                                    v188 = v694;
                                                  }

                                                  v516 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
                                                  v517 = v687;
                                                  *v516 = v56;
                                                  v516[1] = v517;
                                                  LODWORD(v517) = *(v517 + 56);
                                                  *(v516 + 4) = 2;
                                                  *(v516 + 5) = v517;
                                                  si_indexDeleteDeferredItems(v56);
                                                  v516[5] = copyHoldQueue(*v516);
                                                  v516[11] = si_scheduler_suspend_async(*(v56 + 872));
                                                  if (!v516[9] && !*(v516 + 12))
                                                  {
                                                    v545 = *(v56 + 2360);
                                                    if (v545)
                                                    {
                                                      v546 = *(v545 + 64);
                                                      if (v546)
                                                      {
                                                        *(v516 + 12) = v546(*(v545 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 31927, "_Bool processOneCS(SIRef, int64_t, oid_t, CFStringRef, CFStringRef, int, MDPlistObject, MDPlistObject, CFStringRef, size_t, CFAllocatorRef, _Bool, dispatch_group_t, _Bool *, Boolean *)");
                                                      }
                                                    }
                                                  }

                                                  si_enqueue_work(*(v56 + 1040), _flushCache, v516);
                                                }

                                                v186 = 1;
                                                v187 = v687;
                                              }

LABEL_741:
                                              v106 = 0;
                                              goto LABEL_742;
                                            }
                                          }

                                          else if (v506)
                                          {
                                            goto LABEL_729;
                                          }

                                          if (!sSIMeEmailAddresses)
                                          {
                                            goto LABEL_729;
                                          }

                                          v514 = CFDictionaryGetValue(v442, @"kMDItemAuthorEmailAddresses");
                                          if (CFEqual(@"com.apple.mobilecal", v658))
                                          {
                                            if (!v514)
                                            {
                                              goto LABEL_729;
                                            }

                                            v515 = CFGetTypeID(v514);
                                            if (v515 != CFArrayGetTypeID())
                                            {
                                              goto LABEL_729;
                                            }
                                          }

                                          else
                                          {
                                            if (!v514)
                                            {
                                              goto LABEL_729;
                                            }

                                            v518 = CFGetTypeID(v514);
                                            if (v518 != CFArrayGetTypeID() || CFArrayGetCount(v514) != 1)
                                            {
                                              goto LABEL_729;
                                            }
                                          }

                                          v519 = CFArrayGetValueAtIndex(v514, 0);
                                          os_unfair_lock_lock(&sSIMeEmailAddressesLock);
                                          v520 = CFSetContainsValue(sSIMeEmailAddresses, v519);
                                          os_unfair_lock_unlock(&sSIMeEmailAddressesLock);
                                          v521 = CFDictionaryGetValue(v442, @"kMDItemPrimaryRecipientEmailAddresses");
                                          v522 = CFDictionaryGetValue(v442, @"kMDItemAdditionalRecipientEmailAddresses");
                                          v523 = CFDictionaryGetValue(v442, @"kMDItemContentCreationDate");
                                          if (!v523)
                                          {
                                            v523 = CFDictionaryGetValue(v442, @"kMDItemStartDate");
                                          }

                                          v636 = v523;
                                          if (v521 && (v524 = CFGetTypeID(v521), v524 == CFArrayGetTypeID()))
                                          {
                                            v525 = CFArrayGetCount(v521);
                                          }

                                          else
                                          {
                                            v525 = 0;
                                          }

                                          v526 = v520;
                                          v528 = v522 && (v527 = CFGetTypeID(v522), v527 == CFArrayGetTypeID()) && CFArrayGetCount(v522) != 0;
                                          v440 = v505;
                                          if (v526)
                                          {
                                            if (v528 + v525 && v636)
                                            {
                                              v529 = CFArrayCreateMutable(*MEMORY[0x1E695E480], v528 + v525, MEMORY[0x1E695E9C0]);
                                              os_unfair_lock_lock(&sEmailAddressMappingLock);
                                              if (sKnownEmailAdresses)
                                              {
                                                if (v525 >= 1)
                                                {
                                                  for (i = 0; i != v525; ++i)
                                                  {
                                                    v531 = CFArrayGetValueAtIndex(v521, i);
                                                    v532 = CFDictionaryGetValue(sKnownEmailAdresses, v531);
                                                    if (v532)
                                                    {
                                                      CFArrayAppendValue(v529, v532);
                                                    }
                                                  }
                                                }

                                                v440 = v505;
                                                if (v528)
                                                {
                                                  v533 = CFArrayGetValueAtIndex(v522, 0);
                                                  v534 = CFDictionaryGetValue(sKnownEmailAdresses, v533);
                                                  if (v534)
                                                  {
                                                    CFArrayAppendValue(v529, v534);
                                                  }
                                                }
                                              }

                                              os_unfair_lock_unlock(&sEmailAddressMappingLock);
                                              if (v529)
                                              {
                                                v535 = CFGetTypeID(v529);
                                                if (v535 == CFArrayGetTypeID())
                                                {
                                                  if (CFArrayGetCount(v529))
                                                  {
                                                    v536 = CFDateGetTypeID();
                                                    if (v536 == CFGetTypeID(v636))
                                                    {
                                                      if (dword_1EBF46ADC >= 5)
                                                      {
                                                        v599 = *__error();
                                                        v600 = _SILogForLogForCategory(4);
                                                        if (os_log_type_enabled(v600, OS_LOG_TYPE_DEFAULT))
                                                        {
                                                          LODWORD(v743[0]) = 138412290;
                                                          *(v743 + 4) = v529;
                                                          _os_log_impl(&dword_1C278D000, v600, OS_LOG_TYPE_DEFAULT, "~~~ authorIsMe, recipients: %@", v743, 0xCu);
                                                        }

                                                        *__error() = v599;
                                                      }

                                                      updatedRelatedPersons(v696, 0, v529, v636, v658);
                                                      v440 = v505;
                                                    }
                                                  }
                                                }
                                              }

                                              CFRelease(v529);
                                            }

                                            goto LABEL_729;
                                          }

                                          if (!(v525 + v528) || !v636)
                                          {
                                            goto LABEL_729;
                                          }

                                          os_unfair_lock_lock(&sSIMeEmailAddressesLock);
                                          if (v525 < 1)
                                          {
                                            if (!v528)
                                            {
                                              goto LABEL_866;
                                            }
                                          }

                                          else
                                          {
                                            v537 = 1;
                                            do
                                            {
                                              v538 = v537;
                                              v539 = sSIMeEmailAddresses;
                                              v540 = CFArrayGetValueAtIndex(v521, v537 - 1);
                                              v541 = CFSetContainsValue(v539, v540);
                                              v537 = v538 + 1;
                                              if (v541)
                                              {
                                                v542 = 0;
                                              }

                                              else
                                              {
                                                v542 = v538 < v525;
                                              }
                                            }

                                            while (v542);
                                            if (v541)
                                            {
                                              v543 = 1;
                                            }

                                            else
                                            {
                                              v543 = !v528;
                                            }

                                            if (v543)
                                            {
LABEL_855:
                                              if (v541 && sKnownEmailAdresses)
                                              {
                                                v552 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
                                                v553 = CFDictionaryGetValue(sKnownEmailAdresses, v519);
                                                os_unfair_lock_unlock(&sSIMeEmailAddressesLock);
                                                if (v553)
                                                {
                                                  CFArrayAppendValue(v552, v553);
                                                }

                                                if (v552)
                                                {
                                                  v554 = CFGetTypeID(v552);
                                                  if (v554 == CFArrayGetTypeID())
                                                  {
                                                    if (CFArrayGetCount(v552))
                                                    {
                                                      v555 = CFDateGetTypeID();
                                                      if (v555 == CFGetTypeID(v636))
                                                      {
                                                        if (dword_1EBF46ADC >= 5)
                                                        {
                                                          v601 = *__error();
                                                          v602 = _SILogForLogForCategory(4);
                                                          if (os_log_type_enabled(v602, OS_LOG_TYPE_DEFAULT))
                                                          {
                                                            LODWORD(v743[0]) = 138412290;
                                                            *(v743 + 4) = v552;
                                                            _os_log_impl(&dword_1C278D000, v602, OS_LOG_TYPE_DEFAULT, "~~~ !authorIsMe, authorContacts: %@", v743, 0xCu);
                                                          }

                                                          *__error() = v601;
                                                        }

                                                        updatedRelatedPersons(v696, v552, 0, v636, v658);
                                                      }
                                                    }
                                                  }
                                                }

                                                CFRelease(v552);
                                                goto LABEL_867;
                                              }

LABEL_866:
                                              os_unfair_lock_unlock(&sSIMeEmailAddressesLock);
LABEL_867:
                                              v440 = v505;
                                              goto LABEL_729;
                                            }
                                          }

                                          v550 = sSIMeEmailAddresses;
                                          v551 = CFArrayGetValueAtIndex(v522, 0);
                                          v541 = CFSetContainsValue(v550, v551);
                                          goto LABEL_855;
                                        }

                                        v629 = v467;
                                        v640 = v456;
                                        v643 = v452;
                                        *v731 = 0;
                                        *&v731[8] = v731;
                                        *&v731[16] = 0x2000000000;
                                        v468 = *MEMORY[0x1E695E480];
                                        *&v731[24] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
                                        initCountsArray_block_invoke(&__block_literal_global_634, *(*&v731[8] + 24), 1);
                                        *v733 = 0;
                                        *&v733[8] = v733;
                                        *&v733[16] = 0x2000000000;
                                        *&v733[24] = 0;
                                        v709[0] = 0;
                                        v709[1] = v709;
                                        v709[2] = 0x2000000000;
                                        v710 = 0;
                                        os_unfair_lock_lock(&sContactCountsLock);
                                        v469 = sKnownContactCounts;
                                        if (!sKnownContactCounts)
                                        {
                                          v469 = CFDictionaryCreateMutable(v468, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                          sKnownContactCounts = v469;
                                        }

                                        v470 = CFDictionaryGetValue(v469, v628);
                                        v471 = v470;
                                        v619 = v468;
                                        if (v470 && (v472 = CFGetTypeID(v470), v472 == CFArrayGetTypeID()))
                                        {
                                          v473 = CFArrayGetCount(v471);
                                          v729 = 0;
                                          if (v473 >= 1)
                                          {
                                            v474 = CFArrayGetValueAtIndex(v471, 0);
                                            CFNumberGetValue(v474, kCFNumberSInt64Type, &v729);
                                            v475 = 1;
                                            v476 = v729;
LABEL_715:
                                            v611 = 0;
                                            v707[0] = 0;
                                            v707[1] = v707;
                                            v707[2] = 0x2000000000;
                                            v708 = 1;
                                            v697[0] = MEMORY[0x1E69E9820];
                                            v697[1] = 0x40000000;
                                            v698 = __processOneCS_block_invoke_1444;
                                            v699 = &unk_1E8192108;
                                            v700 = v733;
                                            v701 = v709;
                                            v706 = v475;
                                            v702 = v731;
                                            v703 = v707;
                                            v704 = v476;
                                            v705 = v471;
                                            v609 = safeCFStringCopy(v628);
                                            v614 = v609;
                                            v477 = v643;
                                            v698(v697, v634, v643);
                                            v698(v697, v633, v642);
                                            v698(v697, v626, v640);
                                            v698(v697, v625, v639);
                                            v698(v697, v624, v638);
                                            v698(v697, v448, v637);
                                            v698(v697, v449, v635);
                                            v698(v697, v450, v632);
                                            v698(v697, v463, v630);
                                            v698(v697, v465, v629);
                                            v478 = CFNumberCreate(v619, kCFNumberSInt64Type, (*&v733[8] + 24));
                                            CFArraySetValueAtIndex(*(*&v731[8] + 24), v611, v478);
                                            CFRelease(v478);
                                            CFDictionarySetValue(sKnownContactCounts, v609, *(*&v731[8] + 24));
                                            os_unfair_lock_unlock(&sContactCountsLock);
                                            if (((v477 | 4) != 4 || (v642 | 4) != 4 || (v640 | 4) != 4 || (v639 | 4) != 4 || (v638 | 4) != 4 || (v637 | 4) != 4 || (v635 | 4) != 4 || (v632 | 4) != 4 || (v630 | 4) != 4 || (v629 | 4) != 4) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
                                            {
                                              CStringPtr = CFStringGetCStringPtr(v628, 0x8000100u);
                                              LODWORD(v743[0]) = 136317698;
                                              *(v743 + 4) = CStringPtr;
                                              WORD6(v743[0]) = 2048;
                                              *(v743 + 14) = v477;
                                              WORD3(v743[1]) = 2048;
                                              *(&v743[1] + 1) = v642;
                                              LOWORD(v743[2]) = 2048;
                                              *(&v743[2] + 2) = v640;
                                              WORD5(v743[2]) = 2048;
                                              *(&v743[2] + 12) = v639;
                                              WORD2(v743[3]) = 2048;
                                              *(&v743[3] + 6) = v638;
                                              HIWORD(v743[3]) = 2048;
                                              *&v743[4] = v637;
                                              WORD4(v743[4]) = 2048;
                                              *(&v743[4] + 10) = v635;
                                              WORD1(v743[5]) = 2048;
                                              *(&v743[5] + 4) = v632;
                                              WORD6(v743[5]) = 2048;
                                              *(&v743[5] + 14) = v630;
                                              WORD3(v743[6]) = 2048;
                                              *(&v743[6] + 1) = v629;
                                              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "incoming or outgoing counts size mismatch: identifier=%s incomingArraySize=%lld outgoingArraySize=%lld incomingMailArraySize=%lld outgoingMailArraySize=%lld incomingSMSArraySize=%lld outgoingSMSArraySize=%lld incomingCalendarArraySize=%lld outgoingCalendarArraySize=%lld incomingFileProviderArraySize=%lld outgoingFileProviderArraySize=%lld", v743, 0x70u);
                                            }

                                            CFRelease(v614);
                                            CFRelease(*(*&v731[8] + 24));
                                            _Block_object_dispose(v707, 8);
                                            _Block_object_dispose(v709, 8);
                                            _Block_object_dispose(v733, 8);
                                            _Block_object_dispose(v731, 8);
                                            v440 = v661;
                                            goto LABEL_728;
                                          }

                                          v476 = 0;
                                        }

                                        else
                                        {
                                          v476 = 0;
                                          v729 = 0;
                                        }

                                        v475 = 0;
                                        goto LABEL_715;
                                      }

                                      if (CFStringCompare(v691, @"com.apple.mobilemail", 0))
                                      {
                                        v426 = CFStringCompare(v414, @"com.apple.searchstressattr", 0);
                                        v415 = v414;
                                        if (v426)
                                        {
                                          goto LABEL_626;
                                        }

                                        v427 = v720;
                                        v428 = @"_kMDItemStateInfo_com.apple.searchstressattr.state.test";
                                      }

                                      else
                                      {
                                        v427 = v720;
                                        v428 = @"_kMDItemStateInfo_com.apple.mobilemail.contentIndex";
                                      }

                                      v430 = CFDictionaryGetValue(v427, v428);
                                      v431 = v430;
                                      v414 = v691;
                                      v415 = v691;
                                      if (v430)
                                      {
                                        v432 = CFGetTypeID(v430);
                                        v433 = CFDataGetTypeID();
                                        v415 = v414;
                                        if (v432 == v433)
                                        {
                                          v434 = CFDataGetLength(v431);
                                          BytePtr = CFDataGetBytePtr(v431);
                                          v415 = v414;
                                          if (v434)
                                          {
                                            v415 = v414;
                                            if (BytePtr)
                                            {
                                              v436 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], BytePtr, v434, 0x8000100u, 0);
                                              v415 = v414;
                                              if (v436)
                                              {
                                                v437 = v436;
                                                v438 = CFStringCreateWithFormat(0, 0, @"%@ %@", v414, v436);
                                                if (v438)
                                                {
                                                  v439 = v438;
                                                }

                                                else
                                                {
                                                  v439 = v414;
                                                }

                                                CFRelease(v437);
                                                v415 = v439;
                                              }
                                            }
                                          }
                                        }
                                      }

                                      goto LABEL_626;
                                    }

                                    v396 = v395;
                                    v390 = CFStringCreateWithFormat(v394, 0, @"%@%@", v395, v183);
                                    CFRelease(v396);
                                  }

                                  v389 = v390;
                                  goto LABEL_576;
                                }

                                v566 = __si_assert_copy_extra_661(-1);
                                v561 = v566;
                                v567 = "";
                                if (v566)
                                {
                                  v567 = v566;
                                }

                                *v605 = "ContentIndexWritable(content_index)";
                                v606 = v567;
                                v563 = 31374;
LABEL_887:
                                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", v563, *v605, v606);
                                free(v561);
                                if (__valid_fs(-1))
                                {
                                  v568 = 2989;
                                }

                                else
                                {
                                  v568 = 3072;
                                }

                                *v568 = -559038737;
                                abort();
                              }

LABEL_536:
                              v370 = *__error();
                              v371 = _SILogForLogForCategory(0);
                              if (os_log_type_enabled(v371, OS_LOG_TYPE_ERROR))
                              {
                                *v731 = 136316930;
                                *&v731[4] = "processOneCS";
                                *&v731[12] = 1024;
                                *&v731[14] = 31517;
                                *&v731[18] = 2112;
                                *&v731[20] = v29;
                                *&v731[28] = 2112;
                                *&v731[30] = v691;
                                *&v731[38] = 2048;
                                *&v731[40] = v725;
                                *&v731[48] = 1024;
                                *&v731[50] = v319;
                                *&v731[54] = 2048;
                                *v732 = v709[0];
                                *&v732[8] = 2048;
                                *&v732[10] = v709[0];
                                _os_log_error_impl(&dword_1C278D000, v371, OS_LOG_TYPE_ERROR, "%s:%d: No write back for bundleId:%@, identifier:%@ serial:%lld, options:0x%x, oid:0x%lld(%lld)", v731, 0x4Au);
                              }

                              *__error() = v370;
                              v372 = v696;
                              v373 = v692;
                              v374 = v676;
                              v375 = v663;
                              goto LABEL_539;
                            }

                            v618 = &v607;
                            v649 = v350;
                            v358 = db_get_field(v356, v707[0], v355, &v729, v733);
                            if (v358)
                            {
                              v657 = v319;
                              v678 = v183;
                              v359 = *__error();
                              v360 = _SILogForLogForCategory(4);
                              v361 = 2 * (dword_1EBF46ADC < 4);
                              if (os_log_type_enabled(v360, v361))
                              {
                                *v731 = 0;
                                _os_log_impl(&dword_1C278D000, v360, v361, "db didn't find any existing values", v731, 2u);
                              }

                              *__error() = v359;
                              v362 = 0;
                              v183 = v678;
                              v319 = v657;
                            }

                            else
                            {
                              v362 = *(v729 + 8);
                            }

                            v363 = v617;
                            LODWORD(v728) = 0;
                            if (markItemAsRenderedOrEngaged(v604, *v733, v362, &v728, v358 == 0, v354))
                            {
                              v365 = db_add_field(v680, v707, 1u, v355, 0, 0, 14, v604, v364, v728);
                              v350 = v649;
                              if (!v365)
                              {
                                goto LABEL_540;
                              }

                              v366 = *__error();
                              v367 = _SILogForLogForCategory(4);
                              if (!os_log_type_enabled(v367, OS_LOG_TYPE_ERROR))
                              {
LABEL_535:
                                *__error() = v366;
                                if (v363)
                                {
                                  goto LABEL_540;
                                }

                                goto LABEL_536;
                              }

                              *v731 = 136315394;
                              *&v731[4] = "processOneCS";
                              *&v731[12] = 1024;
                              *&v731[14] = 31364;
                              v368 = "%s:%d: db get field failed in counts code";
                            }

                            else
                            {
                              v366 = *__error();
                              v367 = _SILogForLogForCategory(4);
                              v369 = os_log_type_enabled(v367, OS_LOG_TYPE_ERROR);
                              v350 = v649;
                              if (!v369)
                              {
                                goto LABEL_535;
                              }

                              *v731 = 136315394;
                              *&v731[4] = "processOneCS";
                              *&v731[12] = 1024;
                              *&v731[14] = 31356;
                              v368 = "%s:%d: marking item as rendered/engaged failed";
                            }

                            _os_log_error_impl(&dword_1C278D000, v367, OS_LOG_TYPE_ERROR, v368, v731, 0x12u);
                            goto LABEL_535;
                          }

                          v276 = 1;
                          v281 = 0;
LABEL_436:
                          v279 = 0;
                          goto LABEL_437;
                        }
                      }

                      v248 = v247;
                      *v731 = 0;
                      v249 = CFGetTypeID(v247);
                      if (v249 == CFNumberGetTypeID())
                      {
                        v250 = v248;
                      }

                      else
                      {
                        v251 = CFGetTypeID(v248);
                        if (v251 != CFArrayGetTypeID())
                        {
LABEL_381:
                          *&v743[2] = *MEMORY[0x1E695E4D0];
                          *(&v743[1] + 1) = *v731;
                          goto LABEL_382;
                        }

                        if (CFArrayGetCount(v248))
                        {
                          v250 = CFArrayGetValueAtIndex(v248, 0);
                        }

                        else
                        {
                          v250 = v248;
                        }
                      }

                      CFNumberGetValue(v250, kCFNumberCFIndexType, v731);
                      goto LABEL_381;
                    }

                    *(v243 + 10113) = 1;
                    v245 = @"kSPHasText";
                  }

                  SISetProperty(v243, v245, *MEMORY[0x1E695E4D0]);
                  goto LABEL_367;
                }

                v244 = DWORD2(v743[2]) | 0x80000;
              }

              DWORD2(v743[2]) = v244;
              goto LABEL_357;
            }

            if (dword_1EBF46ADC < 5)
            {
              goto LABEL_248;
            }

            v194 = *__error();
            v195 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v743[0]) = 138412546;
              *(v743 + 4) = v29;
              WORD6(v743[0]) = 2112;
              *(v743 + 14) = v691;
              _os_log_impl(&dword_1C278D000, v195, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#processOneCS Index update bundleID:%@ identifier:%@", v743, 0x16u);
            }

            *__error() = v194;
LABEL_277:
            v56 = v696;
            goto LABEL_248;
          }

          if (isAppleInternalInstall_onceToken != -1)
          {
            dispatch_once(&isAppleInternalInstall_onceToken, &__block_literal_global_2134);
          }

          if (isAppleInternalInstall_isInternalInstall == 1)
          {
            v189 = *__error();
            v190 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v743[0]) = 138412546;
              *(v743 + 4) = v29;
              WORD6(v743[0]) = 2112;
              *(v743 + 14) = v691;
              _os_log_impl(&dword_1C278D000, v190, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#processOneCS Index Add bundleID:%@ identifier:%@", v743, 0x16u);
            }
          }

          else
          {
            if (dword_1EBF46ADC < 5)
            {
              goto LABEL_245;
            }

            v189 = *__error();
            v564 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v564, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v743[0]) = 138412546;
              *(v743 + 4) = v29;
              WORD6(v743[0]) = 2112;
              *(v743 + 14) = v691;
              _os_log_impl(&dword_1C278D000, v564, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#processOneCS Index Add bundleID:%@ identifier:%@", v743, 0x16u);
            }

            v56 = v696;
          }

          *__error() = v189;
LABEL_245:
          if (v107 && CFDictionaryGetValue(v107, @"kMDItemSupportFileType"))
          {
            goto LABEL_248;
          }

          if (CFDictionaryGetValue(v107, @"kMDItemKind"))
          {
            goto LABEL_248;
          }

          v205 = CFDictionaryGetValue(v107, @"kMDItemContentType");
          if (!v205)
          {
            goto LABEL_248;
          }

          v206 = v205;
          if (CFGetTypeID(v205) != TypeID || !CFStringGetLength(v206) || CFStringCompare(v206, @"public.item", 1uLL) == kCFCompareEqualTo || CFStringHasPrefix(v206, @"dyn"))
          {
            goto LABEL_248;
          }

          v207 = CopyUTITypeDescriptionDictionary(v56, v206);
          if (v207)
          {
            v208 = v207;
          }

          else
          {
            v208 = *MEMORY[0x1E695E738];
          }

          v209 = CFDictionaryGetTypeID();
          if (v209 == CFGetTypeID(v208))
          {
            CFDictionarySetValue(v107, @"kMDItemKind", v208);
          }

          CFRelease(v208);
          goto LABEL_277;
        }

        if (v670)
        {
          v186 = 1;
          v187 = 0;
          v106 = 0;
          v188 = v694;
LABEL_742:
          v484 = v187;
          v485 = threadData[9 * v714 + 1] + 320 * v713;
          *(v485 + 312) = v693;
          v486 = *(v485 + 232);
          if (v486)
          {
            v486(*(v485 + 288));
          }

          dropThreadId(v714, 0, v188 + 1);
          if (v484)
          {
            v487 = v186;
          }

          else
          {
            v487 = 1;
          }

          if ((v487 & 1) == 0)
          {
            v488 = si_getLiveIndex(*(v56 + 1384));
            _CIUpdateContent(v488, 0, 0, 0, 0, 0, 0, 0, 0.0, 0, 0, 0, 0, 0, (*(v56 + 6584) >> 25) & 3, lowDiskSpaceCallback, v56, 0, 0, *(v56 + 2464), v690, 0);
          }

          goto LABEL_749;
        }

        v188 = v694;
        if (isAppleInternalInstall_onceToken != -1)
        {
          dispatch_once(&isAppleInternalInstall_onceToken, &__block_literal_global_2134);
          v182 = v662;
        }

        v191 = v182;
        if (isAppleInternalInstall_isInternalInstall == 1)
        {
          v192 = *__error();
          v193 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v743[0]) = 138412546;
            *(v743 + 4) = v29;
            WORD6(v743[0]) = 2112;
            *(v743 + 14) = v691;
            _os_log_impl(&dword_1C278D000, v193, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#processOneCS Deleting item, bundleID:%@ identifier:%@", v743, 0x16u);
          }
        }

        else
        {
          if (dword_1EBF46ADC < 5)
          {
            goto LABEL_263;
          }

          v192 = *__error();
          v565 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v565, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v743[0]) = 138412546;
            *(v743 + 4) = v29;
            WORD6(v743[0]) = 2112;
            *(v743 + 14) = v691;
            _os_log_impl(&dword_1C278D000, v565, OS_LOG_TYPE_DEFAULT, "SpotlightIndex#processOneCS Deleting item, bundleID:%@ identifier:%@", v743, 0x16u);
          }

          v56 = v696;
          v188 = v694;
        }

        *__error() = v192;
LABEL_263:
        *&v743[0] = 0;
        if (!si_get_object_for_identifier_createParentDBO(v56, v29, v691, 0, 0, v743, 0, 0))
        {
          _si_delete_attributes_inner(v56, *&v743[0], (v692 >> 4) & 1, 0, v690, 0, v191);
          si_finish_text_store_deletions(v56);
        }

        v186 = 1;
        v187 = 0;
        goto LABEL_741;
      }

      v137 = *__error();
      v138 = _SILogForLogForCategory(4);
      v139 = dword_1EBF46ADC < 3;
      if (os_log_type_enabled(v138, (dword_1EBF46ADC < 3)))
      {
        LODWORD(v743[0]) = 138412802;
        *(v743 + 4) = v691;
        WORD6(v743[0]) = 2112;
        *(v743 + 14) = v29;
        WORD3(v743[1]) = 1024;
        DWORD2(v743[1]) = v126;
        _os_log_impl(&dword_1C278D000, v138, v139, "*warn* Failed to fetch the dbo for identifier:%@, bundleID:%@, rc:%d", v743, 0x1Cu);
      }

      *__error() = v137;
LABEL_149:
      v128 = v692;
      v127 = 0;
      goto LABEL_207;
    }

    *v731 = 0;
    v133 = db_get_field(*v73, v726, "kMDItemRelatedUniqueIdentifier", v731, 0);
    if (v133)
    {
      v135 = v133;
      if (v133 == 2)
      {
        v136 = 0;
        goto LABEL_178;
      }

      v154 = *__error();
      v158 = _SILogForLogForCategory(4);
      v159 = dword_1EBF46ADC < 3;
      if (os_log_type_enabled(v158, (dword_1EBF46ADC < 3)))
      {
        LODWORD(v743[0]) = 136315906;
        *(v743 + 4) = "kMDItemRelatedUniqueIdentifier";
        WORD6(v743[0]) = 2112;
        *(v743 + 14) = v691;
        WORD3(v743[1]) = 2112;
        *(&v743[1] + 1) = v29;
        LOWORD(v743[2]) = 1024;
        *(&v743[2] + 2) = v135;
        _os_log_impl(&dword_1C278D000, v158, v159, "*warn* Failed to find the db field %s for identifier:%@, bundleID:%@, rc:%d", v743, 0x26u);
      }

      v157 = __error();
      v136 = 0;
    }

    else
    {
      v147 = *MEMORY[0x1E695E480];
      v136 = 0;
      v148 = _decodeSDBField(*v73, *v731, (*v731 + 13), 0, 0, 0, 0, *MEMORY[0x1E695E480], v134);
      if (!v148)
      {
        goto LABEL_178;
      }

      v136 = v148;
      v149 = CFGetTypeID(v148);
      if (v149 != CFStringGetTypeID())
      {
        goto LABEL_178;
      }

      if (db_get_field(*v73, v726, "_kMDItemRelatedBundleID", v731, 0))
      {
        v151 = 0;
      }

      else
      {
        v286 = v147;
        v151 = 0;
        v287 = _decodeSDBField(*v73, *v731, (*v731 + 13), 0, 0, 0, 0, v286, v150);
        if (v287)
        {
          v151 = v287;
          v288 = CFGetTypeID(v287);
          if (v288 != CFStringGetTypeID())
          {
            CFRelease(v151);
            v151 = 0;
          }
        }
      }

      free(v726);
      v726 = 0;
      v727 = 0;
      v152 = si_get_object_for_identifier_createParentDBO(v56, v29, v136, 0, 0, &v727, &v726, 0);
      if (!v152)
      {
        if (dword_1EBF46ADC >= 5)
        {
          v594 = *__error();
          v595 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v595, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v743[0]) = 138413058;
            *(v743 + 4) = v136;
            WORD6(v743[0]) = 2112;
            *(v743 + 14) = v29;
            WORD3(v743[1]) = 2112;
            *(&v743[1] + 1) = v691;
            LOWORD(v743[2]) = 2048;
            *(&v743[2] + 2) = v727;
            _os_log_impl(&dword_1C278D000, v595, OS_LOG_TYPE_DEFAULT, "Found the dbo for relatedIdentifier: %@, bundleID: %@, identifier: %@, oid: %lld", v743, 0x2Au);
          }

          *__error() = v594;
          v56 = v696;
          v124 = v691;
        }

        si_removeRelatedItem(v56, &v726, v29, v124, v151, v136);
        if (v151)
        {
          CFRelease(v151);
        }

        goto LABEL_178;
      }

      v153 = v152;
      if (v152 == 2)
      {
LABEL_178:
        v160 = v692;
        v161 = v136;
        v162 = 0;
LABEL_204:
        if (v161)
        {
          CFRelease(v161);
        }

        v128 = v160;
        v127 = v162;
        goto LABEL_207;
      }

      v154 = *__error();
      v155 = _SILogForLogForCategory(4);
      v156 = dword_1EBF46ADC < 3;
      if (os_log_type_enabled(v155, (dword_1EBF46ADC < 3)))
      {
        LODWORD(v743[0]) = 138412802;
        *(v743 + 4) = v136;
        WORD6(v743[0]) = 2112;
        *(v743 + 14) = v29;
        WORD3(v743[1]) = 1024;
        DWORD2(v743[1]) = v153;
        _os_log_impl(&dword_1C278D000, v155, v156, "*warn* Failed to fetch the dbo for relatedIdentifier:%@, bundleID:%@, rc:%d", v743, 0x1Cu);
      }

      v157 = __error();
    }

    *v157 = v154;
    goto LABEL_178;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v743[0]) = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v743, 2u);
  }

  v105[78] = v103;
  CIOnThreadCleanUpReset(v712);
  dropThreadId(v714, 1, add_explicit + 1);
  CICleanUpReset(v714, HIDWORD(v712));
  v106 = 0;
LABEL_749:
  v489 = v695;
  v490 = *(v56 + 1484);
  atomic_compare_exchange_strong_explicit((v56 + 1484), &v490, 0, memory_order_relaxed, memory_order_relaxed);
  if (v489)
  {
    CFRelease(v489);
  }

  if (v720)
  {
    CFRelease(v720);
  }

  if (v719[0])
  {
    CFRelease(v719[0]);
  }

  if (v717)
  {
    free(v717);
  }

  _si_set_error_str(0, 1);
  _Block_object_dispose(&v721, 8);
  return v106;
}