const void *SICopyProperty(uint64_t a1, const void *a2)
{
  if (a1 && *(a1 + 1192))
  {
    pthread_mutex_lock((a1 + 1504));
    v4 = *(a1 + 1496);
    if (!v4)
    {
      if (!si_create_propertydict(a1, 0, 0))
      {
        v6 = 0;
LABEL_10:
        pthread_mutex_unlock((a1 + 1504));
        return v6;
      }

      v4 = *(a1 + 1496);
    }

    Value = CFDictionaryGetValue(v4, a2);
    v6 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t __SIInitIndex_block_invoke_1107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(*(a1 + 32) + 8);
  if ((v2 + 1) > *(v3 + 24))
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = *(v3 + 24);
  }

  *(v3 + 24) = v4;
  return 1;
}

uint64_t __SIInitIndex_block_invoke_1116(uint64_t a1)
{
  SIInitIndex_override = 0;
  SIInitIndex_lowLatency = *(*(a1 + 32) + 6587) & 1;
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"LOW_LATENCY", @"com.apple.SpotlightServer", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    SIInitIndex_lowLatency = result != 0;
    SIInitIndex_override = 1;
  }

  return result;
}

void si_getsizes(uint64_t a1, int a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1192))
  {
    indexmetadata = si_create_indexmetadata(a1, 1);
    if (indexmetadata)
    {
      v54 = 0;
      __src = 0;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v6 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
      v53 = v6;
      v7 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
      v51 = v8;
      v52 = HIDWORD(v6);
      v50 = v9;
      *(v7 + 216) = 0;
      v10 = *(v7 + 312);
      v11 = *(v7 + 224);
      if (v11)
      {
        v11(*(v7 + 288));
      }

      if (_setjmp(v7))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v7 + 312) = v10;
        CIOnThreadCleanUpReset(v50);
        v12 = 1;
        dropThreadId(v53, 1, add_explicit + 1);
        CICleanUpReset(v53, v51);
      }

      else
      {
        if (db_get_field(*(a1 + 1192), indexmetadata, "kMDStoreAccumulatedSizes", &v54, &__src))
        {
          v15 = *__error();
          v16 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *v57 = "si_getsizes";
            *&v57[8] = 1024;
            *&v57[10] = 1307;
            _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: Failed to get kMDStoreAccumulatedSizes", buf, 0x12u);
          }

          v17 = 0;
          *__error() = v15;
        }

        else
        {
          if (*(a1 + 2072))
          {
            v18 = 256;
          }

          else
          {
            v18 = 22;
          }

          v19 = *(v54 + 8);
          if (v19 <= 8 * v18)
          {
            memcpy((a1 + 7040), __src, v19);
            v20 = 0;
            v21 = v18;
            v22 = (a1 + 7048);
            v23 = 0;
            v24 = 1;
            *&v25 = 67109376;
            v26 = dword_1EBF46AE8;
            do
            {
              v27 = v26;
              if (v26 >= 5)
              {
                v48 = v25;
                *type = v20;
                v45 = *__error();
                log = _SILogForLogForCategory(7);
                if (os_log_type_enabled(log, type[0]))
                {
                  v30 = *v22;
                  *buf = v48;
                  *v57 = v24;
                  *&v57[4] = 2048;
                  *&v57[6] = v30;
                  _os_log_impl(&dword_1C278D000, log, type[0], "Size %d: %lld", buf, 0x12u);
                }

                *__error() = v45;
                v27 = dword_1EBF46AE8;
                v20 = *type;
                v25 = v48;
              }

              v26 = v27;
              v28 = *v22++;
              v29 = (v28 < 0) | v23;
              v23 |= v28 < 0;
              ++v24;
            }

            while (v21 != v24);
            v17 = v29 ^ 1;
          }

          else
          {
            v17 = 0;
          }
        }

        if (db_get_field(*(a1 + 1192), indexmetadata, "kMDStoreAccumulatedCounts", &v54, &__src))
        {
          v31 = *__error();
          v32 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *v57 = "si_getsizes";
            *&v57[8] = 1024;
            *&v57[10] = 1328;
            _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: Failed to get kMDStoreAccumulatedCounts", buf, 0x12u);
          }

          v12 = 0;
          *__error() = v31;
        }

        else
        {
          if (*(a1 + 2072))
          {
            v33 = 256;
          }

          else
          {
            v33 = 22;
          }

          v34 = *(v54 + 8);
          if (v34 <= 4 * v33)
          {
            memcpy((a1 + 9088), __src, v34);
            v35 = dword_1EBF46AE8;
            v36 = (a1 + 9092);
            v37 = 1;
            *&v38 = 67109376;
            do
            {
              v39 = v35;
              if (v35 >= 5)
              {
                v47 = v38;
                v46 = *__error();
                v44 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = *v36;
                  *buf = v47;
                  *v57 = v37;
                  *&v57[4] = 1024;
                  *&v57[6] = v40;
                  _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "Count %d: %d", buf, 0xEu);
                }

                *__error() = v46;
                v39 = dword_1EBF46AE8;
                v38 = v47;
              }

              v35 = v39;
              ++v37;
              ++v36;
            }

            while (v33 != v37);
            v12 = v17;
          }

          else
          {
            v12 = 0;
          }
        }

        v41 = threadData[9 * v53 + 1] + 320 * v52;
        *(v41 + 312) = v10;
        v42 = *(v41 + 232);
        if (v42)
        {
          v42(*(v41 + 288));
        }

        dropThreadId(v53, 0, add_explicit + 1);
      }
    }

    else
    {
      v13 = *__error();
      v14 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v57 = "si_getsizes";
        *&v57[8] = 1024;
        *&v57[10] = 1334;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Failed to get metadata dbo", buf, 0x12u);
      }

      v12 = 0;
      *__error() = v13;
    }

    free(indexmetadata);
    if (a2)
    {
      if ((v12 & 1) == 0)
      {
        _SIRecomputeSizesWithCallback(a1, 0, &__block_literal_global_9005);
      }
    }
  }
}

void si_inflateLeakedRemapping(uint64_t a1, char a2, uint64_t a3, __CFArray *a4)
{
  v8 = CIDecodeRemappingMetadataWithIndex(*(a1 + 32), 0, a3);
  if (v8)
  {
    v9 = v8;
    CFArrayAppendValue(a4, v8);
    if ((a2 & 1) == 0)
    {
      v10 = ContentIndexRemappingNextDocId(v9, &v12);
      v11 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
      *v11 = a1;
      v11[1] = si_indexForDocId(a1, v10);
      v11[2] = CFRetain(v9);
      if (v11[1])
      {
        si_enqueue_work(*(a1 + 1064), si_remapForIndex, v11);
      }

      else
      {
        free(v11);
      }
    }

    CFRelease(v9);
    *(a1 + 2384) = a3 + 1;
  }
}

void si_populateClientStates(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1192))
  {
    if (*(a1 + 2072) == 1)
    {
      v2 = *(a1 + 2088);
      if (v2)
      {
        Count = CFDictionaryGetCount(*(a1 + 2088));
        v20 = &v20;
        MEMORY[0x1EEE9AC00](v4);
        v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v6, v5);
        CFDictionaryGetKeysAndValues(v2, v6, 0);
        if (Count >= 1)
        {
          v7 = 0;
          v22 = *MEMORY[0x1E695E480];
          v8 = "_kMDItemStateInfo_";
          do
          {
            v9 = *&v6[8 * v7];
            v23 = 0;
            if (CFStringCompare(v9, @"com.apple.searchd", 1uLL) && !si_get_object_for_identifier_createParentDBO(a1, @"com.apple.searchd", v9, 0, 0, 0, &v23, 0))
            {
              v10 = v23;
              v26 = 0;
              v24 = 0;
              v25 = 0;
              if (!db_get_field(*(a1 + 1192), v23, "_kMDItemExternalID", &v24, &v25))
              {
                v11 = CFStringCreateWithCString(v22, v25, 0x8000100u);
                if (v11)
                {
                  v21 = v11;
                  clientstates_dict = si_get_clientstates_dict(a1, v11);
                  while (db_next_field(*(a1 + 1192), v10, 0, &v26, &v25, &v24) == 35)
                  {
                    if (*v24 == 14)
                    {
                      v13 = v25;
                      if (!strncmp(v8, v25, 0x11uLL))
                      {
                        v14 = v22;
                        v15 = CFStringCreateWithCString(v22, v13, 0x8000100u);
                        v16 = CFDataCreate(v14, (v24 + 13), *(v24 + 8));
                        v17 = v8;
                        v18 = v16;
                        CFDictionarySetValue(clientstates_dict, v15, v16);
                        v19 = v18;
                        v8 = v17;
                        CFRelease(v19);
                        CFRelease(v15);
                      }
                    }
                  }

                  CFRelease(v21);
                }
              }

              free(v23);
            }

            ++v7;
          }

          while (v7 != Count);
        }
      }
    }
  }
}

BOOL si_check_version_property(uint64_t a1, const void *a2)
{
  v2 = SICopyProperty(a1, a2);
  if (v2)
  {
    v3 = v2;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      valuePtr = 0;
      CFNumberGetValue(v3, kCFNumberCFIndexType, &valuePtr);
      CFRelease(v3);
      return valuePtr != 5;
    }

    CFRelease(v3);
  }

  return 1;
}

uint64_t si_playbackJournal(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2;
  v65 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2072) == 1)
  {
    v6 = malloc_type_calloc(1uLL, 0x80uLL, 0x10F004037D4A986uLL);
    v7 = v6;
    if (v6)
    {
      *(v6 + 2) = -1;
      atomic_store(1u, v6);
      if (v3)
      {
        atomic_fetch_add_explicit(v3 + 8, 1u, memory_order_relaxed);
      }

      *(v6 + 1) = v3;
      *(v6 + 3) = fd_lseek(v3, 0, 2);
      v8 = a1;
      v9 = v7;
    }

    else
    {
      v8 = a1;
      v9 = 0;
    }

    v40 = preparseMobileJournal(v8, v9, a3);
    si_sync_ctx_create_with_defer_fd(a1, 0);
    atomic_fetch_add(journalsEnqueued, 1u);
    v42 = v41[11];
    if (v42 <= v40 + 1)
    {
      v42 = v40 + 1;
    }

    v41[11] = v42;
    if (v3)
    {
      atomic_fetch_add_explicit(v3 + 8, 1u, memory_order_relaxed);
    }

    v41[8] = v3;
    v41[5] = si_playbackSyncFinished;
    v41[6] = v7;
    si_enqueue_work_with_qos(*(a1 + 1104), 9, si_sync_index_delayed0, v41);
    return v40;
  }

  v61 = 0;
  v10 = _fd_acquire_fd(a2, &v61);
  if (v10 < 0)
  {
    return -1;
  }

  __fd = v10;
  v11 = malloc_type_malloc(0x100000uLL, 0x32A7867uLL);
  v12 = __fd;
  memset(&v60, 0, sizeof(v60));
  fstat(__fd, &v60);
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v15 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = v15;
  v55[0] = Mutable;
  v55[1] = v15;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  st_size = v60.st_size;
  if (!v60.st_size)
  {
    v54 = 0;
    v36 = 0;
    v52 = 0;
    v17 = 0;
    goto LABEL_75;
  }

  v47 = v15;
  v48 = Mutable;
  v49 = v11;
  v50 = v3;
  v17 = 0;
  v18 = 0;
  v54 = 0;
  v19 = 0x100000;
  if (v60.st_size >= 0x100000uLL)
  {
    v20 = 0x100000;
  }

  else
  {
    v20 = v60.st_size;
  }

  v52 = 1;
  v21 = v11;
  while (2)
  {
    if (pread(v12, v21, v20, v18) < 1 || (v23 = v20 + v18, v54 = v20 + v18, v18 + 12 > v20 + v18))
    {
      v52 = 0;
      v36 = v18;
      goto LABEL_74;
    }

    v24 = v18;
    v51 = v18;
    v25 = v18;
    while (1)
    {
      v26 = &v21[v24 - v25];
      v28 = *v26;
      v27 = *(v26 + 1);
      if (*v26 == -262275347 || v28 == -267518227)
      {
        break;
      }

      if (v28 == -266469651)
      {
        goto LABEL_28;
      }

      if (v28 != -263323923)
      {
        if (v28 != -265421075)
        {
          goto LABEL_70;
        }

LABEL_28:
        v36 = v27 + 12 + v24;
        if (v36 > v60.st_size || v27 + 12 > v19)
        {
          goto LABEL_69;
        }

        if (v36 > v23)
        {
          goto LABEL_56;
        }

        v34 = *(v26 + 2);
        if (v27 != 8 * v34)
        {
          goto LABEL_69;
        }

        memset(buf, 0, sizeof(buf));
        if (v34)
        {
          v35 = (v26 + 12);
          do
          {
            if ((pushMove(buf, *v35) & 1) == 0)
            {
              flushPlaybackPossibleMoves(a1, buf, v28 == -266469651);
              pushMove(buf, *v35);
            }

            ++v35;
            --v34;
          }

          while (v34);
        }

        flushPlaybackPossibleMoves(a1, buf, v28 == -266469651);
        if (*buf)
        {
          munmap(*buf, 16 * *MEMORY[0x1E69E9AC8]);
        }

LABEL_42:
        v23 = v54;
        goto LABEL_43;
      }

      v36 = v27 + 12 + v24;
      if (v36 > v60.st_size || v27 + 12 > v19)
      {
        goto LABEL_69;
      }

      if (v36 > v23)
      {
        goto LABEL_56;
      }

      if (*(v26 + 2) != 2 || v27 != 16)
      {
LABEL_69:
        v52 = 0;
LABEL_70:
        v36 = v24;
        v11 = v49;
        v3 = v50;
        v16 = v47;
        Mutable = v48;
        v12 = __fd;
        goto LABEL_75;
      }

      v38 = *(v26 + 12);
      if (v38 >= 3)
      {
        v39 = *(v26 + 20);
        if (v39 >= 3)
        {
          SITransferAttributes(a1, v38, v39, 0, 0, 0);
        }

        goto LABEL_42;
      }

LABEL_43:
      ++v17;
      v24 = v36;
      if (v36 + 12 > v23)
      {
        goto LABEL_57;
      }
    }

    v30 = v24 + v27 + 12;
    if (v30 > v60.st_size)
    {
      goto LABEL_69;
    }

    if (v30 <= v23)
    {
      v31 = v27 + 12;
      if (v27 + 12 > v19)
      {
        v32 = malloc_type_realloc(v21, v27 + 12, 0x10000403E1C8BA9uLL);
        v19 = malloc_size(v32);
        pread(__fd, v32, v19, v24);
        v25 = v24;
        v21 = v32;
      }

      si_playbackRecord(v22);
      v36 = v31 + v24;
      goto LABEL_42;
    }

LABEL_56:
    v36 = v24;
LABEL_57:
    v12 = __fd;
    if (v36 != v51)
    {
      if (v19 >= (v60.st_size - v36))
      {
        v20 = v60.st_size - v36;
      }

      else
      {
        v20 = v19;
      }

      v18 = v36;
      if (!v20)
      {
        v52 = 0;
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

  v52 = 0;
  v36 = v51;
LABEL_74:
  v11 = v49;
  v3 = v50;
  v16 = v47;
  Mutable = v48;
LABEL_75:
  si_queue_playback(a1, v55, 0);
  _fd_release_fd(v3, v12, 0, v61);
  v43 = *__error();
  v44 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = v17;
    *&buf[12] = 2048;
    *&buf[14] = v52;
    *&buf[22] = 2048;
    *&buf[24] = v36;
    v63 = 2048;
    v64 = v54;
    _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "Played back %ld records (skipped %ld), read %lld/%lld bytes", buf, 0x2Au);
  }

  *__error() = v43;
  si_sync_ctx_create_with_defer_fd(a1, 0);
  atomic_fetch_add(journalsEnqueued, 1u);
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 8, 1u, memory_order_relaxed);
  }

  *(v45 + 64) = v3;
  si_enqueue_work_with_qos(*(a1 + 1104), 9, si_sync_index_delayed0, v45);
  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  free(v11);
  return -1;
}

void __SIInitIndex_block_invoke_1123(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    db_set_ignore_vectors(*(*(a1 + 32) + 1192), a2);
    v4 = *(a1 + 32);

    _si_set_version_property(v4, @"VEC_EXT_CLEARED_JOURNALS", 1);
  }
}

CFPropertyListRef si_read_clientstates_file(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2072) != 1)
  {
    return 0;
  }

  v1 = fd_create_protected(*(a1 + 32), "clientstatesmetafile", 0x20000000, 3u);
  if (v1)
  {
    v2 = v1;
    v3 = fd_lseek(v1, 0, 2);
    if (v3)
    {
      v4 = v3;
      v5 = fd_mmap(v2, v3, 1, 1, 0);
      if (v5 != -1)
      {
        v6 = v5;
        v7 = *MEMORY[0x1E695E480];
        v8 = CFDataCreate(*MEMORY[0x1E695E480], v5, v4);
        if (v8)
        {
          v9 = v8;
          v10 = CFPropertyListCreateWithData(v7, v8, 0, 0, 0);
          CFRelease(v9);
        }

        else
        {
          v10 = 0;
        }

        munmap(v6, v4);
        fd_release(v2);
        return v10;
      }

      v13 = *__error();
      v14 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = __error();
        v19 = strerror(*v18);
        v20 = 136315650;
        v21 = "si_read_clientstates_file";
        v22 = 1024;
        v23 = 5359;
        v24 = 2080;
        v25 = v19;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: si_read_clientstates_file: mmap failed: %s", &v20, 0x1Cu);
      }

      *__error() = v13;
      fd_release(v2);
      return 0;
    }
  }

  v11 = *__error();
  v12 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v16 = __error();
    v17 = strerror(*v16);
    v20 = 136315650;
    v21 = "si_read_clientstates_file";
    v22 = 1024;
    v23 = 5365;
    v24 = 2080;
    v25 = v17;
    _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: si_read_clientstates_file: open client state meta file failed: %s", &v20, 0x1Cu);
  }

  v10 = 0;
  *__error() = v11;
  return v10;
}

void __SIInitIndex_block_invoke_1125(uint64_t a1)
{
  valuePtr = 2;
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  SISetProperty(*(a1 + 32), @"YukonRecomputedSizes", v2);
  CFRelease(v2);
}

void resumeHoldQueue(dispatch_object_t object)
{
  if (object)
  {
    dispatch_resume(object);
  }
}

uint64_t IntPtrCFCompare(uint64_t a1, uint64_t a2)
{
  if (a1 < a2)
  {
    return -1;
  }

  else
  {
    return a1 > a2;
  }
}

