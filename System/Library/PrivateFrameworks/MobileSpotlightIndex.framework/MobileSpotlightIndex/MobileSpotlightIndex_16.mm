int *encodeCTypeField(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  result = __MDPlistBytesAddObject();
  if (dword_1EBF46AD0 >= 5)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = a1;
      _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "Appended datum: %@", &v6, 0xCu);
    }

    result = __error();
    *result = v4;
  }

  return result;
}

void subiter_fetch_next_page(uint64_t a1, int a2, int a3, char a4)
{
  if (a2 != -1)
  {
    v11 = v4;
    v12 = v5;
    v6 = *(a1 + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __subiter_fetch_next_page_block_invoke;
    block[3] = &__block_descriptor_tmp_219;
    block[4] = a1;
    v8 = a2;
    v9 = a3;
    v10 = a4;
    dispatch_async(v6, block);
  }
}

uint64_t __subiter_fetch_next_page_block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(*(**(a1 + 32) + 4), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v77 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v75 = v5;
  v76 = HIDWORD(v3);
  v74 = v6;
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v73 = v77;
  v72 = v76;
  v71 = v75;
  v70 = v74;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v4 + 312) = v7;
    v9 = v70;
    if (__THREAD_SLOT_KEY[0])
    {
      v10 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v10)
      {
        goto LABEL_48;
      }
    }

    else
    {
      makeThreadId();
      v10 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v10)
      {
        goto LABEL_48;
      }
    }

    v11 = v10;
    if (v10 < 0x801)
    {
LABEL_9:
      v12 = &threadData[9 * v11];
      v14 = *(v12 - 4);
      v13 = (v12 - 2);
      if (v14 > v9)
      {
        v15 = v11 - 1;
        do
        {
          CIOnThreadCleanUpPop(v15);
        }

        while (*v13 > v9);
      }

      dropThreadId(v73, 1, add_explicit + 1);
      return CICleanUpReset(v73, v71);
    }

LABEL_48:
    makeThreadId();
    v11 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    goto LABEL_9;
  }

  v17 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v18 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(**(a1 + 32) + 24), 0x40000000, v17 + 1);
  v69 = v18;
  v67 = v19;
  v68 = HIDWORD(v18);
  v66 = v20;
  v21 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
  *(v21 + 216) = 0;
  v22 = *(v21 + 312);
  v23 = *(v21 + 224);
  if (v23)
  {
    v23(*(v21 + 288));
  }

  v65 = v69;
  v64 = v68;
  v63 = v67;
  v62 = v66;
  if (!_setjmp(v21))
  {
    v32 = *(a1 + 32);
    v33 = *(v32 + 32);
    if (v33)
    {
      v34 = *(v32 + 44);
      if (v34 == *(a1 + 40))
      {
        goto LABEL_41;
      }

      page_release(*(*v32 + 24), v33, v34, 0x18u, 0);
      *(v32 + 44) = -1;
      *(v32 + 32) = 0;
      if (*(*(a1 + 32) + 32))
      {
        v48 = __si_assert_copy_extra_3233(0, -1);
        v49 = v48;
        v50 = "";
        if (v48)
        {
          v50 = v48;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 12548, "iter->next_dbp == 0", v50);
        free(v49);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }

    *buf = 0;
    v60 = 0;
    MEMORY[0x1EEE9AC00](v24);
    v36 = &v59[-v35];
    bzero(&v59[-v35], v35);
    v37 = *(a1 + 32);
    *(v37 + 192) = v36;
    subiter_attempt_prefetch(v37, *(a1 + 40), *(a1 + 44));
    v38 = **(a1 + 32);
    if (*(v38 + 77))
    {
      v39 = 57;
    }

    else
    {
      v39 = 25;
    }

    if (*(a1 + 48))
    {
      v40 = 0x2000;
    }

    else
    {
      v40 = 0;
    }

    if (!_page_fetch_with_fd(*(v38 + 24), buf, *(a1 + 40), *(a1 + 44) << 12, v40 | v39, &v60, *(v38 + 4), (v37 + 120)))
    {
      v41 = *buf;
      if (*buf)
      {
        v42 = *(*buf + 12);
        if ((v42 & 8) != 0)
        {
          v51 = __si_assert_copy_extra_3233(0, -1);
          v52 = v51;
          v53 = "";
          if (v51)
          {
            v53 = v51;
          }

          __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: page came back compressed! pgnum 0x%x\n", "sdb2.c", 12567, "(dbp->flags & 0x00000008)==0", v53, *(a1 + 40));
          free(v52);
          v54 = -1;
        }

        else
        {
          if ((v42 & 0xF0) == 0)
          {
            v43 = *(a1 + 32);
            if (v60)
            {
              ++*(v43 + 104);
            }

            *(v43 + 44) = *(a1 + 40);
            *(v43 + 32) = v41;
            goto LABEL_41;
          }

          v55 = __si_assert_copy_extra_3233(0, *(**(a1 + 32) + 4));
          v56 = v55;
          v57 = "";
          if (v55)
          {
            v57 = v55;
          }

          __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: tried to read attr name table data! pgnum 0x%x, flags 0x%x\n", "sdb2.c", 12570, "(dbp->flags & 0x000000f0)==0", v57, *(a1 + 40), *(*buf + 12));
          free(v56);
          v54 = *(**(a1 + 32) + 4);
        }

        if (__valid_fs(v54))
        {
          v58 = 2989;
        }

        else
        {
          v58 = 3072;
        }

        *v58 = -559038737;
        abort();
      }
    }

LABEL_41:
    v44 = threadData[9 * v65 + 1] + 320 * v64;
    *(v44 + 312) = v22;
    v45 = *(v44 + 232);
    if (v45)
    {
      v45(*(v44 + 288));
    }

    dropThreadId(v65, 0, v17 + 1);
    goto LABEL_44;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v21 + 312) = v22;
  v25 = v62;
  if (__THREAD_SLOT_KEY[0])
  {
    v26 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v26)
    {
LABEL_50:
      makeThreadId();
      v27 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_21;
    }
  }

  else
  {
    makeThreadId();
    v26 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v26)
    {
      goto LABEL_50;
    }
  }

  v27 = v26;
  if (v26 >= 0x801)
  {
    goto LABEL_50;
  }

LABEL_21:
  v28 = &threadData[9 * v27];
  v30 = *(v28 - 4);
  v29 = (v28 - 2);
  if (v30 > v25)
  {
    v31 = v27 - 1;
    do
    {
      CIOnThreadCleanUpPop(v31);
    }

    while (*v29 > v25);
  }

  dropThreadId(v65, 1, v17 + 1);
  CICleanUpReset(v65, v63);
LABEL_44:
  v46 = threadData[9 * v73 + 1] + 320 * v72;
  *(v46 + 312) = v7;
  v47 = *(v46 + 232);
  if (v47)
  {
    v47(*(v46 + 288));
  }

  return dropThreadId(v73, 0, add_explicit + 1);
}

void collectAttributesFromDBO(uint64_t a1, void *a2, uint64_t a3, PartialQueryResults *this, char **a5)
{
  v9 = *(a1 + 1192);
  v10 = PartialQueryResults::attributeIdVector(this, v9);
  v11 = *(this + 29);
  if (*this == 1)
  {
    if (v11 && !*(this + 23))
    {
      v12 = *(this + 13);
      if (!v12)
      {
        v13 = *(this + 16);
        if (v13)
        {
          v46 = 0;
          SIFlattenArrayToCStringVector(v13, this + 13, &v46, &v45);
          v12 = *(this + 13);
        }

        else
        {
          v12 = 0;
        }
      }

      PartialQueryResults::setupCannedCollectAttributeVector(this, v12, this + 23, &v46);
    }

    v27 = 184;
  }

  else
  {
    if (v11 && !*(this + 22))
    {
      v14 = *(this + 12);
      if (!v14)
      {
        v15 = *(this + 15);
        if (v15)
        {
          SIFlattenArrayToCStringVector(v15, this + 12, this + 30, this + 29);
          v14 = *(this + 12);
          if (!v14)
          {
            v16 = __si_assert_copy_extra_332();
            v24 = v16;
            v25 = "";
            if (v16)
            {
              v25 = v16;
            }

            __message_assert_336(v16, v17, v18, v19, v20, v21, v22, v23, "SISearchCtx.h", 998, "fAttributeVector", v25);
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
        }

        else
        {
          v14 = 0;
        }
      }

      PartialQueryResults::setupCannedCollectAttributeVector(this, v14, this + 22, this + 2);
    }

    v27 = 176;
  }

  if (a3 >= 1)
  {
    v28 = 0;
    v44 = *(this + v27);
    v42 = v10;
    do
    {
      v45 = 0;
      v46 = 0;
      if (a2)
      {
        if (db_get_field_by_id(v9, a2, *(v10 + 8 * v28), &v46, &v45))
        {
          v30 = *(v44 + 8 * v28);
          if (v30)
          {
            Value = CFDictionaryGetValue(*(this + 14), *(v44 + 8 * v28));
            if (!Value)
            {
              Value = CFSetCreateMutable(kCIQueryZoneAllocator, 0, MEMORY[0x1E695E9F8]);
              CFDictionarySetValue(*(this + 14), v30, Value);
              CFRelease(Value);
            }

            (v30)(a1, *a2, a2, Value, a5);
          }
        }

        else
        {
          v32 = _decodeSDBField(v9, v46, v45, a5, 0, 0, 1, kCIQueryZoneAllocator, v29);
          v33 = *(v10 + 8 * v28);
          if (v33)
          {
            v34 = *v33;
          }

          else
          {
            v34 = 4294967294;
          }

          v35 = a5;
          Mutable = CFDictionaryGetValue(*(this + 14), v34);
          if (!Mutable)
          {
            Mutable = CFSetCreateMutable(kCIQueryZoneAllocator, 0, MEMORY[0x1E695E9F8]);
            CFDictionarySetValue(*(this + 14), v34, Mutable);
            CFRelease(Mutable);
          }

          v37 = CFGetTypeID(v32);
          if (v37 == CFArrayGetTypeID())
          {
            Count = CFArrayGetCount(v32);
            if (Count >= 1)
            {
              v39 = Count;
              for (i = 0; i != v39; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v32, i);
                CFSetAddValue(Mutable, ValueAtIndex);
              }
            }
          }

          else
          {
            CFSetAddValue(Mutable, v32);
          }

          CFRelease(v32);
          a5 = v35;
          v10 = v42;
        }
      }

      ++v28;
    }

    while (v28 != a3);
  }
}

uint64_t db_fieldMatchCompare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*a2 != 11)
  {
    goto LABEL_23;
  }

  v8 = 0uLL;
  if ((*(a2 + 2) & 0x10) != 0 && !*(a3 + 112))
  {
    v9 = malloc_type_zone_malloc(queryZone, 0x180uLL, 0xA4971684uLL);
    if (!v9)
    {
      v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
      v9 = 0;
      if (v10)
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
        v9 = 0;
      }
    }

    v11 = 0;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    *(v9 + 6) = 0;
    v9[4] = 0;
    v9[5] = 0;
    *(v9 + 12) = 0;
    v9[7] = 0;
    v9[8] = 0;
    *(v9 + 18) = 0;
    v9[10] = 0;
    v9[11] = 0;
    *(v9 + 24) = 0;
    v9[13] = 0;
    v9[14] = 0;
    *(v9 + 30) = 0;
    *(v9 + 36) = 0;
    v9[16] = 0;
    v9[17] = 0;
    v9[19] = 0;
    v9[20] = 0;
    *(v9 + 42) = 0;
    *(v9 + 48) = 0;
    v9[22] = 0;
    v9[23] = 0;
    *(v9 + 54) = 0;
    v9[25] = 0;
    v9[26] = 0;
    *(v9 + 60) = 0;
    v9[28] = 0;
    v9[29] = 0;
    *(v9 + 66) = 0;
    v9[31] = 0;
    v9[32] = 0;
    *(v9 + 72) = 0;
    v9[34] = 0;
    v9[35] = 0;
    v9[37] = 0;
    v9[38] = 0;
    *(v9 + 78) = 0;
    v9[40] = 0;
    v9[41] = 0;
    *(v9 + 84) = 0;
    v9[43] = 0;
    v9[44] = 0;
    *(v9 + 90) = 0;
    v9[46] = 0;
    v9[47] = 0;
    atomic_compare_exchange_strong_explicit((a3 + 112), &v11, v9, memory_order_relaxed, memory_order_relaxed);
    if (v11)
    {
      qp_string_id_cache_free(v9);
    }
  }

  if (!*(a3 + 104))
  {
    v12 = *(a3 + 40);
    if (((v12 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && 8 * v12 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal_15332;
    }

    v13 = malloc_type_zone_calloc(queryZone, 8uLL, v12, 0x5BAF1CEAuLL);
    if (!v13)
    {
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
      v13 = 0;
      if (v14)
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
        v13 = 0;
      }
    }

    v15 = 0;
    atomic_compare_exchange_strong_explicit((a3 + 104), &v15, v13, memory_order_relaxed, memory_order_relaxed);
    if (v15)
    {
      free(v13);
    }
  }

  if (*(a3 + 40) >= 1)
  {
    v16 = 0;
    do
    {
      LODWORD(result) = do_compare(v8);
      if (result >= 1)
      {
        break;
      }

      ++v16;
    }

    while (v16 < *(a3 + 40));
  }

  else
  {
LABEL_23:
    LODWORD(result) = 0;
  }

  if (a6)
  {
    return result == 0;
  }

  else
  {
    return result;
  }
}

uint64_t obj_iter_prefetch_page(uint64_t a1, unsigned int a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  v7 = _SILogForLogForCategory(1);
  v8 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(a1 + 24);
    *buf = 67109632;
    *&buf[4] = a2;
    LOWORD(v22) = 1024;
    *(&v22 + 2) = a3;
    HIWORD(v22) = 2048;
    v23 = v9;
    _os_log_impl(&dword_1C278D000, v7, v8, "Prefetch page %d(%d) for db %p", buf, 0x18u);
  }

  result = __error();
  *result = v6;
  if (a2)
  {
    v11 = *(a1 + 24);
    result = db_cache_contains(*(v11 + 928), a2, 1);
    if ((result & 1) == 0)
    {
      v22 = 0;
      v12 = a2 << *(v11 + 12);
      v20 = 0;
      *buf = v12;
      v22 = (a3 << 12);
      v13 = *(v11 + 848);
      v14 = _fd_acquire_fd(v13, &v20);
      do
      {
        v15 = fcntl(v14, 44, buf);
        v16 = g_prot_error_callback;
        if (v15 != -1 || g_prot_error_callback == 0)
        {
          break;
        }

        v18 = v13[10];
        v19 = __error();
      }

      while (((*(v16 + 16))(v16, v18, *v19, 12) & 1) != 0);
      return _fd_release_fd(v13, v14, 0, v20);
    }
  }

  return result;
}

uint64_t __db2_get_localized_string_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!strcmp((a3 + 2), *(a1 + 48)))
  {
    v6 = *(a1 + 64);
    **(a1 + 56) = a2;
    *v6 = a3;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL BestLanguageDictionaryEqualCallBack(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  if (v2 != *a2)
  {
    return 0;
  }

  v5 = a1[1];
  if (v5 != a2[1])
  {
    return 0;
  }

  if (*a1)
  {
    v6 = *(a1 + 1);
    v7 = *(a2 + 1);
    while (!strcmp(*v6, *v7))
    {
      ++v7;
      ++v6;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 2);
    v11 = *(a2 + 2);
    do
    {
      if (strcmp(*(v10 + 8 * v8), *(v11 + 8 * v8)))
      {
        break;
      }

      v9 = ++v8 >= v5;
    }

    while (v5 != v8);
  }

  else
  {
    return 1;
  }

  return v9;
}

uint64_t __db2_get_localized_string_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 + 2;
  if (!strcmp((a3 + 2), *(a1 + 72)))
  {
    v7 = *(a1 + 88);
    **(a1 + 80) = a2;
    *v7 = a3;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 24);
  if (v9 >= *(*(*(a1 + 56) + 8) + 24))
  {
    v10 = malloc_type_malloc(16 * v9, 0x10040436913F5uLL);
    if (!v10)
    {
      v15 = *(a1 + 32);
      v13 = a1 + 32;
      *(*(v15 + 8) + 24) = 1;
      return *(*(*v13 + 8) + 24);
    }

    v11 = v10;
    memcpy(v10, *(*(*(a1 + 64) + 8) + 24), 8 * *(*(*(a1 + 48) + 8) + 24));
    if (*(*(*(a1 + 56) + 8) + 24) != 128)
    {
      free(*(*(*(a1 + 64) + 8) + 24));
    }

    *(*(*(a1 + 64) + 8) + 24) = v11;
    *(*(*(a1 + 56) + 8) + 24) *= 2;
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 24);
  }

  v12 = *(*(*(a1 + 64) + 8) + 24);
  *(v8 + 24) = v9 + 1;
  *(v12 + 8 * v9) = v6;
  v13 = a1 + 32;
  return *(*(*v13 + 8) + 24);
}

uint64_t db_iterate_localized_field(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 + 13);
  v6 = *(a2 + 8);
  v7 = a2 + 13 + v6;
  if ((*(a2 + 2) & 0x10) == 0)
  {
    if (!v6)
    {
      return result;
    }

    while (1)
    {
      for (i = v5; *i != 22; i = (i + 1))
      {
        if (!*i)
        {
          return result;
        }

LABEL_5:
        ;
      }

      if (*(i + 1) != 2)
      {
        goto LABEL_5;
      }

      result = (*(a4 + 16))(a4, v5, i);
      if ((result & 1) == 0)
      {
        result = strlen(i);
        v5 = (i + result + 1);
        if (v5 < v7)
        {
          continue;
        }
      }

      return result;
    }
  }

  if (v6)
  {
    v9 = a3;
    v10 = result;
    do
    {
      v12 = 255;
      result = get_string_and_length_for_id_15021(v10, 1u, *v5, &v12, v9);
      if (result)
      {
        v11 = v12 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11 && *(result + v12) == 22 && *(result + v12 + 1) == 2)
      {
        result = (*(a4 + 16))(a4, result);
        if (result)
        {
          break;
        }
      }

      ++v5;
    }

    while (v5 < v7);
  }

  return result;
}

BOOL DBFieldCFDictionaryEqualCallBack(char *a1, _DWORD *a2)
{
  if (*a1 == *a2 && (v2 = *(a1 + 2), v2 == a2[2]))
  {
    return memcmp(a1 + 13, a2 + 13, v2) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t DBFieldCFDictionaryHashCallBack(unsigned int *a1)
{
  v1 = a1[2];
  if (v1)
  {
    return *(a1 + 13) | (v1 << 32);
  }

  else
  {
    return 0;
  }
}

uint64_t fd_rename(uint64_t a1, const char *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *v16 = 0;
    v4 = _fd_acquire_fd(a1, v16);
    if (v4 != -1)
    {
      v5 = v4;
      bzero(v25, 0x400uLL);
      v6 = fd_name(a1, v25, 0x400uLL);
      if (v6 && renameat(*(a1 + 44), v6, *(a1 + 44), a2) != -1)
      {
        v7 = strdup(a2);
        os_unfair_lock_lock(&g_name_lock);
        v8 = *(a1 + 72);
        *(a1 + 72) = v7;
        os_unfair_lock_unlock(&g_name_lock);
        free(v8);
        _fd_release_fd(a1, v5, 0, *v16);
        pthread_mutex_lock(&g_fd_lock);
        v9 = *(a1 + 80);
        if (v9)
        {
          *(a1 + 80) = 0;
          pthread_mutex_unlock(&g_fd_lock);
          fd_release(v9);
        }

        else
        {
          pthread_mutex_unlock(&g_fd_lock);
        }

        return 0;
      }

      _fd_release_fd(a1, v5, 0, *v16);
    }
  }

  else
  {
    *__error() = 22;
  }

  bzero(v25, 0x400uLL);
  v10 = *__error();
  v11 = *__error();
  v12 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = fd_realpath(a1, v25);
    *v16 = 136316162;
    *&v16[4] = "fd_rename";
    v15 = "";
    v17 = 1024;
    if (v14)
    {
      v15 = v14;
    }

    v18 = 1098;
    v19 = 2080;
    v20 = v15;
    v21 = 2080;
    v22 = a2;
    v23 = 1024;
    v24 = v10;
    _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: rename(%s, %s) err:%d", v16, 0x2Cu);
  }

  *__error() = v11;
  *__error() = v10;
  return 0xFFFFFFFFLL;
}

