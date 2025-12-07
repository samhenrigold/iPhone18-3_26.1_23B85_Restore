uint64_t index_verify(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v82 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
  v72 = HIDWORD(v8);
  v73 = v8;
  v71 = __PAIR64__(v9, v10);
  v11 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  v70 = v73;
  v69 = v72;
  v68 = v71;
  v14 = 0x1EBF46000uLL;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v11 + 312) = v12;
    if (__THREAD_SLOT_KEY[0])
    {
      v15 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v15)
      {
        goto LABEL_67;
      }
    }

    else
    {
      makeThreadId();
      v15 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v15)
      {
        goto LABEL_67;
      }
    }

    v16 = v15;
    if (v15 < 0x801)
    {
LABEL_9:
      v17 = &threadData[9 * v16];
      v19 = *(v17 - 4);
      v18 = v17 - 2;
      if (v19 > v68)
      {
        v20 = v16 - 1;
        do
        {
          CIOnThreadCleanUpPop(v20);
        }

        while (*v18 > v68);
      }

      dropThreadId(v70, 1, add_explicit + 1);
      CICleanUpReset(v70, HIDWORD(v68));
      v21 = 0xFFFFFFFFLL;
      goto LABEL_60;
    }

LABEL_67:
    makeThreadId();
    v16 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    goto LABEL_9;
  }

  v59 = v2;
  v60 = v12;
  v22 = *__error();
  v23 = _SILogForLogForCategory(10);
  v24 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v23, v24))
  {
    *buf = 136315138;
    v75 = (v6 + 15208);
    _os_log_impl(&dword_1C278D000, v23, v24, "Validating %s", buf, 0xCu);
  }

  *__error() = v22;
  v25.n128_u64[1] = 0;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v67[0] = 0;
  v67[1] = v59;
  DWORD2(v64) = *(v6 + 9400);
  *&v66 = v6 + 4984;
  *(&v66 + 1) = v6 + 9704;
  v26 = *(v6 + 9688);
  *&v65 = *(v6 + 4968);
  *(&v65 + 1) = v26;
  LODWORD(v67[0]) = *(v6 + 4680);
  v27 = atomic_load((v6 + 36));
  v28 = v12;
  if ((v4 & 0x8000) == 0 && (v27 & 2) != 0)
  {
    goto LABEL_17;
  }

  v29 = *(v6 + 4680);
  if (v29 == 1)
  {
    v61 = add_explicit;
    if ((v4 & 2) != 0)
    {
      v62 = 0;
      v36 = strtod((v6 + 15463), &v62);
      v37 = v62 != (v6 + 15463);
      v38 = v36 > 425.0;
      bzero(buf, 0x5160uLL);
      _bt_dumpTrie(v6 + 96, v37 && v38, v67 + 1, buf, verifyTermsCallback, &v63);
    }
  }

  else
  {
    if (v29)
    {
      v39 = *__error();
      v40 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = *(v6 + 4680);
        *buf = 136315906;
        v75 = "index_verify";
        v76 = 1024;
        v77 = 2602;
        v78 = 2080;
        v79 = v6 + 15208;
        v80 = 1024;
        v81 = v41;
        v42 = "%s:%d: %s invalid type %d";
        v43 = v40;
        v44 = 34;
LABEL_65:
        _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, v42, buf, v44);
        goto LABEL_56;
      }

      goto LABEL_56;
    }

    v61 = add_explicit;
    if (v4)
    {
      bzero(buf, 0x5160uLL);
      _bt_dumpTrie(v6 + 96, 1, v67 + 1, buf, verifyTermsCallback, &v63);
      if (*(v6 + 5232) >= 1)
      {
        v30 = 0;
        v31 = *(v6 + 5232);
        do
        {
          v32 = *(v6 + 5256 + 8 * v30);
          if (v32)
          {
            v33 = *(v32 + 8);
            if (v33)
            {
              v35 = *(v32 + 16);
              v34 = *(v32 + 24);
              if (_gSystemStatusBool == 1)
              {
                pthread_mutex_lock(&_gSystemStatusLock);
                if (_gSystemStatusBool == 1)
                {
                  do
                  {
                    pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
                  }

                  while ((_gSystemStatusBool & 1) != 0);
                }

                pthread_mutex_unlock(&_gSystemStatusLock);
              }

              msync(v33, v34 - v35, 16);
              madvise(*(v32 + 8), *(v32 + 24) - *(v32 + 16), 4);
              v31 = *(v6 + 5232);
            }
          }

          ++v30;
        }

        while (v30 < v31);
      }

      if (*(v6 + 9952) >= 1)
      {
        v45 = 0;
        v46 = *(v6 + 9952);
        do
        {
          v47 = *(v6 + 9976 + 8 * v45);
          if (v47)
          {
            v48 = *(v47 + 8);
            if (v48)
            {
              v50 = *(v47 + 16);
              v49 = *(v47 + 24);
              if (_gSystemStatusBool == 1)
              {
                pthread_mutex_lock(&_gSystemStatusLock);
                if (_gSystemStatusBool == 1)
                {
                  do
                  {
                    pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
                  }

                  while ((_gSystemStatusBool & 1) != 0);
                }

                pthread_mutex_unlock(&_gSystemStatusLock);
              }

              msync(v48, v49 - v50, 16);
              madvise(*(v47 + 8), *(v47 + 24) - *(v47 + 16), 4);
              v46 = *(v6 + 9952);
            }
          }

          ++v45;
        }

        while (v45 < v46);
      }
    }
  }

  v51 = HIDWORD(v67[0]);
  if (HIDWORD(v67[0]) && !*v59)
  {
    v39 = *__error();
    v52 = _SILogForLogForCategory(0);
    v28 = v60;
    add_explicit = v61;
    v14 = 0x1EBF46000uLL;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v75 = "index_verify";
      v76 = 1024;
      v77 = 2606;
      v78 = 2080;
      v79 = v6 + 15208;
      v42 = "%s:%d: %s error walking terms";
      goto LABEL_64;
    }

LABEL_56:
    *__error() = v39;
    v21 = 0xFFFFFFFFLL;
    goto LABEL_57;
  }

  v28 = v60;
  add_explicit = v61;
  v14 = 0x1EBF46000;
  if (*(v6 + 4928))
  {
    v25.n128_u64[0] = 0x40000000;
    dumpDirectoryStore(v25);
    v51 = HIDWORD(v67[0]);
  }

  if (v51 && !*v59)
  {
    v39 = *__error();
    v52 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v75 = "index_verify";
      v76 = 1024;
      v77 = 2622;
      v78 = 2080;
      v79 = v6 + 15208;
      v42 = "%s:%d: %s error walking directoyr store";
LABEL_64:
      v43 = v52;
      v44 = 28;
      goto LABEL_65;
    }

    goto LABEL_56;
  }

LABEL_17:
  v21 = 0;
LABEL_57:
  v53 = threadData[9 * v70 + 1] + 320 * v69;
  *(v53 + 312) = v28;
  v54 = *(v53 + 232);
  if (v54)
  {
    v54(*(v53 + 288));
  }

  dropThreadId(v70, 0, add_explicit + 1);
LABEL_60:
  v55 = *__error();
  v56 = _SILogForLogForCategory(10);
  v57 = 2 * (*(v14 + 2804) < 4);
  if (os_log_type_enabled(v56, v57))
  {
    *buf = 136315394;
    v75 = (v6 + 15208);
    v76 = 1024;
    v77 = v21;
    _os_log_impl(&dword_1C278D000, v56, v57, "Validate %s complete %d", buf, 0x12u);
  }

  *__error() = v55;
  return v21;
}

BOOL __index_verify_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 >= 1 && gSILogLevels[0] >= 5)
  {
    v8 = a1;
    v9 = *__error();
    v10 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a3 + 8 * a2 - 8);
      v12 = 134218496;
      v13 = v11;
      v14 = 1024;
      v15 = a2;
      v16 = 2048;
      v17 = a4;
      _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "oid: %lld depth: %d offset: %llu ", &v12, 0x1Cu);
    }

    *__error() = v9;
    a1 = v8;
  }

  return **(a1 + 32) != 0;
}

int *verifyTermsCallback(int *result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  if (**(a5 + 72))
  {
    goto LABEL_22;
  }

  if ((result - 1044) <= 0xFFFFFBEC)
  {
    v6 = result;
    v7 = *__error();
    v8 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      result = __error();
      *result = v7;
LABEL_22:
      *(a5 + 68) = 1;
      return result;
    }

    v22 = 136315650;
    v23 = "verifyTermsCallback";
    v24 = 1024;
    v25 = 2500;
    v26 = 1024;
    *v27 = v6;
    v16 = "%s:%d: invalid term length: %d";
    v17 = v8;
    v18 = 24;
LABEL_27:
    _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, v16, &v22, v18);
    goto LABEL_4;
  }

  if (*(a5 + 64))
  {
    v9 = a3;
    v10 = *a5 + 1;
    if (*a5 == -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3;
    v11 = 8 * a3;
    v9 = *storageResolvePtr(*(a5 + 48), v11, 8, 1);
    result = storageResolvePtr(*(a5 + 56), v11, 8, 1);
    a4 = *result;
    if (!v10)
    {
LABEL_19:
      v12 = *__error();
      v13 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a5 + 24);
        v22 = 136315906;
        v23 = "verifyTermsCallback";
        v24 = 1024;
        v25 = 2529;
        v26 = 1024;
        *v27 = v10;
        *&v27[4] = 1024;
        *&v27[6] = v19;
        _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: invalid termID: %d, max: %d", &v22, 0x1Eu);
      }

      result = __error();
      *result = v12;
      goto LABEL_22;
    }
  }

  if (v10 >= *(a5 + 24))
  {
    goto LABEL_19;
  }

  if (!v9 || v9 >= *(a5 + 32))
  {
    v7 = *__error();
    v14 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v15 = *(a5 + 32);
    v22 = 136315906;
    v23 = "verifyTermsCallback";
    v24 = 1024;
    v25 = 2534;
    v26 = 2048;
    *v27 = v9;
    *&v27[8] = 2048;
    v28 = v15;
    v16 = "%s:%d: invalid posting offset: %lld, max: %lld";
    goto LABEL_25;
  }

  if (v9 > *(a5 + 8))
  {
    *(a5 + 8) = v9;
  }

  if (a4 && a4 >= *(a5 + 40))
  {
    v20 = a4;
    v7 = *__error();
    v14 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v21 = *(a5 + 40);
    v22 = 136315906;
    v23 = "verifyTermsCallback";
    v24 = 1024;
    v25 = 2544;
    v26 = 2048;
    *v27 = v20;
    *&v27[8] = 2048;
    v28 = v21;
    v16 = "%s:%d: invalid position offset: %lld, max: %lld";
LABEL_25:
    v17 = v14;
    v18 = 38;
    goto LABEL_27;
  }

  if (a4 > *(a5 + 16))
  {
    *(a5 + 16) = a4;
  }

  ++*a5;
  return result;
}

uint64_t indexPerformSync(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v28[512] = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 4928);
  if (v5)
  {
    flushForwardStore(v5, *(v4 + 15576));
  }

  v6 = *(v4 + 4912);
  if (v6)
  {
    IVFVectorIndex_s::flush((v6 + 8), *(v4 + 15576));
  }

  if (*(v4 + 15203))
  {
    return 0;
  }

  v7 = *(v4 + 14432);
  v8 = *(v4 + 68);
  if (*(v4 + 45))
  {
    v9 = v8;
  }

  else
  {
    v9 = (4 * v8 + 4) / 5;
  }

  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  msync(v7, v9, 16);
  v10 = *(v4 + 14472);
  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  v28[0] = 0;
  v11 = _fd_acquire_fd(v10, v28);
  if (v11 != -1)
  {
    v12 = v11;
    prot_fsync(v11, 0);
    _fd_release_fd(v10, v12, 0, v28[0]);
  }

  v13 = atomic_load((v4 + 36));
  if ((v13 & 2) != 0)
  {
    return 0;
  }

  result = syncPayload(v4 + 4944);
  if (!result)
  {
    result = syncPayload(v4 + 9664);
    if (!result)
    {
      result = bt_syncTrie(v4 + 96);
      if (!result)
      {
        v15 = *(v4 + 14408);
        v16 = 8 * *(v4 + 68);
        fd_system_status_stall_if_busy();
        v17 = msync(v15, v16, 16);
        v18 = *(v4 + 14416);
        v19 = 4 * *(v4 + 68);
        fd_system_status_stall_if_busy();
        v20 = msync(v18, v19, 16);
        if (v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = v17;
        }

        v22 = *(v4 + 14424);
        if (v22)
        {
          v23 = 8 * *(v4 + 68);
          fd_system_status_stall_if_busy();
          v24 = msync(v22, v23, 16);
          if (v24)
          {
            v21 = v24;
          }
        }

        if (*(v4 + 15205) == 1)
        {
          if (fd_sync(*(v4 + 14456), 0))
          {
            v21 = *__error();
          }

          v25 = *(v4 + 14464);
          if (v25 && fd_sync(v25, 0))
          {
            v21 = *__error();
          }

          if (fd_sync(*(v4 + 14448), 0))
          {
            v21 = *__error();
          }

          *(v4 + 15205) = 0;
        }

        if (v2)
        {
          v26 = *(v4 + 68);
          if (v26)
          {
            *(v4 + 4960) = *(v4 + 4952);
            *(v4 + 9680) = *(v4 + 9672);
            *(v4 + 60) = v26 - 1;
          }
        }

        bzero(v28, 0x1000uLL);
        v27 = v28;
        indexStoreToBuffer(v4, &v27);
        LODWORD(result) = index_header_write(*(v4 + 14480), v28);
        if (result)
        {
          return result;
        }

        else
        {
          return v21;
        }
      }
    }
  }

  return result;
}

uint64_t index_header_write(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = fd_pwrite(result, a2, 0x1000uLL, 0);
  if (v3 != 4096)
  {
    if (v3 == -1)
    {
      return *__error();
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*(v2 + 56))
  {
    if (_gSystemStatusBool)
    {
      pthread_mutex_lock(&_gSystemStatusLock);
      if (_gSystemStatusBool == 1)
      {
        do
        {
          pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
        }

        while ((_gSystemStatusBool & 1) != 0);
      }

      goto LABEL_14;
    }
  }

  else if (_gSystemStatusBool)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

LABEL_14:
    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  v6 = 0;
  v4 = _fd_acquire_fd(v2, &v6);
  if (v4 != -1)
  {
    v5 = v4;
    prot_fsync(v4, 0);
    _fd_release_fd(v2, v5, 0, v6);
  }

  return 0;
}

uint64_t recoverIndex(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v90 = *MEMORY[0x1E69E9840];
  bzero(v89, 0x400uLL);
  bzero(v88, 0x400uLL);
  memset(&v66, 0, sizeof(v66));
  v15 = *__error();
  v16 = _SILogForLogForCategory(0);
  v17 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v16, v17))
  {
    *buf = 136315138;
    v81 = v12;
    _os_log_impl(&dword_1C278D000, v16, v17, "recoverIndex: %s", buf, 0xCu);
  }

  *__error() = v15;
  bzero(v87, 0x1000uLL);
  v65 = v87;
  snprintf(v89, 0x400uLL, "%s%s", v12, "indexPostings");
  if (stat(v89, &v66))
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v81 = "recoverIndex";
      v82 = 1024;
      v83 = 3587;
      v84 = 2080;
      v85 = v12;
      v20 = "%s:%d: Unrecoverable error: Missing postings file (%s)";
LABEL_33:
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x1Cu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  snprintf(v89, 0x400uLL, "%s%s", v12, "indexPositions");
  if (stat(v89, &v66))
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v81 = "recoverIndex";
      v82 = 1024;
      v83 = 3594;
      v84 = 2080;
      v85 = v12;
      v20 = "%s:%d: Unrecoverable error: Missing positions file (%s)";
      goto LABEL_33;
    }

LABEL_8:
    v21 = 0;
LABEL_9:
    v22 = __error();
    v23 = 0;
LABEL_10:
    *v22 = v18;
    goto LABEL_11;
  }

  snprintf(v88, 0x400uLL, "%s%s", v12, "shadowIndexHead");
  v29 = fd_create_protected(v14, v88, 536870914, 3u);
  if (!v29)
  {
    v18 = *__error();
    v34 = _SILogForLogForCategory(0);
    v35 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v34, (gSILogLevels[0] < 3)))
    {
      v36 = *__error();
      *buf = 136315394;
      v81 = v12;
      v82 = 1024;
      v83 = v36;
      _os_log_impl(&dword_1C278D000, v34, v35, "*warn* Unrecoverable error: Missing shadow head file (%s) %d", buf, 0x12u);
    }

    goto LABEL_8;
  }

  v21 = v29;
  v30 = fd_pread(v29, v87, 0x1000uLL, 0);
  if (v30 != 4096)
  {
    v37 = v30;
    v18 = *__error();
    v38 = _SILogForLogForCategory(0);
    v39 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v38, (gSILogLevels[0] < 3)))
    {
      v40 = *__error();
      *buf = 136315650;
      v81 = v12;
      v82 = 1024;
      v83 = v37;
      v84 = 1024;
      LODWORD(v85) = v40;
      _os_log_impl(&dword_1C278D000, v38, v39, "*warn* Unrecoverable error: Missing data in index head file (%s) %d %d", buf, 0x18u);
    }

    goto LABEL_9;
  }

  fd_release(v21);
  bzero(buf, 0x3D68uLL);
  if ((indexRestoreHeaderFromBuffer(buf, &v65, v6, v4, v2, 0) & 1) == 0)
  {
    v41 = *__error();
    v42 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *__str = 136315650;
    v71 = "recoverIndex";
    v72 = 1024;
    v73 = 3617;
    v74 = 2080;
    v75 = v12;
    v48 = "%s:%d: Unrecoverable error: Malformed index head file (%s)";
LABEL_73:
    v59 = v42;
    v60 = 28;
LABEL_74:
    _os_log_error_impl(&dword_1C278D000, v59, OS_LOG_TYPE_ERROR, v48, __str, v60);
    goto LABEL_31;
  }

  v31 = atomic_load(v86);
  if ((v31 & 2) != 0)
  {
    v65 = v87;
    goto LABEL_35;
  }

  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", v12, "indexDirectory");
  if (fstatat(v14, __str, &v66, 0) || v66.st_mode != 256)
  {
    v65 = v87;
    snprintf(v89, 0x400uLL, "%s%s", v12, "indexUpdates");
    unlinkat(v14, v89, 0);
    v49 = fd_create_protected(v14, v89, 536872450, 3u);
    *v67 = 0;
    v50 = _fd_acquire_fd(v49, v67);
    _fd_release_fd(v49, v50, 0, *v67);
    fd_release(v49);
    if (v50 == -1)
    {
      v51 = *__error();
      v52 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *__str = 136315650;
        v71 = "recoverIndex";
        v72 = 1024;
        v73 = 3649;
        v74 = 2080;
        v75 = v12;
        v53 = "%s:%d: Unrecoverable error: could not open update file (%s)";
        goto LABEL_78;
      }
    }

    else
    {
      snprintf(v89, 0x400uLL, "%s%s", v12, "indexTermIds");
      snprintf(v88, 0x400uLL, "%s%s", v12, "shadowIndexTermIds");
      if (copyFileFallback(v14, v88, v14, v89, v10, 1, 1))
      {
        snprintf(v89, 0x400uLL, "%s%s", v12, "indexPositionTable");
        snprintf(v88, 0x400uLL, "%s%s", v12, "shadowIndexPositionTable");
        if (copyFileFallback(v14, v88, v14, v89, v10, 1, 1))
        {
          if (bt_recoverTrie(v14, v12, v10))
          {
            goto LABEL_35;
          }

          if (*v10)
          {
            goto LABEL_80;
          }

          v51 = *__error();
          v52 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *__str = 136315650;
            v71 = "recoverIndex";
            v72 = 1024;
            v73 = 3670;
            v74 = 2080;
            v75 = v12;
            v53 = "%s:%d: Unrecoverable error: could not recover term index (%s)";
LABEL_78:
            _os_log_error_impl(&dword_1C278D000, v52, OS_LOG_TYPE_ERROR, v53, __str, 0x1Cu);
          }
        }

        else
        {
          if (*v10)
          {
            goto LABEL_80;
          }

          v51 = *__error();
          v52 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *__str = 136315650;
            v71 = "recoverIndex";
            v72 = 1024;
            v73 = 3664;
            v74 = 2080;
            v75 = v12;
            v53 = "%s:%d: Unrecoverable error: could not recover term id file (positions) (%s)";
            goto LABEL_78;
          }
        }
      }

      else
      {
        if (*v10)
        {
          goto LABEL_80;
        }

        v51 = *__error();
        v52 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *__str = 136315650;
          v71 = "recoverIndex";
          v72 = 1024;
          v73 = 3656;
          v74 = 2080;
          v75 = v12;
          v53 = "%s:%d: Unrecoverable error: could not recover term id file (%s)";
          goto LABEL_78;
        }
      }
    }

    *__error() = v51;
    goto LABEL_80;
  }

  atomic_fetch_or(v86, 2u);
  v32 = *__error();
  v33 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *v67 = 136315394;
    *&v67[4] = v12;
    v68 = 1024;
    v69 = v86[5];
    _os_log_impl(&dword_1C278D000, v33, OS_LOG_TYPE_DEFAULT, "mark index %s (%u) read-only during recover", v67, 0x12u);
  }

  *__error() = v32;
  v65 = v87;
LABEL_35:
  if (v8 && (recoverForwardStore(v14, v12, v10) & 1) == 0)
  {
    if (!*v10)
    {
      v41 = *__error();
      v42 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *__str = 136315650;
      v71 = "recoverIndex";
      v72 = 1024;
      v73 = 3677;
      v74 = 2080;
      v75 = v12;
      v48 = "%s:%d: Unrecoverable error: could not recover path index (%s)";
      goto LABEL_73;
    }
  }

  else
  {
    if (_os_feature_enabled_impl() && (recoverVectorIndex(v14, v12, v10) & 1) == 0 && !*v10)
    {
      v43 = *__error();
      v44 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *__str = 136315650;
        v71 = "recoverIndex";
        v72 = 1024;
        v73 = 3685;
        v74 = 2080;
        v75 = v12;
        _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, "%s:%d: error: could not recover vector index (%s)", __str, 0x1Cu);
      }

      *__error() = v43;
    }

    snprintf(v89, 0x400uLL, "%s%s", v12, "indexGroups");
    snprintf(v88, 0x400uLL, "%s%s", v12, "shadowIndexGroups");
    if (copyFileFallback(v14, v88, v14, v89, v10, 1, 1))
    {
      snprintf(v89, 0x400uLL, "%s%s", v12, "indexHead");
      snprintf(v88, 0x400uLL, "%s%s", v12, "shadowIndexHead");
      v45 = fd_create_protected(v14, v88, 536870914, 0);
      if (v45)
      {
        v21 = v45;
        v46 = fd_pread(v45, v87, 0x1000uLL, 0);
        if (v46 != 4096)
        {
          v56 = v46;
          v57 = *__error();
          v58 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v63 = *__error();
            *__str = 136316162;
            v71 = "recoverIndex";
            v72 = 1024;
            v73 = 3710;
            v74 = 2080;
            v75 = v12;
            v76 = 1024;
            v77 = v56;
            v78 = 1024;
            v79 = v63;
            _os_log_error_impl(&dword_1C278D000, v58, OS_LOG_TYPE_ERROR, "%s:%d: Unrecoverable error: could not read shadow head file (%s) %d, %d", __str, 0x28u);
          }

          v23 = 0;
          *__error() = v57;
          goto LABEL_11;
        }

        fd_release(v21);
        v87[0] = v6;
        v87[1] = 1;
        v47 = fd_create_protected(v14, v89, 536872450, 0);
        if (v47)
        {
          v23 = v47;
          if (fd_pwrite(v47, v87, 0x1000uLL, 0) != -1)
          {
            v27 = 1;
            fd_sync(v23, 1);
            v21 = 0;
            goto LABEL_16;
          }

          v18 = *__error();
          v62 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v64 = *__error();
            *__str = 136315906;
            v71 = "recoverIndex";
            v72 = 1024;
            v73 = 3725;
            v74 = 2080;
            v75 = v12;
            v76 = 1024;
            v77 = v64;
            _os_log_error_impl(&dword_1C278D000, v62, OS_LOG_TYPE_ERROR, "%s:%d: Unrecoverable error: could not write index head file (%s) %d", __str, 0x22u);
          }

          v22 = __error();
          v21 = 0;
          goto LABEL_10;
        }

        v41 = *__error();
        v54 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        v61 = *__error();
        *__str = 136315906;
        v71 = "recoverIndex";
        v72 = 1024;
        v73 = 3721;
        v74 = 2080;
        v75 = v12;
        v76 = 1024;
        v77 = v61;
        v48 = "%s:%d: Unrecoverable error: could not open index head file (%s) %d";
        goto LABEL_83;
      }

      v41 = *__error();
      v54 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = *__error();
        *__str = 136315906;
        v71 = "recoverIndex";
        v72 = 1024;
        v73 = 3704;
        v74 = 2080;
        v75 = v12;
        v76 = 1024;
        v77 = v55;
        v48 = "%s:%d: Unrecoverable error: could not open shadow head file (%s) %d";
LABEL_83:
        v59 = v54;
        v60 = 34;
        goto LABEL_74;
      }

LABEL_31:
      v23 = 0;
      v21 = 0;
      *__error() = v41;
      goto LABEL_11;
    }

    if (!*v10)
    {
      v41 = *__error();
      v42 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *__str = 136315650;
      v71 = "recoverIndex";
      v72 = 1024;
      v73 = 3694;
      v74 = 2080;
      v75 = v12;
      v48 = "%s:%d: Unrecoverable error: could not recover groups file (%s)";
      goto LABEL_73;
    }
  }

LABEL_80:
  v23 = 0;
  v21 = 0;
LABEL_11:
  if (*v10)
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(0);
    v26 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v25, (gSILogLevels[0] < 3)))
    {
      *buf = 136315138;
      v81 = v12;
      _os_log_impl(&dword_1C278D000, v25, v26, "*warn* recover canceled (%s)", buf, 0xCu);
    }

    v27 = 0;
    *__error() = v24;
  }

  else
  {
    v27 = 0;
  }