uint64_t preparseMobileJournal(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v219 = a3;
  v3 = a2;
  v244 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 2136);
  v218 = *(a2 + 24);
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v242[0] = a1;
  v242[1] = v3;
  v8 = os_transaction_create();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sJournalExceptionCallbacks, v242, 0x40000000, add_explicit + 1);
  v241 = v10;
  v11 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v239 = v12;
  v240 = HIDWORD(v10);
  v238 = v13;
  *(v11 + 216) = 0;
  v14 = *(v11 + 312);
  v15 = *(v11 + 224);
  if (v15)
  {
    v15(*(v11 + 288));
  }

  v237 = v241;
  v236 = v240;
  v235 = v239;
  v234 = v238;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v11 + 312) = v14;
    CIOnThreadCleanUpReset(v234);
    dropThreadId(v237, 1, add_explicit + 1);
    CICleanUpReset(v237, v235);
    v16 = -1;
    goto LABEL_206;
  }

  if (!v218 || (v222 = v218, si_mobile_journal_map_activate(v3), v214 = *(v3 + 16), v214 == -1))
  {
    v16 = -1;
    v25 = v8;
    goto LABEL_203;
  }

  v223 = v8;
  v224 = v5;
  v225 = v14;
  v226 = add_explicit;
  v221 = Mutable;
  if (v218 <= 0xB)
  {
    v19 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
    v20 = -1;
    v21 = -1;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_196;
  }

  v212 = v6;
  v211 = -263323923;
  v213 = 0;
  v26 = -1;
  *&v17 = 136316418;
  v210 = v17;
  v209 = 4030594797;
  *&v17 = 136315906;
  v208 = v17;
  *&v17 = 136316930;
  *&v18 = 136316930;
  v207 = v18;
  v206 = v18;
  v205 = v18;
  v204 = v17;
  *&v17 = 136316418;
  v203 = v17;
  v27 = -1;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v220 = v3;
  while (1)
  {
    v31 = v29;
    v32 = v28;
    v33 = v30;
    v215 = v26;
    v34 = v214 + v29;
    v35 = v214 + v29;
    v36 = *(v214 + v29);
    v233 = v213;
    HIDWORD(v38) = v36 + 264306963;
    LODWORD(v38) = v36 + 264306963;
    v37 = v38 >> 20;
    if (v37 <= 1)
    {
      if (!v37)
      {
        v87 = v2_readVInt64(v34 + 12, &v233);
        if (v27 == -1)
        {
          v88 = v87;
        }

        else
        {
          v88 = v27;
        }

        v89 = v87;
        v90 = v88;
LABEL_60:
        v91 = v31;
        v27 = v90;
        v92 = *(v34 + 4);
        if (v92 > 0xFFFFFFF3 || (v93 = v92 + v91 + 12, v218 < v93))
        {
          v153 = v33;
          v154 = v32;
          v155 = *__error();
          v156 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "preparseMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5551;
            *&buf[18] = 2048;
            *&buf[20] = 4030594797;
            *&buf[28] = 2048;
            *&buf[30] = v92;
            *&buf[38] = 2048;
            *&buf[40] = v91;
            *&buf[48] = 2048;
            *&buf[50] = v222;
            _os_log_error_impl(&dword_1C278D000, v156, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
          }

          *__error() = v155;
          v23 = v91;
          v136 = v154;
          goto LABEL_187;
        }

        v195 = *(v34 + 4);
        if (v92 <= v233)
        {
          goto LABEL_70;
        }

        v232 = v213;
        v230 = v213;
        v229 = v213;
        v231 = v213;
        _MDPlistGetRootPlistObjectFromBytesWithError();
        if (v213)
        {
          v153 = v33;
          v183 = v32;
          v184 = *__error();
          v185 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316674;
            *&buf[4] = "preparseMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5564;
            *&buf[18] = 2048;
            *&buf[20] = v232;
            *&buf[28] = 2048;
            *&buf[30] = 4030594797;
            *&buf[38] = 2048;
            *&buf[40] = v195;
            *&buf[48] = 2048;
            *&buf[50] = v91;
            *&buf[58] = 2048;
            *&buf[60] = v222;
            _os_log_error_impl(&dword_1C278D000, v185, OS_LOG_TYPE_ERROR, "%s:%d: PlistContainer 1 errorCode:%08llx magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x44u);
          }

          *__error() = v184;
          v23 = v91;
          *v219 = 1;
          v136 = v183;
LABEL_187:
          v101 = v153;
          v60 = v215;
          v135 = v27;
          goto LABEL_195;
        }

        memset(buf, 0, 24);
        if (!_MDPlistArrayGetCount() || (*buf = v213, *&buf[8] = v213, *&buf[16] = v213, _MDPlistArrayGetPlistObjectAtIndex(), v227 = *buf, v228 = *&buf[16], (v94 = _MDPlistContainerCopyObject()) == 0))
        {
LABEL_70:
          v98 = v33;
          v99 = *__error();
          v100 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            *buf = v210;
            *&buf[4] = "preparseMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5575;
            *&buf[18] = 2048;
            *&buf[20] = v209;
            *&buf[28] = 2048;
            *&buf[30] = v195;
            *&buf[38] = 2048;
            *&buf[40] = v91;
            *&buf[48] = 2048;
            *&buf[50] = v222;
            _os_log_error_impl(&dword_1C278D000, v100, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry - nil bundleID, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
          }

          *__error() = v99;
          v60 = v215;
          if (v89 && v215 && v89 < v215)
          {
            ++v32;
            v101 = v98;
          }

          else
          {
            atomic_fetch_add_explicit(&gEnqueuedSize, v195, memory_order_relaxed);
            if (v215 <= v89)
            {
              v60 = v89;
            }

            v101 = v98 + 1;
          }

          goto LABEL_154;
        }

        v95 = v33;
        v96 = v94;
        v97 = v215;
        if (v89 && v215 && v89 < v215)
        {
          ++v32;
        }

        else
        {
          atomic_fetch_add_explicit(&gEnqueuedSize, v195, memory_order_relaxed);
          if (v215 <= v89)
          {
            v127 = v89;
          }

          else
          {
            v127 = v215;
          }

          v128 = v95 + 1;
          CFSetAddValue(v221, v96);
          v97 = v127;
          v95 = v128;
        }

        v129 = v95;
        v130 = v97;
        CFRelease(v96);
        v101 = v129;
LABEL_180:
        v60 = v130;
        goto LABEL_154;
      }

      if (v37 == 1)
      {
        v41 = 36;
        v39 = v211;
LABEL_24:
        v42 = v2_readVInt64(v34 + v41, &v233);
        if (v27 == -1)
        {
          v27 = v42;
        }

        v43 = v42;
        goto LABEL_27;
      }
    }

    else
    {
      switch(v37)
      {
        case 2:
          v39 = -261161235;
          v40 = 18;
          goto LABEL_23;
        case 4:
          v39 = -262275347;
          v40 = 36;
          goto LABEL_23;
        case 5:
          v39 = -259064083;
          v40 = 24;
LABEL_23:
          v41 = v40;
          goto LABEL_24;
      }
    }

    v39 = v36;
    v89 = 0;
    v90 = v27;
    v43 = 0;
    if (v36 == -264372499)
    {
      goto LABEL_60;
    }

LABEL_27:
    v44 = v43;
    if ((v39 & 0xFFEFFFFF) == 0xF04DFEED)
    {
      v202 = v27;
      v45 = *(v34 + 4);
      if ((v45 + 12) < 0x24 || v218 < v31 + (v45 + 12))
      {
        v149 = v31;
        v59 = v32;
        v150 = *__error();
        v151 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "preparseMobileJournal";
          *&buf[12] = 1024;
          *&buf[14] = 5600;
          *&buf[18] = 2048;
          *&buf[20] = v39;
          *&buf[28] = 2048;
          *&buf[30] = v45;
          *&buf[38] = 2048;
          *&buf[40] = v149;
          *&buf[48] = 2048;
          *&buf[50] = v222;
          _os_log_error_impl(&dword_1C278D000, v151, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
        }

        v152 = __error();
        v135 = v202;
        *v152 = v150;
        v23 = v149;
LABEL_194:
        v136 = v59;
        v101 = v33;
        v60 = v215;
        v3 = v220;
        goto LABEL_195;
      }

      v200 = v43;
      v201 = v31;
      v216 = v33;
      v217 = v32;
      v199 = v31 + (v45 + 12);
      v46 = v45 - 24;
      v47 = v45 - 24 - v233;
      if (v45 - 24 > v233)
      {
        v48 = *(v34 + 12);
        v49 = v48 & 0x3FF;
        v187 = v34 + 36;
        v50 = (v34 + 36 + v233);
        v51 = strnlen(v50, v45 - 24 - v233);
        v52 = v51;
        if (v51 == v47 || v51 + 1 != v49)
        {
          v102 = *__error();
          v103 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            *buf = v204;
            *&buf[4] = "preparseMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5617;
            *&buf[18] = 2048;
            *&buf[20] = v39;
            *&buf[28] = 2048;
            *&buf[30] = v45;
            *&buf[38] = 2048;
            *&buf[40] = v201;
            *&buf[48] = 2048;
            *&buf[50] = v222;
            *&buf[58] = 2048;
            *&buf[60] = v52;
            *&buf[68] = 2048;
            *&buf[70] = v48 & 0x3FF;
            _os_log_error_impl(&dword_1C278D000, v103, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
          }

          *__error() = v102;
        }

        else
        {
          v53 = CFStringCreateWithCString(v212, v50, 0x8000100u);
          if (v53)
          {
            v54 = v53;
            if ((*(v35 + 14) & 0x7FFF) != 0)
            {
              v55 = CFStringCreateWithCString(v212, &v50[v49 + (v48 >> 10)], 0x8000100u);
              if (v55)
              {
                v56 = v55;
                if (CFStringHasPrefix(v55, @"_kMDItemStateInfo_"))
                {
                  v57 = CFRetain(v56);
                }

                else
                {
                  v57 = CFStringCreateWithFormat(v212, 0, @"_kMDItemStateInfo_%@", v56);
                }

                v137 = v57;
                v138 = *(v35 + 32);
                if (v46 >= v138)
                {
                  clientstates_dict = si_get_clientstates_dict(a1, v54);
                  v142 = clientstates_dict;
                  if (v138)
                  {
                    v143 = CFDataCreate(v212, (v187 + v46 - v138), v138);
                    if (v143)
                    {
                      v144 = v143;
                      CFDictionarySetValue(v142, v137, v143);
                      CFRelease(v144);
                    }
                  }

                  else
                  {
                    CFDictionaryRemoveValue(clientstates_dict, v137);
                  }
                }

                else
                {
                  v139 = *__error();
                  v140 = _SILogForLogForCategory(0);
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v208;
                    *&buf[4] = "preparseMobileJournal";
                    *&buf[12] = 1024;
                    *&buf[14] = 5652;
                    *&buf[18] = 2048;
                    *&buf[20] = v138;
                    *&buf[28] = 2048;
                    *&buf[30] = v45 - 24;
                    _os_log_error_impl(&dword_1C278D000, v140, OS_LOG_TYPE_ERROR, "%s:%d: Invalid client state size:%ld > size:%ld", buf, 0x26u);
                  }

                  *__error() = v139;
                }

                CFRelease(v137);
                CFRelease(v56);
              }
            }

            v145 = v216;
            v146 = v215;
            if (v200 && v215 && v200 < v215)
            {
              v32 = v217 + 1;
            }

            else
            {
              if (v215 <= v200)
              {
                v147 = v200;
              }

              else
              {
                v147 = v215;
              }

              atomic_fetch_add_explicit(&gEnqueuedSize, v45, memory_order_relaxed);
              CFSetAddValue(v221, v54);
              v146 = v147;
              v145 = v216 + 1;
              v32 = v217;
            }

            v3 = v220;
            v27 = v202;
            v148 = v145;
            v130 = v146;
            CFRelease(v54);
            v93 = v199;
            v101 = v148;
            goto LABEL_180;
          }
        }
      }

      v104 = *__error();
      v105 = _SILogForLogForCategory(0);
      v32 = v217;
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        *buf = v203;
        *&buf[4] = "preparseMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5624;
        *&buf[18] = 2048;
        *&buf[20] = v39;
        *&buf[28] = 2048;
        *&buf[30] = v45;
        *&buf[38] = 2048;
        *&buf[40] = v201;
        *&buf[48] = 2048;
        *&buf[50] = v222;
        _os_log_error_impl(&dword_1C278D000, v105, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry - nil bundleID, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
      }

      *__error() = v104;
      v60 = v215;
      if (v200 && v215 && v200 < v215)
      {
        ++v32;
        v27 = v202;
        v93 = v199;
        goto LABEL_126;
      }

      if (v215 <= v200)
      {
        v60 = v200;
      }

      v101 = v216 + 1;
      atomic_fetch_add_explicit(&gEnqueuedSize, v45, memory_order_relaxed);
      v27 = v202;
      v93 = v199;
LABEL_153:
      v3 = v220;
      goto LABEL_154;
    }

    if (v39 == -259064083)
    {
      v72 = *(v34 + 4);
      v73 = v72 + 12;
      v74 = v215;
      if ((v72 + 12) < 0x12 || v73 < 0x18 || (v75 = v31 + v73, v218 < v75))
      {
        v157 = v31;
        v158 = v27;
        v59 = v32;
        v159 = *__error();
        v160 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "preparseMobileJournal";
          *&buf[12] = 1024;
          *&buf[14] = 5725;
          *&buf[18] = 2048;
          *&buf[20] = 4035903213;
          *&buf[28] = 2048;
          *&buf[30] = v72;
          *&buf[38] = 2048;
          *&buf[40] = v157;
          *&buf[48] = 2048;
          *&buf[50] = v222;
          _os_log_error_impl(&dword_1C278D000, v160, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
        }

        v161 = __error();
        v135 = v158;
        *v161 = v159;
        v23 = v157;
        goto LABEL_194;
      }

      v201 = v31;
      v76 = v72 - 12;
      v77 = *(v34 + 16);
      v78 = *(v34 + 18);
      v79 = *(v34 + 18);
      v80 = v233;
      if (v233 >= v72 - 12)
      {
        v106 = v32;
        v107 = 0;
        v108 = 0;
      }

      else
      {
        v81 = *(v34 + 16);
        v216 = v33;
        v202 = v27;
        v200 = v44;
        v198 = v79;
        v197 = v77;
        v191 = v78;
        if (v77)
        {
          v189 = v81;
          v82 = v76 - v233 - v78;
          v83 = strnlen((v34 + v233 + 24), v82);
          v84 = v83;
          v85 = v83 == v82;
          v81 = v189;
          if (v85 || v83 + 1 != v189)
          {
            v109 = *__error();
            v110 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
            {
              *buf = v206;
              *&buf[4] = "preparseMobileJournal";
              *&buf[12] = 1024;
              *&buf[14] = 5743;
              *&buf[18] = 2048;
              *&buf[20] = 4035903213;
              *&buf[28] = 2048;
              *&buf[30] = v72;
              *&buf[38] = 2048;
              *&buf[40] = v201;
              *&buf[48] = 2048;
              *&buf[50] = v222;
              *&buf[58] = 2048;
              *&buf[60] = v84;
              *&buf[68] = 2048;
              *&buf[70] = v189;
              _os_log_error_impl(&dword_1C278D000, v110, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
            }

            *__error() = v109;
            v86 = 0;
            v33 = v216;
            v74 = v215;
            v27 = v202;
            v44 = v200;
            v79 = v198;
            v77 = v197;
            v81 = v189;
          }

          else
          {
            v86 = CFStringCreateWithCString(v212, (v34 + v80 + 24), 0x8000100u);
            v33 = v216;
            v74 = v215;
            v27 = v202;
            v44 = v200;
            v79 = v198;
            v77 = v197;
          }
        }

        else
        {
          v86 = 0;
        }

        if (v79)
        {
          v188 = v86;
          v111 = v80 + v81;
          v112 = v76 - (v80 + v81);
          v113 = v34 + v111;
          v114 = strnlen((v34 + v111 + 24), v112);
          v115 = v114;
          if (v114 == v112 || v114 + 1 != v191)
          {
            v106 = v32;
            v116 = *__error();
            v117 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
            {
              *buf = v207;
              *&buf[4] = "preparseMobileJournal";
              *&buf[12] = 1024;
              *&buf[14] = 5753;
              *&buf[18] = 2048;
              *&buf[20] = 4035903213;
              *&buf[28] = 2048;
              *&buf[30] = v72;
              *&buf[38] = 2048;
              *&buf[40] = v201;
              *&buf[48] = 2048;
              *&buf[50] = v222;
              *&buf[58] = 2048;
              *&buf[60] = v115;
              *&buf[68] = 2048;
              *&buf[70] = v191;
              _os_log_error_impl(&dword_1C278D000, v117, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
            }

            v107 = 0;
            *__error() = v116;
          }

          else
          {
            v106 = v32;
            v107 = CFStringCreateWithCString(v212, (v113 + 24), 0x8000100u);
          }

          v108 = v188;
          v33 = v216;
          v74 = v215;
          v27 = v202;
          v44 = v200;
          v79 = v198;
          v77 = v197;
        }

        else
        {
          v106 = v32;
          v107 = 0;
          v108 = v86;
        }
      }

      if (!v108 && v77)
      {
        v118 = v33;
        v119 = v106 + 1;
        goto LABEL_149;
      }

      if (!v107 && v79 || v44 && v74 && v44 < v74)
      {
        v120 = v74;
        v121 = v33;
        v118 = v33;
        v119 = v106 + 1;
        v122 = v106 + 1;
        if (!v108)
        {
LABEL_149:
          v32 = v119;
          v125 = v74;
          if (v107)
          {
            CFRelease(v107);
          }

          v93 = v75;
          v101 = v118;
LABEL_152:
          v60 = v125;
          goto LABEL_153;
        }
      }

      else
      {
        v131 = v27;
        if (v74 <= v44)
        {
          v132 = v44;
        }

        else
        {
          v132 = v74;
        }

        v118 = v33 + 1;
        if (!v108)
        {
          v74 = v132;
          v119 = v106;
          v27 = v131;
          goto LABEL_149;
        }

        CFSetAddValue(v221, v108);
        v120 = v132;
        v121 = v33 + 1;
        v122 = v106;
        v27 = v131;
      }

      v119 = v122;
      v118 = v121;
      v133 = v27;
      v134 = v120;
      CFRelease(v108);
      v74 = v134;
      v27 = v133;
      goto LABEL_149;
    }

    v58 = v32;
    v23 = v31;
    v59 = v58;
    v60 = v215;
    if (v39 != -261161235)
    {
      break;
    }

    v61 = *(v34 + 4);
    if ((v61 + 12) < 0x12 || v218 < v23 + (v61 + 12))
    {
      v162 = v27;
      v163 = *__error();
      v164 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "preparseMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5681;
        *&buf[18] = 2048;
        *&buf[20] = 4033806061;
        *&buf[28] = 2048;
        *&buf[30] = v61;
        *&buf[38] = 2048;
        *&buf[40] = v23;
        *&buf[48] = 2048;
        *&buf[50] = v222;
        _os_log_error_impl(&dword_1C278D000, v164, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
      }

      v165 = __error();
      v135 = v162;
      *v165 = v163;
      goto LABEL_194;
    }

    v62 = v23 + (v61 + 12);
    v63 = *(v34 + 12);
    v64 = *(v34 + 12);
    v65 = v61 - 24 - v233;
    if (v61 - 24 <= v233)
    {
      v216 = v33;
      v71 = 0;
      v66 = v59;
    }

    else
    {
      v66 = v59;
      if (!*(v34 + 12))
      {
        if (v43 && v215 && v43 < v215)
        {
          v32 = v59 + 1;
          v93 = v62;
          v101 = v33;
        }

        else
        {
          if (v215 <= v43)
          {
            v60 = v43;
          }

          atomic_fetch_add_explicit(&gEnqueuedSize, v61, memory_order_relaxed);
          v93 = v23 + (v61 + 12);
          v32 = v59;
          v101 = v33 + 1;
        }

        goto LABEL_153;
      }

      v196 = v23 + (v61 + 12);
      v200 = v43;
      v202 = v27;
      v216 = v33;
      v67 = v63;
      v68 = v34 + v233;
      v69 = strnlen((v34 + v233 + 18), v61 - 24 - v233);
      v70 = v69;
      if (v69 == v65 || v69 + 1 != v67)
      {
        v123 = *__error();
        v124 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          *buf = v205;
          *&buf[4] = "preparseMobileJournal";
          *&buf[12] = 1024;
          *&buf[14] = 5697;
          *&buf[18] = 2048;
          *&buf[20] = 4033806061;
          *&buf[28] = 2048;
          *&buf[30] = v61;
          *&buf[38] = 2048;
          *&buf[40] = v23;
          *&buf[48] = 2048;
          *&buf[50] = v222;
          *&buf[58] = 2048;
          *&buf[60] = v70;
          *&buf[68] = 2048;
          *&buf[70] = v67;
          _os_log_error_impl(&dword_1C278D000, v124, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
        }

        v71 = 0;
        *__error() = v123;
      }

      else
      {
        v71 = CFStringCreateWithCString(v212, (v68 + 18), 0x8000100u);
      }

      v60 = v215;
      v27 = v202;
      v44 = v200;
      v62 = v196;
      if (v71)
      {
        goto LABEL_127;
      }
    }

    if (v64)
    {
      v32 = v66 + 1;
      v93 = v62;
LABEL_126:
      v101 = v216;
      goto LABEL_153;
    }

LABEL_127:
    if (!v44 || !v60 || v44 >= v60)
    {
      if (v60 <= v44)
      {
        v125 = v44;
      }

      else
      {
        v125 = v60;
      }

      v126 = v216 + 1;
      atomic_fetch_add_explicit(&gEnqueuedSize, v61, memory_order_relaxed);
      v93 = v62;
      if (!v71)
      {
        v32 = v66;
        v101 = v216 + 1;
        goto LABEL_152;
      }

      CFSetAddValue(v221, v71);
      v32 = v66;
      v3 = v220;
LABEL_137:
      CFRelease(v71);
      v101 = v126;
      v60 = v125;
      goto LABEL_154;
    }

    v93 = v62;
    v125 = v60;
    v126 = v216;
    v32 = v66 + 1;
    v3 = v220;
    if (v71)
    {
      goto LABEL_137;
    }

    v32 = v66 + 1;
    v101 = v216;
LABEL_154:
    v26 = v60;
    v30 = v101;
    v29 = v93;
    v135 = v27;
    v136 = v32;
    v28 = v32;
    v23 = v93;
    if (v93 + 12 > v218)
    {
      goto LABEL_195;
    }
  }

  v135 = v27;
  v136 = v58;
  v101 = v33;
LABEL_195:
  v21 = v135;
  v20 = v60;
  v24 = v101;
  v22 = v136;
  v19 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  if (v3)
  {
LABEL_196:
    atomic_fetch_add(v3, 1u);
    v166 = v19;
    v167 = v3;
  }

  else
  {
    v166 = v19;
    v167 = 0;
  }

  v193 = v23;
  v192 = v22;
  v190 = v24;
  v168 = v20;
  v194 = v21;
  v169 = v166;
  *v166 = a1;
  v166[1] = v167;
  atomic_fetch_add((a1 + 6888), 1u);
  si_mobile_journal_map_deactivate(v167);
  si_enqueue_barrier_with_qos(*(a1 + 1048), 0, playBackMobileJournal, v169);
  v170 = v221;
  Count = CFSetGetCount(v221);
  MEMORY[0x1EEE9AC00](v172);
  v174 = (&v186 - v173);
  bzero(&v186 - v173, v175);
  CFSetGetValues(v170, v174);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      *buf = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      **buf = a1;
      v177 = CFRetain(v174[i]);
      *(*buf + 8) = v177;
      si_enqueue_work_bulk_with_qos(*(a1 + 1048), 0, dummy_routine, buf, v174[i], i == 0);
    }
  }

  CFRelease(v221);
  si_enqueue_work_with_qos(*(a1 + 1048), 0, endTransaction, v223);
  v178 = *__error();
  v179 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219520;
    *&buf[4] = v190;
    *&buf[12] = 2048;
    *&buf[14] = v192;
    *&buf[22] = 2048;
    *&buf[24] = v193;
    *&buf[32] = 2048;
    *&buf[34] = v222;
    *&buf[42] = 2048;
    *&buf[44] = v224;
    *&buf[52] = 2048;
    *&buf[54] = v194;
    *&buf[62] = 2048;
    *&buf[64] = v168;
    _os_log_impl(&dword_1C278D000, v179, OS_LOG_TYPE_DEFAULT, "Played back %ld records (skipped %ld), read %lld/%lld bytes, consumedJournalSerialNumber:%lld, minReplaySerialNumber:%lld, maxReplaySerialNumber:%lld", buf, 0x48u);
  }

  *__error() = v178;
  v25 = 0;
  v16 = v168;
  add_explicit = v226;
  v14 = v225;
LABEL_203:
  v8 = v25;
  v180 = threadData[9 * v237 + 1] + 320 * v236;
  *(v180 + 312) = v14;
  v181 = *(v180 + 232);
  if (v181)
  {
    v181(*(v180 + 288));
  }

  dropThreadId(v237, 0, add_explicit + 1);
LABEL_206:
  if (v8)
  {
    os_release(v8);
  }

  return v16;
}

void si_playbackRecord(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v43[1024] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 8);
  if (v5)
  {
    v6 = 8 * v5 > *(v2 + 4);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v4;
    v8 = v3;
    v9 = v1;
    v10 = (v2 + 12);
    v11 = *MEMORY[0x1E695E480];
    v12 = _MDPlistBytesCreate();
    if (v12)
    {
      v13 = v12;
      v14 = _MDPlistBytesCopyPlistAtIndex();
      if (v14)
      {
        v15 = v14;
        v41 = v13;
        if (CFArrayGetCount(v14) == v5)
        {
          if (v7)
          {
            v16 = 0;
            do
            {
              v43[0] = v10[v16];
              v17 = CFNumberCreate(v11, kCFNumberLongLongType, v43);
              ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
              ++*(v7 + 16);
              v19 = CFGetTypeID(ValueAtIndex);
              if (v19 == CFNullGetTypeID())
              {
                ++*(v7 + 40);
              }

              else
              {
                v20 = CFGetTypeID(ValueAtIndex);
                if (v20 == CFDictionaryGetTypeID())
                {
                  Value = CFDictionaryGetValue(*(v7 + 8), v17);
                  if (Value)
                  {
                    CFDictionaryApplyFunction(ValueAtIndex, _mergeCFDictionaryApplier, Value);
                    ++*(v7 + 32);
                  }

                  else
                  {
                    MutableCopy = CFDictionaryCreateMutableCopy(v11, 0, ValueAtIndex);
                    CFArrayAppendValue(*v7, v17);
                    CFDictionaryAddValue(*(v7 + 8), v17, MutableCopy);
                    ++*(v7 + 24);
                    si_queue_playback(v9, v7, 0x4000uLL);
                    if (MutableCopy)
                    {
                      CFRelease(MutableCopy);
                    }
                  }
                }

                else
                {
                  ++*(v7 + 48);
                }
              }

              if (v17)
              {
                CFRelease(v17);
              }

              ++v16;
            }

            while (v5 != v16);
          }

          else
          {
            v23 = v43;
            bzero(v43, 0x2000uLL);
            v24 = v42;
            bzero(v42, 0x2000uLL);
            v25 = (v5 + 1);
            if (v25 >= 0x401)
            {
              v23 = malloc_type_malloc(8 * (v5 + 1), 0x100004000313F17uLL);
              v24 = malloc_type_malloc(8 * (v5 + 1), 0xC0040B8AA526DuLL);
            }

            v26 = *MEMORY[0x1E695E738];
            *v24 = *MEMORY[0x1E695E738];
            v27 = v23 + 1;
            v28 = v5;
            do
            {
              v29 = *v10++;
              *v27++ = v29;
              --v28;
            }

            while (v28);
            *v23 = 0;
            v44.location = 0;
            v44.length = v5;
            CFArrayGetValues(v15, v44, v24 + 1);
            v30 = 0;
            while (v30 < CFArrayGetCount(v15))
            {
              v31 = CFArrayGetValueAtIndex(v15, v30);
              v32 = &v24[v30++];
              if (v31 != v32[1])
              {
                v33 = __si_assert_copy_extra_661(-1);
                v34 = v33;
                v35 = "";
                if (v33)
                {
                  v35 = v33;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 3862, "CFArrayGetValueAtIndex(inValues,i) == valueArray[i+1]", v35);
                goto LABEL_32;
              }
            }

            if (*v24 != v26)
            {
              v39 = __si_assert_copy_extra_661(-1);
              v34 = v39;
              v40 = "";
              if (v39)
              {
                v40 = v39;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 3865, "valueArray[0]==kCFNull", v40);
LABEL_32:
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

            v37 = CFArrayCreate(v11, v24, v25, MEMORY[0x1E695E9C0]);
            SIBulkSetAttributes(v38, v9, v23, 0, v25, v37, 0, 0, 65540, v8, 0, 0, 0, 0);
            if (v23 != v43)
            {
              free(v23);
            }

            if (v24 != v42)
            {
              free(v24);
            }

            if (v37)
            {
              CFRelease(v37);
            }
          }
        }

        CFRelease(v15);
        v13 = v41;
      }

      CFRelease(v13);
    }
  }
}

void flushPlaybackPossibleMoves(uint64_t a1, const void **a2, int a3)
{
  v4 = *a2;
  v5 = a2[2];
  if (a3)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = *a2;
    v7 = v5;
    v4 = 0;
    v5 = 0;
  }

  SIPossibleMovesBulk(a1, v6, v7, v4, v5);
  v8 = *a2;
  *v8 = 0;
  v8[1] = 0;
  a2[2] = 0;
}

void SITransferAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a4 && a2 >= 3 && a3 >= 3)
  {
    v12 = malloc_type_malloc(0x1CuLL, 0x10000403E1C8BA9uLL);
    *(v12 + 12) = a2;
    *(v12 + 20) = a3;
    *v12 = 0x10F04DFEEDLL;
    *(v12 + 2) = 2;
    pthread_mutex_lock((a1 + 1632));
    JournalFd = getJournalFd(a1, 0, 0);
    v14 = fd_write(JournalFd, v12, 0x1CuLL);
    pthread_mutex_unlock((a1 + 1632));
    if (v14 == -1)
    {
      v26 = *__error();
      v15 = *__error();
      v16 = _SILogForLogForCategory(4);
      v17 = 2 * (dword_1EBF46ADC < 4);
      if (os_log_type_enabled(v16, v17))
      {
        *buf = 67109120;
        LODWORD(v28) = v26;
        _os_log_impl(&dword_1C278D000, v16, v17, "Error writing to log file: %d", buf, 8u);
      }

      *__error() = v15;
    }

    free(v12);
  }

  if (*(a1 + 1048))
  {
    v18 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A004032120C31uLL);
    if (dword_1EBF46ADC >= 5)
    {
      v22 = *__error();
      v23 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "Do attribute transfer.", buf, 2u);
      }

      *__error() = v22;
    }

    *v18 = a1;
    v18[1] = a3;
    v18[2] = a2;
    v18[3] = a4;
    v18[4] = a5;
    *(v18 + 40) = a6;
    v19 = *__error();
    v20 = _SILogForLogForCategory(4);
    v21 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v20, v21))
    {
      *buf = 134218240;
      v28 = a3;
      v29 = 2048;
      v30 = a2;
      _os_log_impl(&dword_1C278D000, v20, v21, "SITransferAttributes from %lld to %lld", buf, 0x16u);
    }

    *__error() = v19;
    si_enqueue_barrier(*(a1 + 1048), transferAttributes, v18);
    if (dword_1EBF46ADC >= 5)
    {
      v24 = *__error();
      v25 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "Leave.", buf, 2u);
      }

      *__error() = v24;
    }
  }
}

void si_queue_playback(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a2 + 24);
    if (v4 && v4 >= a3)
    {
      if (*a2)
      {
        Count = CFArrayGetCount(*a2);
        if (Count)
        {
          v8 = Count;
          if (Count == *(a2 + 24))
          {
            if (*(a2 + 8))
            {
              v9 = malloc_type_malloc(8 * Count + 8, 0x100004000313F17uLL);
              v10 = malloc_type_malloc(8 * v8 + 8, 0xC0040B8AA526DuLL);
              v11 = 0;
              *v9 = 0;
              *v10 = *MEMORY[0x1E695E738];
              v12 = 1;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*a2, v11);
                *valuePtr = 0;
                if (CFNumberGetValue(ValueAtIndex, kCFNumberLongLongType, valuePtr))
                {
                  Value = CFDictionaryGetValue(*(a2 + 8), ValueAtIndex);
                  v10[v12] = Value;
                  if (Value)
                  {
                    v9[v12++] = *valuePtr;
                  }
                }

                ++v11;
              }

              while (v8 != v11);
              if (v12 > 1)
              {
                v15 = CFArrayCreate(*MEMORY[0x1E695E480], v10, v12, MEMORY[0x1E695E9C0]);
                SIBulkSetAttributes(v16, a1, v9, 0, v12, v15, 0, 0, 65540, 5, 0, 0, 0, 0);
                v17 = *__error();
                v18 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = *(a2 + 56);
                  v19 = *(a2 + 64);
                  v21 = *(a2 + 16);
                  v22 = *(a2 + 24);
                  v23 = *(a2 + 32);
                  v24 = *(a2 + 40);
                  v25 = *(a2 + 48);
                  *valuePtr = 134219520;
                  *&valuePtr[4] = v19;
                  v28 = 1024;
                  v29 = v20;
                  v30 = 1024;
                  v31 = v21;
                  v32 = 1024;
                  v33 = v22;
                  v34 = 1024;
                  v35 = v23;
                  v36 = 1024;
                  v37 = v24;
                  v38 = 1024;
                  v39 = v25;
                  _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "### playback file size: %ld batch: %d processed: %d unique: %d dup: %d null: %d unknown: %d", valuePtr, 0x30u);
                }

                *__error() = v17;
                CFArrayRemoveAllValues(*a2);
                CFDictionaryRemoveAllValues(*(a2 + 8));
                v26 = *(a2 + 56) + 1;
                *(a2 + 16) = 0u;
                *(a2 + 32) = 0u;
                *(a2 + 48) = 0;
                *(a2 + 56) = v26;
                if (v15)
                {
                  CFRelease(v15);
                }
              }

              free(v10);
              free(v9);
            }
          }
        }
      }
    }
  }
}

uint64_t SIBulkSetAttributes(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, void (*a11)(uint64_t, uint64_t), uint64_t a12, uint64_t a13, int a14)
{
  MEMORY[0x1EEE9AC00](a1);
  v123 = v21;
  v23 = a11;
  v22 = a12;
  v130 = *MEMORY[0x1E69E9840];
  if (*(v14 + 1288) == 1)
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "SIBulkSetAttributes failed: index is read-only";
LABEL_9:
      _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v27 = v17;
  if (!v17)
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "SIBulkSetAttributes failed: count is zero";
      goto LABEL_9;
    }

LABEL_10:
    *__error() = v24;
    if (a11)
    {
      a11(a12, 1);
    }

    return 0;
  }

  v28 = v20;
  v29 = v19;
  v30 = v18;
  v31 = v16;
  v32 = v14;
  v119 = v15;
  __base = malloc_type_calloc(v17, 0x28uLL, 0x1060040A1774B36uLL);
  v112 = malloc_type_calloc(v27, 8uLL, 0x100004000313F17uLL);
  bzero(buf, 0x1000uLL);
  v117 = v32;
  cf = v28;
  if (v27 <= 4096)
  {
    if (v27 <= 1)
    {
      v74 = buf;
      __memset_chk();
      v73 = 0;
      goto LABEL_55;
    }

    v34 = buf;
  }

  else
  {
    v34 = malloc_type_malloc(v27, 0xF4191400uLL);
  }

  v36 = gSILogLevels[0];
  v37 = 1;
  *&v33 = 134217984;
  v121 = v34;
  do
  {
    if (v36 >= 5)
    {
      *allocatora = v33;
      v109 = *__error();
      v38 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(v119 + 8 * v37);
        *block = allocatora[0];
        *&block[4] = v39;
        _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, "Enqueue attribute change %llx.", block, 0xCu);
      }

      *__error() = v109;
      v36 = gSILogLevels[0];
      v34 = v121;
      v33 = *allocatora;
    }

    ++v37;
  }

  while (v27 != v37);
  bzero(v34, v27);
  v40 = 0;
  v41 = 0;
  v42 = *MEMORY[0x1E695E738];
  allocator = v27;
  v43 = v27 - 1;
  v44 = __base + 16;
  do
  {
    *(v44 - 2) = *(v119 + 8 + 8 * v40);
    if (v31)
    {
      v45 = *(v31 + 8 + 8 * v40);
    }

    else
    {
      v45 = 0;
    }

    *(v44 - 1) = v45;
    if (v30)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v30, v40 + 1);
    }

    else
    {
      ValueAtIndex = 0;
    }

    *v44 = ValueAtIndex;
    if (v29)
    {
      v47 = CFArrayGetValueAtIndex(v29, v40 + 1);
    }

    else
    {
      v47 = 0;
    }

    if (v47 == v42)
    {
      v48 = 0;
    }

    else
    {
      v48 = v47;
    }

    *(v44 + 1) = v48;
    v44[16] = *(v121 + v40) != 0;
    v41 += (*(v121 + v40++) == 0) & (v123 >> 4);
    v44 += 40;
  }

  while (v43 != v40);
  if (!v41)
  {
    v73 = 1;
    v22 = a12;
    v23 = a11;
    v74 = v121;
    v32 = v117;
    v27 = allocator;
LABEL_55:
    v49 = v27 - 1;
    goto LABEL_56;
  }

  v49 = v43;
  v50 = malloc_type_malloc(8 * v43, 0x100004000313F17uLL);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v43, 0);
  v52 = 0;
  v53 = __base + 32;
  v54 = v43;
  v23 = a11;
  do
  {
    if ((*v53 & 1) == 0)
    {
      CFArrayAppendValue(Mutable, *(v53 - 2));
      v50[v52++] = *(v53 - 4);
    }

    v53 += 40;
    --v54;
  }

  while (v54);
  v22 = a12;
  v27 = allocator;
  if (v52)
  {
    MutableUsingMalloc = _MDPlistBytesCreateMutableUsingMalloc();
    _MDPlistBytesAppendPlist();
    ByteVectorCount = _MDPlistBytesGetByteVectorCount();
    v57 = malloc_type_malloc(8 * v52 + ByteVectorCount + 12, 0x10000403E1C8BA9uLL);
    if (a10 == 12)
    {
      v58 = -262275347;
    }

    else
    {
      v58 = -267518227;
    }

    v59 = v57;
    *v57 = v58;
    v60 = v57 + 3;
    v61 = &v57[2 * v52 + 3];
    ByteVector = _MDPlistBytesGetByteVector();
    v120 = MutableUsingMalloc;
    v63 = _MDPlistBytesGetByteVectorCount();
    memcpy(v61, ByteVector, v63);
    if (v52 >= 1)
    {
      v64 = v50;
      v65 = v52;
      do
      {
        v66 = *v64++;
        *v60++ = v66;
        --v65;
      }

      while (v65);
    }

    v67 = _MDPlistBytesGetByteVectorCount() + 8 * v52;
    *(v59 + 4) = v67;
    *(v59 + 8) = v52;
    v68 = v59;
    pthread_mutex_lock((v117 + 1632));
    JournalFd = getJournalFd(v117, 0, 0);
    v70 = fd_write(JournalFd, v59, v67 + 12);
    pthread_mutex_unlock((v117 + 1632));
    v22 = a12;
    v23 = a11;
    if (v70 == -1)
    {
      v107 = *__error();
      v110 = *__error();
      v71 = _SILogForLogForCategory(4);
      v72 = 2 * (dword_1EBF46ADC < 4);
      if (os_log_type_enabled(v71, v72))
      {
        *block = 67109120;
        *&block[4] = v107;
        _os_log_impl(&dword_1C278D000, v71, v72, "Error writing to log file: %d", block, 8u);
      }

      *__error() = v110;
    }

    CFRelease(v120);
    free(v68);
  }

  free(v50);
  CFRelease(Mutable);
  v73 = 1;
  v74 = v121;
  v32 = v117;