void si_routine_messages(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_protectionClassCX(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

uint64_t trie_level_info_hash(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = ((16 * *(a1 + 4)) | (*a1 << 6)) ^ *(a1 + 24) ^ *(a1 + 32);
  if (v1 >= 0)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = v1 + 3;
  }

  v4 = v2 ^ 0x971E137B;
  v5 = (*(a1 + 8) + (v3 & 0xFFFFFFFC));
  if ((v1 + 3) >= 7)
  {
    v8 = -(v3 >> 2);
    v9 = -1789642873;
    v10 = 718793509;
    do
    {
      v9 = 5 * v9 + 2071795100;
      v10 = 5 * v10 + 1808688022;
      HIDWORD(v11) = v9 * *&v5[4 * v8];
      LODWORD(v11) = HIDWORD(v11);
      v12 = (v11 >> 21) * v10;
      HIDWORD(v11) = v4;
      LODWORD(v11) = v4;
      v4 = v12 ^ (5 * (v11 >> 19) + 1390208809);
    }

    while (!__CFADD__(v8++, 1));
    v7 = 5 * v9 + 2071795100;
    v6 = 5 * v10 + 1808688022;
  }

  else
  {
    v6 = 1107688271;
    v7 = 1713515327;
  }

  v14 = 0;
  if ((v1 & 3u) > 1)
  {
    if ((v1 & 3) != 2)
    {
      v14 = v5[2] << 16;
    }

    v14 |= v5[1] << 8;
  }

  else if ((v1 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v15) = (v14 ^ *v5) * v7;
  LODWORD(v15) = HIDWORD(v15);
  v16 = (v15 >> 21) * v6;
  HIDWORD(v15) = v4;
  LODWORD(v15) = v4;
  v4 = v16 ^ (5 * (v15 >> 19) + 1390208809);
LABEL_17:
  v17 = -1028477387 * ((-2048144789 * (v4 ^ v1)) ^ ((-2048144789 * (v4 ^ v1)) >> 13));
  return v2 ^ HIWORD(v17) ^ v17;
}

void trie_resolve_sub_string(uint64_t a1, unint64_t *a2, char *a3, int a4, int *a5)
{
  v5 = a4;
  v8 = *a2;
  v9 = *a2;
  v10 = HIDWORD(v8);
  if (a4 >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 8);
    while (1)
    {
      if (v10 == 3)
      {
        v19 = *(v12[1] + 1028 * v9 + 4 * *(&tcm + a3[v11]) + 4);
        if ((v19 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }

      if (v10 != 1)
      {
        if (v11)
        {
          if (!v10)
          {
            v5 = v11;
            if (v9)
            {
LABEL_35:
              v30 = a2[1];
              v31 = *(a2 + 4);

              findAddFlatBucket(a1, v9, v30, v31, a3, v5);
            }
          }
        }

        return;
      }

      v13 = mgetBase(v12, v9);
      v14 = *(&tcm + a3[v11]);
      v15 = (v13 + 4);
      if (((*(v13 + 4 + ((v14 >> 3) & 0x1C)) >> v14) & 1) == 0)
      {
        return;
      }

      v16 = 0;
      v17 = v14 >> 6;
      if ((v14 >> 6) > 1)
      {
        break;
      }

      v18 = v14 >> 6;
      if (v17)
      {
        goto LABEL_16;
      }

LABEL_17:
      v23 = vcnt_s8((*&v15[v17] & ~(-1 << v14)));
      v23.i16[0] = vaddlv_u8(v23);
      v19 = *(v13 + 38 + 4 * (v23.u32[0] + v18));
      if ((v19 & 1) == 0)
      {
LABEL_11:
        v9 = v19 >> 1;
        if (!(v19 >> 1))
        {
          return;
        }

        v10 = 0;
        goto LABEL_3;
      }

LABEL_18:
      if ((v19 & 3) == 1)
      {
        v9 = v19 >> 2;
        if (!(v19 >> 2))
        {
          return;
        }

        v10 = 1;
      }

      else
      {
        v9 = v19 >> 3;
        if (!(v19 >> 3))
        {
          return;
        }

        v10 = v19 & 7;
      }

LABEL_3:
      if (v5 == ++v11)
      {
        goto LABEL_23;
      }
    }

    if (v17 != 2)
    {
      v20 = vcnt_s8(*(v13 + 20));
      v20.i16[0] = vaddlv_u8(v20);
      v16 = v20.u32[0];
    }

    v21 = vcnt_s8(*(v13 + 12));
    v21.i16[0] = vaddlv_u8(v21);
    v16 += v21.u32[0];
LABEL_16:
    v22 = vcnt_s8(*v15);
    v22.i16[0] = vaddlv_u8(v22);
    v18 = v22.u32[0] + v16;
    goto LABEL_17;
  }

LABEL_23:
  if (v5)
  {
    if (!v10)
    {
      goto LABEL_35;
    }

    v24 = *(a2 + 4) + v5;
    if (v24 <= 4094)
    {
      v25 = v9;
      v26 = malloc_type_zone_malloc(queryZone, v24 + 1, 0xA4971684uLL);
      if (!v26 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      memcpy(v26, a2[1], *(a2 + 4));
      memcpy(&v26[*(a2 + 4)], a3, v5);
      v26[*(a2 + 4) + v5] = 0;
      v27 = a2[3];
      v28 = a2[4];
      v29 = *(a2 + 4) + v5;

      trie_level_list_insert_with_state(a5, v25 | (v10 << 32), v26, v29, v27, v28);
    }
  }
}

uint64_t _real_page_insert_obj(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v84 = *MEMORY[0x1E69E9840];
  v72 = 0;
  value_out = 0;
  v70 = 0;
  v71 = 0;
  v9 = a3 & 0x4000;
  result = _page_fetch_with_fd(a1, &value_out, a4, a5, v9, buf, 0xFFFFFFFFLL, 0);
  if (result)
  {
    return result;
  }

  v11 = *(value_out + 3);
  if ((v11 & 0xF0) != 0)
  {
    v60 = *__error();
    v61 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v75 = "_real_page_insert_obj";
      v76 = 1024;
      v77 = 5069;
      v78 = 1024;
      LODWORD(v79) = a4;
      _os_log_error_impl(&dword_1C278D000, v61, OS_LOG_TYPE_ERROR, "%s:%d: page_insert_obj: ERR: tried to read attr name table data! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v60;
    v62 = __si_assert_copy_extra_3233(0, -1);
    v63 = v62;
    v64 = "";
    if (v62)
    {
      v64 = v62;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5070, v64);
LABEL_142:
    free(v63);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if ((v11 & 8) != 0)
  {
    v65 = *__error();
    v66 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v75 = "_real_page_insert_obj";
      v76 = 1024;
      v77 = 5075;
      v78 = 1024;
      LODWORD(v79) = a4;
      _os_log_error_impl(&dword_1C278D000, v66, OS_LOG_TYPE_ERROR, "%s:%d: page_insert_obj: ERR: page is still compressed! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v65;
    v67 = __si_assert_copy_extra_3233(0, -1);
    v63 = v67;
    v68 = "";
    if (v67)
    {
      v68 = v67;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5076, v68);
    goto LABEL_142;
  }

  v12 = *(a2 + 4);
  if (*(a2 + 4) < 0)
  {
    v14 = *(a2 + 4);
    if (v14 > 0xBF)
    {
      if (v14 > 0xDF)
      {
        if (v14 > 0xEF)
        {
          if (v14 > 0xF7)
          {
            if (v14 > 0xFB)
            {
              if (v14 > 0xFD)
              {
                if (v14 == 255)
                {
                  v12 = *(a2 + 5);
                  v13 = 9;
                }

                else
                {
                  v12 = (*(a2 + 5) << 48) | (*(a2 + 6) << 40) | (*(a2 + 7) << 32) | (*(a2 + 8) << 24) | (*(a2 + 9) << 16) | (*(a2 + 10) << 8) | *(a2 + 11);
                  v13 = 8;
                }
              }

              else
              {
                v12 = ((v12 & 1) << 48) | (*(a2 + 5) << 40) | (*(a2 + 6) << 32) | (*(a2 + 7) << 24) | (*(a2 + 8) << 16) | (*(a2 + 9) << 8) | *(a2 + 10);
                v13 = 7;
              }
            }

            else
            {
              v12 = ((v12 & 3) << 40) | (*(a2 + 5) << 32) | (*(a2 + 6) << 24) | (*(a2 + 7) << 16) | (*(a2 + 8) << 8) | *(a2 + 9);
              v13 = 6;
            }
          }

          else
          {
            v12 = ((v12 & 7) << 32) | (*(a2 + 5) << 24) | (*(a2 + 6) << 16) | (*(a2 + 7) << 8) | *(a2 + 8);
            v13 = 5;
          }
        }

        else
        {
          v12 = ((v12 & 0xF) << 24) | (*(a2 + 5) << 16) | (*(a2 + 6) << 8) | *(a2 + 7);
          v13 = 4;
        }
      }

      else
      {
        v12 = ((v12 & 0x1F) << 16) | (*(a2 + 5) << 8) | *(a2 + 6);
        v13 = 3;
      }
    }

    else
    {
      v13 = 2;
      v12 = *(a2 + 5) | ((v12 & 0x3F) << 8);
    }
  }

  else
  {
    v13 = 1;
  }

  v15 = (a2 + 4 + v13);
  v16 = *v15;
  if (*v15 < 0)
  {
    if (v16 >= 0xC0)
    {
      if (v16 >= 0xE0)
      {
        goto LABEL_124;
      }

      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    v16 = v15[v17];
  }

  v18 = *(a1 + 804) & (v16 >> 5) & 1;
  v71 = value_out + *(value_out + 2);
  if (find_slot_for_oid_and_type(a1, value_out, v12, v18, &v72, &v70, 2) == 17)
  {
    page_release(a1, value_out, a4, 0, 0);
    return 17;
  }

  v19 = (*a2 + 4);
  if (a5 - 20 <= v19)
  {
    v21 = test_compress_obj(a1, a5, a2);
    v20 = value_out;
    if (v21)
    {
      v22 = v21;
      page_release(a1, value_out, a4, 0, 0);
      return v22;
    }

    *(value_out + 3) |= 4u;
    LODWORD(v19) = *a2 + 4;
  }

  else
  {
    v20 = value_out;
  }

  if (v19 > (v20[1] - v20[2]))
  {
    if ((v20[3] & 0xC) != 0)
    {
      if (a4)
      {
        v23 = *(a1 + 928);
        v24 = v23[13].n128_u32[3];
        if (v24 < 1)
        {
LABEL_41:
          atomic_fetch_add(&v23[14].n128_i32[1], 1u);
        }

        else
        {
          v25 = 0;
          while (v23[15].n128_u32[v25 + 3] != a4)
          {
            if (v24 == ++v25)
            {
              goto LABEL_41;
            }
          }

          atomic_fetch_add(&v23[13].n128_i32[2], 1u);
          v26 = &v23[3 * v25];
          v27 = v26[18].n128_u32[0];
          v69 = v26[17];
          db_cache_mru(v23, v25);
          if (v27)
          {
            v31 = v69.n128_u64[1] == 0;
          }

          else
          {
            v31 = 0;
          }

          if (v31 || (*(v69.n128_u64[0] + 12) & 4) == 0 || *(v69.n128_u64[0] + 4) <= *(v69.n128_u64[0] + 16))
          {
            v32 = *(value_out + 2) + *a2 + 4;
            v33 = (*(a1 + 804) & 2) != 0 ? 114688 : 196608;
            if (v32 <= v33 && !page_resize(a1, &value_out, 1, v32, &v72, v28, v29, v30, &v71))
            {
              goto LABEL_55;
            }
          }
        }
      }

      v20 = value_out;
    }

    page_release(a1, v20, a4, 0, 0);
    return page_split(a1, a2, a4, a5, v9);
  }

LABEL_55:
  v34 = v72;
  if (v72 < v71)
  {
    v35 = v72[4];
    if (v72[4] < 0)
    {
      v37 = v72[4];
      if (v37 > 0xBF)
      {
        if (v37 > 0xDF)
        {
          if (v37 > 0xEF)
          {
            if (v37 > 0xF7)
            {
              if (v37 > 0xFB)
              {
                if (v37 > 0xFD)
                {
                  if (v37 == 255)
                  {
                    v35 = *(v72 + 5);
                    v36 = 9;
                  }

                  else
                  {
                    v35 = (v72[5] << 48) | (v72[6] << 40) | (v72[7] << 32) | (v72[8] << 24) | (v72[9] << 16) | (v72[10] << 8) | v72[11];
                    v36 = 8;
                  }
                }

                else
                {
                  v35 = ((v35 & 1) << 48) | (v72[5] << 40) | (v72[6] << 32) | (v72[7] << 24) | (v72[8] << 16) | (v72[9] << 8) | v72[10];
                  v36 = 7;
                }
              }

              else
              {
                v35 = ((v35 & 3) << 40) | (v72[5] << 32) | (v72[6] << 24) | (v72[7] << 16) | (v72[8] << 8) | v72[9];
                v36 = 6;
              }
            }

            else
            {
              v35 = ((v35 & 7) << 32) | (v72[5] << 24) | (v72[6] << 16) | (v72[7] << 8) | v72[8];
              v36 = 5;
            }
          }

          else
          {
            v35 = ((v35 & 0xF) << 24) | (v72[5] << 16) | (v72[6] << 8) | v72[7];
            v36 = 4;
          }
        }

        else
        {
          v35 = ((v35 & 0x1F) << 16) | (v72[5] << 8) | v72[6];
          v36 = 3;
        }
      }

      else
      {
        v36 = 2;
        v35 = v72[5] | ((v35 & 0x3F) << 8);
      }
    }

    else
    {
      v36 = 1;
    }

    v38 = &v72[v36 + 4];
    v39 = *v38;
    if (*v38 < 0)
    {
      if (v39 >= 0xC0)
      {
        if (v39 >= 0xE0)
        {
          goto LABEL_124;
        }

        v40 = 2;
      }

      else
      {
        v40 = 1;
      }

      v39 = v38[v40];
    }

    v41 = *(a1 + 804) & (v39 >> 5) & 1;
    if (v18 < v41 || (v18 == v41 ? (v42 = v12 < v35) : (v42 = 0), v42))
    {
      v43 = (*a2 + 4);
      if (&v71[v43] > (value_out + *(value_out + 1)))
      {
        goto LABEL_121;
      }

      memmove(&v72[v43], v72, v71 - v72);
      v34 = v72;
    }

    else
    {
      v34 = &v72[*v72 + 4];
      v72 = v34;
      if (v34 > v71)
      {
        goto LABEL_121;
      }
    }
  }

  v44 = (*a2 + 4);
  if (&v34[v44] <= (value_out + *(value_out + 1)))
  {
    memcpy(v34, a2, v44);
    *(value_out + 2) += *a2 + 4;
    if (v72 < v71)
    {
      if (dword_1EBF46AE8 >= 5)
      {
        v58 = *__error();
        v59 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v75 = (a1 + 324);
          v76 = 1024;
          v77 = a4;
          v78 = 2048;
          v79 = v12;
          _os_log_impl(&dword_1C278D000, v59, OS_LOG_TYPE_DEFAULT, "%s : no map update for inserting at pgnum %d (%.16llx)\n", buf, 0x1Cu);
        }

        *__error() = v58;
      }

      goto LABEL_91;
    }

    if (!v70)
    {
      result = map_insert(a1, a4, a5, v12, v18);
      if (result)
      {
        return result;
      }

      goto LABEL_91;
    }

    v45 = *(v70 + 4);
    if (*(v70 + 4) < 0)
    {
      v47 = *(v70 + 4);
      if (v47 > 0xBF)
      {
        if (v47 > 0xDF)
        {
          if (v47 > 0xEF)
          {
            if (v47 > 0xF7)
            {
              if (v47 > 0xFB)
              {
                if (v47 > 0xFD)
                {
                  if (v47 == 255)
                  {
                    v45 = *(v70 + 5);
                    v46 = 9;
                  }

                  else
                  {
                    v45 = (*(v70 + 5) << 48) | (*(v70 + 6) << 40) | (*(v70 + 7) << 32) | (*(v70 + 8) << 24) | (*(v70 + 9) << 16) | (*(v70 + 10) << 8) | *(v70 + 11);
                    v46 = 8;
                  }
                }

                else
                {
                  v45 = ((v45 & 1) << 48) | (*(v70 + 5) << 40) | (*(v70 + 6) << 32) | (*(v70 + 7) << 24) | (*(v70 + 8) << 16) | (*(v70 + 9) << 8) | *(v70 + 10);
                  v46 = 7;
                }
              }

              else
              {
                v45 = ((v45 & 3) << 40) | (*(v70 + 5) << 32) | (*(v70 + 6) << 24) | (*(v70 + 7) << 16) | (*(v70 + 8) << 8) | *(v70 + 9);
                v46 = 6;
              }
            }

            else
            {
              v45 = ((v45 & 7) << 32) | (*(v70 + 5) << 24) | (*(v70 + 6) << 16) | (*(v70 + 7) << 8) | *(v70 + 8);
              v46 = 5;
            }
          }

          else
          {
            v45 = ((v45 & 0xF) << 24) | (*(v70 + 5) << 16) | (*(v70 + 6) << 8) | *(v70 + 7);
            v46 = 4;
          }
        }

        else
        {
          v45 = ((v45 & 0x1F) << 16) | (*(v70 + 5) << 8) | *(v70 + 6);
          v46 = 3;
        }
      }

      else
      {
        v46 = 2;
        v45 = *(v70 + 5) | ((v45 & 0x3F) << 8);
      }
    }

    else
    {
      v46 = 1;
    }

    v48 = (v70 + 4 + v46);
    v49 = *v48;
    if ((*v48 & 0x80000000) == 0)
    {
LABEL_118:
      v51 = map_update(a1, a4, a5, v45, v12, *(a1 + 804) & (v49 >> 5) & 1, v18, 1);
      if (v51)
      {
        v52 = v51;
        page_release(a1, value_out, a4, v9, 0);
        return v52;
      }

LABEL_91:
      set_offset_hint(a1, value_out, v72);
      ++*(a1 + 20);
      page_release(a1, value_out, a4, v9 | 1, 0);
      return 0;
    }

    if (v49 < 0xC0)
    {
      v50 = 1;
LABEL_117:
      v49 = v48[v50];
      goto LABEL_118;
    }

    if (v49 < 0xE0)
    {
      v50 = 2;
      goto LABEL_117;
    }

LABEL_124:
    v55 = __si_assert_copy_extra_3233(0, -1);
    v56 = v55;
    v57 = "";
    if (v55)
    {
      v57 = v55;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v57);
    free(v56);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

LABEL_121:
  v53 = *__error();
  v54 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v75 = "_real_page_insert_obj";
    v76 = 1024;
    v77 = 5244;
    v78 = 2080;
    v79 = a1 + 324;
    v80 = 2048;
    v81 = a4;
    v82 = 2048;
    v83 = v72 - value_out;
    _os_log_error_impl(&dword_1C278D000, v54, OS_LOG_TYPE_ERROR, "%s:%d: %s: page_insert_obj, page pgnum:%ld has a bad object at offset:%p\n", buf, 0x30u);
  }

  *__error() = v53;
  page_release(a1, value_out, a4, 0, 0);
  return 6530;
}

void attributeMergeInfoApplier(void *key, const void *a2, CFDictionaryRef *a3)
{
  Value = CFDictionaryGetValue(*a3, key);
  v7 = CFGetTypeID(a2);
  if (v7 == CFNullGetTypeID())
  {
    if (!Value)
    {
      return;
    }

    Mutable = a3[2];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
      a3[2] = Mutable;
    }

    v9 = key;
    v10 = Value;
    goto LABEL_12;
  }

  if (!Value)
  {
    Mutable = a3[3];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
      a3[3] = Mutable;
    }

    v9 = key;
    v10 = a2;
LABEL_12:
    CFDictionarySetValue(Mutable, v9, v10);
    v11 = a3[4];

    updateChangedAttributes(v11, key, a2);
    return;
  }

  if (!CFEqual(a2, Value))
  {
    updateChangedAttributes(a3[4], key, a2);
    v12 = a3[3];
    if (!v12)
    {
      v12 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
      a3[3] = v12;
    }

    CFDictionarySetValue(v12, key, a2);
    v13 = a3[2];
    if (!v13)
    {
      v13 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
      a3[2] = v13;
    }

    CFDictionarySetValue(v13, key, Value);
  }
}

void updateChangedAttributes(__CFSet *a1, int a2, const void *a3)
{
  if (a1)
  {
    CFSetAddValue(a1, (a2 & 0x3FFFFFF));
    if (updateChangedAttributes_onceToken == -1)
    {
      if (a2 < 0)
      {
        return;
      }
    }

    else
    {
      dispatch_once(&updateChangedAttributes_onceToken, &__block_literal_global_133);
      if (a2 < 0)
      {
        return;
      }
    }

    v6 = CFGetTypeID(a3);
    if (v6 == updateChangedAttributes_arrayType && CFArrayGetCount(a3))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
      v6 = CFGetTypeID(ValueAtIndex);
    }

    if (v6 != updateChangedAttributes_dateType)
    {

      CFSetAddValue(a1, 0x40000000);
    }
  }
}

void attributeMergeInfoRemoveApplier(void *key, void *value, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (!v6 || !CFDictionaryGetValue(v6, key))
  {
    Mutable = *(a3 + 16);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
      *(a3 + 16) = Mutable;
    }

    CFDictionarySetValue(Mutable, key, value);
  }
}

uint64_t TermUpdateSetUpdateDocumentInfo(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, const __CFDictionary *a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned __int8 a11)
{
  if (!a3)
  {
    v35 = __si_assert_copy_extra_332();
    v36 = v35;
    v37 = "";
    if (v35)
    {
      v37 = v35;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Expected non-zero docID", "TermUpdateSet.c", 2478, "docID", v37);
    free(v36);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v11 = a8;
  poslock(*(a1 + 280));
  HIDWORD(v19) = qos_class_self() - 9;
  LODWORD(v19) = HIDWORD(v19);
  v18 = v19 >> 2;
  if (v18 > 6)
  {
    v20 = 0;
  }

  else
  {
    v20 = dword_1C2BFF8F0[v18];
  }

  pthread_mutex_lock((a1 + 304));
  if (!*(a1 + 488) && !*(a1 + 500) && (*(a1 + 516) & 1) == 0)
  {
    if (v20 > 5)
    {
LABEL_32:
      *(a1 + 488) = pthread_self();
      goto LABEL_9;
    }

    v32 = v20 - 6;
    v33 = (a1 + 16 * v20 + 368);
    while (!*v33)
    {
      v33 += 2;
      if (__CFADD__(v32++, 1))
      {
        goto LABEL_32;
      }
    }
  }

  db_rwlock_wait(a1 + 304, v20, 2);
LABEL_9:
  pthread_mutex_unlock((a1 + 304));
  ++*(a1 + 112);
  if (a6 <= 0xB && ((0xECFu >> a6) & 1) != 0)
  {
    ++*(a1 + qword_1C2BFF158[a6]);
  }

  v42 = 0;
  v21 = *MEMORY[0x1E695E480];
  cf = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &stringUnqBuffSetCallBacks);
  Mutable = CFSetCreateMutable(v21, 0, &stringUnqBuffSetCallBacks);
  v43 = 0;
  v22 = MEMORY[0x1E69E9AC8];
  v23 = *MEMORY[0x1E69E9AC8];
  v24 = 0;
  if (!my_vm_allocate(&v43, *MEMORY[0x1E69E9AC8], 1u))
  {
    v24 = v43;
    v25 = v43 + 24;
    *v43 = 0;
    v24[1] = v25;
    v24[2] = v24 + v23;
    madvise(v25, *v22, 3);
  }

  v39 = v24;
  v26 = CIRetainIndexingTokenizer(a2);
  if (a5)
  {
    termUpdateSetProcessFields(a1, &v39, v26, a3, 0, a5, 2u, a11);
  }

  if (a4)
  {
    termUpdateSetProcessFields(a1, &v39, v26, a3, 0, a4, 1u, a11);
  }

  termUpdateSetProcessWildCardFields(a1, a3, Mutable, 2);
  termUpdateSetProcessWildCardFields(a1, a3, cf, 1);
  CIReleaseIndexingTokenizer(v26);
  CFRelease(cf);
  CFRelease(Mutable);
  v27 = v39;
  if (v39)
  {
    do
    {
      v28 = *v27;
      munmap(v27, v27[2] - v27);
      v27 = v28;
    }

    while (v28);
  }

  if (v11)
  {
    doChildFile(a1 + 88, (a1 + 48), v11, a7, a3, 1);
  }

  if (a10)
  {
    doChildFile(a1 + 88, (a1 + 48), a10, a9, a3, 2);
  }

  pthread_mutex_lock((a1 + 304));
  *(a1 + 508) = 0;
  v29 = *(a1 + 480);
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v30 = *(a1 + 500) != 0;
  *(a1 + 516) = 0;
  db_rwlock_wakeup(a1 + 304, v30, 0);
  pthread_mutex_unlock((a1 + 304));
  if (v29)
  {
    pthread_override_qos_class_end_np(v29);
  }

  return poswriteunlock(*(a1 + 280));
}

CFIndex termUpdateSetProcessWildCardFields(uint64_t a1, uint64_t a2, CFSetRef theSet, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  Count = CFSetGetCount(theSet);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20[-v10];
  bzero(&v20[-v10], v12);
  CFSetGetValues(theSet, v11);
  if (Count >= 1)
  {
    v13 = Count;
    do
    {
      v14 = *v11++;
      v15 = *v14;
      v16 = strHash(*v14, (v14 + 2), 0);
      v21 = 0;
      v18 = pushTermTable(*(a1 + 24) + 16, **(a1 + 24), v16, v15, v14 + 2, &v21, v17);
      pushTermData(a1, v18, a2, 0, v21, a4, 1);
      --v13;
    }

    while (v13);
  }

  return Count;
}

void _CIUpdateGroupAndDate(uint64_t a1, unint64_t a2, int a3, int a4)
{
  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    *buf = 0;
    v66 = 0;
    v65 = 0;
    v9 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    *buf = v9;
    v65 = v11;
    v66 = __PAIR64__(HIDWORD(v9), v10);
    v12 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
    *(v12 + 216) = 0;
    v13 = *(v12 + 312);
    v14 = *(v12 + 224);
    v15 = v12;
    if (v14)
    {
      v14(*(v12 + 288));
    }

    v64 = *buf;
    v63 = HIDWORD(v66);
    v62 = __PAIR64__(v66, v65);
    if (_setjmp(v15))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v61 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v61, 2u);
      }

      *(v15 + 312) = v13;
      if ((~*(v15 + 212) & 0xA0000000) == 0)
      {
        v16 = *(v15 + 288);
        if (v16)
        {
          _CIMakeInvalid(v16);
        }
      }

      CIOnThreadCleanUpReset(v62);
      dropThreadId(v64, 1, add_explicit + 1);
      CICleanUpReset(v64, HIDWORD(v62));
      return;
    }

    if (!a2)
    {
      goto LABEL_35;
    }

    v17 = *(a1 + 80);
    v18 = a2 - v17;
    if (a2 <= v17 || v17 + *(a1 + 68) <= a2)
    {
      goto LABEL_35;
    }

    v19 = CICleanUpThreadLoc();
    _db_write_lock(a1 + 14504);
    CIOnThreadCleanUpPush(v19, si_rwlock_wrunlock, a1 + 14504);
    if (a4)
    {
      v20 = *(a1 + 14416);
      if (v20)
      {
        *(v20 + 4 * v18) = a4;
      }
    }

    if (!a3)
    {
      goto LABEL_34;
    }

    if (*(a1 + 45) == 1)
    {
      if ((*(*(a1 + 14432) + v18) & 0xDF) != 0)
      {
        *(*(a1 + 14432) + v18) = a3;
        v21 = *(a1 + 14440);
        if (v21)
        {
          *(v21 + v18 / (32 * *MEMORY[0x1E69E9AC8])) |= 1 << ((v18 / (4 * *MEMORY[0x1E69E9AC8])) & 7);
        }
      }

      goto LABEL_34;
    }

    v22 = v18 / 5uLL;
    v23 = 6 * (v18 % 5);
    v24 = *(a1 + 14432);
    v25 = *(v24 + 4 * v22);
    if (((v25 >> (6 * (v18 % 5))) & 0x1F) == 0)
    {
LABEL_34:
      CIOnThreadCleanUpPop(v19);
LABEL_35:
      v35 = threadData[9 * v64 + 1] + 320 * v63;
      *(v35 + 312) = v13;
      v36 = *(v35 + 232);
      if (v36)
      {
        v36(*(v35 + 288));
      }

      dropThreadId(v64, 0, add_explicit + 1);
      return;
    }

    v26 = v25 & ~(63 << v23) | ((a3 & 0x3F) << v23);
    if (*(a1 + 14440))
    {
      v27 = MEMORY[0x1E69E9AC8];
      v28 = v22 / (8 * *MEMORY[0x1E69E9AC8]);
      v29 = (v22 / *MEMORY[0x1E69E9AC8]) & 7;
      *(*(a1 + 14440) + v28) |= 1 << v29;
      if (!*(*(a1 + 14440) + v28))
      {
        v37 = __si_assert_copy_extra_332();
        v45 = v37;
        v46 = "";
        if (v37)
        {
          v46 = v37;
        }

        v47 = "(cindex)->groupMap[gslot]";
        goto LABEL_45;
      }

      v30 = *v27;
      v31 = v29 | (8 * v28);
      if (v30 * v31 > v22)
      {
        v49 = __si_assert_copy_extra_332();
        v57 = v49;
        v58 = "";
        if (v49)
        {
          v58 = v49;
        }

        v59 = "vm_page_size*(gslot*8+bslot) <=slot";
      }

      else
      {
        if (v30 * (v31 + 1) > v22)
        {
          v32 = *(a1 + 14432);
          v33 = *(a1 + 45);
          *(v32 + 4 * (v18 / 5uLL)) = v26;
          if (v33)
          {
            v34 = *(v32 + v18);
LABEL_33:
            if (v34 == (a3 & 0x3F))
            {
              goto LABEL_34;
            }

            v37 = __si_assert_copy_extra_332();
            v45 = v37;
            v46 = "";
            if (v37)
            {
              v46 = v37;
            }

            v47 = "((cindex)->coreSpotlight?({ ((uint8_t *)(cindex)->groups)[(relDocId)]; }):({ uint32_t __where=(uint32_t)(relDocId); uint32_t __slot = __where/5; uint32_t __shift= (__where-(__slot*5))*6; uint32_t __word = ((uint32_t)((cindex)->groups[__slot])); (__word >> __shift) & 0x3F ; }))==(inval&0x3F)";
LABEL_45:
            __message_assert_336(v37, v38, v39, v40, v41, v42, v43, v44, "ContentIndex.c", 2473, v47, v46);
            free(v45);
            if (__valid_fs(-1))
            {
              v48 = 2989;
            }

            else
            {
              v48 = 3072;
            }

            *v48 = -559038737;
            abort();
          }

LABEL_32:
          v34 = (v26 >> v23) & 0x3F;
          goto LABEL_33;
        }

        v49 = __si_assert_copy_extra_332();
        v57 = v49;
        v58 = "";
        if (v49)
        {
          v58 = v49;
        }

        v59 = "vm_page_size*(gslot*8+bslot+1) >slot";
      }

      __message_assert_336(v49, v50, v51, v52, v53, v54, v55, v56, "ContentIndex.c", 2473, v59, v58);
      free(v57);
      if (__valid_fs(-1))
      {
        v60 = 2989;
      }

      else
      {
        v60 = 3072;
      }

      *v60 = -559038737;
      abort();
    }

    *(v24 + 4 * v22) = v26;
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }
}

