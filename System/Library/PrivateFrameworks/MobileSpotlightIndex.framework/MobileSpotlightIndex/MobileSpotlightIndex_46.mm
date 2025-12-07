uint64_t dataMap<unsigned int,false,false,true>::_data_map_sync_data(uint64_t *a1, int a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v43 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v7 = v6;
  v8 = v5;
  v9 = HIDWORD(v5);
  v11 = v10;
  v12 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v41 = v9;
  v42 = v8;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v50 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v50, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v7);
    dropThreadId(v8, 1, add_explicit + 1);
    CICleanUpReset(v8, v11);
  }

  else
  {
    v15 = a1[1];
    if (!*(v15 + 278) && !*(*(v15 + 299) + 16))
    {
      SIActivityJournalEvent(*(v15 + 4543), *(a1[1] + 252), 7u, 1u, *(v15 + 4511));
      v16 = a1[1];
      v17 = v16;
      if (*(v16 + 273) == 1)
      {
        if (a2)
        {
          v18 = (v16 + 339);
          if (*(v16 + 339) >= 1)
          {
            v19 = v16 + 363;
            v20 = 0;
            do
            {
              v21 = v20;
              storageWindowSync(*(v19 + 8 * v20), 0);
              v20 = v21 + 1;
            }

            while (v21 + 1 < *v18);
            v17 = a1[1];
          }
        }

        *(v17 + 273) = 0;
      }

      v22 = v17;
      if (*(v17 + 275) == 1)
      {
        if (a2)
        {
          v23 = *(*(v17 + 299) + 40);
          v24 = *(v17 + 4503) + 4 * v23;
          v25 = -*MEMORY[0x1E69E9AC8];
          v26 = 4 * (*(v17 + 4511) - v23);
          fd_system_status_stall_if_busy();
          msync((v24 & v25), v26, 16);
          v22 = a1[1];
        }

        *(v22 + 275) = 0;
      }

      if (*(v22 + 274) == 1)
      {
        if (a2)
        {
          v27 = v22 + 4096;
          v28 = *(v27 + 383);
          v29 = 4 * *(v27 + 391);
          fd_system_status_stall_if_busy();
          msync(v28, v29, 16);
          v22 = a1[1];
        }

        *(v22 + 274) = 0;
      }

      v30 = *(v22 + 299);
      *(v30 + 20) = *(v22 + 323);
      *(v30 + 28) = *(v22 + 4511);
      *(v30 + 24) = *(v22 + 4487);
      *(v30 + 44) = *(v22 + 4523);
      *(v30 + 52) = *(v22 + 4531);
      *(v30 + 16) = 0;
      fd_pwrite(*(v22 + 220), v30, 0x38uLL, 0);
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      *v50 = 0u;
      v31 = *__error();
      v32 = _SILogForLogForCategory(7);
      v33 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = fd_name(*(a1[1] + 220), v50, 0x100uLL);
        if (a2)
        {
          v35 = "sync";
        }

        else
        {
          v35 = "update";
        }

        v36 = (*(*a1 + 96))(a1);
        *buf = 136315650;
        v45 = v34;
        v46 = 2080;
        v47 = v35;
        v48 = 2048;
        v49 = v36;
        _os_log_impl(&dword_1C278D000, v32, v33, "%s complete %s map with count: %llu", buf, 0x20u);
      }

      *__error() = v31;
    }

    v43 = 1;
    v37 = threadData[9 * v42 + 1] + 320 * v41;
    *(v37 + 312) = v13;
    v38 = *(v37 + 232);
    if (v38)
    {
      v38(*(v37 + 288));
    }

    dropThreadId(v42, 0, add_explicit + 1);
  }

  v39 = (a1[1] + 278);
  if (v43 == 1)
  {
    return *v39;
  }

  *v39 = 22;
  return 22;
}

BOOL dataMap<unsigned int,false,false,true>::_data_map_needs_sync(uint64_t a1)
{
  v22 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(a1 + 8), 0, add_explicit + 1);
  v5 = v4;
  v6 = v3;
  v7 = HIDWORD(v3);
  v9 = v8;
  v10 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v11 = *(v10 + 312);
  v12 = *(v10 + 224);
  if (v12)
  {
    v12(*(v10 + 288));
  }

  v20 = v7;
  v21 = v6;
  v18 = v5;
  v19 = v9;
  if (_setjmp(v10))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v17, 2u);
    }

    *(v10 + 312) = v11;
    CIOnThreadCleanUpReset(v18);
    dropThreadId(v21, 1, add_explicit + 1);
    CICleanUpReset(v21, v19);
    result = 0;
  }

  else
  {
    v14 = *(*(*(a1 + 8) + 299) + 16) == 0;
    v22 = 1;
    v15 = threadData[9 * v21 + 1] + 320 * v20;
    *(v15 + 312) = v11;
    v16 = *(v15 + 232);
    if (v16)
    {
      v16(*(v15 + 288));
    }

    dropThreadId(v21, 0, add_explicit + 1);
    result = v14;
  }

  if ((v22 & 1) == 0)
  {
    *(*(a1 + 8) + 278) = 22;
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_get_data(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((*(*a1 + 104))(a1))
  {
    goto LABEL_2;
  }

  v26 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v10 = v9;
  v11 = v8;
  v12 = HIDWORD(v8);
  v14 = v13;
  v15 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v16 = *(v15 + 312);
  v17 = *(v15 + 224);
  if (v17)
  {
    v17(*(v15 + 288));
  }

  v24 = v12;
  v25 = v11;
  v22 = v10;
  v23 = v14;
  if (_setjmp(v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v21, 2u);
    }

    *(v15 + 312) = v16;
    CIOnThreadCleanUpReset(v22);
    dropThreadId(v25, 1, add_explicit + 1);
    CICleanUpReset(v25, v23);
    v18 = 0;
  }

  else
  {
    v18 = (*(*a1 + 120))(a1, a2, a3);
    v26 = 1;
    v19 = threadData[9 * v25 + 1] + 320 * v24;
    *(v19 + 312) = v16;
    v20 = *(v19 + 232);
    if (v20)
    {
      v20(*(v19 + 288));
    }

    dropThreadId(v25, 0, add_explicit + 1);
  }

  if ((v26 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  (*(*a1 + 112))(a1);
  result = v18;
  if (!v18)
  {
LABEL_2:
    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }

  return result;
}

char *dataMap<unsigned int,false,false,true>::data_map_get_data_entry@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0;
  v8 = (a5 + 16);
  *a3 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  v9 = *a1;
  *(a5 + 20) = *(a1[1] + 216);
  v13 = 0;
  if (a4)
  {
    result = (*(v9 + 120))(a1, a2, &v13);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = (*(v9 + 192))(a1, a2, &v13);
    if (!result)
    {
      return result;
    }
  }

  *a3 = 1;
  v11 = *(a1[1] + 216);
  v12 = v13 - v11;
  *a5 = result;
  *(a5 + 8) = v12;
  *(a5 + 20) = v11;
  if (v11)
  {
    return memcpy(v8, &result[-v11], v11);
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_get_extra_with_key(uint64_t *a1, unsigned __int8 *a2, unint64_t a3, _BYTE *a4)
{
  v8 = 0;
  v102 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  __dst = 0;
  v9 = dataMap<unsigned int,false,false,true>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    goto LABEL_46;
  }

  v62 = a2;
  v71 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v61 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v69 = v15;
  v70 = v14;
  v67 = v13;
  v68 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v86 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v86, 2u);
    }

    *(v18 + 312) = v61;
    CIOnThreadCleanUpReset(v67);
    dropThreadId(v70, 1, add_explicit + 1);
    CICleanUpReset(v70, v68);
    goto LABEL_43;
  }

  v20 = a1[1];
  v21 = *(v20 + 4487);
  v22 = v9 % v21;
  v23 = v9 % v21;
  v63 = a3;
  v60 = *(v20 + 216);
  v59 = v60 + a3;
  do
  {
    v24 = a1[1];
    v25 = *(v24 + 4479);
    v26 = *(v25 + 4 * v23);
    if (!v26)
    {
      break;
    }

    v27 = v23;
    if (*(v24 + 264))
    {
      os_unfair_lock_lock((v24 + 260));
      v50 = a1[1];
      v51 = *(v50 + 264);
      if (v51)
      {
        bit_vector_set(v51, v26);
        v50 = a1[1];
      }

      os_unfair_lock_unlock((v50 + 260));
      v28 = *(v25 + 4 * v27);
      v24 = a1[1];
    }

    else
    {
      v28 = *(v25 + 4 * v23);
    }

    v29 = *(v24 + 4511);
    v30 = *(v24 + 4503);
    if (v28 >= v29 || (v30 + 1) <= 1)
    {
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      *v86 = 0u;
      v87 = 0u;
      v32 = *__error();
      v33 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        log = v33;
        v43 = a1[1];
        v44 = fd_name(*(v43 + 220), v86, 0x100uLL);
        *buf = 136316418;
        v75 = "_data_map_get_offset_entry_impl";
        v76 = 1024;
        v77 = 362;
        v78 = 2048;
        v79 = v28;
        v80 = 2048;
        v81 = v29;
        v82 = 2048;
        v83 = v43;
        v84 = 2080;
        v85 = v44;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v32;
      goto LABEL_19;
    }

    v35 = *(v30 + 4 * v28);
    if (v35 != 1)
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v73 = 0;
      v36 = (v35 + *(v24 + 5575));
      if (*(v24 + 323) <= v36)
      {
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        *v86 = 0u;
        v87 = 0u;
        v37 = *__error();
        v45 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v58 = v45;
          v47 = a1[1];
          v48 = *(v47 + 323);
          v49 = fd_name(*(v47 + 220), v86, 0x100uLL);
          *buf = 136316418;
          v75 = "_data_map_get_data_entry";
          v76 = 1024;
          v77 = 397;
          v78 = 2048;
          v79 = v36;
          v80 = 2048;
          v81 = v48;
          v82 = 2048;
          v83 = v47;
          v84 = 2080;
          v85 = v49;
          v41 = v58;
          v42 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_36:
          _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, v42, buf, 0x3Au);
        }

LABEL_30:
        *__error() = v37;
        goto LABEL_19;
      }

      dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v35 + *(v24 + 5575), &v64, &v73);
      if (v73 == 1)
      {
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        *v86 = 0u;
        v87 = 0u;
        v37 = *__error();
        v38 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = fd_name(*(a1[1] + 220), v86, 0x100uLL);
          v40 = *(a1[1] + 323);
          *buf = 136316418;
          v75 = "_data_map_get_data_entry";
          v76 = 1024;
          v77 = 393;
          v78 = 2080;
          v79 = v39;
          v80 = 2048;
          v81 = v36;
          v82 = 2048;
          v83 = v40;
          v84 = 2048;
          v85 = v64;
          v41 = v38;
          v42 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if ((v73 & 1) == 0 && v59 == v64)
      {
        v46 = v65;
        if (!memcmp(v62, &v65[v60], v63))
        {
          v52 = v46;
          v53 = *(a1[1] + 216);
          memcpy(&__dst, v52, v53);
          HIDWORD(__dst) = v53;
          *a4 = 1;
          break;
        }
      }
    }

LABEL_19:
    if (v27 + 1 == v21)
    {
      v34 = 0;
    }

    else
    {
      v34 = v27 + 1;
    }

    v23 = v34;
  }

  while (v34 != v22);
  v71 = 1;
  v54 = threadData[9 * v70 + 1] + 320 * v69;
  *(v54 + 312) = v61;
  v55 = *(v54 + 232);
  if (v55)
  {
    v55(*(v54 + 288));
  }

  dropThreadId(v70, 0, add_explicit + 1);
LABEL_43:
  if ((v71 & 1) == 0)
  {
    *a4 = 0;
    *(a1[1] + 278) = 22;
  }

  v8 = __dst;
LABEL_46:
  (*(*a1 + 112))(a1);
  return v8;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_ids_get_locked(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = dataMap<unsigned int,false,false,true>::dm_hash(*(*(a1 + 8) + 282), a2, a3);

  return dataMap<unsigned int,false,false,true>::data_map_ids_get_locked_with_hash(a1, a4, v10, v5, a2, a3);
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_ids_get_locked_with_hash(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const void *a5, size_t a6)
{
  v100 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  v56 = *(v8 + 4487);
  v9 = *(v8 + 216);
  v70 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(a1 + 8), 0, add_explicit + 1);
  v12 = v11;
  v13 = v10;
  v14 = HIDWORD(v10);
  v16 = v15;
  v17 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v57 = *(v17 + 312);
  v18 = *(v17 + 224);
  if (v18)
  {
    v18(*(v17 + 288));
  }

  v68 = v14;
  v69 = v13;
  v66 = v12;
  v67 = v16;
  if (_setjmp(v17))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v84 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v84, 2u);
    }

    *(v17 + 312) = v57;
    CIOnThreadCleanUpReset(v66);
    dropThreadId(v69, 1, add_explicit + 1);
    CICleanUpReset(v69, v67);
    v19 = 0;
    goto LABEL_40;
  }

  v20 = a3 % v56;
  v21 = v20;
  v54 = v9 + a6;
  v55 = v9;
  v22 = 0;
  while (1)
  {
    v23 = v21;
    v24 = *(a1 + 8);
    v25 = *(v24 + 4479);
    v26 = *(v25 + 4 * v23);
    if (!v26)
    {
      break;
    }

    v27 = v23;
    v28 = *(v25 + 4 * v23);
    v29 = *(v24 + 4511);
    v30 = *(v24 + 4503);
    if (v26 >= v29 || (v30 + 1) <= 1)
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      *v84 = 0u;
      v85 = 0u;
      v32 = *__error();
      v33 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        log = v33;
        v43 = *(a1 + 8);
        v44 = fd_name(*(v43 + 220), v84, 0x100uLL);
        *buf = 136316418;
        v73 = "_data_map_get_offset_entry_impl";
        v74 = 1024;
        v75 = 362;
        v76 = 2048;
        v77 = v28;
        v78 = 2048;
        v79 = v29;
        v80 = 2048;
        v81 = v43;
        v82 = 2080;
        v83 = v44;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v32;
      goto LABEL_16;
    }

    v35 = *(v30 + 4 * v26);
    if (v35 != 1)
    {
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v71 = 0;
      v36 = (v35 + *(v24 + 5575));
      if (*(v24 + 323) <= v36)
      {
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        *v84 = 0u;
        v85 = 0u;
        v37 = *__error();
        v45 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v53 = v45;
          v46 = *(a1 + 8);
          v47 = *(v46 + 323);
          v48 = fd_name(*(v46 + 220), v84, 0x100uLL);
          *buf = 136316418;
          v73 = "_data_map_get_data_entry";
          v74 = 1024;
          v75 = 397;
          v76 = 2048;
          v77 = v36;
          v78 = 2048;
          v79 = v47;
          v80 = 2048;
          v81 = v46;
          v82 = 2080;
          v83 = v48;
          v41 = v53;
          v42 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_35:
          _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, v42, buf, 0x3Au);
        }
      }

      else
      {
        dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v35 + *(v24 + 5575), &v63, &v71);
        if (v71 != 1)
        {
          if ((v71 & 1) == 0 && v54 == v63 && !memcmp(a5, (v64 + v55), a6))
          {
            if (v22 < a4)
            {
              *(a2 + 4 * v22) = *(v25 + 4 * v27);
            }

            v22 = (v22 + 1);
          }

          goto LABEL_16;
        }

        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        *v84 = 0u;
        v85 = 0u;
        v37 = *__error();
        v38 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = fd_name(*(*(a1 + 8) + 220), v84, 0x100uLL);
          v40 = *(*(a1 + 8) + 323);
          *buf = 136316418;
          v73 = "_data_map_get_data_entry";
          v74 = 1024;
          v75 = 393;
          v76 = 2080;
          v77 = v39;
          v78 = 2048;
          v79 = v36;
          v80 = 2048;
          v81 = v40;
          v82 = 2048;
          v83 = v63;
          v41 = v38;
          v42 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_35;
        }
      }

      *__error() = v37;
    }

LABEL_16:
    if (v27 + 1 == v56)
    {
      v34 = 0;
    }

    else
    {
      v34 = v27 + 1;
    }

    v21 = v34;
    v19 = v22;
    if (v34 == v20)
    {
      goto LABEL_37;
    }
  }

  v19 = v22;
LABEL_37:
  v70 = 1;
  v49 = threadData[9 * v69 + 1] + 320 * v68;
  *(v49 + 312) = v57;
  v50 = *(v49 + 232);
  if (v50)
  {
    v50(*(v49 + 288));
  }

  dropThreadId(v69, 0, add_explicit + 1);
LABEL_40:
  result = v19;
  if ((v70 & 1) == 0)
  {
    result = 0;
    *(*(a1 + 8) + 278) = 22;
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_ids_get(void *a1, unsigned __int8 *a2, size_t a3, uint64_t a4, unsigned int a5)
{
  v10 = dataMap<unsigned int,false,false,true>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  locked_with_hash = dataMap<unsigned int,false,false,true>::data_map_ids_get_locked_with_hash(a1, a4, v10, a5, a2, a3);
  (*(*a1 + 112))(a1);
  return locked_with_hash;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_id_get_with_key_noextra(uint64_t *a1, unsigned __int8 *a2, size_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v4 = dataMap<unsigned int,false,false,true>::dm_hash(*(a1[1] + 282), a2, a3);
  v66 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v6 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v8 = v7;
  v9 = v6;
  v10 = HIDWORD(v6);
  v12 = v11;
  v13 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  v64 = v10;
  v65 = v9;
  v62 = v8;
  v63 = v12;
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v80 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v80, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v62);
    dropThreadId(v65, 1, add_explicit + 1);
    CICleanUpReset(v65, v63);
    v16 = 0;
    goto LABEL_42;
  }

  if ((*(*a1 + 104))(a1))
  {
    v16 = 0;
    goto LABEL_38;
  }

  v58 = v14;
  v17 = a1[1];
  v18 = *(v17 + 4487);
  v19 = v4 % v18;
  v20 = v19;
  v54 = *(v17 + 216) + a3;
  v55 = *(v17 + 216);
  while (1)
  {
    v21 = a1[1];
    v22 = *(v21 + 4479);
    v23 = *(v22 + 4 * v20);
    if (!v23)
    {
      break;
    }

    v24 = v20;
    v25 = *(v22 + 4 * v20);
    v26 = *(v21 + 4511);
    v27 = *(v21 + 4503);
    if (v23 >= v26 || (v27 + 1) <= 1)
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      *v80 = 0u;
      v81 = 0u;
      v29 = *__error();
      v30 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        log = v30;
        v40 = a1[1];
        v41 = fd_name(*(v40 + 220), v80, 0x100uLL);
        *buf = 136316418;
        v69 = "_data_map_get_offset_entry_impl";
        v70 = 1024;
        v71 = 362;
        v72 = 2048;
        v73 = v25;
        v74 = 2048;
        v75 = v26;
        v76 = 2048;
        v77 = v40;
        v78 = 2080;
        v79 = v41;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v29;
      goto LABEL_18;
    }

    v32 = *(v27 + 4 * v23);
    if (v32 != 1)
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v67 = 0;
      v33 = (v32 + *(v21 + 5575));
      if (*(v21 + 323) <= v33)
      {
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        *v80 = 0u;
        v81 = 0u;
        v34 = *__error();
        v42 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v53 = v42;
          v43 = a1[1];
          v44 = *(v43 + 323);
          v45 = fd_name(*(v43 + 220), v80, 0x100uLL);
          *buf = 136316418;
          v69 = "_data_map_get_data_entry";
          v70 = 1024;
          v71 = 397;
          v72 = 2048;
          v73 = v33;
          v74 = 2048;
          v75 = v44;
          v76 = 2048;
          v77 = v43;
          v78 = 2080;
          v79 = v45;
          v38 = v53;
          v39 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_35:
          _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, v39, buf, 0x3Au);
        }

LABEL_29:
        *__error() = v34;
        goto LABEL_18;
      }

      dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v32 + *(v21 + 5575), &v59, &v67);
      if (v67 == 1)
      {
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        *v80 = 0u;
        v81 = 0u;
        v34 = *__error();
        v35 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = fd_name(*(a1[1] + 220), v80, 0x100uLL);
          v37 = *(a1[1] + 323);
          *buf = 136316418;
          v69 = "_data_map_get_data_entry";
          v70 = 1024;
          v71 = 393;
          v72 = 2080;
          v73 = v36;
          v74 = 2048;
          v75 = v33;
          v76 = 2048;
          v77 = v37;
          v78 = 2048;
          v79 = v59;
          v38 = v35;
          v39 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_35;
        }

        goto LABEL_29;
      }

      if ((v67 & 1) == 0 && v54 == v59 && !memcmp(a2, (v60 + v55), a3))
      {
        v16 = *(v22 + 4 * v24);
        goto LABEL_37;
      }
    }

LABEL_18:
    if (v24 + 1 == v18)
    {
      v31 = 0;
    }

    else
    {
      v31 = v24 + 1;
    }

    v20 = v31;
    if (v31 == v19)
    {
      v16 = 0;
      goto LABEL_37;
    }
  }

  v16 = 0;
LABEL_37:
  v14 = v58;
LABEL_38:
  v46 = a1[1];
  if (*(v46 + 264))
  {
    os_unfair_lock_lock((v46 + 260));
    v50 = a1[1];
    v51 = *(v50 + 264);
    if (v51)
    {
      bit_vector_set(v51, v16);
      v50 = a1[1];
    }

    os_unfair_lock_unlock((v50 + 260));
  }

  v66 = 1;
  v47 = threadData[9 * v65 + 1] + 320 * v64;
  *(v47 + 312) = v14;
  v48 = *(v47 + 232);
  if (v48)
  {
    v48(*(v47 + 288));
  }

  dropThreadId(v65, 0, add_explicit + 1);
LABEL_42:
  if ((v66 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
    v16 = 0;
  }

  (*(*a1 + 112))(a1);
  return v16;
}

CFIndex dataMap<unsigned int,false,false,true>::data_map_id_get_with_key(uint64_t *a1, unsigned __int8 *a2, unint64_t a3, const void *a4)
{
  v104 = *MEMORY[0x1E69E9840];
  v8 = dataMap<unsigned int,false,false,true>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    v9 = 0;
    goto LABEL_44;
  }

  v65 = a2;
  v66 = a3;
  v74 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v64 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v72 = v15;
  v73 = v14;
  v70 = v13;
  v71 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v88 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v88, 2u);
    }

    *(v18 + 312) = v64;
    CIOnThreadCleanUpReset(v70);
    dropThreadId(v73, 1, add_explicit + 1);
    CICleanUpReset(v73, v71);
    v20 = 0;
    goto LABEL_41;
  }

  v21 = a1[1];
  v22 = *(v21 + 4487);
  v23 = v8 % v22;
  v24 = v8 % v22;
  v62 = *(v21 + 216) + v66;
  v63 = *(v21 + 216);
  while (1)
  {
    v25 = a1[1];
    v26 = *(v25 + 4479);
    v27 = *(v26 + 4 * v24);
    if (!v27)
    {
      break;
    }

    v28 = v24;
    v29 = *(v26 + 4 * v24);
    v30 = *(v25 + 4511);
    v31 = *(v25 + 4503);
    if (v27 >= v30 || (v31 + 1) <= 1)
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      *v88 = 0u;
      v89 = 0u;
      v33 = *__error();
      v34 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        log = v34;
        v44 = add_explicit;
        v45 = a1[1];
        v46 = fd_name(*(v45 + 220), v88, 0x100uLL);
        *buf = 136316418;
        v77 = "_data_map_get_offset_entry_impl";
        v78 = 1024;
        v79 = 362;
        v80 = 2048;
        v81 = v29;
        v82 = 2048;
        v83 = v30;
        v84 = 2048;
        v85 = v45;
        add_explicit = v44;
        v86 = 2080;
        v87 = v46;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v33;
      goto LABEL_18;
    }

    v36 = *(v31 + 4 * v27);
    if (v36 != 1)
    {
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v75 = 0;
      v37 = (v36 + *(v25 + 5575));
      if (*(v25 + 323) <= v37)
      {
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        *v88 = 0u;
        v89 = 0u;
        v38 = *__error();
        v47 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v61 = v47;
          v49 = add_explicit;
          v50 = a1[1];
          v51 = *(v50 + 323);
          v52 = fd_name(*(v50 + 220), v88, 0x100uLL);
          *buf = 136316418;
          v77 = "_data_map_get_data_entry";
          v78 = 1024;
          v79 = 397;
          v80 = 2048;
          v81 = v37;
          v82 = 2048;
          v83 = v51;
          v84 = 2048;
          v85 = v50;
          add_explicit = v49;
          v86 = 2080;
          v87 = v52;
          v42 = v61;
          v43 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_36:
          _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, v43, buf, 0x3Au);
        }

LABEL_29:
        *__error() = v38;
        goto LABEL_18;
      }

      dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v36 + *(v25 + 5575), &v67, &v75);
      if (v75 == 1)
      {
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        *v88 = 0u;
        v89 = 0u;
        v38 = *__error();
        v39 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = fd_name(*(a1[1] + 220), v88, 0x100uLL);
          v41 = *(a1[1] + 323);
          *buf = 136316418;
          v77 = "_data_map_get_data_entry";
          v78 = 1024;
          v79 = 393;
          v80 = 2080;
          v81 = v40;
          v82 = 2048;
          v83 = v37;
          v84 = 2048;
          v85 = v41;
          v86 = 2048;
          v87 = v67;
          v42 = v39;
          v43 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_36;
        }

        goto LABEL_29;
      }

      if ((v75 & 1) == 0 && v62 == v67)
      {
        v48 = v68;
        if (!memcmp(v65, &v68[v63], v66) && !memcmp(v48, a4, *(a1[1] + 216)))
        {
          v20 = *(v26 + 4 * v28);
          goto LABEL_38;
        }
      }
    }

LABEL_18:
    if (v28 + 1 == v22)
    {
      v35 = 0;
    }

    else
    {
      v35 = v28 + 1;
    }

    v24 = v35;
    if (v35 == v23)
    {
      v20 = 0;
      goto LABEL_38;
    }
  }

  v20 = 0;
LABEL_38:
  v74 = 1;
  v53 = threadData[9 * v73 + 1] + 320 * v72;
  *(v53 + 312) = v64;
  v54 = *(v53 + 232);
  if (v54)
  {
    v54(*(v53 + 288));
  }

  dropThreadId(v73, 0, add_explicit + 1);