LABEL_56:
  if (v27 >= 3 && (v123 & 1) == 0)
  {
    qsort(__base, v49, 0x28uLL, OIDAttrPairCmp);
  }

  v75 = malloc_type_calloc(1uLL, 80 * v49 + 24, 0x1080040CC6EE3FDuLL);
  if (v75)
  {
    v122 = v74;
    v108 = v75;
    v111 = v49;
    *(v75 + 2) = v49;
    if (v73)
    {
      allocatorb = *MEMORY[0x1E695E480];
      v76 = __base + 16;
      v77 = (v75 + 96);
      v78 = v112;
      while (1)
      {
        v79 = cf;
        if (cf)
        {
          v79 = CFRetain(cf);
        }

        v80 = *(v76 - 1);
        *(v77 - 3) = v80;
        *(v77 - 4) = v79;
        *(v77 - 9) = v32;
        v81 = v76[16];
        if ((v80 == 0) | v81 & 1)
        {
          v82 = 2;
        }

        else
        {
          v82 = 0;
        }

        *(v77 - 6) = v82 | v123;
        *(v77 - 5) = a10;
        if (v81)
        {
          v83 = 0;
        }

        else
        {
          v83 = v80;
        }

        *v78 = v83;
        *(v77 - 2) = a13;
        v84 = *(v76 + 1);
        if (v84)
        {
          CFRetain(*(v76 + 1));
        }

        *(v77 - 7) = v84;
        *(v77 - 2) = a14;
        *v77 = CFAbsoluteTimeGetCurrent();
        if ((v123 & 0x80) != 0)
        {
          break;
        }

LABEL_84:
        if (*v76)
        {
          v85 = CFGetTypeID(*v76);
          if (v85 == CFDictionaryGetTypeID())
          {
            v86 = *v76;
            if (*v76)
            {
              CFRetain(*v76);
            }

            *(v77 - 8) = v86;
          }
        }

        if (a10 == 7 || !*(v77 - 8))
        {
          goto LABEL_102;
        }

        v87 = CFNumberCreate(allocatorb, kCFNumberLongLongType, v77 - 6);
        v88 = v32;
        v89 = *(v77 - 6);
        pthread_mutex_lock((v88 + 1816));
        if (CFBagGetValue(*(v88 + 1800), v87))
        {
          Value = CFDictionaryGetValue(*(v88 + 1808), v87);
          v91 = Value;
          if ((v89 & 1) == 0)
          {
            if (!Value)
            {
              v91 = CFArrayCreateMutable(allocatorb, 0, MEMORY[0x1E695E9C0]);
              CFDictionarySetValue(*(v117 + 1808), v87, v91);
              CFRelease(v91);
            }

            CFArrayAppendValue(v91, *(v77 - 8));
            goto LABEL_101;
          }

          if (Value)
          {
            CFArrayRemoveAllValues(Value);
          }
        }

        else if ((v89 & 1) == 0)
        {
          goto LABEL_101;
        }

        CFBagSetValue(*(v117 + 1800), v87);
LABEL_101:
        v32 = v117;
        pthread_mutex_unlock((v117 + 1816));
        CFRelease(v87);
LABEL_102:
        ++v78;
        v76 += 40;
        v77 += 10;
        if (!--v49)
        {
          goto LABEL_107;
        }
      }

      if (*v76)
      {
        if (CFDictionaryGetCount(*v76) > 1)
        {
          if (*v76)
          {
            goto LABEL_78;
          }
        }

        else
        {
          *v76 = 0;
        }
      }

      *(v77 - 6) |= 0x100u;
LABEL_78:
      if (!*(v32 + 6880) || (*(v32 + 6584) & 0x10) != 0)
      {
        *(v77 - 6) |= 4u;
      }

      else if (a14 == -1)
      {
        *(v77 - 2) = 1;
      }

      if (dword_1EBF46ADC >= 5)
      {
        v92 = *__error();
        v93 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          v94 = *(v77 - 6);
          v95 = *(v77 - 6);
          *block = 134218240;
          *&block[4] = v94;
          *&block[12] = 1024;
          *&block[14] = v95;
          _os_log_impl(&dword_1C278D000, v93, OS_LOG_TYPE_DEFAULT, "PUSH REPAIR oid: %lld, f:%x", block, 0x12u);
        }

        *__error() = v92;
        v32 = v117;
      }

      goto LABEL_84;
    }

LABEL_107:
    if ((v123 & 1) != 0 || !a13)
    {
      v98 = v108;
      v97 = v111;
      *v108 = v23;
      v108[1] = v22;
      v23 = 0;
      v96 = v112;
    }

    else
    {
      v96 = v112;
      v98 = v108;
      v97 = v111;
    }

    v102 = *(v32 + 1048);
    v103 = *(v102 + 8);
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 0x40000000;
    *&block[16] = __si_push_queue_block_invoke;
    *&block[24] = &__block_descriptor_tmp_41_1562;
    v126 = v102;
    v127 = a13;
    v128 = v96;
    v129 = v97;
    dispatch_sync(v103, block);
    v74 = v122;
    if (a10 == 10 || (v123 & 0x801) == 0)
    {
      v104 = (v32 + 1048);
      if (a14 && *(v32 + 6928) != a14)
      {
        *(v32 + 6928) = a14;
      }
    }

    else
    {
      if (a14 && *(v32 + 6928) != a14)
      {
        *(v32 + 6928) = a14;
      }

      v104 = (v32 + 1160);
    }

    v105 = *v104;
    v106 = qos_class_self();
    si_enqueue_barrier_with_qos(v105, v106, setAttributesBulk, v98);
    if (v23)
    {
      v23(v22, 0);
    }

    free(__base);
    free(v96);
    v101 = 1;
    result = 1;
  }

  else
  {
    v99 = *__error();
    v100 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      *block = 136315650;
      *&block[4] = "SIBulkSetAttributes";
      *&block[12] = 1024;
      *&block[14] = 19464;
      *&block[18] = 2048;
      *&block[20] = 80 * v49 + 24;
      _os_log_error_impl(&dword_1C278D000, v100, OS_LOG_TYPE_ERROR, "%s:%d: SIBulkSetAttributes failed: calloc failed to allocate size %zu", block, 0x1Cu);
    }

    *__error() = v99;
    if (v23)
    {
      v23(v22, 1);
    }

    free(__base);
    free(v112);
    v101 = 0;
    result = 0;
  }

  if (v74 != buf)
  {
    free(v74);
    return v101;
  }

  return result;
}

void setAttributesBulk(void *a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a1[2] >= gCPUCount)
  {
    v4 = gCPUCount;
  }

  else
  {
    v4 = a1[2];
  }

  if (v4 >= 0x10)
  {
    v5 = 16;
  }

  else
  {
    v5 = v4;
  }

  if (dword_1EBF46ADC >= 5)
  {
    v26 = *__error();
    v27 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = a1[2];
      *buf = 134218240;
      *&buf[4] = v28;
      v36 = 2048;
      v37 = v5;
      _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "Begin setattr with %ld items on %ld threads", buf, 0x16u);
    }

    *__error() = v26;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = dispatch_group_create();
  v9 = v7;
  if (!a2 && v4 > 1)
  {
    *buf = 0;
    v10 = a1[3];
    v11 = *(v10 + 32);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 0x40000000;
    v32[2] = __setAttributesBulk_block_invoke;
    v32[3] = &__block_descriptor_tmp_1998;
    v33 = v11;
    v32[4] = buf;
    v32[5] = a1;
    v32[6] = v7;
    v34 = 0;
    dispatch_apply(v5, 0, v32);
    v12 = v10;
    goto LABEL_19;
  }

  v13 = a1[2];
  if (a2)
  {
    v14 = 0;
    if (!v13)
    {
      goto LABEL_18;
    }

LABEL_16:
    v15 = 0;
    v16 = a1 + 3;
    do
    {
      _setAttributes(v8);
      ++v15;
      v16 += 10;
    }

    while (v15 < a1[2]);
    goto LABEL_18;
  }

  if (v13)
  {
    v14 = a1[3];
    goto LABEL_16;
  }

  v14 = 0;
LABEL_18:
  v12 = v14;
LABEL_19:
  bumpWorkTime(v12, Current);
  if (dword_1EBF46ADC >= 5)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = "Canceled";
      if (!a2)
      {
        v31 = "Complete";
      }

      *buf = 136315138;
      *&buf[4] = v31;
      _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "%s setattr", buf, 0xCu);
    }

    *__error() = v29;
  }

  if (*a1)
  {
    (*a1)(a1[1], a2);
  }

  if (!a2)
  {
    if (a1[2])
    {
      v17 = a1[3];
      if ((*(v17 + 2072) & 1) == 0 && (*(v17 + 1480) & 1) == 0)
      {
        v18 = **(v17 + 1048);
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
        if (v19[33] <= 1)
        {
          v20 = *(v17 + 1472);
          v21 = CFAbsoluteTimeGetCurrent();
          *(v17 + 1472) = v21;
          if (v21 - v20 >= 0.9)
          {
            *(v17 + 1480) = 1;
            v22 = *__error();
            v23 = _SILogForLogForCategory(11);
            v24 = 2 * (dword_1EBF46AF8 < 4);
            if (os_log_type_enabled(v23, v24))
            {
              *buf = 0;
              _os_log_impl(&dword_1C278D000, v23, v24, "Index going idle; sync immediately", buf, 2u);
            }

            *__error() = v22;
            si_sync_ctx_create_with_defer_fd(v17, 0);
            *(v25 + 139) = 1;
            si_enqueue_work_with_qos(*(v17 + 1104), 9, si_sync_index_delayed0, v25);
          }
        }
      }
    }
  }

  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  free(a1);
}

void _setAttributes(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v409 = *MEMORY[0x1E69E9840];
  if (*(v7 + 56))
  {
    v9 = dword_1EBF46AD8 < 5;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v267 = *__error();
    v268 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
    {
      v270 = CFAbsoluteTimeGetCurrent() - *(v8 + 72);
      LODWORD(v360[0]) = 134217984;
      *(v360 + 4) = v270;
      _os_log_impl(&dword_1C278D000, v268, OS_LOG_TYPE_DEFAULT, "Set attributes waited for %f seconds", v360, 0xCu);
    }

    *__error() = v267;
  }

  v10 = 0x1EBF46000uLL;
  if (!v2)
  {
    v327 = v6;
    v320 = v4;
    if (dword_1EBF46ADC < 5)
    {
      v14 = 0;
    }

    else
    {
      v271 = *__error();
      v272 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
      {
        v274 = *(v8 + 24);
        v275 = *(v8 + 52);
        LODWORD(v360[0]) = 134218496;
        *(v360 + 4) = v274;
        WORD2(v360[1]) = 1024;
        *(&v360[1] + 6) = v275;
        WORD1(v360[2]) = 1024;
        HIDWORD(v360[2]) = v275;
        _os_log_impl(&dword_1C278D000, v272, OS_LOG_TYPE_DEFAULT, "_setAttributes oid: %lld source: %d options: 0x%x", v360, 0x18u);
      }

      *__error() = v271;
      v14 = dword_1EBF46ADC > 4;
    }

    v15 = (v8 + 24);
    v16 = *(v8 + 48);
    v17 = v16 & 1;
    if (*(v8 + 24))
    {
      v18 = (v16 >> 1) & 1;
    }

    else
    {
      v18 = 1;
    }

    v19 = v18 != 1 || !v14;
    LODWORD(v339) = *(v8 + 48);
    v341 = v16 & 1;
    if (!v19)
    {
      v281 = *__error();
      v282 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v282, OS_LOG_TYPE_DEFAULT))
      {
        v284 = *v15;
        LODWORD(v360[0]) = 134217984;
        *(v360 + 4) = v284;
        _os_log_impl(&dword_1C278D000, v282, OS_LOG_TYPE_DEFAULT, "Dummy coming in oid: %lld", v360, 0xCu);
      }

      *__error() = v281;
      v16 = *(v8 + 48);
      v17 = v341;
    }

    v330 = v17 == 0;
    LODWORD(v332) = v16 & 0x100;
    v20 = v332 == 0;
    if ((v16 & 0x100) == 0 && v17)
    {
      v20 = (v16 & 0x24) != 0;
    }

    v21 = *(v8 + 64);
    if (_os_feature_enabled_impl() && (v23 = *(v8 + 8)) != 0)
    {
      v24 = CFGetTypeID(v23);
      if (v24 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(*(v8 + 8), @"_kMDItemIsEvictedFile")) != 0)
      {
        v26 = Value;
        v27 = v16;
        v28 = CFGetTypeID(Value);
        if ((v28 == CFBooleanGetTypeID() || (v29 = CFGetTypeID(v26), v29 == CFNumberGetTypeID())) && CFBooleanGetValue(v26))
        {
          v328 = 0;
          *(v8 + 48) &= ~1u;
        }

        else
        {
          v328 = v339;
        }

        v17 = v341;
        v16 = v27;
      }

      else
      {
        v328 = v339;
        v17 = v341;
      }
    }

    else
    {
      v328 = v339;
    }

    v30 = v16;
    if ((v18 & 1) == 0)
    {
      v31 = *(v8 + 16);
      v30 = v16;
      if (v31)
      {
        if (CFDictionaryGetValue(v31, @"_kMDItemDeleted"))
        {
          v30 = v16 | 0x8000;
        }

        else
        {
          v30 = v16;
        }
      }
    }

    if ((v30 & 0x18000) == 0x10000)
    {
      bzero(v360, 0x400uLL);
      if (!(*(*(*v8 + 1416) + 40))())
      {
        v30 |= 0x8000u;
      }
    }

    v334 = v8;
    LODWORD(v331) = v30;
    if ((v30 & 0x8000) != 0)
    {
      v35 = *v15;
      if (*v15)
      {
        if (dword_1EBF46ADC >= 5)
        {
          v290 = v16;
          v291 = *__error();
          v292 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v292, OS_LOG_TYPE_DEFAULT))
          {
            v293 = *v15;
            LODWORD(v360[0]) = 134217984;
            *(v360 + 4) = v293;
            _os_log_impl(&dword_1C278D000, v292, OS_LOG_TYPE_DEFAULT, "deleting oid: %lld", v360, 0xCu);
          }

          *__error() = v291;
          v35 = *v15;
          v8 = v334;
          v16 = v290;
        }

        LOBYTE(v360[0]) = 0;
        v36 = *v8;
        _si_delete_attributes_inner(*v8, v35, 0, 0, 1u, 0, v360);
        si_finish_text_store_deletions(v36);
        if (LOBYTE(v360[0]) == 1)
        {
          notify_post("com.apple.spotlight.SyndicatedContentDeleted");
        }

        LODWORD(v342) = 1;
        v17 = v341;
        if (!v20)
        {
LABEL_65:
          if (!v17)
          {
            goto LABEL_69;
          }

          if (*(v8 + 8) == *MEMORY[0x1E695E738])
          {
            v285 = __si_assert_copy_extra_661(*(*v8 + 32));
            v286 = v285;
            v287 = "";
            if (v285)
            {
              v287 = v285;
            }

            __message_assert("%s:%u: failed assertion '%s' %s src: %d id: %d oid: %lld parent: %lld options: %x extra: %p", "SpotlightIndex.c", 27202, "(CFTypeRef)ctx->attrdict!=(CFTypeRef)kCFNull", v287, *(v8 + 52), *(v8 + 64), *(v8 + 24), *(v8 + 32), *(v8 + 48), *(v8 + 16));
            free(v286);
            if (__valid_fs(*(*v8 + 32)))
            {
              v288 = 2989;
            }

            else
            {
              v288 = 3072;
            }

            *v288 = -559038737;
            abort();
          }

          if ((v331 & 0x400) != 0)
          {
LABEL_69:
            LOBYTE(v42) = 0;
            v41 = 0;
          }

          else
          {
            v40 = v331 & 0x200;
            v41 = v40 == 0;
            v42 = v40 >> 9;
          }

          if ((v16 & 0x40) != 0)
          {
            v43 = 4;
          }

          else
          {
            v43 = 6;
          }

          if ((v16 & 0xC0) == 0)
          {
            v43 = 7;
          }

          if ((v16 & 0x1C0) == 0)
          {
            v43 = 5;
            v44 = 5;
            v45 = 5;
            if ((v16 & 0x20) != 0 || !v17)
            {
              goto LABEL_77;
            }

            v58 = (v16 & 0x1000) == 0;
            v59 = !v20 || !v58;
            v43 = v20 && v58 ? 1 : 9;
            v44 = v20 && v58 ? 2 : 9;
            v45 = v59 ? 9 : 3;
            if ((v20 | ((v16 & 0x1000) >> 12)))
            {
              goto LABEL_77;
            }

            v43 = ((v16 << 18) >> 31) & 5;
          }

          v44 = v43;
          v45 = v43;
LABEL_77:
          if (v42)
          {
            v46 = v43;
          }

          else
          {
            v46 = v45;
          }

          LODWORD(v318) = v41;
          if (v41)
          {
            v47 = v44;
          }

          else
          {
            v47 = v46;
          }

          v48 = *(v8 + 52);
          if (v48 - 10 >= 3)
          {
            v49 = v47;
          }

          else
          {
            v49 = v48;
          }

          v50 = v48 - 10 < 3 || v20;
          v338 = v50;
          if ((*(*v8 + 2072) & 1) == 0 && v49 != v48)
          {
            v51 = v16;
            v52 = *__error();
            v53 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v121 = *(v8 + 52);
              v122 = *(v8 + 24);
              LODWORD(v360[0]) = 136316418;
              *(v360 + 4) = "_setAttributes";
              WORD2(v360[1]) = 1024;
              *(&v360[1] + 6) = 27253;
              WORD1(v360[2]) = 1024;
              HIDWORD(v360[2]) = v121;
              LOWORD(v360[3]) = 1024;
              *(&v360[3] + 2) = v49;
              HIWORD(v360[3]) = 2048;
              v361 = v122;
              LOWORD(v362) = 1024;
              *(&v362 + 2) = v331;
              _os_log_error_impl(&dword_1C278D000, v53, OS_LOG_TYPE_ERROR, "%s:%d: ctx->source: %d != source: %d oid: %lld options: %x", v360, 0x2Eu);
            }

            *__error() = v52;
            v16 = v51;
          }

          v319 = v16;
          v54 = v16 & 0x80;
          if ((v342 & 1) == 0)
          {
            v55 = *(v8 + 8);
            if (v55)
            {
              v56 = v16 & 0x80;
              bzero(&v372, 0x400uLL);
              bzero(&v365, 0x400uLL);
              v57 = CFDictionaryGetValue(v55, @":MD:kMDItemPath");
              if (v57 && CFStringGetCString(v57, &v372, 1024, 0x8000100u))
              {
                snprintf(v360, 0x400uLL, "processing oid: %lld source: %d %s", *v15, v49, &v372);
              }

              else
              {
                snprintf(v360, 0x400uLL, "processing oid: %lld source: %d", *v15, v49);
              }

              snprintf(&v365, 0x400uLL, "processing oid: %lld source: %d", *v15, v49);
              __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 27270, &v365);
              v54 = v56;
            }
          }

          v60 = *v8;
          v329 = v54;
          v340 = v15;
          if ((v54 >> 7) | (v332 >> 8))
          {
            v61 = *__error();
            v62 = _SILogForLogForCategory(4);
            v63 = 2 * (dword_1EBF46ADC < 4);
            if (os_log_type_enabled(v62, v63))
            {
              v64 = *v340;
              LODWORD(v360[0]) = 134218496;
              *(v360 + 4) = v64;
              WORD2(v360[1]) = 1024;
              *(&v360[1] + 6) = v331;
              WORD1(v360[2]) = 1024;
              HIDWORD(v360[2]) = v21;
              _os_log_impl(&dword_1C278D000, v62, v63, "DEQUEUE oid: %lld, o: %x t: %d", v360, 0x18u);
            }

            *__error() = v61;
            v15 = v340;
          }

          v326 = v339 & 0x4800;
          v65 = *(v8 + 8);
          v324 = *(v8 + 16);
          v325 = v65;
          v66 = *(v8 + 32);
          v337 = *(v8 + 24);
          v67 = *(v8 + 40);
          v322 = v66;
          v323 = v67;
          v343 = v60;
          if (!v341)
          {
            goto LABEL_131;
          }

          v68 = *MEMORY[0x1E695E480];
          v69 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongLongType, v15);
          pthread_mutex_lock((v60 + 1816));
          if (MEMORY[0x1C691E5E0](*(v60 + 1800), v69) < 2)
          {
            v71 = CFDictionaryGetValue(*(v60 + 1808), v69);
            v70 = v71;
            if (v71)
            {
              CFRetain(v71);
              CFDictionaryRemoveValue(*(v60 + 1808), v69);
            }
          }

          else if (dword_1EBF46ADC >= 5)
          {
            v294 = *__error();
            v295 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v295, OS_LOG_TYPE_DEFAULT))
            {
              v296 = *v340;
              LODWORD(v360[0]) = 134217984;
              *(v360 + 4) = v296;
              _os_log_impl(&dword_1C278D000, v295, OS_LOG_TYPE_DEFAULT, "Duplicate in flight oid: %lld", v360, 0xCu);
            }

            v70 = 0;
            *__error() = v294;
            LODWORD(v342) = 1;
            v8 = v334;
            v60 = v343;
          }

          else
          {
            v70 = 0;
            LODWORD(v342) = 1;
          }

          CFBagRemoveValue(*(v60 + 1800), v69);
          pthread_mutex_unlock((v60 + 1816));
          CFRelease(v69);
          if (v70)
          {
            Mutable = CFDictionaryCreateMutable(v68, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v73 = *(v8 + 8);
            v360[0] = Mutable;
            v360[1] = v73;
            Count = CFArrayGetCount(v70);
            if (Count >= 1)
            {
              v75 = Count + 1;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v70, v75 - 2);
                CFDictionaryApplyFunction(ValueAtIndex, preProcessInFlight, v360);
                --v75;
              }

              while (v75 > 1);
            }

            v321 = CFDictionaryGetCount(Mutable);
            if (!v321)
            {
              CFRelease(Mutable);
              Mutable = 0;
            }

            v333 = Mutable;
            CFRelease(v70);
            v60 = v343;
          }

          else
          {
LABEL_131:
            v321 = 0;
            v333 = 0;
          }

          v77 = 0;
          if (v49 == 4)
          {
            v78 = 1;
          }

          else
          {
            v78 = v338;
          }

          *&v22 = 67109376;
          v335 = v22;
          *&v22 = 67109120;
          v336 = v22;
          do
          {
            if (v78)
            {
              LiveIndex = si_getLiveIndex(*(v60 + 1384));
            }

            else
            {
              LiveIndex = si_getSyncIndex(v60, v21);
            }

            SyncIndex = LiveIndex;
            if (v21 < 1)
            {
              goto LABEL_156;
            }

            v21 &= ~(v21 >> 31);
            if (v21 > LiveIndex[10] && (LiveIndex[11] & 1) == 0)
            {
              v81 = v49;
              v82 = *__error();
              v83 = _SILogForLogForCategory(4);
              v84 = v10;
              v85 = *(v10 + 2780) < 3;
              if (os_log_type_enabled(v83, v85))
              {
                v86 = SyncIndex[10];
                v360[0] = __PAIR64__(v21, v335);
                LOWORD(v360[1]) = 1024;
                *(&v360[1] + 2) = v86;
                _os_log_impl(&dword_1C278D000, v83, v85, "*warn* Unexpected transaction id %d. Expected %d. Attempting repair", v360, 0xEu);
              }

              *__error() = v82;
              v60 = v343;
              si_sync_ctx_create_with_defer_fd(v343, 0);
              v88 = v87;
              *(v87 + 80) = v21 - 1;
              v89 = *(v60 + 1048);
              v90 = qos_class_self();
              si_enqueue_barrier_with_qos(v89, v90, si_initialIndexingEndedQueueOnFlush, v88);
              v91 = *__error();
              v92 = _SILogForLogForCategory(4);
              v93 = *(v84 + 2780) < 3;
              if (os_log_type_enabled(v92, v93))
              {
                v360[0] = __PAIR64__(si_getSyncIndex(v60, v21)[10], v336);
                _os_log_impl(&dword_1C278D000, v92, v93, "*warn* Transaction id is now %d", v360, 8u);
              }

              *__error() = v91;
              SyncIndex = si_getSyncIndex(v60, v21);
              v10 = v84;
              v49 = v81;
            }

            v94 = SyncIndex[10];
            if (v21 <= v94 || SyncIndex == v77 || SyncIndex == 0)
            {
              break;
            }

            v77 = SyncIndex;
          }

          while (*(SyncIndex + 44) != 1);
          if ((v330 | v338) & 1 | (v21 >= v94))
          {
LABEL_156:
            v8 = v334;
            v97 = v340;
          }

          else
          {
            v8 = v334;
            v97 = v340;
            if ((SyncIndex[11] & 1) == 0)
            {
              if (*(v60 + 2424) < v21 && v337 != -1)
              {
                *(v60 + 2424) = v21;
                v103 = *__error();
                v104 = _SILogForLogForCategory(4);
                v105 = *(v10 + 2780) < 3;
                if (os_log_type_enabled(v104, v105))
                {
                  v106 = SyncIndex[10];
                  LODWORD(v360[0]) = 67109632;
                  HIDWORD(v360[0]) = v21;
                  LOWORD(v360[1]) = 1024;
                  *(&v360[1] + 2) = v106;
                  HIWORD(v360[1]) = 2048;
                  v360[2] = v337;
                  _os_log_impl(&dword_1C278D000, v104, v105, "*warn* Items's transaction id %d is too low for the current index %d. Discarding oid %llx.", v360, 0x18u);
                }

                *__error() = v103;
                v97 = v340;
              }

              goto LABEL_158;
            }
          }

          if (v342)
          {
LABEL_158:
            if (*(v10 + 2780) < 5)
            {
LABEL_159:
              LOBYTE(v98) = 0;
              goto LABEL_484;
            }

            v277 = *__error();
            v278 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v360[0]) = 134217984;
              *(v360 + 4) = v337;
              _os_log_impl(&dword_1C278D000, v278, OS_LOG_TYPE_DEFAULT, "isDummy oid: %lld", v360, 0xCu);
            }

            LOBYTE(v98) = 0;
            *__error() = v277;
LABEL_484:
            if (v329 && !*v97)
            {
              v240 = *__error();
              v241 = _SILogForLogForCategory(4);
              v242 = 2 * (*(v10 + 2780) < 4);
              if (os_log_type_enabled(v241, v242))
              {
                LOWORD(v360[0]) = 0;
                _os_log_impl(&dword_1C278D000, v241, v242, "All recovery items processed", v360, 2u);
              }

              *__error() = v240;
              v60 = v343;
              *(v343 + 6892) = 1;
            }

            if (SyncIndex)
            {
              v243 = v98;
            }

            else
            {
              v243 = 1;
            }

            if ((v243 & 1) == 0)
            {
              v244 = si_getLiveIndex(*(*v8 + 1384));
              _CIUpdateContent(v244, 0, 0, 0, 0, 0, 0, 0, 0.0, 0, 0, 0, v49, 0, (*(v60 + 6584) >> 25) & 3, lowDiskSpaceCallback, v60, 0, 0, *(v60 + 2464), v327, 0);
              if (v337)
              {
                v245 = *__error();
                v246 = _SILogForLogForCategory(4);
                v247 = 2 * (*(v10 + 2780) < 4);
                if (os_log_type_enabled(v246, v247))
                {
                  LODWORD(v360[0]) = 134217984;
                  *(v360 + 4) = v337;
                  _os_log_impl(&dword_1C278D000, v246, v247, "Dummy for oid %lld", v360, 0xCu);
                }

                *__error() = v245;
              }
            }

            v248 = *(v60 + 1484);
            atomic_compare_exchange_strong_explicit((v60 + 1484), &v248, 0, memory_order_relaxed, memory_order_relaxed);
            if (v333)
            {
              CFRelease(v333);
            }

            _si_set_error_str(0, 1);
            v249 = *(v8 + 56);
            if (v249)
            {
              v250 = *(v60 + 1048);
              v251 = *(v250 + 8);
              v360[0] = MEMORY[0x1E69E9820];
              v360[1] = 0x40000000;
              v360[2] = __si_pop_queue_block_invoke;
              v360[3] = &__block_descriptor_tmp_42_1565;
              v361 = v250;
              v362 = v249;
              p_obj = 1;
              v364 = v97;
              dispatch_sync(v251, v360);
            }

            goto LABEL_501;
          }

          if (!v337)
          {
            if (*(v10 + 2780) >= 5)
            {
              v107 = *__error();
              v108 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v360[0]) = 134217984;
                *(v360 + 4) = 0;
                _os_log_impl(&dword_1C278D000, v108, OS_LOG_TYPE_DEFAULT, "oid is zero: %lld", v360, 0xCu);
              }

              *__error() = v107;
              LOBYTE(v98) = 1;
              v8 = v334;
              v97 = v340;
              v60 = v343;
              goto LABEL_484;
            }