uint64_t _db_write_lock(uint64_t a1)
{
  HIDWORD(v3) = qos_class_self() - 9;
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 2;
  if (v2 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1C2BFF8F0[v2];
  }

  v5 = pthread_mutex_lock(a1);
  if (db_rwlock_writer_excluded(a1, v4))
  {
    db_rwlock_wait(a1, v4, 2);
  }

  else
  {
    *(a1 + 184) = pthread_self();
  }

  pthread_mutex_unlock(a1);
  return v5;
}

uint64_t db_rwlock_writer_excluded(uint64_t a1, int a2)
{
  if (*(a1 + 184) || *(a1 + 196) || (*(a1 + 212) & 1) != 0)
  {
    return 1;
  }

  if (a2 <= 5)
  {
    v3 = (a1 + 16 * a2 + 64);
    v4 = a2 - 6;
    result = 0;
    while (!*v3)
    {
      v3 += 2;
      if (__CFADD__(v4++, 1))
      {
        return result;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t db_write_unlock(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  *(a1 + 204) = 0;
  v3 = *(a1 + 176);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v4 = *(a1 + 196) != 0;
  *(a1 + 212) = 0;
  db_rwlock_wakeup(a1, v4, 0);
  pthread_mutex_unlock(a1);
  if (v3)
  {
    pthread_override_qos_class_end_np(v3);
  }

  return v2;
}

uint64_t sdb_make_nonpurgeable(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  HIDWORD(v1) = 1713515327 * a1;
  LODWORD(v1) = 1713515327 * a1;
  v2 = -2048144789 * ((1107688271 * (v1 >> 21)) ^ 0x1F0A259C);
  v3 = purgeQueue[((53 * (v2 ^ (v2 >> 13))) ^ ((-1028477387 * (v2 ^ (v2 >> 13))) >> 16)) & 0x1F];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __sdb_make_nonpurgeable_block_invoke;
  v6[3] = &unk_1E81994F8;
  v6[4] = &v7;
  v6[5] = a1;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __sdb_make_nonpurgeable_block_invoke(uint64_t a1)
{
  result = malloc_make_nonpurgeable(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result == 0;
  return result;
}

void updatedRelatedPersons(uint64_t a1, const __CFArray *a2, const __CFArray *a3, uint64_t a4, const void *a5)
{
  v9 = 86400 * (CFAbsoluteTimeGetCurrent() / 0x15180);
  v10 = MEMORY[0x1C691E960](a4);
  v11 = *MEMORY[0x1E695E480];
  v12 = CFDateCreate(*MEMORY[0x1E695E480], v10);
  os_unfair_lock_lock((a1 + 328));
  if (CFEqual(a5, @"com.apple.mobilemail"))
  {
    v13 = (a1 + 400);
  }

  else if (CFEqual(a5, @"com.apple.MobileSMS"))
  {
    v13 = (a1 + 464);
  }

  else if (CFEqual(a5, @"com.apple.mobilecal"))
  {
    v13 = (a1 + 528);
  }

  else if (CFEqual(a5, @"com.apple.CloudDocs.iCloudDriveFileProvider") || CFEqual(a5, @"com.apple.CloudDocs.iCloudDriveFileProviderManaged") || CFEqual(a5, @"com.apple.CloudDocs.MobileDocumentsFileProvider"))
  {
    v13 = (a1 + 592);
  }

  else
  {
    v13 = 0;
  }

  v41 = a3;
  if (v9 <= v10)
  {
    Mutable = *(a1 + 336);
    if (!Mutable)
    {
      Mutable = CFBagCreateMutable(v11, 0, MEMORY[0x1E695E9D0]);
      *(a1 + 336) = Mutable;
    }

    v42 = *(a1 + 368);
    if (v42)
    {
      if (!v13)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v42 = CFBagCreateMutable(v11, 0, MEMORY[0x1E695E9D0]);
      *(a1 + 368) = v42;
      Mutable = *(a1 + 336);
      if (!v13)
      {
        goto LABEL_53;
      }
    }

    v16 = *v13;
    if (!*v13)
    {
      v16 = CFBagCreateMutable(v11, 0, MEMORY[0x1E695E9D0]);
      *v13 = v16;
    }

    v20 = v13 + 4;
    v18 = v13[4];
    if (!v18)
    {
      goto LABEL_47;
    }

    goto LABEL_52;
  }

  if (v10 + 604800 >= v9)
  {
    Mutable = *(a1 + 344);
    if (!Mutable)
    {
      Mutable = CFBagCreateMutable(v11, 0, MEMORY[0x1E695E9D0]);
      *(a1 + 344) = Mutable;
    }

    v42 = *(a1 + 376);
    if (v42)
    {
      if (!v13)
      {
        goto LABEL_53;
      }

LABEL_49:
      v15 = v13 + 1;
      v16 = v13[1];
      if (!v16)
      {
        v16 = CFBagCreateMutable(v11, 0, MEMORY[0x1E695E9D0]);
        *v15 = v16;
      }

      v23 = v13[5];
      v17 = v13 + 5;
      v18 = v23;
      if (!v23)
      {
        goto LABEL_46;
      }

      goto LABEL_52;
    }

    v42 = CFBagCreateMutable(v11, 0, MEMORY[0x1E695E9D0]);
    *(a1 + 376) = v42;
    Mutable = *(a1 + 344);
    if (v13)
    {
      goto LABEL_49;
    }

LABEL_53:
    v22 = v11;
    v16 = 0;
    v18 = 0;
    goto LABEL_54;
  }

  if (v10 + 2592000 >= v9)
  {
    Mutable = *(a1 + 352);
    if (!Mutable)
    {
      Mutable = CFBagCreateMutable(v11, 0, MEMORY[0x1E695E9D0]);
      *(a1 + 352) = Mutable;
    }

    v42 = *(a1 + 384);
    if (!v42)
    {
      v42 = CFBagCreateMutable(v11, 0, MEMORY[0x1E695E9D0]);
      *(a1 + 384) = v42;
      Mutable = *(a1 + 352);
    }

    if (!v13)
    {
      goto LABEL_53;
    }

    v15 = v13 + 2;
    v16 = v13[2];
    if (!v16)
    {
      v16 = CFBagCreateMutable(v11, 0, MEMORY[0x1E695E9D0]);
      *v15 = v16;
    }

    v21 = v13[6];
    v17 = v13 + 6;
    v18 = v21;
    if (!v21)
    {
      goto LABEL_46;
    }

LABEL_52:
    v22 = v11;
    goto LABEL_54;
  }

  Mutable = *(a1 + 360);
  if (!Mutable)
  {
    Mutable = CFBagCreateMutable(v11, 0, MEMORY[0x1E695E9D0]);
    *(a1 + 360) = Mutable;
  }

  v42 = *(a1 + 392);
  if (!v42)
  {
    v42 = CFBagCreateMutable(v11, 0, MEMORY[0x1E695E9D0]);
    *(a1 + 392) = v42;
    Mutable = *(a1 + 360);
  }

  if (!v13)
  {
    goto LABEL_53;
  }

  v15 = v13 + 3;
  v16 = v13[3];
  if (!v16)
  {
    v16 = CFBagCreateMutable(v11, 0, MEMORY[0x1E695E9D0]);
    *v15 = v16;
  }

  v19 = v13[7];
  v17 = v13 + 7;
  v18 = v19;
  if (v19)
  {
    goto LABEL_52;
  }

LABEL_46:
  v20 = v17;
  v13 = v15;
LABEL_47:
  v22 = v11;
  v18 = CFBagCreateMutable(v11, 0, MEMORY[0x1E695E9D0]);
  *v20 = v18;
  v16 = *v13;
LABEL_54:
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    if ((Count - 1) <= 3)
    {
      v25 = Count;
      v26 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v26);
        v28 = CFGetTypeID(ValueAtIndex);
        if (v28 == CFStringGetTypeID())
        {
          Length = CFStringGetLength(ValueAtIndex);
          MutableCopy = CFStringCreateMutableCopy(v22, Length, ValueAtIndex);
          CFBagAddValue(Mutable, MutableCopy);
          if (v16)
          {
            CFBagAddValue(v16, MutableCopy);
          }

          Value = CFDictionaryGetValue(*(a1 + 656), MutableCopy);
          if (!Value || CFDateCompare(v12, Value, 0) == kCFCompareGreaterThan)
          {
            CFDictionarySetValue(*(a1 + 656), MutableCopy, v12);
          }

          CFRelease(MutableCopy);
        }

        ++v26;
      }

      while (v25 != v26);
    }
  }

  if (v41)
  {
    v32 = v22;
    v33 = CFArrayGetCount(v41);
    if ((v33 - 1) <= 3)
    {
      v34 = v33;
      v35 = 0;
      do
      {
        v36 = CFArrayGetValueAtIndex(v41, v35);
        v37 = CFGetTypeID(v36);
        if (v37 == CFStringGetTypeID())
        {
          v38 = CFStringGetLength(v36);
          v39 = CFStringCreateMutableCopy(v32, v38, v36);
          CFBagAddValue(v42, v39);
          if (v18)
          {
            CFBagAddValue(v18, v39);
          }

          v40 = CFDictionaryGetValue(*(a1 + 656), v39);
          if (!v40 || CFDateCompare(v12, v40, 0) == kCFCompareGreaterThan)
          {
            CFDictionarySetValue(*(a1 + 656), v39, v12);
          }

          CFRelease(v39);
        }

        ++v35;
      }

      while (v34 != v35);
    }
  }

  os_unfair_lock_unlock((a1 + 328));

  CFRelease(v12);
}

void __processOneCS_block_invoke_2(uint64_t a1, const char *a2, uint64_t a3, __int128 *a4)
{
  v5 = CFStringCreateWithCString(*(a1 + 40), a2, 0x8000100u);
  if (v5)
  {
    v6 = v5;
    if (!CFDictionaryContainsKey(*(a1 + 48), v5) && _MDPlistGetPlistObjectType() == 240 && _MDPlistArrayGetCount() == 2)
    {
      _MDPlistArrayGetPlistObjectAtIndex();
      IntValue = _MDPlistNumberGetIntValue();
      _MDPlistArrayGetPlistObjectAtIndex();
      v8 = _MDPlistContainerCopyCSObject();
      if (v8)
      {
        v9 = v8;
        v10 = CFGetTypeID(v8);
        v11 = (IntValue & 3) == 0;
        v12 = IntValue >> 3;
        v13 = (IntValue << 7) & 0x100;
        v14 = 4 * IntValue;
        v15 = (v13 & 0xFFFFFFFFFFFFFFDFLL | (32 * (v12 & 1)) | (8 * v11)) ^ 0x100;
        if (*(a1 + 56) == v10)
        {
          v16 = (v15 | v14 & 0x10);
          *(*(*(a1 + 32) + 8) + 24) += CFStringGetLength(v9);
        }

        else if (v10 == CFDictionaryGetTypeID())
        {
          v16 = (v15 | v14 & 0x10);
        }

        else
        {
          v16 = v15;
        }

        CFDictionaryAddValue(*(a1 + 64), v6, v16);
        CFDictionaryAddValue(*(a1 + 48), v6, v9);
        CFRelease(v9);
      }
    }

    CFRelease(v6);
  }
}

uint64_t changesInt64Attribute(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, void *key, char *a5, int a6)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(Value))
    {
      CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
      LODWORD(Value) = 1;
    }

    else
    {
      LODWORD(Value) = 0;
    }
  }

  v15 = 0;
  v16 = 0;
  if (db_get_field(*(a1 + 1192), a2, a5, &v16, &v15))
  {
    v12 = 1;
  }

  else
  {
    v12 = v15 == 0;
  }

  v13 = !v12;
  if (!Value)
  {
    return v13 & (a6 ^ 1u);
  }

  if (v13)
  {
    return valuePtr != *v15;
  }

  return 1;
}

uint64_t changesBooleanAttribute(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, void *key, char *a5, int a6)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(Value))
    {
      LODWORD(Value) = CFBooleanGetValue(Value) != 0;
      v12 = 1;
      goto LABEL_6;
    }

    LODWORD(Value) = 0;
  }

  v12 = 0;
LABEL_6:
  v16 = 0;
  v17 = 0;
  if (db_get_field(*(a1 + 1192), a2, a5, &v17, &v16))
  {
    v13 = 1;
  }

  else
  {
    v13 = v16 == 0;
  }

  v14 = !v13;
  if (!v12)
  {
    return v14 & (a6 ^ 1u);
  }

  if (v14)
  {
    return Value != *v16;
  }

  return 1;
}

uint64_t changesStringAttribute(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, void *key, char *a5, int a6)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(Value))
    {
      Length = CFStringGetLength(Value);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v14 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      if (v14)
      {
        LOBYTE(Value) = CFStringGetCString(Value, v14, MaximumSizeForEncoding + 1, 0x8000100u) != 0;
        goto LABEL_8;
      }
    }

    else
    {
      Length = 0;
      v14 = 0;
    }

    LOBYTE(Value) = 0;
  }

  else
  {
    Length = 0;
    v14 = 0;
  }

LABEL_8:
  v20 = 0;
  v21 = 0;
  if (db_get_field(*(a1 + 1192), a2, a5, &v21, &v20))
  {
    v15 = 1;
  }

  else
  {
    v15 = v20 == 0;
  }

  if (v15)
  {
    if (Value)
    {
LABEL_25:
      v18 = 1;
      if (!v14)
      {
        return v18;
      }

      goto LABEL_23;
    }

    v16 = 0;
  }

  else
  {
    if ((*(v21 + 2) & 0x10) != 0)
    {
      string_for_id = db_get_string_for_id(*(a1 + 1192), *(v21 + 13));
    }

    else
    {
      string_for_id = (v21 + 13);
    }

    v16 = string_for_id != 0;
    if (Value)
    {
      if (string_for_id)
      {
        v18 = strncmp(v14, string_for_id, Length) != 0;
        if (!v14)
        {
          return v18;
        }

        goto LABEL_23;
      }

      goto LABEL_25;
    }
  }

  v18 = v16 & (a6 ^ 1u);
  if (v14)
  {
LABEL_23:
    free(v14);
  }

  return v18;
}

uint64_t changesDateAttribute(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, void *key, char *a5, int a6)
{
  Value = CFDictionaryGetValue(theDict, key);
  v11 = 0.0;
  if (Value)
  {
    TypeID = CFDateGetTypeID();
    if (TypeID == CFGetTypeID(Value))
    {
      v11 = MEMORY[0x1C691E960](Value);
      LODWORD(Value) = 1;
    }

    else
    {
      LODWORD(Value) = 0;
    }
  }

  v16 = 0;
  v17 = 0;
  if (db_get_field(*(a1 + 1192), a2, a5, &v17, &v16))
  {
    v13 = 1;
  }

  else
  {
    v13 = v16 == 0;
  }

  v14 = !v13;
  if (!Value)
  {
    return v14 & (a6 ^ 1u);
  }

  if (v14)
  {
    return v11 != *v16;
  }

  return 1;
}

uint64_t changesExistingSyndicationAttributes(uint64_t a1, uint64_t a2, const __CFDictionary *a3, int a4)
{
  if (changesInt64Attribute(a1, a2, a3, @"com_apple_mobilesms_isHighlightedContent", "com_apple_mobilesms_isHighlightedContent", a4) & 1) != 0 || (changesInt64Attribute(a1, a2, a3, @"kMDItemSyndicationStatus", "kMDItemSyndicationStatus", a4))
  {
    return 1;
  }

  return changesBooleanAttribute(a1, a2, a3, @"com_apple_mobilesms_isChatAutoDonating", "com_apple_mobilesms_isChatAutoDonating", a4);
}

uint64_t changesExistingSyndicationRelatedAttributes(uint64_t a1, uint64_t a2, const __CFDictionary *a3, int a4)
{
  if (changesStringAttribute(a1, a2, a3, @"com_apple_mobilesms_groupPhotoPath", "com_apple_mobilesms_groupPhotoPath", a4) & 1) != 0 || (changesDateAttribute(a1, a2, a3, @"com_apple_mobilesms_highlightedContentServerDate", "com_apple_mobilesms_highlightedContentServerDate", a4) & 1) != 0 || (changesDateAttribute(a1, a2, a3, @"com_apple_mobilesms_chatAutoDonatingServerDate", "com_apple_mobilesms_chatAutoDonatingServerDate", a4) & 1) != 0 || (changesBooleanAttribute(a1, a2, a3, @"_kMDItemIsFromMe", "_kMDItemIsFromMe", a4) & 1) != 0 || (changesStringAttribute(a1, a2, a3, @"kMDItemDisplayName", "kMDItemDisplayName", a4) & 1) != 0 || (changesStringAttribute(a1, a2, a3, @"kMDItemAuthors", "kMDItemAuthors", a4) & 1) != 0 || (changesStringAttribute(a1, a2, a3, @"kMDItemAuthorAddresses", "kMDItemAuthorAddresses", a4) & 1) != 0 || (changesStringAttribute(a1, a2, a3, @"kMDItemRecipients", "kMDItemRecipients", a4))
  {
    return 1;
  }

  return changesStringAttribute(a1, a2, a3, @"kMDItemRecipientAddresses", "kMDItemRecipientAddresses", a4);
}

uint64_t ldb_update_indexid(_DWORD **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = (*a1 + 1);
  if (*v4 < 0)
  {
    v6 = *v4;
    if (v6 >= 0xC0)
    {
      if (v6 >= 0xE0)
      {
        if (v6 >= 0xF0)
        {
          if (v6 >= 0xF8)
          {
            if (v6 >= 0xFC)
            {
              v7 = 8;
              if (v6 == 255)
              {
                v7 = 9;
              }

              if (v6 >= 0xFE)
              {
                v5 = v7;
              }

              else
              {
                v5 = 7;
              }
            }

            else
            {
              v5 = 6;
            }
          }

          else
          {
            v5 = 5;
          }
        }

        else
        {
          v5 = 4;
        }
      }

      else
      {
        v5 = 3;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 1;
  }

  if (v4[v5] < 0)
  {
    v9 = v4[v5];
    if (v9 >= 0xC0)
    {
      if (v9 >= 0xE0)
      {
        v21 = __si_assert_copy_extra_2708(0);
        __message_assert("%s:%u: failed assertion '%s' %s ");
LABEL_66:
        free(v21);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v8 = 3;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 1;
  }

  v10 = v5 + v8;
  v11 = v4[v5 + v8];
  if (v11 < 0)
  {
    if (v11 > 0xBFu)
    {
      if (v11 > 0xDFu)
      {
        if (v11 > 0xEFu)
        {
          if (v11 > 0xF7u)
          {
            if (v11 > 0xFBu)
            {
              if (v11 > 0xFDu)
              {
                if (v11 == 255)
                {
                  v12 = v10 + 9;
                }

                else
                {
                  v12 = v10 + 8;
                }
              }

              else
              {
                v12 = v10 + 7;
              }
            }

            else
            {
              v12 = v10 + 6;
            }
          }

          else
          {
            v12 = v10 + 5;
          }
        }

        else
        {
          v12 = v10 + 4;
        }
      }

      else
      {
        v12 = v10 + 3;
      }
    }

    else
    {
      v12 = v10 + 2;
    }
  }

  else
  {
    v12 = v10 + 1;
  }

  if (HIBYTE(a2))
  {
    v13 = 9;
  }

  else if (a2 >> 49)
  {
    v13 = 8;
  }

  else if (a2 >> 42)
  {
    v13 = 7;
  }

  else if (a2 >> 35)
  {
    v13 = 6;
  }

  else if (a2 >> 28)
  {
    v13 = 5;
  }

  else if (a2 >> 21)
  {
    v13 = 4;
  }

  else if (a2 >> 14)
  {
    v13 = 3;
  }

  else if (a2 < 0x80)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (v13 < v12 - v10)
  {
    v14 = ldb_writeVInt64((*a1 + 1), v10, a2);
    v15 = v14;
    result = memmove(&v4[v14], &v4[v12], *v3 - v12);
    *v3 += v15 - v12;
    return result;
  }

  if (v13 > v12 - v10)
  {
    v17 = v13 - (v12 - v10) + *v3;
    v19 = v10;
    v20 = malloc_type_malloc(v17 + 4, 0x100004052888210uLL);
    memcpy(v20, v3, v19 + 4);
    memcpy(v20 + v19 + v13 + 4, &v4[v12], *v20 - v12);
    result = ldb_writeVInt64((v20 + 1), v19, a2);
    *v20 = v17;
    *a1 = v20;
  }

  else
  {
    result = ldb_writeVInt64((*a1 + 1), v10, a2);
    if (result != v12)
    {
      v21 = __si_assert_copy_extra_2708(0);
      __message_assert("%s:%u: failed assertion '%s' %s %s");
      goto LABEL_66;
    }
  }

  return result;
}

uint64_t _icu_search_match_with_ctx(const __CFString *a1, uint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    bzero(v8, 0x400uLL);
    v6 = 0;
    v4 = fasterUTF8String(a1, v7, v8, 1024, &v6);
    if (v4)
    {
      v7[1] = 0;
      v7[2] = 0;
      v2 = icu_search_match();
    }

    else
    {
      v2 = 0;
    }

    if (v6 == 1)
    {
      free(v4);
    }
  }

  return v2;
}

uint64_t mePreprocessName(uint64_t result)
{
  if ((*(result + 26) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *(result + 16);
      v4 = *result;
      v5 = *(result + 24);
      v6 = *(*result + 272);
      if (v3 == CFStringGetTypeID())
      {
        result = _icu_search_match_with_ctx(v2, v6);
        if (result)
        {
          if (v5 > 2)
          {
            if (v5 == 3)
            {
              v4[11] = *MEMORY[0x1E695E4D0];
            }

            else if (v5 == 4)
            {
              v4[13] = *MEMORY[0x1E695E4D0];
            }
          }

          else if (v5 == 1)
          {
            v4[9] = *MEMORY[0x1E695E4D0];
          }

          else if (v5 == 2)
          {
            v4[10] = *MEMORY[0x1E695E4D0];
          }
        }
      }

      else
      {
        result = CFArrayGetTypeID();
        if (v3 == result)
        {
          result = CFArrayGetCount(v2);
          if (result >= 1)
          {
            v7 = result;
            v8 = 0;
            while (1)
            {
              result = CFArrayGetValueAtIndex(v2, v8);
              if (result)
              {
                v9 = result;
                v10 = CFGetTypeID(result);
                result = CFStringGetTypeID();
                if (v10 == result)
                {
                  result = _icu_search_match_with_ctx(v9, v6);
                  if (result)
                  {
                    break;
                  }
                }
              }

              if (v7 == ++v8)
              {
                return result;
              }
            }

            if ((v5 - 1) <= 3u)
            {
              *(v4 + qword_1C2BFB1F0[(v5 - 1)]) = *MEMORY[0x1E695E4D0];
            }

            *(v1 + 26) = 1;
          }
        }
      }
    }
  }

  return result;
}

void InsertPreProcessContextAddLocAttr(uint64_t a1, CFTypeRef cf, CFTypeRef a3, int a4)
{
  if (*(a1 + 440) >= *(a1 + 448))
  {
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      if (!atomic_fetch_add_explicit(InsertPreProcessContextAddLocAttr__crashCount, 1u, memory_order_relaxed))
      {
        v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"localized attr count %d exceeded %d", *(a1 + 440), *(a1 + 448));
        getpid();
        SISimulateCrashForPid(0, v10);
        if (v10)
        {
          CFRelease(v10);
        }
      }
    }

    *(a1 + 44) = 22;
  }

  else
  {
    v7 = CFRetain(cf);
    v8 = *(a1 + 440);
    *(*(a1 + 424) + 8 * v8) = v7;
    if (a4)
    {
      a3 = CFRetain(a3);
      v8 = *(a1 + 440);
    }

    v9 = *(a1 + 432);
    *(a1 + 440) = v8 + 1;
    *(v9 + 8 * v8) = a3;
  }
}

char *__si_assert_copy_extra(_DWORD *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(v8, 0x400uLL);
  if (!a1 || (v2 = fd_realpath(a1, v8)) == 0)
  {
    v3 = getcwd(v8, 0x400uLL);
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      v2 = "";
    }
  }

  v7 = 0;
  v4 = pthread_getspecific(__THREAD_STR_DATA_KEY[0]);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  asprintf(&v7, "%s %s", v2, v5);
  return v7;
}