LABEL_41:
  v55 = v20;
  if ((v74 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
    v55 = 0;
  }

  v9 = v55;
LABEL_44:
  v56 = a1[1];
  if (*(v56 + 264))
  {
    os_unfair_lock_lock((v56 + 260));
    v58 = a1[1];
    v59 = *(v58 + 264);
    if (v59)
    {
      bit_vector_set(v59, v9);
      v58 = a1[1];
    }

    os_unfair_lock_unlock((v58 + 260));
  }

  (*(*a1 + 112))(a1);
  return v9;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_get_data_id(uint64_t *a1, unsigned int a2, unsigned __int8 *a3, size_t a4, int a5)
{
  v9 = dataMap<unsigned int,false,false,true>::dm_hash(*(a1[1] + 282), &a3[a2], a4 - a2);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v38 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v46 = v15;
  v47 = v14;
  v44 = v13;
  v45 = v17;
  if (!_setjmp(v18))
  {
    bucket_entry = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v9, 0, a3, a4, *(a1[1] + 4511));
    v43 = 0;
    *buf = 0;
    v41 = 0;
    v42 = 0;
    if (bucket_entry)
    {
      v22 = *bucket_entry;
      if (*bucket_entry)
      {
        if (v22 >= *(a1[1] + 4511))
        {
          v20 = 0;
        }

        else
        {
          v20 = v22;
        }

        goto LABEL_29;
      }

      if (!a5)
      {
        goto LABEL_16;
      }

      v23 = bucket_entry;
      *buf = a4;
      v41 = a3;
      v24 = *(a1[1] + 4511);
      (*(*a1 + 112))(a1);
      if ((*(*a1 + 336))(a1))
      {
        goto LABEL_16;
      }

      v25 = v24;
      v26 = *(a1[1] + 4511);
      if (v24 == v26)
      {
        goto LABEL_18;
      }

      v30 = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v9, 0, a3, a4, v26);
      if (v30)
      {
        v27 = *v30;
        v25 = *(a1[1] + 4511);
        if (v27 >= v25)
        {
          goto LABEL_16;
        }

        if (v27)
        {
          dataMap<unsigned int,false,false,true>::_data_map_set_seen_id(a1, v27);
          goto LABEL_48;
        }

        v23 = v30;
LABEL_18:
        v27 = v25;
        v28 = v23;
        if (a4 >> 28)
        {
          v33 = 5;
        }

        else if (a4 >> 21)
        {
          v33 = 4;
        }

        else
        {
          if (!(a4 >> 14))
          {
            if (a4 < 0x80)
            {
              v29 = 1;
            }

            else
            {
              v29 = 2;
            }

LABEL_37:
            if (dataMap<unsigned int,false,false,true>::_data_map_grow(a1, (v29 + a4), &v43))
            {
              v34 = a1[1];
              if ((*(v34 + 275) & 1) == 0)
              {
                dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
                v34 = a1[1];
                *(v34 + 275) = 1;
              }

              v35 = *(v34 + 4503);
              *(v35 + 4 * v27) = *(v34 + 323);
              if ((*(v34 + 273) & 1) == 0)
              {
                dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
                v34 = a1[1];
                *(v34 + 273) = 1;
              }

              *(v35 + 4 * v27) = data_entry_store<unsigned int,false,false,true>(v34 + 307, buf);
              v36 = a1[1];
              ++*(v36 + 4511);
              if ((*(v36 + 274) & 1) == 0)
              {
                dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
                v36 = a1[1];
                *(v36 + 274) = 1;
              }

              if ((v43 & 4) == 0)
              {
                *v28 = v27;
LABEL_47:
                SIActivityJournalDMAdd(*(v36 + 4543), *(v36 + 252), *(v36 + 216), v27, v9, a4);
                goto LABEL_48;
              }

              v37 = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v9, v27, 0, 0, *(v36 + 4511));
              v36 = a1[1];
              *v37 = v27;
              if (v36)
              {
                goto LABEL_47;
              }

LABEL_48:
              v20 = v27;
              goto LABEL_29;
            }

LABEL_16:
            v20 = 0;
LABEL_29:
            v31 = threadData[9 * v47 + 1] + 320 * v46;
            *(v31 + 312) = v38;
            v32 = *(v31 + 232);
            if (v32)
            {
              v32(*(v31 + 288));
            }

            dropThreadId(v47, 0, add_explicit + 1);
            goto LABEL_32;
          }

          v33 = 3;
        }

        v29 = v33;
        goto LABEL_37;
      }
    }

    v20 = 0;
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v18 + 312) = v38;
  CIOnThreadCleanUpReset(v44);
  dropThreadId(v47, 1, add_explicit + 1);
  CICleanUpReset(v47, v45);
  v20 = 0;
LABEL_32:
  (*(*a1 + 112))(a1);
  return v20;
}