LABEL_483:
            LOBYTE(v98) = 1;
            goto LABEL_484;
          }

          v99 = *(v60 + 1192);
          obj = 0;
          obj_callback = db_get_obj_callback(v99, v337, &obj, 0x10000, si_docIdRewriteCallback, *(v60 + 2368), 0);
          v102 = obj_callback;
          if (obj_callback)
          {
            if (obj_callback == 9)
            {
              v98 = 0;
LABEL_468:
              if (obj)
              {
                free(obj);
                obj = 0;
              }

              if (SyncIndex)
              {
                v233 = v98;
              }

              else
              {
                v233 = 0;
              }

              if (v233 != 1)
              {
                goto LABEL_484;
              }

              v234 = atomic_load(SyncIndex + 9);
              if ((v234 & 2) == 0 && (*(SyncIndex + 15203) & 1) == 0 && *(SyncIndex + 15664) && !atomic_fetch_or((v60 + 1448), 2u))
              {
                v235 = *__error();
                v236 = _SILogForLogForCategory(4);
                v237 = 2 * (*(v10 + 2780) < 4);
                if (os_log_type_enabled(v236, v237))
                {
                  LOWORD(v360[0]) = 0;
                  _os_log_impl(&dword_1C278D000, v236, v237, "Schedule index flush.", v360, 2u);
                }

                *__error() = v235;
                v238 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
                v60 = v343;
                *v238 = v343;
                v238[1] = SyncIndex;
                v239 = SyncIndex[14];
                *(v238 + 4) = 2;
                *(v238 + 5) = v239;
                si_indexDeleteDeferredItems(v60);
                v238[5] = copyHoldQueue(*v238);
                if (!v238[9] && !*(v238 + 12))
                {
                  v261 = *(v60 + 2360);
                  if (v261)
                  {
                    v262 = *(v261 + 64);
                    if (v262)
                    {
                      *(v238 + 12) = v262(*(v261 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 28066, "void _setAttributes(si_set_attr_ctx *, _Bool, dispatch_group_t, Boolean)");
                    }
                  }
                }

                si_enqueue_work(*(v60 + 1040), _flushCache, v238);
              }

              goto LABEL_483;
            }
          }

          else
          {
            db_validate_obj(v99);
          }

          LODWORD(v335) = v102;
          v342 = v99;
          v346 = 0;
          v347 = 0;
          v345 = 0;
          v109 = v330;
          if (!obj)
          {
            v109 = 0;
          }

          v110 = v325;
          if (v109 == 1 && v325)
          {
            derivedAttributesCheck(v325, &v346, &v347, 1, &v345, v342, obj, v337);
          }

          MEMORY[0x1EEE9AC00](v101);
          bzero(v312, 0x1000uLL);
          allocator = _SIStackAllocatorCreate(v312, 4096, indexingZone);
          v111 = v324;
          if (v110)
          {
            v112 = CFDictionaryGetCount(v110);
            if (v111)
            {
LABEL_182:
              v113 = CFDictionaryGetCount(v111);
              goto LABEL_187;
            }
          }

          else
          {
            v112 = 0;
            if (v324)
            {
              goto LABEL_182;
            }
          }

          v113 = 0;
LABEL_187:
          v114 = v321 + v112 + v113;
          v115 = v114 + 4;
          v116 = v114 + 27;
          v321 = MEMORY[0x1C691E420](allocator, 16 * &v114[(v114 + 4)] + 656, 4272640632, 16 * &v114[(v114 + 4)] + 656);
          v117 = &v321[(v114 + 27)];
          v118 = &v117[(v114 + 27)];
          bzero(v373, 0x260uLL);
          v119 = 0;
          v372 = 0xFFF0000000000000;
          if (v328)
          {
            v120 = 2;
          }

          else
          {
            v120 = 0;
          }

          if (v49 == 10)
          {
            ++v120;
          }

          v374 = v120;
          v316 = v117;
          if (v335 || !obj)
          {
LABEL_207:
            v126 = v60;
            v127 = &v118[v114];
            v374 = v374 & 0xFFFFFE7F | v119 | (*(v126 + 2072) << 8) | 0x1000;
            v128 = v347;
            if (v347)
            {
              v128 = CFRetain(v347);
            }

            v8 = v334;
            v377 = v128;
            v384 = v321;
            v385 = v117;
            v387 = v116;
            v390 = v118;
            v391 = v127;
            v393 = v115;
            v404 = -1;
            v406 = -1;
            v129 = v343;
            v131 = v324;
            v130 = v325;
            if (obj)
            {
              LOBYTE(v344) = 0;
              v360[0] = 0;
              v365 = 0;
              if (db_get_field(v342, obj, "_kMDItemGroupId", v360, &v365))
              {
                if (!si_getGroupFromDBO(v129, obj, &v344) && *(v10 + 2780) >= 5)
                {
                  v132 = *__error();
                  v133 = _SILogForLogForCategory(4);
                  if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
                  {
                    *v349 = 0;
                    _os_log_impl(&dword_1C278D000, v133, OS_LOG_TYPE_DEFAULT, "Couldn't get the group id.", v349, 2u);
                  }

                  *__error() = v132;
                  v8 = v334;
                  v129 = v343;
                  v131 = v324;
                  v130 = v325;
                }
              }

              else if (*(v360[0] + 8) == 1)
              {
                LOBYTE(v344) = *v365;
              }

              if ((v344 & 0xF7) == 2)
              {
                v374 |= 0x400u;
              }
            }

            if (v130 | v131)
            {
              v134 = v333;
              if (v333)
              {
                CFDictionaryApplyFunction(v333, preProcess, &v372);
                CFRelease(v134);
              }

              v135 = v346;
              if (v346)
              {
                CFDictionaryApplyFunction(v346, preProcess, &v372);
                CFRelease(v135);
                v346 = 0;
              }

              if (v131)
              {
                CFDictionaryApplyFunction(v131, preProcess, &v372);
              }

              v397 = v131;
              if (v130)
              {
                CFDictionaryApplyFunction(v130, preProcess, &v372);
              }

              postPreprocess(&v372, 0);
              if (v347)
              {
                CFRelease(v347);
              }

              v347 = 0;
              handleUserTags(&v372);
              if (v398)
              {
                if (SyncIndex)
                {
                  if (v49 <= 3)
                  {
                    ContentIndexUpdateTimeStamp(SyncIndex, v398, v318, v338);
                    if (v398 > *(v129 + 2408))
                    {
                      *(v129 + 2408) = v398;
                    }
                  }
                }
              }

              if (v376)
              {
                InsertPreProcessContextAddAttr(&v372, @"_kTimeMachineOldestSnapshot", v376, 0);
                v376 = 0;
              }

              v136 = v331;
              if (v375)
              {
                InsertPreProcessContextAddAttr(&v372, @"_kTimeMachineNewestSnapshot", v375, 0);
                v375 = 0;
              }

              v137 = v374;
              if ((v374 & 0x10) != 0 && v386)
              {
                v137 = v374 & 0xEF;
                v374 &= ~0x10u;
              }

              if ((v137 & 0x20) != 0)
              {
                if (v380)
                {
                  if (!CFDictionaryGetValue(v130, @"_kMDItemSnippet"))
                  {
                    v138 = SICreateStringByRemovingWhitespaceFromTextContent(allocator, v380, 300);
                    if (v138)
                    {
                      InsertPreProcessContextAddAttr(&v372, @"_kMDItemSnippet", v138, 0);
                    }
                  }
                }
              }

              v333 = 0;
              v139 = v322;
              if (v408)
              {
                v140 = v322 == 0;
              }

              else
              {
                v140 = 1;
              }

              if (!v140)
              {
                v139 = v408;
              }

              v322 = v139;
            }

            else
            {
              v136 = v331;
            }

            v141 = v342;
            if (obj)
            {
              if (!v388 && (v339 & 0x801) == 0x800)
              {
                v360[0] = 0;
                v365 = 0;
                if (!db_get_field(v342, obj, "_kMDItemUserTags", v360, &v365))
                {
                  v143 = _decodeSDBField(v141, v360[0], v365, 0, 0, 0, 0, *MEMORY[0x1E695E480], v142);
                  v144 = CFGetTypeID(v143);
                  if (v144 == CFStringGetTypeID() || (TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(v143)))
                  {
                    v388 = @":EA:_kMDItemUserTags";
                    v389 = v143;
                    handleUserTags(&v372);
                  }

                  else
                  {
                    CFRelease(v143);
                  }

                  v141 = v342;
                }
              }
            }

            if ((v374 & 4) != 0 && !v341)
            {
              v146 = *__error();
              v147 = _SILogForLogForCategory(0);
              v148 = 2 * (gSILogLevels[0] < 4);
              if (os_log_type_enabled(v147, v148))
              {
                LOWORD(v360[0]) = 0;
                _os_log_impl(&dword_1C278D000, v147, v148, "Dictionary claims the importer was the origin, but trail tells us it was not. Treating as normal setAttr call.", v360, 2u);
              }

              *__error() = v146;
              v141 = v342;
            }

            v149 = v378;
            if (v378)
            {
              CFRetain(v378);
            }

            v150 = v379;
            if (v379)
            {
              CFRetain(v379);
            }

            v318 = v150;
            v339 = v149;
            if (dword_1EBF46AE4 >= 5)
            {
              v297 = *__error();
              v298 = _SILogForLogForCategory(6);
              if (os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v360[0]) = 138412546;
                *(v360 + 4) = v318;
                WORD2(v360[1]) = 2112;
                *(&v360[1] + 6) = v339;
                _os_log_impl(&dword_1C278D000, v298, OS_LOG_TYPE_DEFAULT, "%@ = %@", v360, 0x16u);
              }

              *__error() = v297;
              v8 = v334;
              v141 = v342;
              v136 = v331;
            }

            v151 = v335;
            if (!v373[0] && v341)
            {
              v374 &= ~0x10u;
            }

            if (*(*v8 + 2072) & 1 | (v326 != 0) | v328 & 1)
            {
              v152 = v136 | 0x200;
            }

            else
            {
              v152 = v136;
            }

            v313 = v152;
            if (!v323 || (v153 = *(v323 + 56)) == 0)
            {
              v153 = gDefaultSchema;
            }

            v154 = v335 != 0;
            if (!v335)
            {
              if (obj)
              {
                if (!v341)
                {
                  if (*(v343 + 1152))
                  {
                    v155 = obj[4];
                    if (v155)
                    {
                      if (v155 > *(v343 + 1304) && v155 <= *(v343 + 1312) && objectHasContent(v141, obj) && (v374 & 0x20) == 0)
                      {
                        v156 = *obj;
                        free(obj);
                        obj = 0;
                        cleanupPreProcContext(&v372);
                        if (v321)
                        {
                          CFAllocatorDeallocate(allocator, v321);
                        }

                        v97 = v340;
                        v60 = v343;
                        if (!v386)
                        {
                          v263 = malloc_type_malloc(0x50uLL, 0x10E0040BFFD03D2uLL);
                          *v263 = *v8;
                          v264 = *(v8 + 64);
                          v266 = *(v8 + 16);
                          v265 = *(v8 + 32);
                          v263[3] = *(v8 + 48);
                          v263[4] = v264;
                          v263[1] = v266;
                          v263[2] = v265;
                          *(v8 + 48) = 0u;
                          *(v8 + 64) = 0u;
                          *(v8 + 16) = 0u;
                          *(v8 + 32) = 0u;
                          *v8 = 0u;
                          si_enqueue_work(*(v60 + 1152), setAttributes, v263);
                          return;
                        }

                        (*(*(v343 + 2360) + 16))(*(*(v343 + 2360) + 144), v156, 0, 0);
                        goto LABEL_159;
                      }
                    }
                  }
                }
              }
            }

            if ((v154 | v328))
            {
              v331 = 0;
              v157 = v343;
            }

            else
            {
              v157 = v343;
              if (v380 != *MEMORY[0x1E695E738] && (objectHasContent(v141, obj) || (*(v157 + 6584) & 0x10) != 0))
              {
                v331 = decodeDBOToDictionary(v141, obj, 0, 0x2000, 2, *(v157 + 2028), *(v157 + 2060), *(v157 + 1284) > 83, 0, allocator);
              }

              else
              {
                v331 = 0;
              }
            }

            v158 = 0;
            v159 = 0;
            v160 = v337;
            if (!v151 && obj)
            {
              v360[0] = *(v157 + 2012);
              v365 = 0;
              *v349 = 0;
              v158 = 0;
              if (!db_get_field_by_id(v141, obj, v360, &v365, v349))
              {
                v158 = **v349;
              }

              LODWORD(v360[0]) = *(v157 + 2008);
              if (db_get_field_by_id(v141, obj, v360, &v365, v349))
              {
                v159 = 0;
              }

              else
              {
                v159 = **v349;
              }

              v160 = v337;
            }

            v315 = v159;
            *&v335 = v158;
            v161 = v160;
            si_indexDeleteDeferredItemsIfItemIncluded(v157, v160);
            v162 = obj;
            v314 = obj;
            if (obj)
            {
              obj = db_copy_obj(obj, 1024);
              db_validate_obj(v141);
              free(v162);
              v164 = v49 == 10 && v326 == 0;
              v165 = v330;
              if (v164)
              {
                v165 = 0;
              }

              if (v165 == 1)
              {
                v330 = candidateForReimport(v157, &obj);
              }

              else
              {
                v330 = 0;
              }

              if (v328)
              {
                v168 = db_delete_fields_with_flags(v141, obj);
                LOBYTE(v162) = v168 == 0;
                if (v168 && dword_1EBF46AE8 >= 5)
                {
                  v307 = v168;
                  v308 = *__error();
                  v309 = _SILogForLogForCategory(7);
                  if (os_log_type_enabled(v309, OS_LOG_TYPE_DEFAULT))
                  {
                    v360[0] = __PAIR64__(v307, v336);
                    _os_log_impl(&dword_1C278D000, v309, OS_LOG_TYPE_DEFAULT, "Deleting importer fields failed, rc:%d", v360, 8u);
                  }

                  *__error() = v308;
                  v8 = v334;
                  v157 = v343;
                }

                if (!v380)
                {
                  InsertPreProcessContextAddAttr(&v372, @"_kMDItemTextContentIndexExists", *MEMORY[0x1E695E4C0], 0);
                }

                v141 = v342;
              }

              else
              {
                LOBYTE(v162) = 0;
              }
            }

            else
            {
              obj = db_create_obj(v141, 1024, 0);
              *obj = v161;
              v166 = v49 == 10 && v326 == 0;
              v167 = v330;
              if (v166)
              {
                v167 = 0;
              }

              v330 = v167;
            }

            if ((v374 & 8) != 0)
            {
              *(obj + 10) |= 2u;
            }

            if (v332)
            {
              if (*(v8 + 8))
              {
                v303 = __si_assert_copy_extra_661(-1);
                v304 = v303;
                v305 = "";
                if (v303)
                {
                  v305 = v303;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 27904, "ctx->attrdict==((void*)0)", v305);
                free(v304);
                if (__valid_fs(-1))
                {
                  v306 = 2989;
                }

                else
                {
                  v306 = 3072;
                }

                *v306 = -559038737;
                abort();
              }

              v365 = 0;
              v366 = &v365;
              v367 = 0x2000000000;
              LOBYTE(v368) = 0;
              v171 = *(v157 + 6880);
              if (v171)
              {
                *v349 = 0;
                if (!db_get_obj(v171, *obj, v349, 0))
                {
                  v172 = *v349;
                  *(obj + 10) = *(*v349 + 40);
                  *(v366 + 24) = 1;
                  v173 = *(v157 + 6880);
                  v360[0] = MEMORY[0x1E69E9820];
                  v360[1] = 0x40000000;
                  v360[2] = __si_addRecoveryAttributes_block_invoke;
                  v360[3] = &unk_1E8195E80;
                  v361 = &v365;
                  v362 = v157;
                  p_obj = &obj;
                  v364 = v172;
                  _enumerate_dbo(v173, v172, 0, v360);
                  free(*v349);
                }

                v174 = *(v366 + 24);
                _Block_object_dispose(&v365, 8);
                if ((v174 & 1) == 0)
                {
                  goto LABEL_415;
                }

                LODWORD(v336) = 0;
                v175 = 1;
                goto LABEL_419;
              }

              _Block_object_dispose(&v365, 8);
            }

            else
            {
              if (v392)
              {
                setDatastoreLocalizedAttributes(v141, &obj, v390, v391, v392, v153, 0, v341, v326 != 0);
                db_validate_obj(v141);
                LOBYTE(v162) = 1;
              }

              if (!v386)
              {
LABEL_355:
                v178 = v373[0];
                if (v373[0])
                {
                  v179 = *&v372;
                  LOBYTE(v162) = 1;
                  v180 = v141;
                }

                else
                {
                  if ((v374 & 0x800) == 0)
                  {
                    goto LABEL_360;
                  }

                  v179 = *&v372;
                  LOBYTE(v162) = 1;
                  v180 = v141;
                  v178 = 0;
                }

                markItemAsUsedForField(v180, &obj, "kMDItemLastUsedDate", "kMDItemUsedDates", v178, 1, 1, 0, v179);
LABEL_360:
                if (v403)
                {
                  memset(v360, 0, sizeof(v360));
                  v181 = CFStringGetTypeID();
                  if (v181 == CFGetTypeID(v403) && CFStringGetCString(v403, v360, 32, 0x8000100u))
                  {
                    Current = CFAbsoluteTimeGetCurrent();
                    v183 = v404;
                    v184 = v360;
                    v185 = v141;
                  }

                  else
                  {
                    Current = 0.0;
                    v185 = v141;
                    v184 = 0;
                    v183 = 0;
                  }

                  updateItemRecentEngagementData(v185, &obj, v184, v183, "_kMDItemRecentAppSearchEngagementQueries", "_kMDItemRecentAppSearchEngagementDates", "_kMDItemRecentAppSearchEngagementRenderPositions", 1, Current);
                  LOBYTE(v162) = 1;
                }

                if (v405)
                {
                  memset(v360, 0, sizeof(v360));
                  v186 = CFStringGetTypeID();
                  if (v186 == CFGetTypeID(v405) && CFStringGetCString(v405, v360, 32, 0x8000100u))
                  {
                    v187.n128_f64[0] = CFAbsoluteTimeGetCurrent();
                    v188 = v406;
                    v189 = v360;
                    v190 = v141;
                  }

                  else
                  {
                    v187.n128_u64[0] = 0;
                    v190 = v141;
                    v189 = 0;
                    v188 = 0;
                  }

                  updateItemRecentSpotlightEngagementData(v190, &obj, v189, v188, v187);
                  LOBYTE(v162) = 1;
                }

                if (v407)
                {
                  v191 = CFDateGetTypeID();
                  v192 = CFGetTypeID(v407);
                  v193 = 0.0;
                  if (v191 == v192)
                  {
                    v193 = MEMORY[0x1C691E960](v407, 0.0);
                  }

                  updateItemRecentOutOfSpotlightEngagementData(v141, &obj, v193);
                  LOBYTE(v162) = 1;
                }

                if (v400)
                {
                  v194 = fmax(markItemAsUsedForField(v141, &obj, "_kMDItemInterestingDate", 0, v400, 0, 0, 8456, 0.0), 0.0);
                  v195 = SICopyRoundedDate();
                  markItemAsUsedForField(v141, &obj, "kMDItemInterestingDate_Ranking", 0, v195, 0, 0, 256, 0.0);
                  CFRelease(v195);
                  LOBYTE(v162) = 1;
                }

                else
                {
                  if (v399)
                  {
                    LODWORD(v360[0]) = 0;
                    CFNumberGetValue(v399, kCFNumberSInt32Type, v360);
                  }

                  v194 = 0;
                }

                v196 = v339;
                if (!v341 && !v400)
                {
                  LOBYTE(v360[0]) = 0;
                  v197 = fmax(getTimeForDateField(v141, obj, v360), 0.0);
                  if (LOBYTE(v360[0]))
                  {
                    v194 = v197;
                  }
                }

                v163.n128_f64[0] = v394;
                v198 = v395;
                v199 = v394 != 0.0;
                if (v395 != 0.0)
                {
                  v199 = 1;
                }

                if (v396 != 0.0)
                {
                  v199 = 1;
                }

                LODWORD(v336) = v194;
                if (v199 != 1)
                {
LABEL_413:
                  v175 = v199 ^ 1;
                  if (!v196 && (v162 & 1) == 0)
                  {
                    goto LABEL_415;
                  }

LABEL_419:
                  v60 = v343;
                  v217 = v322;
                  if ((v374 & 0x40) == 0)
                  {
                    if (v380)
                    {
                      v218 = CFDictionaryGetValue(v325, @"kMDItemContentType");
                      if (v218)
                      {
                        v219 = v218;
                        v220 = CFStringGetTypeID();
                        if (v220 == CFGetTypeID(v219))
                        {
                          if (CFEqual(v219, @"public.plain-text") || CFEqual(v219, @"public.data") || CFStringHasPrefix(v219, @"dyn."))
                          {
                            goto LABEL_426;
                          }

                          if (v324)
                          {
                            v276 = CFDictionaryGetValue(v324, @"kMDItemContentTypeTree");
                          }

                          else
                          {
                            v276 = 0;
                          }

                          if (!v276 && v325)
                          {
                            v276 = CFDictionaryGetValue(v325, @"kMDItemContentTypeTree");
                          }

                          if (v276)
                          {
                            v289 = CFArrayGetTypeID();
                            if (v289 == CFGetTypeID(v276))
                            {
                              v410.length = CFArrayGetCount(v276);
                              v410.location = 0;
                              if (CFArrayContainsValue(v276, v410, @"public.plain-text"))
                              {
LABEL_426:
                                v374 |= 0x40u;
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  v221 = 0;
                  v222 = v374;
                  v223 = v380;
                  if ((v319 & 0x40) != 0 || (v374 & 0x1000) == 0)
                  {
                    v216 = v339;
                  }

                  else
                  {
                    v216 = v339;
                    if (!v380)
                    {
                      if (*(v8 + 49))
                      {
                        v221 = 1;
                      }

                      else
                      {
                        v221 = (v328 ^ 1) & ((v374 & 0x10) >> 4);
                      }
                    }
                  }

                  v224 = obj[3];
                  if (v217)
                  {
                    obj[3] = v217;
                    v222 = v374;
                  }

                  if (v338)
                  {
                    v225 = ((*(v60 + 1284) > 83) << 10) | 2;
                  }

                  else
                  {
                    v225 = (*(v60 + 1284) > 83) << 10;
                  }

                  if (v328)
                  {
                    v225 |= 4u;
                  }

                  if (v326)
                  {
                    v225 |= 0x10u;
                  }

                  v226 = v222 >> 3;
                  v227 = (2 * v222) & 0xA0 | (((v222 >> 3) & 1) << 6) | v225;
                  if (v221)
                  {
                    v228 = v227 | 0x100;
                  }

                  else
                  {
                    v228 = v227;
                  }

                  v229 = v228 | v226 & 0x200;
                  if (!v314)
                  {
                    v229 |= 0x800u;
                  }

                  if (v330)
                  {
                    v229 |= 0x1000u;
                  }

                  v365 = *(v8 + 8);
                  v366 = v223;
                  if (v175)
                  {
                    v229 |= 0x2000u;
                  }

                  if (v327)
                  {
                    v229 |= 0x4000u;
                  }

                  v367 = v383;
                  v368 = v216;
                  v369 = v318;
                  v370 = v381;
                  v230 = v382;
                  v371 = v382;
                  v230.n128_u32[0] = v401;
                  v231 = si_writeBackAndIndexWithLiveQueryToggle(v230, v60, SyncIndex, &v365, v331, v224, &obj, v49, v229 | (v341 << 17), v323, *(v8 + 64), v335, v315, v336, v402, v320);
                  v97 = v340;
                  if (v231 != 89)
                  {
                    v232 = v231;
                    if (v231)
                    {
                      if (v231 != -3)
                      {
                        v255 = v231;
                        if ((*(v60 + 2072) & 1) == 0)
                        {
                          bzero(v360, 0x1000uLL);
                          v344 = 0;
                          v256 = *(v60 + 1416);
                          v257 = *v97;
                          *v311 = -1;
                          OidPathForOid = SIPersistentIDStoreGetOidPathForOid(v256, v257, v360, 1, &v344);
                          v255 = OidPathForOid | v344 ? OidPathForOid : 2;
                          if (_setAttributes__COUNT_ >= 1)
                          {
                            --_setAttributes__COUNT_;
                            v259 = *__error();
                            v260 = _SILogForLogForCategory(0);
                            if (os_log_type_enabled(v260, OS_LOG_TYPE_ERROR))
                            {
                              v279 = *(v8 + 24);
                              v280 = *(v8 + 48);
                              *v349 = 136316418;
                              *&v349[4] = "_setAttributes";
                              v350 = 1024;
                              v351 = 28006;
                              v352 = 2048;
                              v353 = v279;
                              v354 = 1024;
                              v355 = v280;
                              v356 = 1024;
                              v357 = v232;
                              v358 = 1024;
                              v359 = v255;
                              _os_log_error_impl(&dword_1C278D000, v260, OS_LOG_TYPE_ERROR, "%s:%d: Couldn't update index oid: %lld options: %x updateErr: %d resolveErr: %d", v349, 0x2Eu);
                            }

                            *__error() = v259;
                            v97 = v340;
                          }
                        }

                        if (v255 != 2 && v255 != 22)
                        {
                          si_makeUnavailable(v60, v232, 2 * (v232 != 22), 16, "set attributes err");
                        }

                        v98 = 0;
                        goto LABEL_418;
                      }

                      if ((*(v60 + 2458) & 1) == 0)
                      {
                        *(v60 + 2458) = 1;
                        _SIConsistencyCheck(v60);
                      }
                    }
                  }

                  db_validate_obj(v342);
                  v98 = 1;
                  goto LABEL_460;
                }

                LODWORD(v316) = 1;
                v332 = v312;
                if (v395 == 0.0)
                {
                  v198 = v396;
                }

                v200 = "_kMDItemAppEngagementData";
                if (v395 != 0.0)
                {
                  v200 = "_kMDItemEngagementData";
                }

                if (v394 == 0.0)
                {
                  v201 = v198;
                }

                else
                {
                  v201 = v394;
                }

                if (v394 == 0.0)
                {
                  v202 = v200;
                }

                else
                {
                  v202 = "_kMDItemRenderData";
                }

                v365 = 0;
                *v349 = 0;
                MEMORY[0x1EEE9AC00](v163);
                bzero(v310, 0x2E3uLL);
                v203 = v342;
                db_validate_obj(v342);
                if (!*obj)
                {
LABEL_412:
                  v199 = v316;
                  goto LABEL_413;
                }

                field = db_get_field(v203, obj, v202, v349, &v365);
                if (field)
                {
                  v313 = *__error();
                  v205 = _SILogForLogForCategory(4);
                  v206 = v10;
                  v207 = 2 * (*(v10 + 2780) < 4);
                  if (os_log_type_enabled(v205, v207))
                  {
                    LOWORD(v360[0]) = 0;
                    _os_log_impl(&dword_1C278D000, v205, v207, "db didn't find any existing values", v360, 2u);
                  }

                  v208 = __error();
                  v209 = 0;
                  *v208 = v313;
                  v10 = v206;
                  v196 = v339;
                }

                else
                {
                  v209 = *(*v349 + 8);
                }

                v344 = 0;
                if (markItemAsRenderedOrEngaged(v310, v365, v209, &v344, field == 0, v201))
                {
                  v211 = db_add_field(v342, &obj, 1u, v202, 0, 0, 14, v310, v210, v344);
                  v8 = v334;
                  if (!v211)
                  {
                    LOBYTE(v162) = 1;
                    goto LABEL_412;
                  }

                  v212 = *__error();
                  v213 = _SILogForLogForCategory(4);
                  if (!os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_411;
                  }

                  LODWORD(v360[0]) = 136315394;
                  *(v360 + 4) = "_setAttributes";
                  WORD2(v360[1]) = 1024;
                  *(&v360[1] + 6) = 27891;
                  v214 = "%s:%d: db get field failed in counts code";
                }

                else
                {
                  v212 = *__error();
                  v213 = _SILogForLogForCategory(4);
                  v215 = os_log_type_enabled(v213, OS_LOG_TYPE_ERROR);
                  v8 = v334;
                  if (!v215)
                  {
LABEL_411:
                    v196 = v339;
                    *__error() = v212;
                    goto LABEL_412;
                  }

                  LODWORD(v360[0]) = 136315394;
                  *(v360 + 4) = "_setAttributes";
                  WORD2(v360[1]) = 1024;
                  *(&v360[1] + 6) = 27883;
                  v214 = "%s:%d: marking item as rendered/engaged failed";
                }

                _os_log_error_impl(&dword_1C278D000, v213, OS_LOG_TYPE_ERROR, v214, v360, 0x12u);
                goto LABEL_411;
              }

              v169 = CFDictionaryCreate(*MEMORY[0x1E695E480], v384, v316, v386, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v341)
              {
                v170 = 1;
              }

              else
              {
                v170 = *(v8 + 52) == 12;
              }

              v176 = setDatastoreAttributes(v342, &obj, v169, v313, v153, 0, v170, v326 != 0);
              v177 = v176;
              if (v169)
              {
                CFRelease(v169);
                if (!v177)
                {
                  goto LABEL_415;
                }

                goto LABEL_354;
              }

              if (v176)
              {
LABEL_354:
                LOBYTE(v162) = 1;
                v141 = v342;
                goto LABEL_355;
              }
            }

LABEL_415:
            if (*(v10 + 2780) >= 5)
            {
              v300 = *__error();
              v301 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v301, OS_LOG_TYPE_DEFAULT))
              {
                v302 = *v340;
                LODWORD(v360[0]) = 134217984;
                *(v360 + 4) = v302;
                _os_log_impl(&dword_1C278D000, v301, OS_LOG_TYPE_DEFAULT, "No write back for %lld", v360, 0xCu);
              }

              v98 = 0;
              *__error() = v300;
              v8 = v334;
            }

            else
            {
              v98 = 0;
            }

            v97 = v340;
            v60 = v343;
LABEL_418:
            v216 = v339;
LABEL_460:
            if (v318)
            {
              CFRelease(v318);
            }

            if (v216)
            {
              CFRelease(v216);
            }

            cleanupPreProcContext(&v372);
            if (v331)
            {
              CFRelease(v331);
            }

            if (v321)
            {
              CFAllocatorDeallocate(allocator, v321);
            }

            goto LABEL_468;
          }

          if ((*(v60 + 6584) & 0x10) == 0)
          {
            v119 = 0;
            goto LABEL_207;
          }

          if (BOOLValueForDBOProperty(*(v60 + 1192), obj, "_kMDItemBackupMoveMarker"))
          {
            v119 = 128;
            goto LABEL_207;
          }

          v123 = v325;
          if (v325)
          {
            if (CFDictionaryContainsKey(v325, @":MD:_kMDItemBackupMoveMarker"))
            {
LABEL_205:
              v119 = 128;
              goto LABEL_206;
            }

            v124 = CFDictionaryContainsKey(v123, @":MD:_kMDItemBackupMoveMarker");
            v119 = (v124 != 0) << 7;
            if (!v324)
            {
LABEL_206:
              v117 = v316;
              goto LABEL_207;
            }

            v117 = v316;
            if (v124)
            {
              goto LABEL_207;
            }
          }

          else
          {
            v119 = v324;
            v117 = v316;
            if (!v324)
            {
              goto LABEL_207;
            }
          }

          v125 = v324;
          if (!CFDictionaryContainsKey(v324, @":MD:_kMDItemBackupMoveMarker"))
          {
            v119 = (CFDictionaryContainsKey(v125, @":MD:_kMDItemBackupMoveMarker") != 0) << 7;
            goto LABEL_206;
          }

          goto LABEL_205;
        }

        goto LABEL_59;
      }
    }

    else if ((v18 & 1) == 0)
    {
      v32 = *(v8 + 8);
      if (v32)
      {
        v33 = CFGetTypeID(v32);
        v19 = v33 == CFDictionaryGetTypeID();
        v17 = v341;
        v34 = !v19;
LABEL_58:
        LODWORD(v342) = v34;
        if (!v20)
        {
          goto LABEL_65;
        }

        goto LABEL_59;
      }

      LODWORD(v342) = 0;
      if (!v20)
      {
        goto LABEL_65;
      }

LABEL_59:
      v37 = *v8;
      if ((*(*v8 + 2072) & 1) == 0)
      {
        v38 = v342;
        if (dword_1EBF46AFC < 4)
        {
          v38 = 1;
        }

        if ((v38 & 1) == 0)
        {
          bzero(v360, 0x400uLL);
          v39 = (*(*(v37 + 1416) + 40))();
          if (v39)
          {
            v312[510] = v39;
            CFLog();
          }
        }
      }

      goto LABEL_65;
    }

    v34 = 1;
    goto LABEL_58;
  }

  if (dword_1EBF46ADC >= 5)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v8 + 24);
      LODWORD(v360[0]) = 134217984;
      *(v360 + 4) = v13;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "Canceled oid: %lld", v360, 0xCu);
    }

    *__error() = v11;
  }

LABEL_501:
  v252 = *(v8 + 40);
  if (v252)
  {
    CFRelease(v252);
  }

  *(v8 + 40) = 0;
  v253 = *(v8 + 8);
  if (v253)
  {
    CFRelease(v253);
  }

  *(v8 + 8) = 0;
  v254 = *(v8 + 16);
  if (v254)
  {
    CFRelease(v254);
  }

  *(v8 + 16) = 0;
}

uint64_t __setAttributesBulk_block_invoke(uint64_t a1)
{
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(*(a1 + 56), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v19 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v18 = HIDWORD(v3);
  v17 = __PAIR64__(v5, v6);
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v16 = v19;
  v15 = v18;
  v14 = v17;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v13, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v14);
    dropThreadId(v16, 1, add_explicit + 1);
    return CICleanUpReset(v16, HIDWORD(v14));
  }

  else
  {
    while (atomic_fetch_add_explicit(*(a1 + 32), 1uLL, memory_order_relaxed) < *(*(a1 + 40) + 16))
    {
      _setAttributes(v9);
    }

    v11 = threadData[9 * v16 + 1] + 320 * v15;
    *(v11 + 312) = v7;
    v12 = *(v11 + 232);
    if (v12)
    {
      v12(*(v11 + 288));
    }

    return dropThreadId(v16, 0, add_explicit + 1);
  }
}