LABEL_16:
  fd_release(v21);
  fd_release(v23);
  return v27;
}

BOOL indexClosing(uint64_t a1)
{
  v1 = atomic_fetch_or((a1 + 15192), 1u);
  if (!v1)
  {
    *(a1 + 15048) = CFAbsoluteTimeGetCurrent();
    if (gSILogLevels[0] >= 5)
    {
      v3 = *__error();
      v4 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "close requested\n", v5, 2u);
      }

      *__error() = v3;
    }
  }

  return v1 != 0;
}

uint64_t indexGrowDocumentPayloads(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v39 = 0;
  v6 = *(a1 + 72);
  if (expandUnsafeMapNew((a1 + 14408), *(a1 + 14448), v6, 8uLL, &v39, a2, a3))
  {
    v7 = *__error();
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v41 = "indexGrowDocumentPayloads";
      v42 = 1024;
      v43 = 4859;
      v44 = 2080;
      v45 = a1 + 15208;
      v46 = 1024;
      v47 = 4859;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
    }

    *__error() = v8;
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
      *(a1 + 12) = v7;
    }
  }

  else
  {
    *(a1 + 15205) = 1;
    v11 = *(a1 + 14432);
    v38 = 4 * v6;
    v12 = 4 * v6 + 4;
    v13 = (v12 * 0x3333333333333334uLL) >> 64;
    if (*(a1 + 45))
    {
      v14 = v6;
    }

    else
    {
      v14 = (v12 * 0x3333333333333334uLL) >> 64;
    }

    if (_gSystemStatusBool == 1)
    {
      pthread_mutex_lock(&_gSystemStatusLock);
      if (_gSystemStatusBool == 1)
      {
        do
        {
          pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
        }

        while ((_gSystemStatusBool & 1) != 0);
      }

      pthread_mutex_unlock(&_gSystemStatusLock);
    }

    msync(v11, v14, 16);
    if (*(a1 + 45))
    {
      v15 = v6;
    }

    else
    {
      v15 = v13;
    }

    munmap(*(a1 + 14432), v15);
    *(a1 + 14432) = -1;
    v16 = v39;
    v17 = v39;
    if ((*(a1 + 45) & 1) == 0)
    {
      v17 = (4 * v39 + 4) / 5;
    }

    if (expandMap(*(a1 + 14472), v17, (a1 + 14432), a2, a3))
    {
      v7 = *__error();
      v18 = *__error();
      v19 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v41 = "indexGrowDocumentPayloads";
        v42 = 1024;
        v43 = 4848;
        v44 = 2080;
        v45 = a1 + 15208;
        v46 = 1024;
        v47 = 4848;
        _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
      }

      *__error() = v18;
      if (*(a1 + 8) == 1)
      {
        *(a1 + 8) = 0;
        *(a1 + 12) = v7;
      }

      munmap(*(a1 + 14408), 8 * v16);
      *(a1 + 14408) = -1;
    }

    else
    {
      v20 = *(a1 + 14440);
      if (v20)
      {
        v21 = MEMORY[0x1E69E9AC8];
        if (*(a1 + 45) == 1)
        {
          v22 = v16 + 3;
        }

        else
        {
          v22 = ((v16 + 4) * 0xCCCCCCCCCCCCCCCDLL) >> 64;
        }

        v23 = malloc_type_realloc(v20, (8 * *MEMORY[0x1E69E9AC8] - 1 + (v22 >> 2)) / (8 * *MEMORY[0x1E69E9AC8]), 0x2862C721uLL);
        *(a1 + 14440) = v23;
        if (*(a1 + 45) == 1)
        {
          v25 = (v6 + 3) >> 2;
          v26 = v16 + 3;
        }

        else
        {
          v25 = ((v6 + 4) * 0x3333333333333334uLL) >> 64;
          v26 = ((v16 + 4) * 0xCCCCCCCCCCCCCCCDLL) >> 64;
        }

        v24 = 8 * *v21;
        bzero(&v23[(v25 + v24 - 1) / v24], (v24 + (v26 >> 2) - 1) / v24 - (v25 + v24 - 1) / v24);
      }

      v27 = *(a1 + 14416);
      if (_gSystemStatusBool == 1)
      {
        pthread_mutex_lock(&_gSystemStatusLock);
        if (_gSystemStatusBool == 1)
        {
          do
          {
            pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
          }

          while ((_gSystemStatusBool & 1) != 0);
        }

        pthread_mutex_unlock(&_gSystemStatusLock);
      }

      msync(v27, v38, 16);
      munmap(*(a1 + 14416), v38);
      *(a1 + 14416) = -1;
      v28 = 4 * v16;
      if (expandMap(*(a1 + 14456), 4 * v16, (a1 + 14416), a2, a3))
      {
        v7 = *__error();
        v29 = *__error();
        v30 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v41 = "indexGrowDocumentPayloads";
          v42 = 1024;
          v43 = 4832;
          v44 = 2080;
          v45 = a1 + 15208;
          v46 = 1024;
          v47 = 4832;
          _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
        }

        *__error() = v29;
        if (*(a1 + 8) == 1)
        {
          *(a1 + 8) = 0;
          *(a1 + 12) = v7;
        }

        munmap(*(a1 + 14408), 8 * v16);
        *(a1 + 14408) = -1;
        munmap(*(a1 + 14416), 4 * v16);
        *(a1 + 14416) = -1;
        v31 = *(a1 + 14432);
        if (*(a1 + 45))
        {
          v32 = v16;
        }

        else
        {
          v32 = (v28 + 4) / 5uLL;
        }
      }

      else
      {
        if (!*(a1 + 14464) || (v33 = *(a1 + 14424), v34 = 8 * v6, fd_system_status_stall_if_busy(), msync(v33, v34, 16), munmap(*(a1 + 14424), v34), *(a1 + 14424) = -1, (v35 = *(a1 + 14464)) == 0) || !expandMap(v35, 8 * v16, (a1 + 14424), a2, a3))
        {
          v7 = 0;
          *(a1 + 72) = v16;
          return v7;
        }

        v7 = *__error();
        v36 = *__error();
        v37 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v41 = "indexGrowDocumentPayloads";
          v42 = 1024;
          v43 = 4815;
          v44 = 2080;
          v45 = a1 + 15208;
          v46 = 1024;
          v47 = 4815;
          _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
        }

        *__error() = v36;
        if (*(a1 + 8) == 1)
        {
          *(a1 + 8) = 0;
          *(a1 + 12) = v7;
        }

        munmap(*(a1 + 14408), 8 * v16);
        *(a1 + 14408) = -1;
        munmap(*(a1 + 14416), 4 * v16);
        *(a1 + 14416) = -1;
        munmap(*(a1 + 14424), 8 * v16);
        *(a1 + 14424) = -1;
        v31 = *(a1 + 14432);
        if ((*(a1 + 45) & 1) == 0)
        {
          v16 = (v28 + 4) / 5uLL;
        }

        v32 = v16;
      }

      munmap(v31, v32);
      *(a1 + 14432) = -1;
    }
  }

  return v7;
}

void attributeMergeInfoWildcardApplier(unint64_t key, const void *a2, uint64_t a3)
{
  if ((key & 0x80000000) == 0 && !CFDictionaryGetValue(*(a3 + 8), key))
  {
    Mutable = *(a3 + 16);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
      *(a3 + 16) = Mutable;
    }

    CFDictionarySetValue(Mutable, (key | 0x40000000), a2);
  }
}

CFTypeID __updateChangedAttributes_block_invoke()
{
  updateChangedAttributes_dateType = CFDateGetTypeID();
  result = CFArrayGetTypeID();
  updateChangedAttributes_arrayType = result;
  return result;
}

uint64_t cleanUpTermUpdateMergeContext(pthread_mutex_t **a1)
{
  v2 = *a1;
  v1 = a1[1];
  pthread_mutex_lock(*a1 + 230);
  *&v2[233].__opaque[4] = 0;
  v3 = *&v2[232].__opaque[40];
  *&v2[232].__opaque[40] = 0u;
  v4 = HIDWORD(v2[233].__sig) != 0;
  v2[233].__opaque[12] = 0;
  db_rwlock_wakeup(&v2[230], v4, 0);
  pthread_mutex_unlock(v2 + 230);
  if (v3)
  {
    pthread_override_qos_class_end_np(v3);
  }

  dispatch_release(*(*&v2[245].__opaque[16] + 40));
  v5 = *&v2[245].__opaque[16];
  *&v2[245].__opaque[16] = 0;
  os_unfair_lock_unlock(v2[245].__opaque);
  dispatch_semaphore_signal(*&v2[245].__opaque[8]);
  free(v5);
  TermUpdateSetRelease(v1);
  return 0;
}

void mergeAttributesForNewEntryApplier(void *key, const void *a2, CFDictionaryRef *a3)
{
  Value = CFDictionaryGetValue(*a3, key);
  if (!Value || Value != a2 && !CFEqual(Value, a2))
  {
    CFSetSetValue(a3[1], (key & 0x3FFFFFF));
  }

  v7 = CFGetTypeID(a2);
  TypeID = CFNullGetTypeID();
  v9 = a3[2];
  if (v7 == TypeID)
  {

    CFDictionaryRemoveValue(v9, key);
  }

  else
  {

    CFDictionarySetValue(v9, key, a2);
  }
}

uint64_t si_rwlock_wrunlock_3589(uint64_t a1)
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

void IndexFdInfoDispose(void *a1, __n128 a2)
{
  if (a1)
  {
    v3 = *(a1 + 2);
    if (v3 != -1)
    {
      _fd_release_fd(*(*a1 + 14480), v3, 0, *(a1 + 2));
    }

    v4 = *(a1 + 6);
    if (v4 != -1)
    {
      _fd_release_fd(*(*a1 + 472), v4, 0, *(a1 + 4));
    }

    v5 = *(a1 + 10);
    if (v5 != -1)
    {
      _fd_release_fd(*(*a1 + 9432), v5, 0, *(a1 + 6));
    }

    v6 = *(a1 + 14);
    if (v6 != -1)
    {
      _fd_release_fd(*(*a1 + 5200), v6, 0, *(a1 + 8));
    }

    v7 = *(a1 + 18);
    if (v7 != -1)
    {
      _fd_release_fd(*(*a1 + 14152), v7, 0, *(a1 + 10));
    }

    v8 = *(a1 + 22);
    if (v8 != -1)
    {
      _fd_release_fd(*(*a1 + 9920), v8, 0, *(a1 + 12));
    }

    v9 = *(a1 + 26);
    if (v9 != -1)
    {
      _fd_release_fd(*(*a1 + 14472), v9, 0, *(a1 + 14));
    }

    v10 = *(a1 + 30);
    if (v10 != -1)
    {
      _fd_release_fd(*(*a1 + 14448), v10, 0, *(a1 + 16));
    }

    v11 = *(a1 + 34);
    if (v11 != -1)
    {
      _fd_release_fd(*(*a1 + 14456), v11, 0, *(a1 + 18));
    }

    v12 = *(a1 + 38);
    if (v12 != -1)
    {
      _fd_release_fd(*(*a1 + 14464), v12, 0, *(a1 + 20));
    }

    if (g_fd_list)
    {
      _fd_close_inactive(*(*a1 + 64), (*a1 + 15208), 0, 0, a2);
    }

    free(a1);
  }
}

_DWORD *IndexFdInfoCreate(uint64_t *a1, int a2)
{
  v4 = malloc_type_malloc(0xA8uLL, 0x1020040A0A6502FuLL);
  *v4 = a1;
  v4[6] = -1;
  v4[10] = -1;
  v4[14] = -1;
  v4[18] = -1;
  v4[22] = -1;
  v4[26] = -1;
  v4[30] = -1;
  v4[34] = -1;
  v4[38] = -1;
  v5 = _fd_acquire_fd(a1[1810], v4 + 2);
  v4[2] = v5;
  if (v5 == -1)
  {
    goto LABEL_14;
  }

  v7 = _fd_acquire_fd(a1[59], v4 + 4);
  v4[6] = v7;
  if (v7 == -1)
  {
    goto LABEL_14;
  }

  v8 = _fd_acquire_fd(a1[1179], v4 + 6);
  v4[10] = v8;
  if (v8 == -1)
  {
    goto LABEL_14;
  }

  v9 = _fd_acquire_fd(a1[1769], v4 + 10);
  v4[18] = v9;
  if (v9 == -1)
  {
    goto LABEL_14;
  }

  if (a2)
  {
    v10 = _fd_acquire_fd(a1[650], v4 + 8);
    v4[14] = v10;
    if (v10 == -1 || (v11 = _fd_acquire_fd(a1[1240], v4 + 12), v4[22] = v11, v11 == -1))
    {
LABEL_14:
      IndexFdInfoDispose(v4, v6);
      return 0;
    }
  }

  else
  {
    v12 = _fd_acquire_fd(a1[1809], v4 + 14);
    v4[26] = v12;
    if (v12 == -1)
    {
      goto LABEL_14;
    }

    v13 = _fd_acquire_fd(a1[1806], v4 + 16);
    v4[30] = v13;
    if (v13 == -1)
    {
      goto LABEL_14;
    }

    v14 = _fd_acquire_fd(a1[1807], v4 + 18);
    v4[34] = v14;
    if (v14 == -1)
    {
      goto LABEL_14;
    }

    v15 = a1[1808];
    if (v15)
    {
      v16 = _fd_acquire_fd(v15, v4 + 20);
      v4[38] = v16;
      if (v16 == -1)
      {
        goto LABEL_14;
      }
    }
  }

  return v4;
}

uint64_t index_compact(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v202 = *MEMORY[0x1E69E9840];
  bzero(v201, 0x400uLL);
  bzero(v200, 0x400uLL);
  bzero(v199, 0x400uLL);
  bzero(v191, 0x4908uLL);
  v9 = atomic_load((v8 + 36));
  *v2 = 0;
  v11 = atomic_load((v8 + 15192));
  if (v11 || ((*(v6 + 16))(*(v6 + 24)) & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(v8 + 8) & 1) == 0)
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v175[0]) = 136315650;
      *(v175 + 4) = "index_compact";
      WORD6(v175[0]) = 1024;
      *(v175 + 14) = 5817;
      WORD1(v175[1]) = 2080;
      *(&v175[1] + 4) = v8 + 15208;
      v17 = "%s:%d: invalid index: %s";
      goto LABEL_27;
    }

LABEL_10:
    *__error() = v15;
    return 0xFFFFFFFFLL;
  }

  v13 = atomic_load((v8 + 36));
  if ((v13 & 4) == 0)
  {
    v14 = atomic_load((v8 + 36));
    if ((v14 & 2) == 0)
    {
      v15 = *__error();
      v16 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v175[0]) = 136315650;
        *(v175 + 4) = "index_compact";
        WORD6(v175[0]) = 1024;
        *(v175 + 14) = 5825;
        WORD1(v175[1]) = 2080;
        *(&v175[1] + 4) = v8 + 15208;
        v17 = "%s:%d: cant compact writable index: %s";
LABEL_27:
        _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, v17, v175, 0x1Cu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    if (v4 == -1)
    {
      v20 = -1;
    }

    else if (preflight_compact(v8, v4))
    {
      v20 = v4;
    }

    else
    {
      v20 = -1;
    }

    v21 = v20;
    if (!preflight_compact(v8, *(v8 + 64)))
    {
      return 0xFFFFFFFFLL;
    }

    v143 = v21;
    Current = CFAbsoluteTimeGetCurrent();
    v138 = *(v8 + 64);
    ForwardStore = 0;
    _initPayload(v197, 1);
    _initPayload(v198, 1);
    bzero(v196, 0x12D0uLL);
    pthread_mutex_init(&v196[575], 0);
    bzero(&v196[20], 0x1140uLL);
    bzero(v191, 0x1144uLL);
    v139 = SIUINT32SetCreate(*MEMORY[0x1E695E480]);
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v23 = setThreadIdAndInfo(-1, sExcCompactCallbacks, v191, 0, add_explicit + 1);
    v160 = HIDWORD(v23);
    v161 = v23;
    v159 = v24;
    v158 = v25;
    v26 = threadData[9 * v23 + 1] + 320 * HIDWORD(v23);
    v149 = *(v26 + 312);
    v27 = *(v26 + 224);
    if (v27)
    {
      v27(*(v26 + 288));
    }

    v157 = v161;
    v156 = v160;
    v155 = __PAIR64__(v159, v158);
    if (_setjmp(v26))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v175[0]) = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v175, 2u);
      }

      *(v26 + 312) = v149;
      CIOnThreadCleanUpReset(v155);
      dropThreadId(v157, 1, add_explicit + 1);
      CICleanUpReset(v157, HIDWORD(v155));
      v28 = 0;
      v29 = 0;
      v30 = v139;
LABEL_73:
      if (v30)
      {
        CFRelease(v30);
      }

      v54 = *__error();
      v55 = _SILogForLogForCategory(10);
      v56 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v55, v56))
      {
        v57 = CFAbsoluteTimeGetCurrent() - Current;
        LODWORD(v175[0]) = 134218240;
        *(v175 + 4) = v57;
        WORD6(v175[0]) = 1024;
        *(v175 + 14) = v28;
        _os_log_impl(&dword_1C278D000, v55, v56, "index_compact time (%f) - %d", v175, 0x12u);
      }

      *__error() = v54;
      if (v28)
      {
        v58 = 1;
      }

      else
      {
        v58 = v29;
      }

      if (v58)
      {
        v59 = v28;
      }

      else
      {
        v59 = 0xFFFFFFFFLL;
      }

      if (v199[0])
      {
        index_DeleteIndex(0, v138, v199, 1);
      }

      return v59;
    }

    LODWORD(v31) = 0;
    v147 = CICleanUpThreadLoc();
    v148 = LODWORD(threadData[9 * v147 + 4]);
    v199[0] = 0;
    snprintf(v199, 0x400uLL, "tmp.%scmpt.", (v8 + 15208));
    if (!openPayload(v197, v138, v199, "indexPostings", "indexTermIds", v201, 0, 0, 0, *(v8 + 4), *(v8 + 4936)) || (LODWORD(v31) = 0, !openPayload(v198, v138, v199, "indexPositions", "indexPositionTable", v201, 0, 0, 0, *(v8 + 4), *(v8 + 4936))) || (LODWORD(v31) = 0, !bt_openTrie(v196, v138, v199, 1, 0, 0, *(v8 + 4), *(v8 + 4936))))
    {
      v40 = 0;
      goto LABEL_55;
    }

    if (*(v8 + 4928))
    {
      ForwardStore = createForwardStore(v138, v199, *(v8 + 4936));
      if (!ForwardStore)
      {
        LODWORD(v31) = 0;
        v40 = 0;
        goto LABEL_55;
      }
    }

    if (_os_feature_enabled_impl())
    {
      if (*(v8 + 15714) == 1)
      {
        v32 = *(v8 + 4912);
        if (v32)
        {
          createVectorIndexWithPrototype(v138, v199, v32, *(v8 + 56));
        }
      }
    }

    snprintf(v201, 0x400uLL, "%s%s", v199, "newTermIDMap");
    v33 = *(v8 + 9400);
    if (v33 <= 0x4000000)
    {
      v34 = 0x8000000;
    }

    else
    {
      v34 = 0x10000000;
    }

    if (v33 >= 0x2000001)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0x4000000;
    }

    if (v33 >= 0x1000001)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0x2000000;
    }

    if (v33 > 0x800000)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0x1000000;
    }

    LODWORD(v31) = 0;
    v38 = fd_create_protected(v138, v201, 536872450, 0);
    if (!uint32_map_init(v191, v38, v33, v37, (v9 >> 9) & 1))
    {
LABEL_53:
      v40 = 1;
LABEL_55:
      v41 = v40;
      CICleanUpReset(v147, v148);
      v42 = 0;
      v43 = v31;
      goto LABEL_56;
    }

    v39 = termIdStoreAllocBulk(&v197[5], v33);
    if (v39 || (v141 = v33, (v39 = termIdStoreAllocBulk(&v198[5], v33)) != 0))
    {
      LODWORD(v31) = v39;
      goto LABEL_53;
    }

    if (*v6)
    {
      v60 = (*v6)(*(v6 + 24));
    }

    else
    {
      v60 = 0;
    }

    v31 = IndexFdInfoCreate(v8, 1);
    v61 = *(v6 + 8);
    if (v61)
    {
      v61(*(v6 + 24), v60);
      v60 = 0;
    }

    v144 = v60;
    if (!v31)
    {
      v40 = 1;
      goto LABEL_55;
    }

    v10 = (v8 + 15192);
    v62 = (v8 + 15192);
    CICleanUpPush(v147, IndexFdInfoDispose, v31);
    v63 = CFAbsoluteTimeGetCurrent();
    v154[0] = v191;
    v154[1] = 1;
    *v2 = 1;
    bzero(v175, 0x5160uLL);
    _bt_dumpTrie(v8 + 96, 0, (v8 + 15192), v175, reorderTermIdCallback, v154);
    if (*(v8 + 4928))
    {
      v153[6] = MEMORY[0x1E69E9820];
      v64.n128_u64[0] = 0x40000000;
      v153[7] = 0x40000000;
      v153[8] = __index_compact_block_invoke;
      v153[9] = &__block_descriptor_tmp_65_3615;
      v153[10] = v154;
      v153[11] = v8;
      dumpDirectoryStore(v64);
    }

    v65 = *(v8 + 4912);
    if (v65)
    {
      v153[0] = MEMORY[0x1E69E9820];
      v153[1] = 0x40000000;
      v153[2] = __index_compact_block_invoke_2;
      v153[3] = &__block_descriptor_tmp_68;
      v153[4] = v154;
      v153[5] = v8;
      dumpVectorIndex(v65, 0, (v8 + 15192), 0, v153);
    }

    *v2 = 0;
    v66 = atomic_load(v10);
    if (v66 || ((*(v6 + 16))(*(v6 + 24)) & 1) != 0)
    {
      goto LABEL_102;
    }

    v67 = *__error();
    v68 = _SILogForLogForCategory(10);
    v69 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v68, v69))
    {
      v70 = CFAbsoluteTimeGetCurrent() - v63;
      LODWORD(v175[0]) = 134217984;
      *(v175 + 4) = v70;
      _os_log_impl(&dword_1C278D000, v68, v69, "computer new term ids time (%f)", v175, 0xCu);
    }

    *__error() = v67;
    if (atomic_load(v10))
    {
LABEL_102:
      LODWORD(v31) = 0;
      goto LABEL_53;
    }

    v152 = 0;
    v72 = atomic_load((v8 + 36));
    v73 = (v72 & 0xC) == 8 && indexCopyDeleteDocIds(v8, 1, &v152) + 1 == *(v8 + 68);
    v146 = v73;
    v74 = v152;
    CICleanUpPush(v147, bit_vector_release, v152);
    *v2 = 1;
    v75 = atomic_load((v8 + 36));
    v76 = CICompactPayloads(v197, 1, v74, v191, v8 + 4944, v199, v143, (v75 & 8) != 0, (v8 + 15192));
    *v2 = 0;
    if (v76 || (v77 = atomic_load(v10)) != 0 || *(v8 + 8) != 1 || (*(v6 + 16))(*(v6 + 24)))
    {
      v79 = v76;
      v80 = *__error();
      v81 = _SILogForLogForCategory(10);
      if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
LABEL_112:
        LODWORD(v31) = v79;
        *__error() = v80;
        goto LABEL_53;
      }

      LODWORD(v175[0]) = 136315394;
      *(v175 + 4) = "index_compact";
      WORD6(v175[0]) = 1024;
      *(v175 + 14) = 5999;
      v82 = "%s:%d: Failed compacting postings";
LABEL_114:
      _os_log_error_impl(&dword_1C278D000, v81, OS_LOG_TYPE_ERROR, v82, v175, 0x12u);
      goto LABEL_112;
    }

    if (!v146)
    {
      *v2 = 1;
      v83 = v152;
      v84 = atomic_load((v8 + 36));
      v78 = CICompactPayloads(v198, 2, v83, v191, v8 + 9664, v199, v143, (v84 & 8) != 0, (v8 + 15192));
      *v2 = 0;
      if (v78)
      {
LABEL_121:
        v79 = v78;
        v80 = *__error();
        v81 = _SILogForLogForCategory(10);
        if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_112;
        }

        LODWORD(v175[0]) = 136315394;
        *(v175 + 4) = "index_compact";
        WORD6(v175[0]) = 1024;
        *(v175 + 14) = 6012;
        v82 = "%s:%d: Failed compacting positions";
        goto LABEL_114;
      }
    }

    v85 = atomic_load(v10);
    if (v85 || *(v8 + 8) != 1 || (*(v6 + 16))(*(v6 + 24), v78))
    {
      LODWORD(v78) = 0;
      goto LABEL_121;
    }

    v86 = CFAbsoluteTimeGetCurrent();
    bzero(&v181, 0x890uLL);
    v176[0] = v8;
    v176[1] = v8 + 96;
    v145 = (v8 + 96);
    v176[2] = v196;
    v177 = v197;
    v178 = v198;
    v179 = v191;
    v180 = v2;
    bzero(v175, 0x10000uLL);
    fd_pread(v198[561], v175, 0x10000uLL, 0);
    if (v141 >= 2)
    {
      v87 = 0;
      v88 = 1;
      v89 = 8;
      while (1)
      {
        v137 = v88;
        v90 = atomic_load(v62);
        if (v90 || (*(v6 + 16))(*(v6 + 24)))
        {
          goto LABEL_136;
        }

        v91 = *storageResolvePtr(&v198[5], v89, 8, 1);
        if (v91)
        {
          if (v91 < v87 || v91 + 10 > v87 + 0x10000)
          {
            v87 = v91 & ~*MEMORY[0x1E69E9AB8];
            fd_pread(v198[561], v175, 0x10000uLL, v87);
          }

          v170[0] = v91 - v87;
          if (!v2_readVInt32(v175, v170))
          {
            break;
          }
        }

        v88 = v137 + 1;
        v89 += 8;
        if (v141 == v137 + 1)
        {
          goto LABEL_136;
        }
      }

      v129 = 1;
      do
      {
        if (uint32_map_get(v191, v129) == v137)
        {
          goto LABEL_206;
        }

        ++v129;
      }

      while (v141 != v129);
      v129 = 0;
LABEL_206:
      *v2 = 1;
      v130 = __si_assert_copy_extra_3233(v198[561], -1);
      v131 = v130;
      v132 = "";
      if (v130)
      {
        v132 = v130;
      }

      __message_assert("%s:%u: failed assertion '%s' %s missing positions for term %d (%d)", "JHContentIndex.c", 6056, "false", v132, v137, v129);
      free(v131);
      if (__valid_fsp(v198[561]))
      {
        goto LABEL_209;
      }

      goto LABEL_213;
    }