void _InsertPreProcessContextAddDateAttr(uint64_t *a1, __CFString *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1C691E960](a3);
  InsertPreProcessContextAddAttr(a1, a2, a3, 1);
  v11 = MEMORY[0x1E695E480];
  if (a2 == @"kMDItemDueDate" || a2 == @"kMDItemEndDate" || a2 == @"kMDItemStartDate" || a2 == @"kMDItemContentCreationDate" || a2 == @"kMDItemContentModificationDate")
  {
    v46 = a5;
    v47 = a4;
    valuePtr = 0u;
    v50[0] = 0u;
    v16 = v10 + a1[3];
    v48 = (&valuePtr | 0xC);
    if (a1[4] == *MEMORY[0x1E695E4D0])
    {
      v18 = MEMORY[0x1E695E480];
      v19 = OSAtomicDequeue(&sUTCCalenderQueueHead, 0);
      if (!v19)
      {
        v19 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
        v19[1] = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E4A8], *MEMORY[0x1E695E678]);
        v45 = CFTimeZoneCreateWithTimeIntervalFromGMT(*v18, 0.0);
        CFCalendarSetTimeZone(v19[1], v45);
        CFRelease(v45);
      }

      CFCalendarDecomposeAbsoluteTime(v19[1], v16, "HdyMEFWw", &valuePtr, &valuePtr + 4, v48, &valuePtr + 8, v50, v50 + 4, v50 + 8, v50 + 12);
      OSAtomicEnqueue(&sUTCCalenderQueueHead, v19, 0);
      v11 = v18;
      a5 = v46;
    }

    else
    {
      v17 = si_retain_calendar();
      CFCalendarDecomposeAbsoluteTime(v17[1], v16, "HdyMEFWw", &valuePtr, &valuePtr + 4, &valuePtr | 0xC, &valuePtr + 8, v50, v50 + 4, v50 + 8, v50 + 12);
      OSAtomicEnqueue(&sCalenderQueueHead, v17, 0);
    }

    v20 = *v11;
    v21 = CFNumberCreate(v20, kCFNumberSInt32Type, &valuePtr);
    if (v21)
    {
      v22 = v21;
      v23 = CFStringCreateWithFormat(v20, 0, @"_%@%@", a2, @"Hour");
      InsertPreProcessContextAddAttr(a1, v23, v22, 0);
      CFRelease(v23);
    }

    v24 = CFNumberCreate(v20, kCFNumberSInt32Type, &valuePtr + 4);
    if (v24)
    {
      v25 = v24;
      v26 = CFStringCreateWithFormat(v20, 0, @"_%@%@", a2, @"Day");
      InsertPreProcessContextAddAttr(a1, v26, v25, 0);
      CFRelease(v26);
    }

    v27 = CFNumberCreate(v20, kCFNumberSInt32Type, &valuePtr + 8);
    if (v27)
    {
      v28 = v27;
      v29 = CFStringCreateWithFormat(v20, 0, @"_%@%@", a2, @"Month");
      InsertPreProcessContextAddAttr(a1, v29, v28, 0);
      CFRelease(v29);
    }

    v30 = CFNumberCreate(v20, kCFNumberSInt32Type, v48);
    if (v30)
    {
      v31 = v30;
      v32 = CFStringCreateWithFormat(v20, 0, @"_%@%@", a2, @"Year");
      InsertPreProcessContextAddAttr(a1, v32, v31, 0);
      CFRelease(v32);
    }

    v33 = CFNumberCreate(v20, kCFNumberSInt32Type, v50);
    if (v33)
    {
      v34 = v33;
      v35 = CFStringCreateWithFormat(v20, 0, @"_%@%@", a2, @"Weekday");
      InsertPreProcessContextAddAttr(a1, v35, v34, 0);
      CFRelease(v35);
    }

    v36 = CFNumberCreate(v20, kCFNumberSInt32Type, v50 + 4);
    if (v36)
    {
      v37 = v36;
      v38 = CFStringCreateWithFormat(v20, 0, @"_%@%@", a2, @"WeekdayOrdinal");
      InsertPreProcessContextAddAttr(a1, v38, v37, 0);
      CFRelease(v38);
    }

    v39 = CFNumberCreate(v20, kCFNumberSInt32Type, v50 + 8);
    if (v39)
    {
      v40 = v39;
      v41 = CFStringCreateWithFormat(v20, 0, @"_%@%@", a2, @"WeekOfMonth");
      InsertPreProcessContextAddAttr(a1, v41, v40, 0);
      CFRelease(v41);
    }

    v42 = CFNumberCreate(v20, kCFNumberSInt32Type, v50 + 12);
    if (v42)
    {
      v43 = v42;
      v44 = CFStringCreateWithFormat(v20, 0, @"_%@%@", a2, @"WeekOfYear");
      InsertPreProcessContextAddAttr(a1, v44, v43, 0);
      CFRelease(v44);
    }

    v11 = MEMORY[0x1E695E480];
    if (v47)
    {
      goto LABEL_7;
    }
  }

  else if (a4)
  {
LABEL_7:
    v12 = MEMORY[0x1C691E960](a3);
    v13 = CFDateCreate(*v11, (86400 * (v12 / 0x15180)));
    InsertPreProcessContextAddAttr(a1, @"kMDItemContentCreationDate_Ranking", v13, 0);
  }

  if (a5)
  {
    v14 = a1[68];
    if (v14 < a5 || v14 == a5 && MEMORY[0x1C691E960](a1[67]) < v10)
    {
      v15 = a1[67];
      if (v15)
      {
        CFRelease(v15);
      }

      a1[67] = 0;
      a1[67] = CFRetain(a3);
      a1[68] = a5;
    }
  }
}

_DWORD *db_create_obj(int *a1, uint64_t a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v16 = *__error();
    v17 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *a1;
      *buf = 136315650;
      v27 = "db_create_obj";
      v28 = 1024;
      v29 = 312;
      v30 = 1024;
      v31 = v18;
      _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v16;
    v19 = __si_assert_copy_extra_332();
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 312, v21);
    free(v20);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if ((a1[201] & 8) != 0)
  {
    return 0;
  }

  if (a2)
  {
    v5 = a2 + 48;
  }

  else
  {
    v5 = 256;
  }

  v6 = malloc_type_malloc(v5, 0x1000040EED21634uLL);
  if (v6)
  {
    if (a3)
    {
      v25 = 0;
      v8 = CICleanUpThreadLocGet(&v25);
      v9 = _db_write_lock((a1 + 146));
      if (v9)
      {
        v22 = v9;
        v23 = *__error();
        v24 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v27 = "db2_create_obj_postamble";
          v28 = 1024;
          v29 = 11559;
          v30 = 1024;
          v31 = v22;
          _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
        }

        *__error() = v23;
        sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11559);
      }

      if (v8)
      {
        v10 = CIOnThreadCleanUpPush(v25, db_write_unlock, (a1 + 146));
      }

      else
      {
        v10 = -1;
      }

      *v6 = (*(a1 + 7))++;
      if (db_write_unlock((a1 + 146)))
      {
        sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11561);
      }

      if (v8)
      {
        v11 = v25;
        CIOnThreadCleanUpClearItem(v25, v10);
        v12 = &threadData[9 * v11];
        v15 = *(v12 + 14);
        v13 = v12 + 7;
        v14 = v15;
        if (v10 + 1 == v15)
        {
          *v13 = v14 - 1;
        }
      }
    }

    v6[2] = v5;
    v6[3] = 48;
    *(v6 + 5) = 8;
    *(v6 + 3) = 0;
    *(v6 + 4) = 0;
  }

  return v6;
}

uint64_t _data_map32_grow(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 1464))
  {
    return 0;
  }

  v7 = *(a1 + 220);
  if (v7 >= *(a1 + 1360))
  {
    v8 = (*MEMORY[0x1E69E9AC8] + 4 * (v7 + 1) - 1) & -*MEMORY[0x1E69E9AC8];
    if (fd_truncate(*(a1 + 1336), v8) == -1)
    {
      goto LABEL_23;
    }

    *(a1 + 1348) = v8;
    v9 = *(a1 + 1344);
    if (v8 > v9)
    {
      v10 = (2 * v9);
      munmap(*(a1 + 1352), v9);
      *(a1 + 1344) = 0;
      v11 = fd_mmap(*(a1 + 1336), v10, 3, 1, 0);
      *(a1 + 1352) = v11;
      if (v11 == -1)
      {
        goto LABEL_23;
      }

      *(a1 + 1344) = v10;
    }

    *(a1 + 1360) = v8 >> 2;
    *a3 |= 2u;
    v7 = *(a1 + 220);
  }

  v12 = v7 - *(a1 + 1396);
  if (v12 >= 2 * *(a1 + 1392) / 3u || v12 < 2 * *(a1 + 1400))
  {
    if (!_data_map32_rehash(a1))
    {
      goto LABEL_23;
    }

    *a3 |= 4u;
  }

  v13 = a2 + *(a1 + 1328) + 8;
  if (v13 < *(a1 + 1316))
  {
    return 1;
  }

  v14 = (v13 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  if (fd_truncate(*(a1 + 1304), v14) != -1)
  {
    *(a1 + 1316) = v14;
    v15 = *(a1 + 1312);
    if (v14 <= v15)
    {
LABEL_21:
      *a3 |= 1u;
      return 1;
    }

    v16 = (2 * v15);
    v17 = *(a1 + 1408);
    if (v17)
    {
      v17(*(a1 + 1424), *(a1 + 1320));
    }

    else
    {
      munmap(*(a1 + 1320), *(a1 + 1312));
    }

    *(a1 + 1312) = 0;
    v18 = fd_mmap(*(a1 + 1304), v16, 3, 1, 0);
    *(a1 + 1320) = v18;
    if (v18 != -1)
    {
      *(a1 + 1312) = v16;
      goto LABEL_21;
    }
  }

LABEL_23:
  result = 0;
  if (!*(a1 + 1464))
  {
    *(a1 + 1464) = 1;
  }

  return result;
}

uint64_t _getContentTokensCallback(unsigned __int16 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 < 1)
  {
LABEL_5:

    return getContentTokensCallback(a1, a2, 0, a4);
  }

  else
  {
    v4 = 0;
    while (a1[v4] > 5u)
    {
      if (a2 == ++v4)
      {
        goto LABEL_5;
      }
    }

    if (_getContentTokensCallback_logCount <= 49)
    {
      ++_getContentTokensCallback_logCount;
      v7 = *__error();
      v8 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = a1[v4];
        v10 = __si_error_str_key;
        if (__si_error_str_key)
        {
          v10 = pthread_getspecific(__si_error_str_key);
        }

        v11 = "";
        v12 = 136315906;
        v13 = "_getContentTokensCallback";
        v14 = 1024;
        if (v10)
        {
          v11 = v10;
        }

        v15 = 2019;
        v16 = 1024;
        v17 = v9;
        v18 = 2080;
        v19 = v11;
        _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: invalid content token (%d) for %s", &v12, 0x22u);
      }

      *__error() = v7;
    }

    return 1;
  }
}