void setAttributes(uint64_t *a1, int a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = dispatch_group_create();
  _setAttributes(v6);
  if (!a2)
  {
    bumpWorkTime(*a1, Current);
  }

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v5);

  free(a1);
}

void preProcessInFlight(void *key, const void *a2, CFDictionaryRef *a3)
{
  if (CFDictionaryGetValue(*a3, key))
  {
    return;
  }

  v6 = a3[1];
  if (!v6)
  {
    return;
  }

  Value = CFDictionaryGetValue(v6, key);
  if (!Value)
  {
    goto LABEL_23;
  }

  v8 = Value;
  if (CFEqual(Value, a2))
  {
    return;
  }

  v9 = CFGetTypeID(v8);
  if (v9 != CFArrayGetTypeID())
  {
LABEL_23:
    v20 = *a3;

    CFDictionarySetValue(v20, key, a2);
    return;
  }

  v10 = CFGetTypeID(a2);
  if (v10 != CFArrayGetTypeID())
  {
    if (*MEMORY[0x1E695E738] != a2)
    {
      v23.length = CFArrayGetCount(v8);
      v23.location = 0;
      if (CFArrayGetFirstIndexOfValue(v8, v23, a2) != -1)
      {
        return;
      }

      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
      CFArrayAppendValue(MutableCopy, a2);
      CFDictionarySetValue(*a3, key, MutableCopy);
      v18 = MutableCopy;
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  Count = CFArrayGetCount(v8);
  v12 = CFArrayGetCount(a2);
  if (v12 >= 1)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *MEMORY[0x1E695E480];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v14);
      v22.location = 0;
      v22.length = Count;
      if (CFArrayGetFirstIndexOfValue(v8, v22, ValueAtIndex) == -1)
      {
        if (!v15)
        {
          v15 = CFArrayCreateMutableCopy(v16, 0, v8);
        }

        CFArrayAppendValue(v15, ValueAtIndex);
      }

      ++v14;
    }

    while (v13 != v14);
    if (v15)
    {
      CFDictionarySetValue(*a3, key, v15);
      v18 = v15;
LABEL_20:

      CFRelease(v18);
    }
  }
}

uint64_t OIDAttrPairCmp(void *a1, void *a2)
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

void SIPossibleMovesBulk(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  if (*(a1 + 6624) && *(a1 + 1048))
  {
    v10 = malloc_type_malloc(0x28uLL, 0x1030040626A9454uLL);
    *(v10 + 2) = a3;
    *(v10 + 4) = a5;
    *(v10 + 3) = malloc_type_malloc(a5, 0x921571A7uLL);
    v11 = malloc_type_malloc(a3, 0xB4D543EBuLL);
    *v10 = a1;
    *(v10 + 1) = v11;
    memcpy(*(v10 + 3), a4, a5);
    memcpy(*(v10 + 1), a2, a3);
    v12 = *(a1 + 1048);

    si_enqueue_barrier_with_qos(v12, 9, possibleMoves, v10);
  }
}

void possibleMoves(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040D2389C4FuLL);
    *v4 = 257;
    v4[1] = *a1;
    v4[2] = 2;
    *(v4 + 6) = 0;
    if (*(a1 + 16) >= 1)
    {
      v6 = *(a1 + 8);
      do
      {
        if (!v6[1])
        {
          break;
        }

        v7 = 0;
        v8 = v6 + 2;
        v4[5] = *v6;
        do
        {
          v4[4] = v8[v7];
          innerMoveFiles(v4, v5);
          ++v7;
          v9 = v6[1];
        }

        while (v7 < v9);
        v6 = &v8[v9];
      }

      while (v6 < *(a1 + 8) + *(a1 + 16));
    }

    if (*(a1 + 32) >= 1)
    {
      v10 = *(a1 + 24);
      v11 = v10;
      do
      {
        v12 = v11[1];
        v4[5] = *v11;
        if (v12)
        {
          v13 = 0;
          do
          {
            v4[4] = v11[v13 + 2];
            moveDirectoriesInner(v5);
            ++v13;
            v14 = v11[1];
          }

          while (v13 < v14);
          v10 = *(a1 + 24);
          v15 = 8 * v14;
        }

        else
        {
          v15 = 0;
        }

        v11 = (v11 + v15 + 16);
      }

      while (v11 < (v10 + *(a1 + 32)));
    }

    free(v4);
    bumpWorkTime(*a1, Current);
  }

  free(*(a1 + 8));
  free(*(a1 + 24));

  free(a1);
}

unint64_t innerMoveFiles(unint64_t result, __n128 a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  while (v4 > v3)
  {
    result = processOneFile(a2);
    v3 = result;
    v4 = *(v2 + 16);
    if (v4 < result)
    {
      v5 = __si_assert_copy_extra_661(-1);
      v6 = v5;
      v7 = "";
      if (v5)
      {
        v7 = v5;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33620, "i<=ctx->count", v7);
      free(v6);
      if (__valid_fs(-1))
      {
        v8 = 2989;
      }

      else
      {
        v8 = 3072;
      }

      *v8 = -559038737;
      abort();
    }
  }

  return result;
}

void moveDirectoriesInner(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v104 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 8);
  if (*(v1 + 2) == 1)
  {
    if (!*(v1 + 16))
    {
      v79 = SIUINT64SetCreate(*MEMORY[0x1E695E480]);
      for (i = *(v3 + 6616); i; i = *(v3 + 6616))
      {
        *(v3 + 6616) = 0;
        v100 = 0x10000;
        v102 = 0u;
        v103 = 0;
        v101 = v3;
        *&v102 = 1;
        __dst = v3;
        v99[0] = v79;
        v99[1] = &v100;
        SIValueSet<unsigned long long>::_SIValueSetInnerIterate(i + 56, *(i + 16), *(i + 24), fixupOne, &__dst, 128);
        CFRelease(i);
      }

      CFRelease(v79);
      return;
    }

    v4 = *(v3 + 6616);
    if (!v4)
    {
      v4 = SIUINT64SetCreate(*MEMORY[0x1E695E480]);
      *(v3 + 6616) = v4;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = v2 + 32;
    v89 = *(v3 + 1392);
    v90 = *(v3 + 1384);
    v7 = 0x1EBF46000uLL;
    do
    {
      v8 = *(v6 + 8 * v5);
      v9 = *(v2 + 1);
      bzero(&v100, 0x1008uLL);
      bzero(&__dst, 0x1008uLL);
      if (!v8)
      {
        if (*(v7 + 2788) >= 5)
        {
          v16 = *__error();
          v17 = _SILogForLogForCategory(6);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            buf = 134217984;
            *buf_4 = 0;
            _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "Move for bad oid: %lld", &buf, 0xCu);
          }

          *__error() = v16;
        }

        goto LABEL_106;
      }

      v10 = *(v3 + 1416);
      v11 = *(v10 + 128);
      if (!v11 || ((v12 = v11(v10), v12 != v8) ? (v13 = (v12 + 1) > 1) : (v13 = 0), !v13))
      {
        if (*(v7 + 2788) >= 5)
        {
          v70 = *__error();
          v71 = _SILogForLogForCategory(6);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            buf = 134217984;
            *buf_4 = v8;
            _os_log_impl(&dword_1C278D000, v71, OS_LOG_TYPE_DEFAULT, "No parent for oid: %lld", &buf, 0xCu);
          }

          *__error() = v70;
        }

        if ((*(v3 + 6584) & 6) != 4)
        {
          v14 = *(v3 + 2360);
          v15 = *(v14 + 128);
          if (v15)
          {
            v15(*(v14 + 144), v8, 0);
          }
        }

        goto LABEL_106;
      }

      v18 = v12;
      Path = directoryStoreWriterGetPath(*(v3 + 6624), v8, &v101);
      v21 = Path;
      if (dword_1EBF46ADC >= 5)
      {
        v72 = v4;
        v73 = *__error();
        v74 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          buf = 134218240;
          *buf_4 = v8;
          LOWORD(buf_4[2]) = 2048;
          *(&buf_4[2] + 2) = v18;
          _os_log_impl(&dword_1C278D000, v74, OS_LOG_TYPE_DEFAULT, "oid: %lld moved to parent oid: %lld", &buf, 0x16u);
        }

        *__error() = v73;
        v4 = v72;
        v6 = v2 + 32;
        if (!v21)
        {
LABEL_104:
          processOneChildlessDirectory(v20);
          goto LABEL_105;
        }
      }

      else if (!Path)
      {
        goto LABEL_104;
      }

      v22 = v101;
      if (v101 == v18)
      {
        v23 = v4;
        v24 = *__error();
        v25 = _SILogForLogForCategory(6);
        v26 = 2 * (dword_1EBF46AE4 < 4);
        if (os_log_type_enabled(v25, v26))
        {
          buf = 134218240;
          *buf_4 = v18;
          LOWORD(buf_4[2]) = 2048;
          *(&buf_4[2] + 2) = v8;
          _os_log_impl(&dword_1C278D000, v25, v26, "parent %lld unchanged for %lld", &buf, 0x16u);
        }

        *__error() = v24;
        v4 = v23;
        v6 = v2 + 32;
      }

      else
      {
        if (v4)
        {
          SIValueSet<unsigned long long>::SIValueSetInsert((v4 + 16), v18);
          v22 = v101;
        }

        if (v22 == v18)
        {
          v100 = v8;
          if (v21 >= 1)
          {
            memcpy(&__dst, &v101, 8 * v21);
          }

          si_perform_livequeries_directory_updates(v20);
        }

        else
        {
          buf = 0;
          __dst = v18;
          v27 = *(v3 + 6624);
          if (v18 == 2)
          {
            directoryStoreSetParentForMove(v27, v8, 2);
            v29 = 1;
            goto LABEL_59;
          }

          v87 = v4;
          v30 = directoryStoreWriterGetPath(v27, v18, v99);
          v32 = v30;
          if (v30)
          {
            v33 = __dst;
            if (__dst != v8)
            {
              if (v30 >= 1)
              {
                v34 = (v30 + 1) - 1;
                v35 = v34;
                v36 = v99;
                do
                {
                  v38 = *v36++;
                  v37 = v38;
                  if (v8 == v38 || __dst == v37)
                  {
                    goto LABEL_93;
                  }

                  --v35;
                }

                while (v35);
                v40 = v99;
                while (1)
                {
                  v42 = *v40++;
                  v41 = v42;
                  if (v8 == v42 || __dst == v41)
                  {
                    break;
                  }

                  if (!--v34)
                  {
                    goto LABEL_54;
                  }
                }

                v81 = __si_assert_copy_extra_661(-1);
                v82 = v81;
                v83 = "";
                if (v81)
                {
                  v83 = v81;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33799, "!(sourceOid==destPath[i] || destPath[0] == destPath[i])", v83);
LABEL_115:
                free(v82);
                if (__valid_fs(-1))
                {
                  v84 = 2989;
                }

                else
                {
                  v84 = 3072;
                }

                *v84 = -559038737;
                abort();
              }

LABEL_58:
              directoryStoreSetParentForMove(*(v3 + 6624), v8, v33);
              v29 = (v32 + 1);
              v4 = v87;
LABEL_59:
              v100 = v8;
              v45 = *(v3 + 6632);
              if (v45)
              {
                directoryOverlayMoveDirectory(v45, v21 + 1, &v100, v29, &__dst);
              }

              v46 = v89;
              if (*(v89 + 8))
              {
                v47 = 0;
                do
                {
                  v48 = *(v3 + 6640);
                  if (!v48 || (v49 = CFSetContainsValue(v48, *(*(*v46 + 8 * v47) + 56)), v46 = v89, !v49))
                  {
                    _CIMoveDirectory(*(*v46 + 8 * v47), (v21 + 1), &v100, v29, &__dst);
                    v46 = v89;
                  }

                  ++v47;
                }

                while (v47 < *(v46 + 8));
              }

              v50 = v90;
              if (*(v90 + 8))
              {
                v51 = 0;
                do
                {
                  v52 = *(v3 + 6640);
                  if (!v52 || (v53 = CFSetContainsValue(v52, *(*(*v50 + 8 * v51) + 56)), v50 = v90, !v53))
                  {
                    _CIMoveDirectory(*(*v50 + 8 * v51), (v21 + 1), &v100, v29, &__dst);
                    v50 = v90;
                  }

                  ++v51;
                }

                while (v51 < *(v50 + 8));
              }

              si_perform_livequeries_directory_updates(v28);
              v91 = 0;
              if (!db_get_obj_callback(*(v3 + 1192), v8, &v91, 0, si_docIdRewriteCallback, *(v3 + 2368), 0))
              {
                v54 = v91;
                v55 = *(v91 + 3);
                if (v55 == v101 || (v55 + 1) < 2)
                {
                  v56 = 0;
                }

                else
                {
                  v88 = v4;
                  v68 = *__error();
                  v69 = _SILogForLogForCategory(6);
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                  {
                    v75 = *v91;
                    v76 = *(v91 + 3);
                    v77 = *(v91 + 4);
                    v78 = *(v91 + 11);
                    buf = 136316674;
                    *buf_4 = "moveDirectoriesInner";
                    LOWORD(buf_4[2]) = 1024;
                    *(&buf_4[2] + 2) = 33869;
                    HIWORD(buf_4[3]) = 2048;
                    *&buf_4[4] = v76;
                    LOWORD(buf_4[6]) = 2048;
                    *(&buf_4[6] + 2) = v75;
                    HIWORD(buf_4[8]) = 2048;
                    *&buf_4[9] = v101;
                    v94 = 2048;
                    v95 = v77;
                    v96 = 1024;
                    v97 = v78;
                    _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, "%s:%d: Got parent %lld for %lld. Expected %lld (doc %llu)(%d)", &buf, 0x40u);
                  }

                  *__error() = v68;
                  v54 = v91;
                  v56 = *(v91 + 3);
                  v4 = v88;
                }

                v57 = __dst;
                v54[3] = __dst;
                if (v57 != directoryStoreGetParent(*(v3 + 6624), *v54))
                {
                  v85 = __si_assert_copy_extra_661(-1);
                  v82 = v85;
                  v86 = "";
                  if (v85)
                  {
                    v86 = v85;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33882, "dbo->parent_oid == directoryStoreGetParent(ref->dirStore, dbo->oid)", v86);
                  goto LABEL_115;
                }

                v100 = *v91;
                if (v56)
                {
                  v101 = v56;
                }

                LiveIndex = si_getLiveIndex(*(v3 + 1384));
                if (v91 && *(v3 + 1152) && (v59 = *(v91 + 4)) != 0 && v59 > *(v3 + 1304) && v59 <= *(v3 + 1312))
                {
                  handleMovingContent(v3, LiveIndex, v91, v29, &__dst);
                }

                else
                {
                  ContentIndexUpdatePath(LiveIndex, *(v91 + 4), v29, &__dst, v21 - 1, &v101);
                  updated = db_update_obj(*(v3 + 1192), v91, 10);
                  if (updated)
                  {
                    v61 = updated;
                    v62 = *__error();
                    v63 = _SILogForLogForCategory(7);
                    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                    {
                      buf = 136315650;
                      *buf_4 = "moveDirectoriesInner";
                      LOWORD(buf_4[2]) = 1024;
                      *(&buf_4[2] + 2) = 33898;
                      HIWORD(buf_4[3]) = 1024;
                      buf_4[4] = v61;
                      _os_log_error_impl(&dword_1C278D000, v63, OS_LOG_TYPE_ERROR, "%s:%d: Write error %d updating parent", &buf, 0x18u);
                    }

                    *__error() = v62;
                  }
                }

                v64 = *(v91 + 10);
                if ((v64 & 0x20) != 0)
                {
                  v65 = 5;
                }

                else
                {
                  v65 = 4;
                }

                v66 = v65 | (v64 >> 5) & 2;
                HasContent = objectHasContent(*(v3 + 1192), v91);
                buf = 0;
                memset(&buf_4[3], 0, 24);
                buf_4[0] = v29;
                *&buf_4[1] = &__dst;
                LOBYTE(buf_4[3]) = HasContent;
                buf_4[4] = v66;
                si_perform_livequeries_updates(0);
                free(v91);
              }

              goto LABEL_105;
            }
          }

          else
          {
            SIPersistentIDStoreGetOidPathForOid(*(v3 + 1416), v18, v99, 0, &buf);
            v33 = __dst;
            if (__dst != v8)
            {
LABEL_54:
              if (v32 || !buf)
              {
                goto LABEL_58;
              }

              v44 = si_directoryStoreEnsurePath(v31);
              if (v44 != -1)
              {
                v32 = v44;
                v33 = __dst;
                goto LABEL_58;
              }
            }
          }

LABEL_93:
          _SIResolveDirectory(v3, v8, *(v2 + 24));
          v4 = v87;
        }
      }

LABEL_105:
      v7 = 0x1EBF46000;
LABEL_106:
      v5 += v9 + 1;
    }

    while (v5 < *(v2 + 16));
  }
}

void _SIResolveDirectory(int *result, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(result + 828) && *(result + 131))
  {
    if (a3 < 1001)
    {
      v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040D2389C4FuLL);
      v8[1] = result;
      v8[2] = 1;
      *(v8 + 6) = a3 + 1;
      v8[4] = a2;
      v9 = *(result + 131);

      si_enqueue_barrier(v9, moveDirectories, v8);
    }

    else
    {
      v6 = *__error();
      v7 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315650;
        v11 = "_SIResolveDirectory";
        v12 = 1024;
        v13 = 34180;
        v14 = 2048;
        v15 = a2;
        _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: move dropped %llx retry count exceeded", &v10, 0x1Cu);
      }

      *__error() = v6;
    }
  }
}

uint64_t si_directoryStoreEnsurePath(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  __dst[512] = *MEMORY[0x1E69E9840];
  v40 = 0;
  *v1 = 0;
  Parent = directoryStoreWriterGetParent(*(v11 + 6624), v9);
  v39 = 0;
  v14 = directoryStoreEnsurePath(*(v12 + 6624), v10, v8, v6, v4, &v39, &v40, &v38);
  v15 = v14;
  if (v14 == -1)
  {
    if (!v39)
    {
      *v2 = 22;
    }
  }

  else
  {
    if (v40)
    {
      v16 = v40 == v10;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      if (v14 < 1)
      {
        goto LABEL_16;
      }

      v17 = 0;
      while (v8[v17] != v40)
      {
        if (v14 == ++v17)
        {
          return v15;
        }
      }

      if (v17)
      {
        bzero(__dst, 0x1000uLL);
        if (v15 - v17 < 1)
        {
          v19 = 0;
        }

        else
        {
          memcpy(__dst, &v8[v17], 8 * (v15 - v17));
          v19 = __dst[0];
        }

        v26 = &v8[v17];
        v27 = processOneChildlessDirectory(v18);
        if (v27)
        {
          if (dword_1EBF46AE4 >= 5)
          {
            v28 = v27;
            v23 = *__error();
            v24 = _SILogForLogForCategory(6);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v29 = *(v26 - 1);
              *buf = 134218498;
              v42 = v29;
              v43 = 2048;
              v44 = v19;
              v45 = 2080;
              v46 = v28;
              v25 = "Skipped fix up; item %lld, new parent %lld %s";
              goto LABEL_26;
            }

            goto LABEL_37;
          }
        }

        else if (dword_1EBF46AE4 >= 5)
        {
          v32 = *__error();
          v33 = _SILogForLogForCategory(6);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(v26 - 1);
            *buf = 134218240;
            v42 = v34;
            v43 = 2048;
            v44 = v19;
            _os_log_impl(&dword_1C278D000, v33, OS_LOG_TYPE_DEFAULT, "Fixed up (formerly) childless item %lld, new parent %lld", buf, 0x16u);
          }

          *__error() = v32;
        }
      }

      else
      {
LABEL_16:
        if (!Parent)
        {
          bzero(__dst, 0x1000uLL);
          __memcpy_chk();
          v21 = processOneChildlessDirectory(v20);
          if (v21)
          {
            if (dword_1EBF46AE4 >= 5)
            {
              v22 = v21;
              v23 = *__error();
              v24 = _SILogForLogForCategory(6);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218498;
                v42 = v10;
                v43 = 2048;
                v44 = __dst[0];
                v45 = 2080;
                v46 = v22;
                v25 = "Skipped fix up; item %lld, new parent %lld %s";
LABEL_26:
                v30 = v24;
                v31 = 32;
LABEL_36:
                _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, v25, buf, v31);
              }

LABEL_37:
              *__error() = v23;
            }
          }

          else if (dword_1EBF46AE4 >= 5)
          {
            v23 = *__error();
            v36 = _SILogForLogForCategory(6);
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_37;
            }

            *buf = 134218240;
            v42 = v10;
            v43 = 2048;
            v44 = __dst[0];
            v25 = "Fixed up (formerly) childless item %lld, new parent %lld";
            v30 = v36;
            v31 = 22;
            goto LABEL_36;
          }
        }
      }
    }
  }

  return v15;
}

void handleMovingContent(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, const void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E695E480];
  cf = decodeDBOToDictionary(*(a1 + 1192), a3, 0, 0, 2, *(a1 + 2028), *(a1 + 2060), 0, 0, *MEMORY[0x1E695E480]);
  if (!objectHasContent(*(a1 + 1192), a3))
  {
    goto LABEL_9;
  }

  bzero(buf, 0x400uLL);
  v12 = si_cache_relative_path_for_oid(*a3, "txt", buf, *(a1 + 2072));
  if (!v12 || (v13 = openat(*(a1 + 32), v12, 0), v13 == -1))
  {
LABEL_19:
    (*(*(a1 + 2360) + 16))(*(*(a1 + 2360) + 144), *a3, 0, 0);
    goto LABEL_20;
  }

  v14 = v13;
  fcntl(v13, 48, 1);
  fcntl(v14, 76, 1);
  v15 = lseek(v14, 0, 2);
  if (v15 < 1 || (v16 = v15, (v17 = malloc_type_zone_malloc(indexingZone, v15, 0x3D4EC5EFuLL)) == 0))
  {
LABEL_18:
    close(v14);
    goto LABEL_19;
  }

  v18 = v17;
  if (v16 != pread(v14, v17, v16, 0) || (v19 = CFStringCreateWithBytesNoCopy(v10, v18, v16, 0x8000100u, 1u, *MEMORY[0x1E695E488])) == 0)
  {
    free(v18);
    goto LABEL_18;
  }

  v20 = v19;
  CFDictionarySetValue(cf, 0, v19);
  CFRelease(v20);
  close(v14);
LABEL_9:
  v28 = 0;
  if (si_indexForDocId(a1, a3[4]))
  {
    v22 = _CIDelete(v21);
  }

  else
  {
    v22 = 15;
  }

  v23 = _CIUpdateContent(a2, a4, a5, 0, 0, *a3, v22, 0, 0.0, cf, 0, &v28, 5u, 0, (*(a1 + 6584) >> 25) & 3, lowDiskSpaceCallback, a1, 0, 0, *(a1 + 2464), 0, 0);
  a3[4] = v28;
  if (!v23)
  {
    updated = db_update_obj(*(a1 + 1192), a3, 0);
    if (updated)
    {
      v25 = updated;
      v26 = *__error();
      v27 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v30 = "handleMovingContent";
        v31 = 1024;
        v32 = 33252;
        v33 = 1024;
        v34 = v25;
        _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: Write error %d updating parent", buf, 0x18u);
      }

      *__error() = v26;
    }
  }

LABEL_20:
  CFRelease(cf);
}

const char *processOneChildlessDirectory(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v70[512] = *MEMORY[0x1E69E9840];
  v59 = 0;
  v11 = 0;
  if (!db_get_obj_callback(*(v9 + 1192), v7, &v59, 0, si_docIdRewriteCallback, *(v9 + 2368), 0))
  {
    bzero(&v69, 0x1008uLL);
    if (v6 == -1 || !v4)
    {
      if (v6 == -1)
      {
        v12 = *(v59 + 3);
        goto LABEL_20;
      }
    }

    else
    {
      SIValueSet<unsigned long long>::SIValueSetInsert((v4 + 16), v6);
    }

    v12 = *(v59 + 3);
    if (v12 != v6 && v12 != 0)
    {
      if (v12 <= 1 && v12 != -1)
      {
        v54 = __si_assert_copy_extra_661(*(v10 + 48));
        v55 = v54;
        v56 = "";
        if (v54)
        {
          v56 = v54;
        }

        __message_assert("%s:%u: failed assertion '%s' %s Got parent id %lld for oid %lld", "SpotlightIndex.c", 33425, "dbo->parent_oid>=2 || dbo->parent_oid==-1", v56, *(v59 + 3), *v59);
        free(v55);
        if (__valid_fs(*(v10 + 48)))
        {
          v57 = 2989;
        }

        else
        {
          v57 = 3072;
        }

        *v57 = -559038737;
        abort();
      }

      bzero(&v66, 0x1008uLL);
      v58 = 0;
      if (*(v10 + 2072) == 1)
      {
        Path = directoryStoreGetPath(*(v10 + 6624), v6, v70);
        v58 = Path;
      }

      else
      {
        if (SIPersistentIDStoreGetOidPathForOid(*(v10 + 1416), v6, v70, 0, &v58))
        {
          *v2 = *__error();
          v11 = "failed";
LABEL_36:
          free(v59);
          return v11;
        }

        Path = v58;
      }

      v69 = v6;
      if (v6 != v8)
      {
        v20 = (Path + 1);
        if (v20 < 2)
        {
LABEL_45:
          v26 = v59;
          v27 = *(v59 + 3);
          if (v27 == -1)
          {
            v29 = 0;
            *&v66 = 0;
          }

          else
          {
            v28 = directoryStoreGetPath(*(v10 + 6624), v27, &v66 + 8);
            v29 = v28 + 1;
            v26 = v59;
            v30 = *(v59 + 3);
            *&v66 = v30;
            if ((v28 & 0x80000000) == 0 && v30 <= 1)
            {
              v31 = __si_assert_copy_extra_661(-1);
              v32 = v31;
              v33 = "";
              if (v31)
              {
                v33 = v31;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33476, "sourcePath[0]>=2", v33);
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
          }

          v26[3] = v6;
          if (v20 < 2)
          {
            goto LABEL_59;
          }

          v35 = si_directoryStoreEnsurePath(v16);
          v20 = v35 + 1;
          if ((v35 & 0x80000000) == 0)
          {
            v36 = v20;
            v37 = &v69;
            do
            {
              v38 = *v37++;
              if (v38 <= 1)
              {
                v50 = __si_assert_copy_extra_661(-1);
                v51 = v50;
                v52 = "";
                if (v50)
                {
                  v52 = v50;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33488, "destPath[i]>=2", v52);
                free(v51);
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

              --v36;
            }

            while (v36);
          }

          if (v35 >= -1)
          {
LABEL_59:
            LiveIndex = si_getLiveIndex(*(v10 + 1384));
            if (!v59 || !*(v10 + 1152) || (v40 = *(v59 + 4)) == 0 || v40 <= *(v10 + 1304) || v40 > *(v10 + 1312))
            {
              ContentIndexUpdatePath(LiveIndex, *(v59 + 4), v20, &v69, v29, &v66);
              updated = db_update_obj(*(v10 + 1192), v59, 10);
              if (updated)
              {
                v42 = updated;
                v43 = *__error();
                v44 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v61 = "processOneChildlessDirectory";
                  v62 = 1024;
                  v63 = 33505;
                  v64 = 1024;
                  v65 = v42;
                  _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, "%s:%d: Write error %d updating parent", buf, 0x18u);
                }

                *__error() = v43;
              }

              v45 = *(v59 + 10);
              if ((v45 & 0x20) != 0)
              {
                v46 = 5;
              }

              else
              {
                v46 = 4;
              }

              v47 = v46 | (v45 >> 5) & 2;
              HasContent = objectHasContent(*(v10 + 1192), v59);
              v66 = 0u;
              v67 = 0u;
              v68 = 0;
              DWORD1(v66) = v20 & ~(v20 >> 63);
              if (v20 <= 0)
              {
                v49 = 0;
              }

              else
              {
                v49 = &v69;
              }

              *(&v66 + 1) = v49;
              LOBYTE(v67) = HasContent;
              DWORD1(v67) = v47;
              si_perform_livequeries_updates(0);
              v11 = 0;
              goto LABEL_36;
            }

            handleMovingContent(v10, LiveIndex, v59, v20, &v69);
          }
        }

        else
        {
          v21 = v70;
          v22 = v20 - 1;
          while (1)
          {
            v24 = *v21++;
            v23 = v24;
            if (v24 == v8 || v23 == v6)
            {
              break;
            }

            if (!--v22)
            {
              goto LABEL_45;
            }
          }
        }
      }

      v18 = 0;
LABEL_33:
      if (v18)
      {
        v11 = v18;
      }

      else
      {
        v11 = "failed";
      }

      goto LABEL_36;
    }

LABEL_20:
    v17 = "parent===1";
    if (v6 != -1)
    {
      v17 = 0;
    }

    if (v12 == v6)
    {
      v17 = "dbo->parent_oid == parent";
    }

    if (v12)
    {
      v18 = v17;
    }

    else
    {
      v18 = "dbo->parent_oid==0";
    }

    if (!v18)
    {
      v18 = "Unknown";
    }

    goto LABEL_33;
  }

  return v11;
}

void moveDirectories(void *a1, int a2, __n128 a3)
{
  if (!a2)
  {
    moveDirectoriesInner(a3);
  }

  free(a1);
}

uint64_t fixupOne(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v7 = *a1++;
      v6 = v7;
      if ((SIUINT64SetContainsValue(*(a3 + 8), v7) & 1) == 0)
      {
        SIValueSet<unsigned long long>::SIValueSetInsert((*(a3 + 8) + 16), v6);
        *(*(a3 + 16) + 32) = v6;
        moveDirectoriesInner(v8);
      }

      --v4;
    }

    while (v4);
  }

  return 0;
}