LABEL_136:
    v182 = v196;
    v188 = 0;
    v186 = 0u;
    v190 = 0u;
    v183 = 1;
    v187 = 0u;
    v189 = 0;
    v184 = 0;
    v185 = 0;
    _bt_dumpTrie(v145, 0, (v8 + 15192), 0, compactTermsCallback, v176);
    if (*(v8 + 4928))
    {
      v93 = *(v6 + 16);
      v175[0] = *v6;
      v175[1] = v93;
      compactForwardDirectoryStore(v175[0]);
    }

    v94 = *(v8 + 4912);
    if (v94)
    {
      v95 = *(v6 + 16);
      v175[0] = *v6;
      v175[1] = v95;
      compactVectorIndex(v94, v195, v179, (v177 + 5), v175, (v8 + 15192));
    }

    v96 = atomic_load(v62);
    if (v96 || ((*(v6 + 16))(*(v6 + 24)) & 1) != 0 || HIDWORD(v183))
    {
      goto LABEL_102;
    }

    if (v193 - 1 < v181)
    {
      *v2 = 1;
      v134 = __si_assert_copy_extra_3233(*(v8 + 14480), -1);
      v135 = v134;
      v136 = "";
      if (v134)
      {
        v136 = v134;
      }

      __message_assert("%s:%u: failed assertion '%s' %s inconsistent term counts (%d %d)", "JHContentIndex.c", 6085, "false", v136, v181, v193 - 1);
      free(v135);
      if (__valid_fsp(*(v8 + 14480)))
      {
LABEL_209:
        v133 = 2989;
        goto LABEL_214;
      }

LABEL_213:
      v133 = 3072;
LABEL_214:
      *v133 = -559038737;
      abort();
    }

    v97 = *__error();
    v98 = _SILogForLogForCategory(10);
    v99 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v98, v99))
    {
      v100 = CFAbsoluteTimeGetCurrent() - v86;
      LODWORD(v175[0]) = 134217984;
      *(v175 + 4) = v100;
      _os_log_impl(&dword_1C278D000, v98, v99, "compact_trie time (%f)", v175, 0xCu);
    }

    *__error() = v97;
    _fd_unlink_with_origin(v197[32], 0);
    termIdStoreDestroy(&v197[5]);
    _fd_unlink_with_origin(v198[32], 0);
    termIdStoreDestroy(&v198[5]);
    if (SLODWORD(v196[51]) >= 1)
    {
      v101 = 0;
      do
      {
        v102 = v101;
        storageWindowSync(v196[v101 + 54], 0);
        v101 = v102 + 1;
      }

      while (v102 + 1 < SLODWORD(v196[51]));
    }

    if (SLODWORD(v198[36]) >= 1)
    {
      v103 = 0;
      do
      {
        v104 = v103;
        storageWindowSync(v198[v103 + 39], 0);
        v103 = v104 + 1;
      }

      while (v104 + 1 < SLODWORD(v198[36]));
    }

    bt_syncTrie(v196);
    if (v197[3] == v197[4])
    {
      v105 = v197[3];
      if (v197[1] == v197[3])
      {
        v197[1] = v197[0];
        v197[3] = v197[0];
        v105 = v197[0];
      }
    }

    else
    {
      v105 = v197[3];
    }

    fd_truncate(v197[561], v105);
    fd_sync(v197[561], 0);
    if (v198[3] == v198[4])
    {
      v106 = v198[3];
      if (v198[1] == v198[3])
      {
        v198[1] = v198[0];
        v198[3] = v198[0];
        v106 = v198[0];
      }
    }

    else
    {
      v106 = v198[3];
    }

    fd_truncate(v198[561], v106);
    fd_sync(v198[561], 0);
    storageTruncate(&v196[20]);
    fd_truncate(v196[14], v196[4]);
    fd_truncate(v196[572], 1028 * (LODWORD(v196[18]) + 1));
    v107 = v144;
    if (*v6)
    {
      v107 = (*v6)(*(v6 + 24));
    }

    v142 = v107;
    CICleanUpReset(v147, v148);
    v108 = *(v8 + 14448);
    if (v108 && (*(v108 + 48) & 3) != 0)
    {
      fd_truncate(v108, 8 * *(v8 + 68));
      fd_make_readonly(*(v8 + 14448));
    }

    storageMakeReadOnly(&v196[20]);
    if (v195)
    {
      IVFVectorIndex_s::makeReadOnly((v195 + 1));
    }

    v140 = (v8 + 15208);
    fd_reparent(v198[561], *(v8 + 64));
    fd_reparent(v197[561], *(v8 + 64));
    fd_make_readonly(v196[14]);
    fd_make_readonly(v197[561]);
    _fd_unlink_with_origin(v197[32], 0);
    storageClose(&v197[5]);
    fd_make_readonly(v198[561]);
    _fd_unlink_with_origin(v198[32], 0);
    storageClose(&v198[5]);
    if (*(v8 + 4928))
    {
      LODWORD(v175[0]) = 0;
      shadowForwardStore(ForwardStore, 1, v175);
    }

    _db_write_lock(v8 + 14504);
    _db_write_lock(v8 + 4696);
    _db_write_lock(v8 + 14720);
    bzero(&v172, 0x208uLL);
    v171 = 0x6D6F76650A00;
    v172 = 4;
    __strlcpy_chk(&v174, v199, 255, 255);
    __strlcpy_chk(&v173, v140, 255, 255);
    v109 = si_openat_protected(*(v8 + 64), "tmp.movePlan", 1538, 3);
    pwrite(v109, &v171, 0x210uLL, 0);
    fcntl(v109, 85);
    close(v109);
    *(v8 + 4685) = 1;
    memcpy(v175, v8, 0x3D68uLL);
    memcpy(&v175[6], v196, 0x12D0uLL);
    memcpy(&v175[604], v198, 0x1270uLL);
    memcpy(&v175[309], v197, 0x1270uLL);
    bzero(v170, 0x1000uLL);
    v151 = 0;
    DWORD1(v175[0]) = *(v8 + 4);
    atomic_fetch_or(&v175[2] + 1, 4u);
    if (v146)
    {
      atomic_fetch_or(&v175[2] + 1, 0x10u);
    }

    atomic_store(0xC001D00D, &v175[2]);
    v151 = v170;
    indexStoreToBuffer(v175, &v151);
    snprintf(v201, 0x400uLL, "%s%s", v199, "shadowIndexHead");
    v110 = fd_create_protected(*(v8 + 64), v201, 536872450, 0);
    if (v110)
    {
      v111 = v110;
      if (fd_pwrite(v110, v170, 0x1000uLL, 0) == -1)
      {
        v124 = *__error();
        v125 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
        {
LABEL_195:
          v121 = v124;
          goto LABEL_196;
        }

        v126 = *__error();
        *buf = 136315650;
        v163 = "index_compact";
        v164 = 1024;
        v165 = 6229;
        v166 = 1024;
        v167 = v126;
LABEL_201:
        _os_log_error_impl(&dword_1C278D000, v125, OS_LOG_TYPE_ERROR, "%s:%d: pwrite err: %d", buf, 0x18u);
        goto LABEL_195;
      }

      fd_release(v111);
      snprintf(v201, 0x400uLL, "%s%s", v199, "indexHead");
      v112 = fd_create_protected(v138, v201, 536872450, 0);
      if (v112)
      {
        v111 = v112;
        fd_no_cache(v112);
        if (fd_pwrite(v111, v170, 0x1000uLL, 0) != -1)
        {
          fd_sync(v111, 1);
          snprintf(v201, 0x400uLL, "%s%s", v140, "indexHead");
          fd_rename(v111, v201);
          v113 = *(v8 + 14480);
          *(v8 + 14480) = v111;
          fd_release(v113);
          snprintf(v201, 0x400uLL, "%s%s", v140, "indexPostings");
          fd_rename(v197[561], v201);
          memcpy(v175, v197, 0x1270uLL);
          memcpy(v197, (v8 + 4944), 0x11A8uLL);
          memcpy((v8 + 4944), v175, 0x11A8uLL);
          snprintf(v201, 0x400uLL, "%s%s", v140, "indexPositions");
          fd_rename(v198[561], v201);
          memcpy(v175, v198, 0x1270uLL);
          memcpy(v198, (v8 + 9664), 0x11A8uLL);
          memcpy((v8 + 9664), v175, 0x11A8uLL);
          bt_changePrefix(v196, v199, v140, 0);
          memcpy(v175, v196, 0x12D0uLL);
          memcpy(v196, v145, 0x11F8uLL);
          memcpy(v145, v175, 0x11F8uLL);
          LODWORD(v175[0]) = 0;
          if (fd_setDir(*(v8 + 64), v175))
          {
            snprintf(v201, 0x400uLL, "%s%s", v140, "indexUpdates");
            unlink(v201);
            snprintf(v201, 0x400uLL, "%s%s", v140, "shadowIndexHead");
            snprintf(v200, 0x400uLL, "%s%s", v199, "shadowIndexHead");
            rename(v200, v201, v114);
            v115 = *(v8 + 4928);
            if (v115)
            {
              subvertForwardDirectoryStore(v115, ForwardStore);
              *(v8 + 4928) = ForwardStore;
              ForwardStore = 0;
            }

            v116 = *(v8 + 4912);
            if (v116)
            {
              subvertVectorIndex(v116, v195);
              v117 = v195;
              *(v8 + 4912) = v195;
              v195 = 0;
              vectorIndexEndMerge(v117);
            }

            fd_resetDir(v175[0]);
          }

          unlinkat(*(v8 + 64), "tmp.movePlan", 2048);
          if (v146)
          {
            v118 = 20;
          }

          else
          {
            v118 = 4;
          }

          atomic_fetch_or((v8 + 36), v118);
          v119 = *(v6 + 8);
          if (v119)
          {
            v119(*(v6 + 24), v142);
          }

          CICleanUpReset(v147, v148);
          db_write_unlock(v8 + 4696);
          db_write_unlock(v8 + 14504);
          db_write_unlock(v8 + 14720);
          index_optimize_disk_space(v8);
          v50 = 0;
          if (g_fd_list)
          {
            _fd_close_inactive(*(v8 + 64), v140, 0, 0, v120);
          }

          v49 = 1;
          v44 = add_explicit;
          v30 = v139;
          v45 = v149;
          goto LABEL_69;
        }

        v124 = *__error();
        v125 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_195;
        }

        v128 = *__error();
        *buf = 136315650;
        v163 = "index_compact";
        v164 = 1024;
        v165 = 6244;
        v166 = 1024;
        v167 = v128;
        goto LABEL_201;
      }

      v121 = *__error();
      v122 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
LABEL_193:
        v111 = 0;
LABEL_196:
        *__error() = v121;
        CICleanUpReset(v147, v148);
        db_write_unlock(v8 + 4696);
        db_write_unlock(v8 + 14504);
        db_write_unlock(v8 + 14720);
        v43 = 0;
        v41 = 1;
        v42 = v111;
LABEL_56:
        v44 = add_explicit;
        v30 = v139;
        v45 = v149;
        fd_release(v42);
        if (v195)
        {
          vectorIndexCancelMerge(v195);
        }

        fd_zero_truncate(v196[572]);
        fd_zero_truncate(v196[14]);
        fd_zero_truncate(v196[47]);
        fd_zero_truncate(v197[32]);
        fd_zero_truncate(v197[561]);
        fd_zero_truncate(v198[32]);
        fd_zero_truncate(v198[561]);
        fd_zero_truncate(v192);
        if (ForwardStore)
        {
          fd_zero_truncate(ForwardStore[28]);
          freeForwardDirectoryStore(ForwardStore);
          ForwardStore = 0;
          unlinkDirectoryStore(v199);
          unlinkDirectoryStoreShadow(v199);
        }

        if (v195)
        {
          v46 = v201;
          v47 = fcntl(*v195, 50, v201);
          if (v201[0].__pn_.__r_.__value_.__s.__data_[0])
          {
            v48 = v47 < 0;
          }

          else
          {
            v48 = 1;
          }

          if (v48)
          {
            v46 = 0;
          }

          truncateVectorIndex(v195);
          freeVectorIndex(v195);
          v195 = 0;
          IVFVectorIndex_s::unlink(&v46->__pn_, v199, 0);
          IVFVectorIndex_s::unlink(&v46->__pn_, v199, 1);
          v49 = 0;
          v50 = v43;
          v51 = 0;
          if ((v41 & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v49 = 0;
          v50 = v43;
          v51 = 0;
          if (!v41)
          {
LABEL_70:
            storageClose(v191);
            bt_freeTrie(v196);
            freePayload(v198);
            freePayload(v197);
            v52 = threadData[9 * v157 + 1] + 320 * v156;
            *(v52 + 312) = v45;
            v53 = *(v52 + 232);
            if (v53)
            {
              v53(*(v52 + 288));
            }

            dropThreadId(v157, 0, v44 + 1);
            v29 = v51;
            v28 = v43;
            goto LABEL_73;
          }
        }

LABEL_69:
        v51 = v49;
        _fd_unlink_with_origin(v192, 0);
        v43 = v50;
        goto LABEL_70;
      }

      v127 = *__error();
      *buf = 136315906;
      v163 = "index_compact";
      v164 = 1024;
      v165 = 6239;
      v166 = 1024;
      v167 = v127;
      v168 = 2080;
      v169 = v201;
    }

    else
    {
      v121 = *__error();
      v122 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_193;
      }

      v123 = *__error();
      *buf = 136315906;
      v163 = "index_compact";
      v164 = 1024;
      v165 = 6225;
      v166 = 1024;
      v167 = v123;
      v168 = 2080;
      v169 = v201;
    }

    _os_log_error_impl(&dword_1C278D000, v122, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
    v111 = 0;
    goto LABEL_196;
  }

  v18 = *__error();
  v19 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v175[0]) = 136315650;
    *(v175 + 4) = "index_compact";
    WORD6(v175[0]) = 1024;
    *(v175 + 14) = 5821;
    WORD1(v175[1]) = 2080;
    *(&v175[1] + 4) = v8 + 15208;
    _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: index alreay compact: %s", v175, 0x1Cu);
  }

  *__error() = v18;
  return 0;
}

uint64_t preflight_compact(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  bzero(&v35, 0x878uLL);
  v4 = atomic_load((a1 + 36));
  atomic_load((a1 + 36));
  v5 = 68;
  if ((v4 & 4) == 0)
  {
    v5 = 72;
  }

  v6 = *(a1 + v5);
  if (*(a1 + 45))
  {
    v7 = v6;
  }

  else
  {
    v7 = ((4 * v6 + 4) * 0x3333333333333334uLL) >> 64;
  }

  v8 = v7 + 8 * v6 + *(a1 + 4968) + 4096;
  if ((v4 & 4) != 0)
  {
    v9 = *(a1 + 9688) + v8;
    v10 = 488;
    v11 = 128;
    v12 = 240;
  }

  else
  {
    v9 = *(a1 + 9688) + v8 + 8 * *(a1 + 9404) + 8 * *(a1 + 14124);
    v10 = 480;
    v11 = 136;
    v12 = 244;
  }

  v13 = *(a1 + v11) + v9 + 1028 * *(a1 + v12) + *(a1 + v10) + 1028;
  v14 = *(a1 + 4928);
  if (v14)
  {
    v13 += *(v14 + 232);
  }

  if (fstatfs(a2, &v35) == -1)
  {
    v17 = *__error();
    v22 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = *__error();
      v26 = 136315906;
      v27 = "preflight_compact";
      v28 = 1024;
      v29 = 5602;
      v30 = 1024;
      *v31 = a2;
      *&v31[4] = 1024;
      *&v31[6] = v25;
      v19 = "%s:%d: fstatfs(%d) err:%d";
      v20 = v22;
      v21 = 30;
      goto LABEL_22;
    }

LABEL_17:
    v23 = __error();
    result = 0;
    *v23 = v17;
    return result;
  }

  v15 = v35.f_bavail * v35.f_bsize;
  v16 = v13 - (*(a1 + 4968) + *(a1 + 9688)) + 2 * (*(a1 + 4968) - *(a1 + 4952) + *(a1 + 4944)) + 2 * (*(a1 + 9688) - *(a1 + 9672) + *(a1 + 9664));
  if (v16 <= v15)
  {
    return 1;
  }

  if (*(a1 + 64) == a2)
  {
    v17 = *__error();
    v18 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v26 = 136316162;
      v27 = "preflight_compact";
      v28 = 1024;
      v29 = 5619;
      v30 = 2048;
      *v31 = v16;
      *&v31[8] = 2048;
      v32 = v15;
      v33 = 2048;
      v34 = v35.f_blocks * v35.f_bsize;
      v19 = "%s:%d: not enought space to compact index - needed: %lld, avail: %lld, device: %lld";
      v20 = v18;
      v21 = 48;
LABEL_22:
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, v19, &v26, v21);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  return 0;
}

BOOL __index_compact_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (uint32_map_get(**(a1 + 32), a4))
    {
      si_analytics_log_2752("Duplicate term id %llu (file tree)", a4);
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 8);
      *(v6 + 8) = v7 + 1;
      uint32_map_put(*v6, a4, v7);
    }
  }

  v8 = atomic_load((*(a1 + 40) + 15192));
  return v8 != 0;
}

BOOL __index_compact_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8)
  {
    if (uint32_map_get(**(a1 + 32), a8))
    {
      si_analytics_log_2752("Duplicate term id %llu (vector index)", a8);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 8);
      *(v10 + 8) = v11 + 1;
      uint32_map_put(*v10, a8, v11);
    }
  }

  v12 = atomic_load((*(a1 + 40) + 15192));
  return v12 != 0;
}

void index_optimize_disk_space(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (atomic_load((a1 + 15192)))
  {
    return;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v25.st_dev = 136315650;
      *&v25.st_mode = "index_optimize_disk_space";
      WORD2(v25.st_ino) = 1024;
      *(&v25.st_ino + 6) = 6422;
      HIWORD(v25.st_uid) = 2080;
      *&v25.st_gid = a1 + 15208;
      v7 = "%s:%d: invalid index: %s";
      goto LABEL_32;
    }

LABEL_10:
    *__error() = v5;
    return;
  }

  v3 = atomic_load((a1 + 36));
  if ((v3 & 0x100) != 0)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v25.st_dev = 136315650;
      *&v25.st_mode = "index_optimize_disk_space";
      WORD2(v25.st_ino) = 1024;
      *(&v25.st_ino + 6) = 6426;
      HIWORD(v25.st_uid) = 2080;
      *&v25.st_gid = a1 + 15208;
      v7 = "%s:%d: index alreay compact: %s";
      goto LABEL_32;
    }

    goto LABEL_10;
  }

  v4 = atomic_load((a1 + 36));
  if ((v4 & 2) == 0)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v25.st_dev = 136315650;
      *&v25.st_mode = "index_optimize_disk_space";
      WORD2(v25.st_ino) = 1024;
      *(&v25.st_ino + 6) = 6430;
      HIWORD(v25.st_uid) = 2080;
      *&v25.st_gid = a1 + 15208;
      v7 = "%s:%d: cant optimize writable index: %s";
LABEL_32:
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, v7, &v25, 0x1Cu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v9 = *(a1 + 64);
  memset(&v25, 0, sizeof(v25));
  if (!fstat(v9, &v25))
  {
    v10 = open(".", 4);
    if (!MEMORY[0x1C6921200](v9))
    {
      if (_os_feature_enabled_impl() && *(a1 + 4912))
      {
        vectorIndexFinalizeMerge();
      }

      MEMORY[0x1C6921200](v10);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if ((v10 & 0x80000000) == 0)
    {
LABEL_15:
      close(v10);
    }
  }

LABEL_16:
  atomic_fetch_or((a1 + 36), 0x100u);
  if (*(v22 + 24) == 1)
  {
    pthread_mutex_lock((a1 + 4696));
    *(a1 + 4900) = 0;
    v11 = *(a1 + 4872);
    *(a1 + 4872) = 0;
    *(a1 + 4880) = 0;
    v12 = *(a1 + 4892) != 0;
    *(a1 + 4908) = 0;
    db_rwlock_wakeup(a1 + 4696, v12, 0);
    pthread_mutex_unlock((a1 + 4696));
    if (v11)
    {
      pthread_override_qos_class_end_np(v11);
    }

    pthread_mutex_lock((a1 + 14504));
    *(a1 + 14708) = 0;
    v13 = *(a1 + 14680);
    *(a1 + 14680) = 0;
    *(a1 + 14688) = 0;
    v14 = *(a1 + 14700) != 0;
    *(a1 + 14716) = 0;
    db_rwlock_wakeup(a1 + 14504, v14, 0);
    pthread_mutex_unlock((a1 + 14504));
    if (v13)
    {
      pthread_override_qos_class_end_np(v13);
    }

    pthread_mutex_lock((a1 + 14720));
    *(a1 + 14924) = 0;
    v15 = *(a1 + 14896);
    *(a1 + 14896) = 0u;
    v16 = *(a1 + 14916) != 0;
    *(a1 + 14932) = 0;
    db_rwlock_wakeup(a1 + 14720, v16, 0);
    pthread_mutex_unlock((a1 + 14720));
    if (v15)
    {
      pthread_override_qos_class_end_np(v15);
    }
  }

  v17 = *__error();
  v18 = _SILogForLogForCategory(10);
  v19 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = CFAbsoluteTimeGetCurrent() - Current;
    v25.st_dev = 134217984;
    *&v25.st_mode = v20;
    _os_log_impl(&dword_1C278D000, v18, v19, "index_optimize time (%f)", &v25, 0xCu);
  }

  *__error() = v17;
  _Block_object_dispose(&v21, 8);
}