void dataMap<unsigned int,false,false,true>::_data_map_set_seen_id(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 264))
  {
    os_unfair_lock_lock((v3 + 260));
    v6 = *(a1 + 8);
    v7 = *(v6 + 264);
    if (v7)
    {
      bit_vector_set(v7, a2);
      v6 = *(a1 + 8);
    }

    os_unfair_lock_unlock((v6 + 260));
  }
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_get_data_locked(uint64_t a1, unsigned int a2, void *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v6 = *(v5 + 4511);
  v7 = *(v5 + 4503);
  if (v6 <= a2 || (v7 + 1) <= 1)
  {
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
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v9 = *__error();
    v10 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      v11 = __error();
      result = 0;
      *v11 = v9;
      return result;
    }

    v25 = *(a1 + 8);
    v26 = fd_name(*(v25 + 220), &v46, 0x100uLL);
    *buf = 136316418;
    v35 = "_data_map_get_offset_entry_impl";
    v36 = 1024;
    v37 = 362;
    v38 = 2048;
    v39 = a2;
    v40 = 2048;
    v41 = v6;
    v42 = 2048;
    v43 = v25;
    v44 = 2080;
    v45 = v26;
    v20 = "%s:%d: invalid data id %llu max %llu %p %s";
    v24 = v10;
LABEL_17:
    _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, v20, buf, 0x3Au);
    goto LABEL_6;
  }

  v13 = *(v7 + 4 * a2);
  if (v13 == 1)
  {
    return 0;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v14 = *(v5 + 216);
  v33 = 0;
  v15 = (v13 + *(v5 + 5575));
  if (*(v5 + 323) <= v15)
  {
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
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v9 = *__error();
    v17 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v21 = *(a1 + 8);
    v22 = *(v21 + 323);
    v23 = fd_name(*(v21 + 220), &v46, 0x100uLL);
    *buf = 136316418;
    v35 = "_data_map_get_data_entry";
    v36 = 1024;
    v37 = 397;
    v38 = 2048;
    v39 = v15;
    v40 = 2048;
    v41 = v22;
    v42 = 2048;
    v43 = v21;
    v44 = 2080;
    v45 = v23;
    v20 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_15:
    v24 = v17;
    goto LABEL_17;
  }

  dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v13 + *(v5 + 5575), &v30, &v33);
  if (v33 == 1)
  {
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
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v9 = *__error();
    v17 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v18 = fd_name(*(*(a1 + 8) + 220), &v46, 0x100uLL);
    v19 = *(*(a1 + 8) + 323);
    *buf = 136316418;
    v35 = "_data_map_get_data_entry";
    v36 = 1024;
    v37 = 393;
    v38 = 2080;
    v39 = v18;
    v40 = 2048;
    v41 = v15;
    v42 = 2048;
    v43 = v19;
    v44 = 2048;
    v45 = v30;
    v20 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
    goto LABEL_15;
  }

  if (a3)
  {
    *a3 = (v30 - v14);
  }

  v27 = *(a1 + 8);
  if (*(v27 + 264))
  {
    os_unfair_lock_lock((v27 + 260));
    v28 = *(a1 + 8);
    v29 = *(v28 + 264);
    if (v29)
    {
      bit_vector_set(v29, a2);
      v28 = *(a1 + 8);
    }

    os_unfair_lock_unlock((v28 + 260));
  }

  return v31 + v14;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_unlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 276))
  {
    return 0;
  }

  v2 = db_rwlock_unlock_unknown(v1);
  if (v2)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v2;
      if (v2 == -1)
      {
        v6 = *__error();
      }

      v7 = 136315650;
      v8 = "_data_map_unlock";
      v9 = 1024;
      v10 = 186;
      v11 = 1024;
      v12 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_unlock error %d", &v7, 0x18u);
    }

    *__error() = v4;
  }

  return v2;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_rdlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 276))
  {
    return 0;
  }

  lock = db_read_lock(v1);
  if (lock)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = lock;
      if (lock == -1)
      {
        v6 = *__error();
      }

      v7 = 136315650;
      v8 = "_data_map_rdlock";
      v9 = 1024;
      v10 = 175;
      v11 = 1024;
      v12 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_rdlock error %d", &v7, 0x18u);
    }

    *__error() = v4;
  }

  return lock;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_make_read_only(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(v1[1] + 277);
  if (dataMap<unsigned int,false,false,true>::_data_map_commit(v1, 0))
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v51, 0x400uLL);
  v5 = *(v2[1] + 220);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(v5 + 44);
  if (v6 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = fd_name(v5, v51, 0x400uLL);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = strlen(v7);
  if (v9 < 8)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = &v8[v9 - 7];
  if (strcmp(v10, ".header"))
  {
    return 0xFFFFFFFFLL;
  }

  strcpy(v10, ".map");
  v11 = v3 ? 3 : 0;
  v12 = fd_create_protected(v6, v8, 1538, v11);
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v12;
  v14 = v2[1];
  v15 = *(v14 + 323);
  v16 = (*(v14 + 4471) + 103) & 0x1FFFFFFF8;
  v17 = (*(v14 + 4459) + v16 + 15) & 0x3FFFFFFF8;
  if (fd_truncate(v12, (v15 + v17 + 15) & 0xFFFFFFFFFFFFFFF8))
  {
    _fd_unlink_with_origin(v13, 0);
    fd_release(v13);
    return 0xFFFFFFFFLL;
  }

  v49 = 0;
  v48 = 0u;
  v47 = 0u;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN7dataMapIjLb0ELb0ELb1EE28data_map_make_read_only_implILb0EEENSt3__19enable_ifIXntT_EiE4typeEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_216;
  aBlock[4] = v2;
  v46[0] = v13;
  v42 = v13;
  v46[1] = (v15 + v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v48) = 1;
  BYTE5(v48) = 1;
  *(&v48 + 1) = _Block_copy(aBlock);
  LOBYTE(v49) = 26;
  bzero(v50, 0x1000uLL);
  _windowsMapInit(v46, 1, 1);
  v43 = (v15 + v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  *&v47 = v43;
  Ptr = _windowsGetPtr(v46, 0, 88);
  v19 = _windowsGetPtr(v46, 0x58uLL, v16 - 88);
  v20 = _windowsGetPtr(v46, v16, v17 - v16);
  v21 = *(v2[1] + 299);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  *(Ptr + 48) = *(v21 + 6);
  *(Ptr + 16) = v23;
  *(Ptr + 32) = v24;
  *Ptr = v22;
  *(Ptr + 56) = 13;
  *(Ptr + 64) = 88;
  *(Ptr + 68) = v16;
  *(Ptr + 72) = v17;
  memcpy(v19, *(v2[1] + 4479), *(v2[1] + 4471));
  memcpy(v20, *(v2[1] + 4503), *(v2[1] + 4459));
  if (v15)
  {
    for (i = 0; i < v15; i += v26)
    {
      if (v15 - i >= 0x100000)
      {
        v26 = 0x100000;
      }

      else
      {
        v26 = v15 - i;
      }

      v27 = _windowsGetPtr(v46, i + v17, v26);
      fd_pread(*(v2[1] + 307), v27, v26, i);
    }
  }

  *(Ptr + 60) = v43;
  if (v48 >= 1)
  {
    v28 = 0;
    do
    {
      storageWindowSync(v50[v28++], 1);
    }

    while (v28 < v48);
  }

  storageWindowsUnmap(v46);
  fd_release(v42);
  free(*(v2[1] + 299));
  v29 = v2[1];
  *(v29 + 299) = 0;
  _fd_unlink_with_origin(*(v29 + 220), 0);
  fd_release(*(v2[1] + 220));
  v30 = v2[1];
  *(v30 + 220) = 0;
  munmap(*(v30 + 4479), *(v30 + 4475));
  v31 = v2[1];
  *(v31 + 4479) = -1;
  _fd_unlink_with_origin(*(v31 + 236), 0);
  fd_release(*(v2[1] + 236));
  v32 = v2[1];
  *(v32 + 236) = 0;
  munmap(*(v32 + 4503), *(v32 + 4499));
  v33 = v2[1];
  *(v33 + 4503) = -1;
  _fd_unlink_with_origin(*(v33 + 4491), 0);
  fd_release(*(v2[1] + 4491));
  v34 = v2[1];
  *(v34 + 4491) = 0;
  storageWindowsUnmap(v34 + 307);
  v35 = *(v2[1] + 307);
  _fd_unlink_with_origin(v35, 0);
  fd_release(v35);
  if (*(v2[1] + 277))
  {
    v36 = 3;
  }

  else
  {
    v36 = 0;
  }

  v37 = fd_create_protected(v6, v8, 0, v36);
  v38 = v2[1];
  *(v38 + 220) = v37;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 0x40000000;
  v44[2] = ___ZN7dataMapIjLb0ELb0ELb1EE28data_map_make_read_only_implILb0EEENSt3__19enable_ifIXntT_EiE4typeEv_block_invoke_2;
  v44[3] = &__block_descriptor_tmp_217;
  v44[4] = v2;
  *(v38 + 343) = 257;
  *(v38 + 307) = v37;
  *(v38 + 315) = v43;
  *(v38 + 339) = 1;
  *(v38 + 347) = _Block_copy(v44);
  *(v38 + 355) = 26;
  bzero((v38 + 363), 0x1000uLL);
  _windowsMapInit((v2[1] + 307), 1, 1);
  *(v2[1] + 323) = v43;
  v39 = v2[1];
  v40 = _windowsGetPtr(v39 + 307, 0, 76);
  *(v39 + 283) = v40;
  *(v39 + 299) = _windowsGetPtr(v39 + 307, 0, 56);
  *(v39 + 4479) = _windowsGetPtr(v39 + 307, 0x58uLL, v16 - 88);
  v41 = _windowsGetPtr(v39 + 307, v16, v17 - v16);
  result = 0;
  *(v39 + 4503) = v41;
  *(v39 + 5575) = *(v40 + 72);
  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_commit(uint64_t *a1, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 208))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v47 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v6 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v8 = v7;
  v9 = v6;
  v10 = HIDWORD(v6);
  v12 = v11;
  v13 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  LODWORD(v54[0]) = v9;
  *buf = v10;
  v45 = v8;
  v46 = v12;
  if (!_setjmp(v13))
  {
    v17 = a1[1];
    if (v17)
    {
      v18 = (v17 + 4511);
      v19 = *(v17 + 4543);
      v20 = *(v17 + 252);
      v21 = *(v17 + 299);
      if (v21)
      {
        v22 = *(v21 + 16);
        if (v22 < 3)
        {
          v23 = v22 + 1;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      SIActivityJournalEvent(v19, v20, 5u, v23, *v18);
      v24 = a1[1];
    }

    else
    {
      v24 = 0;
    }

    v25 = *(*(v24 + 299) + 16);
    if (v25)
    {
      if (v25 != 1)
      {
        v31 = *(v24 + 4543);
        v30 = *(v24 + 252);
        v26 = 0xFFFFFFFFLL;
        goto LABEL_28;
      }
    }

    else
    {
      v26 = (*(*a1 + 224))(a1, a2);
      if (v26 || (v26 = (*(*a1 + 232))(a1, a2), v26))
      {
LABEL_24:
        v27 = a1[1];
        if (!v27)
        {
          v34 = v26;
LABEL_39:
          v47 = 1;
          v36 = threadData[9 * LODWORD(v54[0]) + 1] + 320 * *buf;
          *(v36 + 312) = v14;
          v37 = *(v36 + 232);
          if (v37)
          {
            v37(*(v36 + 288));
          }

          dropThreadId(LODWORD(v54[0]), 0, add_explicit + 1);
          v16 = v34;
          goto LABEL_42;
        }

        v24 = a1[1];
        v28 = *(v27 + 299);
        v29 = *(v27 + 4543);
        v30 = *(v27 + 252);
        if (!v28)
        {
          v35 = 0;
          v32 = a1[1];
          goto LABEL_38;
        }

        v25 = *(v28 + 16);
        v31 = v29;
LABEL_28:
        v32 = v24;
        if (v25)
        {
          if (v25 == 2)
          {
            v33 = 3;
          }

          else
          {
            if (v25 != 1)
            {
              v29 = v31;
              v35 = 0;
              goto LABEL_38;
            }

            v33 = 2;
          }
        }

        else
        {
          v33 = 1;
        }

        v29 = v31;
        v35 = v33;
LABEL_38:
        v34 = v26;
        SIActivityJournalEvent(v29, v30, 6u, v35, *(v32 + 4511));
        goto LABEL_39;
      }
    }

    v26 = (*(*a1 + 56))(a1);
    if (!v26)
    {
      v26 = (*(*a1 + 64))(a1);
      if (!v26)
      {
        v26 = (*(*a1 + 72))(a1);
      }
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v44 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v44, 2u);
  }

  *(v13 + 312) = v14;
  CIOnThreadCleanUpReset(v45);
  dropThreadId(LODWORD(v54[0]), 1, add_explicit + 1);
  CICleanUpReset(LODWORD(v54[0]), v46);
  v16 = 0xFFFFFFFFLL;
LABEL_42:
  if ((v47 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  memset(v54, 0, sizeof(v54));
  v38 = *__error();
  v39 = _SILogForLogForCategory(7);
  v40 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v39, v40))
  {
    v41 = fd_name(*(a1[1] + 220), v54, 0x100uLL);
    if (a2)
    {
      v42 = "commit";
    }

    else
    {
      v42 = "syncless commit";
    }

    v43 = (*(*a1 + 96))(a1);
    *buf = 136315650;
    v49 = v41;
    v50 = 2080;
    v51 = v42;
    v52 = 2048;
    v53 = v43;
    _os_log_impl(&dword_1C278D000, v39, v40, "%s complete %s with count: %llu", buf, 0x20u);
  }

  *__error() = v38;
  (*(*a1 + 216))(a1);
  return v16;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_commit_shadow_complete(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    if (*(*(v2 + 299) + 16) == 2)
    {
      SIActivityJournalEvent(*(v2 + 4543), *(v2 + 252), 0xFu, 3u, *(v2 + 4511));
      v4 = *(a1 + 8);
      v5 = *(v4 + 299);
      *(v5 + 32) = *(v5 + 20);
      *(v5 + 40) = *(v5 + 28);
      *(v5 + 16) = 1;
      fd_pwrite(*(v4 + 220), v5, 0x38uLL, 0);
      fd_sync(*(*(a1 + 8) + 220), 0);
      v6 = *(a1 + 8);
      v7 = (v6 + 4511);
      v8 = *(v6 + 4543);
      v9 = *(v6 + 252);
      v10 = *(v6 + 299);
      if (v10)
      {
        v11 = *(v10 + 16);
        if (v11 < 3)
        {
          v12 = v11 + 1;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      SIActivityJournalEvent(v8, v9, 0x10u, v12, *v7);
      return *(*(a1 + 8) + 278);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_commit_shadow(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!*(v2 + 278) && *(*(v2 + 299) + 16) == 2)
  {
    SIActivityJournalEvent(*(v2 + 4543), *(v2 + 252), 0xEu, 3u, *(v2 + 4511));
    fd_sync(*(*(a1 + 8) + 228), 0);
    v2 = *(a1 + 8);
  }

  fd_release(*(v2 + 228));
  v3 = *(a1 + 8);
  *(v3 + 228) = 0;
  return *(v3 + 278);
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_shadow(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    if (*(*(v2 + 299) + 16) == 2)
    {
      SIActivityJournalEvent(*(v2 + 4543), *(v2 + 252), 0xCu, 3u, *(v2 + 4511));
      v4 = *(a1 + 8);
      v5 = *(v4 + 299);
      *(v5 + 16) = 2;
      sibling_with_suffix_protected = *(v4 + 228);
      if (!sibling_with_suffix_protected)
      {
        sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v4 + 220), ".shadow", 514);
        v7 = *(a1 + 8);
        *(v7 + 228) = sibling_with_suffix_protected;
        v5 = *(v7 + 299);
      }

      fd_pwrite(sibling_with_suffix_protected, v5, 0x38uLL, 0);
      v8 = *(a1 + 8);
      v9 = (v8 + 4511);
      v10 = *(v8 + 4543);
      v11 = *(v8 + 252);
      v12 = *(v8 + 299);
      if (v12)
      {
        v13 = *(v12 + 16);
        if (v13 < 3)
        {
          v14 = v13 + 1;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      SIActivityJournalEvent(v10, v11, 0xDu, v14, *v9);
      return *(*(a1 + 8) + 278);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_commit_sync(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    v4 = *(*(v2 + 299) + 16);
    if (v4 == 1)
    {
      return 0;
    }

    else
    {
      v5 = (v2 + 4511);
      v6 = *(v2 + 4543);
      v7 = *(v2 + 252);
      if (v4 == 2)
      {
        v8 = 3;
      }

      else
      {
        v8 = 0;
      }

      if (v4)
      {
        v9 = v8;
      }

      else
      {
        v9 = 1;
      }

      SIActivityJournalEvent(v6, v7, 8u, v9, *v5);
      v10 = *(a1 + 8);
      v11 = *(v10 + 299);
      *(v11 + 16) = 2;
      fd_pwrite(*(v10 + 220), v11, 0x38uLL, 0);
      fd_sync(*(*(a1 + 8) + 220), 0);
      v12 = *(a1 + 8);
      v13 = (v12 + 4511);
      v14 = *(v12 + 4543);
      v15 = *(v12 + 252);
      v16 = *(v12 + 299);
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17 < 3)
        {
          v18 = v17 + 1;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      SIActivityJournalEvent(v14, v15, 9u, v18, *v13);
      return *(*(a1 + 8) + 278);
    }
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_flush(uint64_t *a1)
{
  if ((*(*a1 + 208))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v36 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v6 = v5;
  v7 = v4;
  v8 = HIDWORD(v4);
  v10 = v9;
  v11 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  v34 = v8;
  v35 = v7;
  v32 = v6;
  v33 = v10;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31[0] = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v31, 2u);
    }

    *(v11 + 312) = v12;
    CIOnThreadCleanUpReset(v32);
    dropThreadId(v35, 1, add_explicit + 1);
    CICleanUpReset(v35, v33);
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v15 = a1[1];
    v16 = (v15 + 4511);
    v17 = *(v15 + 4543);
    v18 = *(v15 + 252);
    v19 = *(v15 + 299);
    if (v19)
    {
      v20 = *(v19 + 16);
      if (v20 < 3)
      {
        v21 = v20 + 1;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    SIActivityJournalEvent(v17, v18, 4u, v21, *v16);
    if (*(*(a1[1] + 299) + 16))
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = (*(*a1 + 224))(a1, 1);
    }

    v36 = 1;
    v22 = threadData[9 * v35 + 1] + 320 * v34;
    *(v22 + 312) = v12;
    v23 = *(v22 + 232);
    if (v23)
    {
      v23(*(v22 + 288));
    }

    dropThreadId(v35, 0, add_explicit + 1);
  }

  v24 = a1[1];
  v25 = v24;
  v26 = v24 + 278;
  if ((v36 & 1) == 0)
  {
    *v26 = 22;
    goto LABEL_24;
  }

  if (v24)
  {
LABEL_24:
    v27 = v24 + 4511;
    v28 = *(v26 + 21);
    if (v28)
    {
      v29 = *(v28 + 16);
      if (v29 < 3)
      {
        v30 = v29 + 1;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    SIActivityJournalEvent(*(v27 + 32), *(v25 + 252), 4u, v30, *v27);
  }

  (*(*a1 + 216))(a1);
  return v14;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_validate(void *a1)
{
  v96 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  v3 = a1[1];
  v2 = 1;
  if (!*(v3 + 323))
  {
    goto LABEL_71;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v65 = *(v3 + 216);
  while (1)
  {
    v66 = 0;
    v67 = 0;
    v7 = *(v3 + 4511);
    v68 = 0;
    v8 = *(v3 + 4503);
    if (v5 < v7 && (v8 + 1) > 1)
    {
      v13 = (v8 + 4 * v5);
      v12 = 1;
    }

    else
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      memset(v82, 0, sizeof(v82));
      v10 = *__error();
      v11 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v30 = a1[1];
        v31 = fd_name(*(v30 + 220), v82, 0x100uLL);
        *buf = 136316418;
        v71 = "_data_map_get_offset_entry_impl";
        v72 = 1024;
        v73 = 362;
        v74 = 2048;
        v75 = v5;
        v76 = 2048;
        v77 = v7;
        v78 = 2048;
        v79 = v30;
        v80 = 2080;
        v81 = v31;
        _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      v12 = 0;
      v13 = 0;
      *__error() = v10;
    }

    v69 = 0;
    v14 = a1[1];
    v15 = (*(v14 + 5575) + v4);
    if (v15 >= *(v14 + 323))
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      memset(v82, 0, sizeof(v82));
      v39 = *__error();
      v40 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
LABEL_44:
        *__error() = v39;
        v34 = *__error();
        v45 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        *v82 = 136315394;
        *&v82[4] = "_data_map_validate";
        *&v82[12] = 1024;
        *&v82[14] = 814;
        v38 = "%s:%d: entry exceeds storage";
        v46 = v45;
        v47 = 18;
LABEL_68:
        _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, v38, v82, v47);
        goto LABEL_69;
      }

      v41 = a1[1];
      v42 = *(v41 + 323);
      v43 = fd_name(*(v41 + 220), v82, 0x100uLL);
      *buf = 136316418;
      v71 = "_data_map_get_data_entry";
      v72 = 1024;
      v73 = 397;
      v74 = 2048;
      v75 = v15;
      v76 = 2048;
      v77 = v42;
      v78 = 2048;
      v79 = v41;
      v80 = 2080;
      v81 = v43;
      v44 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_74:
      _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, v44, buf, 0x3Au);
      goto LABEL_44;
    }

    dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v15, &v66, &v69);
    if (v69 == 1)
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      memset(v82, 0, sizeof(v82));
      v39 = *__error();
      v40 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

      v63 = fd_name(*(a1[1] + 220), v82, 0x100uLL);
      v64 = *(a1[1] + 323);
      *buf = 136316418;
      v71 = "_data_map_get_data_entry";
      v72 = 1024;
      v73 = 393;
      v74 = 2080;
      v75 = v63;
      v76 = 2048;
      v77 = v15;
      v78 = 2048;
      v79 = v64;
      v80 = 2048;
      v81 = v66;
      v44 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
      goto LABEL_74;
    }

    if ((v12 & 1) == 0 || *v13 != v6)
    {
      break;
    }

    v16 = v66;
    if (v5)
    {
      v17 = v67;
      v18 = a1[1];
      v19 = data_entry_hash<unsigned int,false,false,true>(v66, v67, v65, *(v18 + 282));
      bucket_entry = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v19, v5, 0, 0, *(v18 + 4511));
      v21 = bucket_entry;
      if (bucket_entry)
      {
        if (v5 == *bucket_entry)
        {
          v22 = a1[1];
          v23 = dataMap<unsigned int,false,false,true>::dm_hash(*(v22 + 282), v17, v16);
          v24 = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v23, 0, v17, v16, *(v22 + 4511));
          v25 = v24;
          if (v24)
          {
            if (v5 == *v24)
            {
              goto LABEL_21;
            }

            v57 = v24;
          }

          else
          {
            v57 = 0;
          }

          v58 = *__error();
          v59 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *v82 = 136315394;
            *&v82[4] = "_data_map_validate";
            *&v82[12] = 1024;
            *&v82[14] = 855;
            _os_log_error_impl(&dword_1C278D000, v59, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch hash ", v82, 0x12u);
          }

          *__error() = v58;
          v34 = *__error();
          v35 = _SILogForLogForCategory(0);
          v60 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
          if (v25)
          {
            if (!v60)
            {
              goto LABEL_69;
            }

            v61 = *v57;
            *v82 = 136316418;
            *&v82[4] = "_data_map_validate";
            *&v82[12] = 1024;
            *&v82[14] = 857;
            *&v82[18] = 2048;
            *&v82[20] = v5;
            *&v82[28] = 2048;
            *&v82[30] = v61;
            *&v82[38] = 2048;
            *&v82[40] = v4;
            LOWORD(v83) = 2080;
            *(&v83 + 2) = v17;
            v38 = "%s:%d: sid: %llu hid: %llu offset: %ld %s";
LABEL_62:
            v46 = v35;
            v47 = 58;
            goto LABEL_68;
          }

          if (!v60)
          {
            goto LABEL_69;
          }

          *v82 = 136316162;
          *&v82[4] = "_data_map_validate";
          *&v82[12] = 1024;
          *&v82[14] = 859;
          *&v82[18] = 2048;
          *&v82[20] = v5;
          *&v82[28] = 2048;
          *&v82[30] = v4;
          *&v82[38] = 2080;
          *&v82[40] = v17;
          v38 = "%s:%d: hash entry not found for %llu offset 0x%lx %s";
LABEL_67:
          v46 = v35;
          v47 = 48;
          goto LABEL_68;
        }

        v48 = bucket_entry;
      }

      else
      {
        v48 = 0;
      }

      v49 = *__error();
      v50 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *v82 = 136315394;
        *&v82[4] = "_data_map_validate";
        *&v82[12] = 1024;
        *&v82[14] = 841;
        _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch hash ids ", v82, 0x12u);
      }

      *__error() = v49;
      v34 = *__error();
      v51 = _SILogForLogForCategory(0);
      v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
      if (v21)
      {
        if (v52)
        {
          v53 = *v48;
          *v82 = 136316418;
          *&v82[4] = "_data_map_validate";
          *&v82[12] = 1024;
          *&v82[14] = 843;
          *&v82[18] = 2048;
          *&v82[20] = v5;
          *&v82[28] = 2048;
          *&v82[30] = v53;
          *&v82[38] = 2048;
          *&v82[40] = v4;
          LOWORD(v83) = 2080;
          *(&v83 + 2) = v17;
          v54 = "%s:%d: sid: %llu hid: %llu offset: %ld %s";
          v55 = v51;
          v56 = 58;
LABEL_76:
          _os_log_error_impl(&dword_1C278D000, v55, OS_LOG_TYPE_ERROR, v54, v82, v56);
        }
      }

      else if (v52)
      {
        *v82 = 136316162;
        *&v82[4] = "_data_map_validate";
        *&v82[12] = 1024;
        *&v82[14] = 845;
        *&v82[18] = 2048;
        *&v82[20] = v5;
        *&v82[28] = 2048;
        *&v82[30] = v4;
        *&v82[38] = 2080;
        *&v82[40] = v17;
        v54 = "%s:%d: hash entry not found for %llu offset 0x%lx %s";
        v55 = v51;
        v56 = 48;
        goto LABEL_76;
      }

      v2 = 0;
      goto LABEL_70;
    }

LABEL_21:
    if (v16 < 0x80)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v16 >> 14)
    {
      v27 = 3;
    }

    else
    {
      v27 = v26;
    }

    if (v16 >> 21)
    {
      v28 = 4;
    }

    else
    {
      v28 = v27;
    }

    if (v16 >> 28)
    {
      v29 = 5;
    }

    else
    {
      v29 = v28;
    }

    v4 = (v16 + v6 + v29);
    ++v5;
    v3 = a1[1];
    v6 = v4;
    if (*(v3 + 323) <= v4)
    {
      v2 = 1;
      goto LABEL_71;
    }
  }

  v32 = *__error();
  v33 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *v82 = 136315394;
    *&v82[4] = "_data_map_validate";
    *&v82[12] = 1024;
    *&v82[14] = 827;
    _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch offset ids ", v82, 0x12u);
  }

  *__error() = v32;
  v34 = *__error();
  v35 = _SILogForLogForCategory(0);
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
  if (!v12)
  {
    if (!v36)
    {
      goto LABEL_69;
    }

    *v82 = 136316162;
    *&v82[4] = "_data_map_validate";
    *&v82[12] = 1024;
    *&v82[14] = 831;
    *&v82[18] = 2048;
    *&v82[20] = v5;
    *&v82[28] = 2048;
    *&v82[30] = v4;
    *&v82[38] = 2080;
    *&v82[40] = v67;
    v38 = "%s:%d: offset not found for %llu offset 0x%lx %s";
    goto LABEL_67;
  }

  if (v36)
  {
    v37 = *v13;
    *v82 = 136316418;
    *&v82[4] = "_data_map_validate";
    *&v82[12] = 1024;
    *&v82[14] = 829;
    *&v82[18] = 2048;
    *&v82[20] = v5;
    *&v82[28] = 2048;
    *&v82[30] = v4;
    *&v82[38] = 2048;
    *&v82[40] = v37;
    LOWORD(v83) = 2080;
    *(&v83 + 2) = v67;
    v38 = "%s:%d: sid: %llu so: %ld oo:%ld %s";
    goto LABEL_62;
  }

LABEL_69:
  v2 = 1;
LABEL_70:
  *__error() = v34;
LABEL_71:
  (*(*a1 + 112))(a1);
  return v2;
}

void dataMap<unsigned int,false,false,true>::data_map_destroy(uint64_t a1)
{
  if (*(a1 + 8))
  {
    makeThreadId();
    v2 = *(a1 + 8);
    if ((*(v2 + 283) + 1) >= 2)
    {
      v79 = 0;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v15 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, v2, 0, add_explicit + 1);
      v17 = v16;
      v18 = v15;
      v19 = HIDWORD(v15);
      v21 = v20;
      v22 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
      v23 = *(v22 + 312);
      v24 = *(v22 + 224);
      if (v24)
      {
        v24(*(v22 + 288));
      }

      v77 = v19;
      v78 = v18;
      v75 = v17;
      v76 = v21;
      if (_setjmp(v22))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v74 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v74, 2u);
        }

        *(v22 + 312) = v23;
        CIOnThreadCleanUpReset(v75);
        dropThreadId(v78, 1, add_explicit + 1);
        CICleanUpReset(v78, v76);
        v25 = 0;
      }

      else
      {
        v33 = *(*(*(a1 + 8) + 283) + 60);
        v79 = 1;
        v34 = threadData[9 * v78 + 1] + 320 * v77;
        *(v34 + 312) = v23;
        v35 = *(v34 + 232);
        if (v35)
        {
          v35(*(v34 + 288));
        }

        dropThreadId(v78, 0, add_explicit + 1);
        v25 = v33;
      }

      v36 = v25;
      if ((v79 & 1) == 0)
      {
        v36 = *(*(a1 + 8) + 291);
      }

      munmap(*(*(a1 + 8) + 283), v36);
      v37 = *(a1 + 8);
      *(v37 + 283) = -1;
      fd_release(*(v37 + 220));
      v38 = *(a1 + 8);
      *(v38 + 220) = 0;
      v39 = *(v38 + 228);
      if (v39)
      {
        fd_release(v39);
        v40 = *(a1 + 8);
        *(v40 + 228) = 0;
        v41 = v40;
      }

      else
      {
        v41 = v38;
      }

      v42 = v41;
    }

    else
    {
      v3 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, v2, 0, v3 + 1);
      v6 = v5;
      v7 = v4;
      v8 = HIDWORD(v4);
      v10 = v9;
      v11 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
      v12 = *(v11 + 312);
      v13 = *(v11 + 224);
      if (v13)
      {
        v13(*(v11 + 288));
      }

      v77 = v8;
      v78 = v7;
      v75 = v6;
      v76 = v10;
      if (_setjmp(v11))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v74 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v74, 2u);
        }

        *(v11 + 312) = v12;
        CIOnThreadCleanUpReset(v75);
        dropThreadId(v78, 1, v3 + 1);
        CICleanUpReset(v78, v76);
      }

      else
      {
        v26 = *(a1 + 8);
        v27 = (v26 + 4511);
        v28 = *(v26 + 4543);
        v29 = *(v26 + 252);
        v30 = *(v26 + 299);
        if (v30)
        {
          v31 = *(v30 + 16);
          if (v31 < 3)
          {
            v32 = v31 + 1;
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
        }

        SIActivityJournalEvent(v28, v29, 2u, v32, *v27);
        v43 = *(a1 + 8);
        v44 = *(v43 + 299);
        if (v44 && !*(v44 + 16))
        {
          v45 = *(a1 + 8);
          if (*(v43 + 274) == 1)
          {
            v46 = v43 + 4479;
            v47 = *v46;
            v48 = 4 * *(v46 + 8);
            fd_system_status_stall_if_busy();
            msync(v47, v48, 4);
            _fd_unlink_with_origin(*(*(a1 + 8) + 236), 0);
            munmap(*(*(a1 + 8) + 4479), *(*(a1 + 8) + 4475));
            v49 = *(a1 + 8);
            *(v49 + 4479) = -1;
            v45 = v49;
          }

          v50 = v45;
          if (*(v45 + 273) == 1)
          {
            storageWindowsKillPages(v45 + 307);
            storageWindowsUnmap(*(a1 + 8) + 307);
            storageWindowsClose(*(a1 + 8) + 307);
            fd_truncate(*(*(a1 + 8) + 307), *(*(*(a1 + 8) + 299) + 20));
            v50 = *(a1 + 8);
          }

          if (*(v50 + 275) == 1)
          {
            v51 = v50 + 4096;
            v52 = *(v51 + 407);
            v53 = 4 * *(v51 + 415);
            fd_system_status_stall_if_busy();
            msync(v52, v53, 4);
            munmap(*(*(a1 + 8) + 4503), *(*(a1 + 8) + 4499));
            v54 = *(a1 + 8);
            *(v54 + 4503) = -1;
            fd_truncate(*(v54 + 4491), 4 * *(v54 + 4511));
          }
        }

        v55 = threadData[9 * v78 + 1] + 320 * v77;
        *(v55 + 312) = v12;
        v56 = *(v55 + 232);
        if (v56)
        {
          v56(*(v55 + 288));
        }

        dropThreadId(v78, 0, v3 + 1);
      }

      v57 = *(a1 + 8);
      v58 = *(v57 + 299);
      if (v58)
      {
        free(v58);
        v59 = *(a1 + 8);
        *(v59 + 299) = 0;
        v57 = v59;
      }

      fd_release(*(v57 + 220));
      v60 = *(a1 + 8);
      *(v60 + 220) = 0;
      v61 = *(v60 + 4503);
      if (v61 != -1)
      {
        munmap(v61, *(v60 + 4499));
        v62 = *(a1 + 8);
        *(v62 + 4503) = -1;
        *(v62 + 4499) = 0;
        v60 = v62;
      }

      fd_release(*(v60 + 4491));
      v63 = *(a1 + 8);
      *(v63 + 4491) = 0;
      storageWindowsUnmap(v63 + 307);
      storageWindowsClose(*(a1 + 8) + 307);
      v64 = *(a1 + 8);
      v65 = *(v64 + 4479);
      if (v65 != -1)
      {
        munmap(v65, *(v64 + 4475));
        v66 = *(a1 + 8);
        *(v66 + 4479) = -1;
        *(v66 + 4475) = 0;
        v64 = v66;
      }

      fd_release(*(v64 + 236));
      v67 = *(a1 + 8);
      *(v67 + 236) = 0;
      v42 = v67;
    }

    v68 = *(v42 + 228);
    if (v68)
    {
      fd_release(v68);
      v69 = *(a1 + 8);
      *(v69 + 228) = 0;
      v42 = v69;
    }

    v70 = *(v42 + 264);
    v71 = v42;
    if (v70)
    {
      v72 = v70[2];
      if (v72)
      {
        CFRelease(v72);
      }

      free(v70);
      v73 = *(a1 + 8);
      *(v73 + 264) = 0;
      v71 = v73;
    }

    if ((v71[4].__opaque[12] & 1) == 0)
    {
      db_rwlock_destroy(v71);
      v71 = *(a1 + 8);
    }

    free(v71);
  }
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_init(uint64_t (***a1)(void, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v9[0] = a2;
  v9[1] = a3;
  v10 = a4;
  v11 = a5;
  return (**a1)(a1, v9, a3, a4, a5, a6, a7, a8);
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_init_with_ctx(uint64_t *a1, uint64_t a2)
{
  v216 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(*a2, sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v6 = v5;
  v7 = v4;
  v8 = HIDWORD(v4);
  v10 = v9;
  v11 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  *(v11 + 216) = 0;
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  v192 = v8;
  v193 = v7;
  v190 = v6;
  v191 = v10;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", __str, 2u);
    }

    *(v11 + 312) = v12;
    CIOnThreadCleanUpReset(v190);
    dropThreadId(v193, 1, add_explicit + 1);
    CICleanUpReset(v193, v191);
    return 0;
  }

  v181 = v12;
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 20);
  v177 = *(a2 + 16);
  bzero(__str, 0x400uLL);
  v18 = malloc_type_calloc(1uLL, 0x15D7uLL, 0x10A0040EAD026E7uLL);
  a1[1] = v18;
  *(v18 + 63) = *(a2 + 72);
  *(v18 + 4535) = *(a2 + 24);
  *(v18 + 244) = *(a2 + 56);
  *(v18 + 65) = 0;
  v18[277] = BYTE1(v17) & 1;
  v18[276] = (v17 & 8) != 0;
  v176 = v17 & 2;
  *(v18 + 283) = -1;
  *(v18 + 299) = 0;
  *(v18 + 4503) = -1;
  *(v18 + 4479) = -1;
  v182 = add_explicit;
  if ((v17 & 8) == 0)
  {
    *(v18 + 26) = 0;
    *(v18 + 11) = 0u;
    *(v18 + 12) = 0u;
    *(v18 + 9) = 0u;
    *(v18 + 10) = 0u;
    *(v18 + 7) = 0u;
    *(v18 + 8) = 0u;
    *(v18 + 5) = 0u;
    *(v18 + 6) = 0u;
    *(v18 + 3) = 0u;
    *(v18 + 4) = 0u;
    *(v18 + 1) = 0u;
    *(v18 + 2) = 0u;
    *v18 = 0u;
    pthread_mutex_init(v18, 0);
    v18 = a1[1];
  }

  v19 = *(a2 + 32);
  *(v18 + 339) = 0;
  *(v18 + 5575) = 0;
  *(v18 + 5583) = v19;
  *(v18 + 315) = 0;
  *(v18 + 307) = 0;
  strlcpy(v18 + 4551, v16, 0x400uLL);
  *(a1[1] + 4543) = *(a2 + 64);
  if ((v17 & 2) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = 536871426;
  }

  v189 = 0;
  makeThreadId();
  v179 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v21 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, v179 + 1);
  v23 = v22;
  v24 = v21;
  v25 = HIDWORD(v21);
  v27 = v26;
  v28 = threadData[9 * v21 + 1] + 320 * HIDWORD(v21);
  v178 = *(v28 + 312);
  v29 = *(v28 + 224);
  if (v29)
  {
    v29(*(v28 + 288));
  }

  v187 = v25;
  v188 = v24;
  v185 = v23;
  v186 = v27;
  if (_setjmp(v28))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v200 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v200, 2u);
    }

    *(v28 + 312) = v178;
    CIOnThreadCleanUpReset(v185);
    dropThreadId(v188, 1, v179 + 1);
    CICleanUpReset(v188, v186);
    v30 = v181;
    v31 = a1;
    if (v189)
    {
      goto LABEL_158;
    }

    goto LABEL_156;
  }

  if (!v16 || (v32 = strlen(v16), v15 == -1) || v32 - 241 <= 0xFFFFFFFFFFFFFF0FLL)
  {
    v55 = *__error();
    v56 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *v200 = 136315394;
      *&v200[4] = "data_map_init_with_ctx";
      *&v200[12] = 1024;
      *&v200[14] = 1111;
      _os_log_error_impl(&dword_1C278D000, v56, OS_LOG_TYPE_ERROR, "%s:%d: param error", v200, 0x12u);
    }

    v57 = v55;
    v30 = v181;
    goto LABEL_43;
  }

  v33 = v15;
  if ((v17 & 2) != 0)
  {
    v34 = 0;
  }

  else
  {
    v34 = ((v17 & 1) << 10) | 0x20000202;
  }

  if ((v17 & 3) != 2)
  {
    if ((v17 & 0x100) != 0)
    {
      v58 = 3;
    }

    else
    {
      v58 = 0;
    }

    v59 = a1;
LABEL_49:
    snprintf(__str, 0x400uLL, "%s.header", v16);
    v60 = fd_create_protected(v15, __str, v34, 3u);
    *(v59[1] + 220) = v60;
    *(v59[1] + 295) = fd_lseek(v60, 0, 2);
    snprintf(__str, 0x400uLL, "%s.data", v16);
    v61 = fd_create_protected(v15, __str, v34, v58);
    v62 = v61;
    if ((v17 & 3) != 0 || (memset(&v214, 0, sizeof(v214)), fd_stat(v61, &v214)) || (v63 = v214.st_blocks << 9, v214.st_blocks << 9 <= v214.st_size + 0x400000))
    {
      v65 = v62;
      v67 = v17 & 1;
    }

    else
    {
      bzero(v200, 0x400uLL);
      v175 = *__error();
      v64 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v195 = v63;
        v196 = 2048;
        st_size = v214.st_size;
        v198 = 2080;
        v199 = __str;
        _os_log_impl(&dword_1C278D000, v64, OS_LOG_TYPE_DEFAULT, "found allocated size %lld for %lld %s", buf, 0x20u);
      }

      *__error() = v175;
      snprintf(v200, 0x400uLL, "tmp.%s.data.1", v16);
      v65 = fd_create_protected(v33, v200, 1538, v58);
      if (fd_copyfile(v62, v65, 0))
      {
        v66 = v65;
        v65 = v62;
        v67 = v17 & 1;
      }

      else
      {
        snprintf(v200, 0x400uLL, "tmp.%s.data.2", v16);
        v67 = v17 & 1;
        if (fd_rename(v62, v200) || fd_rename(v65, __str))
        {
          v66 = v65;
          v65 = v62;
        }

        else
        {
          _fd_unlink_with_origin(v62, 0);
          fd_release(v62);
          v66 = 0;
        }
      }

      v118 = v66;
      _fd_unlink_with_origin(v66, 0);
      fd_release(v118);
    }

    v68 = fd_lseek(v65, 0, 2);
    v69 = a1[1];
    v183[0] = MEMORY[0x1E69E9820];
    v183[1] = 0x40000000;
    v183[2] = ___ZN7dataMapIjLb0ELb0ELb1EE22data_map_init_with_ctxEP17data_map_init_ctx_block_invoke_171;
    v183[3] = &__block_descriptor_tmp_172_6059;
    v183[4] = a1;
    *(v69 + 343) = (v17 & 2) >> 1;
    *(v69 + 307) = v65;
    *(v69 + 315) = v68;
    *(v69 + 339) = 1;
    *(v69 + 344) = 1;
    *(v69 + 347) = _Block_copy(v183);
    *(v69 + 355) = 26;
    bzero((v69 + 363), 0x1000uLL);
    snprintf(__str, 0x400uLL, "%s.offsets", v16);
    v70 = fd_create_protected(v33, __str, v34, 3u);
    *(a1[1] + 4491) = v70;
    *(a1[1] + 4459) = fd_lseek(v70, 0, 2);
    snprintf(__str, 0x400uLL, "%s.buckets", v16);
    v71 = fd_create_protected(v33, __str, 514, 3u);
    *(a1[1] + 236) = v71;
    v31 = a1;
    v72 = fd_lseek(v71, 0, 2);
    v73 = a1[1];
    *(v73 + 4471) = v72;
    if (v67)
    {
      v30 = v181;
      if (fd_truncate(*(v73 + 220), 56) == -1)
      {
        v114 = *__error();
        v115 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_141;
        }

        *v200 = 136315394;
        *&v200[4] = "data_map_init_with_ctx";
        *&v200[12] = 1024;
        *&v200[14] = 1241;
        v116 = "%s:%d: fd_truncate error";
      }

      else
      {
        v76 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
        v77 = a1[1];
        *(v77 + 295) = 56;
        *(v77 + 299) = v76;
        v76[2] = 0;
        *v76 = 0x446174615000;
        *(v76 + 2) = 13;
        *(v76 + 3) = v177;
        v78 = MEMORY[0x1E69E9AC8];
        if (fd_truncate(*(v77 + 4491), *MEMORY[0x1E69E9AC8] & 0xFFFFFFFFFFFFFFFCLL) == -1)
        {
          v114 = *__error();
          v115 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_141;
          }

          *v200 = 136315394;
          *&v200[4] = "data_map_init_with_ctx";
          *&v200[12] = 1024;
          *&v200[14] = 1267;
          v116 = "%s:%d: fd_truncate error";
        }

        else
        {
          v79 = fd_mmap(*(a1[1] + 4491), 0x100000, v176 ^ 3u, 1, 0);
          v80 = a1[1];
          *(v80 + 4503) = v79;
          if (v79 == -1)
          {
            v114 = *__error();
            v115 = _SILogForLogForCategory(0);
            if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_141;
            }

            *v200 = 136315394;
            *&v200[4] = "data_map_init_with_ctx";
            *&v200[12] = 1024;
            *&v200[14] = 1272;
            v116 = "%s:%d: offsets fd_mmap error";
          }

          else
          {
            v81 = v80;
            v82 = v80 + 4096;
            *(v82 + 403) = 0x100000;
            v83 = *v78 >> 2;
            v84 = *v78 & 0xFFFFFFFFFFFFFFFCLL;
            *(v82 + 363) = *v78 & 0xFFFFFFFC;
            *(v82 + 367) = v83;
            if (fd_truncate(*(v81 + 236), v84) == -1)
            {
              v114 = *__error();
              v115 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_141;
              }

              *v200 = 136315394;
              *&v200[4] = "data_map_init_with_ctx";
              *&v200[12] = 1024;
              *&v200[14] = 1282;
              v116 = "%s:%d: fd_truncate error";
            }

            else
            {
              v85 = fd_mmap(*(a1[1] + 236), 0x100000, v176 ^ 3u, 1, 0);
              v86 = a1[1];
              *(v86 + 4479) = v85;
              if (v85 == -1)
              {
                v114 = *__error();
                v115 = _SILogForLogForCategory(0);
                if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_141;
                }

                *v200 = 136315394;
                *&v200[4] = "data_map_init_with_ctx";
                *&v200[12] = 1024;
                *&v200[14] = 1288;
                v116 = "%s:%d: hash fd_mmap error";
              }

              else
              {
                *(v86 + 4471) = v84;
                *(v86 + 4475) = 0x100000;
                v87 = *v78;
                v88 = *v78 >> 2;
                *(*(v86 + 299) + 24) = v88;
                *(v86 + 4487) = v88;
                if (_storageWindowsSetFileSize((v86 + 307), v87))
                {
                  data_entry_store<unsigned int,false,false,true>(a1[1] + 307, dword_1E8194788);
                  v89 = a1[1];
                  v90 = *(v89 + 299);
                  v90[5] = *(v89 + 323);
                  **(v89 + 4503) = 0;
                  v90[7] = 1;
                  *(v89 + 4511) = 1;
                  v91 = *(v89 + 4543);
                  v92 = *(v89 + 252);
                  v93 = v90[4];
                  if (v93 < 3)
                  {
                    v94 = v93 + 1;
                  }

                  else
                  {
                    v94 = 0;
                  }

                  SIActivityJournalEvent(v91, v92, 0, v94, 1u);
                  v53 = a1[1];
                  v54 = 0;
                  goto LABEL_124;
                }

                v114 = *__error();
                v115 = _SILogForLogForCategory(0);
                if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_141;
                }

                *v200 = 136315394;
                *&v200[4] = "data_map_init_with_ctx";
                *&v200[12] = 1024;
                *&v200[14] = 1300;
                v116 = "%s:%d: fd_truncate error";
              }
            }
          }
        }
      }
    }

    else
    {
      if (*(v73 + 295) <= 0x37u)
      {
        v74 = *__error();
        v75 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v163 = *(a1[1] + 295);
          *v200 = 136315650;
          *&v200[4] = "data_map_init_with_ctx";
          *&v200[12] = 1024;
          *&v200[14] = 1322;
          *&v200[18] = 2048;
          *&v200[20] = v163;
          _os_log_error_impl(&dword_1C278D000, v75, OS_LOG_TYPE_ERROR, "%s:%d: invalid header size %ld", v200, 0x1Cu);
        }

        v57 = v74;
        v30 = v181;
        goto LABEL_142;
      }

      v95 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
      v96 = a1[1];
      *(v96 + 299) = v95;
      v97 = (v17 >> 2) & 1;
      if ((v17 & 0x80) != 0)
      {
        sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v96 + 220), ".shadow", 0);
        v96 = a1[1];
        if (sibling_with_suffix_protected)
        {
          v99 = sibling_with_suffix_protected;
          v100 = (v17 >> 2) & 1;
          if (!fd_copyfile(sibling_with_suffix_protected, *(v96 + 220), 0))
          {
            v100 = 0;
          }

          fd_release(v99);
          v96 = a1[1];
          v97 = v100;
        }
      }

      v30 = v181;
      if (fd_pread(*(v96 + 220), *(v96 + 299), 0x38uLL, 0) == 56)
      {
        *(a1[1] + 323) = *(*(a1[1] + 299) + 20);
        v101 = a1[1];
        v102 = *(v101 + 299);
        v103 = *(v102 + 28);
        *(v101 + 4511) = v103;
        v104 = *(v101 + 4543);
        v105 = *(v101 + 252);
        v106 = *(v102 + 16);
        if (v106 < 3)
        {
          v107 = v106 + 1;
        }

        else
        {
          v107 = 0;
        }

        SIActivityJournalEvent(v104, v105, 1u, v107, v103);
        fd_truncate(*(a1[1] + 4491), 4 * *(a1[1] + 4511));
        fd_truncate(*(a1[1] + 4491), *(a1[1] + 4459));
        v108 = a1[1];
        *(v108 + 4463) = *(v108 + 4459) >> 2;
        v109 = *(v108 + 299);
        *(v108 + 4487) = *(v109 + 24);
        *(v108 + 4523) = *(v109 + 44);
        *(v108 + 4531) = *(v109 + 52);
        *(v108 + 282) = *(v109 + 8) < 9u;
        if (v97)
        {
          v110 = *(v109 + 20);
          v111 = *(v109 + 32);
          if (v110 < v111)
          {
            goto LABEL_143;
          }

          if (v111 == v110)
          {
            v112 = v109;
            v113 = v108;
          }

          else
          {
            if ((v17 & 2) == 0)
            {
              *(v109 + 20) = v111;
            }

            *(v108 + 323) = v111;
            v113 = a1[1];
            v112 = *(v113 + 299);
          }

          v119 = *(v113 + 4511);
          v120 = v112[10];
          if (v119 < v120)
          {
            goto LABEL_143;
          }

          if (v119 != v120)
          {
            if ((v17 & 2) == 0)
            {
              v112[6] = 0;
              v112[7] = v120;
              v112[5] = v112[8];
            }

            *(v113 + 4511) = v120;
            *(v113 + 4487) = 0;
          }

          v108 = v113;
        }

        v121 = MEMORY[0x1E69E9AC8];
        if (((*MEMORY[0x1E69E9AC8] + *(v108 + 4459) - 1) & -*MEMORY[0x1E69E9AC8]) <= 0x100000)
        {
          v122 = 0x100000;
        }

        else
        {
          v122 = (*MEMORY[0x1E69E9AC8] + *(v108 + 4459) - 1) & -*MEMORY[0x1E69E9AC8];
        }

        v123 = fd_mmap(*(v108 + 4491), v122, v176 ^ 3u, 1, 0);
        v124 = a1[1];
        *(v124 + 4503) = v123;
        if (v123 == -1)
        {
          v114 = *__error();
          v115 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_141;
          }

          *v200 = 136315394;
          *&v200[4] = "data_map_init_with_ctx";
          *&v200[12] = 1024;
          *&v200[14] = 1398;
          v116 = "%s:%d: offset fd_mmap error";
        }

        else
        {
          *(v124 + 4499) = v122;
          if (((*v121 + *(v124 + 4471) - 1) & -*v121) <= 0x100000)
          {
            v125 = 0x100000;
          }

          else
          {
            v125 = (*v121 + *(v124 + 4471) - 1) & -*v121;
          }

          v126 = fd_mmap(*(v124 + 236), v125, 3, 1, 0);
          v127 = a1[1];
          v128 = (v127 + 4475);
          *(v127 + 4479) = v126;
          if (v126 != -1)
          {
            v129 = v127;
            *v128 = v125;
            v130 = *(v127 + 299);
            if (!*(v130 + 28))
            {
              *(v130 + 28) = 1;
              v128[9] = 1;
            }

            v53 = v129;
            v54 = 0;
            goto LABEL_124;
          }

          v114 = *__error();
          v115 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_141;
          }

          *v200 = 136315394;
          *&v200[4] = "data_map_init_with_ctx";
          *&v200[12] = 1024;
          *&v200[14] = 1407;
          v116 = "%s:%d: offset fd_mmap error";
        }
      }

      else
      {
        v114 = *__error();
        v115 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_141;
        }

        *v200 = 136315394;
        *&v200[4] = "data_map_init_with_ctx";
        *&v200[12] = 1024;
        *&v200[14] = 1341;
        v116 = "%s:%d: header pread error";
      }
    }