uint64_t positionInfoAlloc(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 3;
  if ((a2 & 7) != 0)
  {
    LODWORD(v3) = v3 + 1;
  }

  v4 = atomic_load((a1 + 28));
  atomic_fetch_add((a1 + 28), v3);
  if (v4 + a2 > *(a1 + 48) + 0x8000)
  {
    *(a1 + 48) = ((v4 + a2) & 0xFFFFFFFFFFFC0000) + 0x40000;
    madvise(((*(a1 + 16) + 8 * v4 + 8 * a2) & 0xFFFFFFFFFFFC0000), 0x40000uLL, 3);
  }

  while (1)
  {
    v5 = atomic_load((a1 + 28));
    v6 = *(a1 + 32);
    if (v5 < v6)
    {
      break;
    }

    v7 = 2 * v6;
    if (!v6)
    {
      v7 = 0x20000;
    }

    *(a1 + 32) = v7;
    if (my_vm_reallocate((a1 + 16), 8 * v6, 8 * v7, 0xF7u, *(a1 + 56)))
    {
      v8 = __si_assert_copy_extra_332();
      v9 = v8;
      v10 = "";
      if (v8)
      {
        v10 = v8;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPositions.h", 130, "0 == kr", v10);
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
  }

  return v4;
}

void CIPositionNodeTransferDocument(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v30 = *MEMORY[0x1E69E9840];
  v13 = v5[2];
  if (v1)
  {
    v14 = 5 * v13 + 6;
  }

  else
  {
    v14 = 5 * v13 + 1;
  }

  if (v14 <= 0x10000)
  {
    v16 = 0;
    v15 = v29;
  }

  else
  {
    v15 = malloc_type_malloc(v14, 0x109EF92uLL);
    v16 = v15;
  }

  bzero(v29, 0x10000uLL);
  v27 = 0;
  CompactPositionsList(v15, v4, v13, 0, v2, &v28, *v6, v6[1], v17, &v27, v8);
  v18 = v27;
  v15[v27] = 0;
  v19 = positionInfoAlloc_ts(v12, v18 + 9);
  if (!v19)
  {
    v23 = __si_assert_copy_extra(0);
    v24 = v23;
    v25 = "";
    if (v23)
    {
      v25 = v23;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadData.c", 447, "posPtrStart!=0", v25);
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

  v20 = v19;
  v21 = v18 + 1;
  v22 = (*(v12 + 16) + 8 * v19);
  *v22++ = v21;
  memcpy(v22, v15, v21);
  *(v22 + v21) = *(v10 + 4);
  if (v16)
  {
    free(v16);
  }

  *(v10 + 24) = v4;
  *(v10 + 16) = 0;
  *v10 = 0;
  *(v10 + 4) = v20;
  *(v10 + 8) = 0;
}

uint64_t positionInfoAlloc_ts(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 3;
  if ((a2 & 7) != 0)
  {
    LODWORD(v3) = v3 + 1;
  }

  add = atomic_fetch_add((a1 + 28), v3);
  if (add + a2 > *(a1 + 48) + 0x8000)
  {
    *(a1 + 48) = ((add + a2) & 0xFFFFFFFFFFFC0000) + 0x40000;
    madvise(((*(a1 + 16) + 8 * add + 8 * a2) & 0xFFFFFFFFFFFC0000), 0x40000uLL, 3);
  }

  while (1)
  {
    v5 = atomic_load((a1 + 28));
    v6 = *(a1 + 32);
    if (v5 < v6)
    {
      break;
    }

    v7 = 2 * v6;
    if (!v6)
    {
      v7 = 0x20000;
    }

    *(a1 + 32) = v7;
    if (my_vm_reallocate((a1 + 16), 8 * v6, 8 * v7, 0xF7u, *(a1 + 56)))
    {
      v8 = __si_assert_copy_extra(0);
      v9 = v8;
      v10 = "";
      if (v8)
      {
        v10 = v8;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPositions.h", 163, "0 == kr", v10);
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
  }

  return add;
}

void initContextMe(uint64_t a1)
{
  os_unfair_lock_lock(&sSIMeEmailAddressesLock);
  if (sSIMeEmailAddresses)
  {
    *(a1 + 176) = CFRetain(sSIMeEmailAddresses);
  }

  os_unfair_lock_unlock(&sSIMeEmailAddressesLock);
  os_unfair_lock_lock(&sSIMeNamesLock);
  if (sSIMeFullName)
  {
    *(a1 + 184) = CFRetain(sSIMeFullName);
  }

  if (sSIMeGivenName)
  {
    *(a1 + 192) = CFRetain(sSIMeGivenName);
  }

  if (sSIMeAliasName)
  {
    *(a1 + 200) = CFRetain(sSIMeAliasName);
  }

  if (sSIMeNameParts)
  {
    *(a1 + 208) = CFRetain(sSIMeNameParts);
  }

  if (sSIMeNameTokens)
  {
    *(a1 + 216) = CFRetain(sSIMeNameTokens);
  }

  if (sSIMeGivenNameTokens)
  {
    *(a1 + 224) = CFRetain(sSIMeGivenNameTokens);
  }

  if (sSIMeNonGivenNameTokens)
  {
    *(a1 + 232) = CFRetain(sSIMeNonGivenNameTokens);
  }

  if (sSIMeEmailAddressMatchContextDict)
  {
    *(a1 + 248) = CFRetain(sSIMeEmailAddressMatchContextDict);
  }

  if (sSIMeNamePartMatchContextDict)
  {
    *(a1 + 256) = CFRetain(sSIMeNamePartMatchContextDict);
  }

  if (sSIMeNameTokenMatchContextDict)
  {
    *(a1 + 264) = CFRetain(sSIMeNameTokenMatchContextDict);
  }

  if (sSIMeFullNameSearchContextPtr)
  {
    *(a1 + 272) = icu_ctx_retain();
  }

  if (sSIMeFullNamePrefixSearchContextPtr)
  {
    *(a1 + 280) = icu_ctx_retain();
  }

  if (sSIMeAliasNameSearchContextPtr)
  {
    *(a1 + 288) = icu_ctx_retain();
  }

  if (sSIMeGivenNameTokenMatchContextDict)
  {
    *(a1 + 296) = CFRetain(sSIMeGivenNameTokenMatchContextDict);
  }

  if (sSIMeNonGivenNameTokenMatchContextDict)
  {
    *(a1 + 304) = CFRetain(sSIMeNonGivenNameTokenMatchContextDict);
  }

  os_unfair_lock_unlock(&sSIMeNamesLock);
  *(a1 + 40) |= 0x400000u;
}

uint64_t mePreprocessEmailAddress(uint64_t key, uint64_t *a2)
{
  if ((*(a2 + 26) & 1) == 0)
  {
    v3 = key;
    v4 = a2[1];
    v5 = a2[2];
    v6 = *a2;
    v7 = *(a2 + 24);
    v8 = *CFDictionaryGetValue(*(*a2 + 248), key);
    v9 = CFGetTypeID(v3);
    key = CFStringGetTypeID();
    if (v9 == key)
    {
      if (v4)
      {
        if (v5 == CFStringGetTypeID())
        {
          key = _icu_search_match_with_ctx(v4, v8);
          if (!key)
          {
            return key;
          }

LABEL_6:
          if (v7 == 1)
          {
            v10 = 72;
          }

          else
          {
            if (v7 != 2)
            {
LABEL_19:
              *(a2 + 26) = 1;
              return key;
            }

            v10 = 80;
          }

          *(v6 + v10) = *MEMORY[0x1E695E4D0];
          goto LABEL_19;
        }

        key = CFArrayGetTypeID();
        if (v5 == key)
        {
          key = CFArrayGetCount(v4);
          if (key >= 1)
          {
            v11 = key;
            v12 = 0;
            while (1)
            {
              key = CFArrayGetValueAtIndex(v4, v12);
              if (key)
              {
                v13 = key;
                v14 = CFGetTypeID(key);
                key = CFStringGetTypeID();
                if (v14 == key)
                {
                  key = _icu_search_match_with_ctx(v13, v8);
                  if (key)
                  {
                    break;
                  }
                }
              }

              if (v11 == ++v12)
              {
                return key;
              }
            }

            goto LABEL_6;
          }
        }
      }
    }
  }

  return key;
}

void setOneLocalizedFieldWithFlags(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v118 = v11;
  v13 = v12;
  v141 = *MEMORY[0x1E69E9840];
  v14 = &unk_1F427AF78;
  bzero(&v129, 0x410uLL);
  v128 = &unk_1F427AF78;
  v15 = v131;
  v16 = fastUTF8String(v10, &v130, v131);
  v129 = v16;
  if (!v16)
  {
    v90 = __si_assert_copy_extra_332();
    v98 = v90;
    v99 = "";
    if (v90)
    {
      v99 = v90;
    }

    __message_assert_336(v90, v91, v92, v93, v94, v95, v96, v97, "SIIndexInternals.cpp", 214, "fieldName.ptr()", v99);
    free(v98);
    if (__valid_fs(-1))
    {
      v100 = 2989;
    }

    else
    {
      v100 = 3072;
    }

    *v100 = -559038737;
    abort();
  }

  v17 = v16;
  v18 = 1;
  if ((v4 & 1) == 0 && (v2 & 1) == 0)
  {
    v18 = db_corespotlight_store(v13);
    v17 = v129;
  }

  if (db_delete_field_weak(v13, v118, v17, v18) == 1)
  {
    goto LABEL_96;
  }

  if (v4)
  {
    v19 = v6 | 0x1000;
  }

  else
  {
    v19 = v6;
  }

  bzero(v127, 0x20000uLL);
  bzero(v126, 0x8000uLL);
  CFDictionaryGetCount(v8);
  v20 = &v106;
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v121, v22);
  CFDictionaryGetCount(v8);
  MEMORY[0x1EEE9AC00](v23);
  v122 = (&v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v122, v24);
  CFDictionaryGetCount(v8);
  MEMORY[0x1EEE9AC00](v25);
  v120 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v120, v26);
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
  Count = CFDictionaryGetCount(MutableCopy);
  v29 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  v123 = MutableCopy;
  CFDictionaryGetKeysAndValues(MutableCopy, v29, 0);
  qsort_b(v29, Count, 8uLL, &__block_literal_global_445);
  if (!Count)
  {
    v117 = 0;
    LOBYTE(v31) = 0;
    goto LABEL_30;
  }

  v107 = v19;
  v108 = &v106;
  v109 = v131;
  v110 = &unk_1F427AF78;
  v124 = 0;
  v125 = 0;
  v117 = 0;
  v115 = &v137;
  v116 = v13;
  v113 = Count;
  v114 = &v135;
  v30 = 1;
  v106 = v29;
  v31 = Count;
  LODWORD(v119) = 1;
  v32 = v127;
  v33 = v126;
  v34 = Count;
  while (1)
  {
    v35 = *v29;
    Value = CFDictionaryGetValue(v123, *v29);
    if (Value)
    {
      break;
    }

LABEL_21:
    v33 = &v126[v125];
    v32 = &v127[v124];
    LODWORD(v119) = v30++ < v34;
    ++v29;
    if (!--v31)
    {
      LODWORD(Count) = 0;
      v15 = v109;
      v14 = v110;
      v13 = v116;
      v20 = v108;
      v19 = v107;
      v29 = v106;
      goto LABEL_30;
    }
  }

  v37 = Value;
  v38 = CFGetTypeID(Value);
  if (v38 != CFStringGetTypeID())
  {
    v34 = v113;
    goto LABEL_21;
  }

  bzero(&v136[1], 0x410uLL);
  v112 = &unk_1F427AF78;
  v136[0] = &unk_1F427AF78;
  v136[1] = fastUTF8String(v37, &v136[2], v115);
  v39 = &unk_1F427AF78;
  bzero(&v133, 0x410uLL);
  v132 = &unk_1F427AF78;
  v40 = fastUTF8String(v35, &v134, v114);
  v41 = v40;
  v133 = v40;
  v42 = v136[2] - 1;
  v124 += v136[2] - 1;
  if (v124 > 0x20000)
  {
    goto LABEL_25;
  }

  v111 = &unk_1F427AF78;
  v43 = v134 - 1;
  v44 = v134 - 1 + v125;
  if (v44 <= 0x8000)
  {
    v119 = v134;
    v45 = v122;
    v46 = v117;
    *&v121[8 * v117] = v32;
    v45->i32[v46] = v42;
    v47 = v136[1];
    v48 = v32;
    v49 = v46;
    memcpy(v48, v136[1], v42);
    *&v120[8 * v49] = v33;
    memcpy(v33, v41, v43);
    v126[v44] = 0;
    v132 = v111;
    if (v41 != v114)
    {
      free(v41);
      v47 = v136[1];
    }

    v34 = v113;
    v136[0] = v112;
    if (v47 != v115)
    {
      free(v47);
    }

    v125 += v119;
    v117 = v49 + 1;
    goto LABEL_21;
  }

  v39 = v111;
LABEL_25:
  v132 = v39;
  v20 = v108;
  v15 = v109;
  v13 = v116;
  v19 = v107;
  v29 = v106;
  LOBYTE(v31) = v119;
  if (v40 != v114)
  {
    free(v40);
  }

  v136[0] = v112;
  if (v136[1] != v115)
  {
    free(v136[1]);
  }

  LODWORD(Count) = 7;
  v14 = v110;
LABEL_30:
  free(v29);
  CFRelease(v123);
  v50 = v129;
  if (v31)
  {
    goto LABEL_93;
  }

  if ((v19 & 0x10) == 0 && v117 >= 2 && (!strcmp(v129, "kMDItemDisplayName") || !strcmp(v50, "_kMDItemDisplayNameWithExtensions")))
  {
    v19 |= 0x10u;
  }

  if (*v13 != 1685287992)
  {
    v101 = __si_assert_copy_extra_332();
    v102 = v101;
    v103 = "";
    if (v101)
    {
      v103 = v101;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 347, v103);
LABEL_111:
    free(v102);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v51 = v13[201];
  LODWORD(v124) = v19 | 0xA0;
  v52 = ((v19 | 0xA0) >> 5) & 0xFFFF80;
  if ((v51 & 4) != 0)
  {
    v53 = 7;
  }

  else
  {
    v53 = 6;
  }

  if ((v51 & 4) != 0)
  {
    v54 = -128;
  }

  else
  {
    v54 = 32;
  }

  if ((v51 & 4) != 0)
  {
    v52 = (v19 >> 8) & 0x20;
  }

  v55 = (v19 >> 1) & 4 | (v19 >> 3) & 0x40 | ((v19 | 0xA0) >> 5) & 8 | v52 | v54 & (v19 >> v53);
  if ((v19 & 0x10) != 0)
  {
    v56 = 15;
  }

  else
  {
    v56 = 11;
  }

  if ((v19 & 0x400) != 0)
  {
    v56 = 0;
  }

  LOWORD(v136[0]) = v56 | (v55 << 8) | 0x300;
  v57 = ((v51 >> 3) & 1) == 0;
  v58 = strlen(v50);
  id_for_string = _get_id_for_string(v13, 0, v50, v58, v57, v136);
  if (*v13 != 1685287992)
  {
    v104 = __si_assert_copy_extra_332();
    v102 = v104;
    v105 = "";
    if (v104)
    {
      v105 = v104;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 359, v105);
    goto LABEL_111;
  }

  v132 = 0;
  v125 = id_for_string;
  if ((v19 & 0x10) == 0)
  {
    v60 = v13[238];
    if (v60 == id_for_string || v13[237] == id_for_string)
    {
      if (!v117)
      {
        goto LABEL_96;
      }

      if (v117 <= 7)
      {
        v61 = 0;
        v62 = 0;
        goto LABEL_60;
      }

      v61 = v117 & 0xFFFFFFF8;
      v63 = v122 + 1;
      v64 = 0uLL;
      v65 = v61;
      v66 = 0uLL;
      do
      {
        v64 = vaddq_s32(v63[-1], v64);
        v66 = vaddq_s32(*v63, v66);
        v63 += 2;
        v65 -= 8;
      }

      while (v65);
      v62 = vaddvq_s32(vaddq_s32(v66, v64));
      if (v61 != v117)
      {
LABEL_60:
        v67 = v117 - v61;
        v68 = &v122->i8[4 * v61];
        do
        {
          v69 = *v68;
          v68 += 4;
          v62 += v69;
          --v67;
        }

        while (v67);
      }

      if (v62 > 0x4000)
      {
        v70 = v125;
        if (v13[237] == v125)
        {
          v70 = v13[239];
        }

        else if (v60 == v125)
        {
          v70 = v13[240];
        }

        v125 = v70;
        LODWORD(v124) = v19 | 0xB0;
      }
    }
  }

  if (!v117)
  {
    goto LABEL_96;
  }

  v123 = v50;
  v108 = v20;
  v109 = v15;
  v116 = v13;
  v110 = v14;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = v117;
  while (2)
  {
    v75 = *&v121[8 * v71];
    v76 = v122->u32[v71];
    if (!v76 || v75[v76 - 1])
    {
      ++v76;
    }

    v77 = *&v120[8 * v71];
    v78 = strlen(v77);
    v79 = v76 + v78 + 3;
    if (v79 >= 1025)
    {
      v80 = malloc_type_malloc(v79, 0x3AD7665EuLL);
      if (v80)
      {
        goto LABEL_76;
      }

      v83 = 12;
    }

    else
    {
      v80 = v136;
LABEL_76:
      bzero(v136, 0x400uLL);
      memcpy(v80, v75, v76);
      *(v80 + v76 - 1) = 534;
      v81 = v76 + 2;
      memcpy(v80 + v81 - 1, v77, v78);
      *(v80 + v81 + v78 - 1) = 0;
      v83 = db2_add_field_with_cache(v116, v118, 2u, 0, v125, v124, 11, v80, v82, v81 + v78, &v132);
      if (v80 != v136)
      {
        free(v80);
      }
    }

    if (v83 == 7)
    {
      v84 = 0;
    }

    else
    {
      v84 = v83;
    }

    v73 |= v83 == 7;
    v72 |= v83 != 7;
    if (!v84 && ++v71 < v74)
    {
      continue;
    }

    break;
  }

  if ((v72 & 1) == 0)
  {
    v84 = 7;
  }

  if (v73)
  {
    v85 = v84;
  }

  else
  {
    v85 = v83;
  }

  v15 = v109;
  v14 = v110;
  if (v85)
  {
    v50 = v123;
    v86 = db_delete_field(v116, v118, v123);
    if ((v86 & 0xD) != 0)
    {
      LODWORD(Count) = v86;
    }

    else
    {
      LODWORD(Count) = v85;
    }

LABEL_93:
    v87 = *__error();
    v88 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      v89 = **v118;
      LODWORD(v136[0]) = 136316162;
      *(v136 + 4) = "setOneLocalizedFieldWithFlags";
      WORD2(v136[1]) = 1024;
      *(&v136[1] + 6) = 290;
      WORD1(v136[2]) = 1024;
      HIDWORD(v136[2]) = Count;
      v137 = 2080;
      v138 = v50;
      v139 = 2048;
      v140 = v89;
      _os_log_error_impl(&dword_1C278D000, v88, OS_LOG_TYPE_ERROR, "%s:%d: Error:%d setting field:%s for oid:%lld", v136, 0x2Cu);
    }

    *__error() = v87;
  }

LABEL_96:
  v128 = v14;
  if (v129 != v15)
  {
    free(v129);
  }
}

uint64_t unicode_recursive_decompose(unsigned int a1, _WORD *a2, uint64_t a3)
{
  if ((a1 + 1201) < 0x571u)
  {
LABEL_7:
    v7 = 0;
  }

  else
  {
    v3 = &__CFUniCharDecompositionTable;
    v4 = &unk_1C2BFDF1C;
    while (1)
    {
      while (1)
      {
        v5 = &v3[2 * ((v4 - v3) >> 3)];
        v6 = *v5;
        if (v6 <= a1)
        {
          break;
        }

        v4 = v5 - 2;
        if (v3 > v5 - 2)
        {
          goto LABEL_7;
        }
      }

      if (v6 >= a1)
      {
        break;
      }

      v3 = v5 + 2;
      if (v5 + 2 > v4)
      {
        goto LABEL_7;
      }
    }

    v7 = v5[1];
  }

  v8 = (v7 >> 12) & 7;
  v26 = v7 & 0xFFF;
  v9 = v8 - 1;
  if (v8 == 1)
  {
    v10 = &v26;
  }

  else
  {
    v10 = (&__CFUniCharMultipleDecompositionTable + 2 * (v7 & 0xFFF));
  }

  if ((v7 & 0x8000) != 0)
  {
    v12 = a2;
    result = unicode_recursive_decompose(*v10, a2, a3);
    if (!result)
    {
      return result;
    }

    ++v10;
    a2 = &v12[result];
    v8 = v9;
    result = result + v9;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    result = v8;
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 4 || (a2 - v10) < 0x20)
  {
    goto LABEL_30;
  }

  v13 = v8;
  if (v8 >= 0x10)
  {
    v14 = v8 & 0xFFFFFFF0;
    v15 = a2 + 8;
    v16 = (v10 + 8);
    v17 = v14;
    do
    {
      v18 = *v16;
      *(v15 - 1) = *(v16 - 1);
      *v15 = v18;
      v15 += 2;
      v16 += 2;
      v17 -= 16;
    }

    while (v17);
    if (v14 == v8)
    {
      return result;
    }

    if ((v8 & 0xC) == 0)
    {
      a2 += v14;
      v8 = ~v14;
      v10 += v14;
      do
      {
LABEL_30:
        v25 = *v10++;
        *a2++ = v25;
        --v8;
      }

      while (v8);
      return result;
    }
  }

  else
  {
    v14 = 0;
  }

  v19 = 2 * (v8 & 0xFFFFFFFC);
  v8 -= v8 & 0xFFFFFFFC;
  v20 = v14 - (v13 & 0xFFFFFFFC);
  v21 = v14;
  v22 = &a2[v14];
  v23 = &v10[v21];
  do
  {
    v24 = *v23;
    v23 += 4;
    *v22++ = v24;
    v20 += 4;
  }

  while (v20);
  if ((v13 & 0xFFFFFFFC) != v13)
  {
    v10 = (v10 + v19);
    a2 = (a2 + v19);
    goto LABEL_30;
  }

  return result;
}

void setDatastoreLocalizedAttributes(int a1, int a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, CFDictionaryRef theDict, int a8, char a9)
{
  v21 = *MEMORY[0x1E69E9840];
  if (setDatastoreLocalizedAttributes::onceToken != -1)
  {
    dispatch_once(&setDatastoreLocalizedAttributes::onceToken, &__block_literal_global_21_457);
  }

  if (!a6)
  {
    a6 = gDefaultSchema;
  }

  v17 = 0uLL;
  v18 = 0;
  if (a6)
  {
    v19 = xmmword_1E8190DD8;
    v20 = 0;
    _MDPlistContainerGetPlistObjectAtKeyArray();
  }

  v14 = v17;
  v19 = v17;
  v20 = v18;
  if (a5 >= 1)
  {
    do
    {
      v15 = *a3;
      value = 0;
      if (!theDict || !CFDictionaryGetValueIfPresent(theDict, v15, &value))
      {
        if (a6)
        {
          v17 = v19;
          v18 = v20;
          getFlagsFromAttributes(v19);
        }
      }

      setOneLocalizedFieldWithFlags(v14);
      a4 += 8;
      ++a3;
      --a5;
    }

    while (a5);
  }
}

uint64_t utf8_decodestr(unsigned __int8 *a1, unint64_t a2, _WORD *a3, void *a4, uint64_t a5, _DWORD *a6, uint64_t a7)
{
  v41[2] = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (a2)
  {
    v7 = a3 + a5;
    v8 = a3;
    v9 = a1;
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      if (!v11)
      {
LABEL_57:
        result = 0;
        goto LABEL_60;
      }

      --a2;
      if ((v10 & 0x80) == 0)
      {
        break;
      }

      v13 = utf_extrabytes[v10 >> 3];
      v14 = a2 >= v13;
      a2 -= v13;
      if (!v14)
      {
        goto LABEL_58;
      }

      v15 = utf_extrabytes[v10 >> 3];
      if (v15 == 3)
      {
        v25 = *v9;
        if ((v25 & 0xC0) != 0x80 || (v26 = a1[2], (v26 & 0xC0) != 0x80) || (v27 = a1[3], (v27 & 0xC0) != 0x80) || (v28 = v27 + (((v25 << 6) + (v10 << 12) + v26) << 6) - 63512704, v28 >> 20))
        {
LABEL_58:
          result = 22;
          goto LABEL_60;
        }

        v29 = (v28 >> 10) | 0xFFFFD800;
        if (a7)
        {
          *v8 = bswap32(v29) >> 16;
          v30 = v8 + 1;
          if ((v8 + 1) >= v7)
          {
LABEL_61:
            result = 63;
            v8 = v30;
            goto LABEL_60;
          }

          v31 = __rev16(v28 & 0x3FF | 0xDC00);
        }

        else
        {
          *v8 = v29;
          v30 = v8 + 1;
          if ((v8 + 1) >= v7)
          {
            goto LABEL_61;
          }

          v31 = v28 & 0x3FF | 0xDC00;
        }

        v9 = a1 + 4;
        v8[1] = v31;
        v8 += 2;
      }

      else
      {
        if (v15 == 2)
        {
          v17 = *v9;
          if ((v17 & 0xC0) != 0x80)
          {
            goto LABEL_58;
          }

          v18 = a1[2];
          if ((v18 & 0xC0) != 0x80)
          {
            goto LABEL_58;
          }

          v19 = (v17 << 6) + (v10 << 12) + v18;
          LODWORD(v10) = v19 - 925824;
          if ((v19 - 925824) < 0x800)
          {
            goto LABEL_58;
          }

          v9 = a1 + 3;
          if (v10 >> 11 >= 0x1B)
          {
            result = 22;
            if (v10 < 0xE000 || (v19 & 0x3FFFFE) == 0xF207E)
            {
              goto LABEL_60;
            }
          }
        }

        else
        {
          if (v15 != 1)
          {
            goto LABEL_58;
          }

          v16 = *v9;
          if ((v16 & 0xC0) != 0x80)
          {
            goto LABEL_58;
          }

          LODWORD(v10) = v16 + (v10 << 6) - 12416;
          if (v10 < 0x80)
          {
            goto LABEL_58;
          }

          v9 = a1 + 2;
        }

        if ((a7 & 4) == 0 || v10 < 0xC0u || (v21 = __CFUniCharDecomposableBitmap[BYTE1(v10)]) == 0 || v21 != 255 && ((__CFUniCharDecomposableBitmap[32 * v21 + 224 + (v10 >> 3)] >> (v10 & 7)) & 1) == 0)
        {
          if (v10 == 9216)
          {
            LODWORD(v10) = 0;
          }

          if (v8 >= v7)
          {
            goto LABEL_59;
          }

          goto LABEL_6;
        }

        v41[0] = 0;
        v41[1] = 0;
        v22 = v10 + 21504;
        if ((v10 + 21504) <= 0x2BA4u)
        {
          v23 = (v10 + 21504) % 0x1Cu;
          LOWORD(v41[0]) = ((28533 * v22) >> 24) | 0x1100;
          WORD1(v41[0]) = v22 % 0x24Cu / 0x1C + 4449;
          if (v22 % 0x1Cu)
          {
            WORD2(v41[0]) = v23 + 4519;
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

LABEL_50:
          v36 = v24;
          v37 = v41;
          while (1)
          {
            v39 = *v37++;
            v38 = v39;
            v40 = bswap32(v39) >> 16;
            if (a7)
            {
              v38 = v40;
            }

            *v8++ = v38;
            if (v8 >= v7)
            {
              break;
            }

            if (!--v36)
            {
              goto LABEL_9;
            }
          }

LABEL_59:
          result = 63;
          goto LABEL_60;
        }

        v32 = a2;
        v33 = a4;
        v34 = a3;
        v35 = a7;
        v24 = unicode_recursive_decompose(v10, v41, a3);
        a2 = v32;
        a7 = v35;
        a3 = v34;
        a4 = v33;
        if (v24 >= 1)
        {
          goto LABEL_50;
        }
      }

LABEL_9:
      a1 = v9;
      if (!a2)
      {
        goto LABEL_57;
      }
    }

    if (v8 >= v7)
    {
      goto LABEL_59;
    }

LABEL_6:
    v12 = bswap32(v10) >> 16;
    if (a7)
    {
      LOWORD(v10) = v12;
    }

    *v8++ = v10;
    goto LABEL_9;
  }

  result = 0;
  v8 = a3;
LABEL_60:
  *a4 = v8 - a3;
  return result;
}

CFStringRef SICreateStringByRemovingWhitespaceFromTextContent(const __CFAllocator *a1, CFStringRef theString, CFIndex a3)
{
  result = 0;
  v69 = *MEMORY[0x1E69E9840];
  if (!theString)
  {
    return result;
  }

  if (*MEMORY[0x1E695E738] == theString)
  {
    return result;
  }

  result = CFStringGetLength(theString);
  if (!result)
  {
    return result;
  }

  v7 = result;
  memset(buffer, 0, sizeof(buffer));
  v62 = theString;
  v65 = 0;
  v66 = result;
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v63 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  }

  v59 = a1;
  v67 = 0;
  v68 = 0;
  v64 = CStringPtr;
  v60 = theString;
  if (v7 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 64;
    while (1)
    {
      if (v13 >= 4)
      {
        v15 = 4;
      }

      else
      {
        v15 = v13;
      }

      v16 = v66;
      if (v66 <= v13)
      {
        goto LABEL_40;
      }

      if (v63)
      {
        v17 = &v63[v65];
      }

      else
      {
        if (v64)
        {
          v18 = v64[v65 + v13];
          goto LABEL_17;
        }

        if (v68 <= v13 || v12 > v13)
        {
          v24 = v15 + v11;
          v25 = v14 - v15;
          v26 = v13 - v15;
          v27 = (v26 + 64);
          if (v26 + 64 >= v66)
          {
            v27 = v66;
          }

          v67 = v26;
          v68 = v27;
          if (v66 >= v25)
          {
            v16 = v25;
          }

          v70.location = v26 + v65;
          v70.length = v16 + v24;
          CFStringGetCharacters(v62, v70, buffer);
          v12 = v67;
        }

        v17 = buffer - v12;
      }

      v18 = v17[v13];
LABEL_17:
      v19 = v18;
      v20 = (1 << v18) & 0x100002600;
      v22 = v19 <= 0x20 && v20 != 0 || v19 == 65532;
      if (!v22 && v19 != 160)
      {
        goto LABEL_40;
      }

      ++v13;
      --v11;
      ++v14;
      if (v7 == v13)
      {
        v13 = v7;
        goto LABEL_40;
      }
    }
  }

  v13 = 0;
LABEL_40:
  MEMORY[0x1EEE9AC00](v9);
  v29 = v58 - ((v28 + 21) & 0xFFFFFFFFFFFFFFF0);
  bzero(v29, v28 + 6);
  if (v13 >= v7)
  {
    return 0;
  }

  v58[1] = v58;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = -v13;
  v34 = v13 + 64;
  do
  {
    if (v13 >= 4)
    {
      v35 = 4;
    }

    else
    {
      v35 = v13;
    }

    if (v13 >= 3)
    {
      v36 = 3;
    }

    else
    {
      v36 = v13;
    }

    v37 = v66;
    if (v66 <= v13)
    {
      v39 = 0;
LABEL_53:
      if (v30)
      {
        v41 = v32 + 1;
        *&v29[2 * v32] = 8200;
        v40 = 0;
        if (v30 >= 2)
        {
          v30 = 0;
          v32 += 2;
          *&v29[2 * v41] = 8200;
        }

        else
        {
          v30 = 0;
          ++v32;
        }
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_88;
    }

    if (v63)
    {
      v38 = &v63[v65];
LABEL_51:
      v39 = v38[v13];
      goto LABEL_59;
    }

    if (!v64)
    {
      if (v68 <= v13 || (v47 = v67, v67 > v13))
      {
        v48 = v35 + v33;
        v49 = v34 - v35;
        v50 = v13 - v35;
        v51 = (v50 + 64);
        if (v50 + 64 >= v66)
        {
          v51 = v66;
        }

        v67 = v50;
        v68 = v51;
        if (v66 >= v49)
        {
          v37 = v49;
        }

        v71.location = v50 + v65;
        v71.length = v37 + v48;
        CFStringGetCharacters(v62, v71, buffer);
        v47 = v67;
      }

      v38 = buffer - v47;
      goto LABEL_51;
    }

    v39 = v64[v65 + v13];
LABEL_59:
    if (v39 > 0x1Fu)
    {
      if (v39 != 8204)
      {
        if (v39 != 160 && v39 != 32)
        {
          goto LABEL_53;
        }

LABEL_70:
        v40 = 1;
        if (v31)
        {
          v31 = 1;
          goto LABEL_89;
        }

        v39 = 32;
LABEL_88:
        *&v29[2 * v32++] = v39;
        v31 = v40;
        goto LABEL_89;
      }

      if (v31 & 1 | (v30 != 0))
      {
        goto LABEL_89;
      }

      v43 = v13 + 1;
      if (v13 + 1 >= v7)
      {
        v31 = 0;
        v30 = 0;
        goto LABEL_89;
      }

      v44 = v66;
      if (v66 <= v43)
      {
        v40 = 0;
        v30 = 0;
        v39 = 8204;
        goto LABEL_88;
      }

      if (v63)
      {
        v45 = &v63[v65];
      }

      else
      {
        if (v64)
        {
          v46 = v64[v65 + 1 + v13];
          goto LABEL_96;
        }

        if (v68 <= v43 || (v52 = v67, v67 > v43))
        {
          v53 = v13 - v36 + 64;
          if (v53 >= v66)
          {
            v53 = v66;
          }

          v67 = v13 - v36;
          v68 = v53;
          if (v66 >= v34 - v36)
          {
            v44 = (v34 - v36);
          }

          v72.location = v13 - v36 + v65;
          v72.length = v44 + v36 + v33;
          CFStringGetCharacters(v62, v72, buffer);
          v52 = v67;
        }

        v45 = buffer - v52;
      }

      v46 = v45[v13 + 1];
LABEL_96:
      v40 = 0;
      if (v46 <= 0x20u && ((1 << v46) & 0x100002600) != 0 || v46 == 160 || v46 == 8204)
      {
        v31 = 0;
        v30 = 0;
        goto LABEL_89;
      }

      v39 = 8204;
      v30 = 0;
      goto LABEL_88;
    }

    if (v39 == 9)
    {
      goto LABEL_70;
    }

    if (v39 != 10 && v39 != 13)
    {
      goto LABEL_53;
    }

    v31 = 0;
    ++v30;
LABEL_89:
    if (++v13 >= v7)
    {
      break;
    }

    --v33;
    ++v34;
  }

  while (v32 < a3);
  if (v32 == v7)
  {
    v54 = v60;
    CFRetain(v60);
    return v54;
  }

  if (v13 < v7)
  {
    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v60, v13 - 1);
    v56 = RangeOfComposedCharactersAtIndex.location - v13;
    if (RangeOfComposedCharactersAtIndex.location > v13 || RangeOfComposedCharactersAtIndex.length < 2)
    {
      v56 = 0;
    }

    v32 += v56;
  }

  if (v32 >= 1)
  {
    return CFStringCreateWithCharacters(v59, v29, v32);
  }

  return 0;
}

uint64_t _data_map32_wrlock(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1461))
  {
    return 0;
  }

  v1 = _db_write_lock(a1);
  if (v1)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v1;
      if (v1 == -1)
      {
        v5 = *__error();
      }

      v6 = 136315650;
      v7 = "_data_map32_wrlock";
      v8 = 1024;
      v9 = 290;
      v10 = 1024;
      v11 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: _data_map32_wrlock error %d", &v6, 0x18u);
    }

    *__error() = v3;
  }

  return v1;
}