uint64_t __index_optimize_disk_space_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
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

  pthread_mutex_lock((v2 + 14504));
  if (*(v2 + 14688) || *(v2 + 14700) || (*(v2 + 14716) & 1) != 0)
  {
LABEL_7:
    db_rwlock_wait(v2 + 14504, v5, 2);
    goto LABEL_8;
  }

  if (v5 <= 5)
  {
    v15 = v5 - 6;
    v16 = (v2 + 16 * v5 + 14568);
    while (!*v16)
    {
      v16 += 2;
      v17 = __CFADD__(v15++, 1);
      if (v17)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_7;
  }

LABEL_28:
  *(v2 + 14688) = pthread_self();
LABEL_8:
  pthread_mutex_unlock((v2 + 14504));
  v6 = *(a1 + 40);
  HIDWORD(v8) = qos_class_self() - 9;
  LODWORD(v8) = HIDWORD(v8);
  v7 = v8 >> 2;
  if (v7 > 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_1C2BFF8F0[v7];
  }

  pthread_mutex_lock((v6 + 4696));
  if (*(v6 + 4880) || *(v6 + 4892) || (*(v6 + 4908) & 1) != 0)
  {
LABEL_14:
    db_rwlock_wait(v6 + 4696, v9, 2);
    goto LABEL_15;
  }

  if (v9 <= 5)
  {
    v18 = v9 - 6;
    v19 = (v6 + 16 * v9 + 4760);
    while (!*v19)
    {
      v19 += 2;
      v17 = __CFADD__(v18++, 1);
      if (v17)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_14;
  }

LABEL_34:
  *(v6 + 4880) = pthread_self();
LABEL_15:
  pthread_mutex_unlock((v6 + 4696));
  v10 = *(a1 + 40);
  HIDWORD(v12) = qos_class_self() - 9;
  LODWORD(v12) = HIDWORD(v12);
  v11 = v12 >> 2;
  if (v11 > 6)
  {
    v13 = 0;
  }

  else
  {
    v13 = dword_1C2BFF8F0[v11];
  }

  pthread_mutex_lock((v10 + 14720));
  if (!*(v10 + 14904) && !*(v10 + 14916) && (*(v10 + 14932) & 1) == 0)
  {
    if (v13 > 5)
    {
LABEL_40:
      *(v10 + 14904) = pthread_self();
      goto LABEL_22;
    }

    v20 = v13 - 6;
    v21 = (v10 + 16 * v13 + 14784);
    while (!*v21)
    {
      v21 += 2;
      v17 = __CFADD__(v20++, 1);
      if (v17)
      {
        goto LABEL_40;
      }
    }
  }

  db_rwlock_wait(v10 + 14720, v13, 2);
LABEL_22:
  result = pthread_mutex_unlock((v10 + 14720));
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

uint64_t __index_optimize_disk_space_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  pthread_mutex_lock((v2 + 14504));
  *(v2 + 14708) = 0;
  v3 = *(v2 + 14680);
  *(v2 + 14680) = 0u;
  v4 = *(v2 + 14700) != 0;
  *(v2 + 14716) = 0;
  db_rwlock_wakeup(v2 + 14504, v4, 0);
  pthread_mutex_unlock((v2 + 14504));
  if (v3)
  {
    pthread_override_qos_class_end_np(v3);
  }

  v5 = *(a1 + 40);
  pthread_mutex_lock((v5 + 4696));
  *(v5 + 4900) = 0;
  v6 = *(v5 + 4872);
  *(v5 + 4872) = 0u;
  v7 = *(v5 + 4892) != 0;
  *(v5 + 4908) = 0;
  db_rwlock_wakeup(v5 + 4696, v7, 0);
  pthread_mutex_unlock((v5 + 4696));
  if (v6)
  {
    pthread_override_qos_class_end_np(v6);
  }

  v8 = *(a1 + 40);
  pthread_mutex_lock((v8 + 14720));
  *(v8 + 14924) = 0;
  v9 = *(v8 + 14896);
  *(v8 + 14896) = 0u;
  v10 = *(v8 + 14916) != 0;
  *(v8 + 14932) = 0;
  db_rwlock_wakeup(v8 + 14720, v10, 0);
  result = pthread_mutex_unlock((v8 + 14720));
  if (v9)
  {
    result = pthread_override_qos_class_end_np(v9);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t compactTermsCallback(unsigned int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = uint32_map_get(*(a5 + 40), a3);
  if (!*(a5 + 76))
  {
    v9 = 8 * result;
    *(a5 + 80) = *storageResolvePtr(*(a5 + 24) + 40, v9, 8, 1);
    v10 = storageResolvePtr(*(a5 + 32) + 40, v9, 8, 1);
    v11 = *v10;
    *(a5 + 88) = *v10;
    if (a1 < 2 || !v11)
    {
      goto LABEL_41;
    }

    if (*a2 <= 3u)
    {
      v12 = a2[1];
      if ((a2[1] & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      v13 = a2[2];
      if ((a2[2] & 0x80000000) == 0)
      {
        v12 = v12 & 0x7F | (v13 << 7);
        goto LABEL_40;
      }

      v21 = a2[3];
      if ((a2[3] & 0x80000000) == 0)
      {
        v22 = ((v13 & 0x7F) << 7) | (v21 << 14);
LABEL_39:
        v12 = v22 & 0xFFFFFF80 | v12 & 0x7F;
        goto LABEL_40;
      }

      v23 = a2[4];
      if ((a2[4] & 0x80000000) == 0)
      {
        v12 = ((v21 & 0x7F) << 14) | (v23 << 21) | ((v13 & 0x7F) << 7) | v12 & 0x7F;
        goto LABEL_40;
      }

      v25 = a2[5];
      if ((v25 & 0x80000000) == 0)
      {
        v12 = ((v23 & 0x7F) << 21) | (v25 << 28) | ((v21 & 0x7F) << 14) | ((v13 & 0x7F) << 7) | v12 & 0x7F;
        goto LABEL_40;
      }

LABEL_53:
      v35 = __si_assert_copy_extra_3233(0, -1);
      v36 = v35;
      v37 = "";
      if (v35)
      {
        v37 = v35;
      }

      __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v37);
      free(v36);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v14 = &a2[a1];
    v15 = v14 - 6;
    if (a1 < 6)
    {
      v15 = a2 + 1;
    }

    v16 = *(v14 - 1);
    if (v16 < 0)
    {
      goto LABEL_41;
    }

    v18 = *(v14 - 2);
    v17 = v14 - 2;
    if (v18 == 1 && v16 == 3)
    {
      --v17;
    }

    if (v17 <= v15)
    {
LABEL_20:
      if (*v17 != 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      while (*v17 < 0)
      {
        if (--v17 <= v15)
        {
          v17 = v15;
          goto LABEL_20;
        }
      }

      if (*v17 != 1)
      {
        goto LABEL_41;
      }
    }

    v12 = v17[1];
    if ((v17[1] & 0x80000000) == 0)
    {
LABEL_40:
      if (v12)
      {
        *(a5 + 88) = 0;
        if (*(a5 + 80))
        {
LABEL_42:
          result = bt_mergeTerm(a1, a2, (a5 + 64));
          if (result)
          {
            ++*(a5 + 56);
          }

          return result;
        }

LABEL_46:
        v29 = *(a5 + 48);
        if (v29)
        {
          *v29 = 1;
        }

        v30 = __native_fsp(*(*(a5 + 8) + 376));
        v31 = __si_assert_copy_extra_3233(*(*(a5 + 8) + 376), -1);
        v32 = v31;
        v33 = "";
        if (v31)
        {
          v33 = v31;
        }

        v34 = (*a5 + 15463);
        if (v30)
        {
          __message_assert("%s:%u: failed assertion '%s' %s no posting for term (%s %s)", "JHContentIndex.c", 5563, "0", v33, (*a5 + 15495), v34);
          free(v32);
          if (__valid_fsp(*(*(a5 + 8) + 376)))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        si_analytics_log_2752("%s:%u: failed assertion '%s' %s no posting for term (%s %s)", "JHContentIndex.c", 5563, "false", v33, (*a5 + 15495), v34);
        free(v32);
        MEMORY[0xB00] = -559038737;
        abort();
      }

LABEL_41:
      if (*(a5 + 80))
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }

    v20 = v17[2];
    if ((v17[2] & 0x80000000) == 0)
    {
      v12 = v12 & 0x7F | (v20 << 7);
      goto LABEL_40;
    }

    v24 = v17[3];
    if ((v17[3] & 0x80000000) == 0)
    {
      v22 = ((v20 & 0x7F) << 7) | (v24 << 14);
      goto LABEL_39;
    }

    v26 = v17[4];
    if (v17[4] < 0)
    {
      v28 = v17[5];
      if (v28 < 0)
      {
        goto LABEL_53;
      }

      v27 = ((v26 & 0x7F) << 21) | (v28 << 28) | ((v24 & 0x7F) << 14);
    }

    else
    {
      v27 = ((v24 & 0x7F) << 14) | (v26 << 21);
    }

    v22 = v27 & 0xFFFFC07F | ((v20 & 0x7F) << 7);
    goto LABEL_39;
  }

  return result;
}

void bit_vector_release(CFTypeRef *a1)
{
  if (a1)
  {
    if (a1[2])
    {
      v2 = a1;
      CFRelease(a1[2]);
      a1 = v2;
      v1 = vars8;
    }

    free(a1);
  }
}

_DWORD *reorderTermIdCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(a5 + 2);
  *(a5 + 2) = v6 + 1;
  v7 = a3;
  if (uint32_map_get(*a5, a3))
  {
    if ((__native_fs() & 1) == 0)
    {
      v13 = __si_assert_copy_extra_3233(0, -1);
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      si_analytics_log_2752("%s:%u: failed assertion '%s' %s duplicate term id (%d)", "JHContentIndex.c", 5585, "0 == uint32_map_get(ctx->newTermIds, termId)", v15, v7);
      free(v14);
      MEMORY[0xB00] = -559038737;
      abort();
    }

    if (uint32_map_get(*a5, v7))
    {
      v10 = __si_assert_copy_extra_3233(0, -1);
      v11 = v10;
      v12 = "";
      if (v10)
      {
        v12 = v10;
      }

      __message_assert("%s:%u: failed assertion '%s' %s duplicate term id (%d)", "JHContentIndex.c", 5585, "0 == uint32_map_get(ctx->newTermIds, termId)", v12, v7);
      free(v11);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  v8 = *a5;

  return uint32_map_put(v8, v7, v6);
}

void _excCompactCleanup(uint64_t a1)
{
  storageClose(a1);
  bt_freeTrie(a1 + 4440);
  freePayload(a1 + 13976);
  freePayload(a1 + 9256);
  v2 = *(a1 + 4424);
  if (v2)
  {
    storageClose((v2 + 1));
    v3 = v2[550];
    if (v3)
    {
      CFRelease(v3);
    }

    free(v2);
    *(a1 + 4424) = 0;
  }

  v4 = *(a1 + 4432);
  if (v4)
  {
    IVFVectorIndex_s::~IVFVectorIndex_s((v4 + 8));
    MEMORY[0x1C691FEF0](v4, 0x1032C40E78FF076);
    *(a1 + 4432) = 0;
  }
}

uint64_t _excCompactMatch(uint64_t a1, unint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 248);
  if (v3 < 1)
  {
    goto LABEL_12;
  }

  v4 = (a1 + 272);
  v5 = 1;
  do
  {
    v6 = *v4;
    if (!*v4 || (v7 = v6[1], v7 + 1 < 2) || v7 > a2 || (v9 = v6[2], v7 - v9 + v6[3] <= a2))
    {
      v8 = 1;
      if (v5 >= v3)
      {
        break;
      }

      goto LABEL_6;
    }

    v8 = a2 - v7 + v9 == -1;
    if (v5 >= v3)
    {
      break;
    }

LABEL_6:
    ++v5;
    ++v4;
  }

  while (v8);
  if (!v8)
  {
    return 1;
  }

LABEL_12:
  v10 = *(a1 + 4456);
  if (v10 + 1 >= 2 && v10 <= a2)
  {
    v46 = *(a1 + 4480);
    if (v10 + v46 > a2)
    {
      v47 = *(a1 + 4552);
      v48 = "bases";
LABEL_70:
      log_map_access_error(a2, v10, v46, v48, v47);
      return 1;
    }
  }

  v10 = *(a1 + 4448);
  if (v10 + 1 >= 2 && v10 <= a2)
  {
    v46 = *(a1 + 4588);
    if (v10 + 1028 * v46 > a2)
    {
      v47 = *(a1 + 9016);
      v48 = "fat bases";
      goto LABEL_70;
    }
  }

  v13 = *(a1 + 4848);
  if (v13 < 1)
  {
    goto LABEL_33;
  }

  v14 = 1;
  v15 = (a1 + 4872);
  while (2)
  {
    v16 = *v15;
    if (!*v15 || (v17 = v16[1], v17 + 1 < 2) || v17 > a2 || (v19 = v16[2], v17 - v19 + v16[3] <= a2))
    {
      v18 = 1;
      if (v14 >= v13)
      {
        goto LABEL_32;
      }

LABEL_27:
      ++v14;
      ++v15;
      if (!v18)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  v18 = a2 - v17 + v19 == -1;
  if (v14 < v13)
  {
    goto LABEL_27;
  }

LABEL_32:
  if (!v18)
  {
    v35 = a2;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    *__str = 0u;
    v54 = 0u;
    v36 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", v13, *(a1 + 4824));
    if (*(a1 + 4848) >= 1 && v36 <= 0xFE)
    {
      v37 = 0;
      v38 = v36;
      v39 = 255 - v36;
      do
      {
        snprintf(&__str[v38], v39, "%d:(mem:%p so:%lld eo:%lld)", v37, *(*(a1 + 4872 + 8 * v37) + 8), *(*(a1 + 4872 + 8 * v37) + 16), *(*(a1 + 4872 + 8 * v37) + 24));
        ++v37;
      }

      while (v37 < *(a1 + 4848));
    }

    v40 = *(a1 + 4816);
    v41 = "flat\n";
    goto LABEL_76;
  }

LABEL_33:
  v20 = *(a1 + 9544);
  if (v20 < 1)
  {
    goto LABEL_44;
  }

  v21 = 1;
  v22 = (a1 + 9568);
  while (2)
  {
    v23 = *v22;
    if (!*v22 || (v24 = v23[1], v24 + 1 < 2) || v24 > a2 || (v26 = v23[2], v24 - v26 + v23[3] <= a2))
    {
      v25 = 1;
      if (v21 >= v20)
      {
        goto LABEL_43;
      }

LABEL_38:
      ++v21;
      ++v22;
      if (!v25)
      {
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

  v25 = a2 - v24 + v26 == -1;
  if (v21 < v20)
  {
    goto LABEL_38;
  }

LABEL_43:
  if (!v25)
  {
    v35 = a2;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    *__str = 0u;
    v54 = 0u;
    v42 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", v20, *(a1 + 9520));
    if (*(a1 + 9544) >= 1 && v42 <= 0xFE)
    {
      v43 = 0;
      v44 = v42;
      v45 = 255 - v42;
      do
      {
        snprintf(&__str[v44], v45, "%d:(mem:%p so:%lld eo:%lld)", v43, *(*(a1 + 9568 + 8 * v43) + 8), *(*(a1 + 9568 + 8 * v43) + 16), *(*(a1 + 9568 + 8 * v43) + 24));
        ++v43;
      }

      while (v43 < *(a1 + 9544));
    }

    v40 = *(a1 + 9512);
    v41 = "termIdStore\n";
    goto LABEL_76;
  }

LABEL_44:
  v27 = *(a1 + 14264);
  if (v27 < 1)
  {
    return 0;
  }

  v28 = 1;
  v29 = (a1 + 14288);
  while (2)
  {
    v30 = *v29;
    if (!*v29 || (v31 = v30[1], v31 + 1 < 2) || v31 > a2 || (v33 = v30[2], v31 - v33 + v30[3] <= a2))
    {
      v32 = 1;
      if (v28 >= v27)
      {
        goto LABEL_54;
      }

LABEL_49:
      ++v28;
      ++v29;
      if (!v32)
      {
        goto LABEL_54;
      }

      continue;
    }

    break;
  }

  v32 = a2 - v31 + v33 == -1;
  if (v28 < v27)
  {
    goto LABEL_49;
  }

LABEL_54:
  if (v32)
  {
    return 0;
  }

  v35 = a2;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  *__str = 0u;
  v54 = 0u;
  v49 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", v27, *(a1 + 14240));
  if (*(a1 + 14264) >= 1 && v49 <= 0xFE)
  {
    v50 = 0;
    v51 = v49;
    v52 = 255 - v49;
    do
    {
      snprintf(&__str[v51], v52, "%d:(mem:%p so:%lld eo:%lld)", v50, *(*(a1 + 14288 + 8 * v50) + 8), *(*(a1 + 14288 + 8 * v50) + 16), *(*(a1 + 14288 + 8 * v50) + 24));
      ++v50;
    }

    while (v50 < *(a1 + 14264));
  }

  v40 = *(a1 + 14232);
  v41 = "positions header table\n";
LABEL_76:
  log_map_access_error_mini(v41, v35, __str, v40);
  return 1;
}

void finalizePayloadData(uint64_t a1)
{
  v2 = *(a1 + 4496);
  if (v2 != -1)
  {
    _fd_release_fd(*(a1 + 4488), v2, 0, *(a1 + 4504));
    *(a1 + 4496) = -1;
  }

  fd_release(*(a1 + 4488));

  free(a1);
}

void _initPayload(char *a1, int a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    bzero(a1, 0x1270uLL);
    *(a1 + 1124) = -1;
    memset(&v3, 0, sizeof(v3));
    pthread_rwlockattr_init(&v3);
    pthread_rwlock_init((a1 + 4520), &v3);
    pthread_rwlockattr_destroy(&v3);
    bzero(a1 + 40, 0x1160uLL);
  }

  else
  {
    *(a1 + 1124) = -1;
    memset(&v3, 0, sizeof(v3));
    pthread_rwlockattr_init(&v3);
    pthread_rwlock_init((a1 + 4520), &v3);
    pthread_rwlockattr_destroy(&v3);
  }
}

BOOL initPayload(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6, void *a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = a1 + 4096;
  *(a1 + 4488) = a2;
  *(a1 + 256) = a3;
  *(a1 + 4517) = a5;
  v12 = *(a1 + 24);
  if (v12)
  {
    if (a4)
    {
LABEL_11:
      if (!a3)
      {
        return 1;
      }

      v15 = (a1 + 40);
      v16 = a3;
      v17 = 0;
      goto LABEL_26;
    }

    if (a5 && a2)
    {
      v13 = a4;
      *(a2 + 56) |= 4u;
      a2 = *(a1 + 4488);
      v12 = *(a1 + 24);
    }

    else
    {
      v13 = a4;
    }

    if (fd_truncate(a2, v12) != -1)
    {
      *(v11 + 420) = 1;
      a4 = v13;
      goto LABEL_11;
    }

    v19 = *__error();
    v20 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *__error();
      *v28 = 136315650;
      *&v28[4] = "initPayload";
      v29 = 1024;
      v30 = 122;
      v31 = 1024;
      v32 = v21;
LABEL_33:
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate err: %d", v28, 0x18u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if (a4)
  {
    return 0;
  }

  if (a5)
  {
    if (a2)
    {
      *(a2 + 56) |= 4u;
      v18 = *(a1 + 4488);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = a2;
  }

  *v28 = 0;
  v22 = _fd_acquire_fd(v18, v28);
  if (v22 != -1)
  {
    v23 = v22;
    v24 = _fd_ftruncate_guarded(v22, v28, 0);
    v25 = *__error();
    *(v18 + 56) &= ~2u;
    _fd_release_fd(v18, v23, 0, *v28);
    if (v24 == -1)
    {
      *__error() = v25;
    }
  }

  if (fd_truncate(*(a1 + 4488), 4096) == -1)
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v27 = *__error();
      *v28 = 136315650;
      *&v28[4] = "initPayload";
      v29 = 1024;
      v30 = 106;
      v31 = 1024;
      v32 = v27;
      goto LABEL_33;
    }

LABEL_30:
    v26 = __error();
    result = 0;
    *v26 = v19;
    return result;
  }

  *(v11 + 420) = 1;
  *a1 = xmmword_1C2BFA3E0;
  *(a1 + 24) = vdupq_n_s64(0x1000uLL);
  v15 = (a1 + 40);
  v16 = a3;
  v17 = 1;
  a4 = 0;
LABEL_26:

  return termIDStoreInit(v15, v16, v17, a4, a6, a7);
}

uint64_t freePayload(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(10);
  v4 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(a1 + 24);
    v6 = (*a1 + v5 - *(a1 + 8)) * 100.0 / v5;
    v10 = 134218240;
    v11 = v5 >> 10;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_1C278D000, v3, v4, "Payloads: %lluKB %f", &v10, 0x16u);
  }

  *__error() = v2;
  v7 = *(a1 + 4496);
  if (v7 != -1)
  {
    _fd_release_fd(*(a1 + 4488), v7, 0, *(a1 + 4504));
    *(a1 + 4496) = -1;
  }

  fd_release(*(a1 + 4488));
  *(a1 + 4488) = 0;
  storageClose(a1 + 40);
  storageClose(a1 + 40);
  v8 = *(a1 + 4480);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 4480) = 0;
  }

  *(a1 + 4464) = 0u;
  return pthread_rwlock_destroy((a1 + 4520));
}

uint64_t syncPayload(uint64_t a1)
{
  v2 = a1 + 4096;
  v3 = *(a1 + 4488);
  if (*(a1 + 4516) != 1)
  {
    if (_gSystemStatusBool == 1)
    {
      pthread_mutex_lock(&_gSystemStatusLock);
      if (_gSystemStatusBool == 1)
      {
        do
        {
          pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
        }

        while ((_gSystemStatusBool & 1) != 0);
      }

      pthread_mutex_unlock(&_gSystemStatusLock);
    }

    v17 = 0;
    v7 = _fd_acquire_fd(v3, &v17);
    if (v7 != -1)
    {
      v8 = v7;
      v9 = prot_fsync(v7, 0);
      _fd_release_fd(v3, v8, 0, v17);
      if (v9 != -1)
      {
        goto LABEL_19;
      }
    }

    return *__error();
  }

  v4 = *(a1 + 4517);
  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  v17 = 0;
  v5 = _fd_acquire_fd(v3, &v17);
  if (v5 == -1)
  {
    return *__error();
  }

  v6 = v4 && (*(v3 + 56) & 8) == 0;
  v10 = v5;
  v11 = prot_fsync(v5, v6);
  _fd_release_fd(v3, v10, 0, v17);
  if (v11 == -1)
  {
    return *__error();
  }

  *(v2 + 420) = 0;
LABEL_19:
  result = storageSyncPages(a1 + 40, a1 + 4464, *MEMORY[0x1E69E9AC8]);
  v13 = *(a1 + 256);
  if (v13)
  {
    v14 = result;
    if (_gSystemStatusBool == 1)
    {
      pthread_mutex_lock(&_gSystemStatusLock);
      if (_gSystemStatusBool == 1)
      {
        do
        {
          pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
        }

        while ((_gSystemStatusBool & 1) != 0);
      }

      pthread_mutex_unlock(&_gSystemStatusLock);
    }

    v17 = 0;
    v15 = _fd_acquire_fd(v13, &v17);
    if (v15 != -1)
    {
      v16 = v15;
      prot_fsync(v15, 0);
      _fd_release_fd(v13, v16, 0, v17);
    }

    return v14;
  }

  return result;
}

uint64_t expandPayload(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v3 = a3;
  v43 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  *(a1 + 24) = 2 * v6;
  *a1 = v6;
  *(a1 + 8) = 2 * v6;
  while (1)
  {
    v7 = *(a1 + 24);
    v8 = _fd_acquire_fd(*(a1 + 4488), (a1 + 4504));
    v9 = lseek(v8, 0, 2);
    if (v7 <= v9 || ci_preallocate(v8, v7 - v9) == -1)
    {
      v18 = fd_truncate(*(a1 + 4488), *(a1 + 24));
      _fd_release_fd(*(a1 + 4488), v8, 0, *(a1 + 4504));
      if (v18 != -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0;
      v11 = v7 - 1;
      v12 = "";
      v13 = 1;
      while (1)
      {
        while (1)
        {
          v14 = guarded_pwrite_np();
          if ((v14 & 0x8000000000000000) == 0)
          {
            break;
          }

          v15 = g_prot_error_callback;
          if (g_prot_error_callback)
          {
            v16 = __error();
            if ((*(v15 + 16))(v15, v8, *v16, 5))
            {
              continue;
            }
          }

          _fd_release_fd(*(a1 + 4488), v8, 0, *(a1 + 4504));
          v3 = a3;
          goto LABEL_15;
        }

        v10 += v14;
        v17 = v13 > v14;
        v13 -= v14;
        if (!v17)
        {
          break;
        }

        v12 += v14;
        v11 += v14;
      }

      _fd_release_fd(*(a1 + 4488), v8, 0, *(a1 + 4504));
      v20 = v10 == 1;
      v3 = a3;
      if (v20)
      {
LABEL_21:
        v19 = 0;
        *(a1 + 4516) = 1;
        return v19;
      }
    }

LABEL_15:
    v19 = *__error();
    if (!a2 || v19 != 28)
    {
      break;
    }

    if ((a2(v3) & 1) == 0)
    {
      v19 = 28;
      break;
    }
  }

  bzero(v42, 0x400uLL);
  v21 = *__error();
  v22 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v24 = *(a1 + 4488);
    *buf = 0;
    v25 = _fd_acquire_fd(v24, buf);
    v26 = 0;
    if (v25 != -1)
    {
      v26 = v42;
      v27 = v25;
      v28 = fcntl(v25, 50, v42);
      if (v42[0])
      {
        v29 = v28 < 0;
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        v26 = 0;
      }

      _fd_release_fd(v24, v27, 0, *buf);
    }

    v30 = "";
    if (v26)
    {
      v30 = v26;
    }

    v31 = *(a1 + 24);
    *buf = 136316162;
    *&buf[4] = "expandPayload";
    v34 = 1024;
    v35 = 212;
    v36 = 2080;
    v37 = v30;
    v38 = 2048;
    v39 = v31;
    v40 = 1024;
    v41 = v19;
    _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate(%s, %lld) err: %d", buf, 0x2Cu);
  }

  *__error() = v21;
  return v19;
}

void *PayloadWriteBufferInit(void *a1, void *a2)
{
  result = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  *a1 = result;
  if (!result)
  {
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHPayload.c", 240, "wb->buffer", v8);
    free(v7);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v5 = a2[1] - *a2;
  if (v5 >= 0x10000)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = v5;
  }

  a1[1] = 0x10000;
  a1[2] = v5;
  a1[3] = v5;
  a1[4] = 0;
  return result;
}

int *PayloadWriteBufferWrite(int *result, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(result + 2);
  v3 = *(result + 3);
  v4 = v2 - v3;
  if (v2 != v3)
  {
    if (a2[1] < *a2)
    {
      v22 = __si_assert_copy_extra_332();
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "JHPayload.c", 258, "pd->payloadIndex >= pd->payloadLimit", v24);
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

    v6 = result;
    v7 = _fd_acquire_fd(a2[561], a2 + 563);
    if (v7 == -1)
    {
      *(v6 + 4) = *__error();
      v17 = *__error();
      v18 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = *(v6 + 4);
        *buf = 136315650;
        v27 = "PayloadWriteBufferWrite";
        v28 = 1024;
        v29 = 262;
        v30 = 2048;
        v31 = v21;
        _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: open error; %ld", buf, 0x1Cu);
      }

      result = __error();
      *result = v17;
    }

    else
    {
      v8 = v7;
      v9 = *v6 + *(v6 + 3);
      v10 = a2[1];
      do
      {
        while (1)
        {
          v11 = guarded_pwrite_np();
          if ((v11 & 0x8000000000000000) != 0)
          {
            break;
          }

          v14 = v4 > v11;
          v4 -= v11;
          if (!v14)
          {
            goto LABEL_15;
          }

          v9 += v11;
          v10 += v11;
        }

        v12 = g_prot_error_callback;
        if (!g_prot_error_callback)
        {
          break;
        }

        v13 = __error();
      }

      while (((*(v12 + 16))(v12, v8, *v13, 5) & 1) != 0);
      *(v6 + 4) = *__error();
      v15 = *__error();
      v16 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v20 = *(v6 + 4);
        *buf = 136315650;
        v27 = "PayloadWriteBufferWrite";
        v28 = 1024;
        v29 = 266;
        v30 = 2048;
        v31 = v20;
        _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: pwrite error; %ld", buf, 0x1Cu);
      }

      *__error() = v15;
LABEL_15:
      result = _fd_release_fd(a2[561], v8, 0, a2[563]);
    }

    v19 = a2[1] - *a2;
    if (v19 >= *(v6 + 1))
    {
      v19 = *(v6 + 1);
    }

    else
    {
      v19 = v19;
    }

    *(v6 + 2) = v19;
    *(v6 + 3) = v19;
  }

  return result;
}

int *PayloadWritePulseHeader(int *result, void *a2, uint64_t a3, int a4)
{
  if (a3 && !*(result + 4))
  {
    v4 = a2[1];
    if ((v4 - *a2) <= 0x13)
    {
      v8 = __si_assert_copy_extra_332();
      v9 = v8;
      v10 = "";
      if (v8)
      {
        v10 = v8;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "JHPayload.c", 279, "pd->payloadIndex - pd->payloadLimit >= sizeof(PulseHeaderDisk)", v10);
      free(v9);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    LODWORD(v13) = -1;
    *(&v13 + 4) = a3;
    HIDWORD(v13) = a4;
    v14 = -1;
    v5 = *(result + 3);
    if (v5 < 21)
    {
      v11 = a2;
      v12 = result;
      _PayloadWriteData_3709(result, a2, &v13, 20);
      a2 = v11;
      result = v12;
    }

    else
    {
      a2[1] = v4 - 20;
      *(result + 3) = v5 - 20;
      v6 = *result + v5 - 20;
      v7 = v13;
      *(v6 + 16) = v14;
      *v6 = v7;
    }

    return PayloadWriteBufferWrite(result, a2);
  }

  return result;
}

int *_PayloadWriteData_3709(int *result, void *a2, char *a3, int64_t a4)
{
  v5 = result;
  v6 = &a3[a4];
  if (a4)
  {
    v7 = a4;
    do
    {
      if (*(v5 + 4))
      {
        break;
      }

      v9 = *(v5 + 3);
      if (v7 >= v9)
      {
        v10 = *(v5 + 3);
      }

      else
      {
        v10 = v7;
      }

      a2[1] -= v10;
      v11 = v9 - v10;
      *(v5 + 3) = v11;
      v6 -= v10;
      result = memcpy((*v5 + v11), v6, v10);
      if (!*(v5 + 3))
      {
        result = PayloadWriteBufferWrite(v5, a2);
      }

      v7 -= v10;
    }

    while (v7);
  }

  if (v6 != a3 && !*(v5 + 4))
  {
    v12 = __si_assert_copy_extra_332();
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHPayload.h", 146, "src == ptr || wb->err", v14);
    free(v13);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

uint64_t growPayloadData(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v20 = v1;
  v21 = v2;
  v4 = v3;
  v24 = *MEMORY[0x1E69E9840];
  bzero(v23, 0x1000uLL);
  v5 = *v4;
  v6 = v4[1] - *v4;
  for (i = _fd_acquire_fd(v4[561], v4 + 563); v6; v6 -= v22)
  {
    if (v6 >= 0x1000)
    {
      v8 = 4096;
    }

    else
    {
      v8 = v6;
    }

    v9 = v23;
    v22 = v8;
    v10 = v5;
    do
    {
      while (1)
      {
        v11 = guarded_pwrite_np();
        if ((v11 & 0x8000000000000000) != 0)
        {
          break;
        }

        v14 = v8 > v11;
        v8 -= v11;
        if (!v14)
        {
          goto LABEL_3;
        }

        v9 += v11;
        v10 += v11;
      }

      v12 = g_prot_error_callback;
      if (!g_prot_error_callback)
      {
        break;
      }

      v13 = __error();
    }

    while (((*(v12 + 16))(v12, i, *v13, 5) & 1) != 0);
LABEL_3:
    v5 += v22;
  }

  _fd_release_fd(v4[561], i, 0, v4[563]);
  if (v5 != v4[1])
  {
    v16 = __si_assert_copy_extra_332();
    v17 = v16;
    v18 = "";
    if (v16)
    {
      v18 = v16;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHPayload.c", 380, "pos == pd->payloadIndex", v18);
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

  return expandPayload(v4, v20, v21);
}

uint64_t compressPostings(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x1EEE9AC00](a1);
  v153 = v11;
  v154 = v10;
  v141 = v12;
  v14 = v13;
  v16 = v15;
  v151 = v17;
  v19 = v18;
  v21 = v20;
  v173 = *MEMORY[0x1E69E9840];
  v167 = 0;
  *v165 = 0u;
  v166 = 0u;
  v170 = 0uLL;
  v169 = 0x8000;
  v22 = malloc_type_malloc(0x8000uLL, 0x82ECAA0EuLL);
  v168 = v22;
  PayloadWriteBufferInit(v165, v21);
  v23 = *(v21 + 8);
  Current = CFAbsoluteTimeGetCurrent();
  v150 = v14;
  v25 = 0;
  if (v16)
  {
    v26 = *(v21 + 4456);
    v27 = (v14 + 24 * v16 - 8);
    v28 = v16;
    do
    {
      v30 = *(v27 - 4);
      if (v26 <= v30)
      {
        v29 = 0;
        v25 = (v25 + 1);
      }

      else
      {
        v29 = *storageResolvePtr(v21 + 40, 8 * v30, 8, 1);
      }

      *v27 = v29;
      v27 -= 3;
      --v28;
    }

    while (v28);
  }

  v31 = *__error();
  v32 = _SILogForLogForCategory(10);
  v33 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = CFAbsoluteTimeGetCurrent() - Current;
    *buf = 134217984;
    *&buf[4] = v34;
    _os_log_impl(&dword_1C278D000, v32, v33, "resolve term id offsets: %f", buf, 0xCu);
  }

  v35 = __error();
  *v35 = v31;
  if (v25)
  {
    si_analytics_log_3718(v35, v36, v37, v38, v39, v40, v41, v42, v25);
  }

  v43 = CFAbsoluteTimeGetCurrent();
  madvise(v154, 12 * v19, 3);
  v44 = *__error();
  v45 = _SILogForLogForCategory(10);
  v46 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v45, v46))
  {
    v47 = CFAbsoluteTimeGetCurrent() - v43;
    *buf = 134217984;
    *&buf[4] = v47;
    _os_log_impl(&dword_1C278D000, v45, v46, "make hot: %f", buf, 0xCu);
  }

  *__error() = v44;
  v48 = CFAbsoluteTimeGetCurrent();
  v164 = 0;
  *v162 = 0u;
  *v163 = 0u;
  v160 = 0u;
  *v161 = 0u;
  *v159 = 0u;
  LODWORD(v161[1]) = 16;
  v161[0] = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
  LODWORD(v162[1]) = 16;
  v162[0] = malloc_type_malloc(0x80uLL, 0x100004000313F17uLL);
  LODWORD(v163[1]) = 16;
  v49 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  v50 = 0;
  v149 = 0;
  v163[0] = v49;
  *v157 = 0u;
  v158 = 0u;
  v51 = v16 - 1;
  if (v16)
  {
    v52 = v150;
    v53 = v22;
    if (!v167)
    {
      v50 = 0;
      v54 = 0;
      while (1)
      {
        v55 = v52 + 24 * v50;
        v56 = *v55;
        v152 = *v55;
        if (v50 == v51)
        {
          break;
        }

        v56 = *(v55 + 24);
        if (v152 > v56)
        {
          break;
        }

        v149 = *(v55 + 24);
        v76 = 1;
        v77 = v23;
LABEL_114:
        if (++v50 < v16)
        {
          v23 = v77;
          if (v76)
          {
            continue;
          }
        }

        goto LABEL_122;
      }

      v149 = v56;
      v170 = xmmword_1C2BFA3F0;
      v57 = *(v55 + 8);
      v58 = *(v55 + 16);
      LODWORD(v159[1]) = 0;
      *&v160 = 0;
      v164 = 0;
      DWORD2(v160) = -1;
      v144 = v52 + 24 * v50;
      v145 = v50;
      if (*v57 >= 2u)
      {
        do
        {
          v66 = &v154[12 * (*v57 >> 1)];
          if (*v57 >= 2u)
          {
            _X28 = &v154[12 * (*v57 >> 1)];
          }

          else
          {
            _X28 = 0;
          }

          __asm { PRFM            #0, [X28] }

          if (*v57)
          {
            v74 = *(v57 + 1);
            if (*(v57 + 1) == 2)
            {
              v75 = 1;
            }

            else
            {
              v75 = 2;
            }

            checkChangeHolderIntegrity(v157);
            changesHandleUpdate(v157, v74, v75);
            if (v157[1] && !*(&v158 + 1))
            {
              *v157[0] = *(v157[0] + v158 - v157[1]);
              *(&v158 + 1) = 1;
            }

            checkChangeHolderIntegrity(v157);
          }

          else if (!v157[1] || (v73 = *(v57 + 2), (v73 + v151) > *v157[0]) || (merge_checkAgainstUpdates(v159, v157, v73, v151) & 1) == 0)
          {
            packContextAppend(v159, *(v57 + 2));
          }

          v57 = v66;
        }

        while (_X28);
        merge_checkAgainstUpdates1(v159, v157, v141, v151);
        v79 = packContextFinalize(v78);
        goto LABEL_70;
      }

      v59 = *(v57 + 4);
      if (*v57 == 1)
      {
        *&v170 = packUpdateLink(v53, v58, *(v57 + 4), *(v57 + 3));
        goto LABEL_69;
      }

      v60 = writeVInt64(v53, 20, 2 * v58);
      v61 = v59 >> 31;
      if (v59 == 1)
      {
        v62 = v61 | 1;
        v63 = v61 >> 28;
        if (v61 >> 28)
        {
          v85 = (v53 + v60);
          *v85 = v61 | 0x81;
          v85[1] = (v59 >> 38) | 0x80;
          v85[2] = (v59 >> 45) | 0x80;
          v85[3] = (v59 >> 52) | 0x80;
          v65 = v60 + 5;
          v85[4] = v63;
        }

        else if (v61 >= 0x200000)
        {
          v87 = (v53 + v60);
          *v87 = v61 | 0x81;
          v87[1] = (v59 >> 38) | 0x80;
          v87[2] = (v59 >> 45) | 0x80;
          v65 = v60 + 4;
          v87[3] = v59 >> 52;
        }

        else
        {
          v64 = (v53 + v60);
          if (v61 >= 0x4000)
          {
            *v64 = v61 | 0x81;
            v64[1] = (v59 >> 38) | 0x80;
            v65 = v60 + 3;
            v64[2] = v59 >> 45;
          }

          else if (v61 >= 0x80)
          {
            *v64 = v61 | 0x81;
            v65 = v60 + 2;
            v64[1] = v59 >> 38;
          }

          else
          {
            v65 = v60 + 1;
            *v64 = v62;
          }
        }

        goto LABEL_68;
      }

      v80 = v61 & 0xFE;
      v81 = v61 >> 28;
      if (!(v61 >> 28))
      {
        if (v61 >= 0x200000)
        {
          v88 = (v53 + v60);
          *v88 = v61 & 0x7E | 0x80;
          v88[1] = (v59 >> 38) | 0x80;
          v88[2] = (v59 >> 45) | 0x80;
          v83 = v60 + 4;
          v88[3] = v59 >> 52;
          v84 = v59 >> 28;
          if (v59 >> 28)
          {
            goto LABEL_67;
          }

          goto LABEL_59;
        }

        v82 = (v53 + v60);
        if (v61 >= 0x4000)
        {
          *v82 = v61 & 0x7E | 0x80;
          v82[1] = (v59 >> 38) | 0x80;
          v83 = v60 + 3;
          v82[2] = v59 >> 45;
          v84 = v59 >> 28;
          if (!(v59 >> 28))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v61 < 0x80)
          {
            v83 = v60 + 1;
            *v82 = v80;
            v84 = v59 >> 28;
            if (v59 >> 28)
            {
              goto LABEL_67;
            }

LABEL_59:
            if (v59 >= 0x200000)
            {
              v90 = (v53 + v83);
              *v90 = v59 | 0x80;
              v90[1] = (v59 >> 7) | 0x80;
              v90[2] = (v59 >> 14) | 0x80;
              v65 = v83 + 4;
              v90[3] = v59 >> 21;
            }

            else
            {
              v89 = (v53 + v83);
              if (v59 >= 0x4000)
              {
                *v89 = v59 | 0x80;
                v89[1] = (v59 >> 7) | 0x80;
                v65 = v83 + 3;
                v89[2] = v59 >> 14;
              }

              else if (v59 >= 0x80)
              {
                *v89 = v59 | 0x80;
                v65 = v83 + 2;
                v89[1] = v59 >> 7;
              }

              else
              {
                v65 = v83 + 1;
                *v89 = v59;
              }
            }

            goto LABEL_68;
          }

          *v82 = v61 & 0x7E | 0x80;
          v83 = v60 + 2;
          v82[1] = v59 >> 38;
          v84 = v59 >> 28;
          if (!(v59 >> 28))
          {
            goto LABEL_59;
          }
        }

LABEL_67:
        v91 = (v53 + v83);
        *v91 = v59 | 0x80;
        v91[1] = (v59 >> 7) | 0x80;
        v91[2] = (v59 >> 14) | 0x80;
        v91[3] = (v59 >> 21) | 0x80;
        v65 = v83 + 5;
        v91[4] = v84;
LABEL_68:
        *&v170 = v65;
LABEL_69:
        v79 = 20;
LABEL_70:
        v92 = v152 - v149;
        v93 = v168;
        if ((v152 - v149) >> 28)
        {
          *&v168[v79 - 4] = v92;
          LOBYTE(v92) = -16;
          v94 = -5;
        }

        else if (v92 >= 0x200000)
        {
          v95 = &v168[v79];
          *(v95 - 1) = bswap32(v92) >> 16;
          *(v95 - 3) = BYTE2(v92);
          v92 = HIBYTE(v92) | 0xFFFFFFE0;
          v94 = -4;
        }

        else if (v92 >= 0x4000)
        {
          *&v168[v79 - 2] = bswap32(v92) >> 16;
          v92 = HIWORD(v92) | 0xFFFFFFC0;
          v94 = -3;
        }

        else if (v92 >= 0x80)
        {
          v168[v79 - 1] = v92;
          v92 = (v92 >> 8) | 0xFFFFFF80;
          v94 = -2;
        }

        else
        {
          v94 = -1;
        }

        v143 = v94;
        v146 = v94 + v79;
        v147 = v93;
        v93[v94 + v79] = v92;
        __n = v170 - (v94 + v79);
        v97 = *v21;
        v96 = *(v21 + 8);
        v98 = v96 - *v21;
        if (__n + 20 <= v98)
        {
          v106 = *(&v166 + 1);
          ++v54;
          v77 = v23;
        }

        else
        {
          LOBYTE(v54) = v54 == 0;
          v77 = *(v21 + 8);
          while (1)
          {
            if ((v54 & 1) != 0 || v23 == v77)
            {
              goto LABEL_88;
            }

            if (v98 <= 0x13)
            {
              goto LABEL_147;
            }

            *&buf[4] = v23 - v77;
            v172 = -1;
            *buf = -1;
            *&buf[12] = v152;
            v99 = *(&v166 + 1);
            if (*(&v166 + 1) < 21)
            {
              _PayloadWriteData_3709(v165, v21, buf, 20);
            }

            else
            {
              *(v21 + 8) = v77 - 20;
              *(&v166 + 1) = v99 - 20;
              v100 = v165[0] + v99 - 20;
              v101 = v172;
              *v100 = *buf;
              *(v100 + 4) = v101;
            }

            PayloadWriteBufferWrite(v165, v21);
            v97 = *v21;
            v77 = *(v21 + 8);
            if (!v167)
            {
LABEL_88:
              bzero(buf, 0x1000uLL);
              v103 = v77 - v97;
              v104 = _fd_acquire_fd(*(v21 + 4488), (v21 + 4504));
              if (v77 != v97)
              {
                do
                {
                  if (v103 >= 0x1000)
                  {
                    v107 = 4096;
                  }

                  else
                  {
                    v107 = v103;
                  }

                  v108 = buf;
                  v109 = v107;
                  v110 = v97;
                  do
                  {
                    while (1)
                    {
                      v111 = guarded_pwrite_np();
                      if ((v111 & 0x8000000000000000) != 0)
                      {
                        break;
                      }

                      v114 = v109 > v111;
                      v109 -= v111;
                      if (!v114)
                      {
                        goto LABEL_96;
                      }

                      v108 += v111;
                      v110 += v111;
                    }

                    v112 = g_prot_error_callback;
                    if (!g_prot_error_callback)
                    {
                      break;
                    }

                    v113 = __error();
                  }

                  while (((*(v112 + 16))(v112, v104, *v113, 5) & 1) != 0);
LABEL_96:
                  v97 += v107;
                  v103 -= v107;
                }

                while (v103);
              }

              _fd_release_fd(*(v21 + 4488), v104, 0, *(v21 + 4504));
              if (v97 != *(v21 + 8))
              {
LABEL_147:
                v140 = __si_assert_copy_extra_332();
                __message_assert("%s:%u: failed assertion '%s' %s ");
                goto LABEL_148;
              }

              v105 = expandPayload(v21, v153, a10);
              v167 = v105;
              v97 = *v21;
              v77 = *(v21 + 8);
              v102 = v105 != 0;
            }

            else
            {
              v102 = 1;
            }

            v98 = v77 - v97;
            v106 = v165[1];
            if ((v77 - v97) < v165[1])
            {
              v106 = (v77 - v97);
            }

            *&v166 = v106;
            *(&v166 + 1) = v106;
            v54 = 1;
            if (__n + 20 <= v98)
            {
              break;
            }

            v23 = v77;
            v96 = v77;
            if (v102)
            {
              goto LABEL_111;
            }
          }

          v96 = v77;
        }

LABEL_111:
        if (v106 <= __n)
        {
          v53 = v147;
          _PayloadWriteData_3709(v165, v21, &v147[v146], __n);
        }

        else
        {
          *(v21 + 8) = v96 - __n;
          *(&v166 + 1) = v106 - __n;
          v53 = v147;
          memcpy(v165[0] + v106 - __n, &v147[v146], __n);
        }

        v52 = v150;
        *(v144 + 16) = *(v21 + 8) - v143;
        v76 = v167 == 0;
        v50 = v145;
        v51 = v16 - 1;
        goto LABEL_114;
      }

      v86 = (v53 + v60);
      *v86 = v61 & 0x7E | 0x80;
      v86[1] = (v59 >> 38) | 0x80;
      v86[2] = (v59 >> 45) | 0x80;
      v86[3] = (v59 >> 52) | 0x80;
      v83 = v60 + 5;
      v86[4] = v81;
      v84 = v59 >> 28;
      if (v59 >> 28)
      {
        goto LABEL_67;
      }

      goto LABEL_59;
    }

    v77 = v23;
  }

  else
  {
    v77 = v23;
    v53 = v22;
  }

LABEL_122:
  v148 = v53;
  v115 = v50;
  free(v159[0]);
  free(v161[0]);
  free(v162[0]);
  free(v163[0]);
  free(v157[0]);
  PayloadWritePulseHeader(v165, v21, v77 - *(v21 + 8), v149);
  v116 = *__error();
  v117 = _SILogForLogForCategory(10);
  v118 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v117, v118))
  {
    v119 = CFAbsoluteTimeGetCurrent() - v48;
    *buf = 134217984;
    *&buf[4] = v119;
    _os_log_impl(&dword_1C278D000, v117, v118, "write postings: %f", buf, 0xCu);
  }

  *__error() = v116;
  v120 = CFAbsoluteTimeGetCurrent();
  if (v115)
  {
    v121 = 0;
    v122 = 0;
    v123 = *MEMORY[0x1E695E480];
    v124 = MEMORY[0x1E69E9AC8];
    while (1)
    {
      v125 = (v150 + 24 * v121);
      v126 = *(v125 + 2);
      if (v126 >> 62)
      {
        break;
      }

      v127 = 8 * *v125;
      v128 = v127 / *v124;
      v129 = *(v21 + 4472);
      if (v129 <= v128)
      {
        if (v129)
        {
          v130 = *(v21 + 4472);
        }

        else
        {
          v130 = 32;
        }

        while (1)
        {
          v130 *= 2;
          if (v130 > v128)
          {
            break;
          }

          if (v130 <= v129)
          {
            goto LABEL_147;
          }
        }

        v156 = v127 / *v124;
        v131 = *(v21 + 4480);
        if (v131)
        {
          MutableCopy = CFBitVectorCreateMutableCopy(v123, v130, v131);
        }

        else
        {
          MutableCopy = CFBitVectorCreateMutable(v123, v130);
        }

        if (!MutableCopy)
        {
          goto LABEL_147;
        }

        v155 = MutableCopy;
        CFBitVectorSetCount(MutableCopy, v130);
        v133 = *(v21 + 4480);
        if (v133)
        {
          CFRelease(v133);
        }

        v128 = v156;
        *(v21 + 4480) = v155;
        *(v21 + 4472) = v130;
      }

      if (*(v21 + 4464) <= v128)
      {
        *(v21 + 4464) = v128 + 1;
      }

      CFBitVectorSetBitAtIndex(*(v21 + 4480), v128, 1u);
      *storageResolvePtr(v21 + 40, v127, 8, 1) = v126;
      v121 = ++v122;
      if (v115 <= v122)
      {
        goto LABEL_144;
      }
    }

    v140 = __si_assert_copy_extra_332();
    __message_assert("%s:%u: failed assertion '%s' %s write invalid offset %llu");
LABEL_148:
    free(v140);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

LABEL_144:
  v134 = *__error();
  v135 = _SILogForLogForCategory(10);
  v136 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v135, v136))
  {
    v137 = CFAbsoluteTimeGetCurrent() - v120;
    *buf = 134217984;
    *&buf[4] = v137;
    _os_log_impl(&dword_1C278D000, v135, v136, "update term id offsets: %f", buf, 0xCu);
  }

  *__error() = v134;
  v138 = v167;
  free(v165[0]);
  free(v148);
  return v138;
}

void si_analytics_log_3718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, "%u term ids out of range", va);
  SISetCrashCStr(v8[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v10 = v8[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
  }

  free(v8[0]);
}

uint64_t packUpdateLink(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = writeVInt64(a1, 20, 2 * a2);
  v8 = writeVInt64(a1, v7, 2 * __PAIR64__(a4, HIDWORD(a3)));
  *(a1 + v8) = 0;
  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  *(a1 + v8 + 1) = v9;
  return v8 + 2;
}

xpc_object_t __analytics_log_large_index_find_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "NodeCount", v1);
  if (*v2)
  {
    Length = CFStringGetLength(*v2);
    xpc_dictionary_set_uint64(empty, "UserQueryLength", Length);
  }

  if (*(v2 + 8))
  {
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(empty, "ClientBundleIdentifier", v5);
    xpc_release(v5);
  }

  if (*(v2 + 16))
  {
    string = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    _db_render_query_tree(v6);
    if (v7)
    {
      xpc_dictionary_set_string(empty, "QueryNodes", string);
    }

    free(string);
  }

  return empty;
}

uint64_t compareDMs(uint64_t a1)
{
  result = data_map_double_count(a1);
  if (result)
  {
    v3 = result;
    for (i = 1; i <= v3; ++i)
    {
      v5 = 0;
      result = data_map_double_get_data(a1, i, &v5);
    }
  }

  return result;
}

unint64_t data_map_double_count(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 432))
  {
    pthread_rwlock_wrlock((a1 + 224));
  }

  else
  {
    pthread_rwlock_rdlock((a1 + 224));
  }

  v2 = data_map_count(*(a1 + 440));
  v3 = (*(**(a1 + 448) + 96))(*(a1 + 448));
  pthread_rwlock_unlock((a1 + 224));
  if (*(a1 + 432) == 1)
  {
    if (v2 != v3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
        v18 = 1024;
        *v19 = 281;
        *&v19[4] = 2080;
        *&v19[6] = "data_map_double_count";
        v20 = 2080;
        v21 = "output == output_new";
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v17 = v2;
        v18 = 2048;
        *v19 = v3;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      }

      v4 = __si_assert_copy_extra_332();
      v5 = v4;
      v6 = "";
      if (v4)
      {
        v6 = v4;
      }

      __message_assert(v4, "data_map_double.m", 281, "output == output_new", v6);
      goto LABEL_13;
    }
  }

  else if (v2 != v3)
  {
    v8 = (a1 + 224);
    if (v2 >= v3)
    {
      pthread_rwlock_wrlock(v8);
      v11 = (*(**(a1 + 448) + 96))(*(a1 + 448));
      if (v2 <= v11)
      {
        pthread_rwlock_unlock((a1 + 224));
        return v2;
      }

      v13 = v11;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
        v18 = 1024;
        *v19 = 291;
        *&v19[4] = 2080;
        *&v19[6] = "data_map_double_count";
        v20 = 2080;
        v21 = "output <= output_new";
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v17 = v2;
        v18 = 2048;
        *v19 = v13;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu > %llu\n", buf, 0x16u);
      }

      v14 = __si_assert_copy_extra_332();
      v5 = v14;
      v15 = "";
      if (v14)
      {
        v15 = v14;
      }

      __message_assert(v14, "data_map_double.m", 291, "output <= output_new", v15);
    }

    else
    {
      pthread_rwlock_rdlock(v8);
      v2 = data_map_count(*(a1 + 440));
      pthread_rwlock_unlock((a1 + 224));
      if (v2 >= v3)
      {
        return v2;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
        v18 = 1024;
        *v19 = 287;
        *&v19[4] = 2080;
        *&v19[6] = "data_map_double_count";
        v20 = 2080;
        v21 = "output >= output_new";
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v17 = v2;
        v18 = 2048;
        *v19 = v3;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu < %llu\n", buf, 0x16u);
      }

      v9 = __si_assert_copy_extra_332();
      v5 = v9;
      v10 = "";
      if (v9)
      {
        v10 = v9;
      }

      __message_assert(v9, "data_map_double.m", 287, "output >= output_new", v10);
    }