LABEL_139:
    v135 = v115;
    v136 = 18;
    goto LABEL_140;
  }

  snprintf(__str, 0x400uLL, "%s.map", v16);
  if ((v17 & 0x100) != 0)
  {
    v35 = 3;
  }

  else
  {
    v35 = 0;
  }

  v36 = fd_create_protected(v15, __str, v20, v35);
  v31 = a1;
  *(a1[1] + 220) = v36;
  v37 = fd_lseek(v36, 0, 2);
  v38 = a1[1];
  *(v38 + 295) = v37;
  if (v37 == -1 || v37 < 0x4DuLL)
  {
    fd_release(*(v38 + 220));
    *(a1[1] + 295) = 0;
    v58 = v35;
    v59 = a1;
    goto LABEL_49;
  }

  v39 = fd_mmap(*(v38 + 220), v37, v176 ^ 3u, 1, 0);
  v40 = a1[1];
  *(v40 + 283) = v39;
  if (v39 == -1)
  {
    v117 = 0;
    v30 = v181;
    goto LABEL_144;
  }

  v41 = *(v40 + 295);
  *(v40 + 291) = v41;
  v30 = v181;
  if (v39[15] != v41)
  {
    goto LABEL_143;
  }

  *(v40 + 299) = v39;
  v42 = v39[16];
  if (v42 >= v41)
  {
    goto LABEL_143;
  }

  v43 = v39[17];
  if (v43 >= v41)
  {
    goto LABEL_143;
  }

  v44 = v39[18];
  if (v44 >= v41)
  {
    goto LABEL_143;
  }

  *(v40 + 4511) = v39[7];
  *(v40 + 4479) = v39 + v42;
  *(v40 + 4487) = v39[6];
  *(v40 + 4503) = v39 + v43;
  v45 = *(v40 + 220);
  v46 = v39[5] + v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN7dataMapIjLb0ELb0ELb1EE22data_map_init_with_ctxEP17data_map_init_ctx_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_169;
  aBlock[4] = a1;
  *(v40 + 343) = 257;
  *(v40 + 307) = v45;
  *(v40 + 315) = v46;
  *(v40 + 339) = 1;
  *(v40 + 347) = _Block_copy(aBlock);
  *(v40 + 355) = 26;
  bzero((v40 + 363), 0x1000uLL);
  v47 = a1[1];
  v48 = *(*(v47 + 283) + 72);
  *(v47 + 5575) = v48;
  *(v47 + 323) = (*(*(v47 + 299) + 20) + v48);
  v49 = a1[1];
  LODWORD(v50) = (*(*(v49 + 283) + 72) - *(*(v49 + 283) + 68)) >> 2;
  v51 = *(v49 + 4511);
  if (*(v49 + 4463) <= v51)
  {
    v50 = v50;
  }

  else
  {
    v50 = v51;
  }

  *(v49 + 4463) = v50;
  v52 = *(v49 + 299);
  *(v49 + 4523) = *(v52 + 44);
  *(v49 + 4531) = *(v52 + 52);
  *(v49 + 282) = *(v52 + 8) < 9u;
  v53 = v49;
  v54 = 1;
LABEL_124:
  if (*(v53 + 4463) < *(v53 + 4511))
  {
    v114 = *__error();
    v131 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      v132 = v31[1];
      v133 = *(v132 + 4463);
      v134 = *(v132 + 4511);
      *v200 = 136315906;
      *&v200[4] = "data_map_init_with_ctx";
      *&v200[12] = 1024;
      *&v200[14] = 1431;
      *&v200[18] = 2048;
      *&v200[20] = v133;
      *&v200[28] = 2048;
      *&v200[30] = v134;
      v116 = "%s:%d: invalid offset size 1 - %ld %llu";
LABEL_127:
      v135 = v131;
      v136 = 38;
LABEL_140:
      _os_log_error_impl(&dword_1C278D000, v135, OS_LOG_TYPE_ERROR, v116, v200, v136);
    }

LABEL_141:
    v57 = v114;
    goto LABEL_142;
  }

  v137 = *(v53 + 299);
  if (*v137 != 0x446174615000)
  {
    v114 = *__error();
    v115 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_141;
    }

    *v200 = 136315394;
    *&v200[4] = "data_map_init_with_ctx";
    *&v200[12] = 1024;
    *&v200[14] = 1440;
    v116 = "%s:%d: invalid offset signature";
    goto LABEL_139;
  }

  v138 = *(v137 + 8);
  if ((v138 - 8) >= 6 && v138 != 1)
  {
    v114 = *__error();
    v166 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_141;
    }

    *v200 = 136315650;
    *&v200[4] = "data_map_init_with_ctx";
    *&v200[12] = 1024;
    *&v200[14] = 1450;
    *&v200[18] = 1024;
    *&v200[20] = v138;
    v116 = "%s:%d: invalid version %d";
    v135 = v166;
    v136 = 24;
    goto LABEL_140;
  }

  if (*(v137 + 12) != v177)
  {
    v114 = *__error();
    v164 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_141;
    }

    v165 = *(*(v31[1] + 299) + 12);
    *v200 = 136315906;
    *&v200[4] = "data_map_init_with_ctx";
    *&v200[12] = 1024;
    *&v200[14] = 1454;
    *&v200[18] = 1024;
    *&v200[20] = v165;
    *&v200[24] = 1024;
    *&v200[26] = v177;
    v116 = "%s:%d: invalid extra_size %d %d";
    v135 = v164;
    v136 = 30;
    goto LABEL_140;
  }

  *(v53 + 216) = v177;
  if (v54)
  {
    v117 = 1;
    goto LABEL_144;
  }

  if (*(v53 + 295) <= 0x37u)
  {
    v114 = *__error();
    v131 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_141;
    }

    v167 = *(v31[1] + 295);
    *v200 = 136315906;
    *&v200[4] = "data_map_init_with_ctx";
    *&v200[12] = 1024;
    *&v200[14] = 1462;
    *&v200[18] = 2048;
    *&v200[20] = v167;
    *&v200[28] = 2048;
    *&v200[30] = 56;
    v116 = "%s:%d: invalid header size %llu < %lu";
    goto LABEL_127;
  }

  if (*(v53 + 315) < *(v53 + 323))
  {
    v168 = *__error();
    v169 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
    {
      *v200 = 136315394;
      *&v200[4] = "data_map_init_with_ctx";
      *&v200[12] = 1024;
      *&v200[14] = 1468;
      v170 = "%s:%d: invalid storage size 1";
LABEL_193:
      _os_log_error_impl(&dword_1C278D000, v169, OS_LOG_TYPE_ERROR, v170, v200, 0x12u);
      goto LABEL_190;
    }

    goto LABEL_190;
  }

  if ((v17 & 0x80) != 0 || !*(v137 + 16) || (v171 = *(v53 + 4487), !v171) || (v172 = 4 * v171, v173 = *(v53 + 4471), v172 > v173))
  {
    if (!dataMap<unsigned int,false,false,true>::_data_map_rehash(a1))
    {
      v168 = *__error();
      v169 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
      {
        *v200 = 136315394;
        *&v200[4] = "data_map_init_with_ctx";
        *&v200[12] = 1024;
        *&v200[14] = 1475;
        v170 = "%s:%d: re-build hash error";
        goto LABEL_193;
      }

      goto LABEL_190;
    }

    v174 = a1[1];
    v173 = *(v174 + 4471);
    v172 = 4 * *(v174 + 4487);
  }

  if (v172 > v173)
  {
    v168 = *__error();
    v169 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
    {
      *v200 = 136315394;
      *&v200[4] = "data_map_init_with_ctx";
      *&v200[12] = 1024;
      *&v200[14] = 1482;
      v170 = "%s:%d: invalid hash size 1";
      goto LABEL_193;
    }

LABEL_190:
    v57 = v168;
    v30 = v181;
LABEL_43:
    v31 = a1;
LABEL_142:
    *__error() = v57;
LABEL_143:
    v117 = 0;
    goto LABEL_144;
  }

  v117 = 1;
  v30 = v181;
  v31 = a1;
LABEL_144:
  v189 = 1;
  v139 = threadData[9 * v188 + 1] + 320 * v187;
  *(v139 + 312) = v178;
  v140 = *(v139 + 232);
  if (v140)
  {
    v140(*(v139 + 288));
  }

  dropThreadId(v188, 0, v179 + 1);
  if ((v189 & 1) == 0)
  {
LABEL_156:
    v156 = *__error();
    v157 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
    {
      v161 = fd_realpath(*(v31[1] + 220), __str);
      *&v200[4] = "data_map_init_with_ctx";
      v162 = "";
      *v200 = 136315650;
      if (v161)
      {
        v162 = v161;
      }

      *&v200[12] = 1024;
      *&v200[14] = 1496;
      *&v200[18] = 2080;
      *&v200[20] = v162;
      _os_log_error_impl(&dword_1C278D000, v157, OS_LOG_TYPE_ERROR, "%s:%d: exception processing %s", v200, 0x1Cu);
    }

    *__error() = v156;
    goto LABEL_158;
  }

  if (v117)
  {
    v141 = v31[1];
    if (v141)
    {
      v142 = v141 + 4096;
      v143 = *(v142 + 415) - 1;
      *(v142 + 419) = v143;
      *(v142 + 423) = v143;
      v212 = 0u;
      v213 = 0u;
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      memset(v200, 0, sizeof(v200));
      v144 = *__error();
      v145 = _SILogForLogForCategory(7);
      v146 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v145, v146))
      {
        v147 = fd_name(*(a1[1] + 220), v200, 0x100uLL);
        v148 = (*(*a1 + 96))(a1);
        v214.st_dev = 136315394;
        *&v214.st_mode = v147;
        WORD2(v214.st_ino) = 2048;
        *(&v214.st_ino + 6) = v148;
        _os_log_impl(&dword_1C278D000, v145, v146, "Opened map %s with counts: %llu", &v214, 0x16u);
      }

      *__error() = v144;
      v149 = a1[1];
      if (v149)
      {
        v150 = (v149 + 4511);
        v151 = *(v149 + 4543);
        v152 = *(v149 + 252);
        v153 = *(v149 + 299);
        if (v153)
        {
          v154 = *(v153 + 16);
          if (v154 < 3)
          {
            v155 = v154 + 1;
          }

          else
          {
            v155 = 0;
          }
        }

        else
        {
          v155 = 0;
        }

        SIActivityJournalEvent(v151, v152, 1u, v155, *v150);
      }
    }

    v158 = 1;
    goto LABEL_159;
  }

LABEL_158:
  (*(*v31 + 16))(v31);
  v31[1] = 0;
  v158 = 0;
LABEL_159:
  v159 = threadData[9 * v193 + 1] + 320 * v192;
  *(v159 + 312) = v30;
  v160 = *(v159 + 232);
  if (v160)
  {
    v160(*(v159 + 288));
  }

  dropThreadId(v193, 0, v182 + 1);
  return v158;
}

unint64_t dataMap<unsigned long long,true,true,false>::data_map_insert_with_id(uint64_t *a1, UInt8 *a2, CFIndex a3, unint64_t a4)
{
  v97 = *MEMORY[0x1E69E9840];
  v66 = 0;
  v8 = a1[1];
  v9 = dataMap<unsigned long long,false,true,false>::dm_hash(*(v8 + 282), &a2[*(v8 + 216)], a3 - *(v8 + 216));
  v10 = *(v8 + 256);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  v62 = a4;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v12 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v14 = v13;
  v15 = v12;
  v16 = HIDWORD(v12);
  v18 = v17;
  v19 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
  v61 = *(v19 + 312);
  v20 = *(v19 + 224);
  if (v20)
  {
    v20(*(v19 + 288));
  }

  v64 = v16;
  v65 = v15;
  if (!_setjmp(v19))
  {
    bucket_entry = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
    if (bucket_entry)
    {
      v21 = *bucket_entry;
      if (*bucket_entry)
      {
LABEL_46:
        v44 = threadData[9 * v65 + 1] + 320 * v64;
        *(v44 + 312) = v61;
        v45 = *(v44 + 232);
        if (v45)
        {
          v45(*(v44 + 288));
        }

        dropThreadId(v65, 0, add_explicit + 1);
        goto LABEL_49;
      }

      v23 = bucket_entry;
      (*(*a1 + 112))(a1);
      if ((*(*a1 + 336))(a1))
      {
LABEL_12:
        v21 = 0;
        goto LABEL_46;
      }

      if (!*v23)
      {
        v24 = a1[1];
        v25 = v23;
        if (*(v24 + 256) <= v10)
        {
LABEL_18:
          v27 = *(v24 + 403);
          if (dataMap<unsigned long long,true,true,false>::_data_map_grow(a1, &v66))
          {
            v28 = v62;
            v29 = v27 <= v62 ? v62 : v27;
            if (dataMap<unsigned long long,true,true,false>::_data_map_grow_offsets(a1, &v66, v29))
            {
              v30 = a1[1];
              if (!*(v30 + 379) || (*(v30 + 395) + 1) <= 1)
              {
                v95 = 0u;
                v96 = 0u;
                v93 = 0u;
                v94 = 0u;
                v91 = 0u;
                v92 = 0u;
                v89 = 0u;
                v90 = 0u;
                v87 = 0u;
                v88 = 0u;
                v85 = 0u;
                v86 = 0u;
                v83 = 0u;
                v84 = 0u;
                *buf = 0u;
                v82 = 0u;
                v31 = *__error();
                v32 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  v46 = a1[1];
                  v48 = *(v46 + 395);
                  v47 = *(v46 + 403);
                  v49 = fd_name(*(v46 + 220), buf, 0x100uLL);
                  *v67 = 136316674;
                  v68 = "data_map_insert_with_id";
                  v69 = 1024;
                  v70 = 3648;
                  v71 = 2048;
                  v72 = v62;
                  v73 = 2048;
                  v74 = v47;
                  v28 = v62;
                  v75 = 2048;
                  v76 = v46;
                  v77 = 2048;
                  v78 = v48;
                  v79 = 2080;
                  v80 = v49;
                  _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: insert data id error %lld max %lld %p map: %p %s", v67, 0x44u);
                }

                *__error() = v31;
                v30 = a1[1];
              }

              if ((*(v30 + 275) & 1) == 0)
              {
                dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
                v30 = a1[1];
                *(v30 + 275) = 1;
              }

              v33 = *(v30 + 395) + 24 * v28;
              *(v33 + 16) = v9;
              *v33 = xmmword_1C2BFA360;
              v34 = a1[1];
              if (*(v34 + 459))
              {
                v35 = *(v34 + 475);
                if ((v35 + 1) >= 2)
                {
                  v36 = v35 + 24 * v28;
                  *(v36 + 16) = v9;
                  *v36 = xmmword_1C2BFA360;
                  v34 = a1[1];
                }
              }

              if ((*(v34 + 273) & 1) == 0)
              {
                dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
                *(a1[1] + 273) = 1;
              }

              dataMap<unsigned long long,true,true,false>::data_map_store_as_update<true>(a1, v28, a2, a3);
              v37 = a1[1];
              if ((*(v37 + 274) & 1) == 0)
              {
                dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
                v38 = a1[1];
                *(v38 + 274) = 1;
                v37 = v38;
              }

              v39 = v37;
              if ((v66 & 4) != 0)
              {
                v40 = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, v9, v28, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
                v39 = a1[1];
                v25 = v40;
              }

              v41 = (v39 + 403);
              *v25 = v28;
              v42 = v41[1];
              if (v42 < v28)
              {
                v41[1] = v28;
                v42 = v28;
              }

              v43 = v41[2] + 1;
              v41[2] = v43;
              if (v42 < v43)
              {
                v50 = __si_assert_copy_extra_332();
                v58 = v50;
                v59 = "";
                if (v50)
                {
                  v59 = v50;
                }

                __message_assert_336(v50, v51, v52, v53, v54, v55, v56, v57, "dataMap.ipp", 3672, "data_map->max_id >= data_map->count", v59);
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

              if (v42 == v43)
              {
                *v41 = v42 + 1;
              }

              v21 = v28;
              goto LABEL_46;
            }
          }

          goto LABEL_12;
        }
      }

      v26 = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
      if (v26)
      {
        v21 = *v26;
        if (*v26)
        {
          goto LABEL_46;
        }

        v24 = a1[1];
        v25 = v26;
        goto LABEL_18;
      }
    }

    v21 = 0;
    goto LABEL_46;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v19 + 312) = v61;
  CIOnThreadCleanUpReset(v14);
  dropThreadId(v15, 1, add_explicit + 1);
  CICleanUpReset(v15, v18);
  v21 = 0;
LABEL_49:
  (*(*a1 + 112))(a1);
  return v21;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5, unint64_t a6)
{
  v6 = a6;
  v86 = *MEMORY[0x1E69E9840];
  if (a3 >= a6)
  {
    if (!a3)
    {
      return 0;
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v43 = *__error();
    v38 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    v39 = *(a1 + 8);
    v40 = fd_name(*(v39 + 220), &v70, 0x100uLL);
    *buf = 136316418;
    v59 = "_data_map_get_bucket_entry";
    v60 = 1024;
    v61 = 514;
    v62 = 2048;
    v63 = a3;
    v64 = 2048;
    v65 = v6;
    v66 = 2048;
    v67 = v39;
    v68 = 2080;
    v69 = v40;
    v41 = v38;
LABEL_45:
    _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
    goto LABEL_42;
  }

  v10 = 0;
  v11 = *(*(a1 + 8) + 371);
  v12 = a2 % v11;
  v51 = v11;
  while (1)
  {
    v13 = v12;
    if (v12 < v11)
    {
      break;
    }

LABEL_35:
    if (v10 & 1 | (v13 != v51))
    {
      return 0;
    }

    v10 = 1;
    v11 = v12;
    v12 = 0;
  }

  v13 = v12;
  v53 = v10;
  while (1)
  {
    v14 = *(a1 + 8);
    v15 = (v14 + 323);
    v16 = *(v14 + 363);
    v17 = *(v16 + 8 * v13);
    if (v17)
    {
      v18 = v17 == a3;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return v16 + 8 * v13;
    }

    if (a3)
    {
      goto LABEL_34;
    }

    v19 = *(v14 + 395);
    if (v17 >= v6 || (v19 + 1) <= 1)
    {
      break;
    }

    v21 = (v19 + 24 * v17);
    v22 = *v21;
    if (*v21 == -2)
    {
      return 0;
    }

    if (v21[2] != a2)
    {
      goto LABEL_34;
    }

    v23 = *(v14 + 216);
    __n = 0;
    __s2 = 0;
    v56 = 0;
    v24 = v21[1];
    v57 = 1;
    if (v22 == -1)
    {
      if (!*v15)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v30 = *__error();
        v31 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v34 = *(a1 + 8);
          v35 = fd_name(*(v34 + 220), &v70, 0x100uLL);
          *buf = 136316162;
          v59 = "_data_map_get_data_entry";
          v60 = 1024;
          v61 = 425;
          v62 = 2048;
          v63 = -1;
          v64 = 2048;
          v65 = v34;
          v66 = 2080;
          v67 = v35;
          _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
        }

        *__error() = v30;
        fd_name(*(*(a1 + 8) + 220), &v70, 0x100uLL);
        si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
        goto LABEL_33;
      }

      Value = CFDictionaryGetValue(*v15, v17);
      if (!Value)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v32 = *__error();
        v33 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v36 = *(a1 + 8);
          v37 = fd_name(*(v36 + 220), &v70, 0x100uLL);
          *buf = 136316162;
          v59 = "_data_map_get_data_entry";
          v60 = 1024;
          v61 = 419;
          v62 = 2048;
          v63 = -1;
          v64 = 2048;
          v65 = v36;
          v66 = 2080;
          v67 = v37;
          _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
        }

        *__error() = v32;
        fd_name(*(*(a1 + 8) + 220), &v70, 0x100uLL);
        si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
LABEL_33:
        v6 = a6;
        v10 = v53;
        goto LABEL_34;
      }

      v27 = Value;
      v25 = CFDataGetLength(Value) - *(*(a1 + 8) + 216);
      LODWORD(__n) = v25;
      __s2 = &CFDataGetBytePtr(v27)[*(*(a1 + 8) + 216)];
      BytePtr = CFDataGetBytePtr(v27);
      memcpy(&v56, BytePtr, *(*(a1 + 8) + 216));
    }

    else
    {
      dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, v22, v24, &__n, v17, &v57);
      if ((v57 & 1) == 0)
      {
        goto LABEL_33;
      }

      v25 = __n;
    }

    if (v25 + v23 != a5 || memcmp(&a4[*(*(a1 + 8) + 216)], __s2, v25))
    {
      goto LABEL_33;
    }

    v29 = memcmp(a4, &v56, v23);
    v6 = a6;
    v10 = v53;
    if (!v29)
    {
      return v16 + 8 * v13;
    }

LABEL_34:
    if (++v13 >= v11)
    {
      goto LABEL_35;
    }
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v43 = *__error();
  v44 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v47 = *(a1 + 8);
    v48 = fd_name(*(v47 + 220), &v70, 0x100uLL);
    *buf = 136316418;
    v59 = "_data_map_get_offset_entry_impl";
    v60 = 1024;
    v61 = 362;
    v62 = 2048;
    v63 = v17;
    v64 = 2048;
    v65 = v6;
    v66 = 2048;
    v67 = v47;
    v68 = 2080;
    v69 = v48;
    v41 = v44;
    goto LABEL_45;
  }

LABEL_42:
  v46 = __error();
  result = 0;
  *v46 = v43;
  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_grow(uint64_t a1, _DWORD *a2)
{
  v4 = dataMap<unsigned long long,true,true,false>::_data_map_grow_offsets(a1, a2, *(*(a1 + 8) + 403));
  v5 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_3;
  }

  v6 = v5 + 278;
  if (*(v5 + 278))
  {
    goto LABEL_3;
  }

  v9 = *(v5 + 403) - *(v5 + 427);
  if (v9 < 2 * *(v6 + 93) / 3uLL && v9 >= 2 * *(v6 + 157))
  {
    return 1;
  }

  if (dataMap<unsigned long long,true,true,false>::_data_map_rehash(a1))
  {
    *a2 |= 4u;
    return 1;
  }

  v5 = *(a1 + 8);