uint64_t pushContentTermData(uint64_t a1, unsigned int *a2, unsigned int a3, int a4, unsigned int a5, char a6, uint64_t a7)
{
  if (a6)
  {
    v20 = (a1 + 248);
    v21 = atomic_load((a1 + 248));
    v22 = *(a1 + 252);
    if (v21 >= v22)
    {
      v23 = 2 * v22;
      if (!v22)
      {
        v23 = 0x10000;
      }

      *(a1 + 252) = v23;
      v24 = a2;
      v25 = a3;
      v26 = my_vm_reallocate((a1 + 240), 32 * v22, 32 * v23, 0xF6u, *(a1 + 104));
      a2 = v24;
      a3 = v25;
      if (v26)
      {
        v56 = __si_assert_copy_extra_332();
        v57 = v56;
        v58 = "";
        if (v56)
        {
          v58 = v56;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 3433, "0 == kr", v58);
LABEL_48:
        v51 = v57;
        goto LABEL_37;
      }
    }

    result = 1;
    add = atomic_fetch_add(v20, 1u);
    v28 = *(a1 + 240) + 32 * add;
    *v28 = a5;
    *(v28 + 4) = 0x100000000;
    *(v28 + 16) = 0;
    *(v28 + 24) = a3;
    a2[2] = a3;
    a2[3] = add;
    a2[1] = 1;
    LODWORD(v28) = atomic_load(v20);
    if (add >= v28)
    {
      v29 = __si_assert_copy_extra_332();
      v30 = v29;
      v31 = "";
      if (v29)
      {
        v31 = v29;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 3446, "termUpdateList->termId < positions->next_term_id", v31);
      free(v30);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  else
  {
    v9 = a2[2];
    v10 = *(a1 + 240) + 32 * a2[3];
    if (v9 == a3)
    {
      ++a2[1];
      v11 = (a1 + 264);
      if (atomic_load((a1 + 264)))
      {
        v13 = atomic_load(v11);
        atomic_load(v11);
        v14 = *(a1 + 256);
        v15 = atomic_load(v11);
        atomic_store(*(v14 + 8 * v15 + 4), v11);
        if (v13)
        {
LABEL_5:
          v16 = (*(a1 + 256) + 8 * v13);
LABEL_8:
          if (*v10 < a5)
          {
            result = 0;
            v18 = *(v10 + 4);
            v19 = *(v10 + 8);
            *v16 = *v10;
            v16[1] = v18;
            *v10 = a5;
            *(v10 + 4) = v13;
            *(v10 + 8) = v19 + 1;
            return result;
          }

          v40 = __si_assert_copy_extra_332();
          v41 = v40;
          if (v40)
          {
            v42 = v40;
          }

          else
          {
            v42 = "";
          }

          v43 = *(a1 + 272);
          v44 = atomic_load((a1 + 268));
          v45 = *v10;
          v46 = *(v10 + 8);
          v47 = *(v10 + 24);
          v48 = *(v10 + 16);
          v49 = __si_error_str_key;
          if (__si_error_str_key)
          {
            v49 = pthread_getspecific(__si_error_str_key);
          }

          if (v49)
          {
            v50 = v49;
          }

          else
          {
            v50 = "";
          }

          __message_assert("%s:%u: failed assertion '%s' %s ref:%d sz:%d cnt:%d pos:%d pos_prev:%d freq:%d doc:%d off:%llx %s", "CIPositions.h", 207, "position > node->info.position", v42, v13, v43, v44, a5, v45, v46, v47, v48, v50);
          v51 = v41;
LABEL_37:
          free(v51);
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

      else
      {
        v13 = positionInfoAlloc(a1 + 240, 8uLL);
        if (v13)
        {
          goto LABEL_5;
        }
      }

      v16 = 0;
      goto LABEL_8;
    }

    if (v9 == a4 && *(v10 + 8))
    {
      v32 = 1;
      v33 = a3;
      a2[1] = 1;
      a2[2] = a3;
      v34 = *(v10 + 8);
      if (v34 < 2)
      {
        goto LABEL_44;
      }

      v35 = 0;
      v36 = v10;
      while (1)
      {
        v37 = *(v36 + 4);
        if (!v37)
        {
          break;
        }

        v38 = *(a1 + 256);
        v36 = v38 + 8 * v37;
        *(v10 + 4) = *(v36 + 4);
        if (v35)
        {
          v39 = atomic_load((a1 + 264));
          *(v38 + 8 * v35 + 4) = v39;
          atomic_store(v35, (a1 + 264));
          v34 = *(v10 + 8);
        }

        ++v32;
        v35 = v37;
        if (v32 >= v34)
        {
          v54 = *(a1 + 256);
          v55 = atomic_load((a1 + 264));
          *(v54 + 8 * v37 + 4) = v55;
          atomic_store(v37, (a1 + 264));
          goto LABEL_44;
        }
      }

      v59 = __si_assert_copy_extra_332();
      v57 = v59;
      v60 = "";
      if (v59)
      {
        v60 = v59;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 3391, "info", v60);
      goto LABEL_48;
    }

    v33 = a3;
    addToExistingTermUpdateList(a1, a2, a3, 0, 1);
    if (*(v10 + 8))
    {
      CIPositionNodeFinalizeDocument(v53);
    }

LABEL_44:
    *v10 = a5;
    result = 1;
    *(v10 + 8) = 1;
    *(v10 + 24) = v33;
  }

  return result;
}

unsigned int *CompactPositionsList(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, _DWORD *a6, unsigned int a7, unsigned int a8, __n128 a9, uint64_t *a10, uint64_t a11)
{
  v11 = a8;
  v12 = a7;
  v78 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (!a8)
  {
    _X22 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0;
    goto LABEL_15;
  }

  _X22 = (*(a11 + 16) + 8 * a8);
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a2 > 0x7F)
  {
    if (a2 >> 14)
    {
      if (a2 >> 21)
      {
        if (a2 >> 28)
        {
          *a1 = -16;
          *(a1 + 1) = a2;
          v18 = 5;
        }

        else
        {
          *a1 = HIBYTE(a2) | 0xE0;
          *(a1 + 1) = BYTE2(a2);
          *(a1 + 2) = BYTE1(a2);
          *(a1 + 3) = a2;
          v18 = 4;
        }
      }

      else
      {
        *a1 = BYTE2(a2) | 0xC0;
        *(a1 + 1) = BYTE1(a2);
        *(a1 + 2) = a2;
        v18 = 3;
      }
    }

    else
    {
      *a1 = BYTE1(a2) | 0x80;
      *(a1 + 1) = a2;
      v18 = 2;
    }
  }

  else
  {
    *a1 = a2;
    v18 = 1;
  }

  *a10 = v18;
LABEL_15:
  if (a7 > 0x7F)
  {
    if (a7 >> 14)
    {
      if (a7 >> 21)
      {
        if (a7 >> 28)
        {
          v23 = a1 + v18;
          *v23 = -16;
          *(v23 + 1) = a7;
          v19 = v18 + 5;
        }

        else
        {
          v22 = (a1 + v18);
          *v22 = HIBYTE(a7) | 0xE0;
          v22[1] = BYTE2(a7);
          v22[2] = BYTE1(a7);
          v19 = v18 + 4;
          v22[3] = a7;
        }
      }

      else
      {
        v21 = (a1 + v18);
        *v21 = BYTE2(a7) | 0xC0;
        v21[1] = BYTE1(a7);
        v19 = v18 + 3;
        v21[2] = a7;
      }
    }

    else
    {
      v20 = (a1 + v18);
      *v20 = BYTE1(a7) | 0x80;
      v19 = v18 + 2;
      v20[1] = a7;
    }
  }

  else
  {
    v19 = v18 + 1;
    *(a1 + v18) = a7;
  }

  *a10 = v19;
  v24 = 0x1EBF46000uLL;
  if (dword_1EBF46AF4 >= 5)
  {
    v75 = a6;
    v72 = *__error();
    v59 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v77 = a2;
      _os_log_impl(&dword_1C278D000, v59, OS_LOG_TYPE_DEFAULT, "DocID: %d", buf, 8u);
    }

    *__error() = v72;
    v24 = 0x1EBF46000uLL;
    a6 = v75;
    if (dword_1EBF46AF4 >= 5)
    {
      v60 = *__error();
      v61 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v77 = v12;
        _os_log_impl(&dword_1C278D000, v61, OS_LOG_TYPE_DEFAULT, "Start pos: %d", buf, 8u);
      }

      *__error() = v60;
      a6 = v75;
      v24 = 0x1EBF46000;
    }
  }

  if (a4)
  {
    if (a3 >= 2)
    {
      v25 = 1;
      v26 = &dword_1C278D000;
      a9.n128_u64[0] = 67109120;
      do
      {
        v27 = v12;
        v12 = *_X22;
        v28 = v27 - *_X22;
        if (*(v24 + 2804) >= 5)
        {
          v70 = a9;
          v45 = v26;
          v73 = a6;
          v66 = *__error();
          log = _SILogForLogForCategory(10);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v70.n128_u32[0];
            v77 = v12;
            _os_log_impl(v45, log, OS_LOG_TYPE_DEFAULT, "Next: %d", buf, 8u);
          }

          *__error() = v66;
          v24 = 0x1EBF46000uLL;
          a6 = v73;
          v26 = v45;
          a9 = v70;
          if (dword_1EBF46AF4 >= 5)
          {
            v67 = *__error();
            loga = _SILogForLogForCategory(10);
            if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v70.n128_u32[0];
              v77 = v28;
              _os_log_impl(v45, loga, OS_LOG_TYPE_DEFAULT, "Delta: %d", buf, 8u);
            }

            *__error() = v67;
            a6 = v73;
            v24 = 0x1EBF46000;
            v26 = v45;
            a9 = v70;
          }
        }

        v29 = _X22[1];
        if (v29)
        {
          _X22 = (*(a11 + 16) + 8 * v29);
        }

        else
        {
          _X22 = 0;
        }

        __asm { PRFM            #0, [X22] }

        v35 = *a10;
        if (v28 > 0x7F)
        {
          if (v28 >> 14)
          {
            if (v28 >> 21)
            {
              if (v28 >> 28)
              {
                v40 = a1 + v35;
                *v40 = -16;
                *(v40 + 1) = v28;
                v36 = v35 + 5;
              }

              else
              {
                v39 = (a1 + v35);
                *v39 = HIBYTE(v28) | 0xE0;
                v39[1] = BYTE2(v28);
                v39[2] = BYTE1(v28);
                v36 = v35 + 4;
                v39[3] = v28;
              }
            }

            else
            {
              v38 = (a1 + v35);
              *v38 = BYTE2(v28) | 0xC0;
              v38[1] = BYTE1(v28);
              v36 = v35 + 3;
              v38[2] = v28;
            }
          }

          else
          {
            v37 = (a1 + v35);
            *v37 = BYTE1(v28) | 0x80;
            v36 = v35 + 2;
            v37[1] = v28;
          }
        }

        else
        {
          v36 = v35 + 1;
          *(a1 + v35) = v28;
        }

        *a10 = v36;
        if (v11)
        {
          v41 = *(a11 + 16);
          v42 = atomic_load((a11 + 24));
          v43 = v41 + 8 * v11;
          v44 = v42;
          do
          {
            *(v43 + 4) = v42;
            atomic_compare_exchange_strong((a11 + 24), &v44, v11);
            _ZF = v44 == v42;
            v42 = v44;
          }

          while (!_ZF);
        }

        ++v25;
        v11 = v29;
      }

      while (v25 != a3);
      goto LABEL_78;
    }

LABEL_77:
    LODWORD(v29) = v11;
    goto LABEL_78;
  }

  if (a3 < 2)
  {
    goto LABEL_77;
  }

  v46 = *(a11 + 16);
  v47 = *(v24 + 2804);
  v48 = a3 - 1;
  a9.n128_u64[0] = 67109120;
  do
  {
    v49 = v12;
    v12 = *_X22;
    v29 = _X22[1];
    if (v29)
    {
      _X22 = (v46 + 8 * v29);
    }

    else
    {
      _X22 = 0;
    }

    __asm { PRFM            #0, [X22] }

    v51 = v49 - v12;
    if (v47 >= 5)
    {
      v71 = a9;
      v74 = a6;
      v68 = *__error();
      logb = _SILogForLogForCategory(10);
      if (os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v71.n128_u32[0];
        v77 = v12;
        _os_log_impl(&dword_1C278D000, logb, OS_LOG_TYPE_DEFAULT, "Next: %d", buf, 8u);
      }

      *__error() = v68;
      v47 = dword_1EBF46AF4;
      if (dword_1EBF46AF4 >= 5)
      {
        v69 = *__error();
        logc = _SILogForLogForCategory(10);
        if (os_log_type_enabled(logc, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v71.n128_u32[0];
          v77 = v51;
          _os_log_impl(&dword_1C278D000, logc, OS_LOG_TYPE_DEFAULT, "Delta: %d", buf, 8u);
        }

        *__error() = v69;
        v47 = dword_1EBF46AF4;
      }

      a6 = v74;
      a9 = v71;
    }

    v52 = *a10;
    if (v51 > 0x7F)
    {
      if (v51 >> 14)
      {
        if (v51 >> 21)
        {
          if (v51 >> 28)
          {
            v57 = a1 + v52;
            *v57 = -16;
            *(v57 + 1) = v51;
            v53 = v52 + 5;
          }

          else
          {
            v56 = (a1 + v52);
            *v56 = HIBYTE(v51) | 0xE0;
            v56[1] = BYTE2(v51);
            v56[2] = BYTE1(v51);
            v53 = v52 + 4;
            v56[3] = v51;
          }
        }

        else
        {
          v55 = (a1 + v52);
          *v55 = BYTE2(v51) | 0xC0;
          v55[1] = BYTE1(v51);
          v53 = v52 + 3;
          v55[2] = v51;
        }
      }

      else
      {
        v54 = (a1 + v52);
        *v54 = BYTE1(v51) | 0x80;
        v53 = v52 + 2;
        v54[1] = v51;
      }
    }

    else
    {
      v53 = v52 + 1;
      *(a1 + v52) = v51;
    }

    *a10 = v53;
    --v48;
  }

  while (v48);
LABEL_78:
  *a6 = v29;
  return _X22;
}

CFStringRef copyName(const char *a1)
{
  v2 = strlen(a1);
  v3 = kCIQueryZoneAllocator;

  return CFStringCreateWithBytes(v3, a1, v2, 0x8000100u, 0);
}

void generateLocalPartsWithNewFieldName(uint64_t a1, const void *a2, const __CFString *cf)
{
  v6 = CFGetTypeID(cf);
  if (v6 != CFArrayGetTypeID())
  {
    v19 = copyLocalPartFromEmailAddress(cf);
    if (!v19)
    {
      return;
    }

    v18 = v19;
    v16 = a1;
    v17 = a2;
    goto LABEL_11;
  }

  v7 = *MEMORY[0x1E695E480];
  Count = CFArrayGetCount(cf);
  Mutable = CFArrayCreateMutable(v7, Count, MEMORY[0x1E695E9C0]);
  v10 = CFArrayGetCount(cf);
  if (v10 >= 1)
  {
    v11 = v10;
    for (i = 0; i != v11; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
      v14 = copyLocalPartFromEmailAddress(ValueAtIndex);
      if (v14)
      {
        v15 = v14;
        CFArrayAppendValue(Mutable, v14);
        CFRelease(v15);
      }
    }
  }

  if (CFArrayGetCount(Mutable))
  {
    v16 = a1;
    v17 = a2;
    v18 = Mutable;
LABEL_11:

    InsertPreProcessContextAddAttr(v16, v17, v18, 0);
    return;
  }

  CFRelease(Mutable);
}

CFStringRef copyLocalPartFromEmailAddress(const __CFString *a1)
{
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  memset(v20, 0, sizeof(v20));
  Length = CFStringGetLength(a1);
  theString = a1;
  v24 = 0;
  v25 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v22 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v26 = 0;
  v27 = 0;
  v23 = CStringPtr;
  if (Length < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  for (i = 64; ; ++i)
  {
    if (v8 >= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = v8;
    }

    v11 = v25;
    if (v25 <= v8)
    {
      goto LABEL_16;
    }

    if (v22)
    {
      v12 = &v22[v24];
LABEL_12:
      v13 = v12[v8];
      goto LABEL_15;
    }

    if (!v23)
    {
      if (v27 <= v8 || v7 > v8)
      {
        v15 = v10 + v6;
        v16 = i - v10;
        v17 = v8 - v10;
        v18 = v17 + 64;
        if (v17 + 64 >= v25)
        {
          v18 = v25;
        }

        v26 = v17;
        v27 = v18;
        if (v25 >= v16)
        {
          v11 = v16;
        }

        v28.location = v17 + v24;
        v28.length = v11 + v15;
        CFStringGetCharacters(theString, v28, v20);
        v7 = v26;
      }

      v12 = v20 - v7;
      goto LABEL_12;
    }

    v13 = v23[v24 + v8];
LABEL_15:
    if (v13 == 64)
    {
      break;
    }

LABEL_16:
    ++v8;
    --v6;
    if (Length == v8)
    {
      return 0;
    }
  }

  if (v8)
  {
    v29.location = 0;
    v29.length = v8;
    return CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v29);
  }

  return 0;
}

unint64_t data_map_id_insert(uint64_t a1, char *a2, unint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 216);
  if (v7 <= 842150449)
  {
    if (v7 == -572662307)
    {
      if (*(a1 + 433) == 1 && (*(a1 + 432) & 1) == 0)
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      v6 = data_map_id_insert(*(a1 + 440), a2, a3);
      v11 = (*(**(a1 + 448) + 472))();
      pthread_rwlock_unlock((a1 + 224));
      if (v6 != v11)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v17 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v18 = 1024;
          *v19 = 417;
          *&v19[4] = 2080;
          *&v19[6] = "data_map_double_id_insert";
          v20 = 2080;
          v21 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v17 = v6;
          v18 = 2048;
          *v19 = v11;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v12 = __si_assert_copy_extra_332();
        v13 = v12;
        v14 = "";
        if (v12)
        {
          v14 = v12;
        }

        __message_assert(v12, "data_map_double.m", 417, "output == output_new", v14);
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
    }

    else if (v7 == -270471200)
    {
      v8 = *(a1 + 220);

      return _data_map_ext_get_data_id(a1, v8, a2, a3, 1);
    }

    return v6;
  }

  if (v7 != 1684300900)
  {
    if (v7 == 842150450)
    {
      return _data_map32_get_data_id(a1, *(a1 + 224), a2, a3, 1);
    }

    return v6;
  }

  v10 = *(a1 + 220);

  return _data_map64_get_data_id(a1, v10, a2, a3, 1);
}

void SIActivityJournalDMAdd(os_unfair_lock_s *a1, unsigned int a2, unsigned int a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(&v20, 0x220uLL);
    if (a2 > 0x7F)
    {
      if (a2 >> 14)
      {
        if (a2 >> 21)
        {
          if (a2 >> 28)
          {
            v20 = -16;
            v21 = HIBYTE(a2);
            v22 = BYTE2(a2);
            v23 = BYTE1(a2);
            v12 = 5;
            v24 = a2;
          }

          else
          {
            v20 = HIBYTE(a2) | 0xE0;
            v21 = BYTE2(a2);
            v22 = BYTE1(a2);
            v23 = a2;
            v12 = 4;
          }
        }

        else
        {
          v20 = BYTE2(a2) | 0xC0;
          v21 = BYTE1(a2);
          v22 = a2;
          v12 = 3;
        }
      }

      else
      {
        v20 = BYTE1(a2) | 0x80;
        v21 = a2;
        v12 = 2;
      }
    }

    else
    {
      v20 = a2;
      v12 = 1;
    }

    v13 = v2_writeVInt64_11288(&v20, v12, a3);
    v14 = v2_writeVInt64_11288(&v20, v13, a4);
    v15 = v2_writeVInt64_11288(&v20, v14, a5);
    v16 = v2_writeVInt64_11288(&v20, v15, a6);
    if ((v16 - 511) >= 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = 511 - v16;
    }

    v18 = v2_writeVInt64_11288(&v20, v16, v17);
    v19 = v18;
    if (v17)
    {
      memcpy(&v20 + v18, 0, 0xFFFFFFFFFFFFFFFFLL);
      *(&v20 + v19 - 1) = 0;
    }

    os_unfair_lock_lock(a1 + 8);
    activityJournalWrite(a1, 58, &v20, v19);
    os_unfair_lock_unlock(a1 + 8);
  }
}

uint64_t getContentTokensCallback(void *a1, uint64_t a2, int a3, void *a4)
{
  v5 = a3;
  v107 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (*(a4 + 76))
    {
      return 0;
    }

    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *(a4 + 76) = 0;
  bzero(&v105, 0x414uLL);
  v9 = 2 * a2;
  v10 = strHash(2 * a2, a1, v8);
  v101 = v10;
  if (a2 > 16)
  {
    v102 = 0;
    v23 = 0;
  }

  else
  {
    v11 = v5;
    v12 = a4[1];
    v13 = *v12 + 1;
    *v12 = v13;
    v14 = v10;
    v15 = v12[v10 + 3586];
    v102 = v10;
    if (v15 == v10)
    {
      v16 = &v12[14 * v10 + 2];
      if ((*(v16 + 36) & 0xFFFFFF) == v8 && *(v16 + 32) == a2)
      {
        v17 = v12 + 2;
        v18 = memcmp(a1, &v12[14 * v10 + 2], 2 * a2);
        v14 = v102;
        if (!v18)
        {
          *(v16 + 40) = v13;
          if (v11)
          {
            pushTermData(*a4, *&v17[14 * v14 + 12], *(a4 + 4), *(a4 + 5), 0, 0, 1);
            return 0;
          }

          v62 = *(a4 + 4);
          if (v62)
          {
            v63 = *a4;
            v64 = *&v17[14 * v14 + 12];
            v65 = *(a4 + 5);
            v66 = *(a4 + 6) + 1;
            *(a4 + 6) = v66;
            v67 = v14;
            if (pushContentTermData(v63, v64, v62, v65, v66, 0, *(a4 + 36)))
            {
              memset(v104, 0, 32);
              v68 = *(a4[1] + 56 * v67 + 56);
              v69 = decode_prefix((v68 + 18), *(v68 + 16), v104);
              pushPrefixTerms(*a4, v69, v104, 1u, "\x01", *(a4 + 4), *(a4 + 5), 0, *(a4 + 8));
              return 0;
            }

            return 2;
          }

          v85 = v14;
          v86 = __si_assert_copy_extra_332();
          v87 = v86;
          v88 = "";
          if (v86)
          {
            v88 = v86;
          }

          __message_assert("%s:%u: failed assertion '%s' %s expected non-zero docID for term %s", "TermUpdateSet.c", 1732, "ctx->docID", v88, (*(a4[1] + 56 * v85 + 56) + 18));
          v89 = v87;
LABEL_146:
          free(v89);
          if (__valid_fs(-1))
          {
            v90 = 2989;
          }

          else
          {
            v90 = 3072;
          }

          *v90 = -559038737;
          abort();
        }
      }
    }

    v19 = &v12[14 * v14];
    v22 = v19[12];
    v20 = (v19 + 12);
    v21 = v22;
    v23 = 1;
    if (v22 && v13 - v21 <= 0x400)
    {
      v24 = ((3 * (v13 - v21)) >> 2) + 1;
      v25 = v21 >= v24;
      v26 = v21 - v24;
      v23 = v26 == 0 || !v25;
      if (!v25)
      {
        v26 = 0;
      }

      *v20 = v26;
    }

    v5 = v11;
  }

  v104[0] = 0;
  if (utf8_encodestr(a1, 2 * a2, &v105, v104, 1028))
  {
    return 0;
  }

  v100 = v23;
  v29 = v104[0];
  v104[0] = 0;
  v30 = *(a4 + 4);
  if (v5)
  {
    v31 = v101;
    if (v30 || (MEMORY[0x1EEE9AC00](v27), bzero(&v96 - ((v29 + 16) & 0xFFFFFFFFFFFFFFF0), v29 + 1), memcpy(&v96 - ((v29 + 16) & 0xFFFFFFFFFFFFFFF0), &v105, v29), *(&v96 + v29 - ((v29 + 16) & 0xFFFFFFFFFFFFFFF0)) = 0, *(a4 + 4)))
    {
      if (*(a4 + 37) == 1 && (v29 != a4[5] - 2 || *(a4 + 17) > 0x2000))
      {
        return 0;
      }

      v32 = v31;
      v33 = *a4;
      v34 = *(a4 + 4);
      v98 = *(a4 + 5);
      v35 = &v106[v29 - 1];
      *&v106[v29 - 1] = 513;
      v106[v29 + 1] = 0;
      v103 = 0;
      v36 = pushTermTable(*(v33 + 24) + 16, **(v33 + 24), v32, v29 + 2, &v105, &v103, v27);
      v99 = v5;
      if (v103)
      {
        v36[3] = 0;
LABEL_29:
        v36[1] = 1;
        v36[2] = v34;
        goto LABEL_30;
      }

      v40 = v102;
      if (*v36)
      {
        if (*(v36 + 1) == v34)
        {
LABEL_42:
          v42 = 1;
          if (!v100)
          {
            goto LABEL_113;
          }

          goto LABEL_112;
        }
      }

      else
      {
        v41 = v36[2];
        if (v41 == v34)
        {
          goto LABEL_42;
        }

        if (v41 == v98)
        {
          goto LABEL_29;
        }
      }

      addToExistingTermUpdateList(v33, v36, v34, 0, 1);
LABEL_30:
      if (*(v35 - 1) == 5)
      {
        v37 = *(v35 - 2);
      }

      else
      {
        v37 = 0;
      }

      v42 = 1;
      pushPrefixTerms(v33, v29, &v105, 1u, "\x01", v34, v98, 0, v37);
      v40 = v102;
      if (!v100)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

    v91 = __si_assert_copy_extra_332();
    v92 = v91;
    v93 = "";
    if (v91)
    {
      v93 = v91;
    }

    __message_assert("%s:%u: failed assertion '%s' %s expected non-zero docID for term %s", "TermUpdateSet.c", 1931, "ctx->docID", v93, &v96 - ((v29 + 16) & 0xFFFFFFFFFFFFFFF0));
    goto LABEL_156;
  }

  if (!v30)
  {
    MEMORY[0x1EEE9AC00](v27);
    bzero(&v96 - ((v29 + 16) & 0xFFFFFFFFFFFFFFF0), v29 + 1);
    memcpy(&v96 - ((v29 + 16) & 0xFFFFFFFFFFFFFFF0), &v105, v29);
    *(&v96 + v29 - ((v29 + 16) & 0xFFFFFFFFFFFFFFF0)) = 0;
    if (!*(a4 + 4))
    {
      v94 = __si_assert_copy_extra_332();
      v92 = v94;
      v95 = "";
      if (v94)
      {
        v95 = v94;
      }

      __message_assert("%s:%u: failed assertion '%s' %s expected non-zero docID for term %s", "TermUpdateSet.c", 1774, "ctx->docID", v95, &v96 - ((v29 + 16) & 0xFFFFFFFFFFFFFFF0));
LABEL_156:
      v89 = v92;
      goto LABEL_146;
    }
  }

  v38 = v105;
  if (v29 < 6 || v105 != 48)
  {
LABEL_53:
    *(a4 + 37) = 0;
    a4[5] = v29;
    if (v29 < 4)
    {
LABEL_59:
      v98 = 0;
      goto LABEL_60;
    }

LABEL_54:
    if (v38 - 48 <= 9)
    {
      v43 = v106;
      v44 = v29 - 1;
      while (1)
      {
        v45 = *v43++;
        if ((v45 - 48) >= 0xA)
        {
          break;
        }

        if (!--v44)
        {
          goto LABEL_58;
        }
      }
    }

    goto LABEL_59;
  }

  if (__tolower(v106[0]) != 120)
  {
    *(a4 + 37) = 0;
    a4[5] = v29;
    v38 = v105;
    goto LABEL_54;
  }

  for (i = 2; i != v29; ++i)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * v106[i - 1] + 60) & 0x10000) == 0)
    {
      v38 = v105;
      goto LABEL_53;
    }
  }

  *(a4 + 37) = 1;
  a4[5] = v29;
  v38 = v105;
LABEL_58:
  ++*(a4 + 17);
  v98 = 1;
LABEL_60:
  if ((v38 & 0xFFFFFFFB) != 0x2B)
  {
    if ((v38 & 0x80) != 0)
    {
      if (__maskrune(v38, 0x500uLL))
      {
        goto LABEL_72;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v38 + 60) & 0x500) != 0)
    {
      goto LABEL_72;
    }

    *(a4 + 14) = 0;
    a4[6] = 0;
    goto LABEL_72;
  }

  if (v29 >= 1)
  {
    v46 = &v105;
    v47 = v29;
    do
    {
      v49 = *v46++;
      v48 = v49;
      if (v49 == 43)
      {
        ++*(a4 + 12);
      }

      else if (v48 == 47)
      {
        ++*(a4 + 13);
      }

      else
      {
        *(a4 + 14) = 0;
        a4[6] = 0;
      }

      --v47;
    }

    while (v47);
  }

LABEL_72:
  v50 = *(a4 + 14);
  v99 = v5;
  v97 = 2 * a2;
  if (v50)
  {
    v51 = v105;
    if ((v105 & 0x8000000000000000) == 0)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v52 = v102;
    if (*(a4 + 13) < 6 || *(a4 + 12) < 6)
    {
      goto LABEL_106;
    }

    v27 = xmmword_1C2BF7A50;
    *(a4 + 3) = xmmword_1C2BF7A50;
    v51 = v105;
    if ((v105 & 0x8000000000000000) == 0)
    {
LABEL_74:
      v52 = v102;
      if ((*(MEMORY[0x1E69E9830] + 4 * v51 + 60) & 0x500) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_80;
    }
  }

  v53 = __maskrune(v51, 0x500uLL);
  v52 = v102;
  if (!v53)
  {
    goto LABEL_106;
  }

LABEL_80:
  if (v29 >= 2)
  {
    v54 = 0;
    v55 = 0;
    v56 = v29 - 1;
    v57 = v106;
    while (1)
    {
      v59 = *v57++;
      v60 = v59;
      if (v59 < 0)
      {
        if (__maskrune(v60, 0x100uLL))
        {
          goto LABEL_83;
        }

LABEL_86:
        if (v60 - 48 > 9)
        {
          *(a4 + 14) = 0;
          a4[6] = 0;
          v52 = v102;
          goto LABEL_106;
        }

        v58 = *(a4 + 14) + 1;
        *(a4 + 14) = v58;
        ++v54;
        if (!--v56)
        {
LABEL_88:
          if (v58 && v54 >= 4)
          {
            v52 = v102;
            if (v55 < 20)
            {
              goto LABEL_94;
            }

            ++*(a4 + 15);
            if (v58 >= 513)
            {
              goto LABEL_95;
            }
          }

          else
          {
            v52 = v102;
            if (v58 >= 513)
            {
              goto LABEL_95;
            }
          }

          goto LABEL_106;
        }
      }

      else
      {
        if ((*(MEMORY[0x1E69E9830] + 4 * v60 + 60) & 0x100) == 0)
        {
          goto LABEL_86;
        }

LABEL_83:
        v58 = *(a4 + 14) + 1;
        *(a4 + 14) = v58;
        ++v55;
        if (!--v56)
        {
          goto LABEL_88;
        }
      }
    }
  }

  v58 = *(a4 + 14);
LABEL_94:
  if (v58 >= 513)
  {
LABEL_95:
    if (*(a4 + 15) >= 9 && *(a4 + 13) >= 7 && *(a4 + 12) >= 7)
    {
      v61 = 2;
      goto LABEL_136;
    }
  }

LABEL_106:
  v102 = v52;
  if (v29 < 20 || *(a4 + 14) || ((v105 & 0x8000000000000000) != 0 ? (v77 = __maskrune(v105, 0x500uLL)) : (v77 = *(MEMORY[0x1E69E9830] + 4 * v105 + 60) & 0x500), !v77))
  {
LABEL_108:
    v70 = *(a4 + 6) + 1;
    *(a4 + 6) = v70;
    if (v98 && *(a4 + 17) > 0x2000)
    {
      result = 0;
      *(a4 + 76) = 1;
      return result;
    }

    v71 = pushTerm(*a4, v101, v29, &v105, *(a4 + 4), *(a4 + 5), v70, v104, v27, *(a4 + 36));
    *(a4 + 7) += v71;
    v42 = v71 == 0;
    v40 = v102;
    v9 = v97;
    if (!v100)
    {
      goto LABEL_113;
    }

LABEL_112:
    v72 = v40;
    v73 = 14 * v40;
    v74 = a4[1] + 56 * v40;
    *(v74 + 40) = a2;
    memcpy((v74 + 8), a1, v9);
    v75 = a4[1];
    v76 = &v75[v73];
    *(v76 + 12) = *v75;
    v76[7] = v104[0];
    v75[v72 + 3586] = v101;
LABEL_113:
    if (v99)
    {
      return 0;
    }

    if (v42)
    {
      return 2;
    }

    return *(a4 + 7) > 0x20000u;
  }

  v78 = 0;
  v79 = 0;
  v80 = v29 - 1;
  v81 = v106;
  do
  {
    v82 = *v81++;
    v83 = v82;
    if (v82 < 0)
    {
      if (__maskrune(v83, 0x100uLL))
      {
        goto LABEL_124;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v83 + 60) & 0x100) != 0)
    {
LABEL_124:
      ++v79;
      goto LABEL_125;
    }

    if (v83 - 48 > 9)
    {
      if (v83 != 45)
      {
        goto LABEL_108;
      }
    }

    else
    {
      ++v78;
    }

LABEL_125:
    --v80;
  }

  while (v80);
  if (v79 < 6)
  {
    goto LABEL_108;
  }

  if (v78 <= 5)
  {
    goto LABEL_108;
  }

  v84 = *(a4 + 16);
  *(a4 + 16) = v84 + 1;
  if (v84 < 512)
  {
    goto LABEL_108;
  }

  v61 = 3;