unint64_t processOneFile(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v96 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(*(v7 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v83 = v10;
  v11 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v82 = HIDWORD(v10);
  v81 = __PAIR64__(v12, v13);
  *(v11 + 216) = 0;
  v14 = *(v11 + 312);
  v15 = *(v11 + 224);
  if (v15)
  {
    v15(*(v11 + 288));
  }

  v16 = v4 + 1;
  v80 = v83;
  v79 = v82;
  v78 = v81;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v93 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v93, 2u);
    }

    *(v11 + 312) = v14;
    CIOnThreadCleanUpReset(v78);
    dropThreadId(v80, 1, add_explicit + 1);
    CICleanUpReset(v80, HIDWORD(v78));
    v17 = v4 + 1;
    v18 = 0;
    goto LABEL_61;
  }

  if (*(v6 + 1) + v16 > *(v6 + 16))
  {
    v64 = __si_assert_copy_extra_661(-1);
    v62 = v64;
    v65 = "";
    if (v64)
    {
      v65 = v64;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33278, "i+advanceLen<=ctx->count", v65);
LABEL_78:
    free(v62);
    if (__valid_fs(-1))
    {
      v66 = 2989;
    }

    else
    {
      v66 = 3072;
    }

    *v66 = -559038737;
    abort();
  }

  v19 = *(v6 + 32 + 8 * v4);
  v75 = *(v6 + 1);
  v77 = 0;
  if (!db_get_obj_callback(*(v8 + 1192), v19, &v77, 0, si_docIdRewriteCallback, *(v8 + 2368), 0))
  {
    if (*v6 != 1 || *(v6 + 1) != 1 || (v20 = *(v6 + 32 + 8 * v16)) == 0)
    {
      v21 = *(*(v8 + 1416) + 128);
      if (v21)
      {
        v20 = v21();
      }

      else
      {
        v20 = -1;
      }
    }

    if (dword_1EBF46ADC >= 5)
    {
      v74 = *__error();
      v67 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *v93 = 134218240;
        *&v93[4] = v19;
        v94 = 2048;
        v95 = v20;
        _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "oid: %lld moved to parent oid: %lld (file)", v93, 0x16u);
      }

      *__error() = v74;
    }

    bzero(v93, 0x1008uLL);
    v22 = v77;
    if (v20 == -1)
    {
      goto LABEL_57;
    }

    v23 = *(v77 + 3);
    if (v23 == v20 || !v23)
    {
      goto LABEL_57;
    }

    if (v23 <= 1 && v23 != -1)
    {
      v68 = __si_assert_copy_extra_661(*(v8 + 48));
      v69 = v68;
      v70 = "";
      if (v68)
      {
        v70 = v68;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Got parent id %lld for oid %lld", "SpotlightIndex.c", 33293, "dbo->parent_oid>=2 || dbo->parent_oid==-1", v70, *(v77 + 3), *v77);
      free(v69);
      if (__valid_fs(*(v8 + 48)))
      {
        v71 = 2989;
      }

      else
      {
        v71 = 3072;
      }

      *v71 = -559038737;
      abort();
    }

    bzero(&v90, 0x1008uLL);
    v76 = 0;
    if (SIPersistentIDStoreGetOidPathForOid(*(v8 + 1416), v20, &v93[8], 0, &v76))
    {
      v25 = 0;
    }

    else
    {
      v25 = (v76 + 1);
    }

    *v93 = v20;
    v26 = v77;
    v27 = *(v77 + 3);
    if (v27 == -1)
    {
      v30 = 0;
      *&v90 = 0;
      v31 = v20;
    }

    else
    {
      Path = directoryStoreGetPath(*(v8 + 6624), v27, &v90 + 8);
      v26 = v77;
      v29 = *(v77 + 3);
      *&v90 = v29;
      if ((Path & 0x80000000) == 0 && v29 < 2)
      {
        v72 = __si_assert_copy_extra_661(-1);
        v58 = v72;
        v73 = "";
        if (v72)
        {
          v73 = v72;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33314, "sourcePath[0]>=2", v73);
LABEL_68:
        free(v58);
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

      v30 = Path + 1;
      v31 = *v93;
    }

    v26[3] = v20;
    if (v31 != v19)
    {
      v32 = v25;
      if (v25 < 2)
      {
        v38 = v30;
        v40 = v32;
LABEL_42:
        LiveIndex = si_getLiveIndex(*(v8 + 1384));
        if (!v77 || !*(v8 + 1152) || (v42 = *(v77 + 4)) == 0 || v42 <= *(v8 + 1304) || v42 > *(v8 + 1312))
        {
          ContentIndexUpdatePath(LiveIndex, *(v77 + 4), v40, v93, v38, &v90);
          updated = db_update_obj(*(v8 + 1192), v77, 10);
          if (updated)
          {
            v44 = updated;
            v45 = *__error();
            v46 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v85 = "processOneFile";
              v86 = 1024;
              v87 = 33357;
              v88 = 1024;
              v89 = v44;
              _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: Write error %d updating parent", buf, 0x18u);
            }

            *__error() = v45;
          }

          v47 = *(v77 + 10);
          if ((v47 & 0x20) != 0)
          {
            v48 = 5;
          }

          else
          {
            v48 = 4;
          }

          v49 = v48 | (v47 >> 5) & 2;
          HasContent = objectHasContent(*(v8 + 1192), v77);
          v51 = 0;
          v90 = 0u;
          v91 = 0u;
          v92 = 0;
          DWORD1(v90) = v40;
          if (v40)
          {
            v51 = v93;
          }

          *(&v90 + 1) = v51;
          LOBYTE(v91) = HasContent;
          DWORD1(v91) = v49;
          si_perform_livequeries_updates(0);
          v22 = v77;
          goto LABEL_57;
        }

        handleMovingContent(v8, LiveIndex, v77, v40, v93);
LABEL_31:
        v22 = v77;
LABEL_57:
        free(v22);
        goto LABEL_58;
      }

      v33 = &v93[8];
      v34 = v25 - 1;
      while (1)
      {
        v36 = *v33++;
        v35 = v36;
        if (v19 == v36 || v31 == v35)
        {
          break;
        }

        if (!--v34)
        {
          v38 = v30;
          v39 = si_directoryStoreEnsurePath(v24);
          if (v39 < -1)
          {
            break;
          }

          v40 = (v39 + 1);
          goto LABEL_42;
        }
      }
    }

    _SIResolveDirectory(v8, v19, v2);
    goto LABEL_31;
  }

LABEL_58:
  v52 = threadData[9 * v80 + 1] + 320 * v79;
  *(v52 + 312) = v14;
  v53 = *(v52 + 232);
  if (v53)
  {
    v53(*(v52 + 288));
  }

  dropThreadId(v80, 0, add_explicit + 1);
  v17 = v16;
  v18 = v75;
LABEL_61:
  v54 = v17;
  v55 = *(v6 + 16);
  if (v55 < v54)
  {
    v57 = __si_assert_copy_extra_661(-1);
    v58 = v57;
    v59 = "";
    if (v57)
    {
      v59 = v57;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33405, "i<=ctx->count", v59);
    goto LABEL_68;
  }

  result = (v18 + v16);
  if (v55 < result)
  {
    v61 = __si_assert_copy_extra_661(-1);
    v62 = v61;
    v63 = "";
    if (v61)
    {
      v63 = v61;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33408, "i<=ctx->count", v63);
    goto LABEL_78;
  }

  return result;
}

void si_playbackSyncFinished(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      *(a1 + 109) = 1;
      if (*(a1 + 8))
      {
        v2 = *(a1 + 80);
        if (v2)
        {
          if ((*(v2 + 60) & 0x100) != 0)
          {
            *(v2 + 60) &= ~0x100u;
          }
        }
      }

      v3 = *(a1 + 80);
      if (v3 && (*(v3 + 60) & 0x100) != 0)
      {
        *(v3 + 60) &= ~0x100u;
      }
    }

    if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
    {
      _si_mobile_journal_finalize(a1, 1);
    }
  }
}

void dummy_routine(CFTypeRef *a1, int a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v7[0] = 0;
    v3 = a1[1];
    v4 = *(*a1 + 131);
    v5 = *(v4 + 8);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __si_pop_queue_block_invoke;
    v6[3] = &__block_descriptor_tmp_42_1565;
    v6[4] = v4;
    v6[5] = v3;
    v6[6] = 1;
    v6[7] = v7;
    dispatch_sync(v5, v6);
  }

  CFRelease(a1[1]);
  free(a1);
}

void si_repair_index_file_tree(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __buf = *(a1 + 2);
  v9 = *a1;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v21[2] = __si_repair_index_file_tree_block_invoke;
  v21[3] = &__block_descriptor_tmp_1170;
  v21[4] = v9;
  if (!a2)
  {
    if (*(v9 + 828))
    {
      return;
    }

    v10 = x_openat(*(v9 + 32), "repair_dirstore", 536871424, a4, a5, a6, a7, a8, 384);
    if (v10 != -1)
    {
      v11 = v10;
      pwrite(v10, &__buf, 4uLL, 0);
      close(v11);
    }

    if (*(v9 + 2072) & 1) != 0 || (__buf)
    {
      v12 = *(v9 + 6624);
      if (v12)
      {
        freeReverseDirStore(v12);
      }

      *(v9 + 6624) = createReverseStore(*(v9 + 32), "tmp.", v21);
      x_unlinkat(*(v9 + 32), "mds64-crash-state-reverse-store-v2", 0);
    }

    v13 = *(v9 + 1392);
    v14 = *(v9 + 1384);
    if (v13 && *(v13 + 8))
    {
      v15 = 0;
      do
      {
        ContentIndexResetDirStore(*(*v13 + 8 * v15++));
      }

      while (v15 < *(v13 + 8));
    }

    if (v14 && *(v14 + 8))
    {
      v16 = 0;
      do
      {
        ContentIndexResetDirStore(*(*v14 + 8 * v16++));
      }

      while (v16 < *(v14 + 8));
    }

    x_unlinkat(*(v9 + 32), "mds64-crash-state-forward-path-index-v2", 0);
    v17 = SIUINT64SetCreate(*MEMORY[0x1E695E480]);
    db_apply(*(v9 + 1192), gather_parented_items, v17);
    if (*(v9 + 2072))
    {
      v18 = reset_parented_items;
    }

    else
    {
      v18 = reparent_parented_items;
    }

    SIValueSet<unsigned long long>::_SIValueSetInnerIterate(v17 + 56, *(v17 + 16), *(v17 + 24), v18, v9, 1024);
    CFRelease(v17);
    if (*(v9 + 2072) & 1) != 0 || (__buf)
    {
      if (!flushReverseStore(*(v9 + 6624)) && !commitSyncReverseStore(*(v9 + 6624), 0))
      {
        LODWORD(v23) = 0;
        if (!shadowReverseStore(*(v9 + 6624), 1, &v23))
        {
          commitShadowReverseStore(*(v9 + 6624));
        }
      }

      v19 = *(v9 + 6624);
      v23 = 0;
      asprintf(&v23, "%sreverseDirectoryStore", "");
      fd_rename(*(v19 + 216), v23);
      free(v23);
    }

    x_unlinkat(*(v9 + 32), "repair_dirstore", 2048);
    si_getLiveIndex(*(v9 + 1384));
    LiveIndex = si_getLiveIndex(*(v9 + 1384));
    _CIFlushCache(LiveIndex, 1, 0, 0, &__block_literal_global_1178);
    _SIIssueFullMergeWithGroup(v9, 0);
    si_scheduler_resume(*(v9 + 872), *(a1 + 2), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 36360);
  }

  free(a1);
}

void _SIIssueFullMergeWithGroup(void *a1, NSObject *a2)
{
  if (a1 && a1[131])
  {
    v4 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
    *v4 = a1;
    v4[16] = 0;
    *(v4 + 1041) = 257;
    v4[1043] = 1;
    *(v4 + 274) = 4;
    *(v4 + 131) = "void _SIIssueFullMergeWithGroup(SIRef, dispatch_group_t)";
    __strlcpy_chk((v4 + 17), "%d.", v8);
    if (!*(v4 + 136) && !*(v4 + 266))
    {
      v6 = a1[295];
      if (v6)
      {
        v7 = *(v6 + 64);
        if (v7)
        {
          *(v4 + 266) = v7(*(v6 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 23116, "void _SIIssueFullMergeWithGroup(SIRef, dispatch_group_t)");
        }
      }
    }

    if (a2)
    {
      dispatch_retain(a2);
      dispatch_group_enter(a2);
    }

    *(v4 + 139) = a2;
    v5 = a1[145];

    si_enqueue_barrier_with_qos(v5, 5, _SIContinueIssueMerge0, v4);
  }
}

void _SIContinueIssueMerge0(uint64_t a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    si_enqueue_barrier_with_qos(*(*a1 + 1048), 5, _SIContinueIssueMerge, a1);
    v3 = 0;
  }

  si_merge_ctx_free(v3, a2 != 0);
}

void _SIContinueIssueMerge(uint64_t a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    si_enqueue_work_with_qos(*(*a1 + 1040), 5, _SIContinueIssueMerge2, a1);
    v3 = 0;
  }

  si_merge_ctx_free(v3, a2 != 0);
}

void _SIContinueIssueMerge2(uint64_t a1, int a2)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    goto LABEL_2;
  }

  v4 = *a1;
  v5 = 1392;
  if (*(a1 + 16))
  {
    v5 = 1384;
  }

  v6 = *(v4 + v5);
  v7 = *(v6 + 8);
  v8 = *(v4 + 2440);
  if (*(a1 + 1042) == 1)
  {
    *(v4 + 2440) = 0;
  }

  v9 = *(a1 + 1072);
  v10 = gSISystemOnBattery;
  v11 = fullVaccuumNeeded(v4, gSISystemOnBattery);
  if (v11 & 1) != 0 || !v10 || (*(v4 + 2456))
  {
    if (v11)
    {
      goto LABEL_12;
    }
  }

  else if (fullVaccuumNeeded(v4, 0))
  {
    v20 = *(a1 + 1072);
    if (v20 && *(a1 + 1080) && xpc_activity_should_defer(v20))
    {
      **(a1 + 1080) = 1;
      *(v4 + 2456) = 1;
      LODWORD(buf) = -1;
      v21 = *(v4 + 32);
      v71 = v8;
      v22 = v21 == -1 || (fd_setDir(v21, &buf) & 1) == 0;
      v38 = *__error();
      v39 = _SILogForLogForCategory(12);
      v40 = 2 * (dword_1EBF46AFC < 4);
      if (os_log_type_enabled(v39, v40))
      {
        *v74 = 0;
        _os_log_impl(&dword_1C278D000, v39, v40, "defer vacuum", v74, 2u);
      }

      *__error() = v38;
      if (!v22)
      {
        fd_resetDir(buf);
      }
    }

    else
    {
      if (v9)
      {
LABEL_12:
        *v74 = -1;
        v12 = *(v4 + 32);
        v71 = v8;
        v13 = v12 == -1 || (fd_setDir(v12, v74) & 1) == 0;
        v14 = *__error();
        v15 = _SILogForLogForCategory(12);
        v16 = 2 * (dword_1EBF46AFC < 4);
        if (os_log_type_enabled(v15, v16))
        {
          if (gSISystemOnBattery)
          {
            v17 = " (on battery)";
          }

          else
          {
            v17 = "";
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v17;
          _os_log_impl(&dword_1C278D000, v15, v16, "Vacuum needed%s", &buf, 0xCu);
        }

        *__error() = v14;
        if (!v13)
        {
          v18 = *v74;
          MEMORY[0x1C6921200](*v74);
          if ((v18 & 0x80000000) == 0)
          {
            close(v18);
          }
        }

        v19 = 1;
        goto LABEL_25;
      }

      *(v4 + 2456) = 1;
      LODWORD(buf) = -1;
      v32 = *(v4 + 32);
      v71 = v8;
      v33 = v32 == -1 || (fd_setDir(v32, &buf) & 1) == 0;
      v35 = *__error();
      v36 = _SILogForLogForCategory(12);
      v37 = 2 * (dword_1EBF46AFC < 4);
      if (os_log_type_enabled(v36, v37))
      {
        *v74 = 0;
        _os_log_impl(&dword_1C278D000, v36, v37, "Vacuum scheduled", v74, 2u);
      }

      *__error() = v35;
      if (!v33)
      {
        fd_resetDir(buf);
      }

      (*(*(v4 + 2360) + 80))(*(*(v4 + 2360) + 144), 1, @"Merge", &__block_literal_global_1963);
    }

    v19 = 0;
LABEL_25:
    v8 = v71;
    goto LABEL_34;
  }

  v19 = 0;
LABEL_34:
  if (*(a1 + 1042) != 1 || ((v19 | *(a1 + 1043)) & 1) != 0)
  {
    while (1)
    {
      v23 = v7;
      if (!v7)
      {
        break;
      }

      v24 = *(*v6 + 8 * v7 - 8);
      v25 = atomic_load((v24 + 36));
      if ((v25 & 3) == 0)
      {
        --v7;
        if (*(v24 + 15203) != 1)
        {
          continue;
        }
      }

      v26 = v23;
      goto LABEL_41;
    }

    v26 = 0;
LABEL_41:
    si_sync_ctx_create_with_defer_fd(v4, 0);
    v28 = v27;
    *(v27 + 96) = 1;
    if ((*(*v27 + 2072) & 1) == 0 && (*(*v27 + 2437) & 1) == 0)
    {
      attachJournal(v27);
    }

    syncIndex(v28, 0);
    if (v23)
    {
      *(a1 + 12) = v26;
      *(a1 + 8) = *(*(*v6 + 8 * (*(v6 + 8) - v26)) + 56);
      si_enqueue_work(*(v4 + 1064), si_mergeIndex, a1);
      return;
    }

    goto LABEL_2;
  }

  if ((v8 & 1) != 0 || (v29 = *(v4 + 1384)) == 0 || (v30 = count_IndexSet(*(v4 + 1384), *(v29 + 2) - 1, 0)) == 0)
  {
LABEL_2:
    si_merge_ctx_free(a1, a2 != 0);
    return;
  }

  v31 = v30;
  if (*(v4 + 2457))
  {
    goto LABEL_58;
  }

  if (v30 == 4)
  {
    if (!v9)
    {
      goto LABEL_95;
    }

    goto LABEL_79;
  }

  if (v30 != 6)
  {
LABEL_58:
    v34 = v30 < 4 || v9 == 0;
    if (v34 && (v30 < 6 || (gSISystemOnBattery & 1) != 0))
    {
      goto LABEL_2;
    }

    goto LABEL_79;
  }

  if (gSISystemOnBattery)
  {
LABEL_95:
    *&buf = 0;
    *(&buf + 1) = &buf;
    v76 = 0x2000000000;
    v77 = malloc_type_malloc(0x460uLL, 0x1070040C187FD8AuLL);
    v56 = *(&buf + 1);
    memcpy(*(*(&buf + 1) + 24), a1, 0x460uLL);
    v57 = *(v56 + 24);
    *(v57 + 1064) = 0;
    *(v57 + 1080) = 0;
    *(v57 + 1088) = 0;
    *(v57 + 1072) = 0;
    *(*(v56 + 24) + 1056) = 0;
    *(*(v56 + 24) + 1112) = 0;
    *(*(v56 + 24) + 1100) = v31 != 4;
    *v74 = -1;
    v58 = *(v4 + 32);
    v59 = v58 == -1 || (fd_setDir(v58, v74) & 1) == 0;
    v60 = *__error();
    v61 = _SILogForLogForCategory(12);
    v62 = 2 * (dword_1EBF46AFC < 4);
    if (os_log_type_enabled(v61, v62))
    {
      *v73 = 0;
      _os_log_impl(&dword_1C278D000, v61, v62, "Merge(2) scheduled", v73, 2u);
    }

    *__error() = v60;
    if (!v59)
    {
      fd_resetDir(*v74);
    }

    *(v4 + 2457) = 1;
    v63 = *(v4 + 2360);
    v64 = *(v63 + 80);
    v65 = *(v63 + 144);
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 0x40000000;
    v72[2] = ___SIContinueIssueMerge2_block_invoke_1968;
    v72[3] = &unk_1E8192720;
    v72[4] = &buf;
    v72[5] = v4;
    v64(v65, v31 != 4, @"Merge(2)", v72);
    _Block_object_dispose(&buf, 8);
    goto LABEL_2;
  }

LABEL_79:
  *(v4 + 2457) = 0;
  v41 = *(v29 + 2);
  do
  {
    v42 = v41;
    if (v41 <= *(v29 + 2) - v30)
    {
      break;
    }

    v43 = *(*v29 + 8 * --v41);
    v44 = atomic_load((v43 + 36));
    if ((v44 & 3) != 0)
    {
      break;
    }
  }

  while (*(v43 + 15203) != 1);
  if (v42 < 5)
  {
    goto LABEL_2;
  }

  v45 = *(v29 + 2) - v30;
  if (v45 >= v42)
  {
    v47 = 0;
    v52 = 0;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v48 = *v29;
    do
    {
      v49 = *(v48 + 8 * v45);
      v50 = atomic_load((v49 + 16));
      v46 += v50;
      LODWORD(v50) = *(v49 + 68);
      v51 = *(v49 + 80);
      if (v50 >= 2)
      {
        v50 = v50;
      }

      else
      {
        v50 = 0;
      }

      v48 = *v29;
      v47 = v51 + v47 + v50 - *(*(*v29 + 8 * v45++) + 80);
    }

    while (v42 != v45);
    v52 = 4 * v46;
  }

  *(a1 + 1042) = 0;
  *(a1 + 12) = v42;
  *(a1 + 16) = 1;
  __strlcpy_chk(a1 + 17, "live.%d.", v70);
  *(a1 + 1041) = v52 > v47;
  v53 = *(v29 + 2);
  v54 = v53 >= v31;
  v55 = v53 - v31;
  if (!v54)
  {
    v66 = __si_assert_copy_extra_661(-1);
    v67 = v66;
    v68 = "";
    if (v66)
    {
      v68 = v66;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 23056, "indexCount <= indexSet->indexCount", v68);
    free(v67);
    if (__valid_fs(-1))
    {
      v69 = 2989;
    }

    else
    {
      v69 = 3072;
    }

    *v69 = -559038737;
    abort();
  }

  *(a1 + 8) = *(*(*v29 + 8 * v55) + 56);
  si_enqueue_work_with_qos(*(v4 + 1064), 5, si_mergeIndex, a1);
}

uint64_t fullVaccuumNeeded(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  itemCounts(*(a1 + 1392), &v15, &v13);
  itemCounts(*(a1 + 1384), &v14, &v12);
  v4 = v13;
  v5 = v15;
  if (a2)
  {
    if (3 * v15 >= 4 * v13)
    {
      return 0;
    }

    v6 = v14;
    if (v15 <= 5 * v14)
    {
      return 0;
    }
  }

  else
  {
    v6 = v14;
    v7 = v15 < 2 * v13 && v15 > 4 * v14;
    if (!v7 && v14 + v15 >= 2 * (v12 + v13))
    {
      return 0;
    }
  }

  v8 = *__error();
  v9 = _SILogForLogForCategory(0);
  v10 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 134218752;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    v20 = 2048;
    v21 = v4;
    v22 = 2048;
    v23 = v12;
    _os_log_impl(&dword_1C278D000, v9, v10, "full vacuum needed - count: %lld, live count: %lld, delete count: %lld, live delete count: %lld", buf, 0x2Au);
  }

  *__error() = v8;
  return 1;
}

uint64_t si_sync_index_vaccuum_if_needed(uint64_t result, char a2, void *a3, uint64_t a4, NSObject *a5)
{
  if (result)
  {
    v5 = result;
    if (*(result + 1192) && *(result + 1040) && *(result + 1048))
    {
      si_sync_ctx_create_with_defer_fd(result, 0);
      v11 = v10;
      *(v10 + 136) = a2;
      si_power_info_init(v10 + 104, a3, a4, a5);
      si_enqueue_barrier_with_qos(*(v5 + 1160), 9, si_sync_index_delayed_if_dirty0, v11);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void si_sync_index_delayed_if_dirty0(atomic_uint **a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    si_enqueue_barrier_with_qos(*(*a1 + 131), 9, si_sync_index_delayed_if_dirty, a1);
    v3 = 0;
  }

  si_sync_ctx_free(v3, a2 != 0, 2661, "void si_sync_index_delayed_if_dirty0(si_sync_ctx *, Boolean)");
}

void si_sync_index_delayed_if_dirty(atomic_uint **a1, int a2)
{
  if (!a2)
  {
    v4 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
    v5 = *a1;
    *(v4 + 131) = "void si_sync_index_delayed_if_dirty(si_sync_ctx *, Boolean)";
    *v4 = v5;
    v4[16] = 0;
    *(v4 + 1041) = 257;
    v4[1043] = 0;
    *(v4 + 274) = 1;
    v4[1100] = *(a1 + 136);
    v6 = *(a1 + 15);
    *(v4 + 1064) = *(a1 + 13);
    *(v4 + 1080) = v6;
    *(a1 + 26) = 0;
    a1[15] = 0;
    a1[16] = 0;
    a1[14] = 0;
    v7 = *(v5 + 2360);
    if (v7)
    {
      v8 = *(v7 + 64);
      if (v8)
      {
        *(a1 + 26) = v8(*(v7 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 2631, "void si_sync_index_delayed_if_dirty(si_sync_ctx *, Boolean)");
      }
    }

    __strlcpy_chk((v4 + 17), "%d.", v13);
    si_enqueue_barrier_with_qos(*(*a1 + 145), 9, _SIContinueIssueMerge0, v4);
    v10 = _CIListsClean(*(*a1 + 174), *(*a1 + 173), v9);
    v11 = *a1;
    if (v10)
    {
      v12 = *(v11 + 1192);
      if (v12)
      {
        if (!db_is_dirty(v12))
        {
          goto LABEL_10;
        }

        v11 = *a1;
      }
    }

    si_enqueue_work_with_qos(*(v11 + 1104), 9, si_sync_index_delayed0, a1);
    a1 = 0;
  }

LABEL_10:

  si_sync_ctx_free(a1, a2 != 0, 2650, "void si_sync_index_delayed_if_dirty(si_sync_ctx *, Boolean)");
}

uint64_t *itemCounts(uint64_t *result, void *a2, void *a3)
{
  if (*(result + 2))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = *result;
    do
    {
      v7 = *(v6 + 8 * v3);
      v8 = atomic_load((v7 + 16));
      v4 += v8;
      LODWORD(v8) = *(v7 + 68);
      v9 = *(v7 + 80);
      if (v8 >= 2)
      {
        v8 = v8;
      }

      else
      {
        v8 = 0;
      }

      v6 = *result;
      v5 = v9 + v5 + v8 - *(*(*result + 8 * v3++) + 80);
    }

    while (v3 < *(result + 2));
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a2 += v5;
  *a3 += v4;
  return result;
}

uint64_t reparent_parented_items(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v14[512] = *MEMORY[0x1E69E9840];
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = v1;
    v7 = *(v3 + 1192);
    do
    {
      v8 = *v6++;
      v13 = 0;
      if (!db_get_obj(v7, v8, &v13, 0))
      {
        v9 = v13;
        if (*(v13 + 3))
        {
          bzero(v14, 0x1000uLL);
          LiveIndex = si_getLiveIndex(*(v4 + 1384));
          v12 = 0;
          computePathFS(v4, v13, v14, &v12);
          si_updateIndexForPathRepair(v4, LiveIndex, v13, v14, v12);
          v9 = v13;
        }

        free(v9);
      }

      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t reset_parented_items(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 1192);
  cs_orphan_oid = si_get_cs_orphan_oid(a3);
  if (a2)
  {
    v8 = cs_orphan_oid;
    do
    {
      v10 = *a1++;
      v9 = v10;
      v18 = 0;
      if (!db_get_obj(v6, v10, &v18, 0))
      {
        v11 = v18;
        if (*(v18 + 3) == v8 || (*(v18 + 3) = v8, (updated = db_update_obj(v6, v11, 9)) == 0))
        {
          *buf = v8;
          *&buf[8] = 2;
          LiveIndex = si_getLiveIndex(*(a3 + 1384));
          si_updateIndexForPathRepair(a3, LiveIndex, v18, buf, 2);
        }

        else
        {
          v13 = updated;
          v14 = *__error();
          v15 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "reset_parented_items";
            *&buf[12] = 1024;
            *&buf[14] = 36232;
            v20 = 1024;
            v21 = v13;
            v22 = 2048;
            v23 = v9;
            _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: updateErr err %d (%lld)", buf, 0x22u);
          }

          *__error() = v14;
        }

        free(v18);
      }

      --a2;
    }

    while (a2);
  }

  return 0;
}

uint64_t gather_parented_items(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (a2[3])
  {
    SIValueSet<unsigned long long>::SIValueSetInsert((a3 + 16), *a2);
  }

  return 1;
}

void cf_release_scheduler(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (atomic_fetch_add((a2 + 96), 0xFFFFFFFF) == 1)
    {
      _si_scheduler_destroy(a2);
    }
  }
}

uint64_t query_node_unique_set_value_callback_retain(uint64_t a1, uint64_t a2)
{
  result = a2;
  atomic_fetch_add_explicit((a2 + 72), 1u, memory_order_relaxed);
  return result;
}

void updateUsedBites(int a1, CFNumberRef number, __CFBitVector *a3)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberLongType, &valuePtr);
  if (valuePtr <= 0xFE)
  {
    CFBitVectorSetBitAtIndex(a3, valuePtr, 1u);
  }
}

uint64_t store_stream_read_vint32_706(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((*(a1 + 32) - v2) < 6)
  {
    v17 = 0;
    LODWORD(v5) = 0;
    __dst = 0;
    while (store_stream_read_bytes_707(a1, &__dst, 1uLL) == 1)
    {
      v5 = ((__dst & 0x7F) << v17) | v5;
      v17 += 7;
      if ((__dst & 0x80) == 0)
      {
        return v5;
      }
    }

    return 0;
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = v2 + 1;
    v5 = *(v3 + v2);
    if ((*(v3 + v2) & 0x80000000) == 0)
    {
      v6 = v2 + 1;
LABEL_11:
      *(a1 + 40) = v6;
      return v5;
    }

    v6 = v2 + 2;
    v7 = *(v3 + v4);
    v8 = *(v3 + v4);
    if ((v7 & 0x80000000) == 0)
    {
      v5 = v5 & 0x7F | (v8 << 7);
      goto LABEL_11;
    }

    v9 = v2 + 3;
    v10 = *(v3 + v6);
    v11 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      v12 = ((v8 & 0x7F) << 7) | (v10 << 14) | (v5 & 0x7F);
      v6 = v9;
LABEL_10:
      v5 = v12;
      goto LABEL_11;
    }

    v6 = v2 + 4;
    v13 = *(v3 + v9);
    v14 = *(v3 + v9);
    if ((v13 & 0x80000000) == 0)
    {
      v12 = ((v11 & 0x7F) << 14) | (v14 << 21) | ((v8 & 0x7F) << 7) | (v5 & 0x7F);
      goto LABEL_10;
    }

    v16 = *(v3 + v6);
    *(a1 + 40) = v2 + 5;
    if (v16 < 0)
    {
      return ((v14 & 0x7F) << 21) | (v16 << 28) | ((v11 & 0x7F) << 14) | ((v8 & 0x7F) << 7) | (v5 & 0x7F);
    }

    else
    {
      v5 = 0;
      *(a1 + 16) = 22;
    }
  }

  return v5;
}