LABEL_13:
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

  return v2;
}

const void *data_map_double_get_data(uint64_t a1, uint64_t a2, size_t *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 432))
  {
    pthread_rwlock_wrlock((a1 + 224));
  }

  else
  {
    pthread_rwlock_rdlock((a1 + 224));
  }

  data = data_map_get_data(*(a1 + 440));
  v18 = 0;
  v7 = (*(**(a1 + 448) + 192))(*(a1 + 448), a2, &v18);
  pthread_rwlock_unlock((a1 + 224));
  v8 = *a3;
  v9 = v18;
  if (*a3 != v18)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
      v21 = 1024;
      *v22 = 452;
      *&v22[4] = 2080;
      *&v22[6] = "data_map_double_get_data";
      v23 = 2080;
      v24 = "*out_data_size == size_new";
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      v8 = *a3;
      v9 = v18;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v20 = v8;
      v21 = 2048;
      *v22 = v9;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      v8 = *a3;
      v9 = v18;
    }

    v10 = v8 == v9;
    v8 = v9;
    if (!v10)
    {
      v15 = __si_assert_copy_extra_332();
      v13 = v15;
      v16 = "";
      if (v15)
      {
        v16 = v15;
      }

      __message_assert(v15, "data_map_double.m", 452, "*out_data_size == size_new", v16);
      goto LABEL_23;
    }
  }

  if (v8 >= 1)
  {
    if (memcmp(data, v7, v8) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "assertion failed", buf, 2u);
      v8 = *a3;
    }

    if (memcmp(data, v7, v8))
    {
      v12 = __si_assert_copy_extra_332();
      v13 = v12;
      v14 = "";
      if (v12)
      {
        v14 = v12;
      }

      __message_assert(v12, "data_map_double.m", 454, "memcmp(output, output_new, *out_data_size) == 0", v14);
LABEL_23:
      free(v13);
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
  }

  return data;
}