LABEL_3:
  v7 = (v5 + 278);
  result = 0;
  if (!*v7)
  {
    *v7 = 1;
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_grow_offsets(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (*(v3 + 278))
  {
    goto LABEL_2;
  }

  if (*(v3 + 339) > a3)
  {
    return 1;
  }

  v8 = (*MEMORY[0x1E69E9AC8] + 24 * a3 + 23) & -*MEMORY[0x1E69E9AC8];
  v9 = dataMap<unsigned long long,true,true,false>::grow_offsets<true>(a1, (v3 + 379), v8);
  v3 = *(a1 + 8);
  if (v9)
  {
    v10 = dataMap<unsigned long long,true,true,false>::grow_offsets<true>(a1, (v3 + 459), v8);
    v3 = *(a1 + 8);
    if (v10)
    {
      *(v3 + 339) = v8 / 0x18;
      *a2 |= 2u;
      return 1;
    }
  }

LABEL_2:
  v4 = (v3 + 278);
  result = 0;
  if (!*v4)
  {
    *v4 = 1;
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_dirty(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 307);
  if (*(v2 + 16))
  {
    v3 = result;
    *(v2 + 16) = 0;
    fd_pwrite(*(v1 + 220), v2, 0x54uLL, 0);
    v4 = *(*(v3 + 8) + 220);

    return fd_sync(v4, 0);
  }

  return result;
}

void dataMap<unsigned long long,true,true,false>::data_map_store_as_update<true>(uint64_t a1, const void *a2, UInt8 *bytes, CFIndex length)
{
  v8 = *MEMORY[0x1E695E480];
  if (!*(*(a1 + 8) + 323))
  {
    *(*(a1 + 8) + 323) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  }

  v9 = CFDataCreate(v8, bytes, length);
  CFDictionarySetValue(*(*(a1 + 8) + 323), a2, v9);

  CFRelease(v9);
}

uint64_t dataMap<unsigned long long,true,true,false>::grow_offsets<true>(uint64_t a1, uint64_t *a2, size_t a3)
{
  if (!*a2)
  {
    return 1;
  }

  if (fd_truncate(*a2, a3) != -1)
  {
    *(*(a1 + 8) + 331) = a3;
    v6 = a2[1];
    if (v6 >= a3)
    {
      return 1;
    }

    v7 = 2 * v6;
    munmap(a2[2], v6);
    a2[1] = 0;
    v8 = fd_mmap(*a2, v7, 3, 1, 0);
    a2[2] = v8;
    if (v8 != -1)
    {
      a2[1] = v7;
      return 1;
    }
  }

  return 0;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_rehash(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 8) + 403);
  v2[4] = 0;
  v3 = *v2 - v2[3];
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  v6 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 403);
    v9 = *(v7 + 427);
    v10 = *(v7 + 371);
    *buf = 134219008;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    *&buf[24] = 1024;
    *&buf[26] = v3;
    *&buf[30] = 1024;
    LODWORD(v51) = v10;
    _os_log_impl(&dword_1C278D000, v5, v6, "rehash new %p max id: %d deletes: %d count: %d hash_size: %d", buf, 0x24u);
  }

  *__error() = v4;
  v11 = *(*(a1 + 8) + 363);
  v12 = 8 * *(*(a1 + 8) + 371);
  fd_system_status_stall_if_busy();
  msync(v11, v12, 4);
  if (fd_truncate(*(*(a1 + 8) + 236), 0) == -1)
  {
    goto LABEL_26;
  }

  v13 = 2 * v3;
  if ((2 * v3) <= *MEMORY[0x1E69E9AC8] >> 3)
  {
    v13 = *MEMORY[0x1E69E9AC8] >> 3;
  }

  v14 = *(a1 + 8);
  *(v14 + 371) = v13;
  v15 = 8 * v13;
  if (fd_truncate(*(v14 + 236), 8 * v13) == -1)
  {
    goto LABEL_26;
  }

  v16 = *(a1 + 8);
  if ((*(v16 + 274) & 1) == 0)
  {
    dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
    v16 = *(a1 + 8);
    *(v16 + 274) = 1;
  }

  v17 = v16 + 347;
  *(v16 + 347) = v15;
  v18 = *(v16 + 355);
  if (v15 > v18)
  {
    v19 = *(v16 + 355);
    do
    {
      v20 = v19;
      v19 *= 2;
    }

    while (v20 < v15);
    munmap(*(v17 + 16), v18);
    v21 = *(a1 + 8);
    *(v21 + 355) = 0;
    *(v21 + 363) = -1;
    v22 = fd_mmap(*(v21 + 236), v20, 3, 1, 0);
    v16 = *(a1 + 8);
    *(v16 + 363) = v22;
    if (v22 == -1)
    {
      goto LABEL_26;
    }

    *(v16 + 355) = v20;
  }

  ++*(v16 + 256);
  v23 = *(v16 + 403);
  if (v23 < 2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 1;
  while (1)
  {
    v26 = *(v16 + 395);
    if ((v26 + 1) <= 1)
    {
      break;
    }

    v27 = v26 + v24;
    if (*(v27 + 24) != -2)
    {
      bucket_entry = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, *(v27 + 40), v25, 0, 0, v23);
      if (!bucket_entry || *bucket_entry)
      {
        goto LABEL_26;
      }

      *bucket_entry = v25;
      v16 = *(a1 + 8);
    }

    ++v25;
    v23 = *(v16 + 403);
    v24 += 24;
    if (v25 >= v23)
    {
      return 1;
    }
  }

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
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  memset(buf, 0, sizeof(buf));
  v30 = *__error();
  v31 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v36 = *(a1 + 8);
    v37 = fd_name(*(v36 + 220), buf, 0x100uLL);
    v38 = 136316418;
    v39 = "_data_map_get_offset_entry_impl";
    v40 = 1024;
    v41 = 362;
    v42 = 2048;
    v43 = v25;
    v44 = 2048;
    v45 = v23;
    v46 = 2048;
    v47 = v36;
    v48 = 2080;
    v49 = v37;
    _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v38, 0x3Au);
  }

  *__error() = v30;
LABEL_26:
  v32 = *__error();
  v33 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v35 = *(a1 + 8);
    *buf = 136315650;
    *&buf[4] = "_data_map_rehash";
    *&buf[12] = 1024;
    *&buf[14] = 645;
    *&buf[18] = 2048;
    *&buf[20] = v35;
    _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: re-build hash error %p", buf, 0x1Cu);
  }

  v34 = __error();
  result = 0;
  *v34 = v32;
  return result;
}

int *dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8) + 315;
  result = *v8;
  if (*v8)
  {
    v12 = a3;
    v14 = HIDWORD(a3);
    v19 = 0;
    result = (*(v8 + 172))(result, a3);
    v18 = 0;
    if (result)
    {
      result = (*(*(a1 + 8) + 495))(result, a2, v14, &v18, &v19);
      *(a4 + 8) = result;
      v15 = v19;
      *(a4 + 16) = v18;
      *a4 = v15;
      return result;
    }

    if (dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(data_map_ext_offset_t,dataMapMetaData<unsigned long long,true,true,false>::data_entry_t *,unsigned long long,BOOL *)::_COUNT_ >= 1)
    {
      --dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(data_map_ext_offset_t,dataMapMetaData<unsigned long long,true,true,false>::data_entry_t *,unsigned long long,BOOL *)::_COUNT_;
LABEL_8:
      v16 = *__error();
      v17 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v21 = "data_entry_restore";
        v22 = 1024;
        v23 = 312;
        v24 = 2048;
        v25 = a5;
        v26 = 1024;
        v27 = v12;
        v28 = 2048;
        v29 = a2;
        v30 = 1024;
        v31 = v14;
        _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: data id %lld invalid indexId %u offset 0x%llx meta 0x%x", buf, 0x32u);
      }

      result = __error();
      *result = v16;
      goto LABEL_11;
    }

    if (++dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(data_map_ext_offset_t,dataMapMetaData<unsigned long long,true,true,false>::data_entry_t *,unsigned long long,BOOL *)::_COUNT2_ == 100)
    {
      dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(data_map_ext_offset_t,dataMapMetaData<unsigned long long,true,true,false>::data_entry_t *,unsigned long long,BOOL *)::_COUNT2_ = 0;
      goto LABEL_8;
    }
  }

LABEL_11:
  *a6 = 0;
  return result;
}

const UInt8 *dataMap<unsigned long long,true,true,false>::data_map_get_data_for_offset_locked(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *key)
{
  v50 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 1;
  if (a2 == -1)
  {
    v8 = *(*(a1 + 8) + 323);
    if (v8)
    {
      Value = CFDictionaryGetValue(v8, key);
      if (Value)
      {
        v10 = Value;
        LODWORD(v20) = CFDataGetLength(Value) - *(*(a1 + 8) + 216);
        v21 = &CFDataGetBytePtr(v10)[*(*(a1 + 8) + 216)];
        CFDataGetBytePtr(v10);
        if (a4)
        {
          goto LABEL_4;
        }

        goto LABEL_8;
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = *__error();
      v15 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 8);
        v19 = fd_name(*(v18 + 220), &v34, 0x100uLL);
        *buf = 136316162;
        v25 = "_data_map_get_data_entry";
        v26 = 1024;
        v27 = 419;
        v28 = 2048;
        v29 = -1;
        v30 = 2048;
        v31 = v18;
        v32 = 2080;
        v33 = v19;
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
      }

      *__error() = v14;
      fd_name(*(*(a1 + 8) + 220), &v34, 0x100uLL);
      si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = *__error();
      v13 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 8);
        v17 = fd_name(*(v16 + 220), &v34, 0x100uLL);
        *buf = 136316162;
        v25 = "_data_map_get_data_entry";
        v26 = 1024;
        v27 = 425;
        v28 = 2048;
        v29 = -1;
        v30 = 2048;
        v31 = v16;
        v32 = 2080;
        v33 = v17;
        _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
      }

      *__error() = v12;
      fd_name(*(*(a1 + 8) + 220), &v34, 0x100uLL);
      si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
    }
  }

  else
  {
    dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, a2, a3 << 32, &v20, key, &v23);
    if (v23)
    {
      if (a4)
      {
LABEL_4:
        v7 = *(*(a1 + 8) + 216);
        *a4 = (v20 - v7);
        return &v21[v7];
      }

LABEL_8:
      v7 = *(*(a1 + 8) + 216);
      return &v21[v7];
    }
  }

  return 0;
}

int *dataMap<unsigned long long,true,true,false>::data_map_scan_lost_ids(void *a1, int a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v4 = si_copy_all_index_ids(*(a1[1] + 315));
  (*(*a1 + 104))(a1);
  if (v4)
  {
    v5 = a1[1];
    v6 = *(v5 + 403);
    if (v6 >= 2)
    {
      v51 = 0;
      v50 = *MEMORY[0x1E695E480];
      v7 = 1;
      v8 = 24;
      while (1)
      {
        v9 = *(v5 + 395);
        if ((v9 + 1) >= 2)
        {
          v12 = v9 + v8;
          if (!a2)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          memset(buf, 0, sizeof(buf));
          v10 = *__error();
          v11 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v21 = a1[1];
            v22 = fd_name(*(v21 + 220), buf, 0x100uLL);
            *v54 = 136316418;
            v55 = "_data_map_get_offset_entry_impl";
            v56 = 1024;
            v57 = 362;
            v58 = 2048;
            v59 = v7;
            v60 = 2048;
            v61 = v6;
            v62 = 2048;
            v63 = v21;
            v64 = 2080;
            v65 = v22;
            _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", v54, 0x3Au);
          }

          v12 = 0;
          *__error() = v10;
          if (!a2)
          {
            goto LABEL_11;
          }
        }

        if ((*(v12 + 12) & 0x80000000) != 0)
        {
          LODWORD(v51) = v51 + 1;
          v13 = (v12 + 8);
          if (*(v12 + 8))
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }

LABEL_11:
        v13 = (v12 + 8);
        if ((SIUINT32SetContainsValue(v4, *(v12 + 8)) & 1) == 0)
        {
          if (*v13)
          {
            v14 = *__error();
            v15 = _SILogForLogForCategory(16);
            v16 = dword_1EBF46B0C < 3;
            if (os_log_type_enabled(v15, (dword_1EBF46B0C < 3)))
            {
              v17 = *v13;
              *buf = 67109376;
              *&buf[4] = v17;
              *&buf[8] = 2048;
              *&buf[10] = v7;
              _os_log_impl(&dword_1C278D000, v15, v16, "*warn* Invalid indexId %u for vid: %llu", buf, 0x12u);
            }

            *__error() = v14;
LABEL_17:
            *v13 = 0;
          }

LABEL_18:
          if (*v12 != -1)
          {
            v18 = (*v12 >> 2) & 3;
            v19 = v52 + 24 * (*v12 & 3);
            v20 = *&v19[8 * v18];
            if (!v20)
            {
              v20 = SIUINT64SetCreate(v50);
              *&v19[8 * v18] = v20;
            }

            ++HIDWORD(v51);
            SIValueSet<unsigned long long>::SIValueSetInsert((v20 + 16), v7);
          }
        }

        ++v7;
        v5 = a1[1];
        v6 = *(v5 + 403);
        v8 += 24;
        if (v7 >= v6)
        {
          goto LABEL_26;
        }
      }
    }

    v51 = 0;
LABEL_26:
    CFRelease(v4);
    v23 = v51;
    v24 = HIDWORD(v51);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  (*(*a1 + 112))(a1);
  if (!v24)
  {
    goto LABEL_49;
  }

  v25 = *__error();
  v26 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v24 - v23;
    *&buf[8] = 1024;
    *&buf[10] = v23;
    _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "recoverIds for %u lost vectors %u purged vectors", buf, 0xEu);
  }

  *__error() = v25;
  if (!si_recover_vector_ids(*(a1[1] + 315), v52))
  {
    v40 = *__error();
    v41 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "data_map_scan_lost_ids_impl";
      *&buf[12] = 1024;
      *&buf[14] = 3503;
      _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, "%s:%d: recoverIds failed", buf, 0x12u);
    }

    v27 = 0;
    *__error() = v40;
    goto LABEL_53;
  }

  v27 = SIUINT64SetCreate(*MEMORY[0x1E695E480]);
  v28 = 0;
  v29 = v52;
  do
  {
    for (i = 0; i != 24; i += 8)
    {
      v31 = *(v29 + i);
      if (v31)
      {
        SIValueSet<unsigned long long>::_SIValueSetInnerIterate(v31 + 56, *(v31 + 16), *(v31 + 24), unionUINT64Set, v27, 512);
      }
    }

    ++v28;
    v29 = (v29 + 24);
  }

  while (v28 != 3);
  (*(*a1 + 104))(a1);
  if (*(a1[1] + 403) < 2uLL)
  {
LABEL_45:
    (*(*a1 + 112))(a1);
    v38 = *__error();
    v39 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v24;
      _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "recoverIds completed %u vectorIds no data", buf, 8u);
    }

    *__error() = v38;
    if (v24)
    {
      goto LABEL_53;
    }

    CFRelease(v27);
LABEL_49:
    v27 = 0;
LABEL_53:
    v42 = 0;
    v43 = v52;
    do
    {
      for (j = 0; j != 24; j += 8)
      {
        v45 = *(v43 + j);
        if (v45)
        {
          CFRelease(v45);
        }
      }

      ++v42;
      v43 = (v43 + 24);
    }

    while (v42 != 3);
    return v27;
  }

  v32 = 1;
  v33 = 32;
  while (1)
  {
    v34 = SIUINT64SetContainsValue(v27, v32);
    v35 = a1[1];
    if (v34)
    {
      break;
    }

LABEL_44:
    ++v32;
    v33 += 24;
    if (v32 >= *(v35 + 403))
    {
      goto LABEL_45;
    }
  }

  v36 = *(v35 + 403);
  if (v32 < v36)
  {
    v37 = *(v35 + 395);
    if ((v37 + 1) >= 2)
    {
      if (*(v37 + v33))
      {
        --v24;
        SIUINT64SetRemoveValue(v27, v32);
        v35 = a1[1];
      }

      goto LABEL_44;
    }
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  memset(buf, 0, sizeof(buf));
  __error();
  v47 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    v48 = a1[1];
    v49 = fd_name(*(v48 + 220), buf, 0x100uLL);
    *v54 = 136316418;
    v55 = "_data_map_get_offset_entry_impl";
    v56 = 1024;
    v57 = 362;
    v58 = 2048;
    v59 = v32;
    v60 = 2048;
    v61 = v36;
    v62 = 2048;
    v63 = v48;
    v64 = 2080;
    v65 = v49;
    _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", v54, 0x3Au);
  }

  result = __error();
  __break(1u);
  return result;
}

uint64_t unionUINT64Set(unint64_t *a1, uint64_t a2, unint64_t *a3)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v6 = *a1++;
      SIValueSet<unsigned long long>::SIValueSetInsert(a3 + 2, v6);
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_drop_vectors(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  (*(*a1 + 336))(a1);
  v6 = a1[1];
  v7 = *(v6 + 403);
  if (v7 < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
    v10 = 24;
    do
    {
      v11 = *(v6 + 395);
      if ((v11 + 1) >= 2)
      {
        v15 = v11 + v10;
      }

      else
      {
        memset(v34, 0, sizeof(v34));
        v12 = *__error();
        v13 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v21 = v8;
          v17 = a2;
          v18 = a1[1];
          v19 = fd_name(*(v18 + 220), v34, 0x100uLL);
          *buf = 136316418;
          v23 = "_data_map_get_offset_entry_impl";
          v24 = 1024;
          v25 = 362;
          v26 = 2048;
          v27 = v9;
          v28 = 2048;
          v29 = v7;
          v30 = 2048;
          v31 = v18;
          a2 = v17;
          v8 = v21;
          v32 = 2080;
          v33 = v19;
          _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        v14 = __error();
        v15 = 0;
        *v14 = v12;
      }

      if (*(v15 + 8) == a3 && *v15 != -1 && (*v15 & 0xFLL) == a2)
      {
        *(v15 + 8) = 0;
        v8 = (v8 + 1);
      }

      ++v9;
      v6 = a1[1];
      v7 = *(v6 + 403);
      v10 += 24;
    }

    while (v9 < v7);
  }

  (*(*a1 + 112))(a1);
  return v8;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_restore_data_impl<true>(void *a1, unint64_t a2, void *a3, size_t a4, const void *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  (*(*a1 + 336))(a1);
  v11 = a1[1];
  v12 = *(v11 + 395);
  v13 = *(v11 + 403);
  if (v13 > a2 && (v12 + 1) > 1)
  {
    if (*(v12 + 24 * a2) == -1)
    {
      MEMORY[0x1EEE9AC00](v10);
      v21 = &v26 - v20;
      bzero(&v26 - v20, v22);
      v23 = *(a1[1] + 216);
      memcpy(v21, a5, v23);
      memcpy(&v21[v23], a3, a4);
      dataMap<unsigned long long,true,true,false>::data_map_store_as_update<true>(a1, a2, v21, v23 + a4);
    }
  }

  else
  {
    memset(v38, 0, sizeof(v38));
    v15 = *__error();
    v16 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v24 = a1[1];
      v25 = fd_name(*(v24 + 220), v38, 0x100uLL);
      v26 = 136316418;
      v27 = "_data_map_get_offset_entry_impl";
      v28 = 1024;
      v29 = 362;
      v30 = 2048;
      v31 = a2;
      v32 = 2048;
      v33 = v13;
      v34 = 2048;
      v35 = v24;
      v36 = 2080;
      v37 = v25;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v26, 0x3Au);
    }

    *__error() = v15;
    v17 = a1[1];
    v18 = dataMap<unsigned long long,false,true,false>::dm_hash(*(v17 + 282), a3, a4);
    if (*(v17 + 403) <= a2)
    {
      *(v17 + 403) = a2 + 1;
    }

    dataMap<unsigned long long,true,true,false>::_data_map_push_to_update_set<true>(a1, a2, v18, a3, a4, 0);
  }

  return (*(*a1 + 112))(a1);
}

unint64_t dataMap<unsigned long long,true,true,false>::_data_map_push_to_update_set<true>(uint64_t a1, unint64_t a2, unint64_t a3, UInt8 *a4, CFIndex a5, void *bucket_entry)
{
  v58 = *MEMORY[0x1E69E9840];
  v28 = 0;
  if (!dataMap<unsigned long long,true,true,false>::_data_map_grow(a1, &v28))
  {
    return 0;
  }

  v12 = *(a1 + 8);
  if (!*(v12 + 379) || (*(v12 + 395) + 1) <= 1)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v44 = 0u;
    memset(buf, 0, sizeof(buf));
    v13 = *__error();
    v14 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 8);
      v25 = *(v24 + 403);
      v27 = *(v24 + 395);
      v26 = fd_name(*(v24 + 220), buf, 0x100uLL);
      *v29 = 136316674;
      v30 = "_data_map_push_to_update_set";
      v31 = 1024;
      v32 = 3260;
      v33 = 2048;
      v34 = a2;
      v35 = 2048;
      v36 = v25;
      v37 = 2048;
      v38 = v24;
      v39 = 2048;
      v40 = v27;
      v41 = 2080;
      v42 = v26;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: insert data id error %lld max %lld %p map: %p %s", v29, 0x44u);
    }

    *__error() = v13;
    v12 = *(a1 + 8);
  }

  if ((*(v12 + 275) & 1) == 0)
  {
    dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
    v12 = *(a1 + 8);
    *(v12 + 275) = 1;
  }

  v15 = *(v12 + 395) + 24 * a2;
  *(v15 + 16) = a3;
  *v15 = xmmword_1C2BFA360;
  v16 = *(a1 + 8);
  if (*(v16 + 459))
  {
    v17 = *(v16 + 475);
    if ((v17 + 1) >= 2)
    {
      v18 = v17 + 24 * a2;
      *(v18 + 16) = a3;
      *v18 = xmmword_1C2BFA360;
      v16 = *(a1 + 8);
    }
  }

  if ((*(v16 + 273) & 1) == 0)
  {
    dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
    *(*(a1 + 8) + 273) = 1;
  }

  dataMap<unsigned long long,true,true,false>::data_map_store_as_update<true>(a1, a2, a4, a5);
  v19 = *(a1 + 8);
  ++*(v19 + 403);
  if ((*(v19 + 274) & 1) == 0)
  {
    dataMap<unsigned long long,true,true,false>::_data_map_dirty(a1);
    *(*(a1 + 8) + 274) = 1;
  }

  if (!bucket_entry || (v28 & 4) != 0)
  {
    bucket_entry = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, a3, a2, a4, a5, 0xFFFFFFFFFFFFFFFFLL);
  }

  *bucket_entry = a2;
  if (gSILogLevels[0] >= 5)
  {
    v20 = *__error();
    v21 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 8);
      *buf = 134218240;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v22;
      _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "added %lld to %p", buf, 0x16u);
    }

    *__error() = v20;
  }

  return a2;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_cancel_offset_rewrite(void *a1)
{
  (*(*a1 + 336))(a1);
  if (*(a1[1] + 459))
  {
    munmap(*(a1[1] + 475), *(a1[1] + 467));
    _fd_unlink_with_origin(*(a1[1] + 459), 0);
    fd_release(*(a1[1] + 459));
    v2 = a1[1];
    *(v2 + 467) = 0;
    *(v2 + 459) = 0;
    *(v2 + 475) = 0;
    *(a1[1] + 475) = -1;
  }

  v3 = *(*a1 + 112);

  return v3(a1);
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_end_offset_rewrite(void *a1)
{
  (*(*a1 + 336))(a1);
  v2 = *(a1[1] + 459);
  if (v2)
  {
    fd_rename_over_and_release(*(a1[1] + 379), v2);
    munmap(*(a1[1] + 395), *(a1[1] + 387));
    v3 = a1[1];
    v4 = v3 + 379;
    v3 += 459;
    *(v4 + 16) = *(v3 + 16);
    *v4 = *v3;
    v5 = a1[1];
    *(v5 + 475) = 0;
    *(v5 + 459) = 0;
    *(v5 + 467) = 0;
    v6 = (a1[1] + 459);
    v6[2] = -1;
    *v6 = 0;
  }

  v7 = *(*a1 + 112);

  return v7(a1);
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_start_offset_rewrite(void *a1, uint64_t a2)
{
  if (*(a1[1] + 459))
  {
    v16 = __si_assert_copy_extra_332();
    v24 = v16;
    v25 = "";
    if (v16)
    {
      v25 = v16;
    }

    __message_assert_336(v16, v17, v18, v19, v20, v21, v22, v23, "dataMap.ipp", 3349, "data_map->offsets_clone.offsets_fd == 0", v25);
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

  (*(*a1 + 104))(a1);
  v4 = a1[1];
  if (*(v4 + 403) < 2uLL)
  {
    v11 = *(v4 + 483);
  }

  else
  {
    v5 = *(v4 + 379);
    *(v4 + 467) = *(v4 + 387);
    if (*(v4 + 277))
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    sibling_with_prefix_protected = fd_create_sibling_with_prefix_protected(v5, "tmp.clone.", v6);
    v8 = (a1[1] + 379);
    v8[10] = sibling_with_prefix_protected;
    fd_copyfile(*v8, sibling_with_prefix_protected, 1);
    v9 = fd_mmap(*(a1[1] + 459), *(a1[1] + 467), 3, 1, 0);
    v10 = a1[1] + 403;
    *(v10 + 72) = v9;
    v11 = (*(v10 + 80) + 1);
    *(v10 + 80) = v11;
    if (a2 && *v10 >= 2uLL)
    {
      v12 = 1;
      do
      {
        clone_offset = dataMap<unsigned long long,true,true,false>::_data_map_get_clone_offset_entry<true>(a1, v12);
        if (clone_offset)
        {
          v14 = clone_offset;
          if (SIUINT32SetContainsValue(a2, *(clone_offset + 8)))
          {
            *(v14 + 8) = 0;
          }
        }

        ++v12;
      }

      while (v12 < *(a1[1] + 403));
    }
  }

  (*(*a1 + 112))(a1);
  return v11;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_get_clone_offset_entry<true>(uint64_t a1, unint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 8) + 403);
  v5 = *(*(a1 + 8) + 475);
  v8 = v4 > a2 && v5 != 0 && v5 != -1 && *(*(a1 + 8) + 467) / 0x18uLL > a2;
  if (v8 && a2 < *(*(a1 + 8) + 331) / 0x18uLL)
  {
    return v5 + 24 * a2;
  }

  memset(v27, 0, sizeof(v27));
  v10 = *__error();
  v11 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 8);
    v14 = fd_name(*(v13 + 220), v27, 0x100uLL);
    v15 = 136316418;
    v16 = "_data_map_get_offset_entry_impl";
    v17 = 1024;
    v18 = 362;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v4;
    v23 = 2048;
    v24 = v13;
    v25 = 2080;
    v26 = v14;
    _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v15, 0x3Au);
  }

  v12 = __error();
  result = 0;
  *v12 = v10;
  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_set_offset_for_id(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v37 = *MEMORY[0x1E69E9840];
  (*(*a1 + 336))(a1);
  if (!a5)
  {
    v10 = *(a1[1] + 395);
    v11 = *(a1[1] + 403);
    if (v11 > a2 && (v10 + 1) > 1)
    {
      v20 = (v10 + 24 * a2);
      v21 = *v20;
      *v20 = a3;
      v20[1] = a4;
      v15 = v21 == -1;
    }

    else
    {
      memset(v36, 0, sizeof(v36));
      v13 = *__error();
      v14 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v22 = a1[1];
        v23 = fd_name(*(v22 + 220), v36, 0x100uLL);
        v24 = 136316418;
        v25 = "_data_map_get_offset_entry_impl";
        v26 = 1024;
        v27 = 362;
        v28 = 2048;
        v29 = a2;
        v30 = 2048;
        v31 = v11;
        v32 = 2048;
        v33 = v22;
        v34 = 2080;
        v35 = v23;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v24, 0x3Au);
      }

      *__error() = v13;
      v15 = 1;
    }

    v16 = *(a1[1] + 323);
    if (v16)
    {
      v17 = !v15;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      CFDictionaryRemoveValue(v16, a2);
    }
  }

  if (*(a1[1] + 459))
  {
    clone_offset = dataMap<unsigned long long,true,true,false>::_data_map_get_clone_offset_entry<true>(a1, a2);
    if (clone_offset)
    {
      *clone_offset = a3;
      clone_offset[1] = a4;
    }
  }

  return (*(*a1 + 112))(a1);
}