uint64_t store_stream_read_bytes_707(unsigned int *a1, char *__dst, size_t __n)
{
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  if (v7 + __n > v6)
  {
    v8 = 0;
    v11 = *(a1 + 5);
    while (1)
    {
      v9 = v6 - v11;
      if (v6 != v11)
      {
        memcpy(__dst, (*(a1 + 6) + v11), v6 - v11);
        v6 = *(a1 + 4);
        *(a1 + 5) += v9;
      }

      v12 = prot_pread(*a1, *(a1 + 6), v6, *(a1 + 3));
      if (v12 == -1)
      {
        break;
      }

      v6 = v12;
      *(a1 + 4) = v12;
      *(a1 + 5) = 0;
      *(a1 + 3) += v12;
      if (!v12)
      {
        return v9 + v8;
      }

      v7 = 0;
      v11 = 0;
      __dst += v9;
      __n -= v9;
      v8 += v9;
      if (__n <= v12)
      {
        goto LABEL_3;
      }
    }

    v9 = 0;
    a1[4] = *__error();
  }

  else
  {
    v8 = 0;
LABEL_3:
    memcpy(__dst, (*(a1 + 6) + v7), __n);
    *(a1 + 5) += __n;
    v9 = __n;
  }

  return v9 + v8;
}

void ___si_init_localized_terms_block_invoke_1146(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a1 + 32);
    bzero(v37, 0x400uLL);
    RawLocalizedUniquedField = getRawLocalizedUniquedField(*(v4 + 1192), a2, v37, 0);
    if (RawLocalizedUniquedField)
    {
      v7 = RawLocalizedUniquedField;
      v8 = *MEMORY[0x1E695E480];
      v9 = _decodeSDBField(*(v4 + 1192), v7, v7 + 13, 0, 0, 0, 0, *MEMORY[0x1E695E480], v6);
      if (v9)
      {
        v10 = v9;
        v11 = *__error();
        v12 = _SILogForLogForCategory(0);
        v13 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v12, v13))
        {
          *buf = 67109378;
          *v34 = a2;
          *&v34[4] = 2112;
          *&v34[6] = v10;
          _os_log_impl(&dword_1C278D000, v12, v13, "new loc field(%d): %@", buf, 0x12u);
        }

        *__error() = v11;
        v14 = CFGetTypeID(v10);
        if (v14 == CFDictionaryGetTypeID() && CFDictionaryGetCount(v10))
        {
          Mutable = CFDictionaryCreateMutable(v8, 0, 0, MEMORY[0x1E695E9E8]);
          field_name_for_id = db_get_field_name_for_id(*(v4 + 1192), *(v7 + 1));
          if (field_name_for_id)
          {
            id_for_field = db_get_id_for_field(*(v4 + 1192), field_name_for_id);
            CFDictionaryAddValue(Mutable, (id_for_field | ((*(v7 + 1) & 0x100) << 23)), v10);
            TermUpdateSetAddDocumentInfo(*(v4 + 6648), (*(v4 + 6584) >> 25) & 3, a2, 0, Mutable, 0, 0, 5u, 0);
            CFRelease(Mutable);
          }

          else
          {
            si_analytics_log_8973(0, v17, v18, v19, v20, v21, v22, v23, *(v7 + 1), a2);
            v25 = *__error();
            v26 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v32 = *(v7 + 1);
              *buf = 136315650;
              *v34 = "si_handle_new_unique_localized_field";
              *&v34[8] = 1024;
              *&v34[10] = 541;
              v35 = 1024;
              v36 = v32;
              _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: No field name for field id %d", buf, 0x18u);
            }

            *__error() = v25;
          }
        }

        CFRelease(v10);
      }

      if (v7 != v37)
      {
        free(v7);
      }
    }
  }

  v27 = *(a1 + 32);
  if ((*(v27 + 6872) & 1) == 0)
  {
    uuid_generate_random((v27 + 6856));
    v28 = CFDataCreate(0, (*(a1 + 32) + 6856), 16);
    SISetProperty(*(a1 + 32), @"database.localizedtermsuuid", v28);
    CFRelease(v28);
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    v31 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v30, v31))
    {
      *v37 = 67109120;
      v38 = a2;
      _os_log_impl(&dword_1C278D000, v30, v31, "new loc term %d", v37, 8u);
    }

    *__error() = v29;
    *(*(a1 + 32) + 6872) = 1;
  }
}

dispatch_semaphore_t freeQueueSetup()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  freeQueue = dispatch_queue_create("com.apple.spotlight.index.free", v0);
  result = dispatch_semaphore_create(16);
  freeSemaphore = result;
  return result;
}

void __registerForGameModeChange_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  sGameModeNotificationQueue = dispatch_queue_create("com.apple.spotlight.CoreSpotlight.gm", v0);
  notify_register_check("com.apple.system.console_mode_changed", &registerForGameModeChange__gameModeNotifyToken);
  notify_register_dispatch("com.apple.system.console_mode_changed", &registerForGameModeChange__gameModeNotifyToken, sGameModeNotificationQueue, &__block_literal_global_1137);
  v1 = sGameModeNotificationQueue;

  dispatch_async(v1, &__block_literal_global_1140);
}

uint64_t checkGameModeAndSuspendResume(int a1)
{
  state64 = 0;
  notify_get_state(a1, &state64);
  pthread_mutex_lock(&sGameModeMutex);
  sInGameMode = state64 != 0;
  if (!state64)
  {
    pthread_cond_broadcast(&sGameModeCond);
  }

  return pthread_mutex_unlock(&sGameModeMutex);
}

uint64_t __si_set_vector_store_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  a2[1798] = v3;
  v4 = a2[614];
  if (v4)
  {
    v4[26] = v3;
    v5 = v4[19];
    v6 = v4 + 20;
    if (v5 != v4 + 20)
    {
      do
      {
        (*(*v5[5] + 288))(v5[5], v3);
        v7 = v5[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v5[2];
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
      }

      while (v8 != v6);
    }
  }

  v10 = a2[1799];
  if (v10)
  {
    TermUpdateSetSetVectorStore(*(v10 + 80), v3);
  }

  v11 = a2[1800];
  if (v11)
  {
    TermUpdateSetSetVectorStore(*(v11 + 80), v3);
  }

  return 1;
}

void _sdb_cache_flush_callback(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    v6 = 2 * (gSILogLevels[0] < 4);
    v7 = os_log_type_enabled(v5, v6);
    if (a2)
    {
      if (v7)
      {
        v8 = 67109120;
        v9 = a2;
        _os_log_impl(&dword_1C278D000, v5, v6, "_sdb_cache_flush_callback: resuming watchdog (%d)", &v8, 8u);
      }

      *__error() = v4;
      si_indexingWatchdogResume(*(a1 + 64));
    }

    else
    {
      if (v7)
      {
        v8 = 67109120;
        v9 = 0;
        _os_log_impl(&dword_1C278D000, v5, v6, "_sdb_cache_flush_callback: suspending watchdog (%d)", &v8, 8u);
      }

      *__error() = v4;
      si_indexingWatchdogSuspend(*(a1 + 64));
    }
  }
}

uint64_t _onceInitTuning()
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 1;
  *v3 = 0x1900000006;
  v1 = 4;
  sysctl(v3, 2u, &v2, &v1, 0, 0);
  gCPUCount = v2;
  return pthread_mutex_unlock(&_onceInitTuning_prefLock);
}

int *rename_transitional_state(int a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (renameatx_np(a1, "tmp.indexState", a1, "indexState", 0x10u))
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      v9 = 136316162;
      v10 = "rename_transitional_state";
      v11 = 1024;
      v12 = 12011;
      v13 = 1024;
      v14 = v7;
      v15 = 2080;
      v16 = "tmp.indexState";
      v17 = 2080;
      v18 = "indexState";
      _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: errno:%d %s -> %s", &v9, 0x2Cu);
    }

    *__error() = v2;
  }

  result = renameatx_np(a1, "tmp.spotlight.state.transition", a1, "tmp.spotlight.state", 0x10u);
  if (result)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *__error();
      v9 = 136316162;
      v10 = "rename_transitional_state";
      v11 = 1024;
      v12 = 12015;
      v13 = 1024;
      v14 = v8;
      v15 = 2080;
      v16 = "tmp.spotlight.state.transition";
      v17 = 2080;
      v18 = "tmp.spotlight.state";
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: errno:%d %s -> %s", &v9, 0x2Cu);
    }

    result = __error();
    *result = v5;
  }

  return result;
}

uint64_t check_touch_file(uint64_t result, const char *a2, uint64_t a3)
{
  if ((result & 0x80000000) == 0)
  {
    if (a2)
    {
      result = openat(result, a2, 0x8000);
      if (result != -1)
      {
        v4 = result;
        (*(a3 + 16))(a3);

        return close(v4);
      }
    }
  }

  return result;
}

uint64_t si_read_index_state(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v41 = *MEMORY[0x1E69E9840];
  v8 = x_openat(*(v1 + 32), "tmp.spotlight.state", 0, v3, v4, v5, v6, v7, v29);
  if (v8 == -1)
  {
    v12 = *__error();
    v13 = *__error();
    v14 = _SILogForLogForCategory(11);
    v15 = v14;
    if (v12 == 2)
    {
      v25 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v14, v25))
      {
        __src[0] = 134218240;
        *&__src[1] = v2;
        LOWORD(__src[3]) = 1024;
        *(&__src[3] + 2) = 2;
        _os_log_impl(&dword_1C278D000, v15, v25, "%p open index state error:%d", __src, 0x12u);
      }

      *__error() = v13;
      return 2;
    }

    else if (v12 == 92)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __src[0] = 136316162;
        *&__src[1] = "si_read_index_state";
        LOWORD(__src[3]) = 1024;
        *(&__src[3] + 2) = 34679;
        HIWORD(__src[4]) = 2048;
        *&__src[5] = v2;
        LOWORD(__src[7]) = 1024;
        *(&__src[7] + 2) = 92;
        HIWORD(__src[8]) = 2080;
        *&__src[9] = strerror(92);
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: %p open index state error:%d (%s); removing the file.", __src, 0x2Cu);
      }

      *__error() = v13;
      if (unlinkat(*(v2 + 32), "tmp.spotlight.state", 0))
      {
        v16 = *__error();
        v17 = _SILogForLogForCategory(11);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v27 = __error();
          v28 = strerror(*v27);
          __src[0] = 136315650;
          *&__src[1] = "si_read_index_state";
          LOWORD(__src[3]) = 1024;
          *(&__src[3] + 2) = 34681;
          HIWORD(__src[4]) = 2080;
          *&__src[5] = v28;
          _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Error removing tmp.spotlight.state: %s\n", __src, 0x1Cu);
        }

        *__error() = v16;
      }

      return 92;
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __src[0] = 136315906;
        *&__src[1] = "si_read_index_state";
        LOWORD(__src[3]) = 1024;
        *(&__src[3] + 2) = 34686;
        HIWORD(__src[4]) = 2048;
        *&__src[5] = v2;
        LOWORD(__src[7]) = 1024;
        *(&__src[7] + 2) = v12;
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: %p open index state error:%d", __src, 0x22u);
      }

      *__error() = v13;
    }
  }

  else
  {
    v9 = v8;
    if (*(v2 + 2072) == 1)
    {
      fcntl(v8, 64, 3);
    }

    bzero(__src, 0x1000uLL);
    v10 = prot_pread(v9, __src, 0x1000uLL, 0);
    v11 = v10;
    if (v10 == -1)
    {
      v12 = *__error();
    }

    else
    {
      if (v10 == 4096)
      {
        close(v9);
LABEL_21:
        if (LOBYTE(__src[0]) == 1)
        {
          memcpy((v2 + 2480), __src, 0x1000uLL);
          v20 = *__error();
          v21 = _SILogForLogForCategory(11);
          v22 = 2 * (dword_1EBF46AF8 < 4);
          if (os_log_type_enabled(v21, v22))
          {
            if ((BYTE1(__src[0]) - 1) > 3u)
            {
              v23 = "unknown";
            }

            else
            {
              v23 = off_1E8192938[(BYTE1(__src[0]) - 1)];
            }

            *buf = 134218242;
            v31 = v2;
            v32 = 2080;
            *v33 = v23;
            _os_log_impl(&dword_1C278D000, v21, v22, "%p read state:%s", buf, 0x16u);
          }
        }

        else
        {
          v20 = *__error();
          v24 = _SILogForLogForCategory(11);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v31 = "si_read_index_state";
            v32 = 1024;
            *v33 = 34706;
            *&v33[4] = 2048;
            *&v33[6] = v2;
            v34 = 1024;
            v35 = LOBYTE(__src[0]);
            _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: %p invalid version:%d", buf, 0x22u);
          }
        }

        *__error() = v20;
        _si_dump_index_state(v2, 4);
        return 0;
      }

      v12 = 22;
    }

    v18 = *__error();
    v19 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v31 = "si_read_index_state";
      v32 = 1024;
      *v33 = 34699;
      *&v33[4] = 2048;
      *&v33[6] = v2;
      v34 = 1024;
      v35 = v9;
      v36 = 2048;
      v37 = v11;
      v38 = 1024;
      v39 = v12;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: %p read index state fd:%d rs:%ld error:%d", buf, 0x32u);
    }

    *__error() = v18;
    close(v9);
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  return v12;
}

uint64_t _SIOpenIndexFilesWithState(uint64_t a1, int a2, unsigned int a3, int a4, char a5, _BYTE *a6, void *a7, uint64_t a8, _DWORD *a9, char a10)
{
  *&v398[764] = *MEMORY[0x1E69E9840];
  *a6 = 0;
  *a7 = 0;
  v382[0] = MEMORY[0x1E69E9820];
  v382[1] = 0x40000000;
  v382[2] = ___SIOpenIndexFilesWithState_block_invoke;
  v382[3] = &__block_descriptor_tmp_951;
  v382[4] = a1;
  v13 = *(a1 + 6944);
  v14 = *(a1 + 2484);
  v352 = *(a1 + 2486);
  v381 = 0;
  v380 = 0;
  v378 = 0;
  v377 = 0;
  cf = 0;
  if (a4)
  {
    v15 = 48;
  }

  else
  {
    v15 = 16;
  }

  if (a3)
  {
    v15 |= 0x40u;
  }

  if (*(a1 + 2073))
  {
    v15 |= 0x400u;
  }

  v16 = v13 == 0;
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = v14;
  }

  v18 = *(a1 + 6584);
  v19 = (v18 >> 13) & 0x800 | v15;
  if (!v16)
  {
    v19 |= 0x1000u;
  }

  v20 = v19 | ~(v18 >> 7) & 0x8000;
  if (a10)
  {
    v21 = v20 | 0x2000;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(a1 + 2072);
  if (*(a1 + 2072))
  {
    v23 = 111;
  }

  else
  {
    v23 = 95;
  }

  if (*(a1 + 2072))
  {
    v24 = 114;
  }

  else
  {
    v24 = 102;
  }

  if (*(a1 + 2072))
  {
    v25 = v21 | 0x100;
  }

  else
  {
    v25 = v21;
  }

  v26 = CIMetaInfoRead(a1 + 1200, v22);
  if (v26)
  {
    v27 = v26;
    v28 = *__error();
    v29 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315906;
      *&__str[4] = "_SIOpenIndexFilesWithState";
      *&__str[12] = 1024;
      *&__str[14] = 11203;
      *&__str[18] = 2048;
      *&__str[20] = a1;
      *&__str[28] = 1024;
      *&__str[30] = v27;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: %p CIMetaInfoRead err:%d", __str, 0x22u);
    }

    *__error() = v28;
    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "CIMetaInfoRead failed %d", v27);
    __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 11206, __str);
    goto LABEL_29;
  }

  v344 = v22;
  v353 = v24;
  v351 = v23;
  v354 = a3;
  v341 = a7;
  v342 = v25;
  v346 = v17;
  v343 = v14;
  if (*(a1 + 1244) > 0x31u || *(a1 + 1252) > 0x31u)
  {
    v32 = *__error();
    v33 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v187 = *(a1 + 1244);
      v188 = *(a1 + 1252);
      *__str = 136316162;
      *&__str[4] = "_SIOpenIndexFilesWithState";
      *&__str[12] = 1024;
      *&__str[14] = 11210;
      *&__str[18] = 2048;
      *&__str[20] = a1;
      *&__str[28] = 1024;
      *&__str[30] = v187;
      *&__str[34] = 1024;
      *&__str[36] = v188;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: %p Too many live indexes %d/%d", __str, 0x28u);
    }

    *__error() = v32;
    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "too many live indexes %d, %d", *(a1 + 1244), *(a1 + 1252));
    __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 11213, __str);
    v30 = -1;
    goto LABEL_41;
  }

  v35 = 0;
  if (v22)
  {
    v36 = 75777;
  }

  else
  {
    v36 = 10241;
  }

  v345 = v36;
  v340 = (a1 + 2408);
  v37 = a1 + 2488 + v14;
  v38 = v23;
  while (1)
  {
    v39 = *(a1 + 2482);
    if (!*(a1 + 2482))
    {
      v39 = *(a1 + 2481);
    }

    v40 = *(a1 + 32);
    v389 = 0;
    bzero(&__str[2], 0x3FEuLL);
    strcpy(__str, ".");
    strlcat(__str, "store.db", 0x400uLL);
    v47 = 0;
    v376 = 0;
    if (v39 > 2)
    {
      break;
    }

    if (v39 == 1)
    {
      v49 = *__error();
      v50 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v50, OS_LOG_TYPE_DEFAULT, "Restore sdb from shadow", buf, 2u);
      }

      *__error() = v49;
      updated = update_db_header(v51);
      if ((updated & 0xFFFFFFFD) != 0)
      {
        v53 = updated;
        v54 = *__error();
        v55 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v391) = v53;
          _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, "Failed to update header err:%d", buf, 8u);
        }
      }

      else
      {
        v56 = copyFileFallback(v40, "store.db", v40, __str, &v389, 1, 1);
        v57 = *__error();
        if (v56)
        {
          v58 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v58, OS_LOG_TYPE_DEFAULT, "Restore data_map from shadow", buf, 2u);
          }

          *__error() = v57;
          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%sStr-%d.map", "db", 1);
          v385 = 0u;
          v387 = 0u;
          v388 = 0u;
          v386 = 0u;
          v383 = v40;
          v384 = buf;
          *&v385 = 0x28400000002;
          v59 = data_map_init_with_ctx(&v383);
          if (v59)
          {
            v60 = v59;
            data_map_commit(v59);
            data_map_destroy(v60);
          }

          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%sStr-%d.map", "db", 2);
          v385 = 0u;
          v387 = 0u;
          v388 = 0u;
          v386 = 0u;
          v383 = v40;
          v384 = buf;
          DWORD1(v385) = 132;
          v61 = data_map_init_with_ctx(&v383);
          v38 = v23;
          if (v61)
          {
            v62 = v61;
            data_map_commit(v61);
            data_map_destroy(v62);
          }

          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%sStr-%d.map", "db", 3);
          v385 = 0u;
          v387 = 0u;
          v388 = 0u;
          v386 = 0u;
          v383 = v40;
          v384 = buf;
          DWORD1(v385) = 132;
          v63 = data_map_init_with_ctx(&v383);
          if (v63)
          {
            v64 = v63;
            data_map_commit(v63);
            data_map_destroy(v64);
          }

          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%sStr-%d.map", "db", 4);
          v385 = 0u;
          v387 = 0u;
          v388 = 0u;
          v386 = 0u;
          v383 = v40;
          v384 = buf;
          DWORD1(v385) = 644;
          v65 = data_map_init_with_ctx(&v383);
          if (v65)
          {
            v66 = v65;
            data_map_commit(v65);
            data_map_destroy(v66);
          }

          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%sStr-%d.map", "db", 5);
          v385 = 0u;
          v387 = 0u;
          v388 = 0u;
          v386 = 0u;
          v383 = v40;
          v384 = buf;
          DWORD1(v385) = 132;
          v67 = data_map_init_with_ctx(&v383);
          if (v67)
          {
            v68 = v67;
            data_map_commit(v67);
            data_map_destroy(v68);
          }

          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%sStr-%d.map", "db", 6);
          v385 = 0u;
          v387 = 0u;
          v388 = 0u;
          v386 = 0u;
          v383 = v40;
          v384 = buf;
          *&v385 = 0x2C400000004;
          v69 = data_map_init_with_ctx(&v383);
          if (v69)
          {
            v70 = v69;
            data_map_commit(v69);
            data_map_destroy(v70);
          }

          goto LABEL_59;
        }

        if (v57)
        {
          v53 = v57;
        }

        else
        {
          v53 = -1;
        }

        v54 = *__error();
        v71 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v391 = "db2_update_datastore_state";
          v392 = 1024;
          LODWORD(v393) = 6796;
          WORD2(v393) = 2080;
          *(&v393 + 6) = "store.db";
          HIWORD(v393) = 2080;
          v394 = __str;
          _os_log_error_impl(&dword_1C278D000, v71, OS_LOG_TYPE_ERROR, "%s:%d: Failed to copyfile for recovery %s->%s", buf, 0x26u);
        }
      }

      *__error() = v54;
      v38 = v23;
      goto LABEL_93;
    }

    if (v39 == 2)
    {
      v48 = update_db_header(v46);
      if (v48)
      {
        goto LABEL_68;
      }

      v47 = 2;
LABEL_61:
      v376 = v47;
    }

LABEL_97:
    v74 = v352;
    if (v47 != *(a1 + 2482))
    {
      *(a1 + 2482) = v47;
      v75 = si_write_index_state(a1, 0, 0, v41, v42, v43, v44, v45);
      if (v75)
      {
        v191 = v75;
        bzero(__str, 0x400uLL);
        snprintf(__str, 0x400uLL, "si_write_index_state failed %d, %d", v191, v47);
        __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 11234, __str);
        v192 = *__error();
        v193 = _SILogForLogForCategory(11);
        if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v391 = "_SIOpenIndexFilesWithState";
          v392 = 1024;
          LODWORD(v393) = 11235;
          WORD2(v393) = 2048;
          *(&v393 + 6) = a1;
          HIWORD(v393) = 1024;
          LODWORD(v394) = v191;
          _os_log_error_impl(&dword_1C278D000, v193, OS_LOG_TYPE_ERROR, "%s:%d: %p si_write_index_state err:%d", buf, 0x22u);
        }

        *__error() = v192;
        goto LABEL_251;
      }
    }

    v371 = 0u;
    v372 = 0u;
    v373 = 0;
    LODWORD(v371) = *(a1 + 32);
    *(&v371 + 1) = "store.db";
    *&v372 = __PAIR64__(*(a1 + 60), v345);
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    v76 = a1 + 2192;
    if (!SIIsAppleInternal_internal)
    {
      v76 = 0;
    }

    *(&v372 + 1) = v76;
    LOBYTE(v373) = 0;
    v374 = a1;
    v375 = _sdb_cache_flush_callback;
    if (*(a1 + 2481) != 2)
    {
      datastore_with_ctx = db2_get_datastore_with_ctx(&v371);
      *(a1 + 1192) = datastore_with_ctx;
      if (datastore_with_ctx)
      {
        *__str = 0;
        v167 = SICopyProperty(a1, @"kSINextIndexId");
        v168 = v353;
        if (v167)
        {
          v169 = v167;
          v170 = CFGetTypeID(v167);
          if (v170 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v169, kCFNumberSInt32Type, __str);
          }

          CFRelease(v169);
        }

        if (*__str > *(a1 + 1456))
        {
          *(a1 + 1456) = *__str;
        }

        db_datastore_set_bg_assertion_flag(*(a1 + 1192), *(a1 + 6944));
        if (v354)
        {
          if (*(a1 + 2483) == 2)
          {
            _si_dump_index_state(a1, 2);
            if (*(a1 + 2483) == 2)
            {
              v328 = __si_assert_copy_extra_661(-1);
              v319 = v328;
              v329 = "";
              if (v328)
              {
                v329 = v328;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11520, "s->directory_state!=kSIIndexStateFastFlush", v329);
LABEL_365:
              free(v319);
              if (__valid_fs(-1))
              {
                v323 = 2989;
              }

              else
              {
                v323 = 3072;
              }

              *v323 = -559038737;
              abort();
            }
          }

          v171 = *__error();
          v172 = _SILogForLogForCategory(6);
          v173 = 2 * (dword_1EBF46AE4 < 4);
          if (os_log_type_enabled(v172, v173))
          {
            v174 = *(a1 + 2483);
            v175 = *(a1 + 2481);
            if (*(a1 + 2483))
            {
              v176 = *(a1 + 2483);
            }

            else
            {
              v176 = *(a1 + 2481);
            }

            *__str = 67109632;
            *&__str[4] = v176;
            *&__str[8] = 1024;
            *&__str[10] = v174;
            *&__str[14] = 1024;
            *&__str[16] = v175;
            _os_log_impl(&dword_1C278D000, v172, v173, "Update reverse store with state: %d (%d, %d)", __str, 0x14u);
          }

          *__error() = v171;
          v177 = *(a1 + 2483);
          if (!*(a1 + 2483))
          {
            v177 = *(a1 + 2481);
          }

          v178 = reverseStoreUpdateState(*(a1 + 32), v177, &v376);
          v179 = v178;
          v168 = v353;
          if (v178 == 2 && v344)
          {
            v180 = *__error();
            v181 = _SILogForLogForCategory(6);
            if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
            {
              *__str = 136315394;
              *&__str[4] = "_SIOpenIndexFilesWithState";
              *&__str[12] = 1024;
              *&__str[14] = 11527;
              _os_log_error_impl(&dword_1C278D000, v181, OS_LOG_TYPE_ERROR, "%s:%d: Ignoring missing path store", __str, 0x12u);
            }

            *__error() = v180;
            *(a1 + 6624) = createReverseStore(*(a1 + 32), "", v382);
            LODWORD(v74) = v352;
            goto LABEL_273;
          }

          if (v178)
          {
            v194 = *__error();
            v195 = _SILogForLogForCategory(11);
            if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
            {
              *__str = 136315650;
              *&__str[4] = "_SIOpenIndexFilesWithState";
              *&__str[12] = 1024;
              *&__str[14] = 11532;
              *&__str[18] = 1024;
              *&__str[20] = v179;
              _os_log_error_impl(&dword_1C278D000, v195, OS_LOG_TYPE_ERROR, "%s:%d: reverseStoreUpdateState err:%d", __str, 0x18u);
            }

            *__error() = v194;
            bzero(__str, 0x400uLL);
            snprintf(__str, 0x400uLL, "reverseStoreUpdateState err %d", v179);
            __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 11535, __str);
            goto LABEL_251;
          }

          v203 = v376;
          if (v376 != *(a1 + 2483))
          {
            v204 = *__error();
            v205 = _SILogForLogForCategory(6);
            v206 = 2 * (dword_1EBF46AE4 < 4);
            if (os_log_type_enabled(v205, v206))
            {
              *__str = 67109120;
              *&__str[4] = v203;
              _os_log_impl(&dword_1C278D000, v205, v206, "Got reverse store with state: %d", __str, 8u);
            }

            *__error() = v204;
            *(a1 + 2483) = v203;
            v212 = si_write_index_state(a1, 0, 0, v207, v208, v209, v210, v211);
            if (v212)
            {
              v213 = v212;
              v214 = *__error();
              v215 = _SILogForLogForCategory(11);
              if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
              {
                *__str = 136315650;
                *&__str[4] = "_SIOpenIndexFilesWithState";
                *&__str[12] = 1024;
                *&__str[14] = 11543;
                *&__str[18] = 1024;
                *&__str[20] = v213;
                _os_log_error_impl(&dword_1C278D000, v215, OS_LOG_TYPE_ERROR, "%s:%d: si_write_index_state err:%d", __str, 0x18u);
              }

              *__error() = v214;
              bzero(__str, 0x400uLL);
              snprintf(__str, 0x400uLL, "si_write_index_state err %d", v213);
              __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 11546, __str);
              goto LABEL_29;
            }
          }

          v383 = 0;
          v216 = check_crash_state(*(a1 + 32), 0, a5, &v383, 2);
          bzero(__str, 0x400uLL);
          v217 = *__error();
          v218 = _SILogForLogForCategory(0);
          v219 = 2 * (gSILogLevels[0] < 4);
          if (os_log_type_enabled(v218, v219))
          {
            v220 = v383;
            v221 = fcntl(*(a1 + 32), 50, __str);
            if (__str[0])
            {
              v222 = v221 < 0;
            }

            else
            {
              v222 = 1;
            }

            if (v222)
            {
              v223 = 0;
            }

            else
            {
              v223 = __str;
            }

            *buf = 134218242;
            v391 = v220;
            v392 = 2080;
            *&v393 = v223;
            _os_log_impl(&dword_1C278D000, v218, v219, "rs last_crash_delta: %ld for %s", buf, 0x16u);
          }

          *__error() = v217;
          v224 = openReverseStore(*(a1 + 32), v216, 0, 0, *(a1 + 6592), &v377, v382);
          *(a1 + 6624) = v224;
          if (!v224)
          {
            *a9 |= 1u;
          }

          LODWORD(v74) = v352;
          v168 = v353;
        }