id validate_ids(unsigned int *a1, int a2, unsigned int *a3, int a4)
{
  LODWORD(v4) = a4;
  LODWORD(v6) = a2;
  v24 = *MEMORY[0x1E69E9840];
  result = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = result;
  if (v6)
  {
    v6 = v6;
    do
    {
      v10 = *a1++;
      result = [v9 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v10)}];
      --v6;
    }

    while (v6);
  }

  if (v4)
  {
    v4 = v4;
    do
    {
      v11 = *a3++;
      result = [v9 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v11)}];
      if ((result & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v17 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v18 = 1024;
          v19 = 356;
          v20 = 2080;
          v21 = "validate_ids";
          v22 = 2080;
          v23 = "0";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: missing id\n", buf, 2u);
        }

        v12 = __si_assert_copy_extra_332();
        v13 = v12;
        v14 = "";
        if (v12)
        {
          v14 = v12;
        }

        __message_assert(v12, "data_map_double.m", 356, "0", v14);
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

      --v4;
    }

    while (v4);
  }

  return result;
}

BOOL SIStringContainsNewlineCharacters(UniChar *a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 < 1)
    {
      return 0;
    }

    else
    {
      v5 = 1;
      v6 = a2;
      v7 = 1;
      do
      {
        v8 = *a1;
        if (v8 == 9 || v8 == 8200)
        {
          break;
        }

        if (v8 == 12288)
        {
          break;
        }

        Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
        if (CFCharacterSetIsCharacterMember(Predefined, *a1))
        {
          break;
        }

        v7 = v5 < a2;
        ++a1;
        ++v5;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  return result;
}

__int128 *L1RankQueuePop(__int128 *result, void *a2)
{
  v119 = *MEMORY[0x1E69E9840];
  v2 = a2[2];
  if (v2 != 1)
  {
    v3 = *a2;
    v70 = *(*a2 + 112);
    v71 = *(*a2 + 128);
    v72 = *(*a2 + 144);
    v68 = *(*a2 + 80);
    v69 = *(*a2 + 96);
    v4 = *a2 + 80 * v2;
    v5 = *(v4 - 80);
    v6 = *(v4 - 72);
    v77 = *(v4 - 64);
    v79 = *(v4 - 48);
    v7 = *(v4 - 32);
    v8 = *(v4 - 28);
    v9 = *(v4 - 24);
    v10 = *(v4 - 20);
    v11 = *(v4 - 16);
    v12 = *(v4 - 12);
    v13 = *(v4 - 11);
    v14 = *(v4 - 10);
    LOWORD(v4) = *(v4 - 2);
    *(v3 + 96) = v77;
    *(v3 + 112) = v79;
    v73 = v11;
    v75 = v12;
    v113 = v14;
    v114 = v4;
    *(v3 + 80) = v5;
    *(v3 + 88) = v6;
    *(v3 + 128) = v7;
    *(v3 + 132) = v8;
    *(v3 + 136) = v9;
    *(v3 + 140) = v10;
    *(v3 + 148) = v12;
    *(v3 + 144) = v11;
    *(v3 + 149) = v13;
    *(v3 + 158) = v114;
    *(v3 + 150) = v14;
    v15 = a2[1];
    v16 = a2[2];
    a2[2] = v16 - 1;
    v67 = v15 >> 1;
    v109 = v11;
    v110 = v12;
    v117 = v14;
    v17 = 3;
    v118 = v114;
    v18 = 2;
    v19 = 1;
    v111 = v77;
    v112 = v79;
    while (1)
    {
      v20 = *a2;
      v21 = *a2 + 80 * v18;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 48);
      v25 = *(v21 + 52);
      v26 = *(v21 + 56);
      v27 = *(v21 + 60);
      v28 = *(v21 + 69);
      v29 = *a2 + 80 * v17;
      v31 = *v29;
      v30 = *(v29 + 8);
      v32 = *(v29 + 32);
      v107 = *(v29 + 16);
      v108 = v32;
      v33 = *(v29 + 48);
      v34 = *(v29 + 52);
      v35 = *(v29 + 56);
      v36 = *(v29 + 60);
      v105 = *(v29 + 64);
      v106 = *(v29 + 68);
      v37 = *(v29 + 69);
      v38 = *(v29 + 70);
      v116 = *(v29 + 78);
      v115 = v38;
      if (v17 >= v16)
      {
        v107 = xmmword_1C2BF6D40;
        v108 = unk_1C2BF6D50;
        v105 = 0;
        v106 = 0;
        v115 = 0;
        v116 = 0;
        if (v18 >= v16)
        {
          goto LABEL_3;
        }

        v33 = 0;
        v35 = 0;
        v37 = 0;
        v31 = -1;
        v36 = 0.0;
        v34 = 3.4028e38;
        v30 = -1;
      }

      v93[0] = v5;
      v93[1] = v6;
      v94 = v77;
      v95 = v79;
      v96 = v7;
      v97 = v8;
      v98 = v9;
      v99 = v10;
      v100 = v73;
      v101 = v75;
      v102 = v13;
      v103 = v113;
      v104 = v114;
      v81[0] = v31;
      v81[1] = v30;
      v82 = v107;
      v83 = v108;
      v84 = v33;
      v85 = v34;
      v86 = v35;
      v87 = v36;
      v88 = v105;
      v89 = v106;
      v90 = v37;
      v92 = v116;
      v91 = v115;
      if (v28)
      {
        if (v27 < v10)
        {
          goto LABEL_19;
        }

        if (v27 != v10)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (__PAIR128__(v23, v22) < __PAIR128__(v6, v5))
        {
          goto LABEL_19;
        }

        if (v23 != v6 || v22 != v5)
        {
LABEL_38:
          v60 = v13;
          v61 = v9;
          v62 = v7;
          v63 = v6;
          v64 = v5;
          v65 = a2;
          v66 = result;
          if (!ci_rankingbits_wrapped_s::operator<(v81, v93))
          {
            _X8 = v20 + 160 * v19;
            __asm { PRFM            #1, [X8] }

            result = v66;
            goto LABEL_3;
          }

          v42 = &v115;
          v41 = &v105;
          v40 = &v107;
          v28 = v37;
          v27 = v36;
          v26 = v35;
          v25 = v34;
          v24 = v33;
          v22 = v31;
          v23 = v30;
          v18 = v17;
          a2 = v65;
          result = v66;
          v6 = v63;
          v5 = v64;
          v9 = v61;
          v7 = v62;
          v13 = v60;
          goto LABEL_33;
        }
      }

      if (v25 >= v8 && (v25 != v8 || v24 <= v7))
      {
        goto LABEL_38;
      }

LABEL_19:
      v40 = (v21 + 16);
      v41 = (v21 + 64);
      v42 = (v21 + 70);
      if ((v37 & 1) == 0)
      {
        if (__PAIR128__(v30, v31) >= __PAIR128__(v23, v22))
        {
          if (v30 != v23 || v31 != v22)
          {
            goto LABEL_33;
          }

LABEL_29:
          if (v34 >= v25 && (v34 != v25 || v33 <= v24))
          {
            goto LABEL_33;
          }
        }

LABEL_32:
        v42 = &v115;
        v41 = &v105;
        v40 = &v107;
        v28 = v37;
        v27 = v36;
        v26 = v35;
        v25 = v34;
        v24 = v33;
        v22 = v31;
        v23 = v30;
        v18 = v17;
        goto LABEL_33;
      }

      if (v36 < v27)
      {
        goto LABEL_32;
      }

      if (v36 == v27)
      {
        goto LABEL_29;
      }

LABEL_33:
      v78 = *v40;
      v80 = v40[1];
      v74 = *v41;
      v76 = *(v41 + 4);
      v113 = *v42;
      v114 = *(v42 + 4);
      _X14 = v20 + 160 * v18;
      __asm { PRFM            #1, [X14] }

      if (v18 != v19)
      {
        v49 = v20 + 80 * v18;
        *v49 = v5;
        *(v49 + 8) = v6;
        v50 = v112;
        v51 = v111;
        v52 = v112;
        *(v49 + 16) = v111;
        *(v49 + 32) = v50;
        *(v49 + 48) = v7;
        *(v49 + 52) = v8;
        *(v49 + 56) = v9;
        *(v49 + 60) = v10;
        v53 = v109;
        *(v49 + 64) = v109;
        *(v49 + 68) = v110;
        *(v49 + 69) = v13;
        *(v49 + 78) = v118;
        v54 = v117;
        *(v49 + 70) = v117;
        v55 = *a2 + 80 * v19;
        *(v55 + 16) = v78;
        *(v55 + 32) = v80;
        *(v55 + 52) = v25;
        v19 = v18;
        v17 = (2 * v18) | 1;
        *v55 = v22;
        *(v55 + 8) = v23;
        *(v55 + 48) = v24;
        *(v55 + 56) = v26;
        *(v55 + 60) = v27;
        *(v55 + 64) = v74;
        *(v55 + 68) = v76;
        *(v55 + 69) = v28;
        v56 = v113;
        *(v55 + 78) = v114;
        *(v55 + 70) = v56;
        v77 = v51;
        v79 = v52;
        v75 = v110;
        v73 = v53;
        v114 = v118;
        v113 = v54;
        v57 = v18 < v67;
        v18 *= 2;
        if (v57)
        {
          continue;
        }
      }

      goto LABEL_3;
    }
  }

  v70 = xmmword_1C2BF6DA0;
  v71 = unk_1C2BF6DB0;
  v72 = xmmword_1C2BF6DC0;
  v68 = ZERO_RANKING_WRAPPED_BITS;
  v69 = *algn_1C2BF6D90;
LABEL_3:
  result[2] = v70;
  result[3] = v71;
  result[4] = v72;
  *result = v68;
  result[1] = v69;
  return result;
}

BOOL ci_rankingbits_wrapped_s::operator<(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 69) != 1)
  {
    if (*a1 >= *a2)
    {
      if (*(a1 + 8) != *(a2 + 8) || *a1 != *a2)
      {
        return 0;
      }

      goto LABEL_11;
    }

    return 1;
  }

  v2 = *(a1 + 60);
  v3 = *(a2 + 60);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

LABEL_11:
  v5 = *(a1 + 52);
  v6 = *(a2 + 52);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 == v6)
  {
    return *(a1 + 48) > *(a2 + 48);
  }

  return 0;
}

_DWORD *container_table_create(unsigned int a1)
{
  v2 = malloc_type_zone_malloc(queryZone, 80 * a1 + 16, 0xA4971684uLL);
  if (!v2)
  {
    _log_fault_for_malloc_failure();
  }

  *v2 = a1;
  if (a1)
  {
    v3 = a1;
    v4 = v2 + 4;
    do
    {
      v4[2] = xmmword_1C2C00670;
      v4[3] = unk_1C2C00680;
      v4[4] = xmmword_1C2C00690;
      *v4 = ZERO_RANKING_BITS;
      v4[1] = unk_1C2C00660;
      v4 += 5;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t container_fetch_table_check_and_insert(_DWORD *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = &a1[40 * ((*(a2 + 56) - 1) % *a1)];
  v5 = *(v2 + 2);
  v3 = (v2 + 4);
  v4 = v5;
  v6 = *(v3 + 12);
  v7 = v3[13];
  v8 = v3[15];
  v9 = *(a2 + 48);
  v10 = *(a2 + 52);
  v11 = *(a2 + 60);
  if (*(v3 + 69) & 1) != 0 || (*(a2 + 69))
  {
    if (v11 == v8)
    {
      if (v10 > v7)
      {
        goto LABEL_29;
      }

      if (v10 == v7 && v9 < v6)
      {
        goto LABEL_29;
      }
    }

    v13 = v11 != 100.0;
    if (v11 <= v8)
    {
      v13 = v8 == 100.0;
    }

    if (v13)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v14 = *(v3 + 1);
    if (__PAIR128__(v14, v4) < *a2)
    {
      goto LABEL_29;
    }

    if (*(a2 + 8) == v14 && *a2 == v4)
    {
      if (v10 > v7)
      {
        goto LABEL_29;
      }

      if (v10 == v7 && v9 < v6)
      {
        goto LABEL_29;
      }
    }
  }

  if (*(v3 + 14))
  {
    return 0;
  }

LABEL_29:
  v18 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 1) = v18;
  v19 = *(a2 + 32);
  v20 = *(a2 + 48);
  v21 = *(a2 + 80);
  *(v3 + 4) = *(a2 + 64);
  *(v3 + 5) = v21;
  *(v3 + 2) = v19;
  *(v3 + 3) = v20;
  v22 = *(a2 + 96);
  v23 = *(a2 + 112);
  v24 = *(a2 + 144);
  *(v3 + 8) = *(a2 + 128);
  *(v3 + 9) = v24;
  *(v3 + 6) = v22;
  *(v3 + 7) = v23;
  return 1;
}

_DWORD *container_fetch_table_create(unsigned int a1)
{
  v2 = malloc_type_zone_malloc(queryZone, (160 * a1) | 0x10, 0xA4971684uLL);
  if (!v2)
  {
    _log_fault_for_malloc_failure();
  }

  *v2 = a1;
  if (a1)
  {
    v3 = a1;
    v4 = v2 + 4;
    do
    {
      v4[6] = xmmword_1C2BFF380;
      v4[7] = unk_1C2BFF390;
      v4[8] = xmmword_1C2BFF3A0;
      v4[9] = unk_1C2BFF3B0;
      v4[2] = xmmword_1C2BFF340;
      v4[3] = unk_1C2BFF350;
      v4[4] = xmmword_1C2BFF360;
      v4[5] = unk_1C2BFF370;
      *v4 = ZERO_FETCHINFO;
      v4[1] = *algn_1C2BFF330;
      v4 += 10;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t container_fetch_table_q2_check_and_insert(_DWORD *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = &a1[40 * ((*(a2 + 56) - 1) % *a1)];
  v3 = (v2 + 4);
  v6 = v2 + 8;
  v5 = *(v2 + 4);
  v4 = *(v6 + 1);
  if (__PAIR128__(v4, v5) >= *(a2 + 16))
  {
    v7 = v4 == *(a2 + 24) && v5 == *(a2 + 16);
    if ((!v7 || v3[13] != *(a2 + 52) || *(v3 + 12) <= *(a2 + 48)) && *(v3 + 14))
    {
      return 0;
    }
  }

  v9 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 1) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  *(v3 + 4) = *(a2 + 64);
  *(v3 + 5) = v12;
  *(v3 + 2) = v10;
  *(v3 + 3) = v11;
  v13 = *(a2 + 96);
  v14 = *(a2 + 112);
  v15 = *(a2 + 128);
  *(v3 + 144) = *(a2 + 144);
  *(v3 + 7) = v14;
  *(v3 + 8) = v15;
  *(v3 + 6) = v13;
  return 1;
}

_DWORD *container_fetch_table_q2_create(unsigned int a1)
{
  v2 = malloc_type_zone_malloc(queryZone, (160 * a1) | 0x10, 0xA4971684uLL);
  if (!v2)
  {
    _log_fault_for_malloc_failure();
  }

  *v2 = a1;
  if (a1)
  {
    v3 = a1;
    v4 = v2 + 4;
    do
    {
      *(v4 + 144) = 0;
      *(v4 + 6) = xmmword_1C2BF6C10;
      *(v4 + 7) = unk_1C2BF6C20;
      *(v4 + 8) = xmmword_1C2BF6C30;
      *(v4 + 2) = xmmword_1C2BF6BD0;
      *(v4 + 3) = unk_1C2BF6BE0;
      *(v4 + 4) = xmmword_1C2BF6BF0;
      *(v4 + 5) = unk_1C2BF6C00;
      *v4 = ZERO_FETCHINFO_Q2;
      *(v4 + 1) = unk_1C2BF6BC0;
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return v2;
}

void *closeMF(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  fd_release(*(a1 + 96));
  *(a1 + 96) = 0;
  v2 = *__error();
  v3 = _SILogForLogForCategory(10);
  v4 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 16) * 100.0 / v5;
    v8 = 134218240;
    v9 = v5 >> 10;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1C278D000, v3, v4, "Memsize: %luKB %f%% used", &v8, 0x16u);
  }

  *__error() = v2;
  result = *a1;
  if ((*a1 + 1) >= 2)
  {
    result = munmap(result, *(a1 + 24));
    *a1 = 0;
  }

  return result;
}

uint64_t mfree(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v3 = *(a3 + 2);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    v6 = ((v5 ^ (v5 - 1)) <= v5 - 1) - __clz(v5) + 28;
  }

  else
  {
    v6 = 0;
  }

  if ((8 << v6) + result == a3[2])
  {
    a3[2] = result;
  }

  else
  {
    v7 = *a3;
    if (*(a3 + 28) < v6)
    {
      *(a3 + 28) = v6;
    }

    v8 = a3 + 4 * v6;
    *(v7 + result) = *(v8 + 8);
    *(v8 + 8) = result;
  }

  return result;
}

uint64_t mmalloc(unsigned int a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v7 = *(a2 + 8);
  if (a1 <= v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = (((a1 - v7) ^ (a1 - v7 - 1)) <= a1 - v7 - 1) - __clz(a1 - v7);
    if (v8 <= -31)
    {
      v9 = 31;
    }

    else
    {
      v9 = 28;
    }

    v10 = v9 + v8;
  }

  v11 = *(a2 + 32 + 4 * v10);
  if (v11)
  {
    v12 = *(*a2 + v11);
    *(a2 + 32 + 4 * v10) = v12;
    v22[0] = v12;
    v22[1] = 0x2000;
    fd_read_advise(*(a2 + 96), v22);
  }

  else
  {
    v13 = takeBuddyPage(a2, v10);
    if (v13)
    {
      return v13;
    }

    else
    {
      if (!*(a2 + 96))
      {
        v18 = __si_assert_copy_extra_332();
        v19 = v18;
        v20 = "";
        if (v18)
        {
          v20 = v18;
        }

        __message_assert("%s:%u: failed assertion '%s' %s NULL file reference", "MFMalloc.c", 311, "m->fdPtr", v20);
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

      v11 = *(a2 + 16);
      v14 = *(a2 + 24);
      if (v11 + v7 + (16 << v10) + 8 >= v14)
      {
        while (1)
        {
          v22[0] = 0;
          v16 = expandUnsafeMapNew(a2, *(a2 + 96), v14, 1uLL, v22, a3, a4);
          if (v16)
          {
            break;
          }

          v17 = v22[0];
          *(a2 + 24) = v22[0];
          madvise(*a2, v17, *(a2 + 104));
          v11 = *(a2 + 16);
          v14 = *(a2 + 24);
          if (v11 + v7 + (16 << v10) + 8 < v14)
          {
            goto LABEL_13;
          }
        }

        v11 = 0;
        *__error() = v16;
      }

      else
      {
LABEL_13:
        *(a2 + 16) = v7 + (8 << v10) + v11;
      }
    }
  }

  return v11;
}

uint64_t takeBuddyPage(uint64_t *a1, unsigned int a2)
{
  if (a2 > 0xE)
  {
    return 0;
  }

  if (*(a1 + 2) || *(a1 + 28) <= a2)
  {
    return 0;
  }

  v5 = a1 + 4;
  v6 = a2 + 1;
  result = *(a1 + v6 + 8);
  v7 = 8 << a2;
  if (result)
  {
    v8 = *a1;
    *(v5 + v6) = *(*a1 + result);
    *(v5 + a2) = result + v7;
    *(v8 + (result + v7)) = 0;
  }

  else
  {
    result = takeBuddyPage(a1, v6);
    if (result)
    {
      *(v5 + a2) = result + v7;
      *(*a1 + (result + v7)) = 0;
    }

    else
    {
      *(a1 + 28) = a2;
    }
  }

  return result;
}

uint64_t restoreVInt32_3928(char **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((**a1 & 0x80000000) == 0)
  {
    v3 = 1;
    goto LABEL_10;
  }

  v4 = v1[1];
  if ((v1[1] & 0x80000000) == 0)
  {
    v2 = v2 & 0x7F | (v4 << 7);
    v3 = 2;
    goto LABEL_10;
  }

  v5 = v1[2];
  if ((v1[2] & 0x80000000) == 0)
  {
    v6 = ((v4 & 0x7F) << 7) | (v5 << 14) | (v2 & 0x7F);
    v3 = 3;
LABEL_9:
    v2 = v6;
    goto LABEL_10;
  }

  v7 = v1[3];
  if ((v1[3] & 0x80000000) == 0)
  {
    v6 = ((v5 & 0x7F) << 14) | (v7 << 21) | ((v4 & 0x7F) << 7) | (v2 & 0x7F);
    v3 = 4;
    goto LABEL_9;
  }

  v9 = v1[4];
  if (v9 < 0)
  {
    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v13);
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

  v10 = ((v7 & 0x7F) << 21) | (v9 << 28) | ((v5 & 0x7F) << 14) | ((v4 & 0x7F) << 7) | (v2 & 0x7F);
  v3 = 5;
  v2 = v10;
LABEL_10:
  *a1 = &v1[v3];
  return v2;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1C691FE80](a1 + 112);
  return a1;
}

{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::__emplace_unique_key_args<long,long const&>(float *a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
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
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
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

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }
}

int *logLLMContext(int *result, unsigned __int16 *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    v4 = *__error();
    v5 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *v3;
      v6 = *(v3 + 1);
      v8 = *a2;
      v9 = v8 & 1;
      v10 = (v8 >> 1) & 1;
      v11 = (v8 >> 2) & 1;
      v12 = (v8 >> 3) & 1;
      v13 = (v8 >> 4) & 1;
      v14 = (v8 >> 5) & 1;
      v15 = (v8 >> 6) & 1;
      v16 = (v8 >> 7) & 1;
      v17 = (v8 >> 8) & 1;
      v18 = (v8 >> 9) & 1;
      v19 = (v8 >> 10) & 1;
      v20 = *(a2 + 31);
      if (v20 < 0)
      {
        v20 = *(a2 + 2);
      }

      v21 = *(a2 + 7);
      v22 = 134221570;
      v23 = v7;
      v24 = 2080;
      v25 = v6;
      v26 = 1024;
      v27 = v9;
      v28 = 1024;
      v29 = v10;
      v30 = 1024;
      v31 = v11;
      v32 = 1024;
      v33 = v12;
      v34 = 1024;
      v35 = v13;
      v36 = 1024;
      v37 = v14;
      v38 = 1024;
      v39 = v15;
      v40 = 1024;
      v41 = v16;
      v42 = 1024;
      v43 = v17;
      v44 = 1024;
      v45 = v18;
      v46 = 1024;
      v47 = v19;
      v48 = 2048;
      v49 = v20;
      v50 = 2048;
      v51 = v21;
      _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Context:\n\thasAllOptionalArgs=%d,\n\thasAllTemporalArgs=%d,\n\thasSearchTerm=%d,\n\thasNonOptionalSearchTerm=%d,\n\thasOnlyOptionalSearchTerms=%d,\n\thasContactEntityType=%d,\n\thasStrictContactEntityType=%d,\n\trevisedTimeFilter=%d,\n\tskipSelf=%d,\n\thasPersonOrSelfArg=%d,\n\thasEntityTypeDocument=%d,\n\textraDescription=%ld\n\t#eligibleIdx=%ld,", &v22, 0x6Cu);
    }

    result = __error();
    *result = v4;
  }

  return result;
}

void __si_indexingWatchdogInit_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 105) & 1) == 0 && (*(v1 + 16) & 1) == 0)
  {
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (!SIIsAppleInternal_internal || (v3 = getpid(), bzero(buf, 0x288uLL), *v33 = 0xE00000001, v34 = 1, v35 = v3, v32 = 648, sysctl(v33, 4u, buf, &v32, 0, 0)) || (v43 & 0x8000000) == 0)
    {
      v4 = MEMORY[0x1C6920BC0]();
      v5 = v4;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 0x40000000;
      v31[2] = __si_indexingWatchdogInit_block_invoke_2;
      v31[3] = &__block_descriptor_tmp_3955;
      v31[4] = *(a1 + 40);
      v6 = _SISuspendThreadIfLocked(v4, v31);
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v5);
      v7 = *(a1 + 32);
      if ((*(v7 + 105) & 1) == 0 && (*(v7 + 16) & 1) == 0)
      {
        if (pthread_mutex_trylock((*(a1 + 40) + 1712)))
        {
          v8 = 4;
        }

        else
        {
          v9 = *(a1 + 40);
          v10 = *(v9 + 1776);
          v8 = 4;
          if (v10)
          {
            if (CFSetGetCount(v10))
            {
              v8 = 40;
            }

            else
            {
              v8 = 4;
            }

            v9 = *(a1 + 40);
          }

          pthread_mutex_unlock((v9 + 1712));
        }

        v11 = *(a1 + 32);
        v12 = *(v11 + 84);
        v13 = _gSystemStatusBool;
        *(v11 + 84) = _gSystemStatusBool;
        if ((v6 | v13))
        {
          goto LABEL_21;
        }

        v14 = v8 + v12;
        v15 = *(v11 + 80);
        if (v15 < v14)
        {
          *(v11 + 80) = v15 + 1;
          logPLIndexingWatchdogEvent();
          v11 = *(a1 + 32);
LABEL_21:
          v16 = *v11;
          v17 = dispatch_time(0, 1000000000 * *(*(*(a1 + 40) + 64) + 40));
          dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
          return;
        }

        Current = CFAbsoluteTimeGetCurrent();
        v19 = *__error();
        v20 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = *(a1 + 32);
          v22 = *(v21 + 96);
          v23 = *(v21 + 40);
          v24 = *(v21 + 48);
          v25 = *(v21 + 72);
          v26 = *(v21 + 76);
          v27 = *(v21 + 112);
          LODWORD(v21) = *(v21 + 88);
          *buf = 136317442;
          v37 = "si_indexingWatchdogInit_block_invoke";
          v38 = 1024;
          v39 = 191;
          v40 = 2048;
          v41 = v22;
          v42 = 2048;
          v43 = v23;
          v44 = 2048;
          v45 = v24;
          v46 = 2048;
          v47 = v25;
          v48 = 2048;
          v49 = v26;
          v50 = 2048;
          v51 = v27;
          v52 = 2048;
          v53 = Current;
          v54 = 1024;
          v55 = v21;
          _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: Indexing watchdog fired, thread:%p delta:%llus, startTime:%.3f, itemCount:%lu, perItemCost:%lu resumeTime:%.3f endtime:%lld protectionClass:%u", buf, 0x5Eu);
        }

        *__error() = v19;
        logPLIndexingWatchdogEvent();
        tailSpinCollect(*(a1 + 32), Current);
        v28 = *(a1 + 32);
        v29 = abort_report_np("Indexing watchdog fired, delta:%lld, startTime:%lld, itemCount:%ld suspendTime:%lld resumeTime:%lld endtime:%lld pc:%u", *(v28 + 40), *(v28 + 48), *(v28 + 72), *(v28 + 56), *(v28 + 112), Current, *(v28 + 88));
        __si_indexingWatchdogInit_block_invoke_2(v29, v30);
      }
    }
  }
}