BOOL dataMap<unsigned long long,true,true,false>::data_map_is_empty(uint64_t a1)
{
  memset(&v6, 0, sizeof(v6));
  if (fd_stat(*(*(a1 + 8) + 236), &v6))
  {
    v2 = 1;
  }

  else
  {
    v2 = v6.st_size == 0;
  }

  if (!v2)
  {
    return 0;
  }

  if (!fd_stat(*(*(a1 + 8) + 220), &v6) && v6.st_size != 0)
  {
    return 0;
  }

  return fd_stat(*(*(a1 + 8) + 379), &v6) || v6.st_size == 0;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_garbage_collect_complete(int a1, int a2, uint64_t a3, const char *a4, const char *a5)
{
  _rename_prefix_suffix(a2, a4 + 268, ".offsets", a4, a5);
  _rename_prefix_suffix(a2, a4 + 268, ".data", v7, v8);

  return _rename_prefix_suffix(a2, a4 + 268, ".header", v9, v10);
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_defer_block(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 451);
  if (v3)
  {
    return v3(*(v2 + 244), a2);
  }

  else
  {
    return (*(a2 + 16))(a2);
  }
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_get_data_offset_locked(uint64_t a1, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(v4 + 395);
  v6 = *(v4 + 403);
  if (v6 > a2 && (v5 + 1) > 1)
  {
    v10 = *(v5 + 24 * a2);
    if (v10 == -2)
    {
      return 0;
    }

    else if (*(v4 + 264))
    {
      os_unfair_lock_lock((v4 + 260));
      v12 = *(a1 + 8);
      v13 = *(v12 + 264);
      if (v13)
      {
        bit_vector_set(v13, a2);
        v12 = *(a1 + 8);
      }

      os_unfair_lock_unlock((v12 + 260));
    }
  }

  else
  {
    memset(v28, 0, sizeof(v28));
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 8);
      v15 = fd_name(*(v14 + 220), v28, 0x100uLL);
      v16 = 136316418;
      v17 = "_data_map_get_offset_entry_impl";
      v18 = 1024;
      v19 = 362;
      v20 = 2048;
      v21 = a2;
      v22 = 2048;
      v23 = v6;
      v24 = 2048;
      v25 = v14;
      v26 = 2080;
      v27 = v15;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v16, 0x3Au);
    }

    v10 = 0;
    *__error() = v8;
  }

  return v10;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_clone_files(uint64_t a1, const char *a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v12 = 0;
  v6 = *(*(a1 + 8) + 277);
  asprintf(&v12, "%s%s", a2, ".buckets");
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  sibling_protected = fd_create_sibling_protected(*(*(a1 + 8) + 236), v12, 514, v7);
  *a3 = sibling_protected;
  if (sibling_protected)
  {
    fd_copyfile(*(*(a1 + 8) + 236), sibling_protected, 1);
  }

  free(v12);
  asprintf(&v12, "%s%s", a2, ".header");
  v9 = fd_create_sibling_protected(*(*(a1 + 8) + 220), v12, 514, v7);
  *(a3 + 24) = v9;
  if (v9)
  {
    fd_copyfile(*(*(a1 + 8) + 220), v9, 1);
  }

  free(v12);
  asprintf(&v12, "%s%s", a2, ".offsets");
  v10 = fd_create_sibling_protected(*(*(a1 + 8) + 379), v12, 514, v7);
  *(a3 + 8) = v10;
  if (v10)
  {
    fd_copyfile(*(*(a1 + 8) + 379), v10, 1);
  }

  free(v12);
  return 0;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_wrlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 276))
  {
    return 0;
  }

  v2 = _db_write_lock(v1);
  if (v2)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v2;
      if (v2 == -1)
      {
        v6 = *__error();
      }

      v7 = 136315650;
      v8 = "_data_map_wrlock";
      v9 = 1024;
      v10 = 164;
      v11 = 1024;
      v12 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_wrlock error %d", &v7, 0x18u);
    }

    *__error() = v4;
  }

  return v2;
}

void *dataMap<unsigned long long,true,true,false>::data_map_copy_deleted_ids(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = (v1 + 403);
  if (!v2[3])
  {
    return 0;
  }

  v4 = *v2;
  v5 = bit_vector_create(*v2);
  if (v4 >= 2)
  {
    v6 = 1;
    v7 = 24;
    do
    {
      v8 = *(*(a1 + 8) + 395);
      v9 = *(*(a1 + 8) + 403);
      if (v6 < v9 && (v8 + 1) > 1)
      {
        if (*(v8 + v7) != -2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        memset(v28, 0, sizeof(v28));
        v11 = *__error();
        v12 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *(a1 + 8);
          v14 = fd_name(*(v13 + 220), v28, 0x100uLL);
          *buf = 136316418;
          v17 = "_data_map_get_offset_entry_impl";
          v18 = 1024;
          v19 = 362;
          v20 = 2048;
          v21 = v6;
          v22 = 2048;
          v23 = v9;
          v24 = 2048;
          v25 = v13;
          v26 = 2080;
          v27 = v14;
          _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        *__error() = v11;
      }

      bit_vector_set(v5, v6);
LABEL_13:
      ++v6;
      v7 += 24;
    }

    while (v4 != v6);
  }

  return v5;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_garbage_collect(void *a1)
{
  if (*(a1[1] + 264))
  {
    (*(*a1 + 336))(a1);
    (*(*a1 + 96))(a1);
    (*(*a1 + 112))(a1);
  }

  return 0;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_garbage_collect_setup(void *a1)
{
  (*(*a1 + 336))(a1);
  v2 = a1[1];
  v3 = *(v2 + 403);
  os_unfair_lock_lock((v2 + 260));
  v4 = a1[1];
  if (*(v4 + 264))
  {
    os_unfair_lock_unlock((v4 + 260));
    (*(*a1 + 112))(a1);
    return 22;
  }

  else
  {
    v6 = bit_vector_create(v3);
    v7 = a1[1];
    *(v7 + 264) = v6;
    os_unfair_lock_unlock((v7 + 260));
    return 0;
  }
}

void dataMap<unsigned long long,true,true,false>::_data_map_clear_seen(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 8) + 260));
  v2 = *(a1 + 8);
  v3 = *(v2 + 264);
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(v3);
    v2 = *(a1 + 8);
    *(v2 + 264) = 0;
  }

  os_unfair_lock_unlock((v2 + 260));
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_match_address(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 283);
  if (v4 != -1)
  {
    if (v4)
    {
      if (v4 <= a2)
      {
        v5 = *(v2 + 291);
        if (&v4[v5] > a2)
        {
          v6 = *(v2 + 220);
          v7 = "data ro header";
          v8 = a2;
          LODWORD(v9) = *(v2 + 291);
LABEL_22:
          log_map_access_error(v8, v4, v5, v9, v7, v6);
          return 1;
        }
      }
    }

    return 0;
  }

  if ((si_vector_index_contains_address(*(v2 + 315), a2) & 1) == 0)
  {
    v12 = *(a1 + 8);
    v4 = *(v12 + 395);
    v13 = (v4 + 1) < 2 || v4 > a2;
    if (v13 || (v5 = *(v12 + 387), &v4[v5] <= a2))
    {
      v4 = *(v12 + 363);
      if ((v4 + 1) < 2)
      {
        return 0;
      }

      if (v4 > a2)
      {
        return 0;
      }

      v5 = *(v12 + 355);
      if (&v4[v5] <= a2)
      {
        return 0;
      }

      v9 = *(v12 + 347);
      v6 = *(v12 + 236);
      v7 = "data buckets";
    }

    else
    {
      v9 = *(v12 + 331);
      v6 = *(v12 + 379);
      v7 = "data offsets";
    }

    v8 = a2;
    goto LABEL_22;
  }

  return 1;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_version_update(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 307);
  if (*(v2 + 8) <= 0xAu)
  {
    *(v2 + 8) = 12;
    return fd_pwrite(*(v1 + 220), v2, 0x54uLL, 0);
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_version(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(*(v1 + 307) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_sync_header(uint64_t *a1, int a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v29 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v7 = v6;
  v8 = v5;
  v9 = HIDWORD(v5);
  v11 = v10;
  v12 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v27 = v9;
  v28 = v8;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v36, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v7);
    dropThreadId(v8, 1, add_explicit + 1);
    CICleanUpReset(v8, v11);
  }

  else
  {
    v15 = a1[1];
    if (!*(v15 + 278))
    {
      v16 = *(v15 + 307);
      if (*(v16 + 16) != 1)
      {
        *(v16 + 44) = *(v16 + 20);
        *(v16 + 28) = *(v15 + 403);
        *(v16 + 20) = *(v15 + 371);
        *(v16 + 16) = 0;
        fd_pwrite(*(v15 + 220), v16, 0x54uLL, 0);
        if (a2)
        {
          fd_sync(*(a1[1] + 220), 0);
        }

        *(*(a1[1] + 307) + 16) = 2;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        *v36 = 0u;
        v17 = *__error();
        v18 = _SILogForLogForCategory(7);
        v19 = 2 * (dword_1EBF46AE8 < 4);
        if (os_log_type_enabled(v18, v19))
        {
          v20 = fd_name(*(a1[1] + 220), v36, 0x100uLL);
          if (a2)
          {
            v21 = "sync";
          }

          else
          {
            v21 = "update";
          }

          v22 = (*(*a1 + 96))(a1);
          *buf = 136315650;
          v31 = v20;
          v32 = 2080;
          v33 = v21;
          v34 = 2048;
          v35 = v22;
          _os_log_impl(&dword_1C278D000, v18, v19, "%s complete %s header with count: %llu", buf, 0x20u);
        }

        *__error() = v17;
      }
    }

    v29 = 1;
    v23 = threadData[9 * v28 + 1] + 320 * v27;
    *(v23 + 312) = v13;
    v24 = *(v23 + 232);
    if (v24)
    {
      v24(*(v23 + 288));
    }

    dropThreadId(v28, 0, add_explicit + 1);
  }

  v25 = (a1[1] + 278);
  if (v29 == 1)
  {
    return *v25;
  }

  *v25 = 22;
  return 22;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_sync_data(uint64_t *a1, int a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v37 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v7 = v6;
  v8 = v5;
  v9 = HIDWORD(v5);
  v11 = v10;
  v12 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v35 = v9;
  v36 = v8;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v44 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v44, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v7);
    dropThreadId(v8, 1, add_explicit + 1);
    CICleanUpReset(v8, v11);
  }

  else
  {
    v15 = a1[1];
    if (!*(v15 + 278))
    {
      v16 = *(v15 + 307);
      if (!*(v16 + 16))
      {
        if (*(v15 + 273) == 1)
        {
          *(v15 + 273) = 0;
        }

        if (*(v15 + 275) == 1)
        {
          if (a2)
          {
            v17 = *(v16 + 52);
            v18 = *(v15 + 395) + 24 * v17;
            v19 = -*MEMORY[0x1E69E9AC8];
            v20 = 24 * (*(v15 + 403) - v17);
            fd_system_status_stall_if_busy();
            msync((v18 & v19), v20, 16);
            v15 = a1[1];
          }

          *(v15 + 275) = 0;
        }

        v21 = v15;
        if (*(v15 + 274) == 1)
        {
          if (a2)
          {
            v22 = *(v15 + 363);
            v23 = 8 * *(v15 + 371);
            fd_system_status_stall_if_busy();
            msync(v22, v23, 16);
            v21 = a1[1];
          }

          *(v21 + 274) = 0;
        }

        v24 = *(v21 + 307);
        *(v24 + 28) = *(v21 + 403);
        *(v24 + 20) = *(v21 + 371);
        *(v24 + 60) = *(v21 + 427);
        *(v24 + 76) = *(v21 + 443);
        *(v24 + 16) = 0;
        fd_pwrite(*(v21 + 220), v24, 0x54uLL, 0);
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        *v44 = 0u;
        v25 = *__error();
        v26 = _SILogForLogForCategory(7);
        v27 = 2 * (dword_1EBF46AE8 < 4);
        if (os_log_type_enabled(v26, v27))
        {
          v28 = fd_name(*(a1[1] + 220), v44, 0x100uLL);
          if (a2)
          {
            v29 = "sync";
          }

          else
          {
            v29 = "update";
          }

          v30 = (*(*a1 + 96))(a1);
          *buf = 136315650;
          v39 = v28;
          v40 = 2080;
          v41 = v29;
          v42 = 2048;
          v43 = v30;
          _os_log_impl(&dword_1C278D000, v26, v27, "%s complete %s map with count: %llu", buf, 0x20u);
        }

        *__error() = v25;
      }
    }

    v37 = 1;
    v31 = threadData[9 * v36 + 1] + 320 * v35;
    *(v31 + 312) = v13;
    v32 = *(v31 + 232);
    if (v32)
    {
      v32(*(v31 + 288));
    }

    dropThreadId(v36, 0, add_explicit + 1);
  }

  v33 = (a1[1] + 278);
  if (v37 == 1)
  {
    return *v33;
  }

  *v33 = 22;
  return 22;
}

BOOL dataMap<unsigned long long,true,true,false>::_data_map_needs_sync(uint64_t a1)
{
  v22 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(a1 + 8), 0, add_explicit + 1);
  v5 = v4;
  v6 = v3;
  v7 = HIDWORD(v3);
  v9 = v8;
  v10 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v11 = *(v10 + 312);
  v12 = *(v10 + 224);
  if (v12)
  {
    v12(*(v10 + 288));
  }

  v20 = v7;
  v21 = v6;
  v18 = v5;
  v19 = v9;
  if (_setjmp(v10))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v17, 2u);
    }

    *(v10 + 312) = v11;
    CIOnThreadCleanUpReset(v18);
    dropThreadId(v21, 1, add_explicit + 1);
    CICleanUpReset(v21, v19);
    result = 0;
  }

  else
  {
    v14 = *(*(*(a1 + 8) + 307) + 16) == 0;
    v22 = 1;
    v15 = threadData[9 * v21 + 1] + 320 * v20;
    *(v15 + 312) = v11;
    v16 = *(v15 + 232);
    if (v16)
    {
      v16(*(v15 + 288));
    }

    dropThreadId(v21, 0, add_explicit + 1);
    result = v14;
  }

  if ((v22 & 1) == 0)
  {
    *(*(a1 + 8) + 278) = 22;
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_get_data(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((*(*a1 + 104))(a1))
  {
    goto LABEL_2;
  }

  v26 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v10 = v9;
  v11 = v8;
  v12 = HIDWORD(v8);
  v14 = v13;
  v15 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v16 = *(v15 + 312);
  v17 = *(v15 + 224);
  if (v17)
  {
    v17(*(v15 + 288));
  }

  v24 = v12;
  v25 = v11;
  v22 = v10;
  v23 = v14;
  if (_setjmp(v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v21, 2u);
    }

    *(v15 + 312) = v16;
    CIOnThreadCleanUpReset(v22);
    dropThreadId(v25, 1, add_explicit + 1);
    CICleanUpReset(v25, v23);
    v18 = 0;
  }

  else
  {
    v18 = (*(*a1 + 120))(a1, a2, a3);
    v26 = 1;
    v19 = threadData[9 * v25 + 1] + 320 * v24;
    *(v19 + 312) = v16;
    v20 = *(v19 + 232);
    if (v20)
    {
      v20(*(v19 + 288));
    }

    dropThreadId(v25, 0, add_explicit + 1);
  }

  if ((v26 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  (*(*a1 + 112))(a1);
  result = v18;
  if (!v18)
  {
LABEL_2:
    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_get_data_entry_impl<true>(uint64_t a1, uint64_t *a2, unint64_t a3, _BYTE *a4, char a5)
{
  v97 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if ((a5 & 1) == 0 && (*(*a2 + 104))(a2))
  {
    return (*(*a2 + 112))(a2);
  }

  v67 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a2[1], 0, add_explicit + 1);
  v12 = v11;
  v13 = v10;
  v14 = HIDWORD(v10);
  v16 = v15;
  v17 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v58 = *(v17 + 312);
  v18 = *(v17 + 224);
  if (v18)
  {
    v18(*(v17 + 288));
  }

  v65 = v14;
  v66 = v13;
  v63 = v12;
  v64 = v16;
  if (_setjmp(v17))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v17 + 312) = v58;
    CIOnThreadCleanUpReset(v63);
    dropThreadId(v66, 1, add_explicit + 1);
    result = CICleanUpReset(v66, v64);
    goto LABEL_18;
  }

  v20 = a2[1];
  v21 = v20;
  if (*(v20 + 264))
  {
    os_unfair_lock_lock((v20 + 260));
    v54 = a2[1];
    v55 = *(v54 + 264);
    if (v55)
    {
      bit_vector_set(v55, a3);
      v54 = a2[1];
    }

    os_unfair_lock_unlock((v54 + 260));
    v21 = a2[1];
  }

  v22 = (v21 + 323);
  v23 = *(v21 + 403);
  if (v23 <= a3 || (v24 = *(v21 + 395), (v24 + 1) <= 1))
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    *buf = 0u;
    v82 = 0u;
    v25 = *__error();
    v26 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v36 = a2[1];
      v37 = fd_name(*(v36 + 220), buf, 0x100uLL);
      *v69 = 136316418;
      v70 = "_data_map_get_offset_entry_impl";
      v71 = 1024;
      v72 = 362;
      v73 = 2048;
      v74 = a3;
      v75 = 2048;
      v76 = v23;
      v77 = 2048;
      v78 = v36;
      v79 = 2080;
      v80 = v37;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", v69, 0x3Au);
    }

    *__error() = v25;
    goto LABEL_15;
  }

  v29 = (v24 + 24 * a3);
  v30 = *v29;
  if (*v29 != -2)
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v31 = v29[1];
    v68 = 1;
    if (v30 == -1)
    {
      if (!*v22)
      {
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        *buf = 0u;
        v82 = 0u;
        v48 = *__error();
        v49 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v52 = a2[1];
          v53 = fd_name(*(v52 + 220), buf, 0x100uLL);
          *v69 = 136316162;
          v70 = "_data_map_get_data_entry";
          v71 = 1024;
          v72 = 425;
          v73 = 2048;
          v74 = -1;
          v75 = 2048;
          v76 = v52;
          v77 = 2080;
          v78 = v53;
          _os_log_error_impl(&dword_1C278D000, v49, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", v69, 0x30u);
        }

        *__error() = v48;
        fd_name(*(a2[1] + 220), buf, 0x100uLL);
        si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
        goto LABEL_15;
      }

      Value = CFDictionaryGetValue(*v22, a3);
      if (!Value)
      {
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        *buf = 0u;
        v82 = 0u;
        v50 = *__error();
        v51 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v56 = a2[1];
          v57 = fd_name(*(v56 + 220), buf, 0x100uLL);
          *v69 = 136316162;
          v70 = "_data_map_get_data_entry";
          v71 = 1024;
          v72 = 419;
          v73 = 2048;
          v74 = -1;
          v75 = 2048;
          v76 = v56;
          v77 = 2080;
          v78 = v57;
          _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", v69, 0x30u);
        }

        *__error() = v50;
        fd_name(*(a2[1] + 220), buf, 0x100uLL);
        si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
        goto LABEL_15;
      }

      v39 = Value;
      v40 = CFDataGetLength(Value) - *(a2[1] + 216);
      v41 = &CFDataGetBytePtr(v39)[*(a2[1] + 216)];
      BytePtr = CFDataGetBytePtr(v39);
      v43 = *(a2[1] + 216);
      v44 = *(a2[1] + 216);
      memcpy(&v62, BytePtr, v43);
      v32 = v43;
      v35 = v40;
      v34 = v41;
      v33 = v44;
      goto LABEL_30;
    }

    dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a2, v30, v31, &v60, a3, &v68);
    if (v68)
    {
      v32 = *(a2[1] + 216);
      v33 = *(a2[1] + 216);
      v34 = v61;
      v35 = v60;
LABEL_30:
      v45 = v33;
      v46 = v34;
      v47 = v35;
      memcpy((a1 + 16), &v62, v32);
      *(a1 + 20) = v45;
      *a1 = v46;
      *(a1 + 8) = v47;
      *a4 = 1;
    }
  }

LABEL_15:
  v67 = 1;
  v27 = threadData[9 * v66 + 1] + 320 * v65;
  *(v27 + 312) = v58;
  v28 = *(v27 + 232);
  if (v28)
  {
    v28(*(v27 + 288));
  }

  result = dropThreadId(v66, 0, add_explicit + 1);