LABEL_273:
        v225 = v346;
        updateMetaInfoForState((a1 + 1200), v346, v74);
        if (v346)
        {
          v227 = 0;
          v228 = 0;
          while (1)
          {
            v229 = a1 + v227;
            v230 = *(a1 + v227 + 2488);
            if (!*(a1 + v227 + 2488))
            {
              v230 = *(a1 + 2481);
            }

            v231 = ContentIndexUpdateState(v226, *(a1 + 32), *(a1 + 1284), v351, v168, v354, 0, v227, v230, &v376);
            if (v231)
            {
              v238 = v231;
              v239 = *__error();
              v240 = _SILogForLogForCategory(11);
              if (!os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_286;
              }

              *__str = 136315906;
              *&__str[4] = "_SIOpenIndexFilesWithState";
              *&__str[12] = 1024;
              *&__str[14] = 11584;
              *&__str[18] = 2048;
              *&__str[20] = a1;
              *&__str[28] = 1024;
              *&__str[30] = v238;
              v241 = "%s:%d: %p ContentIndexUpdateState err:%d";
              goto LABEL_377;
            }

            if (*(v229 + 2488) != v376)
            {
              *(v229 + 2488) = v376;
              v237 = si_write_index_state(a1, 0, 0, v232, v233, v234, v235, v236);
              if (v237)
              {
                break;
              }
            }

            ++v227;
            v225 = v346;
            v228 = v227 >= v346;
            v168 = v353;
            if (v346 == v227)
            {
              goto LABEL_281;
            }
          }

          v242 = v237;
          v239 = *__error();
          v240 = _SILogForLogForCategory(11);
          if (!os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_286;
          }

          *__str = 136315906;
          *&__str[4] = "_SIOpenIndexFilesWithState";
          *&__str[12] = 1024;
          *&__str[14] = 11591;
          *&__str[18] = 2048;
          *&__str[20] = a1;
          *&__str[28] = 1024;
          *&__str[30] = v242;
          v241 = "%s:%d: %p si_write_index_state err:%d";
LABEL_377:
          _os_log_error_impl(&dword_1C278D000, v240, OS_LOG_TYPE_ERROR, v241, __str, 0x22u);
LABEL_286:
          v225 = v346;
          v168 = v353;
          *__error() = v239;
          if (!v228 || v352 == 0)
          {
            goto LABEL_299;
          }
        }

        else
        {
LABEL_281:
          if (!v352)
          {
LABEL_299:
            v258 = *(a1 + 1456);
            v359[0] = MEMORY[0x1E69E9820];
            v359[1] = 0x40000000;
            v359[2] = ___SIOpenIndexFilesWithState_block_invoke_969;
            v359[3] = &__block_descriptor_tmp_970;
            v359[4] = a1;
            _si_next_index_id(a1, (v225 + v352), 0, 1);
            v358[0] = MEMORY[0x1E69E9820];
            v358[1] = 0x40000000;
            v358[2] = ___SIOpenIndexFilesWithState_block_invoke_2_971;
            v358[3] = &__block_descriptor_tmp_972;
            v358[4] = a1;
            v260 = *(a1 + 1392);
            v261 = *(a1 + 1384);
            v262 = *(a1 + 6592);
            v263 = *(a1 + 1192);
            if (v263)
            {
              vector_store = db_get_vector_store(v263);
            }

            else
            {
              vector_store = 0;
            }

            v30 = ContentIndexOpenBulk(v259, a1 + 1200, a8, v260, v261, v342 | 6, v262, v340, v341, vector_store, v359, v358);
            if (v30 < 0)
            {
              *(a1 + 1456) = v258;
              v285 = *__error();
              if (v285)
              {
                v286 = v285;
              }

              else
              {
                v286 = -1;
              }

              bzero(__str, 0x400uLL);
              snprintf(__str, 0x400uLL, "ContentIndexOpenBulk err %d, %d", v30, v286);
              __si_set_error_str(0, "%s:%u: %s", "SpotlightIndex.c", 11634, __str);
              goto LABEL_30;
            }

            v199 = *__error();
            v265 = _SILogForLogForCategory(11);
            v266 = 2 * (dword_1EBF46AF8 < 4);
            if (os_log_type_enabled(v265, v266))
            {
              v267 = *(a1 + 2408);
              *__str = 134218240;
              *&__str[4] = a1;
              *&__str[12] = 2048;
              *&__str[14] = v267;
              _os_log_impl(&dword_1C278D000, v265, v266, "opened index %p with recovery time is %llu)", __str, 0x16u);
            }

LABEL_305:
            v268 = v346;
            *__error() = v199;
            if ((a2 == 1) | v35 & 1)
            {
              v30 = 2;
            }

            if (!*(*(a1 + 1384) + 8))
            {
              v274 = *(a1 + 1392);
              v275 = *(*(*v274 + 8 * (*(v274 + 8) - 1)) + 40);
              v357[0] = MEMORY[0x1E69E9820];
              v357[1] = 0x40000000;
              v357[2] = ___SIOpenIndexFilesWithState_block_invoke_974;
              v357[3] = &__block_descriptor_tmp_975;
              v357[4] = a1;
              v276 = *(a1 + 32);
              v277 = *(*v274 + 8 * (*(v274 + 8) - 1));
              v278 = *(v277 + 68);
              v279 = *(v277 + 80);
              v280 = v278 >= 2 ? v278 : 0;
              v281 = v275 ? v275 + 1 : 2;
              v282 = *(a1 + 1284);
              v283 = *(a1 + 1192);
              v284 = v283 ? db_get_vector_store(v283) : 0;
              v356[0] = MEMORY[0x1E69E9820];
              v356[1] = 0x40000000;
              v356[2] = ___SIOpenIndexFilesWithState_block_invoke_2_976;
              v356[3] = &__block_descriptor_tmp_977;
              v356[4] = a1;
              New = ContentIndexCreateNew(v276, @"tmp.", v279 + v280, v281, v342, 1, v282, v284, v356, v357, *(a1 + 60));
              if (New)
              {
                v288 = New;
                *buf = 0;
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 0x40000000;
                aBlock[2] = ___SIOpenIndexFilesWithState_block_invoke_3;
                aBlock[3] = &__block_descriptor_tmp_978;
                aBlock[4] = a1;
                aBlock[5] = New;
                ContentIndexSetDirtyCallback(New, aBlock);
                *(v288 + 15201) = 4;
                v397 = 0;
                v396 = 0u;
                memset(__str, 0, sizeof(__str));
                ContentIndexSyncIndex(v288, __str, buf);
                bzero(&__str[8], 0x208uLL);
                *__str = 0x6D6F76650A00;
                *&__str[8] = 2;
                __str[12] = 1;
                *&__str[28] = 1;
                ContentIndexListAppend(*(a1 + 1384), v288);
                si_clone_index_metadata_to_inflight(v289);
                __strlcpy_chk(v398, (v288 + 15208), 255, 255);
                v290 = si_openat_protected(*(a1 + 32), "tmp.movePlan", 1538, 3);
                pwrite(v290, __str, 0x210uLL, 0);
                fcntl(v290, 85);
                ContentIndexChangePrefix(v291);
                unlinkat(*(a1 + 32), "tmp.movePlan", 2048);
                close(v290);
              }
            }

            v292 = *(a1 + 1384);
            v293 = *(v292 + 8);
            v294 = v352;
            if (v293)
            {
              v295 = *(*(*v292 + 8 * (v293 - 1)) + 4);
              if (db_uses_stringmap(*(a1 + 1192)))
              {
                if ((v295 - 95) >= 4)
                {
                  if ((db_corespotlight_store(*(a1 + 1192)) & 1) == 0 && (v295 - 99) >= 2 && v295 != 102)
                  {
                    v334 = __si_assert_copy_extra_661(-1);
                    v319 = v334;
                    v335 = "";
                    if (v334)
                    {
                      v335 = v334;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11707, "db_corespotlight_store(newIndex->store) || version == 99 || version == 100 || version == 102", v335);
                    goto LABEL_365;
                  }
                }

                else
                {
                  ContentIndexListsApply(*(a1 + 1392), *(a1 + 1384), *(&off_1E8192958 + (v295 - 95)));
                }
              }

              v296 = *(*(**(a1 + 1384) + 8 * (*(*(a1 + 1384) + 8) - 1)) + 4);
              if (db_uses_stringmap(*(a1 + 1192)))
              {
                if ((v296 - 95) >= 4)
                {
                  if ((db_corespotlight_store(*(a1 + 1192)) & 1) == 0 && (v296 - 99) >= 2 && v296 != 102)
                  {
                    v336 = __si_assert_copy_extra_661(-1);
                    v319 = v336;
                    v337 = "";
                    if (v336)
                    {
                      v337 = v336;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11725, "db_corespotlight_store(newIndex->store) || version == 99 || version == 100 || version == 102", v337);
                    goto LABEL_365;
                  }
                }

                else
                {
                  ContentIndexListsApply(*(a1 + 1392), *(a1 + 1384), *(&off_1E8192978 + (v296 - 95)));
                }
              }
            }

            v297 = *(a1 + 2482) == 4;
            if (*(a1 + 2482) == 4 && v354)
            {
              v297 = *(a1 + 2483) == 4;
            }

            if (v30)
            {
              if (v30 == 2)
              {
                v298 = *(a1 + 1392);
                v299 = *(v298 + 8);
                if (v299)
                {
                  v300 = *v298;
                  do
                  {
                    v301 = *v300++;
                    *(v301 + 15201) = 4;
                    --v299;
                  }

                  while (v299);
                }

                v302 = *(a1 + 1384);
                v303 = *(v302 + 8);
                if (v303)
                {
                  v304 = *v302;
                  do
                  {
                    v305 = *v304++;
                    *(v305 + 15201) = 4;
                    --v303;
                  }

                  while (v303);
                }
              }
            }

            else
            {
              v306 = *(a1 + 1392);
              if (v346 != *(v306 + 8))
              {
                v330 = __si_assert_copy_extra_661(-1);
                v319 = v330;
                v331 = "";
                if (v330)
                {
                  v331 = v330;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11744, "scanCount == newIndex->syncSet->indexCount", v331);
                goto LABEL_365;
              }

              v307 = *(a1 + 1384);
              v308 = (a1 + 2488);
              if (*(v307 + 8) != v352)
              {
                v332 = __si_assert_copy_extra_661(-1);
                v325 = v332;
                v333 = "";
                if (v332)
                {
                  v333 = v332;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11745, "liveCount == newIndex->liveSet->indexCount", v333);
LABEL_372:
                free(v325);
                if (__valid_fs(-1))
                {
                  v327 = 2989;
                }

                else
                {
                  v327 = 3072;
                }

                *v327 = -559038737;
                abort();
              }

              if (v346)
              {
                v309 = *v306;
                do
                {
                  v311 = *v308++;
                  v310 = v311;
                  v297 = (v311 == 4) & v297;
                  v312 = *v309++;
                  *(v312 + 15201) = v310;
                  --v268;
                }

                while (v268);
              }

              if (v352)
              {
                v313 = *v307;
                v314 = (v343 + a1 + 2488);
                do
                {
                  v316 = *v314++;
                  v315 = v316;
                  v297 = (v316 == 4) & v297;
                  v317 = *v313++;
                  *(v317 + 15201) = v315;
                  --v294;
                }

                while (v294);
              }
            }

            if (v297 && *(a1 + 2481) != 4)
            {
              *(a1 + 2481) = 4;
              si_write_index_state(a1, 0, 0, v269, v270, v271, v272, v273);
            }

            goto LABEL_41;
          }
        }

        v243 = 0;
        v244 = v343 + a1 + 2488;
        while (1)
        {
          v245 = *(v244 + v243);
          if (!*(v244 + v243))
          {
            v245 = *(a1 + 2481);
          }

          v246 = ContentIndexUpdateState(v226, *(a1 + 32), *(a1 + 1284), v351, v168, v354, 1, v243, v245, &v376);
          if (v246)
          {
            v253 = v246;
            v254 = *__error();
            v255 = _SILogForLogForCategory(11);
            if (!os_log_type_enabled(v255, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_298;
            }

            *__str = 136315906;
            *&__str[4] = "_SIOpenIndexFilesWithState";
            *&__str[12] = 1024;
            *&__str[14] = 11601;
            *&__str[18] = 2048;
            *&__str[20] = a1;
            *&__str[28] = 1024;
            *&__str[30] = v253;
            v256 = "%s:%d: %p ContentIndexUpdateState err:%d";
            goto LABEL_379;
          }

          if (*(v244 + v243) != v376)
          {
            *(v244 + v243) = v376;
            v252 = si_write_index_state(a1, 0, 0, v247, v248, v249, v250, v251);
            if (v252)
            {
              break;
            }
          }

          ++v243;
          v168 = v353;
          if (v352 == v243)
          {
            goto LABEL_299;
          }
        }

        v257 = v252;
        v254 = *__error();
        v255 = _SILogForLogForCategory(11);
        if (!os_log_type_enabled(v255, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_298;
        }

        *__str = 136315906;
        *&__str[4] = "_SIOpenIndexFilesWithState";
        *&__str[12] = 1024;
        *&__str[14] = 11608;
        *&__str[18] = 2048;
        *&__str[20] = a1;
        *&__str[28] = 1024;
        *&__str[30] = v257;
        v256 = "%s:%d: %p si_write_index_state err:%d";
LABEL_379:
        _os_log_error_impl(&dword_1C278D000, v255, OS_LOG_TYPE_ERROR, v256, __str, 0x22u);
LABEL_298:
        *__error() = v254;
        goto LABEL_299;
      }

      __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 11494, "get datastore failed");
LABEL_251:
      v30 = -1;
      goto LABEL_30;
    }

    if (v35)
    {
      v318 = __si_assert_copy_extra_661(-1);
      v319 = v318;
      v320 = "";
      if (v318)
      {
        v320 = v318;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11254, "!fast_flush_failed", v320);
      goto LABEL_365;
    }

    v77 = db2_get_datastore_with_ctx(&v371);
    *(a1 + 1192) = v77;
    if (!v77)
    {
      v89 = 0;
      goto LABEL_172;
    }

    *__str = 0;
    v78 = SICopyProperty(a1, @"kSINextIndexId");
    if (v78)
    {
      v79 = v78;
      v80 = CFGetTypeID(v78);
      if (v80 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v79, kCFNumberSInt32Type, __str);
      }

      CFRelease(v79);
    }

    if (*__str > *(a1 + 1456))
    {
      *(a1 + 1456) = *__str;
    }

    db_datastore_set_bg_assertion_flag(*(a1 + 1192), *(a1 + 6944));
    v87 = v346;
    if (*(a1 + 2482) == 2)
    {
      v88 = db_restore_dirty_chunk_info(*(a1 + 32), &v380, v81, v82, v83, v84, v85, v86);
      if (v88)
      {
        goto LABEL_114;
      }

      db_set_dirty_chunks(*(a1 + 1192), v380, v381, SHIDWORD(v381));
      v380 = 0;
    }

    v90 = x_openat(*(a1 + 32), "repair_dirstore", 0x20000000, v82, v83, v84, v85, v86, v338);
    if (v90 != -1)
    {
      v91 = v90;
      *__str = 0;
      pread(v90, __str, 4uLL, 0);
      close(v91);
      *a9 |= *__str;
    }

    if (!v354)
    {
      goto LABEL_127;
    }

    v92 = *(a1 + 2483);
    if (!*(a1 + 2483))
    {
      v92 = *(a1 + 2481);
    }

    v93 = reverseStoreUpdateState(*(a1 + 32), v92, &v376);
    v89 = v93;
    if (v93 == 2 && v344)
    {
      v99 = *__error();
      v100 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        *__str = 136315394;
        *&__str[4] = "_SIOpenIndexFilesWithState";
        *&__str[12] = 1024;
        *&__str[14] = 11309;
        _os_log_error_impl(&dword_1C278D000, v100, OS_LOG_TYPE_ERROR, "%s:%d: Ignoring missing path store", __str, 0x12u);
      }

      *__error() = v99;
      *(a1 + 6624) = createReverseStore(*(a1 + 32), "", v382);
      goto LABEL_127;
    }

    if (v93)
    {
      goto LABEL_172;
    }

    v129 = v376;
    if (v376 == *(a1 + 2483))
    {
      v339 = v37;
      goto LABEL_196;
    }

    *(a1 + 2483) = v376;
    v88 = si_write_index_state(a1, 0, 0, v94, v95, v96, v97, v98);
    if (v88)
    {
LABEL_114:
      v89 = v88;
LABEL_172:
      v30 = -1;
      goto LABEL_173;
    }

    v339 = v37;
    v129 = *(a1 + 2483);
LABEL_196:
    if (v129 == 2)
    {
      v156 = reverseStoreRestoreDirtyBitmap(*(a1 + 32), &v377);
      if (v156)
      {
        v89 = v156;
        v30 = -1;
        v37 = v339;
        goto LABEL_173;
      }
    }

    v383 = 0;
    v157 = check_crash_state(*(a1 + 32), 0, a5, &v383, 2);
    bzero(__str, 0x400uLL);
    v158 = *__error();
    v159 = _SILogForLogForCategory(0);
    v160 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v159, v160))
    {
      v161 = v383;
      v162 = fcntl(*(a1 + 32), 50, __str);
      if (__str[0])
      {
        v163 = v162 < 0;
      }

      else
      {
        v163 = 1;
      }

      *buf = 134218242;
      if (v163)
      {
        v164 = 0;
      }

      else
      {
        v164 = __str;
      }

      v391 = v161;
      v392 = 2080;
      *&v393 = v164;
      _os_log_impl(&dword_1C278D000, v159, v160, "rs last_crash_delta: %ld for %s", buf, 0x16u);
    }

    *__error() = v158;
    v165 = openReverseStore(*(a1 + 32), v157, 0, 0, *(a1 + 6592), &v377, v382);
    *(a1 + 6624) = v165;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
      v165 = *(a1 + 6624);
    }

    v74 = v352;
    v87 = v346;
    v38 = v23;
    v37 = v339;
    v378 = 0;
    v377 = 0;
    if (!v165)
    {
      *a9 |= 1u;
    }

LABEL_127:
    v101 = v74;
    updateMetaInfoForState((a1 + 1200), v87, v74);
    if (v87)
    {
      v103 = 0;
      while (1)
      {
        v104 = a1 + v103;
        v105 = *(a1 + v103 + 2488);
        if (!*(a1 + v103 + 2488))
        {
          v105 = *(a1 + 2481);
        }

        v106 = ContentIndexUpdateState(v102, *(a1 + 32), *(a1 + 1284), v38, v353, v354, 0, v103, v105, &v376);
        if (v106)
        {
          v89 = v106;
          v130 = *__error();
          v131 = _SILogForLogForCategory(11);
          if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_171;
          }

          *__str = 136315906;
          *&__str[4] = "_SIOpenIndexFilesWithState";
          *&__str[12] = 1024;
          *&__str[14] = 11359;
          *&__str[18] = 2048;
          *&__str[20] = a1;
          *&__str[28] = 1024;
          *&__str[30] = v89;
          v132 = v131;
          v133 = "%s:%d: %p ContentIndexUpdateState err:%d";
          goto LABEL_170;
        }

        if (*(v104 + 2488) != v376)
        {
          *(v104 + 2488) = v376;
          v112 = si_write_index_state(a1, 0, 0, v107, v108, v109, v110, v111);
          if (v112)
          {
            break;
          }
        }

        if (v87 == ++v103)
        {
          goto LABEL_135;
        }
      }

      v89 = v112;
      v130 = *__error();
      v138 = _SILogForLogForCategory(11);
      if (!os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_171;
      }

      *__str = 136315906;
      *&__str[4] = "_SIOpenIndexFilesWithState";
      *&__str[12] = 1024;
      *&__str[14] = 11366;
      *&__str[18] = 2048;
      *&__str[20] = a1;
      *&__str[28] = 1024;
      *&__str[30] = v89;
      v132 = v138;
      v133 = "%s:%d: %p si_write_index_state err:%d";
      goto LABEL_170;
    }

LABEL_135:
    if (v101)
    {
      v113 = 0;
      while (1)
      {
        v114 = *(v37 + v113);
        if (!*(v37 + v113))
        {
          v114 = *(a1 + 2481);
        }

        v115 = ContentIndexUpdateState(v102, *(a1 + 32), *(a1 + 1284), v38, v353, v354, 1, v113, v114, &v376);
        if (v115)
        {
          v89 = v115;
          v130 = *__error();
          v134 = _SILogForLogForCategory(11);
          if (!os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_171;
          }

          *__str = 136315906;
          *&__str[4] = "_SIOpenIndexFilesWithState";
          *&__str[12] = 1024;
          *&__str[14] = 11376;
          *&__str[18] = 2048;
          *&__str[20] = a1;
          *&__str[28] = 1024;
          *&__str[30] = v89;
          v132 = v134;
          v133 = "%s:%d: %p ContentIndexUpdateState err:%d";
          goto LABEL_170;
        }

        if (*(v37 + v113) != v376)
        {
          *(v37 + v113) = v376;
          v121 = si_write_index_state(a1, 0, 0, v116, v117, v118, v119, v120);
          if (v121)
          {
            break;
          }
        }

        if (v101 == ++v113)
        {
          goto LABEL_143;
        }
      }

      v89 = v121;
      v130 = *__error();
      v140 = _SILogForLogForCategory(11);
      if (!os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_171;
      }

      *__str = 136315906;
      *&__str[4] = "_SIOpenIndexFilesWithState";
      *&__str[12] = 1024;
      *&__str[14] = 11383;
      *&__str[18] = 2048;
      *&__str[20] = a1;
      *&__str[28] = 1024;
      *&__str[30] = v89;
      v132 = v140;
      v133 = "%s:%d: %p si_write_index_state err:%d";
LABEL_170:
      _os_log_error_impl(&dword_1C278D000, v132, OS_LOG_TYPE_ERROR, v133, __str, 0x22u);
LABEL_171:
      *__error() = v130;
      goto LABEL_172;
    }

LABEL_143:
    if (!*(a1 + 1232))
    {
      *(a1 + 1232) = 1;
    }

    v370 = 0;
    v363 = 0u;
    v364 = 0u;
    v365 = 0u;
    v366 = 0u;
    v367 = 0u;
    v368 = 0u;
    v369 = 0;
    v362 = 0;
    v122 = *(a1 + 1456);
    v361[0] = MEMORY[0x1E69E9820];
    v361[1] = 0x40000000;
    v361[2] = ___SIOpenIndexFilesWithState_block_invoke_958;
    v361[3] = &__block_descriptor_tmp_959;
    v361[4] = a1;
    _si_next_index_id(a1, (*(*(a1 + 1384) + 8) + *(*(a1 + 1392) + 8)), 0, 1);
    v360[0] = MEMORY[0x1E69E9820];
    v360[1] = 0x40000000;
    v360[2] = ___SIOpenIndexFilesWithState_block_invoke_2;
    v360[3] = &__block_descriptor_tmp_960;
    v360[4] = a1;
    v124 = *(a1 + 1392);
    v125 = *(a1 + 1384);
    v126 = *(a1 + 6592);
    v127 = *(a1 + 1192);
    if (v127)
    {
      v128 = db_get_vector_store(v127);
    }

    else
    {
      v128 = 0;
    }

    v30 = ContentIndexOpenBulk(v123, a1 + 1200, &v363, v124, v125, v342 | 2, v126, &v362, &v370, v128, v361, v360);
    if ((v30 & 0x80000000) == 0)
    {
      v196 = v368;
      *(a8 + 64) = v367;
      *(a8 + 80) = v196;
      *(a8 + 96) = v369;
      v197 = v364;
      *a8 = v363;
      *(a8 + 16) = v197;
      v198 = v366;
      *(a8 + 32) = v365;
      *(a8 + 48) = v198;
      *v341 = v370;
      *v340 = v362;
      v199 = *__error();
      v200 = _SILogForLogForCategory(11);
      v201 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v200, v201))
      {
        v202 = *(a1 + 2408);
        *__str = 134218240;
        *&__str[4] = a1;
        *&__str[12] = 2048;
        *&__str[14] = v202;
        _os_log_impl(&dword_1C278D000, v200, v201, "opened SIRef:%p from fast flush with recovery time %llu", __str, 0x16u);
      }

      v35 = 0;
      goto LABEL_305;
    }

    *(a1 + 1456) = v122;
    v135 = *__error();
    if (v135)
    {
      v89 = v135;
    }

    else
    {
      v89 = -1;
    }

    v136 = *__error();
    v137 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315906;
      *&__str[4] = "_SIOpenIndexFilesWithState";
      *&__str[12] = 1024;
      *&__str[14] = 11419;
      *&__str[18] = 2048;
      *&__str[20] = a1;
      *&__str[28] = 1024;
      *&__str[30] = v30;
      _os_log_error_impl(&dword_1C278D000, v137, OS_LOG_TYPE_ERROR, "%s:%d: %p ContentIndexOpenBulk err:%d", __str, 0x22u);
    }

    *__error() = v136;
    if (v30 == -2)
    {
      bzero(__str, 0x400uLL);
      v30 = -2;
      snprintf(__str, 0x400uLL, "ContentIndexOpenBulk failed %d, %d", -2, v89);
      __si_set_error_str(0, "%s:%u: %s");
      goto LABEL_30;
    }

LABEL_173:
    v141 = **(a1 + 6592);
    v142 = *__error();
    v143 = _SILogForLogForCategory(11);
    v144 = v143;
    if (v141)
    {
      v182 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v143, v182))
      {
        *__str = 134218240;
        *&__str[4] = a1;
        *&__str[12] = 1024;
        *&__str[14] = v89;
        _os_log_impl(&dword_1C278D000, v144, v182, "%p open from fast flush canceled:%d", __str, 0x12u);
      }

      *__error() = v142;
      bzero(__str, 0x400uLL);
      snprintf(__str, 0x400uLL, "open from fast flush canceled %d", v89);
      __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 11443, __str);
      if (v89)
      {
        goto LABEL_30;
      }

      goto LABEL_41;
    }

    v145 = dword_1EBF46AF8 < 3;
    if (os_log_type_enabled(v143, (dword_1EBF46AF8 < 3)))
    {
      *__str = 134218240;
      *&__str[4] = a1;
      *&__str[12] = 1024;
      *&__str[14] = v89;
      _os_log_impl(&dword_1C278D000, v144, v145, "*warn* %p open from fast flush failed:%d", __str, 0x12u);
    }

    *__error() = v142;
    v151 = *(a1 + 1192);
    if (v151)
    {
      db_release_datastore_no_sync(v151);
      *(a1 + 1192) = 0;
    }

    v152 = *(a1 + 6624);
    v38 = v23;
    if (v152)
    {
      freeReverseDirStore(v152);
      *(a1 + 6624) = 0;
    }

    if (*(*(a1 + 1392) + 8))
    {
      v321 = __si_assert_copy_extra_661(-1);
      v319 = v321;
      v322 = "";
      if (v321)
      {
        v322 = v321;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11460, "newIndex->syncSet->indexCount==0", v322);
      goto LABEL_365;
    }

    if (*(*(a1 + 1384) + 8))
    {
      v324 = __si_assert_copy_extra_661(-1);
      v325 = v324;
      v326 = "";
      if (v324)
      {
        v326 = v324;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11461, "newIndex->liveSet->indexCount==0", v326);
      goto LABEL_372;
    }

    *(a1 + 2481) = 1;
    if (*(a1 + 2482) != 4)
    {
      *(a1 + 2482) = 1;
    }

    if (v354 && *(a1 + 2483) != 4)
    {
      *(a1 + 2483) = 1;
    }

    v153 = *(a1 + 2484) + *(a1 + 2486);
    if (v153)
    {
      v154 = (a1 + 2488);
      do
      {
        if (*v154 != 4)
        {
          *v154 = 1;
        }

        ++v154;
        --v153;
      }

      while (v153);
    }

    v155 = si_write_index_state(a1, 0, 0, v146, v147, v148, v149, v150);
    v35 = 1;
    if (v155)
    {
      v183 = v155;
      v184 = *__error();
      v185 = _SILogForLogForCategory(11);
      if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
      {
        *__str = 136315906;
        *&__str[4] = "_SIOpenIndexFilesWithState";
        *&__str[12] = 1024;
        *&__str[14] = 11481;
        *&__str[18] = 2048;
        *&__str[20] = a1;
        *&__str[28] = 1024;
        *&__str[30] = v183;
        _os_log_error_impl(&dword_1C278D000, v185, OS_LOG_TYPE_ERROR, "%s:%d: %p si_write_index_state err:%d", __str, 0x22u);
      }

      *__error() = v184;
      bzero(__str, 0x400uLL);
      snprintf(__str, 0x400uLL, "si_write_index_state err %d", v183);
      __si_set_error_str(1, "%s:%u: %s");
      goto LABEL_30;
    }
  }

  if (v39 != 3)
  {
    if (v39 == 4)
    {
      goto LABEL_59;
    }

    goto LABEL_97;
  }

  v48 = update_db_header(v46);
  if (v48)
  {
LABEL_68:
    v53 = v48;
    goto LABEL_93;
  }

  if (copyFileFallback(v40, __str, v40, "store.db", &v389, 1, 1))
  {
LABEL_59:
    v48 = update_db_header(v46);
    if (v48)
    {
      goto LABEL_68;
    }

    v47 = 4;
    goto LABEL_61;
  }

  v139 = *__error();
  if (v139)
  {
    v53 = v139;
  }

  else
  {
    v53 = -1;
  }

LABEL_93:
  v72 = *__error();
  v73 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v391 = "db2_update_datastore_state";
    v392 = 1024;
    LODWORD(v393) = 6913;
    WORD2(v393) = 1024;
    *(&v393 + 6) = v39;
    WORD5(v393) = 1024;
    HIDWORD(v393) = v53;
    _os_log_error_impl(&dword_1C278D000, v73, OS_LOG_TYPE_ERROR, "%s:%d: update state (%d) failed err:%d", buf, 0x1Eu);
  }

  *__error() = v72;
  if (!v53)
  {
    v47 = 0;
    goto LABEL_97;
  }

  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "db_update_datastore_state failed %d, %d", v53, v39);
  __si_set_error_str(1, "%s:%u: %s", "SpotlightIndex.c", 11224, __str);
  v189 = *__error();
  v190 = _SILogForLogForCategory(11);
  if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v391 = "_SIOpenIndexFilesWithState";
    v392 = 1024;
    LODWORD(v393) = 11225;
    WORD2(v393) = 2048;
    *(&v393 + 6) = a1;
    HIWORD(v393) = 1024;
    LODWORD(v394) = v53;
    _os_log_error_impl(&dword_1C278D000, v190, OS_LOG_TYPE_ERROR, "%s:%d: %p db_update_datastore_state err:%d", buf, 0x22u);
  }

  *__error() = v189;
LABEL_29:
  v30 = -1;
LABEL_30:
  v31 = *(a1 + 1192);
  if (v31)
  {
    if (v30 != -2 && !**(a1 + 6592) && (*(a1 + 6944) & 1) == 0)
    {
      *a6 = 1;
    }

    db_release_datastore_no_sync(v31);
    *(a1 + 1192) = 0;
  }

LABEL_41:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v378 = 0;
  v377 = 0;
  free(v380);
  if (v30 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v30;
  }
}