int *__si_indexingWatchdogInit_block_invoke_2(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  bzero(v16, 0x400uLL);
  v4 = *__error();
  v5 = _SILogForLogForCategory(10);
  v6 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v5, v6))
  {
    if (a2)
    {
      v7 = "Suspend";
    }

    else
    {
      v7 = "Resume";
    }

    v8 = fcntl(*(*(a1 + 32) + 32), 50, v16);
    if (v16[0])
    {
      v9 = v8 < 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v16;
    }

    *buf = 136315394;
    v13 = v7;
    v14 = 2080;
    v15 = v10;
    _os_log_impl(&dword_1C278D000, v5, v6, "%s watchdog for %s", buf, 0x16u);
  }

  result = __error();
  *result = v4;
  return result;
}

void logPLIndexingWatchdogEvent()
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (PLShouldLogRegisteredEvent())
  {
    values = @"1";
    keys[0] = @"indexingWatchdogFired";
    v0 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    PLLogRegisteredEvent();
    CFRelease(v0);
  }
}

void tailSpinCollect(uint64_t a1, double a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v2 = a1 + 48;
  valuePtr = (a2 - *(a1 + 48)) * 1000.0;
  v3 = *MEMORY[0x1E695E480];
  v4 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  v12 = *&off_1E8193700;
  v13 = xmmword_1E8193710;
  v14 = *&off_1E8193720;
  v15 = xmmword_1E8193730;
  *keys = xmmword_1E81936F0;
  values[0] = CFNumberCreate(v3, kCFNumberDoubleType, &valuePtr);
  values[1] = CFNumberCreate(v3, kCFNumberSInt32Type, (v2 + 24));
  values[2] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 + 28));
  values[3] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 + 32));
  values[4] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 - 8));
  if (*(v2 - 16))
  {
    v5 = *(v2 - 16);
  }

  else
  {
    v5 = @"unknown";
  }

  values[5] = CFRetain(v5);
  values[6] = CFNumberCreate(v3, kCFNumberDoubleType, v2);
  values[7] = CFNumberCreate(v3, kCFNumberDoubleType, (v2 + 8));
  values[8] = CFNumberCreate(v3, kCFNumberDoubleType, (v2 + 64));
  values[9] = CFNumberCreate(v3, kCFNumberDoubleType, &v7);
  CFRelease(v4);
  CFDictionaryCreate(v3, keys, values, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (DRTailspinRequest())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "DiagnosticPipeline tailspin request successful.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v9 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "DiagnosticPipeline tailspin request failed with error: %@.", buf, 0xCu);
  }
}

void processNode(query_node *a1, int a2)
{
  v55 = *MEMORY[0x1E69E9840];
  var0 = a1->var0;
  var1 = a1->var1;
  if (var0 | var1)
  {
    v6 = processNode(var0, a2);
    v7 = processNode(var1, a2);
    var6 = a1->var6;
    if (var6 == 2)
    {

      makeAndNode(v6, v7);
    }

    else if (var6 == 1)
    {

      makeOrNode(v6, v7);
    }

    else
    {
      v18 = *__error();
      v19 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = a1->var6;
        *buf = 67109120;
        *&buf[4] = v20;
        _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "(ERROR) Failed to convert suggestion node properly: %hu", buf, 8u);
      }

      *__error() = v18;
      db_free_query_node(v6);
      db_free_query_node(v7);
    }

    return;
  }

  if (a1->var6 == 4 && (var2 = a1->var2) != 0 && (v10 = *var2) != 0 && (v11 = *v10) != 0 && (v12 = *(var2 + 9)) != 0 && *v12)
  {
    is_double_star = query_node_is_double_star(a1);
    v14 = v11 == 42 && v10[1] == 0;
    if ((*(var2 + 32) & 4) == 0)
    {
      v21 = a1;
      v22 = v12;
LABEL_31:

      MailSuggestionNode(v21, v22, v14, is_double_star, a2);
      return;
    }

    v23 = strlen(v12);
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], v23);
    CFStringAppendCString(Mutable, *(a1->var2 + 9), 0x8000100u);
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1->var2 + 9)];
    v26 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'‘’“”«»„“‹›"];
    if (-[__CFString length](v25, "length") >= 2 && [v26 characterIsMember:{-[__CFString characterAtIndex:](v25, "characterAtIndex:", -[__CFString rangeOfComposedCharacterSequenceAtIndex:](v25, "rangeOfComposedCharacterSequenceAtIndex:", 0))}])
    {
      [(__CFString *)v25 rangeOfComposedCharacterSequenceAtIndex:0];
      v28 = [(__CFString *)v25 substringFromIndex:v27];
      v29 = [v28 length];
      [(__CFString *)v25 rangeOfComposedCharacterSequenceAtIndex:0];
      if (v29 >= 2)
      {
        v31 = v29 - v30;
        v32 = [v28 characterAtIndex:v29 - v30];
        if (v32 == 42)
        {
          v33 = v31 - 1;
          if (v33 >= v29 || ![v26 characterIsMember:{objc_msgSend(v28, "characterAtIndex:", v33)}])
          {
            goto LABEL_58;
          }

          v34 = [objc_msgSend(v28 substringToIndex:{v33), "stringByAppendingString:", @"*"}];
          goto LABEL_57;
        }

        if ([v26 characterIsMember:v32])
        {
          v34 = [v28 substringToIndex:v31];
LABEL_57:
          v28 = v34;
        }
      }

LABEL_58:
      v48 = [v28 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
      if (![v48 length])
      {
        return;
      }

      v22 = [v48 UTF8String];
      v21 = a1;
      goto LABEL_31;
    }

    QueryTokens = CreateQueryTokens(v25, 1);
    if (QueryTokens)
    {
      v36 = QueryTokens;
      v37 = *QueryTokens;
      if (v37)
      {
        Count = CFArrayGetCount(v37);
        if (Count > 0)
        {
          v39 = Count;
          v49 = v14;
          v40 = is_double_star;
          v41 = 0;
          v42 = 0;
          v43 = *v36;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v43, v41);
            if (CFStringGetLength(ValueAtIndex) >= 1)
            {
              v45 = [(__CFString *)ValueAtIndex UTF8String];
              if (v45)
              {
                v46 = v45;
                if ([(__CFString *)ValueAtIndex length])
                {
                  v47 = MailSuggestionNode(a1, v46, v49, v40, a2);
                  v42 = makeAndNode(v42, v47);
                }
              }
            }

            ++v41;
          }

          while (v39 != v41);
          freeQueryTokensContext(v36);
          return;
        }
      }

      freeQueryTokensContext(v36);
    }

    db_clone_query_node(a1);
  }

  else
  {
    *buf = MEMORY[0x1E69E9820];
    v51 = 0x40000000;
    v52 = __db_query_tree_apply_block_block_invoke;
    v53 = &unk_1E8198ED0;
    v54 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(a1, buf, &__block_literal_global_25_15416);
    if (v15)
    {
      v16 = *(v15 + 16);
      if (v16 && a2 != 0)
      {
        *(v16 + 52) = 1036831949;
      }
    }
  }
}

query_node *convertASTNodeToQueryNode(void *a1, uint64_t a2)
{
  v95 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a1 value])
    {
      if (([a1 isIgnored] & 1) == 0)
      {
        v4 = [objc_msgSend(a1 "value")];
        if (v4)
        {
          v5 = v4;
          *&v93 = 0;
          v91 = 0u;
          v92 = 0u;
          Attribs(&v91);
          v87[0] = 0;
          *v85 = 0u;
          *v86 = 0u;
          std::string::basic_string[abi:nn200100]<0>(v77, "kMDItemAuthors");
          DWORD2(v78) = 1041865114;
          std::string::basic_string[abi:nn200100]<0>(v79, "kMDItemSubject");
          v80 = 1041865114;
          std::string::basic_string[abi:nn200100]<0>(v81, "kMDItemTextContent");
          v82 = 1028443341;
          std::unordered_map<std::string,float>::unordered_map(v85, v77, 3);
          for (i = 0; i != -12; i -= 4)
          {
            if (SHIBYTE(v81[i + 2]) < 0)
            {
              operator delete(v81[i]);
            }
          }

          v76 = 0;
          *v74 = 0u;
          *v75 = 0u;
          std::string::basic_string[abi:nn200100]<0>(v77, "*");
          DWORD2(v78) = 1041865114;
          std::string::basic_string[abi:nn200100]<0>(v79, "kMDItemTextContent");
          v80 = 1028443341;
          std::unordered_map<std::string,float>::unordered_map(v74, v77, 2);
          for (j = 0; j != -8; j -= 4)
          {
            if (SHIBYTE(v79[j + 2]) < 0)
            {
              operator delete(v79[j]);
            }
          }

          if ([a1 isNegated])
          {
            v8 = ([a1 isLastToken] << 31) >> 31;
            v9 = v75[0];
            if ((*(a2 + 28) & 2) != 0)
            {
              if (v75[0])
              {
                v10 = 0;
                do
                {
                  v41 = *(v9 + 10);
                  if (v41 != 0.0)
                  {
                    v42 = v9 + 16;
                    if (v9[39] < 0)
                    {
                      v42 = *v42;
                    }

                    QueryNode = createQueryNode(v42, v5, 112, 5, v8, v41, 0.0);
                    v10 = makeAndNode(v10, QueryNode);
                  }

                  v9 = *v9;
                }

                while (v9);
                goto LABEL_142;
              }
            }

            else if (v75[0])
            {
              v10 = 0;
              do
              {
                v11 = v9 + 16;
                if (v9[39] < 0)
                {
                  v11 = *v11;
                }

                v12 = createQueryNode(v11, v5, 112, 5, v8, 0.0, 0.0);
                v10 = makeAndNode(v10, v12);
                v9 = *v9;
              }

              while (v9);
              goto LABEL_142;
            }

            v10 = 0;
LABEL_142:
            if (([a1 isNegated] & 1) == 0 && (*(a2 + 29) & 8) != 0 && objc_msgSend(objc_msgSend(a1, "value"), "length") >= 3)
            {
              v66 = MailTokenRewriteNode([a1 value], a2, &v91);
              if (v66)
              {
                v10 = makeOrNode(v10, v66);
              }
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v75[0]);
            v67 = v74[0];
            v74[0] = 0;
            if (v67)
            {
              operator delete(v67);
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v86[0]);
            v68 = v85[0];
            v85[0] = 0;
            if (v68)
            {
              operator delete(v68);
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v92);
            v69 = v91;
            *&v91 = 0;
            if (v69)
            {
              operator delete(v69);
            }

            return v10;
          }

          v30 = ([a1 isLastToken] << 31) >> 31;
          v31 = v92;
          if ((*(a2 + 28) & 2) != 0)
          {
            if (v92)
            {
              v10 = 0;
              v44 = 0;
              do
              {
                v45 = *(v31 + 10);
                if (v45 > 0.01)
                {
                  v46 = (v31 + 2);
                  if (v44)
                  {
                    v47 = 0.0;
                  }

                  else
                  {
                    v47 = 0.01;
                  }

                  if (*(v31 + 39) < 0)
                  {
                    v46 = *v46;
                  }

                  v44 = 1;
                  v48 = createQueryNode(v46, v5, 112, 1, v30, v45 + 0.0, v47);
                  v10 = makeOrNode(v10, v48);
                }

                v31 = *v31;
              }

              while (v31);
LABEL_105:
              if ((*(a2 + 28) & 2) == 0 || ![a1 isLastToken])
              {
                goto LABEL_142;
              }

              v49 = v86[0];
              if ((*(a2 + 28) & 2) != 0)
              {
                if (v86[0])
                {
                  v50 = 0;
                  v61 = 0;
                  do
                  {
                    v62 = *(v49 + 10) + 0.1;
                    if (v62 > 0.01)
                    {
                      v63 = v49 + 16;
                      if (v61)
                      {
                        v64 = 0.0;
                      }

                      else
                      {
                        v64 = 0.01;
                      }

                      if (v49[39] < 0)
                      {
                        v63 = *v63;
                      }

                      v61 = 1;
                      v65 = createQueryNode(v63, v5, 112, 1, 0, v62, v64);
                      v50 = makeOrNode(v50, v65);
                    }

                    v49 = *v49;
                  }

                  while (v49);
                  goto LABEL_141;
                }
              }

              else if (v86[0])
              {
                v50 = 0;
                do
                {
                  v51 = v49 + 16;
                  if (v49[39] < 0)
                  {
                    v51 = *v51;
                  }

                  v52 = createQueryNode(v51, v5, 112, 1, 0, 0.0, 0.0);
                  v50 = makeOrNode(v50, v52);
                  v49 = *v49;
                }

                while (v49);
                goto LABEL_141;
              }

              v50 = 0;
LABEL_141:
              v10 = makeOrNode(v10, v50);
              goto LABEL_142;
            }
          }

          else if (v92)
          {
            v10 = 0;
            do
            {
              v32 = (v31 + 2);
              if (*(v31 + 39) < 0)
              {
                v32 = *v32;
              }

              v33 = createQueryNode(v32, v5, 112, 1, v30, 0.0, 0.0);
              v10 = makeOrNode(v10, v33);
              v31 = *v31;
            }

            while (v31);
            goto LABEL_105;
          }

          v10 = 0;
          goto LABEL_105;
        }
      }
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      if (![a1 children])
      {
        return 0;
      }

      if (![objc_msgSend(a1 "children")])
      {
        return 0;
      }

      v22 = [objc_msgSend(a1 "nodeType")];
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v23 = [a1 children];
      v24 = [v23 countByEnumeratingWithState:&v91 objects:v77 count:16];
      if (!v24)
      {
        return 0;
      }

      v10 = 0;
      v25 = *v92;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v92 != v25)
          {
            objc_enumerationMutation(v23);
          }

          Node = convertASTNodeToQueryNode(*(*(&v91 + 1) + 8 * k), a2);
          if (Node)
          {
            if (v22)
            {
              v28 = makeAndNode(v10, Node);
            }

            else
            {
              v28 = makeOrNode(v10, Node);
            }

            v10 = v28;
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v91 objects:v77 count:16];
      }

      while (v24);
      return v10;
    }

    if (![a1 expression])
    {
      return 0;
    }

    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    std::string::basic_string[abi:nn200100]<0>(v85, "kMDItemAuthors");
    LODWORD(v86[1]) = 1041865114;
    std::string::basic_string[abi:nn200100]<0>(v87, "_kMDItemAuthorEmailAddressesLocalParts");
    v88 = 1036831950;
    std::string::basic_string[abi:nn200100]<0>(v89, "kMDItemAuthorEmailAddresses");
    v90 = 0;
    std::unordered_map<std::string,float>::unordered_map(v74, v85, 3);
    LODWORD(v91) = 0;
    std::unordered_map<std::string,float>::unordered_map(&v91 + 8, v74);
    std::string::basic_string[abi:nn200100]<0>(v77, "kMDItemRecipients");
    DWORD2(v78) = 1028443341;
    std::string::basic_string[abi:nn200100]<0>(v79, "_kMDItemPrimaryRecipientEmailAddressesLocalParts");
    v80 = 1028443341;
    std::string::basic_string[abi:nn200100]<0>(v81, "kMDItemRecipientEmailAddresses");
    v82 = 0;
    std::string::basic_string[abi:nn200100]<0>(v83, "kMDItemPrimaryRecipientEmailAddresses");
    v84 = 0;
    std::unordered_map<std::string,float>::unordered_map(__p, v77, 4);
    LODWORD(v94) = 1;
    std::unordered_map<std::string,float>::unordered_map(&v94 + 8, __p);
    std::unordered_map<int,std::unordered_map<std::string,float>>::unordered_map(&v70, &v91, 2);
    for (m = 56; m != -40; m -= 48)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v91 + m);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(__p[2]);
    v16 = __p[0];
    __p[0] = 0;
    if (v16)
    {
      operator delete(v16);
    }

    for (n = 0; n != -16; n -= 4)
    {
      if (SHIBYTE(v83[n + 2]) < 0)
      {
        operator delete(v83[n]);
      }
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v75[0]);
    v18 = v74[0];
    v74[0] = 0;
    if (v18)
    {
      operator delete(v18);
    }

    for (ii = 0; ii != -12; ii -= 4)
    {
      if (SHIBYTE(v89[ii + 2]) < 0)
      {
        operator delete(v89[ii]);
      }
    }

    *v77 = 0u;
    v78 = 0u;
    v79[0] = 1065353216;
    v20 = [a1 fieldType];
    if (v20)
    {
      if (v20 != 1)
      {
        Attribs(&v91);
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(v77, &v91);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v91);
        goto LABEL_78;
      }

      if (!std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(v70, *(&v70 + 1), 1))
      {
        goto LABEL_78;
      }

      *&v91 = &TOK_ID_TO;
      v21 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v70, 1, &v91);
    }

    else
    {
      if (!std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(v70, *(&v70 + 1), 0))
      {
        goto LABEL_78;
      }

      *&v91 = &TOK_ID_FROM;
      v21 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v70, 0, &v91);
    }

    if (v77 != (v21 + 24))
    {
      LODWORD(v79[0]) = *(v21 + 14);
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,float>,void *> *>>(v77, *(v21 + 5));
    }

LABEL_78:
    [a1 expression];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v40 = convertASTNodeToQueryNode([a1 expression], a2);
LABEL_83:
      v10 = v40;
LABEL_124:
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v78);
      v56 = v77[0];
      v77[0] = 0;
      if (v56)
      {
        operator delete(v56);
      }

      std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::~__hash_table(&v70);
      return v10;
    }

    v34 = [a1 expression];
    v35 = [objc_msgSend(v34 "value")];
    if (!v35)
    {
      v10 = 0;
      goto LABEL_124;
    }

    v36 = [v34 isLastToken];
    v37 = [v34 isLastToken];
    v10 = MailAttribNode(*(a2 + 28), v78, v35, v37, 0.0);
    if ((*(a2 + 28) & 2) != 0)
    {
      if (![v34 isLastToken])
      {
        goto LABEL_118;
      }

      v53 = MailAttribNode(*(a2 + 28), v78, v35, 0, 0.1);
      v39 = makeOrNode(v10, v53);
    }

    else
    {
      v38 = createQueryNode("kMDItemContentTypeTree", "public.email-message", 112, 1, 0, 0.0, 0.0);
      v39 = makeAndNode(v10, v38);
    }

    v10 = v39;
LABEL_118:
    if ((*(a2 + 29) & 8) != 0 && [objc_msgSend(v34 "value")] >= 3)
    {
      v54 = MailTokenRewriteNode([v34 value], a2, v77);
      if (v54)
      {
        v10 = makeOrNode(v10, v54);
      }
    }

    v55 = [objc_msgSend(a1 "originalKeyword")];
    if (!v55 || ([a1 isIgnored] & 1) != 0)
    {
      goto LABEL_124;
    }

    if ((*(a2 + 28) & 2) != 0)
    {
      v60 = createQueryNode("kMDItemSubject", v35, 112, 1, v36 << 31 >> 31, 0.15, 0.0);
    }

    else
    {
      *&v93 = 0;
      v91 = 0u;
      v92 = 0u;
      ContentAttribs(&v91);
      v57 = MailAttribNode(*(a2 + 28), v92, v55, 0, 0.0);
      v58 = [v34 isLastToken];
      v59 = MailAttribNode(*(a2 + 28), v92, v35, v58, 0.0);
      v60 = makeAndNode(v57, v59);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v91);
    }

    v40 = makeOrNode(v10, v60);
    goto LABEL_83;
  }

  if (![a1 filterString])
  {
    return 0;
  }

  v13 = [objc_msgSend(a1 "filterString")];
  if (!v13)
  {
    return 0;
  }

  query_node_with_ann = db_make_query_node_with_ann(v13, 0);
  v10 = query_node_with_ann;
  if (query_node_with_ann && (*(a2 + 28) & 2) != 0)
  {
    db_query_tree_apply_block(query_node_with_ann, __block_literal_global_4078, 0);
  }

  return v10;
}

void sub_1C29B0210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v44 - 208);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&__p);
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

void sub_1C29B0670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 343);
  v13 = -352;
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

query_node *MailTokenRewriteNode(void *key, uint64_t a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(*(a2 + 40), key);
  if (Value)
  {
    v5 = Value;
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
        if (!ValueAtIndex)
        {
          goto LABEL_32;
        }

        v11 = ValueAtIndex;
        v12 = [ValueAtIndex variation];
        if (!v12)
        {
          goto LABEL_32;
        }

        v13 = v12;
        if (!CFStringGetLength(v12))
        {
          goto LABEL_32;
        }

        if (![(__CFString *)v13 length])
        {
          goto LABEL_32;
        }

        v14 = [(__CFString *)v13 UTF8String];
        if (!v14)
        {
          goto LABEL_32;
        }

        v15 = v14;
        if ([v11 type] == 1)
        {
          v16 = 2155872368;
        }

        else
        {
          v16 = 2147483760;
        }

        v17 = *(a3 + 16);
        if ((*(a2 + 28) & 2) != 0)
        {
          if (v17)
          {
            v18 = 0;
            v21 = 0;
            do
            {
              v22 = *(v17 + 10);
              if (v22 > 0.01)
              {
                v23 = (v17 + 2);
                if (v21)
                {
                  v24 = 0.0;
                }

                else
                {
                  v24 = 0.01;
                }

                if (*(v17 + 39) < 0)
                {
                  v23 = *v23;
                }

                v21 = 1;
                QueryNode = createQueryNode(v23, v15, v16, 1, 0, v22 + 0.0, v24);
                v18 = makeOrNode(v18, QueryNode);
              }

              v17 = *v17;
            }

            while (v17);
            goto LABEL_31;
          }
        }

        else if (v17)
        {
          v18 = 0;
          do
          {
            v19 = (v17 + 2);
            if (*(v17 + 39) < 0)
            {
              v19 = *v19;
            }

            v20 = createQueryNode(v19, v15, v16, 1, 0, 0.0, 0.0);
            v18 = makeOrNode(v18, v20);
            v17 = *v17;
          }

          while (v17);
          goto LABEL_31;
        }

        v18 = 0;
LABEL_31:
        v8 = makeOrNode(v8, v18);
LABEL_32:
        if (++v9 == v7)
        {
          return v8;
        }
      }
    }
  }

  return 0;
}

query_node *MailAttribNode(char a1, uint64_t *a2, char *__s, int a4, float a5)
{
  v6 = a2;
  v7 = a4 << 31 >> 31;
  if ((a1 & 2) == 0)
  {
    if (a2)
    {
      v8 = 0;
      do
      {
        v9 = (v6 + 2);
        if (*(v6 + 39) < 0)
        {
          v9 = *v9;
        }

        QueryNode = createQueryNode(v9, __s, 112, 1, v7, 0.0, 0.0);
        v8 = makeOrNode(v8, QueryNode);
        v6 = *v6;
      }

      while (v6);
      return v8;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = 0;
  v12 = 0;
  do
  {
    v13 = *(v6 + 10) + a5;
    if (v13 > 0.01)
    {
      v14 = (v6 + 2);
      if (v12)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 0.01;
      }

      if (*(v6 + 39) < 0)
      {
        v14 = *v14;
      }

      v12 = 1;
      v16 = createQueryNode(v14, __s, 112, 1, v7, v13, v15);
      v8 = makeOrNode(v8, v16);
    }

    v6 = *v6;
  }

  while (v6);
  return v8;
}

void ContentAttribs(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemSubject");
  v4 = 1041865114;
  std::string::basic_string[abi:nn200100]<0>(v5, "kMDItemTextContent");
  v6 = 1028443341;
  std::unordered_map<std::string,float>::unordered_map(a1, v3, 2);
  for (i = 0; i != -8; i -= 4)
  {
    if (SHIBYTE(v5[i + 2]) < 0)
    {
      operator delete(v5[i]);
    }
  }
}

void sub_1C29B0AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = (v15 + 55);
  v18 = -64;
  v19 = v17;
  while (1)
  {
    v20 = *v19;
    v19 -= 32;
    if (v20 < 0)
    {
      operator delete(*(v17 - 23));
    }

    v17 = v19;
    v18 += 32;
    if (!v18)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

double ___ZL19convertQPFilterNodeP17PRAstQPFilterNodeP9PRContext_block_invoke_4092(uint64_t a1, uint64_t a2)
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

query_node *MailSuggestionNode(query_node *a1, char *__s, int a3, int a4, char a5)
{
  if (a5)
  {
    if (a4)
    {
      QueryNode = createQueryNode("kMDItemTextContent", __s, 48, 1, 0, 0.05, 0.0);
LABEL_8:
      v8 = createQueryNode("kMDItemSubject", __s, 112, 1, 0, 0.15, 0.0);
      v9 = createQueryNode("kMDItemAuthors", __s, 48, 1, 0, 0.15, 0.0);
      v7 = makeOrNode(v8, v9);
      goto LABEL_9;
    }

    if (a3)
    {
      QueryNode = 0;
      goto LABEL_8;
    }

    var2 = a1->var2;
    v12 = *var2;
    v13 = *(var2 + 4);
    v14 = *(var2 + 6);
    v15 = 0.1;
  }

  else
  {
    if (a4)
    {
      QueryNode = createQueryNode("*", __s, 112, 1, 0, 0.0, 0.0);
      v7 = createQueryNode("kMDItemTextContent", __s, 112, 1, 0, 0.0, 0.0);
LABEL_9:

      return makeOrNode(QueryNode, v7);
    }

    v11 = a1->var2;
    v12 = *v11;
    v13 = *(v11 + 4);
    v14 = *(v11 + 6);
    v15 = 0.0;
  }

  return createQueryNode(v12, __s, v13, v14, 0, v15, 0.0);
}

void oqsort_offset_with_meta_t(uint64_t result)
{
  if (*(result + 24) >= 2)
  {
    v2 = qos_class_self();
    v3 = *(result + 8);
    v4 = *(result + 24);
    if (v2 < 0x12)
    {
      _qsort_offset_with_meta_t(v3, 0, v4 - 1);
    }

    else
    {
      parallel_qsort_offset_with_meta_t(v3, v4);
    }
  }

  if (*(result + 48))
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert(v5, "OQueue.c", 13, "!queue->split", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }
}

void parallel_qsort_offset_with_meta_t(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2 > 2047)
  {
    v4 = OSAtomicDequeue(&qsort_cached_allocations, 0);
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
    v6 = thread_count;
    if (!thread_count)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count, &v8, 0, 0);
      v6 = thread_count;
    }

    *(v4 + 14) = v6;
    v4[5] = sqrt(a2) / 2;
    if (!v6)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count, &v8, 0, 0);
      v6 = thread_count;
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
      sysctl(v9, 2u, &thread_count, &v8, 0, 0);
      v7 = a2 / (2 * thread_count);
    }

    v4[6] = v7;
    if (v4[5] <= 2047)
    {
      v4[5] = 2048;
    }

    _qsort_big_offset_with_meta_t(v4);
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
  }

  else
  {

    _qsort_offset_with_meta_t(a1, 0, a2 - 1);
  }
}