LABEL_136:
  *(a4 + 18) = v61;
  return 1;
}

uint64_t pushTerm(uint64_t a1, unint64_t a2, size_t a3, char *a4, unsigned int a5, int a6, unsigned int a7, unsigned int **a8, __n128 a9, unsigned __int8 a10)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    MEMORY[0x1EEE9AC00](a9);
    v22 = &v26 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, a3 + 1);
    memcpy(v22, a4, a3);
    v22[a3] = 0;
    v23 = __si_assert_copy_extra_332();
    v24 = v23;
    v25 = "";
    if (v23)
    {
      v25 = v23;
    }

    __message_assert("%s:%u: failed assertion '%s' %s expected non-zero docID for term %s", "TermUpdateSet.c", 3681, "docID", v25, v22);
    free(v24);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  HIBYTE(v26) = 0;
  v17 = pushTermTable(*(a1 + 24) + 16, **(a1 + 24), a2, a3, a4, &v26 + 7, a9);
  result = pushContentTermData(a1, v17, a5, a6, a7, SHIBYTE(v26), a10);
  if (result)
  {
    v19 = a5;
    v20 = result;
    if (a4[a3 - 1] == 5)
    {
      v21 = a4[a3 - 2];
    }

    else
    {
      v21 = 0;
    }

    pushPrefixTerms(a1, a3, a4, 1u, "\x01", v19, a6, 0, v21);
    result = v20;
  }

  *a8 = v17;
  return result;
}

void CIPositionNodeTransferDocuments(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v189 = v3;
  v5 = v4;
  v7 = v6;
  v185 = v8;
  v187 = v10;
  v188 = v9;
  v196 = *MEMORY[0x1E69E9840];
  bzero(v193, 0x10000uLL);
  bzero(v192, 0x1000uLL);
  v184 = &v170;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v170 - ((v12 + 207) & 0xFFFFFFFFFFFFFFF0));
  bzero(v13, v12 + 192);
  v186 = v13;
  if (!v5)
  {
    goto LABEL_20;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v2 ? 6 : 1;
  v19 = v13 + 10;
  do
  {
    v20 = *(v7 + 8 * v17);
    v21 = *(v20 + 8);
    *(v19 - 1) = v21;
    *v19 = v17;
    v192[v17] = 8;
    v22 = (v18 + 5 * v21);
    if (0x10000 - v15 >= v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = (v18 + 5 * v21);
    }

    v16 += v23;
    v24 = &v193[v15];
    if (0x10000 - v15 < v22)
    {
      v24 = 0;
    }

    *(v19 - 3) = 0;
    *(v19 - 2) = 0;
    if (0x10000 - v15 < v22)
    {
      v22 = 0;
    }

    v15 += v22;
    *(v19 - 2) = 0;
    *(v19 - 5) = v24;
    *(v19 - 4) = v20;
    ++v17;
    v19 += 12;
  }

  while (v5 != v17);
  if (v16)
  {
    v25 = malloc_type_malloc(v16, 0xD0DBDD29uLL);
    v13 = v186;
    v26 = v186;
    v27 = v5;
    v183 = v25;
    v28 = v25;
    do
    {
      if (!*v26)
      {
        v29 = (v18 + 5 * *(v26 + 9));
        *v26 = v28;
        v28 += v29;
      }

      v26 += 3;
      --v27;
    }

    while (v27);
  }

  else
  {
LABEL_20:
    v183 = 0;
  }

  if (gCPUCount >= v5)
  {
    MEMORY[0x1EEE9AC00](v14);
    v34 = &v170 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v34, v36);
    if (!v5)
    {
      v38 = v189;
      v39 = v185;
      v40 = v186;
      v48 = v34;
      goto LABEL_69;
    }

    v30 = v5 - 1;
  }

  else
  {
    v30 = v5 - 1;
    v31 = _partition_positionlistitem(v13, v5 - 1);
    if (v31 >= 9)
    {
      _partition_positionlistitem(v186, v31 - 1);
    }

    MEMORY[0x1EEE9AC00](v32);
    v34 = &v170 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v34, v33);
  }

  v38 = v189;
  v39 = v185;
  v40 = v186;
  v37 = vdupq_n_s64(v30);
  v41 = (v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v42 = v34 + 24;
  v43 = xmmword_1C2BF9460;
  v44 = xmmword_1C2BF7A50;
  v45 = v186 + 104;
  v46 = vdupq_n_s64(4uLL);
  v47 = v41;
  v48 = v34;
  do
  {
    v49 = vmovn_s64(vcgeq_u64(v37, v44));
    if (vuzp1_s16(v49, *v37.i8).u8[0])
    {
      v50 = *(v45 - 12);
      *(v45 - 11) = v50;
      *(v42 - 6) = *v50;
      *(v42 - 4) = 1;
    }

    if (vuzp1_s16(v49, *&v37).i8[2])
    {
      v51 = *(v45 - 6);
      *(v45 - 5) = v51;
      *(v42 - 3) = *v51;
      *(v42 - 1) = 1;
    }

    if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v43))).i32[1])
    {
      v52 = *v45;
      *(v45 + 1) = *v45;
      *v42 = *v52;
      v42[2] = 1;
      v53 = *(v45 + 6);
      *(v45 + 7) = v53;
      v42[3] = *v53;
      v42[5] = 1;
    }

    v43 = vaddq_s64(v43, v46);
    v44 = vaddq_s64(v44, v46);
    v42 += 12;
    v45 += 192;
    v47 -= 4;
  }

  while (v47);
  v54 = xmmword_1C2BF9460;
  v55 = xmmword_1C2BF7A50;
  v56 = v40 + 7;
  v57 = vdupq_n_s64(4uLL);
  v58 = (v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v59 = vmovn_s64(vcgeq_u64(v37, v55));
    if (vuzp1_s16(v59, *v37.i8).u8[0])
    {
      *(v56 - 20) = *(*(v56 - 12) + 4);
    }

    if (vuzp1_s16(v59, *&v37).i8[2])
    {
      *(v56 - 8) = *(*(v56 - 6) + 4);
    }

    if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v54))).i32[1])
    {
      *(v56 + 4) = *(*v56 + 4);
      *(v56 + 16) = *(*(v56 + 6) + 4);
    }

    v54 = vaddq_s64(v54, v57);
    v55 = vaddq_s64(v55, v57);
    v56 += 12;
    v58 -= 4;
  }

  while (v58);
  v60 = xmmword_1C2BF9460;
  v61 = xmmword_1C2BF7A50;
  v62 = v40 + 7;
  do
  {
    v63 = vcgeq_u64(v37, v61);
    v64 = vmovn_s64(v63);
    *v57.i8 = vuzp1_s16(v64, *v37.i8);
    v65 = v57.i8[0];
    if (v57.i8[0])
    {
      v57.i32[0] = *(v62 - 20);
    }

    v66 = vuzp1_s16(v64, *&v37).i8[2];
    if (v66)
    {
      v57.i32[1] = *(v62 - 8);
    }

    v67 = vcgeq_u64(v37, v60);
    v68 = vmovn_s64(v67);
    v69 = vuzp1_s16(*&v37, v68).i8[4];
    if (v69)
    {
      v57.i32[2] = *(v62 + 4);
    }

    v70 = vuzp1_s16(*&v37, v68).i8[6];
    if (v70)
    {
      v57.i32[3] = *(v62 + 16);
    }

    v71 = vceqzq_s32(v57);
    v72 = vbicq_s8(vuzp1q_s32(v63, v67), v71);
    v73 = vmovn_s32(v72);
    if (v73.i8[0])
    {
      v72.i64[0] = *(v39 + 16);
    }

    if (v73.i8[2])
    {
      v72.i64[1] = *(v39 + 16);
    }

    if (v73.i8[4])
    {
      v35.i64[0] = *(v39 + 16);
    }

    if (v73.i8[6])
    {
      v35.i64[1] = *(v39 + 16);
    }

    v74.i64[0] = v71.i32[0];
    v74.i64[1] = v71.i32[1];
    v75 = vbicq_s8(vaddq_s64(v72, vshll_n_u32(*v57.i8, 3uLL)), vandq_s8(v63, v74));
    if (v65)
    {
      *(v62 - 12) = v75.i64[0];
    }

    if (v66)
    {
      *(v62 - 6) = v75.i64[1];
    }

    v76.i64[0] = v71.i32[2];
    v76.i64[1] = v71.i32[3];
    v77 = vbicq_s8(vaddq_s64(v35, vshll_high_n_u32(v57, 3uLL)), vandq_s8(v67, v76));
    if (v69)
    {
      *v62 = v77.i64[0];
    }

    if (v70)
    {
      *(v62 + 6) = v77.i64[1];
    }

    v57 = vdupq_n_s64(4uLL);
    v60 = vaddq_s64(v60, v57);
    v61 = vaddq_s64(v61, v57);
    v62 += 12;
    v41 -= 4;
  }

  while (v41);
LABEL_69:
  if (dword_1EBF46AF4 >= 5)
  {
    v163 = v48;
    v164 = *__error();
    v165 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 67109120;
      DWORD1(buf[0]) = v189;
      _os_log_impl(&dword_1C278D000, v165, OS_LOG_TYPE_DEFAULT, "DocID: %d", buf, 8u);
    }

    *__error() = v164;
    v38 = v189;
    v39 = v185;
    v40 = v186;
    v48 = v163;
    if (v5)
    {
      goto LABEL_71;
    }
  }

  else if (v5)
  {
LABEL_71:
    v181 = &v170;
    v78 = HIBYTE(v38) | 0xFFFFFFE0;
    v79 = HIWORD(v38);
    v80 = v38 >> 8;
    v81 = HIWORD(v38) | 0xFFFFFFC0;
    v82 = (v38 >> 8) | 0xFFFFFF80;
    v83 = v40 + 3;
    v84 = v38 >> 14;
    v85 = v38 >> 21;
    v86 = v38 >> 28;
    v37.i64[0] = 67109120;
    v179 = v37;
    v87 = v48;
    v182 = v5;
    do
    {
      v88 = *(v83 - 3);
      v89 = *v83;
      if (v2)
      {
        if (v38 > 0x7F)
        {
          v90 = v88 + v89;
          if (v84)
          {
            if (v85)
            {
              if (v86)
              {
                *v90 = -16;
                *(v90 + 1) = v38;
                v89 += 5;
              }

              else
              {
                *v90 = v78;
                *(v90 + 1) = v79;
                *(v90 + 2) = v80;
                v89 += 4;
                *(v90 + 3) = v38;
              }
            }

            else
            {
              *v90 = v81;
              *(v90 + 1) = v80;
              v89 += 3;
              *(v90 + 2) = v38;
            }
          }

          else
          {
            *v90 = v82;
            v89 += 2;
            *(v90 + 1) = v38;
          }
        }

        else
        {
          *(v88 + v89++) = v38;
        }

        *v83 = v89;
      }

      v91 = *v87;
      if (*v87 > 0x7F)
      {
        if (v91 >> 14)
        {
          if (v91 >> 21)
          {
            v95 = v88 + v89;
            if (v91 >> 28)
            {
              *v95 = -16;
              *(v95 + 1) = v91;
              v92 = v89 + 5;
            }

            else
            {
              *v95 = HIBYTE(v91) | 0xE0;
              *(v95 + 1) = BYTE2(v91);
              *(v95 + 2) = BYTE1(v91);
              v92 = v89 + 4;
              *(v95 + 3) = v91;
            }
          }

          else
          {
            v94 = (v88 + v89);
            *v94 = BYTE2(v91) | 0xC0;
            v94[1] = BYTE1(v91);
            v92 = v89 + 3;
            v94[2] = v91;
          }
        }

        else
        {
          v93 = (v88 + v89);
          *v93 = BYTE1(v91) | 0x80;
          v92 = v89 + 2;
          v93[1] = v91;
        }
      }

      else
      {
        v92 = v89 + 1;
        *(v88 + v89) = v91;
      }

      *v83 = v92;
      if (dword_1EBF46AF4 >= 5)
      {
        v172 = v86;
        LODWORD(v173) = v85;
        v174 = v82;
        LODWORD(v175) = v81;
        LODWORD(v176) = v80;
        LODWORD(v177) = v79;
        LODWORD(v178) = v78;
        v180 = v48;
        v171 = *__error();
        v170 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
        {
          *&buf[0] = __PAIR64__(v91, v179.u32[0]);
          _os_log_impl(&dword_1C278D000, v170, OS_LOG_TYPE_DEFAULT, "Start pos: %d", buf, 8u);
        }

        v96 = __error();
        v86 = v172;
        *v96 = v171;
        v38 = v189;
        v39 = v185;
        v40 = v186;
        v48 = v180;
        v78 = v178;
        v79 = v177;
        v80 = v176;
        v82 = v174;
        v81 = v175;
        v85 = v173;
      }

      v87 += 3;
      v83 += 6;
      --v5;
    }

    while (v5);
    v97 = 0;
    v98 = v182;
    if (v182 >= 0x18)
    {
      v99 = 24;
    }

    else
    {
      v99 = v182;
    }

    v100 = v48 - 3;
    v101 = v40 - 3;
    v102 = v40 + 1;
    v103 = v48 + 2;
    while (1)
    {
      v104 = &v48[3 * v97];
      v105 = &v40[3 * v97];
      if (v104[2] < *(v105 + 9))
      {
LABEL_106:
        v104[1] = **(v105 + 2);
      }

      else
      {
        v106 = &v100[3 * v98];
        v107 = &v101[3 * v98];
        while (v97 < v98)
        {
          --v98;
          v109 = v107[1];
          buf[0] = *v107;
          v108 = buf[0];
          buf[1] = v109;
          v195 = v107[2];
          v110 = v195;
          v112 = v105[1];
          v111 = v105[2];
          *v107 = *v105;
          v107[1] = v112;
          v107[2] = v111;
          v105[1] = v109;
          v105[2] = v110;
          *v105 = v108;
          v113 = *v104;
          v191 = v104[2];
          v190 = v113;
          v114 = *v106;
          v104[2] = *(v106 + 2);
          *v104 = v114;
          v115 = v190;
          *(v106 + 2) = v191;
          *v106 = v115;
          v106 = (v106 - 12);
          v107 -= 3;
          if (v104[2] < *(v105 + 9))
          {
            goto LABEL_106;
          }
        }

        if (v98 >= 0x18)
        {
          v99 = 24;
        }

        else
        {
          v99 = v98;
        }
      }

      if (++v97 >= v99)
      {
        if (v98 >= 0x18)
        {
          v99 = 24;
        }

        else
        {
          v99 = v98;
        }

        v116 = v103;
        v117 = v102;
        v118 = v99;
        if (!v98)
        {
          v130 = 0;
          v131 = 1;
          v132 = v182;
          while (1)
          {
            v133 = &v40[3 * v130];
            while (1)
            {
              v134 = *(v133 + 10);
              if (v130 == v134)
              {
                break;
              }

              v135 = &v40[3 * v134];
              v136 = *v135;
              v137 = v135[1];
              v138 = v135[2];
              v140 = v133[1];
              v139 = v133[2];
              *v135 = *v133;
              v135[1] = v140;
              v135[2] = v139;
              v133[1] = v137;
              v133[2] = v138;
              *v133 = v136;
              if (!v131)
              {
                goto LABEL_142;
              }
            }

            v131 = ++v130 < v132;
            if (v130 == v132)
            {
LABEL_142:
              v141 = 0;
              v142 = 0;
              v143 = v40 + 24;
              while (v142 == *(v143 + 4))
              {
                v144 = *(v143 - 3);
                v145 = *v143;
                v146 = *v143 + 1;
                *v143 = v146;
                v143 += 48;
                *(v144 + v145) = 0;
                v147 = v146 + v192[v142];
                v141 += (v147 + 8 * ((v147 & 7) != 0)) & 0xFFFFFFFFFFFFFFF8;
                if (v132 == ++v142)
                {
                  v148 = v40;
                  v149 = positionInfoAlloc_ts(v188, v141);
                  v150 = v148 + 10;
                  while (v149)
                  {
                    v151 = *(v150 - 2);
                    v152 = *v150;
                    v153 = v151 + v192[v152];
                    if ((v153 & 7) != 0)
                    {
                      v154 = (v153 >> 3) + 1;
                    }

                    else
                    {
                      v154 = v153 >> 3;
                    }

                    v155 = v149 + v154;
                    v156 = (*(v188 + 16) + 8 * v149);
                    *v156++ = v151;
                    memcpy(v156, *(v150 - 5), v151);
                    v157 = *(v187 + 8 * v152);
                    *(v156 + v151) = *(v157 + 4);
                    *(v157 + 24) = v189;
                    *(v157 + 16) = 0;
                    *v157 = 0;
                    *(v157 + 4) = v149;
                    *(v157 + 8) = 0;
                    v150 += 12;
                    v149 = v155;
                    if (!--v132)
                    {
                      goto LABEL_164;
                    }
                  }

                  v166 = __si_assert_copy_extra(0);
                  v159 = v166;
                  v167 = "";
                  if (v166)
                  {
                    v167 = v166;
                  }

                  v168 = "posPtrStart!=0";
                  v169 = v167;
                  v161 = 381;
LABEL_156:
                  __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadData.c", v161, v168, v169);
                  free(v159);
                  if (__valid_fs(-1))
                  {
                    v162 = 2989;
                  }

                  else
                  {
                    v162 = 3072;
                  }

                  *v162 = -559038737;
                  abort();
                }
              }

              v158 = __si_assert_copy_extra(0);
              v159 = v158;
              v160 = "";
              if (v158)
              {
                v160 = v158;
              }

              v168 = "oi == i";
              v169 = v160;
              v161 = 356;
              goto LABEL_156;
            }
          }
        }

        do
        {
          v120 = *(v116 - 1);
          v121 = *(v116 - 2) - v120;
          *(v116 - 2) = v120;
          if (dword_1EBF46AF4 >= 5)
          {
            v175 = v103;
            v176 = v102;
            v177 = v101;
            v178 = v100;
            v180 = v48;
            v174 = *__error();
            v173 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
            {
              *&buf[0] = __PAIR64__(v120, v179.u32[0]);
              _os_log_impl(&dword_1C278D000, v173, OS_LOG_TYPE_DEFAULT, "Next: %d", buf, 8u);
            }

            *__error() = v174;
            v39 = v185;
            v40 = v186;
            v48 = v180;
            v101 = v177;
            v100 = v178;
            v103 = v175;
            v102 = v176;
            if (dword_1EBF46AF4 >= 5)
            {
              v174 = *__error();
              v119 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
              {
                *&buf[0] = __PAIR64__(v121, v179.u32[0]);
                _os_log_impl(&dword_1C278D000, v119, OS_LOG_TYPE_DEFAULT, "Delta: %d", buf, 8u);
              }

              *__error() = v174;
              v39 = v185;
              v40 = v186;
              v48 = v180;
              v101 = v177;
              v100 = v178;
              v103 = v175;
              v102 = v176;
            }
          }

          v122 = *(*v117 + 4);
          *(v117 + 4) = v122;
          if (v122)
          {
            v123 = *(v39 + 16) + 8 * v122;
          }

          else
          {
            v123 = 0;
          }

          *v117 = v123;
          v124 = *(v117 - 2);
          v125 = *(v117 + 1);
          if (v121 > 0x7F)
          {
            if (v121 >> 14)
            {
              if (v121 >> 21)
              {
                v129 = v124 + v125;
                if (v121 >> 28)
                {
                  *v129 = -16;
                  *(v129 + 1) = v121;
                  v126 = v125 + 5;
                }

                else
                {
                  *v129 = HIBYTE(v121) | 0xE0;
                  *(v129 + 1) = BYTE2(v121);
                  *(v129 + 2) = BYTE1(v121);
                  v126 = v125 + 4;
                  *(v129 + 3) = v121;
                }
              }

              else
              {
                v128 = (v124 + v125);
                *v128 = BYTE2(v121) | 0xC0;
                v128[1] = BYTE1(v121);
                v126 = v125 + 3;
                v128[2] = v121;
              }
            }

            else
            {
              v127 = (v124 + v125);
              *v127 = BYTE1(v121) | 0x80;
              v126 = v125 + 2;
              v127[1] = v121;
            }
          }

          else
          {
            v126 = v125 + 1;
            *(v124 + v125) = v121;
          }

          *(v117 + 1) = v126;
          ++*v116;
          v116 += 3;
          v117 += 3;
          --v118;
        }

        while (v118);
        v97 = 0;
      }
    }
  }

  positionInfoAlloc_ts(v188, 0);
LABEL_164:
  free(v183);
}

void __decodeDBOToDictionary_block_invoke(uint64_t a1, const __CFArray *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    for (i = 0; CFArrayGetCount(a2) > i; ++i)
    {
      v6 = *(a1 + 32);
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      CFArrayAppendValue(v6, ValueAtIndex);
    }
  }

  else
  {
    v8 = CFStringGetTypeID();
    if (v8 == CFGetTypeID(a2))
    {
      v9 = *(a1 + 32);

      CFArrayAppendValue(v9, a2);
    }
  }
}

uint64_t unicode_combinable(unsigned int a1)
{
  if (a1 < 0x300)
  {
    return 0;
  }

  v1 = __CFUniCharCombiningBitmap[a1 >> 8];
  if (!__CFUniCharCombiningBitmap[a1 >> 8])
  {
    return 0;
  }

  if (v1 == 255)
  {
    return 1;
  }

  return (__CFUniCharCombiningBitmap[32 * v1 + 224 + (a1 >> 3)] >> (a1 & 7)) & 1;
}

uint64_t SIDeleteCSAttributes(uint64_t a1, const void *a2, CFArrayRef theArray, void (*a4)(void, void), uint64_t a5)
{
  Count = CFArrayGetCount(theArray);
  v11 = Count;
  v12 = *MEMORY[0x1E695E480];
  if (Count >= 65000)
  {
    v13 = 65000;
  }

  else
  {
    v13 = Count;
  }

  capacity = v13;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v13, MEMORY[0x1E695E9C0]);
  if (v11 < 1)
  {
LABEL_13:
    v21 = SISetCSAttributes(a1, a2, Mutable, 0x8000, a4, a5);
  }

  else
  {
    v26 = a1;
    v23 = a4;
    v24 = a5;
    v15 = 0;
    v16 = MEMORY[0x1E695E9D8];
    v17 = MEMORY[0x1E695E9E8];
    do
    {
      while (1)
      {
        v18 = CFDictionaryCreateMutable(v12, 4, v16, v17);
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
        CFDictionarySetValue(v18, @"_kMDItemExternalID", ValueAtIndex);
        CFArrayAppendValue(Mutable, v18);
        CFRelease(v18);
        if (CFArrayGetCount(Mutable) >= 65000)
        {
          break;
        }

        if (++v15 >= v11)
        {
          goto LABEL_12;
        }
      }

      v20 = SISetCSAttributes(v26, a2, Mutable, 0x8000, noop, 0);
      CFRelease(Mutable);
      Mutable = CFArrayCreateMutable(v12, capacity, MEMORY[0x1E695E9C0]);
      if (!v20)
      {
        break;
      }

      ++v15;
    }

    while (v15 < v11);
    if (v20)
    {
LABEL_12:
      a4 = v23;
      a5 = v24;
      a1 = v26;
      goto LABEL_13;
    }

    v21 = 0;
  }

  CFRelease(Mutable);
  return v21;
}