LABEL_18:
  if ((v67 & 1) == 0)
  {
    *a4 = 0;
    *(a2[1] + 278) = 22;
  }

  if ((a5 & 1) == 0)
  {
    return (*(*a2 + 112))(a2);
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_get_extra_with_key(uint64_t *a1, unsigned __int8 *a2, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v8 = 0;
  v103 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  __dst = 0;
  v9 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    goto LABEL_47;
  }

  v61 = v9;
  v72 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v62 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v70 = v15;
  v71 = v14;
  v68 = v13;
  v69 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v87 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v87, 2u);
    }

    *(v18 + 312) = v62;
    CIOnThreadCleanUpReset(v68);
    dropThreadId(v71, 1, add_explicit + 1);
    CICleanUpReset(v71, v69);
    goto LABEL_44;
  }

  v63 = a2;
  v64 = a3;
  v20 = *(a1[1] + 371);
  v21 = v61 % v20;
  do
  {
    v22 = a1[1];
    v23 = *(v22 + 363);
    v24 = *(v23 + 8 * v21);
    if (!v24)
    {
      break;
    }

    if (*(v22 + 264))
    {
      os_unfair_lock_lock((v22 + 260));
      v48 = a1[1];
      v49 = *(v48 + 264);
      if (v49)
      {
        bit_vector_set(v49, v24);
        v48 = a1[1];
      }

      os_unfair_lock_unlock((v48 + 260));
      v24 = *(v23 + 8 * v21);
      v22 = a1[1];
    }

    v25 = v22 + 323;
    v26 = *(v25 + 72);
    v27 = *(v25 + 80);
    if (v24 >= v27 || (v26 + 1) <= 1)
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      *v87 = 0u;
      v88 = 0u;
      v29 = *__error();
      v30 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        log = v30;
        v36 = add_explicit;
        v37 = v4;
        v38 = a1[1];
        v39 = fd_name(*(v38 + 220), v87, 0x100uLL);
        *buf = 136316418;
        v76 = "_data_map_get_offset_entry_impl";
        v77 = 1024;
        v78 = 362;
        v79 = 2048;
        v80 = v24;
        v81 = 2048;
        v82 = v27;
        v83 = 2048;
        v84 = v38;
        v4 = v37;
        add_explicit = v36;
        v85 = 2080;
        v86 = v39;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v29;
      goto LABEL_18;
    }

    v32 = (v26 + 24 * v24);
    v33 = *v32;
    if (*v32 != -2 && v32[2] == v61)
    {
      v65 = 0;
      __s2 = 0;
      v67 = 0;
      v34 = v32[1];
      v74 = 1;
      if (v33 == -1)
      {
        if (!*v25)
        {
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          *v87 = 0u;
          v88 = 0u;
          v44 = *__error();
          v45 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v50 = a1[1];
            v51 = fd_name(*(v50 + 220), v87, 0x100uLL);
            *buf = 136316162;
            v76 = "_data_map_get_data_entry";
            v77 = 1024;
            v78 = 425;
            v79 = 2048;
            v80 = -1;
            v81 = 2048;
            v82 = v50;
            v83 = 2080;
            v84 = v51;
            _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v44;
          fd_name(*(a1[1] + 220), v87, 0x100uLL);
          si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
          goto LABEL_18;
        }

        Value = CFDictionaryGetValue(*v25, v24);
        if (!Value)
        {
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          *v87 = 0u;
          v88 = 0u;
          v46 = *__error();
          v47 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v52 = a1[1];
            v53 = fd_name(*(v52 + 220), v87, 0x100uLL);
            *buf = 136316162;
            v76 = "_data_map_get_data_entry";
            v77 = 1024;
            v78 = 419;
            v79 = 2048;
            v80 = -1;
            v81 = 2048;
            v82 = v52;
            v83 = 2080;
            v84 = v53;
            _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v46;
          fd_name(*(a1[1] + 220), v87, 0x100uLL);
          si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
          goto LABEL_18;
        }

        v41 = Value;
        LODWORD(v65) = CFDataGetLength(Value) - *(a1[1] + 216);
        v42 = v65;
        __s2 = &CFDataGetBytePtr(v41)[*(a1[1] + 216)];
        BytePtr = CFDataGetBytePtr(v41);
        memcpy(&v67, BytePtr, *(a1[1] + 216));
        v35 = v42;
      }

      else
      {
        dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, v33, v34, &v65, v24, &v74);
        v35 = v65;
        if ((v74 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if (v35 == v64 && !memcmp(v63, __s2, v64))
      {
        v54 = add_explicit;
        v55 = *(a1[1] + 216);
        memcpy(&__dst, &v67, v55);
        v56 = v55;
        LODWORD(add_explicit) = v54;
        HIDWORD(__dst) = v56;
        *v4 = 1;
        break;
      }
    }

LABEL_18:
    v31 = 0;
    if (v21 + 1 != v20)
    {
      v31 = v21 + 1;
    }

    v21 = v31;
  }

  while (v31 != v61 % v20);
  v72 = 1;
  v57 = threadData[9 * v71 + 1] + 320 * v70;
  *(v57 + 312) = v62;
  v58 = *(v57 + 232);
  if (v58)
  {
    v58(*(v57 + 288));
  }

  dropThreadId(v71, 0, add_explicit + 1);
LABEL_44:
  if ((v72 & 1) == 0)
  {
    *v4 = 0;
    *(a1[1] + 278) = 22;
  }

  v8 = __dst;
LABEL_47:
  (*(*a1 + 112))(a1);
  return v8;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_ids_get_locked(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = dataMap<unsigned long long,false,true,false>::dm_hash(*(*(a1 + 8) + 282), a2, a3);

  return dataMap<unsigned long long,true,true,false>::data_map_ids_get_locked_with_hash(a1, a4, v10, v5, a2, a3);
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_ids_get_locked_with_hash(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const void *a5, size_t a6)
{
  v107 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  v9 = *(v8 + 216);
  v10 = *(v8 + 371);
  v77 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(a1 + 8), 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v64 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v75 = v15;
  v76 = v14;
  v73 = v13;
  v74 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v91 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v91, 2u);
    }

    *(v18 + 312) = v64;
    CIOnThreadCleanUpReset(v73);
    dropThreadId(v76, 1, add_explicit + 1);
    CICleanUpReset(v76, v74);
    v20 = 0;
    goto LABEL_42;
  }

  v21 = 0;
  v63 = a3;
  v22 = a3 % v10;
  v61 = v9 + a6;
  v62 = v9;
  v23 = v22;
  v24 = 0;
  do
  {
    v25 = v24;
    v26 = (*(a1 + 8) + 323);
    v27 = *(*(a1 + 8) + 363);
    v28 = *(v27 + 8 * v23);
    if (!v28)
    {
      break;
    }

    v29 = *(v27 + 8 * v23);
    v30 = *(*(a1 + 8) + 395);
    v31 = *(*(a1 + 8) + 403);
    if (v28 < v31 && (v30 + 1) > 1)
    {
      v36 = (v30 + 24 * v28);
      v37 = *v36;
      if (*v36 != -2 && v36[2] == v63)
      {
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v38 = v36[1];
        v78 = 1;
        if (v37 == -1)
        {
          if (!*v26)
          {
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            *v91 = 0u;
            v92 = 0u;
            v47 = *__error();
            v48 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v51 = v21;
              v52 = *(a1 + 8);
              v53 = fd_name(*(v52 + 220), v91, 0x100uLL);
              *buf = 136316162;
              v80 = "_data_map_get_data_entry";
              v81 = 1024;
              v82 = 425;
              v83 = 2048;
              v84 = -1;
              v85 = 2048;
              v86 = v52;
              v21 = v51;
              v87 = 2080;
              v88 = v53;
              _os_log_error_impl(&dword_1C278D000, v48, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
            }

            *__error() = v47;
            fd_name(*(*(a1 + 8) + 220), v91, 0x100uLL);
            si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
            goto LABEL_16;
          }

          Value = CFDictionaryGetValue(*v26, v29);
          if (!Value)
          {
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            *v91 = 0u;
            v92 = 0u;
            v49 = *__error();
            v50 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v54 = v21;
              v55 = *(a1 + 8);
              v56 = fd_name(*(v55 + 220), v91, 0x100uLL);
              *buf = 136316162;
              v80 = "_data_map_get_data_entry";
              v81 = 1024;
              v82 = 419;
              v83 = 2048;
              v84 = -1;
              v85 = 2048;
              v86 = v55;
              v21 = v54;
              v87 = 2080;
              v88 = v56;
              _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
            }

            *__error() = v49;
            fd_name(*(*(a1 + 8) + 220), v91, 0x100uLL);
            si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
            goto LABEL_16;
          }

          v44 = Value;
          LODWORD(v70) = CFDataGetLength(Value) - *(*(a1 + 8) + 216);
          v45 = v70;
          v71 = &CFDataGetBytePtr(v44)[*(*(a1 + 8) + 216)];
          BytePtr = CFDataGetBytePtr(v44);
          memcpy(&v72, BytePtr, *(*(a1 + 8) + 216));
          v39 = v45;
LABEL_25:
          if (v61 == v39 && !memcmp(a5, &v71[v62], a6))
          {
            if (v25 < a4)
            {
              *(a2 + 8 * v25) = *(v27 + 8 * v23);
            }

            v25 = (v25 + 1);
          }

          goto LABEL_16;
        }

        dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, v37, v38, &v70, v29, &v78);
        v39 = v70;
        if (v78)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      *v91 = 0u;
      v92 = 0u;
      v33 = *__error();
      v34 = _SILogForLogForCategory(v21);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        log = v34;
        v40 = v21;
        v41 = *(a1 + 8);
        v42 = fd_name(*(v41 + 220), v91, 0x100uLL);
        *buf = 136316418;
        v80 = "_data_map_get_offset_entry_impl";
        v81 = 1024;
        v82 = 362;
        v83 = 2048;
        v84 = v29;
        v85 = 2048;
        v86 = v31;
        v87 = 2048;
        v88 = v41;
        v21 = v40;
        v89 = 2080;
        v90 = v42;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v33;
    }

LABEL_16:
    if (v23 + 1 == v10)
    {
      v35 = 0;
    }

    else
    {
      v35 = v23 + 1;
    }

    v23 = v35;
    v24 = v25;
  }

  while (v35 != v22);
  v77 = 1;
  v57 = threadData[9 * v76 + 1] + 320 * v75;
  *(v57 + 312) = v64;
  v58 = *(v57 + 232);
  if (v58)
  {
    v58(*(v57 + 288));
  }

  dropThreadId(v76, 0, add_explicit + 1);
  v20 = v25;
LABEL_42:
  result = v20;
  if ((v77 & 1) == 0)
  {
    result = 0;
    *(*(a1 + 8) + 278) = 22;
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_ids_get(void *a1, unsigned __int8 *a2, size_t a3, uint64_t a4, unsigned int a5)
{
  v10 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  locked_with_hash = dataMap<unsigned long long,true,true,false>::data_map_ids_get_locked_with_hash(a1, a4, v10, a5, a2, a3);
  (*(*a1 + 112))(a1);
  return locked_with_hash;
}

CFIndex dataMap<unsigned long long,true,true,false>::data_map_id_get_with_key_noextra(uint64_t *a1, unsigned __int8 *a2, unint64_t a3)
{
  v100 = *MEMORY[0x1E69E9840];
  v60 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  v70 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v7 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v9 = v8;
  v10 = v7;
  v11 = HIDWORD(v7);
  v13 = v12;
  v14 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
  v15 = *(v14 + 312);
  v16 = *(v14 + 224);
  if (v16)
  {
    v16(*(v14 + 288));
  }

  v68 = v11;
  v69 = v10;
  v66 = v9;
  v67 = v13;
  if (_setjmp(v14))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v84 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v84, 2u);
    }

    *(v14 + 312) = v15;
    CIOnThreadCleanUpReset(v66);
    dropThreadId(v69, 1, add_explicit + 1);
    CICleanUpReset(v69, v67);
    v17 = 0;
    goto LABEL_13;
  }

  if (!(*(*a1 + 104))(a1))
  {
    __s1 = a2;
    __n = a3;
    v23 = *(a1[1] + 371);
    v24 = v60 % v23;
    while (1)
    {
      v25 = (a1[1] + 323);
      v26 = *(a1[1] + 363);
      v27 = *(v26 + 8 * v24);
      if (!v27)
      {
        break;
      }

      v28 = *(v26 + 8 * v24);
      v29 = *(a1[1] + 395);
      v30 = *(a1[1] + 403);
      if (v27 >= v30 || (v29 + 1) <= 1)
      {
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        *v84 = 0u;
        v85 = 0u;
        v32 = *__error();
        v33 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          log = v33;
          v40 = add_explicit;
          v41 = v15;
          v42 = a1[1];
          v43 = fd_name(*(v42 + 220), v84, 0x100uLL);
          *buf = 136316418;
          v73 = "_data_map_get_offset_entry_impl";
          v74 = 1024;
          v75 = 362;
          v76 = 2048;
          v77 = v28;
          v78 = 2048;
          v79 = v30;
          v80 = 2048;
          v81 = v42;
          v15 = v41;
          add_explicit = v40;
          v82 = 2080;
          v83 = v43;
          _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        *__error() = v32;
        goto LABEL_25;
      }

      v35 = (v29 + 24 * v27);
      v36 = *v35;
      if (*v35 != -2 && v35[2] == v60)
      {
        v63 = 0;
        __s2 = 0;
        v65 = 0;
        v37 = v35[1];
        v71 = 1;
        if (v36 == -1)
        {
          if (!*v25)
          {
            v48 = v15;
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            *v84 = 0u;
            v85 = 0u;
            v49 = *__error();
            v50 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v53 = a1[1];
              v54 = fd_name(*(v53 + 220), v84, 0x100uLL);
              *buf = 136316162;
              v73 = "_data_map_get_data_entry";
              v74 = 1024;
              v75 = 425;
              v76 = 2048;
              v77 = -1;
              v78 = 2048;
              v79 = v53;
              v80 = 2080;
              v81 = v54;
              _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
            }

            *__error() = v49;
            fd_name(*(a1[1] + 220), v84, 0x100uLL);
            si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
            goto LABEL_47;
          }

          Value = CFDictionaryGetValue(*v25, v28);
          if (!Value)
          {
            v48 = v15;
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            *v84 = 0u;
            v85 = 0u;
            v51 = *__error();
            v52 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              v55 = a1[1];
              v56 = fd_name(*(v55 + 220), v84, 0x100uLL);
              *buf = 136316162;
              v73 = "_data_map_get_data_entry";
              v74 = 1024;
              v75 = 419;
              v76 = 2048;
              v77 = -1;
              v78 = 2048;
              v79 = v55;
              v80 = 2080;
              v81 = v56;
              _os_log_error_impl(&dword_1C278D000, v52, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
            }

            *__error() = v51;
            fd_name(*(a1[1] + 220), v84, 0x100uLL);
            si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
LABEL_47:
            v15 = v48;
            goto LABEL_25;
          }

          v45 = Value;
          LODWORD(v63) = CFDataGetLength(Value) - *(a1[1] + 216);
          v46 = v15;
          v47 = v63;
          __s2 = &CFDataGetBytePtr(v45)[*(a1[1] + 216)];
          CFDataGetBytePtr(v45);
          v39 = 1;
          v38 = v47;
          v15 = v46;
        }

        else
        {
          dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, v36, v37, &v63, v28, &v71);
          v38 = v63;
          v39 = v71;
        }

        if ((v39 & 1) != 0 && v38 == __n && !memcmp(__s1, __s2, __n))
        {
          v18 = v15;
          v17 = *(v26 + 8 * v24);
          goto LABEL_9;
        }
      }

LABEL_25:
      if (v24 + 1 == v23)
      {
        v34 = 0;
      }

      else
      {
        v34 = v24 + 1;
      }

      v24 = v34;
      if (v34 == v60 % v23)
      {
        v18 = v15;
        v17 = 0;
        goto LABEL_9;
      }
    }
  }

  v18 = v15;
  v17 = 0;
LABEL_9:
  v19 = a1[1];
  if (*(v19 + 264))
  {
    os_unfair_lock_lock((v19 + 260));
    v57 = a1[1];
    v58 = *(v57 + 264);
    if (v58)
    {
      bit_vector_set(v58, v17);
      v57 = a1[1];
    }

    os_unfair_lock_unlock((v57 + 260));
  }

  v70 = 1;
  v20 = threadData[9 * v69 + 1] + 320 * v68;
  *(v20 + 312) = v18;
  v21 = *(v20 + 232);
  if (v21)
  {
    v21(*(v20 + 288));
  }

  dropThreadId(v69, 0, add_explicit + 1);
LABEL_13:
  if ((v70 & 1) == 0)
  {
    v17 = 0;
    *(a1[1] + 278) = 22;
  }

  (*(*a1 + 112))(a1);
  return v17;
}

CFIndex dataMap<unsigned long long,true,true,false>::data_map_id_get_with_key(uint64_t *a1, unsigned __int8 *a2, unint64_t a3, void *a4)
{
  v102 = *MEMORY[0x1E69E9840];
  v8 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    v9 = 0;
    goto LABEL_48;
  }

  v60 = v8;
  __s1 = a2;
  v72 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v61 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v70 = v15;
  v71 = v14;
  v68 = v13;
  v69 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v86 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v86, 2u);
    }

    *(v18 + 312) = v61;
    CIOnThreadCleanUpReset(v68);
    dropThreadId(v71, 1, add_explicit + 1);
    CICleanUpReset(v71, v69);
    v9 = 0;
    goto LABEL_46;
  }

  __n = a3;
  v64 = a4;
  v20 = *(a1[1] + 371);
  v21 = v60 % v20;
  while (1)
  {
    v22 = (a1[1] + 323);
    v23 = *(a1[1] + 363);
    v24 = *(v23 + 8 * v21);
    if (!v24)
    {
      break;
    }

    v25 = *(v23 + 8 * v21);
    v26 = *(a1[1] + 395);
    v27 = *(a1[1] + 403);
    if (v24 >= v27 || (v26 + 1) <= 1)
    {
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      *v86 = 0u;
      v87 = 0u;
      v29 = *__error();
      v30 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v37 = add_explicit;
        v38 = a1[1];
        v39 = fd_name(*(v38 + 220), v86, 0x100uLL);
        *buf = 136316418;
        v75 = "_data_map_get_offset_entry_impl";
        v76 = 1024;
        v77 = 362;
        v78 = 2048;
        v79 = v25;
        v80 = 2048;
        v81 = v27;
        v82 = 2048;
        v83 = v38;
        add_explicit = v37;
        v84 = 2080;
        v85 = v39;
        _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v29;
      goto LABEL_18;
    }

    v32 = (v26 + 24 * v24);
    v33 = *v32;
    if (*v32 != -2 && v32[2] == v60)
    {
      v65 = 0;
      __s2 = 0;
      v67 = 0;
      v34 = v32[1];
      v73 = 1;
      if (v33 == -1)
      {
        if (!*v22)
        {
          v45 = add_explicit;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          *v86 = 0u;
          v87 = 0u;
          v46 = *__error();
          v47 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v50 = a1[1];
            v51 = fd_name(*(v50 + 220), v86, 0x100uLL);
            *buf = 136316162;
            v75 = "_data_map_get_data_entry";
            v76 = 1024;
            v77 = 425;
            v78 = 2048;
            v79 = -1;
            v80 = 2048;
            v81 = v50;
            v82 = 2080;
            v83 = v51;
            _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v46;
          fd_name(*(a1[1] + 220), v86, 0x100uLL);
          si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
          goto LABEL_41;
        }

        Value = CFDictionaryGetValue(*v22, v25);
        if (!Value)
        {
          v45 = add_explicit;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          *v86 = 0u;
          v87 = 0u;
          v48 = *__error();
          v49 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v52 = a1[1];
            v53 = fd_name(*(v52 + 220), v86, 0x100uLL);
            *buf = 136316162;
            v75 = "_data_map_get_data_entry";
            v76 = 1024;
            v77 = 419;
            v78 = 2048;
            v79 = -1;
            v80 = 2048;
            v81 = v52;
            v82 = 2080;
            v83 = v53;
            _os_log_error_impl(&dword_1C278D000, v49, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v48;
          fd_name(*(a1[1] + 220), v86, 0x100uLL);
          si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
LABEL_41:
          add_explicit = v45;
          goto LABEL_18;
        }

        v41 = Value;
        LODWORD(v65) = CFDataGetLength(Value) - *(a1[1] + 216);
        v42 = add_explicit;
        v43 = v65;
        __s2 = &CFDataGetBytePtr(v41)[*(a1[1] + 216)];
        BytePtr = CFDataGetBytePtr(v41);
        memcpy(&v67, BytePtr, *(a1[1] + 216));
        v36 = 1;
        v35 = v43;
        add_explicit = v42;
      }

      else
      {
        dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, v33, v34, &v65, v25, &v73);
        v35 = v65;
        v36 = v73;
      }

      if ((v36 & 1) != 0 && v35 == __n && !memcmp(__s1, __s2, __n) && !memcmp(&v67, v64, *(a1[1] + 216)))
      {
        v9 = *(v23 + 8 * v21);
        goto LABEL_43;
      }
    }

LABEL_18:
    if (v21 + 1 == v20)
    {
      v31 = 0;
    }

    else
    {
      v31 = v21 + 1;
    }

    v21 = v31;
    if (v31 == v60 % v20)
    {
      v9 = 0;
      goto LABEL_43;
    }
  }

  v9 = 0;
LABEL_43:
  v72 = 1;
  v54 = threadData[9 * v71 + 1] + 320 * v70;
  *(v54 + 312) = v61;
  v55 = *(v54 + 232);
  if (v55)
  {
    v55(*(v54 + 288));
  }

  dropThreadId(v71, 0, add_explicit + 1);
LABEL_46:
  if ((v72 & 1) == 0)
  {
    v9 = 0;
    *(a1[1] + 278) = 22;
  }

LABEL_48:
  v56 = a1[1];
  if (*(v56 + 264))
  {
    os_unfair_lock_lock((v56 + 260));
    v58 = a1[1];
    v59 = *(v58 + 264);
    if (v59)
    {
      bit_vector_set(v59, v9);
      v58 = a1[1];
    }

    os_unfair_lock_unlock((v58 + 260));
  }

  (*(*a1 + 112))(a1);
  return v9;
}

unint64_t dataMap<unsigned long long,true,true,false>::_data_map_get_data_id(uint64_t *a1, unsigned int a2, char *a3, uint64_t a4, int a5)
{
  v9 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), &a3[a2], a4 - a2);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v30 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v35 = v15;
  v36 = v14;
  v33 = v13;
  v34 = v17;
  if (!_setjmp(v18))
  {
    bucket_entry = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a3, a4, *(a1[1] + 403));
    if (!bucket_entry)
    {
      updated = 0;
LABEL_18:
      v24 = threadData[9 * v36 + 1] + 320 * v35;
      *(v24 + 312) = v30;
      v25 = *(v24 + 232);
      if (v25)
      {
        v25(*(v24 + 288));
      }

      dropThreadId(v36, 0, add_explicit + 1);
      goto LABEL_21;
    }

    if (*bucket_entry)
    {
      if (*bucket_entry >= *(a1[1] + 403))
      {
        updated = 0;
      }

      else
      {
        updated = *bucket_entry;
      }

      goto LABEL_18;
    }

    if (!a5 || (v22 = bucket_entry, v23 = *(a1[1] + 403), (*(*a1 + 112))(a1), (*(*a1 + 336))(a1)))
    {
LABEL_17:
      updated = 0;
      goto LABEL_18;
    }

    v26 = v23;
    v27 = *(a1[1] + 403);
    if (v23 == v27)
    {
LABEL_23:
      updated = dataMap<unsigned long long,true,true,false>::_data_map_push_to_update_set<true>(a1, v26, v9, a3, a4, v22);
      goto LABEL_18;
    }

    v28 = 0;
    v29 = dataMap<unsigned long long,true,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a3, a4, v27);
    if (v29)
    {
      v28 = *v29;
      if (*v29 >= *(a1[1] + 403))
      {
        goto LABEL_17;
      }

      if (!v28)
      {
        v26 = *(a1[1] + 403);
        v22 = v29;
        goto LABEL_23;
      }

      dataMap<unsigned long long,false,true,false>::_data_map_set_seen_id(a1, v28);
    }

    updated = v28;
    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v18 + 312) = v30;
  CIOnThreadCleanUpReset(v33);
  dropThreadId(v36, 1, add_explicit + 1);
  CICleanUpReset(v36, v34);
  updated = 0;
LABEL_21:
  (*(*a1 + 112))(a1);
  return updated;
}

const UInt8 *dataMap<unsigned long long,true,true,false>::data_map_get_data_locked(uint64_t a1, unint64_t key, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = (*(a1 + 8) + 323);
  v6 = *(*(a1 + 8) + 395);
  v7 = *(*(a1 + 8) + 403);
  if (v7 <= key || (v6 + 1) <= 1)
  {
    v62 = 0u;
    v63 = 0u;
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
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v9 = *__error();
    v10 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 8);
      v21 = fd_name(*(v20 + 220), &v48, 0x100uLL);
      *buf = 136316418;
      v37 = "_data_map_get_offset_entry_impl";
      v38 = 1024;
      v39 = 362;
      v40 = 2048;
      v41 = key;
      v42 = 2048;
      v43 = v7;
      v44 = 2048;
      v45 = v20;
      v46 = 2080;
      v47 = v21;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
    }

    v11 = __error();
    result = 0;
    *v11 = v9;
    return result;
  }

  v13 = (v6 + 24 * key);
  v14 = *v13;
  if (*v13 == -2)
  {
    return 0;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  v16 = v13[1];
  v35 = 1;
  if (v14 == -1)
  {
    if (*v5)
    {
      Value = CFDictionaryGetValue(*v5, key);
      if (Value)
      {
        v19 = Value;
        LODWORD(v32) = CFDataGetLength(Value) - *(*(a1 + 8) + 216);
        v33 = &CFDataGetBytePtr(v19)[*(*(a1 + 8) + 216)];
        CFDataGetBytePtr(v19);
        if (!a3)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v62 = 0u;
      v63 = 0u;
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
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v24 = *__error();
      v25 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 8);
        v29 = fd_name(*(v28 + 220), &v48, 0x100uLL);
        *buf = 136316162;
        v37 = "_data_map_get_data_entry";
        v38 = 1024;
        v39 = 419;
        v40 = 2048;
        v41 = -1;
        v42 = 2048;
        v43 = v28;
        v44 = 2080;
        v45 = v29;
        _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
      }

      *__error() = v24;
      fd_name(*(*(a1 + 8) + 220), &v48, 0x100uLL);
      si_analytics_log_2752("(1)invalid data offset 0x%lx %p %s");
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
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
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v22 = *__error();
      v23 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 8);
        v27 = fd_name(*(v26 + 220), &v48, 0x100uLL);
        *buf = 136316162;
        v37 = "_data_map_get_data_entry";
        v38 = 1024;
        v39 = 425;
        v40 = 2048;
        v41 = -1;
        v42 = 2048;
        v43 = v26;
        v44 = 2080;
        v45 = v27;
        _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
      }

      *__error() = v22;
      fd_name(*(*(a1 + 8) + 220), &v48, 0x100uLL);
      si_analytics_log_2752("(2)invalid data offset 0x%lx %p %s");
    }

    return 0;
  }

  dataMap<unsigned long long,true,true,false>::data_entry_restore<true>(a1, v14, v16, &v32, key, &v35);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

  if (a3)
  {
LABEL_12:
    *a3 = v32;
  }

LABEL_13:
  v17 = *(a1 + 8);
  if (*(v17 + 264))
  {
    os_unfair_lock_lock((v17 + 260));
    v30 = *(a1 + 8);
    v31 = *(v30 + 264);
    if (v31)
    {
      bit_vector_set(v31, key);
      v30 = *(a1 + 8);
    }

    os_unfair_lock_unlock((v30 + 260));
  }

  return v33;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_unlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 276))
  {
    return 0;
  }

  v2 = db_rwlock_unlock_unknown(v1);
  if (v2)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v2;
      if (v2 == -1)
      {
        v6 = *__error();
      }

      v7 = 136315650;
      v8 = "_data_map_unlock";
      v9 = 1024;
      v10 = 186;
      v11 = 1024;
      v12 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_unlock error %d", &v7, 0x18u);
    }

    *__error() = v4;
  }

  return v2;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_rdlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 276))
  {
    return 0;
  }

  lock = db_read_lock(v1);
  if (lock)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = lock;
      if (lock == -1)
      {
        v6 = *__error();
      }

      v7 = 136315650;
      v8 = "_data_map_rdlock";
      v9 = 1024;
      v10 = 175;
      v11 = 1024;
      v12 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_rdlock error %d", &v7, 0x18u);
    }

    *__error() = v4;
  }

  return lock;
}

void dataMap<unsigned long long,true,true,false>::data_map_make_read_only_impl<true>()
{
  v0 = __si_assert_copy_extra_332();
  v8 = v0;
  v9 = "";
  if (v0)
  {
    v9 = v0;
  }

  __message_assert_336(v0, v1, v2, v3, v4, v5, v6, v7, "dataMap.hpp", 469, "0", v9);
  free(v8);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_commit_shadow_complete(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    v4 = *(v2 + 307);
    if (*(v4 + 16) == 2)
    {
      *(v4 + 16) = 1;
      fd_pwrite(*(v2 + 220), v4, 0x54uLL, 0);
      fd_sync(*(*(a1 + 8) + 220), 0);
      return *(*(a1 + 8) + 278);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_commit_shadow(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!*(v2 + 278) && *(*(v2 + 307) + 16) == 2)
  {
    fd_sync(*(v2 + 228), 0);
    v2 = *(a1 + 8);
  }

  fd_release(*(v2 + 228));
  v3 = *(a1 + 8);
  *(v3 + 228) = 0;
  return *(v3 + 278);
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_shadow(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    v4 = *(v2 + 307);
    if (*(v4 + 16) == 2)
    {
      sibling_with_suffix_protected = *(v2 + 228);
      if (!sibling_with_suffix_protected)
      {
        sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v2 + 220), ".shadow", 514);
        v6 = *(a1 + 8);
        *(v6 + 228) = sibling_with_suffix_protected;
        v4 = *(v6 + 307);
      }

      fd_pwrite(sibling_with_suffix_protected, v4, 0x54uLL, 0);
      return *(*(a1 + 8) + 278);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_commit_sync(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    v4 = *(v2 + 307);
    if (*(v4 + 16) == 1)
    {
      return 0;
    }

    else
    {
      *(v4 + 16) = 2;
      fd_pwrite(*(v2 + 220), v4, 0x54uLL, 0);
      fd_sync(*(*(a1 + 8) + 220), 0);
      return *(*(a1 + 8) + 278);
    }
  }

  return result;
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_flush(uint64_t *a1)
{
  if ((*(*a1 + 208))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v22 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v6 = v5;
  v7 = v4;
  v8 = HIDWORD(v4);
  v10 = v9;
  v11 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  v20 = v8;
  v21 = v7;
  v18 = v6;
  v19 = v10;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v17, 2u);
    }

    *(v11 + 312) = v12;
    CIOnThreadCleanUpReset(v18);
    dropThreadId(v21, 1, add_explicit + 1);
    CICleanUpReset(v21, v19);
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    if (*(*(a1[1] + 307) + 16))
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = (*(*a1 + 224))(a1, 1);
    }

    v22 = 1;
    v15 = threadData[9 * v21 + 1] + 320 * v20;
    *(v15 + 312) = v12;
    v16 = *(v15 + 232);
    if (v16)
    {
      v16(*(v15 + 288));
    }

    dropThreadId(v21, 0, add_explicit + 1);
  }

  if ((v22 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  (*(*a1 + 216))(a1);
  return v14;
}

uint64_t dataMap<unsigned long long,true,true,false>::_data_map_commit(uint64_t *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 208))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v28 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v6 = v5;
  v7 = v4;
  v8 = HIDWORD(v4);
  v10 = v9;
  v11 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  LODWORD(v35[0]) = v7;
  *buf = v8;
  v26 = v6;
  v27 = v10;
  if (!_setjmp(v11))
  {
    v15 = *(*(a1[1] + 307) + 16);
    if (v15 == 1)
    {
      goto LABEL_13;
    }

    if (v15)
    {
      v17 = 0xFFFFFFFFLL;
      goto LABEL_18;
    }

    v16 = (*(*a1 + 224))(a1, 1);
    if (!v16)
    {
      v16 = (*(*a1 + 232))(a1, 1);
      if (!v16)
      {
LABEL_13:
        v16 = (*(*a1 + 56))(a1);
        if (!v16)
        {
          v16 = (*(*a1 + 64))(a1);
          if (!v16)
          {
            v16 = (*(*a1 + 72))(a1);
          }
        }
      }
    }

    v17 = v16;
LABEL_18:
    v28 = 1;
    v18 = threadData[9 * LODWORD(v35[0]) + 1] + 320 * *buf;
    *(v18 + 312) = v12;
    v19 = *(v18 + 232);
    if (v19)
    {
      v19(*(v18 + 288));
    }

    dropThreadId(LODWORD(v35[0]), 0, add_explicit + 1);
    v14 = v17;
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v25 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v25, 2u);
  }

  *(v11 + 312) = v12;
  CIOnThreadCleanUpReset(v26);
  dropThreadId(LODWORD(v35[0]), 1, add_explicit + 1);
  CICleanUpReset(LODWORD(v35[0]), v27);
  v14 = 0xFFFFFFFFLL;