void _qsort_offset_with_meta_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x800uLL, 0x1000040451B5BE8uLL);
  v6[1] = 0;
  *v6 = 0;
  v7 = 1;
  do
  {
    if (a3 > a2)
    {
      if (v7 <= 128)
      {
        v9 = 128;
      }

      else
      {
        v9 = v7;
      }

      v10 = &v6[2 * v7 + 1];
      while (a3 - a2 > 16)
      {
        v11 = _partition_offset_with_meta_t(a1, a2, a3);
        if (v11 < a2)
        {
          v21 = __si_assert_copy_extra_332();
          v22 = v21;
          v23 = "";
          if (v21)
          {
            v23 = v21;
          }

          __message_assert(v21, "OQueue.c", 13, "q>=left", v23);
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

        if (v9 == v7)
        {
          heapsort_b((a1 + 16 * a2), a3 - a2 + 1, 0x10uLL, &__block_literal_global_4124);
          v7 = v9;
          goto LABEL_3;
        }

        if (v11 - a2 <= a3 - v11)
        {
          *(v10 - 1) = a2;
          *v10 = v11 - 1;
          a2 = v11;
        }

        else
        {
          *(v10 - 1) = v11;
          *v10 = a3;
          a3 = v11 - 1;
        }

        ++v7;
        v10 += 2;
        if (a3 <= a2)
        {
          goto LABEL_3;
        }
      }

      v12 = a1 + 8 + 16 * a2;
      v13 = a2;
      do
      {
        v14 = v13++;
        v15 = *(a1 + 16 * v13);
        v16 = *(a1 + 16 * v13) & 0x3FFFFFFFFFFFFFFFLL;
        v17 = *(a1 + 16 * v14);
        v18 = v13;
        if ((v17 & 0x3FFFFFFFFFFFFFFFuLL) > v16)
        {
          v19 = v12;
          do
          {
            v18 = v14;
            v20 = *v19;
            v19[1] = v17;
            v19[2] = v20;
            if (v18 <= a2)
            {
              break;
            }

            v17 = *(v19 - 3);
            v14 = v18 - 1;
            v19 -= 2;
          }

          while ((v17 & 0x3FFFFFFFFFFFFFFFuLL) > v16);
        }

        *(a1 + 16 * v18) = v15;
        v12 += 16;
      }

      while (v13 != a3);
    }

LABEL_3:
    --v7;
    v8 = &v6[2 * v7];
    a2 = *v8;
    a3 = v8[1];
  }

  while (v7);

  free(v6);
}

uint64_t _partition_offset_with_meta_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2 + 1;
  v4 = (a1 + 16 * a2);
  v5 = v4;
  v6 = &v4[2 * ((v3 + (v3 >> 63)) >> 1)];
  v7 = (a1 + 16 * a3);
  if (a3 - a2 < 1024)
  {
    v22 = &v4[2 * ((v3 + (v3 >> 63)) >> 1)];
    v25 = (a1 + 16 * a3);
  }

  else
  {
    v8 = v3 >> 3;
    v9 = &v4[2 * v8];
    v10 = *v4 & 0x3FFFFFFFFFFFFFFFLL;
    v11 = *v9 & 0x3FFFFFFFFFFFFFFFLL;
    if (v10 != v11)
    {
      v5 = &v4[4 * v8];
      v12 = *v5 & 0x3FFFFFFFFFFFFFFFLL;
      if (v10 >= v12)
      {
        v13 = &v4[4 * v8];
      }

      else
      {
        v13 = (a1 + 16 * a2);
      }

      if (v11 > v12)
      {
        v13 = &v4[2 * v8];
      }

      if (v10 >= v12)
      {
        v14 = (a1 + 16 * a2);
      }

      else
      {
        v14 = &v4[4 * v8];
      }

      if (v11 >= v12)
      {
        v9 = v14;
      }

      if (v10 >= v11)
      {
        v9 = v13;
      }

      if (v12 != v10 && v12 != v11)
      {
        v5 = v9;
      }
    }

    v16 = 2 * v8;
    v17 = -v8;
    v18 = 16 * v8;
    v19 = &v6[v18 / 0xFFFFFFFFFFFFFFF8];
    v20 = v6[v18 / 0xFFFFFFFFFFFFFFF8] & 0x3FFFFFFFFFFFFFFFLL;
    v21 = *v6 & 0x3FFFFFFFFFFFFFFFLL;
    if (v20 == v21)
    {
      v22 = &v6[v18 / 0xFFFFFFFFFFFFFFF8];
    }

    else
    {
      v22 = &v6[v18 / 8];
      v23 = *v22 & 0x3FFFFFFFFFFFFFFFLL;
      if (v23 != v20 && v23 != v21)
      {
        if (v20 >= v21)
        {
          if (v20 < v23)
          {
            v22 = v19;
          }

          if (v21 > v23)
          {
            v22 = v6;
          }
        }

        else
        {
          if (v20 >= v23)
          {
            v22 = v19;
          }

          if (v21 < v23)
          {
            v22 = v6;
          }
        }
      }
    }

    v25 = &v7[-2 * v16];
    v26 = &v7[2 * v17];
    v27 = *v25 & 0x3FFFFFFFFFFFFFFFLL;
    v28 = *v26 & 0x3FFFFFFFFFFFFFFFLL;
    if (v27 != v28)
    {
      v29 = *v7 & 0x3FFFFFFFFFFFFFFFLL;
      if (v27 >= v29)
      {
        v30 = (a1 + 16 * a3);
      }

      else
      {
        v30 = v25;
      }

      if (v28 > v29)
      {
        v30 = v26;
      }

      if (v27 < v29)
      {
        v25 = (a1 + 16 * a3);
      }

      if (v28 < v29)
      {
        v25 = v26;
      }

      if (v27 >= v28)
      {
        v25 = v30;
      }

      if (v29 == v28)
      {
        v25 = (a1 + 16 * a3);
      }

      if (v29 == v27)
      {
        v25 = (a1 + 16 * a3);
      }
    }
  }

  v31 = *v5 & 0x3FFFFFFFFFFFFFFFLL;
  v32 = *v22 & 0x3FFFFFFFFFFFFFFFLL;
  if (v31 == v32)
  {
    v22 = v5;
  }

  else
  {
    v33 = *v25 & 0x3FFFFFFFFFFFFFFFLL;
    if (v33 == v31 || v33 == v32)
    {
      v22 = v25;
    }

    else if (v31 >= v32)
    {
      if (v32 <= v33)
      {
        if (v31 >= v33)
        {
          v22 = v25;
        }

        else
        {
          v22 = v5;
        }
      }
    }

    else if (v32 >= v33)
    {
      if (v31 >= v33)
      {
        v22 = v5;
      }

      else
      {
        v22 = v25;
      }
    }
  }

  v35 = *v22;
  *v22 = *v7;
  *v7 = v35;
  v36 = a3 - a2;
  if (a3 > a2)
  {
    v38 = *v4;
    v37 = (v4 + 2);
    v39 = v38;
    v40 = v35 & 0x3FFFFFFFFFFFFFFFLL;
    do
    {
      v41 = *v37;
      if ((v39 & 0x3FFFFFFFFFFFFFFFLL) <= v40)
      {
        *(v37 - 1) = *(a1 + 16 * a2);
        *(a1 + 16 * a2++) = v39;
      }

      ++v37;
      v39 = v41;
      --v36;
    }

    while (v36);
  }

  v42 = *(a1 + 16 * a2);
  *(a1 + 16 * a2) = *v7;
  *v7 = v42;
  return a2;
}

uint64_t ___qsort_offset_with_meta_t_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *a2 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = *a3 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = v3 > v4;
  if (v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

void _qsort_big_offset_with_meta_t(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v36 = a1[6];
  v37 = *a1;
  v6 = *(a1 + 14);
  v35 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations, a1, 0);
  if (v2 > v1)
  {
    for (i = v4 + 1; ; ++i)
    {
      v10 = v2 - v1;
      if (v2 - v1 <= v5 || i > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v12 = getSize_memSize;
      if (!getSize_memSize)
      {
        v42 = 0u;
        v43 = 0u;
        *host_info_out = 0u;
        v13 = MEMORY[0x1C6920B70]();
        host_info_outCnt = 12;
        v14 = host_info(v13, 1, host_info_out, &host_info_outCnt);
        if (v14)
        {
          mach_error("flushsize", v14);
          exit(1);
        }

        v12 = *(&v43 + 1);
        getSize_memSize = *(&v43 + 1);
      }

      v15 = 3 * v12 / 5uLL;
      v16 = v3;
      if (16 * v10 > v15)
      {
        v16 = dispatch_group_create();
      }

      if (v10 <= v36 || 16 * v10 >= v15)
      {
        v20 = _partition_offset_with_meta_t(v37, v1, v2);
      }

      else
      {
        v17 = qos_class_self();
        global_queue = dispatch_get_global_queue(v17, 2uLL);
        v20 = _big_partition_offset_with_meta_t(v37, v1, v2, global_queue, v6, v19);
      }

      v21 = v20;
      v22 = v20 - v1;
      if (v20 < v1)
      {
        v32 = __si_assert_copy_extra_332();
        v33 = v32;
        v34 = "";
        if (v32)
        {
          v34 = v32;
        }

        __message_assert(v32, "OQueue.c", 13, "q>=left", v34, v39);
        free(v33);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v23 = OSAtomicDequeue(&qsort_cached_allocations, 0);
      if (!v23)
      {
        v23 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
      }

      *(v23 + 4) = i;
      *(v23 + 5) = v5;
      *(v23 + 6) = v36;
      v24 = v2 - v21;
      if (v22 <= v2 - v21)
      {
        v25 = v21 - 1;
      }

      else
      {
        v24 = v21 - 1 - v1;
        v25 = v2;
      }

      if (v22 > v2 - v21)
      {
        v26 = v21;
      }

      else
      {
        v26 = v1;
      }

      if (v22 > v2 - v21)
      {
        v2 = v21 - 1;
      }

      else
      {
        v1 = v21;
      }

      *v23 = v37;
      *(v23 + 1) = v26;
      v27 = (((v24 + 1) * v6) / (v25 - v26 + 1));
      if (v27 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      if (v6 >= v27)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v23[14] = v6 - v29;
      v23[15] = v35;
      *(v23 + 2) = v25;
      *(v23 + 3) = v16;
      if (v16 == v3)
      {
        if (v6 >= v27)
        {
          v6 = v28;
        }

        v8 = qos_class_self();
        v9 = dispatch_get_global_queue(v8, 2uLL);
        dispatch_group_async_f(v16, v9, v23, _qsort_big_offset_with_meta_t);
      }

      else
      {
        v23[14] = v6;
        _qsort_big_offset_with_meta_t(v23);
        dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v16);
        v30 = qos_class_self();
        v31 = dispatch_get_global_queue(v30, 2uLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        v39[0] = ___qsort_big_offset_with_meta_t_block_invoke;
        v39[1] = &__block_descriptor_tmp_4129;
        v39[2] = v23;
        dispatch_async(v31, block);
      }

      if (v2 <= v1)
      {
        return;
      }
    }

    _qsort_offset_with_meta_t(v37, v1, v2);
  }
}

uint64_t _big_partition_offset_with_meta_t(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v8 = a3 - a2;
  v9 = a3 - a2 + 1;
  v10 = (a1 + 16 * a2);
  v11 = &v10[2 * ((v9 + (v9 >> 63)) >> 1)];
  v12 = (a1 + 16 * a3);
  if (v8 < 64)
  {
    v28 = &v10[2 * ((v9 + (v9 >> 63)) >> 1)];
    v17 = v10;
  }

  else
  {
    v13 = v9 >> 3;
    v14 = &v10[2 * (v9 >> 3)];
    v15 = *v10 & 0x3FFFFFFFFFFFFFFFLL;
    v16 = *v14 & 0x3FFFFFFFFFFFFFFFLL;
    v17 = v10;
    if (v15 != v16)
    {
      v17 = &v10[4 * v13];
      v18 = *v17 & 0x3FFFFFFFFFFFFFFFLL;
      if (v15 >= v18)
      {
        v19 = &v10[4 * v13];
      }

      else
      {
        v19 = v10;
      }

      if (v16 > v18)
      {
        v19 = &v10[2 * (v9 >> 3)];
      }

      if (v15 >= v18)
      {
        v20 = v10;
      }

      else
      {
        v20 = &v10[4 * v13];
      }

      if (v16 >= v18)
      {
        v14 = v20;
      }

      if (v15 >= v16)
      {
        v14 = v19;
      }

      if (v18 != v15 && v18 != v16)
      {
        v17 = v14;
      }
    }

    v22 = 2 * v13;
    v23 = -v13;
    v24 = 16 * v13;
    v25 = &v11[v24 / 0xFFFFFFFFFFFFFFF8];
    v26 = v11[v24 / 0xFFFFFFFFFFFFFFF8] & 0x3FFFFFFFFFFFFFFFLL;
    v27 = *v11 & 0x3FFFFFFFFFFFFFFFLL;
    if (v26 == v27)
    {
      v28 = &v11[v24 / 0xFFFFFFFFFFFFFFF8];
    }

    else
    {
      v28 = &v11[v24 / 8];
      v29 = *v28 & 0x3FFFFFFFFFFFFFFFLL;
      if (v29 != v26 && v29 != v27)
      {
        if (v26 >= v27)
        {
          if (v26 < v29)
          {
            v28 = v25;
          }

          if (v27 > v29)
          {
            v28 = &v10[2 * ((v9 + (v9 >> 63)) >> 1)];
          }
        }

        else
        {
          if (v26 >= v29)
          {
            v28 = v25;
          }

          if (v27 < v29)
          {
            v28 = &v10[2 * ((v9 + (v9 >> 63)) >> 1)];
          }
        }
      }
    }

    v31 = &v12[-2 * v22];
    v32 = &v12[2 * v23];
    v33 = *v31 & 0x3FFFFFFFFFFFFFFFLL;
    v34 = *v32 & 0x3FFFFFFFFFFFFFFFLL;
    if (v33 == v34)
    {
      v12 = v31;
    }

    else
    {
      v35 = *v12 & 0x3FFFFFFFFFFFFFFFLL;
      if (v33 >= v35)
      {
        v36 = v12;
      }

      else
      {
        v36 = v31;
      }

      if (v34 > v35)
      {
        v36 = v32;
      }

      if (v33 < v35)
      {
        v31 = v12;
      }

      if (v34 < v35)
      {
        v31 = v32;
      }

      if (v33 >= v34)
      {
        v31 = v36;
      }

      if (v35 == v34)
      {
        v31 = v12;
      }

      if (v35 != v33)
      {
        v12 = v31;
      }
    }
  }

  v37 = *v17 & 0x3FFFFFFFFFFFFFFFLL;
  v38 = *v28 & 0x3FFFFFFFFFFFFFFFLL;
  if (v37 == v38)
  {
    v28 = v17;
  }

  else
  {
    v39 = *v12 & 0x3FFFFFFFFFFFFFFFLL;
    if (v39 == v37 || v39 == v38)
    {
      v28 = v12;
    }

    else if (v37 >= v38)
    {
      if (v38 <= v39)
      {
        if (v37 >= v39)
        {
          v28 = v12;
        }

        else
        {
          v28 = v17;
        }
      }
    }

    else if (v38 >= v39)
    {
      if (v37 >= v39)
      {
        v28 = v17;
      }

      else
      {
        v28 = v12;
      }
    }
  }

  return parallel_partition_offset_with_meta_t(v10, v9, *v28 & 0x3FFFFFFFFFFFFFFFLL, a4, a5, a6) + a2;
}

void ___qsort_big_offset_with_meta_t_block_invoke(uint64_t a1)
{
  madvise((**(a1 + 32) + 16 * *(*(a1 + 32) + 8)), 16 * (*(*(a1 + 32) + 16) - *(*(a1 + 32) + 8)), 4);
  v2 = *(a1 + 32);

  OSAtomicEnqueue(&qsort_cached_allocations, v2, 0);
}

uint64_t parallel_partition_offset_with_meta_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
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
  v15 = a2 - v14;
  context[4] = 0;
  context[5] = 0;
  context[7] = a3;
  context[8] = v13;
  if (v6 >= 1)
  {
    memset(v13, 255, v11);
  }

  v16 = v14 + 0x2000;
  if (v15 > v14 + 0x2000)
  {
    v16 = a2 - v14;
  }

  context[3] = v15 + ((v16 - v15 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
  context[0] = 0;
  if (16 * a2 >= (4 * *MEMORY[0x1E69E9AC8]))
  {
    madvise(a1, 16 * a2, 3);
  }

  if (a2 / 0x4000 < v6)
  {
    v6 = a2 / 0x4000;
  }

  dispatch_apply_f(v6, a4, context, partition_phase_offset_with_meta_t);
  return sequential_fixup_offset_with_meta_t(context, a2, v6);
}

uint64_t sequential_fixup_offset_with_meta_t(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  qsort(*(a1 + 64), a3, 8uLL, index_comp);
  v7 = *(a1 + 64);
  v8 = (a3 - 1);
  v9 = 0;
  if (a3 < 1)
  {
    goto LABEL_111;
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
    if (v9 >= 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
LABEL_111:
    do
    {
      if (*(v7 + 8 * v8) != -1)
      {
        break;
      }

      --v8;
    }

    while (v8);
    if (v9 >= v8)
    {
      goto LABEL_46;
    }
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v13 = *(a1 + 48);
    v12 = *(a1 + 56);
    v14 = v13 + 16 * *(v7 + 8 * v9);
    v15 = v13 + 16 * *(v7 + 8 * v8);
    while (1)
    {
      if (v10 < 0x2000)
      {
        v16 = (v14 + 16 * v10);
        while (1)
        {
          v17 = *v16;
          v16 += 2;
          if ((v17 & 0x3FFFFFFFFFFFFFFFuLL) > v12)
          {
            break;
          }

          if (++v10 == 0x2000)
          {
            v18 = 0x2000;
            if (v11 < 0x2000)
            {
              goto LABEL_20;
            }

            goto LABEL_24;
          }
        }
      }

      v18 = v10;
      if (v11 < 0x2000)
      {
LABEL_20:
        v19 = (v15 + 16 * v11);
        while (1)
        {
          v20 = *v19;
          v19 += 2;
          if ((v20 & 0x3FFFFFFFFFFFFFFFuLL) < v12)
          {
            break;
          }

          if (++v11 == 0x2000)
          {
            v10 = v18;
            goto LABEL_28;
          }
        }
      }

LABEL_24:
      v21 = v11;
      if (v18 == 0x2000 || v11 == 0x2000)
      {
        break;
      }

      v22 = *(v15 + 16 * v11);
      *(v15 + 16 * v11) = *(v14 + 16 * v18);
      *(v14 + 16 * v18) = v22;
      v10 = v18 + 1;
      ++v11;
      if (v18 > 8190 || v21 >= 0x1FFF)
      {
        goto LABEL_28;
      }
    }

    v10 = v18;
LABEL_28:
    if (v11 == 0x2000 && v10 == 0x2000)
    {
      v24 = 2;
    }

    else
    {
      v24 = v10 != 0x2000;
    }

    v7 = *(a1 + 64);
    if ((v24 & 1) == 0)
    {
      v25 = *(v7 + 8 * v9);
      if ((v25 & 0x8000000000000000) == 0 && v25 < *(a1 + 32))
      {
        *(v7 + 8 * v9) = -1;
        *(a1 + 32) += 0x2000;
      }

      v10 = 0;
      ++v9;
      if ((v24 - 1) > 1)
      {
        continue;
      }
    }

    v26 = *(v7 + 8 * v8);
    v27 = v26 >= a2 || v26 < a2 - *(a1 + 40);
    if (!v27)
    {
      *(v7 + 8 * v8) = -1;
      *(a1 + 40) += 0x2000;
    }

    v11 = 0;
    --v8;
  }

  while (v9 < v8);
LABEL_46:
  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v30 = malloc_type_malloc(0x20000uLL, 0x1000040451B5BE8uLL);
  if (a3 < 1)
  {
    v48 = *a1;
    v47 = *(a1 + 16) - 1;
  }

  else
  {
    v31 = 0;
    v32 = ~v28 + a2;
    v33 = a3;
    v34 = *(a1 + 64);
    v35 = 8 * a3;
    do
    {
      v36 = v34[v31];
      if (v36 != -1 && v32 <= v36)
      {
        break;
      }

      if (v36 != -1)
      {
        if (v29 <= v36)
        {
          break;
        }

        v38 = *(a1 + 32);
        if (v38 > v36)
        {
          v39 = 0;
          do
          {
            if (v34[v39 / 8] == v38)
            {
              v38 += 0x2000;
              *(a1 + 32) = v38;
            }

            v39 += 8;
          }

          while (v35 != v39);
          if (v38 >= *a1)
          {
            break;
          }

          memcpy(v30, (*(a1 + 48) + 16 * v34[v31]), 0x20000uLL);
          memcpy((*(a1 + 48) + 16 * *(*(a1 + 64) + 8 * v31)), (*(a1 + 48) + 16 * *(a1 + 32)), 0x20000uLL);
          memcpy((*(a1 + 48) + 16 * *(a1 + 32)), v30, 0x20000uLL);
          v40 = *(a1 + 32);
          v34 = *(a1 + 64);
          v34[v31] = v40;
          *(a1 + 32) = v40 + 0x2000;
        }
      }

      ++v31;
    }

    while (v31 != v33);
    v41 = v33;
    do
    {
      v42 = v41 - 1;
      v43 = v34[v41 - 1];
      if (v29 > v43)
      {
        break;
      }

      if (v43 != -1)
      {
        if (v32 > v43)
        {
          break;
        }

        v44 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v44;
        v45 = v33 - 1;
        do
        {
          if (v34[v45] == a2 - v44)
          {
            v44 += 0x2000;
            *(a1 + 40) = v44;
          }

          v46 = v45-- + 1;
        }

        while (v46 > 1);
        if ((a2 - v44) < *(a1 + 16))
        {
          break;
        }

        memcpy(v30, (*(a1 + 48) + 16 * v34[v42]), 0x20000uLL);
        memcpy((*(a1 + 48) + 16 * *(*(a1 + 64) + 8 * v42)), (*(a1 + 48) + 16 * (a2 - *(a1 + 40))), 0x20000uLL);
        memcpy((*(a1 + 48) + 16 * (a2 - *(a1 + 40))), v30, 0x20000uLL);
        v34 = *(a1 + 64);
        v34[v42] = a2 - *(a1 + 40);
      }

      v27 = v41-- <= 1;
    }

    while (!v27);
    v47 = *(a1 + 16) - 1;
    v48 = *a1;
    do
    {
      v50 = *v34++;
      v49 = v50;
      if (v50 != -1)
      {
        if (v49 < v48)
        {
          v48 = v49;
        }

        v51 = v49 + 0x2000;
        v52 = v49 + 0x1FFF;
        if (v51 > v47)
        {
          v47 = v52;
        }

        if (v47 >= a2)
        {
          v53 = __si_assert_copy_extra_332();
          v54 = v53;
          v55 = "";
          if (v53)
          {
            v55 = v53;
          }

          __message_assert(v53, "OQueue.c", 13, "right < count", v55);
          free(v54);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }
      }

      --v33;
    }

    while (v33);
  }

  free(v30);
  if (v48 >= v47)
  {
    v56 = v48;
  }

  else
  {
    v56 = v48;
    do
    {
      v57 = *(a1 + 48);
      v58 = *(a1 + 56);
      v59 = (v57 + 16 * v48);
      while (1)
      {
        v60 = *v59;
        v59 += 2;
        if ((v60 & 0x3FFFFFFFFFFFFFFFuLL) >= v58)
        {
          break;
        }

        if (++v56 >= v47)
        {
          if (v47 <= v48 + 1)
          {
            v56 = v48 + 1;
          }

          else
          {
            v56 = v47;
          }

          goto LABEL_105;
        }
      }

      if (v56 < v47)
      {
        v61 = (v57 + 16 * v47);
        while (1)
        {
          v62 = *v61;
          v61 -= 2;
          if ((v62 & 0x3FFFFFFFFFFFFFFFuLL) <= v58)
          {
            break;
          }

          if (v56 >= --v47)
          {
            goto LABEL_105;
          }
        }

        v63 = *(v57 + 16 * v47);
        *(v57 + 16 * v47) = *(v57 + 16 * v56);
        *(*(a1 + 48) + 16 * v56++) = v63;
        --v47;
      }

      v48 = v56;
    }

    while (v56 < v47);
  }

LABEL_105:
  if ((*(*(a1 + 48) + 16 * v56) & 0x3FFFFFFFFFFFFFFFuLL) >= *(a1 + 56))
  {
    return v56;
  }

  else
  {
    return v56 + 1;
  }
}

uint64_t index_comp(void *a1, void *a2)
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