void trie_level_list_insert_with_state(int *a1, uint64_t a2, void *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  value[0] = a2;
  value[1] = a3;
  value[3] = a5;
  value[2] = a4;
  value[4] = a6;
  if (CFSetContainsValue(*(a1 + 2), value))
  {
    free(a3);
    return;
  }

  LODWORD(v12) = a1[1];
  if (v12 >= *a1)
  {
    CFSetRemoveAllValues(*(a1 + 2));
    v13 = 2 * *a1;
    *a1 = v13;
    *(a1 + 1) = malloc_type_realloc(*(a1 + 1), 40 * v13, 0x1010040796FF4C2uLL);
    LODWORD(v12) = a1[1];
    if (v12 >= 1)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        CFSetAddValue(*(a1 + 2), (*(a1 + 1) + v14));
        ++v15;
        v12 = a1[1];
        v14 += 40;
      }

      while (v15 < v12);
    }

    v16 = *a1;
    if (v12 < v16)
    {
      v17 = *(a1 + 1);
      v18 = v12;
      v19 = v16 - v12;
      if (v19 > 1)
      {
        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        v21 = v17 + 40 * v12 + 48;
        v22 = v19 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v21 - 40) = 0;
          *v21 = 0;
          *(v21 - 32) = 0;
          *(v21 + 8) = 0;
          v21 += 80;
          v22 -= 2;
        }

        while (v22);
        if (v19 == v20)
        {
          goto LABEL_15;
        }

        v18 = v20 + v12;
      }

      v23 = v16 - v18;
      v24 = (v17 + 40 * v18 + 16);
      do
      {
        *(v24 - 1) = 0;
        *v24 = 0;
        v24 += 10;
        --v23;
      }

      while (v23);
    }
  }

LABEL_15:
  *(*(a1 + 1) + 40 * v12) = a2;
  free(*(*(a1 + 1) + 40 * a1[1] + 8));
  v25 = *(a1 + 1) + 40 * a1[1];
  *(v25 + 8) = a3;
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  *(v25 + 32) = a6;
  CFSetAddValue(*(a1 + 2), (*(a1 + 1) + 40 * a1[1]++));
}

void findMatchRangeChars(uint64_t result, uint64_t a2)
{
  if (HIDWORD(a2) == 1)
  {
    v10 = mgetBase(*(result + 8), a2);
    v11 = *(v10 + 36);
    if (!v11)
    {
      return;
    }

    v12 = v10;
    v13 = 0;
    v14 = (v10 + 4);
    v15 = v10 + 38;
    while (((*(v14->i32 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v13) & 1) == 0)
    {
LABEL_32:
      if (v11)
      {
        if (v13++ < 0xFF)
        {
          continue;
        }
      }

      return;
    }

    v16 = 0;
    v17 = v13 >> 6;
    if (v13 >> 6 > 1)
    {
      if (v17 != 2)
      {
        v19 = vcnt_s8(*(v12 + 20));
        v19.i16[0] = vaddlv_u8(v19);
        v16 = v19.u32[0];
      }

      v20 = vcnt_s8(*(v12 + 12));
      v20.i16[0] = vaddlv_u8(v20);
      v16 += v20.u32[0];
    }

    else
    {
      v18 = v17;
      if (!v17)
      {
        goto LABEL_24;
      }
    }

    v21 = vcnt_s8(*v14);
    v21.i16[0] = vaddlv_u8(v21);
    v18 = v21.u32[0] + v16;
LABEL_24:
    v22 = vcnt_s8((*&v14[v17] & ~(-1 << v13)));
    v22.i16[0] = vaddlv_u8(v22);
    v23 = *(v15 + 4 * (v22.u32[0] + v18));
    v24 = v23 >> 1;
    v25 = v23 >> 3;
    v26 = (v23 & 7) << 32;
    if ((v23 & 3) == 1)
    {
      v26 = 0x100000000;
      v25 = v23 >> 2;
    }

    v27 = (v23 & 1) == 0;
    if (v23)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    if (!v27)
    {
      v24 = v25;
    }

    _findMatchRangeChars(result, v28 | v24, tcmr[v13]);
    --v11;
    goto LABEL_32;
  }

  if (HIDWORD(a2) == 3)
  {
    v3 = 0;
    v4 = *(*(result + 8) + 8) + 1028 * a2 + 4;
    do
    {
      v5 = *(v4 + 4 * v3);
      v6 = v5 >> 1;
      v7 = v5 >> 3;
      v8 = (v5 & 7) << 32;
      if ((v5 & 3) == 1)
      {
        v8 = 0x100000000;
        v7 = v5 >> 2;
      }

      if (v5)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (*(v4 + 4 * v3))
      {
        v6 = v7;
      }

      if (v6)
      {
        _findMatchRangeChars(result, v9 | v6, tcmr[v3]);
      }

      ++v3;
    }

    while (v3 != 256);
  }
}

void _findMatchRangeChars(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = (a1 + 88);
  v5 = *(a1 + 1140);
  *(a1 + 1140) = v5 + 1;
  v4[v5] = a3;
  v4[*(a1 + 1140)] = 0;
  v6 = *(a1 + 1240);
  v8 = *v6;
  v7 = v6[1];
  v9 = 88;
  do
  {
    v10 = *(a1 + v9);
    if (!*(a1 + v9))
    {
      break;
    }

    v12 = *v8++;
    v11 = v12;
    if (!v12)
    {
      break;
    }

    if (v10 < v11)
    {
      goto LABEL_95;
    }

    ++v9;
  }

  while (v10 <= v11);
  v13 = 88;
  do
  {
    v14 = *(a1 + v13);
    if (!*(a1 + v13))
    {
      break;
    }

    v15 = *v7;
    if (v14 > v15)
    {
      goto LABEL_95;
    }

    ++v7;
    ++v13;
  }

  while (v14 >= v15);
  if (HIDWORD(a2))
  {
    if (HIDWORD(a2) == 1)
    {
      v18 = a2;
      v19 = *(a1 + 72);
      v20 = *(a1 + 8);
      if (a2 >= v19)
      {
        v94 = __si_assert_copy_extra_2708(*(v20 + 112));
        v95 = v94;
        v96 = "";
        if (v94)
        {
          v96 = v94;
        }

        __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 5953, "child.next < ctx->trie_max", v96, v18, *(a1 + 64));
        free(v95);
        if (__valid_fsp(*(*(a1 + 8) + 112)))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v17 = mgetBase(v20, a2);
      a2 = v18;
    }

    else
    {
      if (HIDWORD(a2) != 3)
      {
        if (*(a1 + 48) != 1)
        {
          goto LABEL_94;
        }

        v21 = 0;
        goto LABEL_25;
      }

      v16 = *(a1 + 8);
      if (a2 >= *(a1 + 64))
      {
        v89 = a2;
        v90 = __si_assert_copy_extra_2708(*(v16 + 4576));
        v91 = v90;
        v92 = "";
        if (v90)
        {
          v92 = v90;
        }

        __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 5950, "child.next < ctx->trie_fat_max", v92, v89, *(a1 + 64));
        free(v91);
        if (!__valid_fsp(*(*(a1 + 8) + 4576)))
        {
LABEL_170:
          v93 = 3072;
LABEL_171:
          *v93 = -559038737;
          abort();
        }

LABEL_128:
        v93 = 2989;
        goto LABEL_171;
      }

      v17 = (*(v16 + 8) + 1028 * a2);
    }

    v21 = *v17;
    if (*(a1 + 48) != 1)
    {
      if (!v21)
      {
        goto LABEL_94;
      }

      v22 = 0;
LABEL_29:
      v23 = *(a1 + 1240);
      v24 = *(v23 + 4);
      v25 = *v23;
      v26 = *(a1 + 88);
      v27 = *(a1 + 88) == 0;
      v28 = **v23;
      v29 = v26 != v28 || *(a1 + 88) == 0;
      v30 = *(a1 + 88);
      if ((v24 & 0x20) != 0)
      {
        v38 = *v25;
        v39 = *(a1 + 88) == 0;
        if (!v29)
        {
          v40 = v25 + 1;
          v41 = (a1 + 89);
          do
          {
            v42 = *v41++;
            v30 = v42;
            v39 = v42 == 0;
            v43 = *v40++;
            v38 = v43;
            if (v30)
            {
              v44 = v30 == v38;
            }

            else
            {
              v44 = 0;
            }
          }

          while (v44);
        }

        v45 = v30 < v38;
        if (v39)
        {
          v45 = v38 != 0;
        }

        if (v45)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v31 = *v25;
        v32 = *(a1 + 88) == 0;
        if (!v29)
        {
          v33 = v25 + 1;
          v34 = (a1 + 89);
          do
          {
            v35 = *v34++;
            v30 = v35;
            v32 = v35 == 0;
            v36 = *v33++;
            v31 = v36;
            if (v30)
            {
              v37 = v30 == v31;
            }

            else
            {
              v37 = 0;
            }
          }

          while (v37);
        }

        if (v32 || v30 < v31)
        {
          goto LABEL_94;
        }
      }

      v46 = v23[1];
      v47 = *v46;
      if (*(a1 + 88))
      {
        v48 = v26 == v47;
      }

      else
      {
        v48 = 0;
      }

      v49 = !v48;
      v50 = *(a1 + 88);
      if ((v24 & 0x40) != 0)
      {
        if ((v49 & 1) == 0)
        {
          v59 = v46 + 1;
          v60 = (a1 + 89);
          do
          {
            v61 = *v60++;
            v50 = v61;
            LOBYTE(v27) = v61 == 0;
            v62 = *v59++;
            v47 = v62;
            if (v50)
            {
              v63 = v50 == v47;
            }

            else
            {
              v63 = 0;
            }
          }

          while (v63);
        }

        if (v50 >= v47 && !v27)
        {
          goto LABEL_94;
        }
      }

      else
      {
        if ((v49 & 1) == 0)
        {
          v51 = v46 + 1;
          v52 = (a1 + 89);
          do
          {
            v53 = *v52++;
            v50 = v53;
            v27 = v53 == 0;
            v54 = *v51++;
            v47 = v54;
            if (v50)
            {
              v55 = v50 == v47;
            }

            else
            {
              v55 = 0;
            }
          }

          while (v55);
        }

        if (v47)
        {
          v56 = -1;
        }

        else
        {
          v56 = 0;
        }

        v57 = (v50 < v47) << 31;
        if (v27)
        {
          v58 = v56;
        }

        else
        {
          v58 = v57;
        }

        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_94;
        }
      }

      v64 = v21;
      if (v22)
      {
        LODWORD(v65) = v21 >> 1;
        v66 = v21 >> 3;
        v67 = (v21 & 7) << 32;
        if ((v21 & 3) == 1)
        {
          v67 = 0x100000000;
          v66 = v21 >> 2;
        }

        v68 = (v21 & 1) == 0;
        if (v21)
        {
          v69 = v67;
        }

        else
        {
          v69 = 0;
        }

        if (v68)
        {
          v65 = v65;
        }

        else
        {
          v65 = v66;
        }

        v70 = a2;
        findAddFlatBucket(a1, v69 | v65, 0, 0, 0, 0);
        a2 = v70;
        goto LABEL_94;
      }

      if (v24 & 0x610) != 0 || (**a1)
      {
LABEL_94:
        findMatchRangeChars(a1, a2);
        goto LABEL_95;
      }

      if ((v24 & 4) != 0)
      {
        if ((v26 - 2) > 2 || v26 != v28)
        {
          goto LABEL_94;
        }

        v75 = a2;
        v76 = termNumberCompare(v4, v25);
        if ((v24 & 0x20) != 0)
        {
          a2 = v75;
          if (v76 < 0)
          {
            goto LABEL_94;
          }
        }

        else
        {
          a2 = v75;
          if (v76 < 1)
          {
            goto LABEL_94;
          }
        }

        v80 = termNumberCompare(v4, v46);
        if ((v24 & 0x40) != 0)
        {
          a2 = v75;
          if (v80 > 0)
          {
            goto LABEL_94;
          }
        }

        else
        {
          a2 = v75;
          if ((v80 & 0x80000000) == 0)
          {
            goto LABEL_94;
          }
        }
      }

      else if ((v24 & 0x8000) != 0 || v28 != 42 || v25[1])
      {
        v71 = v23[4];
        v72 = v23[5];
        if (v71)
        {
          if (!v72)
          {
            v73 = a2;
            v74 = localizedFieldTermMatch(v71, *(v23 + 5), v4, *(a1 + 1140), *(v23 + 4));
            a2 = v73;
            if (v74)
            {
              findHandleMatch(a1, v64, 0, v4, *(a1 + 1140), 1);
              a2 = v73;
            }

            goto LABEL_94;
          }

LABEL_134:
          v85 = a2;
          if (v26 != 1)
          {
            v97 = termPropertyID(v4, *(a1 + 1140));
            v98 = 0;
            goto LABEL_155;
          }

          v97 = *(a1 + 89);
          if (v97 == 2)
          {
            v97 = *(a1 + 90);
            if ((*(a1 + 90) & 0x80000000) == 0)
            {
              v98 = 3;
              goto LABEL_155;
            }

            v99 = *(a1 + 91);
            if ((*(a1 + 91) & 0x80000000) == 0)
            {
              v97 = v97 & 0x7F | (v99 << 7);
              v98 = 4;
              goto LABEL_155;
            }

            v101 = *(a1 + 92);
            if ((*(a1 + 92) & 0x80000000) == 0)
            {
              v102 = ((v99 & 0x7F) << 7) | (v101 << 14);
LABEL_153:
              v104 = v102 & 0xFFFFFF80 | v97 & 0x7F;
              v98 = 5;
              goto LABEL_154;
            }

            v105 = *(a1 + 93);
            if ((*(a1 + 93) & 0x80000000) == 0)
            {
              v104 = ((v101 & 0x7F) << 14) | (v105 << 21) | ((v99 & 0x7F) << 7) | v97 & 0x7F;
              v98 = 6;
              goto LABEL_154;
            }

            v110 = *(a1 + 94);
            if ((v110 & 0x80000000) == 0)
            {
              v111 = ((v105 & 0x7F) << 21) | (v110 << 28) | ((v101 & 0x7F) << 14) | ((v99 & 0x7F) << 7) | v97 & 0x7F;
              v98 = 7;
              v97 = v111;
              goto LABEL_155;
            }
          }

          else
          {
            if ((v97 & 0x80) == 0)
            {
              v98 = 2;
              goto LABEL_155;
            }

            v100 = *(a1 + 90);
            if ((*(a1 + 90) & 0x80000000) == 0)
            {
              v97 = v97 & 0x7F | (v100 << 7);
              v98 = 3;
              goto LABEL_155;
            }

            v103 = *(a1 + 91);
            if ((*(a1 + 91) & 0x80000000) == 0)
            {
              v104 = ((v100 & 0x7F) << 7) | (v103 << 14) | v97 & 0x7F;
              v98 = 4;
LABEL_154:
              v97 = v104;
              goto LABEL_155;
            }

            v106 = *(a1 + 92);
            if ((*(a1 + 92) & 0x80000000) == 0)
            {
              v102 = ((v103 & 0x7F) << 14) | (v106 << 21) | ((v100 & 0x7F) << 7);
              goto LABEL_153;
            }

            v112 = *(a1 + 93);
            if ((v112 & 0x80000000) == 0)
            {
              v113 = ((v106 & 0x7F) << 21) | (v112 << 28) | ((v103 & 0x7F) << 14) | ((v100 & 0x7F) << 7) | v97 & 0x7F;
              v98 = 6;
              v97 = v113;
LABEL_155:
              a2 = v85;
              if (*(v23 + 5) == v97)
              {
                v107 = (*(a1 + 1140) - v98);
                while (v107 >= 1)
                {
                  v108 = v4[v98 - 1 + v107];
                  if (v108 > 5)
                  {
                    TermIDsContextMatchPatternsReg = __findTermIDsContextMatchPatternsRegExMatch(*(*(a1 + 1240) + 40), &v4[v98], v107);
                    a2 = v85;
                    if (!TermIDsContextMatchPatternsReg)
                    {
                      goto LABEL_94;
                    }

                    v83 = *(a1 + 1140);
                    v84 = a1;
                    v86 = v64;
                    v87 = v4;
                    v88 = 1;
                    goto LABEL_124;
                  }

                  v107 = (v107 - 1);
                  a2 = v85;
                  if ((v108 & 5) != 1)
                  {
                    goto LABEL_94;
                  }
                }
              }

              goto LABEL_94;
            }
          }

          v114 = __si_assert_copy_extra_2708(0);
          v115 = v114;
          v116 = "";
          if (v114)
          {
            v116 = v114;
          }

          __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v116);
          free(v115);
          if (!__valid_fs(-1))
          {
            goto LABEL_170;
          }

          goto LABEL_128;
        }

        if (v72)
        {
          goto LABEL_134;
        }

        v77 = a2;
        if (*(v23 + 5) == 1)
        {
          v78 = termPropertyID(v4, *(a1 + 1140));
          a2 = v77;
          if (v78 != 1)
          {
            goto LABEL_94;
          }

          v25 = *v23;
        }

        v79 = termMatch(v4, *(a1 + 1140), v25, *(v23 + 6));
        a2 = v77;
        if (!v79)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v81 = a2;
        v82 = termFieldMatch(*(v23 + 5), v4, *(a1 + 1140), *(v23 + 4));
        a2 = v81;
        if (!v82)
        {
          goto LABEL_94;
        }
      }

      if ((v24 & 0x8000) == 0)
      {
        v83 = *(a1 + 1140);
        v84 = a1;
        v85 = a2;
        v86 = v64;
        v87 = v4;
        v88 = 0;
LABEL_124:
        findHandleMatch(v84, v86, 0, v87, v83, v88);
        a2 = v85;
      }

      goto LABEL_94;
    }

    if (v21)
    {
      if ((*v17 & 3) == 1)
      {
        if (!(v21 >> 2))
        {
          goto LABEL_94;
        }
      }

      else if (!(v21 >> 3))
      {
        goto LABEL_94;
      }

LABEL_26:
      v22 = 1;
      goto LABEL_29;
    }

LABEL_25:
    if (!(v21 >> 1))
    {
      goto LABEL_94;
    }

    goto LABEL_26;
  }

  findAddFlatBucket(a1, a2, 0, 0, 0, 0);
LABEL_95:
  --*(a1 + 1140);
}

uint64_t flushGraphCacheApply2(uint64_t a1, uint64_t a2, void *a3)
{
  v94[4] = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v83 = MEMORY[0x1C691E5E0](*a3, a1);
  }

  else
  {
    v83 = 0;
  }

  v5 = a3[1];
  if (v5)
  {
    v82 = MEMORY[0x1C691E5E0](v5, a1);
  }

  else
  {
    v82 = 0;
  }

  v6 = a3[2];
  if (v6)
  {
    v81 = MEMORY[0x1C691E5E0](v6, a1);
  }

  else
  {
    v81 = 0;
  }

  v7 = a3[3];
  if (v7)
  {
    v80 = MEMORY[0x1C691E5E0](v7, a1);
  }

  else
  {
    v80 = 0;
  }

  v8 = a3[4];
  if (v8)
  {
    v79 = MEMORY[0x1C691E5E0](v8, a1);
  }

  else
  {
    v79 = 0;
  }

  v9 = a3[5];
  if (v9)
  {
    v78 = MEMORY[0x1C691E5E0](v9, a1);
  }

  else
  {
    v78 = 0;
  }

  v10 = a3[6];
  if (v10)
  {
    v77 = MEMORY[0x1C691E5E0](v10, a1);
  }

  else
  {
    v77 = 0;
  }

  v11 = a3[7];
  if (v11)
  {
    v76 = MEMORY[0x1C691E5E0](v11, a1);
  }

  else
  {
    v76 = 0;
  }

  v12 = a3[8];
  if (v12)
  {
    v75 = MEMORY[0x1C691E5E0](v12, a1);
  }

  else
  {
    v75 = 0;
  }

  v13 = a3[9];
  if (v13)
  {
    v74 = MEMORY[0x1C691E5E0](v13, a1);
  }

  else
  {
    v74 = 0;
  }

  v14 = a3[10];
  if (v14)
  {
    v73 = MEMORY[0x1C691E5E0](v14, a1);
  }

  else
  {
    v73 = 0;
  }

  v15 = a3[11];
  if (v15)
  {
    v72 = MEMORY[0x1C691E5E0](v15, a1);
  }

  else
  {
    v72 = 0;
  }

  v16 = a3[12];
  if (v16)
  {
    v71 = MEMORY[0x1C691E5E0](v16, a1);
  }

  else
  {
    v71 = 0;
  }

  v17 = a3[13];
  if (v17)
  {
    v70 = MEMORY[0x1C691E5E0](v17, a1);
  }

  else
  {
    v70 = 0;
  }

  v18 = a3[14];
  if (v18)
  {
    v69 = MEMORY[0x1C691E5E0](v18, a1);
  }

  else
  {
    v69 = 0;
  }

  v19 = a3[15];
  if (v19)
  {
    v68 = MEMORY[0x1C691E5E0](v19, a1);
  }

  else
  {
    v68 = 0;
  }

  v20 = a3[16];
  if (v20)
  {
    v67 = MEMORY[0x1C691E5E0](v20, a1);
  }

  else
  {
    v67 = 0;
  }

  v21 = a3[17];
  if (v21)
  {
    v66 = MEMORY[0x1C691E5E0](v21, a1);
  }

  else
  {
    v66 = 0;
  }

  v22 = a3[18];
  if (v22)
  {
    v65 = MEMORY[0x1C691E5E0](v22, a1);
  }

  else
  {
    v65 = 0;
  }

  v23 = a3[19];
  if (v23)
  {
    v64 = MEMORY[0x1C691E5E0](v23, a1);
  }

  else
  {
    v64 = 0;
  }

  v24 = a3[20];
  if (v24)
  {
    v63 = MEMORY[0x1C691E5E0](v24, a1);
  }

  else
  {
    v63 = 0;
  }

  v25 = a3[21];
  if (v25)
  {
    v62 = MEMORY[0x1C691E5E0](v25, a1);
  }

  else
  {
    v62 = 0;
  }

  v26 = a3[22];
  if (v26)
  {
    v61 = MEMORY[0x1C691E5E0](v26, a1);
  }

  else
  {
    v61 = 0;
  }

  v27 = a3[23];
  if (v27)
  {
    v60 = MEMORY[0x1C691E5E0](v27, a1);
  }

  else
  {
    v60 = 0;
  }

  v28 = a3[24];
  if (v28)
  {
    v59 = MEMORY[0x1C691E5E0](v28, a1);
  }

  else
  {
    v59 = 0;
  }

  v29 = a3[25];
  if (v29)
  {
    v58 = MEMORY[0x1C691E5E0](v29, a1);
  }

  else
  {
    v58 = 0;
  }

  v30 = a3[26];
  if (v30)
  {
    v57 = MEMORY[0x1C691E5E0](v30, a1);
  }

  else
  {
    v57 = 0;
  }

  v31 = a3[27];
  if (v31)
  {
    v56 = MEMORY[0x1C691E5E0](v31, a1);
  }

  else
  {
    v56 = 0;
  }

  v32 = a3[28];
  if (v32)
  {
    v55 = MEMORY[0x1C691E5E0](v32, a1);
  }

  else
  {
    v55 = 0;
  }

  v33 = a3[29];
  if (v33)
  {
    v54 = MEMORY[0x1C691E5E0](v33, a1);
  }

  else
  {
    v54 = 0;
  }

  v34 = a3[30];
  if (v34)
  {
    v53 = MEMORY[0x1C691E5E0](v34, a1);
  }

  else
  {
    v53 = 0;
  }

  v35 = a3[31];
  if (v35)
  {
    v36 = MEMORY[0x1C691E5E0](v35, a1);
  }

  else
  {
    v36 = 0;
  }

  v37 = a3[32];
  if (v37)
  {
    v38 = MEMORY[0x1C691E5E0](v37, a1);
  }

  else
  {
    v38 = 0;
  }

  v39 = a3[33];
  if (v39)
  {
    v40 = MEMORY[0x1C691E5E0](v39, a1);
  }

  else
  {
    v40 = 0;
  }

  v41 = a3[34];
  if (v41)
  {
    v42 = MEMORY[0x1C691E5E0](v41, a1);
  }

  else
  {
    v42 = 0;
  }

  v43 = a3[35];
  if (v43)
  {
    v44 = MEMORY[0x1C691E5E0](v43, a1);
  }

  else
  {
    v44 = 0;
  }

  v45 = a3[36];
  if (v45)
  {
    v46 = MEMORY[0x1C691E5E0](v45, a1);
  }

  else
  {
    v46 = 0;
  }

  v47 = a3[37];
  if (v47)
  {
    v48 = MEMORY[0x1C691E5E0](v47, a1);
  }

  else
  {
    v48 = 0;
  }

  v49 = a3[38];
  if (v49)
  {
    v50 = MEMORY[0x1C691E5E0](v49, a1);
  }

  else
  {
    v50 = 0;
  }

  v51 = a3[39];
  if (v51)
  {
    v51 = MEMORY[0x1C691E5E0](v51, a1);
  }

  v94[0] = v83;
  v94[1] = v82;
  v94[2] = v81;
  v94[3] = v80;
  v93[0] = v79;
  v93[1] = v78;
  v93[2] = v77;
  v93[3] = v76;
  v92[0] = v75;
  v92[1] = v74;
  v92[2] = v73;
  v92[3] = v72;
  v91[0] = v71;
  v91[1] = v70;
  v91[2] = v69;
  v91[3] = v68;
  v90[0] = v67;
  v90[1] = v66;
  v90[2] = v65;
  v90[3] = v64;
  v89[0] = v63;
  v89[1] = v62;
  v89[2] = v61;
  v89[3] = v60;
  v88[0] = v59;
  v88[1] = v58;
  v88[2] = v57;
  v88[3] = v56;
  v87[0] = v55;
  v87[1] = v54;
  v87[2] = v53;
  v87[3] = v36;
  v86[0] = v38;
  v86[1] = v40;
  v86[2] = v42;
  v86[3] = v44;
  v85[0] = v46;
  v85[1] = v48;
  v85[2] = v50;
  v85[3] = v51;
  _MDPlistContainerBeginArray();
  _MDPlistContainerAddNullValue();
  _MDPlistContainerAddInt32Value();
  addContactInfoToContainer(a3[40], a1, a2, v94, v93, v92, v91, v90, v89, v88, v87, v86, v85);
  return _MDPlistContainerEndArray();
}