LABEL_21:
  if ((v28 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  memset(v35, 0, sizeof(v35));
  v20 = *__error();
  v21 = _SILogForLogForCategory(7);
  v22 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = fd_name(*(a1[1] + 220), v35, 0x100uLL);
    v24 = (*(*a1 + 96))(a1);
    *buf = 136315650;
    v30 = v23;
    v31 = 2080;
    v32 = "commit";
    v33 = 2048;
    v34 = v24;
    _os_log_impl(&dword_1C278D000, v21, v22, "%s complete %s with count: %llu", buf, 0x20u);
  }

  *__error() = v20;
  (*(*a1 + 216))(a1);
  return v14;
}

BOOL dataMap<unsigned long long,true,true,false>::data_map_validate(uint64_t a1)
{
  v2 = (*(*a1 + 104))(a1);
  if (!v2)
  {
    (*(*a1 + 112))(a1);
  }

  return v2 == 0;
}

void dataMap<unsigned long long,true,true,false>::data_map_destroy(uint64_t a1)
{
  if (*(a1 + 8))
  {
    makeThreadId();
    v2 = *(a1 + 8);
    if ((*(v2 + 283) + 1) >= 2)
    {
      v75 = 0;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v15 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, v2, 0, add_explicit + 1);
      v17 = v16;
      v18 = v15;
      v19 = HIDWORD(v15);
      v21 = v20;
      v22 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
      v23 = *(v22 + 312);
      v24 = *(v22 + 224);
      if (v24)
      {
        v24(*(v22 + 288));
      }

      v73 = v19;
      v74 = v18;
      v71 = v17;
      v72 = v21;
      if (_setjmp(v22))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v70 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v70, 2u);
        }

        *(v22 + 312) = v23;
        CIOnThreadCleanUpReset(v71);
        dropThreadId(v74, 1, add_explicit + 1);
        CICleanUpReset(v74, v72);
        v25 = 0;
      }

      else
      {
        v55 = *(*(*(a1 + 8) + 283) + 88);
        v75 = 1;
        v56 = threadData[9 * v74 + 1] + 320 * v73;
        *(v56 + 312) = v23;
        v57 = *(v56 + 232);
        if (v57)
        {
          v57(*(v56 + 288));
        }

        dropThreadId(v74, 0, add_explicit + 1);
        v25 = v55;
      }

      v58 = v25;
      if ((v75 & 1) == 0)
      {
        v58 = *(*(a1 + 8) + 291);
      }

      munmap(*(*(a1 + 8) + 283), v58);
      v59 = *(a1 + 8);
      *(v59 + 283) = -1;
      fd_release(*(v59 + 220));
      v60 = *(a1 + 8);
      *(v60 + 220) = 0;
      v61 = *(v60 + 228);
      if (v61)
      {
        fd_release(v61);
        v62 = *(a1 + 8);
        *(v62 + 228) = 0;
        v63 = v62;
      }

      else
      {
        v63 = v60;
      }

      v54 = v63;
    }

    else
    {
      v3 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, v2, 0, v3 + 1);
      v6 = v5;
      v7 = v4;
      v8 = HIDWORD(v4);
      v10 = v9;
      v11 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
      v12 = *(v11 + 312);
      v13 = *(v11 + 224);
      if (v13)
      {
        v13(*(v11 + 288));
      }

      v73 = v8;
      v74 = v7;
      v71 = v6;
      v72 = v10;
      if (_setjmp(v11))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v70 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v70, 2u);
        }

        *(v11 + 312) = v12;
        CIOnThreadCleanUpReset(v71);
        dropThreadId(v74, 1, v3 + 1);
        CICleanUpReset(v74, v72);
      }

      else
      {
        v26 = *(a1 + 8);
        v27 = *(v26 + 307);
        if (v27 && !*(v27 + 16))
        {
          if (*(v26 + 274) == 1)
          {
            v28 = *(v26 + 363);
            v29 = 8 * *(v26 + 371);
            fd_system_status_stall_if_busy();
            msync(v28, v29, 4);
            _fd_unlink_with_origin(*(*(a1 + 8) + 236), 0);
            munmap(*(*(a1 + 8) + 363), *(*(a1 + 8) + 355));
            v30 = *(a1 + 8);
            *(v30 + 363) = -1;
            v26 = v30;
          }

          v31 = v26;
          if (*(v26 + 275) == 1)
          {
            v32 = *(v26 + 395);
            v33 = 24 * *(v26 + 403);
            fd_system_status_stall_if_busy();
            msync(v32, v33, 4);
            munmap(*(*(a1 + 8) + 395), *(*(a1 + 8) + 387));
            v34 = (*(a1 + 8) + 379);
            v34[2] = -1;
            fd_truncate(*v34, 24 * v34[3]);
            v31 = *(a1 + 8);
          }

          v35 = (v31 + 403);
          if (v35[7])
          {
            v36 = v35[9];
            v37 = v35[7];
            if (v36 + 1 >= 2)
            {
              v38 = 24 * *v35;
              fd_system_status_stall_if_busy();
              msync(v36, v38, 4);
              munmap(*(*(a1 + 8) + 475), *(*(a1 + 8) + 387));
              v39 = (*(a1 + 8) + 459);
              v39[2] = -1;
              v37 = *v39;
            }

            fd_truncate(v37, 0);
            _fd_unlink_with_origin(*(*(a1 + 8) + 459), 0);
            fd_release(*(*(a1 + 8) + 459));
            *(*(a1 + 8) + 459) = 0;
          }
        }

        v40 = threadData[9 * v74 + 1] + 320 * v73;
        *(v40 + 312) = v12;
        v41 = *(v40 + 232);
        if (v41)
        {
          v41(*(v40 + 288));
        }

        dropThreadId(v74, 0, v3 + 1);
      }

      v42 = *(a1 + 8);
      v43 = *(v42 + 307);
      if (v43)
      {
        free(v43);
        v44 = *(a1 + 8);
        *(v44 + 307) = 0;
        v42 = v44;
      }

      fd_release(*(v42 + 220));
      v45 = *(a1 + 8);
      *(v45 + 220) = 0;
      v46 = *(v45 + 395);
      if (v46 != -1)
      {
        munmap(v46, *(v45 + 387));
        v47 = *(a1 + 8);
        *(v47 + 387) = 0;
        *(v47 + 395) = -1;
        v45 = v47;
      }

      fd_release(*(v45 + 379));
      v48 = *(a1 + 8);
      *(v48 + 379) = 0;
      v49 = *(v48 + 323);
      if (v49)
      {
        CFRelease(v49);
        v48 = *(a1 + 8);
      }

      v50 = v48;
      v51 = (v48 + 355);
      v52 = v51[1];
      if (v52 != -1)
      {
        munmap(v52, *v51);
        v50 = *(a1 + 8);
        *(v50 + 355) = 0;
        *(v50 + 363) = -1;
      }

      fd_release(*(v50 + 236));
      v53 = *(a1 + 8);
      *(v53 + 236) = 0;
      v54 = v53;
    }

    v64 = *(v54 + 228);
    if (v64)
    {
      fd_release(v64);
      v65 = *(a1 + 8);
      *(v65 + 228) = 0;
      v54 = v65;
    }

    v66 = *(v54 + 264);
    v67 = v54;
    if (v66)
    {
      v68 = v66[2];
      if (v68)
      {
        CFRelease(v68);
      }

      free(v66);
      v69 = *(a1 + 8);
      *(v69 + 264) = 0;
      v67 = v69;
    }

    if ((v67[4].__opaque[12] & 1) == 0)
    {
      db_rwlock_destroy(v67);
      v67 = *(a1 + 8);
    }

    free(v67);
  }
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_init(uint64_t (***a1)(void, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v9[0] = a2;
  v9[1] = a3;
  v10 = a4;
  v11 = a5;
  return (**a1)(a1, v9, a3, a4, a5, a6, a7, a8);
}

uint64_t dataMap<unsigned long long,true,true,false>::data_map_init_with_ctx(uint64_t *a1, uint64_t a2)
{
  v148 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(*a2, sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v7 = v6;
  v8 = v5;
  v9 = HIDWORD(v5);
  v11 = v10;
  v12 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  *(v12 + 216) = 0;
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v127 = v9;
  v128 = v8;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", __str, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v7);
    dropThreadId(v8, 1, add_explicit + 1);
    CICleanUpReset(v8, v11);
    return 0;
  }

  v122 = add_explicit;
  v125 = v13;
  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  v19 = *(a2 + 20);
  bzero(__str, 0x400uLL);
  v20 = malloc_type_calloc(1uLL, 0x5F9uLL, 0x10A0040251D4789uLL);
  a1[1] = v20;
  *(v20 + 63) = *(a2 + 72);
  *(v20 + 451) = *(a2 + 24);
  *(v20 + 244) = *(a2 + 56);
  *(v20 + 65) = 0;
  v20[277] = BYTE1(v19) & 1;
  v20[276] = (v19 & 8) != 0;
  *(v20 + 283) = -1;
  *(v20 + 307) = 0;
  *(v20 + 395) = -1;
  *(v20 + 363) = -1;
  if ((v19 & 8) == 0)
  {
    *(v20 + 26) = 0;
    *(v20 + 11) = 0u;
    *(v20 + 12) = 0u;
    *(v20 + 9) = 0u;
    *(v20 + 10) = 0u;
    *(v20 + 7) = 0u;
    *(v20 + 8) = 0u;
    *(v20 + 5) = 0u;
    *(v20 + 6) = 0u;
    *(v20 + 3) = 0u;
    *(v20 + 4) = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 2) = 0u;
    *v20 = 0u;
    pthread_mutex_init(v20, 0);
    v20 = a1[1];
  }

  *(v20 + 467) = 0;
  *(v20 + 459) = 0;
  *(v20 + 475) = 0;
  v21 = (a1[1] + 475);
  *v21 = -1;
  v22 = *(a2 + 40);
  if (!v22)
  {
    v22 = si_get_contentindex_for_id;
  }

  *(v21 + 12) = v22;
  v23 = *(a2 + 48);
  if (!v23)
  {
    v23 = ContentIndexGetDataForId;
  }

  *(v21 + 20) = v23;
  makeThreadId();
  v124 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v24 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, v124 + 1);
  v26 = v25;
  v27 = v24;
  v28 = HIDWORD(v24);
  v30 = v29;
  v31 = threadData[9 * v24 + 1] + 320 * HIDWORD(v24);
  v123 = *(v31 + 312);
  v32 = *(v31 + 224);
  if (v32)
  {
    v32(*(v31 + 288));
  }

  *v129 = v27;
  v126 = v28;
  if (_setjmp(v31))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v31 + 312) = v123;
    CIOnThreadCleanUpReset(v26);
    dropThreadId(*v129, 1, v124 + 1);
    CICleanUpReset(*v129, v30);
    v33 = v125;
    v34 = v122;
    v108 = *__error();
    v109 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      v112 = fd_realpath(*(a1[1] + 220), __str);
      *&buf[4] = "data_map_init_with_ctx";
      v113 = "";
      *buf = 136315650;
      if (v112)
      {
        v113 = v112;
      }

      *&buf[12] = 1024;
      *&buf[14] = 1496;
      *&buf[18] = 2080;
      *&buf[20] = v113;
      _os_log_error_impl(&dword_1C278D000, v109, OS_LOG_TYPE_ERROR, "%s:%d: exception processing %s", buf, 0x1Cu);
    }

    *__error() = v108;
    goto LABEL_103;
  }

  if (!v17 || (v35 = strlen(v17), v16 == -1) || v35 - 241 <= 0xFFFFFFFFFFFFFF0FLL)
  {
    v45 = *__error();
    v46 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
LABEL_31:
      v44 = v45;
      v33 = v125;
      v34 = v122;
LABEL_91:
      *__error() = v44;
      goto LABEL_92;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1111;
    v92 = "%s:%d: param error";
    goto LABEL_67;
  }

  v121 = v19 & 2;
  if ((v19 & 2) != 0)
  {
    v36 = 0;
  }

  else
  {
    v36 = ((v19 & 1) << 10) | 0x20000202;
  }

  snprintf(__str, 0x400uLL, "%s.header", v17);
  v37 = fd_create_protected(v16, __str, v36, 3u);
  *(a1[1] + 220) = v37;
  *(a1[1] + 299) = fd_lseek(v37, 0, 2);
  snprintf(__str, 0x400uLL, "%s.offsets", v17);
  v38 = fd_create_protected(v16, __str, v36, 3u);
  *(a1[1] + 379) = v38;
  *(a1[1] + 331) = fd_lseek(v38, 0, 2);
  snprintf(__str, 0x400uLL, "%s.buckets", v17);
  v39 = fd_create_protected(v16, __str, 514, 3u);
  *(a1[1] + 236) = v39;
  v40 = fd_lseek(v39, 0, 2);
  v41 = a1[1];
  *(v41 + 347) = v40;
  if ((v19 & 1) == 0)
  {
    v34 = v122;
    if (*(v41 + 299) <= 0x53uLL)
    {
      v42 = *__error();
      v43 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v114 = *(a1[1] + 299);
        *buf = 136315650;
        *&buf[4] = "data_map_init_with_ctx";
        *&buf[12] = 1024;
        *&buf[14] = 1322;
        *&buf[18] = 2048;
        *&buf[20] = v114;
        _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, "%s:%d: invalid header size %ld", buf, 0x1Cu);
      }

      v44 = v42;
      v33 = v125;
      goto LABEL_91;
    }

    v63 = malloc_type_calloc(1uLL, 0x54uLL, 0x10000405C84B8F7uLL);
    v64 = a1[1];
    *(v64 + 307) = v63;
    v65 = (v19 >> 2) & 1;
    if ((v19 & 0x80) != 0)
    {
      sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v64 + 220), ".shadow", 0);
      v64 = a1[1];
      if (sibling_with_suffix_protected)
      {
        v67 = sibling_with_suffix_protected;
        v65 = (v19 >> 2) & 1;
        if (!fd_copyfile(sibling_with_suffix_protected, *(v64 + 220), 0))
        {
          v65 = 0;
        }

        fd_release(v67);
        v64 = a1[1];
      }
    }

    v33 = v125;
    if (fd_pread(*(v64 + 220), *(v64 + 307), 0x54uLL, 0) == 84)
    {
      v68 = (a1[1] + 307);
      v69 = *(*v68 + 28);
      v68[12] = v69;
      fd_truncate(v68[9], 24 * v69);
      fd_truncate(*(a1[1] + 379), *(a1[1] + 331));
      v70 = a1[1];
      v71 = (v70 + 307);
      v72 = *(v70 + 331);
      *(v70 + 339) = v72 / 0x18;
      v73 = *(v70 + 307);
      *(v70 + 371) = *(v73 + 20);
      *(v70 + 427) = *(v73 + 60);
      *(v70 + 443) = *(v73 + 76);
      *(v70 + 282) = *(v73 + 8) < 9u;
      if (v65)
      {
        v74 = *(v70 + 403);
        v75 = *(v73 + 52);
        if (v74 < v75)
        {
LABEL_92:
          v96 = 0;
          goto LABEL_93;
        }

        if (v74 != v75)
        {
          if ((v19 & 2) == 0)
          {
            *(v73 + 28) = v75;
            *(v73 + 20) = 0;
          }

          v71[12] = v75;
          v71[8] = 0;
        }
      }

      v76 = MEMORY[0x1E69E9AC8];
      v77 = (v72 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      if (v77 <= 0x100000)
      {
        v78 = 0x100000;
      }

      else
      {
        v78 = v77;
      }

      v79 = fd_mmap(v71[9], v78, v121 ^ 3u, 1, 0);
      v80 = a1[1];
      *(v80 + 395) = v79;
      if (v79 == -1)
      {
        v84 = *__error();
        v91 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_90;
        }

        *buf = 136315394;
        *&buf[4] = "data_map_init_with_ctx";
        *&buf[12] = 1024;
        *&buf[14] = 1398;
        v88 = "%s:%d: offset fd_mmap error";
      }

      else
      {
        *(v80 + 387) = v78;
        if (((*(v80 + 347) + *v76 - 1) & -*v76) <= 0x100000)
        {
          v81 = 0x100000;
        }

        else
        {
          v81 = (*(v80 + 347) + *v76 - 1) & -*v76;
        }

        v82 = fd_mmap(*(v80 + 236), v81, 3, 1, 0);
        v83 = a1[1];
        *(v83 + 363) = v82;
        if (v82 != -1)
        {
          v58 = v83;
          *(v83 + 355) = v81;
          v62 = (*(v83 + 307) + 28);
          if (*v62)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        v84 = *__error();
        v91 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_90;
        }

        *buf = 136315394;
        *&buf[4] = "data_map_init_with_ctx";
        *&buf[12] = 1024;
        *&buf[14] = 1407;
        v88 = "%s:%d: offset fd_mmap error";
      }
    }

    else
    {
      v84 = *__error();
      v91 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315394;
      *&buf[4] = "data_map_init_with_ctx";
      *&buf[12] = 1024;
      *&buf[14] = 1341;
      v88 = "%s:%d: header pread error";
    }

LABEL_88:
    v89 = v91;
    v90 = 18;
    goto LABEL_89;
  }

  v33 = v125;
  v34 = v122;
  if (fd_truncate(*(v41 + 220), 84) == -1)
  {
    v84 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1241;
    v88 = "%s:%d: fd_truncate error";
    goto LABEL_88;
  }

  v47 = malloc_type_calloc(1uLL, 0x54uLL, 0x10000405C84B8F7uLL);
  v48 = (a1[1] + 299);
  *v48 = 84;
  v48[1] = v47;
  v47[3] = v18;
  v47[4] = 0;
  *v47 = 0x4461746150EELL;
  v47[2] = 14;
  v49 = MEMORY[0x1E69E9AC8];
  if (fd_truncate(v48[10], 24 * (*MEMORY[0x1E69E9AC8] / 0x18uLL)) == -1)
  {
    v84 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1267;
    v88 = "%s:%d: fd_truncate error";
    goto LABEL_88;
  }

  v50 = fd_mmap(*(a1[1] + 379), 0x100000, v121 ^ 3u, 1, 0);
  v51 = a1[1];
  *(v51 + 395) = v50;
  if (v50 == -1)
  {
    v84 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1272;
    v88 = "%s:%d: offsets fd_mmap error";
    goto LABEL_88;
  }

  *(v51 + 387) = 0x100000;
  v52 = *v49;
  v53 = *v49 / 0x18uLL;
  *(v51 + 331) = 24 * v53;
  *(v51 + 339) = v53;
  v54 = v52 & 0xFFFFFFFFFFFFFFF8;
  if (fd_truncate(*(v51 + 236), v52 & 0xFFFFFFFFFFFFFFF8) == -1)
  {
    v84 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1282;
    v88 = "%s:%d: fd_truncate error";
    goto LABEL_88;
  }

  v55 = fd_mmap(*(a1[1] + 236), 0x100000, v121 ^ 3u, 1, 0);
  v56 = a1[1];
  v57 = (v56 + 307);
  *(v56 + 363) = v55;
  if (v55 == -1)
  {
    v84 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1288;
    v88 = "%s:%d: hash fd_mmap error";
    goto LABEL_88;
  }

  v58 = v56;
  *(v56 + 347) = v54;
  *(v56 + 355) = 0x100000;
  v59 = *v49 >> 3;
  v60 = *v57;
  *(v60 + 20) = v59;
  v57[8] = v59;
  v61 = v57[11];
  *v61 = 0;
  v61[2] = 0;
  v62 = (v60 + 28);
LABEL_59:
  *v62 = 1;
  *(v58 + 403) = 1;
LABEL_60:
  if (*(v58 + 339) < *(v58 + 403))
  {
    v84 = *__error();
    v85 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      v86 = *(a1[1] + 339);
      v87 = *(a1[1] + 403);
      *buf = 136315906;
      *&buf[4] = "data_map_init_with_ctx";
      *&buf[12] = 1024;
      *&buf[14] = 1431;
      *&buf[18] = 2048;
      *&buf[20] = v86;
      *&buf[28] = 2048;
      *&buf[30] = v87;
      v88 = "%s:%d: invalid offset size 1 - %ld %llu";
LABEL_63:
      v89 = v85;
      v90 = 38;
LABEL_89:
      _os_log_error_impl(&dword_1C278D000, v89, OS_LOG_TYPE_ERROR, v88, buf, v90);
    }

LABEL_90:
    v44 = v84;
    goto LABEL_91;
  }

  v93 = *(v58 + 307);
  if (*v93 != 0x4461746150EELL)
  {
    v84 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1440;
    v88 = "%s:%d: invalid offset signature";
    goto LABEL_88;
  }

  v94 = *(v93 + 8);
  if (v94 <= 0xD)
  {
    v84 = *__error();
    v95 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "data_map_init_with_ctx";
      *&buf[12] = 1024;
      *&buf[14] = 1450;
      *&buf[18] = 1024;
      *&buf[20] = v94;
      v88 = "%s:%d: invalid version %d";
      v89 = v95;
      v90 = 24;
      goto LABEL_89;
    }

    goto LABEL_90;
  }

  if (*(v93 + 12) != v18)
  {
    v84 = *__error();
    v116 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    v117 = *(*(a1[1] + 307) + 12);
    *buf = 136315906;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1454;
    *&buf[18] = 1024;
    *&buf[20] = v117;
    *&buf[24] = 1024;
    *&buf[26] = v18;
    v88 = "%s:%d: invalid extra_size %d %d";
    v89 = v116;
    v90 = 30;
    goto LABEL_89;
  }

  *(v58 + 216) = v18;
  if (*(v58 + 299) <= 0x53uLL)
  {
    v84 = *__error();
    v85 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    v115 = *(a1[1] + 299);
    *buf = 136315906;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1462;
    *&buf[18] = 2048;
    *&buf[20] = v115;
    *&buf[28] = 2048;
    *&buf[30] = 84;
    v88 = "%s:%d: invalid header size %llu < %lu";
    goto LABEL_63;
  }

  if ((v19 & 0x80) != 0 || !*(v93 + 16) || (v118 = *(v58 + 371)) == 0 || *(v58 + 347) < (8 * v118))
  {
    if (dataMap<unsigned long long,true,true,false>::_data_map_rehash(a1))
    {
      v119 = *(a1[1] + 347);
      v120 = 8 * *(a1[1] + 371);
      goto LABEL_122;
    }

    v45 = *__error();
    v46 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1475;
    v92 = "%s:%d: re-build hash error";
LABEL_67:
    _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, v92, buf, 0x12u);
    goto LABEL_31;
  }

  v120 = 8 * v118;
  v119 = *(v58 + 347);
LABEL_122:
  if (v119 < v120)
  {
    v45 = *__error();
    v46 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 136315394;
    *&buf[4] = "data_map_init_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 1482;
    v92 = "%s:%d: invalid hash size 1";
    goto LABEL_67;
  }

  v96 = 1;
  v33 = v125;
  v34 = v122;
LABEL_93:
  v97 = threadData[9 * *v129 + 1] + 320 * v126;
  *(v97 + 312) = v123;
  v98 = *(v97 + 232);
  if (v98)
  {
    v98(*(v97 + 288));
  }

  dropThreadId(*v129, 0, v124 + 1);
  if (v96)
  {
    v99 = a1[1];
    if (v99)
    {
      v100 = (v99 + 403);
      v101 = *v100 - 1;
      v100[1] = v101;
      v100[2] = v101;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      v102 = *__error();
      v103 = _SILogForLogForCategory(7);
      v104 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v103, v104))
      {
        v105 = fd_name(*(a1[1] + 220), buf, 0x100uLL);
        v106 = (*(*a1 + 96))(a1);
        *v129 = 136315394;
        v130 = v105;
        v131 = 2048;
        v132 = v106;
        _os_log_impl(&dword_1C278D000, v103, v104, "Opened map %s with counts: %llu", v129, 0x16u);
      }

      *__error() = v102;
    }

    v107 = 1;
    goto LABEL_104;
  }

LABEL_103:
  (*(*a1 + 16))(a1);
  a1[1] = 0;
  v107 = 0;
LABEL_104:
  v110 = threadData[9 * v128 + 1] + 320 * v127;
  *(v110 + 312) = v33;
  v111 = *(v110 + 232);
  if (v111)
  {
    v111(*(v110 + 288));
  }

  dropThreadId(v128, 0, v34 + 1);
  return v107;
}