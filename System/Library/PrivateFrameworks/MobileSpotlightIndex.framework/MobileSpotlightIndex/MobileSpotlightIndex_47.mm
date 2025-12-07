char *dataMap<unsigned long long,false,true,false>::data_map_insert_with_id(uint64_t *a1, unsigned __int8 *a2, size_t a3, char *a4)
{
  v62 = 0;
  v8 = a1[1];
  v9 = dataMap<unsigned long long,false,true,false>::dm_hash(*(v8 + 282), &a2[*(v8 + 216)], a3 - *(v8 + 216));
  v10 = *(v8 + 256);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  v53 = a4;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v12 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v14 = v13;
  v15 = v12;
  v16 = HIDWORD(v12);
  v18 = v17;
  v19 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
  v52 = *(v19 + 312);
  v20 = *(v19 + 224);
  if (v20)
  {
    v20(*(v19 + 288));
  }

  v60 = v16;
  v61 = v15;
  v58 = v14;
  v59 = v18;
  if (!_setjmp(v19))
  {
    bucket_entry = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
    *buf = 0;
    v56 = 0;
    v57 = 0;
    if (bucket_entry)
    {
      v21 = *bucket_entry;
      if (*bucket_entry)
      {
LABEL_24:
        v26 = threadData[9 * v61 + 1] + 320 * v60;
        *(v26 + 312) = v52;
        v27 = *(v26 + 232);
        if (v27)
        {
          v27(*(v26 + 288));
        }

        dropThreadId(v61, 0, add_explicit + 1);
        goto LABEL_27;
      }

      v23 = bucket_entry;
      *buf = a3;
      v56 = a2;
      (*(*a1 + 112))(a1);
      if ((*(*a1 + 336))(a1))
      {
LABEL_12:
        v21 = 0;
        goto LABEL_24;
      }

      if (!*v23 && *(a1[1] + 256) <= v10)
      {
LABEL_17:
        if (a3 >> 28)
        {
          v28 = 5;
        }

        else if (a3 >> 21)
        {
          v28 = 4;
        }

        else
        {
          if (!(a3 >> 14))
          {
            if (a3 < 0x80)
            {
              v25 = 1;
            }

            else
            {
              v25 = 2;
            }

            goto LABEL_32;
          }

          v28 = 3;
        }

        v25 = v28;
LABEL_32:
        v29 = *(a1[1] + 4539);
        if (dataMap<unsigned long long,false,true,false>::_data_map_grow(a1, (v25 + a3), &v62))
        {
          v30 = (v29 <= v53 ? v53 : v29);
          if (dataMap<unsigned long long,false,true,false>::_data_map_grow_offsets(a1, &v62, v30))
          {
            v31 = a1[1];
            if ((*(v31 + 275) & 1) == 0)
            {
              dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
              v31 = a1[1];
              *(v31 + 275) = 1;
            }

            v32 = (*(v31 + 4531) + 16 * v53);
            *v32 = *(v31 + 331);
            v32[1] = v9;
            if ((*(v31 + 273) & 1) == 0)
            {
              dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
              v31 = a1[1];
              *(v31 + 273) = 1;
            }

            *v32 = data_entry_store<unsigned long long,false,true,false>(v31 + 315, buf);
            v33 = a1[1];
            if ((*(v33 + 274) & 1) == 0)
            {
              dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
              v34 = a1[1];
              *(v34 + 274) = 1;
              v33 = v34;
            }

            v35 = v33;
            if ((v62 & 4) != 0)
            {
              v36 = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v9, v53, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
              v35 = a1[1];
              v23 = v36;
            }

            v37 = v35 + 4096;
            *v23 = v53;
            v38 = *(v35 + 4547);
            if (v38 < v53)
            {
              *(v35 + 4547) = v53;
              v38 = v53;
            }

            v39 = v38;
            v40 = *(v37 + 459) + 1;
            *(v37 + 459) = v40;
            if (v39 < v40)
            {
              v41 = __si_assert_copy_extra_332();
              v49 = v41;
              v50 = "";
              if (v41)
              {
                v50 = v41;
              }

              __message_assert_336(v41, v42, v43, v44, v45, v46, v47, v48, "dataMap.ipp", 3672, "data_map->max_id >= data_map->count", v50);
              free(v49);
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

            if (v39 == v40)
            {
              *(v37 + 443) = v39 + 1;
            }

            v21 = v53;
            goto LABEL_24;
          }
        }

        goto LABEL_12;
      }

      v24 = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
      if (v24)
      {
        v21 = *v24;
        v23 = v24;
        if (*v24)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

    v21 = 0;
    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v19 + 312) = v52;
  CIOnThreadCleanUpReset(v58);
  dropThreadId(v61, 1, add_explicit + 1);
  CICleanUpReset(v61, v59);
  v21 = 0;
LABEL_27:
  (*(*a1 + 112))(a1);
  return v21;
}

uint64_t dataMap<unsigned long long,false,true,false>::dm_hash(char a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a1)
  {
    LODWORD(result) = LegacyHash(a2, a3);
  }

  else
  {
    LODWORD(result) = commonHash(a3, a2);
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(uint64_t a1, unint64_t a2, char *a3, const void *a4, size_t a5, unint64_t a6)
{
  v83 = *MEMORY[0x1E69E9840];
  v50 = a6;
  if (a3 >= a6)
  {
    if (a3)
    {
      v81 = 0u;
      v82 = 0u;
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
      v39 = *__error();
      v35 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      v36 = *(a1 + 8);
      v37 = fd_name(*(v36 + 220), &v67, 0x100uLL);
      *buf = 136316418;
      v56 = "_data_map_get_bucket_entry";
      v57 = 1024;
      v58 = 514;
      v59 = 2048;
      v60 = a3;
      v61 = 2048;
      v62 = v50;
      v63 = 2048;
      v64 = v36;
      v65 = 2080;
      v66 = v37;
      v38 = v35;
      goto LABEL_44;
    }

    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(*(a1 + 8) + 4507);
  v12 = a2 % v11;
  v49 = v11;
  do
  {
    if (v12 < v11)
    {
      v13 = v12;
      while (1)
      {
        v14 = *(a1 + 8);
        v15 = *(v14 + 4499);
        v16 = *(v15 + 8 * v13);
        if (v16)
        {
          v17 = v16 == a3;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          return v15 + 8 * v13;
        }

        if (!a3)
        {
          v18 = *(v14 + 4531);
          if (v16 >= a6 || (v18 + 1) <= 1)
          {
            v81 = 0u;
            v82 = 0u;
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
            v39 = *__error();
            v40 = _SILogForLogForCategory(0);
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
LABEL_41:
              v42 = __error();
              result = 0;
              *v42 = v39;
              return result;
            }

            v43 = *(a1 + 8);
            v44 = fd_name(*(v43 + 220), &v67, 0x100uLL);
            *buf = 136316418;
            v56 = "_data_map_get_offset_entry_impl";
            v57 = 1024;
            v58 = 362;
            v59 = 2048;
            v60 = v16;
            v61 = 2048;
            v62 = v50;
            v63 = 2048;
            v64 = v43;
            v65 = 2080;
            v66 = v44;
            v38 = v40;
LABEL_44:
            _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
            goto LABEL_41;
          }

          v20 = (v18 + 16 * v16);
          v21 = *v20;
          if (*v20 == 1)
          {
            return 0;
          }

          if (v20[1] == a2)
          {
            v51 = 0;
            __s2 = 0;
            v53 = 0;
            v54 = 0;
            v22 = *(v14 + 5619) + v21;
            if (v22 >= *(v14 + 331))
            {
              v81 = 0u;
              v82 = 0u;
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
              v23 = *__error();
              v29 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v32 = *(a1 + 8);
                v45 = *(v32 + 331);
                v46 = v32;
                v33 = fd_name(*(v32 + 220), &v67, 0x100uLL);
                *buf = 136316418;
                v56 = "_data_map_get_data_entry";
                v57 = 1024;
                v58 = 397;
                v59 = 2048;
                v60 = v22;
                v61 = 2048;
                v62 = v45;
                v63 = 2048;
                v64 = v46;
                v65 = 2080;
                v66 = v33;
                v27 = v29;
                v28 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_31:
                _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0x3Au);
              }

LABEL_22:
              *__error() = v23;
              v9 = 1;
LABEL_23:
              a6 = v50;
              goto LABEL_24;
            }

            dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v22, &v51, &v54);
            if (v54 == 1)
            {
              v81 = 0u;
              v82 = 0u;
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
              v23 = *__error();
              v24 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = fd_name(*(*(a1 + 8) + 220), &v67, 0x100uLL);
                v26 = *(*(a1 + 8) + 331);
                *buf = 136316418;
                v56 = "_data_map_get_data_entry";
                v57 = 1024;
                v58 = 393;
                v59 = 2080;
                v60 = v25;
                v61 = 2048;
                v62 = v22;
                v63 = 2048;
                v64 = v26;
                v65 = 2048;
                v66 = v51;
                v27 = v24;
                v28 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
                goto LABEL_31;
              }

              goto LABEL_22;
            }

            if (v51 != a5)
            {
              goto LABEL_23;
            }

            v31 = memcmp(a4, __s2, a5);
            a6 = v50;
            if (!v31)
            {
              return v15 + 8 * v13;
            }
          }
        }

LABEL_24:
        ++v13;
        v30 = v9;
        if ((v9 & 1) != 0 || v13 >= v11)
        {
          goto LABEL_33;
        }
      }
    }

    v30 = 0;
    v13 = v12;
LABEL_33:
    if (v10 & 1 | (v13 != v49))
    {
      return 0;
    }

    result = 0;
    v10 = 1;
    v11 = v12;
    v12 = 0;
  }

  while ((v30 & 1) == 0);
  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_grow(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = dataMap<unsigned long long,false,true,false>::_data_map_grow_offsets(a1, a3, *(*(a1 + 8) + 4539));
  v7 = *(a1 + 8);
  if (!v6 || *(v7 + 278))
  {
    goto LABEL_3;
  }

  v10 = *(v7 + 4539) - *(v7 + 4563);
  if (v10 >= 2 * *(v7 + 4507) / 3uLL || v10 < 2 * *(v7 + 4571))
  {
    v11 = dataMap<unsigned long long,false,true,false>::_data_map_rehash(a1);
    v7 = *(a1 + 8);
    if (!v11)
    {
      goto LABEL_3;
    }

    *a3 |= 4u;
  }

  v12 = a2 + *(v7 + 331) + 8;
  if (v12 <= *(v7 + 323))
  {
    return 1;
  }

  if (_storageWindowsSetFileSize((v7 + 315), (v12 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]))
  {
    *a3 |= 1u;
    return 1;
  }

  v7 = *(a1 + 8);
LABEL_3:
  v8 = (v7 + 278);
  result = 0;
  if (!*v8)
  {
    *v8 = 1;
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_grow_offsets(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (*(v3 + 278))
  {
    goto LABEL_2;
  }

  v6 = (v3 + 4475);
  if (*v6 > a3)
  {
    return 1;
  }

  v9 = (*MEMORY[0x1E69E9AC8] + 16 * a3 + 15) & -*MEMORY[0x1E69E9AC8];
  v10 = fd_truncate(v6[5], v9);
  v3 = *(a1 + 8);
  if (v10 != -1)
  {
    *(v3 + 4467) = v9;
    v11 = *(v3 + 4523);
    if (v9 <= v11)
    {
LABEL_9:
      *(v3 + 4475) = v9 >> 4;
      *a2 |= 2u;
      return 1;
    }

    v12 = 2 * v11;
    munmap(*(v3 + 4531), v11);
    v13 = *(a1 + 8);
    *(v13 + 4523) = 0;
    v14 = fd_mmap(*(v13 + 4515), v12, 3, 1, 0);
    v3 = *(a1 + 8);
    *(v3 + 4531) = v14;
    if (v14 != -1)
    {
      *(v3 + 4523) = v12;
      goto LABEL_9;
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

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_dirty(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 307);
  if (*(v2 + 16))
  {
    v3 = result;
    *(v2 + 16) = 0;
    fd_pwrite(*(v1 + 220), v2, 0x5CuLL, 0);
    v4 = *(*(v3 + 8) + 220);

    return fd_sync(v4, 0);
  }

  return result;
}

unint64_t data_entry_store<unsigned long long,false,true,false>(uint64_t a1, unsigned int *a2)
{
  if (*a2 < 0x80)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (*a2 >> 14)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (*a2 >> 21)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  if (*a2 >> 28)
  {
    v7 = 5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 + *a2;
  v9 = *(a1 + 16);
  v10 = v9 + v8;
  if (v9 + v8 < *(a1 + 8))
  {
    goto LABEL_14;
  }

  if (_storageWindowsExpandBacking(a1, v8))
  {
    v9 = *(a1 + 16);
    v10 = v9 + v8;
LABEL_14:
    *(a1 + 16) = v10;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  v11 = _windowsResolvePtr(a1, v9, v8);
  v12 = *a2;
  v13 = *a2 >> 28;
  if (v13)
  {
    *v11 = v12 | 0x80;
    v11[1] = (v12 >> 7) | 0x80;
    v11[2] = (v12 >> 14) | 0x80;
    v11[3] = (v12 >> 21) | 0x80;
    v11[4] = v13;
    v14 = 5;
  }

  else if (v12 >= 0x200000)
  {
    *v11 = v12 | 0x80;
    v11[1] = (v12 >> 7) | 0x80;
    v11[2] = (v12 >> 14) | 0x80;
    v11[3] = v12 >> 21;
    v14 = 4;
  }

  else if (v12 >= 0x4000)
  {
    *v11 = v12 | 0x80;
    v11[1] = (v12 >> 7) | 0x80;
    v11[2] = v12 >> 14;
    v14 = 3;
  }

  else if (v12 >= 0x80)
  {
    *v11 = v12 | 0x80;
    v11[1] = v12 >> 7;
    v14 = 2;
  }

  else
  {
    *v11 = v12;
    v14 = 1;
  }

  memcpy(&v11[v14], *(a2 + 1), *a2);
  return v9;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_rehash(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  *(v2 + 4571) = 0;
  v3 = *(v2 + 4539) - *(v2 + 4563);
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  v6 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 4539);
    v9 = *(v7 + 4563);
    v10 = *(v7 + 4507);
    *buf = 134219008;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    *&buf[24] = 1024;
    *&buf[26] = v3;
    *&buf[30] = 1024;
    LODWORD(v52) = v10;
    _os_log_impl(&dword_1C278D000, v5, v6, "rehash new %p max id: %d deletes: %d count: %d hash_size: %d", buf, 0x24u);
  }

  *__error() = v4;
  v11 = *(a1 + 8);
  v12 = *(v11 + 4499);
  v13 = 8 * *(v11 + 4507);
  fd_system_status_stall_if_busy();
  msync(v12, v13, 4);
  if (fd_truncate(*(*(a1 + 8) + 236), 0) == -1)
  {
    goto LABEL_26;
  }

  v14 = 2 * v3;
  if ((2 * v3) <= *MEMORY[0x1E69E9AC8] >> 3)
  {
    v14 = *MEMORY[0x1E69E9AC8] >> 3;
  }

  v15 = *(a1 + 8);
  *(v15 + 4507) = v14;
  v16 = 8 * v14;
  if (fd_truncate(*(v15 + 236), 8 * v14) == -1)
  {
    goto LABEL_26;
  }

  v17 = *(a1 + 8);
  if ((*(v17 + 274) & 1) == 0)
  {
    dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
    v17 = *(a1 + 8);
    *(v17 + 274) = 1;
  }

  *(v17 + 4483) = v16;
  v18 = *(v17 + 4491);
  if (v16 > v18)
  {
    v19 = v17 + 4096;
    v20 = v18;
    do
    {
      v21 = v20;
      v20 *= 2;
    }

    while (v21 < v16);
    munmap(*(v19 + 403), v18);
    v22 = *(a1 + 8);
    *(v22 + 4491) = 0;
    *(v22 + 4499) = -1;
    v23 = fd_mmap(*(v22 + 236), v21, 3, 1, 0);
    v17 = *(a1 + 8);
    *(v17 + 4499) = v23;
    if (v23 == -1)
    {
      goto LABEL_26;
    }

    *(v17 + 4491) = v21;
  }

  ++*(v17 + 256);
  v24 = *(v17 + 4539);
  if (v24 < 2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 1;
  while (1)
  {
    v27 = *(v17 + 4531);
    if ((v27 + 1) <= 1)
    {
      break;
    }

    v28 = v27 + v25;
    if (*(v28 + 16) != 1)
    {
      bucket_entry = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, *(v28 + 24), v26, 0, 0, v24);
      if (!bucket_entry || *bucket_entry)
      {
        goto LABEL_26;
      }

      *bucket_entry = v26;
      v17 = *(a1 + 8);
    }

    ++v26;
    v24 = *(v17 + 4539);
    v25 += 16;
    if (v26 >= v24)
    {
      return 1;
    }
  }

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
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  memset(buf, 0, sizeof(buf));
  v31 = *__error();
  v32 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v37 = *(a1 + 8);
    v38 = fd_name(*(v37 + 220), buf, 0x100uLL);
    v39 = 136316418;
    v40 = "_data_map_get_offset_entry_impl";
    v41 = 1024;
    v42 = 362;
    v43 = 2048;
    v44 = v26;
    v45 = 2048;
    v46 = v24;
    v47 = 2048;
    v48 = v37;
    v49 = 2080;
    v50 = v38;
    _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v39, 0x3Au);
  }

  *__error() = v31;
LABEL_26:
  v33 = *__error();
  v34 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v36 = *(a1 + 8);
    *buf = 136315650;
    *&buf[4] = "_data_map_rehash";
    *&buf[12] = 1024;
    *&buf[14] = 645;
    *&buf[18] = 2048;
    *&buf[20] = v36;
    _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: re-build hash error %p", buf, 0x1Cu);
  }

  v35 = __error();
  result = 0;
  *v35 = v33;
  return result;
}

unint64_t dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(uint64_t a1, unint64_t a2, unsigned int *a3, _BYTE *a4)
{
  v8 = _windowsResolvePtr(*(a1 + 8) + 315, a2, 4);
  v9 = *(a1 + 8);
  v10 = *v8;
  if ((v10 & 0x80) == 0)
  {
    v11 = 1;
    goto LABEL_8;
  }

  v12 = *(v9 + 331);
  if (v12 <= 1)
  {
    goto LABEL_7;
  }

  v13 = v8[1];
  if ((v8[1] & 0x80000000) == 0)
  {
    v10 = v10 & 0x7F | (v13 << 7);
    v11 = 2;
    goto LABEL_8;
  }

  if (v12 == 2)
  {
    goto LABEL_7;
  }

  v15 = v8[2];
  if ((v8[2] & 0x80000000) == 0)
  {
    v11 = 3;
    v10 = ((v13 & 0x7F) << 7) | (v15 << 14) | v10 & 0x7F;
    goto LABEL_8;
  }

  if (v12 <= 3)
  {
    goto LABEL_7;
  }

  v16 = v8[3];
  if (v8[3] < 0)
  {
    if (v12 != 4)
    {
      v18 = v8[4];
      if (v18 < 0)
      {
        if (__valid_fs(-1))
        {
          v19 = __si_assert_copy_extra_332();
          v20 = v19;
          v21 = "";
          if (v19)
          {
            v21 = v19;
          }

          si_analytics_log_2752("%s:%u: failed assertion '%s' %s readVInt32_boundschecked: exceeds max size for uint32_t", "VIntUtils.h", 389, "(b4 & 0x80) == 0", v21);
          free(v20);
          v22 = 2816;
        }

        else
        {
          v22 = 3072;
        }

        *v22 = -559038737;
        abort();
      }

      v17 = ((v16 & 0x7F) << 21) | (v18 << 28) | ((v15 & 0x7F) << 14) | ((v13 & 0x7F) << 7) | v10 & 0x7F;
      v11 = 5;
      goto LABEL_19;
    }

LABEL_7:
    v11 = 0;
    v10 = 0;
    *a4 = 1;
    goto LABEL_8;
  }

  v17 = ((v15 & 0x7F) << 14) | (v16 << 21) | ((v13 & 0x7F) << 7) | v10 & 0x7F;
  v11 = 4;
LABEL_19:
  v10 = v17;
LABEL_8:
  *a3 = v10;
  result = _windowsResolvePtr(v9 + 315, a2, v11 + v10);
  if (v11 + *a3 <= *(*(a1 + 8) + 331))
  {
    *(a3 + 1) = result + v11;
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_get_data_for_offset_locked(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v5 = *(a1 + 8);
  v6 = *(v5 + 5619) + a2;
  if (v6 >= *(v5 + 331))
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 8);
      v17 = *(v16 + 331);
      v18 = fd_name(*(v16 + 220), &v35, 0x100uLL);
      *buf = 136316418;
      v24 = "_data_map_get_data_entry";
      v25 = 1024;
      v26 = 397;
      v27 = 2048;
      v28 = v6;
      v29 = 2048;
      v30 = v17;
      v31 = 2048;
      v32 = v16;
      v33 = 2080;
      v34 = v18;
      v12 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      goto LABEL_11;
    }

LABEL_6:
    v13 = __error();
    result = 0;
    *v13 = v8;
    return result;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v6, &v19, &v22);
  if (v22 == 1)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = fd_name(*(*(a1 + 8) + 220), &v35, 0x100uLL);
      v11 = *(*(a1 + 8) + 331);
      *buf = 136316418;
      v24 = "_data_map_get_data_entry";
      v25 = 1024;
      v26 = 393;
      v27 = 2080;
      v28 = v10;
      v29 = 2048;
      v30 = v6;
      v31 = 2048;
      v32 = v11;
      v33 = 2048;
      v34 = v19;
      v12 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_11:
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, v12, buf, 0x3Au);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v15 = *(*(a1 + 8) + 216);
  if (a4)
  {
    *a4 = v19 - v15;
  }

  return v20 + v15;
}

BOOL dataMap<unsigned long long,false,true,false>::data_map_is_empty(void *a1)
{
  memset(&v8, 0, sizeof(v8));
  if (fd_stat(*(a1[1] + 236), &v8))
  {
    v2 = 1;
  }

  else
  {
    v2 = v8.st_size == 0;
  }

  if (!v2)
  {
    return 0;
  }

  if (!fd_stat(*(a1[1] + 220), &v8) && v8.st_size != 0)
  {
    return 0;
  }

  if (!fd_stat(*(a1[1] + 4515), &v8) && v8.st_size != 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 272))(a1);
  return fd_stat(v5, &v8) || v8.st_size == 0;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_mprotect_storage(uint64_t a1, int a2)
{
  _windowsResolvePtr(*(a1 + 8) + 315, 4uLL, 4);
  storageWindowsProtect(*(a1 + 8) + 315, a2);
  return 0;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_garbage_collect_complete(int a1, int a2, uint64_t a3, const char *a4, const char *a5)
{
  _rename_prefix_suffix(a2, a4 + 268, ".offsets", a4, a5);
  _rename_prefix_suffix(a2, a4 + 268, ".data", v7, v8);

  return _rename_prefix_suffix(a2, a4 + 268, ".header", v9, v10);
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_defer_block(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 4587);
  if (v3)
  {
    return v3(*(v2 + 244), a2);
  }

  else
  {
    return (*(a2 + 16))(a2);
  }
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_get_data_offset_locked(uint64_t a1, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(v4 + 4539);
  v6 = *(v4 + 4531);
  if (v5 > a2 && (v6 + 1) > 1)
  {
    v10 = *(v6 + 16 * a2);
    if (v10 == 1)
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
      v23 = v5;
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_clone_files(uint64_t a1, const char *a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v13 = 0;
  v6 = *(*(a1 + 8) + 277);
  asprintf(&v13, "%s%s", a2, ".buckets");
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  sibling_protected = fd_create_sibling_protected(*(*(a1 + 8) + 236), v13, 514, v7);
  *a3 = sibling_protected;
  if (sibling_protected)
  {
    fd_copyfile(*(*(a1 + 8) + 236), sibling_protected, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".header");
  v9 = fd_create_sibling_protected(*(*(a1 + 8) + 220), v13, 514, v7);
  *(a3 + 24) = v9;
  if (v9)
  {
    fd_copyfile(*(*(a1 + 8) + 220), v9, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".offsets");
  v10 = fd_create_sibling_protected(*(*(a1 + 8) + 4515), v13, 514, v7);
  *(a3 + 8) = v10;
  if (v10)
  {
    fd_copyfile(*(*(a1 + 8) + 4515), v10, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".data");
  v11 = fd_create_sibling_protected(*(*(a1 + 8) + 315), v13, 514, v7);
  *(a3 + 16) = v11;
  if (v11)
  {
    fd_copyfile(*(*(a1 + 8) + 315), v11, 1);
  }

  free(v13);
  return 0;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_wrlock(uint64_t a1)
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

void *dataMap<unsigned long long,false,true,false>::data_map_copy_deleted_ids(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = v1 + 4096;
  if (!*(v2 + 467))
  {
    return 0;
  }

  v4 = *(v2 + 443);
  v5 = bit_vector_create(v4);
  if (v4 >= 2)
  {
    v6 = 1;
    v7 = 16;
    do
    {
      v8 = *(a1 + 8);
      v9 = *(v8 + 4539);
      v10 = *(v8 + 4531);
      if (v6 < v9 && (v10 + 1) > 1)
      {
        if (*(v10 + v7) != 1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        memset(v29, 0, sizeof(v29));
        v12 = *__error();
        v13 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 8);
          v15 = fd_name(*(v14 + 220), v29, 0x100uLL);
          *buf = 136316418;
          v18 = "_data_map_get_offset_entry_impl";
          v19 = 1024;
          v20 = 362;
          v21 = 2048;
          v22 = v6;
          v23 = 2048;
          v24 = v9;
          v25 = 2048;
          v26 = v14;
          v27 = 2080;
          v28 = v15;
          _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        *__error() = v12;
      }

      bit_vector_set(v5, v6);
LABEL_13:
      ++v6;
      v7 += 16;
    }

    while (v4 != v6);
  }

  return v5;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_garbage_collect(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  v120 = *MEMORY[0x1E69E9840];
  if (!*(a1[1] + 264))
  {
    return 0;
  }

  (*(*a1 + 336))(a1);
  v8 = *(a1[1] + 264);
  if ((*(*a1 + 96))(a1) <= a2)
  {
    goto LABEL_10;
  }

  v9 = (*(*a1 + 96))(a1);
  if (v9 <= a2)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v121.length = *(a1[1] + 4539) - a2;
  v121.location = a2;
  FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(*(v8 + 16), v121, 0);
  if (FirstIndexOfBit < a2)
  {
    goto LABEL_10;
  }

  v12 = FirstIndexOfBit;
  if (FirstIndexOfBit >= *(a1[1] + 4539) || FirstIndexOfBit > v10)
  {
    goto LABEL_10;
  }

  v89 = a3;
  v16 = 16 * FirstIndexOfBit;
  v17 = v10 + 1;
  while (1)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_80:
      v71 = __si_assert_copy_extra_332();
      v79 = v71;
      v80 = "";
      if (v71)
      {
        v80 = v71;
      }

      __message_assert_336(v71, v72, v73, v74, v75, v76, v77, v78, "bit_vector.h", 109, "bitIndex >= 0", v80);
      free(v79);
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

    if (*v8 > v12 && CFBitVectorGetBitAtIndex(*(v8 + 16), v12))
    {
      goto LABEL_23;
    }

    v18 = a1[1];
    v19 = *(v18 + 4531);
    v20 = *(v18 + 4539);
    if (v12 < v20 && (v19 + 1) > 1)
    {
      break;
    }

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    memset(v106, 0, sizeof(v106));
    v22 = *__error();
    v23 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v32 = a1[1];
      v33 = fd_name(*(v32 + 220), v106, 0x100uLL);
      *buf = 136316418;
      v95 = "_data_map_get_offset_entry_impl";
      v96 = 1024;
      v97 = 362;
      v98 = 2048;
      v99 = v12;
      v100 = 2048;
      v101 = v20;
      v102 = 2048;
      v103 = v32;
      v104 = 2080;
      v105 = v33;
      v30 = v23;
      v31 = "%s:%d: invalid data id %llu max %llu %p %s";
      goto LABEL_31;
    }

LABEL_22:
    *__error() = v22;
LABEL_23:
    ++v12;
    v16 += 16;
    if (v17 == v12)
    {
      goto LABEL_10;
    }
  }

  v24 = *(v19 + v16);
  if (v24 < 2)
  {
    goto LABEL_23;
  }

  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v25 = *(v18 + 5619) + v24;
  if (v25 >= *(v18 + 331))
  {
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    memset(v106, 0, sizeof(v106));
    v22 = *__error();
    v34 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v88 = v22;
    v35 = a1[1];
    v36 = *(v35 + 331);
    v37 = fd_name(*(v35 + 220), v106, 0x100uLL);
    *buf = 136316418;
    v95 = "_data_map_get_data_entry";
    v96 = 1024;
    v97 = 397;
    v98 = 2048;
    v99 = v25;
    v100 = 2048;
    v101 = v36;
    v102 = 2048;
    v103 = v35;
    v22 = v88;
    v104 = 2080;
    v105 = v37;
    v30 = v34;
    v31 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
    goto LABEL_31;
  }

  dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v25, &v90, &v93);
  if (v93 == 1)
  {
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    memset(v106, 0, sizeof(v106));
    v22 = *__error();
    v27 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v28 = fd_name(*(a1[1] + 220), v106, 0x100uLL);
    v29 = *(a1[1] + 331);
    *buf = 136316418;
    v95 = "_data_map_get_data_entry";
    v96 = 1024;
    v97 = 393;
    v98 = 2080;
    v99 = v28;
    v100 = 2048;
    v101 = v25;
    v102 = 2048;
    v103 = v29;
    v104 = 2048;
    v105 = v90;
    v30 = v27;
    v31 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_31:
    _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x3Au);
    goto LABEL_22;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  if ((v89 & 4) == 0 && a4)
  {
    v14 = dataMap<unsigned long long,false,true,false>::_data_map_garbage_compact_collect<false>(v26);
    goto LABEL_11;
  }

  v38 = (*(*a1 + 96))(a1);
  if (v38 < v12)
  {
    v39 = 0;
    goto LABEL_86;
  }

  *&v87[8] = 0;
  v40 = v38 + 1;
  *v87 = *(a1[1] + 216);
  while (2)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (*v8 <= v12 || !CFBitVectorGetBitAtIndex(*(v8 + 16), v12))
    {
      v41 = a1[1];
      v43 = *(v41 + 4531);
      v42 = *(v41 + 4539);
      if (v12 >= v42 || (v43 + 1) <= 1)
      {
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v107 = 0u;
        memset(v106, 0, sizeof(v106));
        v45 = *__error();
        v46 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v55 = a1[1];
          v56 = fd_name(*(v55 + 220), v106, 0x100uLL);
          *buf = 136316418;
          v95 = "_data_map_get_offset_entry_impl";
          v96 = 1024;
          v97 = 362;
          v98 = 2048;
          v99 = v12;
          v100 = 2048;
          v101 = v42;
          v102 = 2048;
          v103 = v55;
          v104 = 2080;
          v105 = v56;
          _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        *__error() = v45;
        goto LABEL_51;
      }

      v47 = *(v43 + v16);
      if (v47 < 2)
      {
        goto LABEL_51;
      }

      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v48 = *(v41 + 5619) + v47;
      if (v48 >= *(v41 + 331))
      {
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v107 = 0u;
        memset(v106, 0, sizeof(v106));
        v49 = *__error();
        v57 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v66 = a1[1];
          v86 = *(v66 + 331);
          v67 = fd_name(*(v66 + 220), v106, 0x100uLL);
          *buf = 136316418;
          v95 = "_data_map_get_data_entry";
          v96 = 1024;
          v97 = 397;
          v98 = 2048;
          v99 = v48;
          v100 = 2048;
          v101 = v86;
          v102 = 2048;
          v103 = v66;
          v104 = 2080;
          v105 = v67;
          v53 = v57;
          v54 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_75:
          _os_log_error_impl(&dword_1C278D000, v53, OS_LOG_TYPE_ERROR, v54, buf, 0x3Au);
        }

LABEL_59:
        *__error() = v49;
        v58 = *&v87[4];
      }

      else
      {
        dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v48, &v90, &v93);
        if (v93 == 1)
        {
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v107 = 0u;
          memset(v106, 0, sizeof(v106));
          v49 = *__error();
          v50 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = fd_name(*(a1[1] + 220), v106, 0x100uLL);
            v52 = *(a1[1] + 331);
            *buf = 136316418;
            v95 = "_data_map_get_data_entry";
            v96 = 1024;
            v97 = 393;
            v98 = 2080;
            v99 = v51;
            v100 = 2048;
            v101 = v48;
            v102 = 2048;
            v103 = v52;
            v104 = 2048;
            v105 = v90;
            v53 = v50;
            v54 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
            goto LABEL_75;
          }

          goto LABEL_59;
        }

        if ((v89 & 2) != 0)
        {
          if ((v89 & 8) != 0)
          {
            if (gSILogLevels[0] >= 5)
            {
              v59 = *__error();
              v68 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                v69 = a1[1];
                v70 = v91 + *(v69 + 216);
                *v106 = 67109890;
                *&v106[4] = v12;
                *&v106[8] = 1024;
                *&v106[10] = v90;
                *&v106[14] = 2080;
                *&v106[16] = v70;
                *&v106[24] = 2048;
                *&v106[26] = v69;
                v62 = v68;
                v63 = "Delete data for id:%d size:%d %s from %p";
                v64 = 34;
LABEL_78:
                _os_log_impl(&dword_1C278D000, v62, OS_LOG_TYPE_DEFAULT, v63, v106, v64);
              }

LABEL_79:
              *__error() = v59;
            }
          }

          else if (gSILogLevels[0] >= 5)
          {
            v59 = *__error();
            v60 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = a1[1];
              *v106 = 67109632;
              *&v106[4] = v12;
              *&v106[8] = 1024;
              *&v106[10] = v90;
              *&v106[14] = 2048;
              *&v106[16] = v61;
              v62 = v60;
              v63 = "Delete data for id:%d size:%d from %p";
              v64 = 24;
              goto LABEL_78;
            }

            goto LABEL_79;
          }
        }

        v58 = *&v87[4] + 1;
        if ((v89 & 4) == 0)
        {
          if (!*&v87[4])
          {
            v65 = a1[1];
            if ((*(v65 + 273) & 1) == 0)
            {
              dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
              v65 = a1[1];
              *(v65 + 273) = 1;
            }

            if ((*(v65 + 275) & 1) == 0)
            {
              dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
              *(a1[1] + 275) = 1;
            }
          }

          *(v43 + v16) = xmmword_1C2BFA340;
          bzero(v91, (v90 + *v87));
        }
      }

      *&v87[4] = v58;
    }

LABEL_51:
    ++v12;
    v16 += 16;
    if (v40 != v12)
    {
      continue;
    }

    break;
  }

  v39 = *&v87[4];
LABEL_86:
  if ((v89 & 2) == 0)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v82 = *__error();
  v83 = _SILogForLogForCategory(0);
  v84 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v83, v84))
  {
    v85 = a1[1];
    *v106 = 67109376;
    *&v106[4] = v39;
    *&v106[8] = 2048;
    *&v106[10] = v85;
    _os_log_impl(&dword_1C278D000, v83, v84, "Found %d deleted strings from %p", v106, 0x12u);
  }

  v14 = 0;
  *__error() = v82;
LABEL_11:
  (*(*a1 + 112))(a1);
  return v14;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_garbage_compact_collect<false>(__n128 a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v93 = v4;
  v92 = v5;
  v7 = v6;
  v9 = v8;
  v134 = *MEMORY[0x1E69E9840];
  v10 = (*(*v8 + 96))(v8, v1);
  bzero(v107, 0x400uLL);
  bzero(v106, 0x400uLL);
  v135.location = 0;
  v103 = 0;
  v11 = *(v9 + 8);
  v12 = *(v11 + 277);
  *v3 = 842150450;
  *(v3 + 8) = 0;
  v13 = *(v11 + 4539);
  *(v3 + 16) = v13;
  v135.length = v13 - 1;
  v91 = v7;
  *(v3 + 24) = CFBitVectorGetCountOfBit(*(v7 + 16), v135, 1u);
  bzero(__src, 0x1058uLL);
  __src[520] = -1;
  v14 = fd_name(*(*(v9 + 8) + 315), v107, 0x400uLL);
  snprintf(v106, 0x400uLL, "tmp.%s", v14);
  if (v12)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  sibling_protected = fd_create_sibling_protected(*(*(v9 + 8) + 315), v106, 1538, v15);
  if (fd_truncate(sibling_protected, *(*(v9 + 8) + 323)) == -1 || (v17 = *(*(v9 + 8) + 323), aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 0x40000000, aBlock[2] = ___ZN7dataMapIyLb0ELb1ELb0EE33_data_map_garbage_compact_collectILb0EEENSt3__19enable_ifIXntT_EiE4typeEP10bit_vectory14DMCollectFlagsP32data_map_garbage_compact_context_block_invoke, aBlock[3] = &__block_descriptor_tmp_111_6101, aBlock[4] = v9, __src[0] = sibling_protected, WORD2(__src[4]) = 256, __src[1] = v17, LODWORD(__src[4]) = 1, __src[5] = _Block_copy(aBlock), LOBYTE(__src[6]) = 26, bzero(&__src[7], 0x1000uLL), v18 = fd_name(*(*(v9 + 8) + 4515), v107, 0x400uLL), snprintf(v106, 0x400uLL, "tmp.%s", v18), __src[519] = fd_create_sibling_protected(*(*(v9 + 8) + 4515), v106, 1538, v15), fd_truncate(__src[519], *(*(v9 + 8) + 4467)) == -1))
  {
LABEL_16:
    v32 = *__error();
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0xFFFFFFFFLL;
    }

    goto LABEL_19;
  }

  v19 = *(v9 + 8);
  __src[522] = *(v19 + 4467);
  __src[520] = fd_mmap(__src[519], *(v19 + 4523), 3, 1, 0);
  if (__src[520] == -1)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v120[0]) = 136315394;
      *(v120 + 4) = "_data_map_garbage_compact_collect";
      WORD6(v120[0]) = 1024;
      *(v120 + 14) = 2911;
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: offsets fd_mmap error", v120, 0x12u);
    }

    *__error() = v30;
    goto LABEL_16;
  }

  v104[2] = 0;
  __src[521] = *(*(v9 + 8) + 4523);
  v104[0] = 1;
  v104[1] = "";
  data_entry_store<unsigned long long,false,true,false>(__src, v104);
  v20 = __src[520];
  *__src[520] = 0;
  *(v20 + 1) = 0;
  v103 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v21 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(v9 + 8), 0, add_explicit + 1);
  v23 = v22;
  v24 = v21;
  v25 = HIDWORD(v21);
  v27 = v26;
  v28 = threadData[9 * v21 + 1] + 320 * HIDWORD(v21);
  v89 = *(v28 + 312);
  v29 = *(v28 + 224);
  if (v29)
  {
    v29(*(v28 + 288));
  }

  v100 = v24;
  v98 = v27;
  v99 = v25;
  v97 = v23;
  if (_setjmp(v28))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v120[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v120, 2u);
    }

    *(v28 + 312) = v89;
    CIOnThreadCleanUpReset(v97);
    dropThreadId(v100, 1, add_explicit + 1);
    CICleanUpReset(v100, v98);
    goto LABEL_85;
  }

  if (v10)
  {
    v35 = 0;
    for (i = 1; i <= v10; ++i)
    {
      v37 = *(v9 + 8);
      v38 = *(v37 + 4531);
      v39 = *(v37 + 4539);
      if (i >= v39 || (v38 + 1) <= 1)
      {
        v133 = 0u;
        v132 = 0u;
        v131 = 0u;
        v130 = 0u;
        v129 = 0u;
        v128 = 0u;
        v127 = 0u;
        v126 = 0u;
        v125 = 0u;
        v124 = 0u;
        v123 = 0u;
        v122 = 0u;
        v121 = 0u;
        memset(v120, 0, sizeof(v120));
        v41 = *__error();
        v42 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v51 = *(v9 + 8);
          v52 = fd_name(*(v51 + 220), v120, 0x100uLL);
          v108 = 136316418;
          v109 = "_data_map_get_offset_entry_impl";
          v110 = 1024;
          v111 = 362;
          v112 = 2048;
          v113 = i;
          v114 = 2048;
          v115 = v39;
          v116 = 2048;
          v117 = v51;
          v118 = 2080;
          v119 = v52;
          _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v108, 0x3Au);
        }

        *__error() = v41;
        goto LABEL_35;
      }

      v43 = *(v38 + v35 * 4 + 16);
      if (v43 >= 2)
      {
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v105 = 0;
        v44 = *(v37 + 5619) + v43;
        if (v44 >= *(v37 + 331))
        {
          v133 = 0u;
          v132 = 0u;
          v131 = 0u;
          v130 = 0u;
          v129 = 0u;
          v128 = 0u;
          v127 = 0u;
          v126 = 0u;
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          memset(v120, 0, sizeof(v120));
          v45 = *__error();
          v53 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            log = v53;
            v64 = *(v9 + 8);
            v65 = *(v64 + 331);
            v66 = fd_name(*(v64 + 220), v120, 0x100uLL);
            v108 = 136316418;
            v109 = "_data_map_get_data_entry";
            v110 = 1024;
            v111 = 397;
            v112 = 2048;
            v113 = v44;
            v114 = 2048;
            v115 = v65;
            v116 = 2048;
            v117 = v64;
            v118 = 2080;
            v119 = v66;
            v49 = log;
            v50 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_71:
            _os_log_error_impl(&dword_1C278D000, v49, OS_LOG_TYPE_ERROR, v50, &v108, 0x3Au);
          }

LABEL_44:
          *__error() = v45;
          goto LABEL_35;
        }

        dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(v9, *(v37 + 5619) + v43, &v94, &v105);
        if (v105 == 1)
        {
          v133 = 0u;
          v132 = 0u;
          v131 = 0u;
          v130 = 0u;
          v129 = 0u;
          v128 = 0u;
          v127 = 0u;
          v126 = 0u;
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          memset(v120, 0, sizeof(v120));
          v45 = *__error();
          v46 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = fd_name(*(*(v9 + 8) + 220), v120, 0x100uLL);
            v48 = *(*(v9 + 8) + 331);
            v108 = 136316418;
            v109 = "_data_map_get_data_entry";
            v110 = 1024;
            v111 = 393;
            v112 = 2080;
            v113 = v47;
            v114 = 2048;
            v115 = v44;
            v116 = 2048;
            v117 = v48;
            v118 = 2048;
            v119 = v94;
            v49 = v46;
            v50 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
            goto LABEL_71;
          }

          goto LABEL_44;
        }

        if (i < v92)
        {
          goto LABEL_49;
        }

        if ((i & 0x8000000000000000) != 0)
        {
          v77 = __si_assert_copy_extra_332();
          v85 = v77;
          v86 = "";
          if (v77)
          {
            v86 = v77;
          }

          __message_assert_336(v77, v78, v79, v80, v81, v82, v83, v84, "bit_vector.h", 109, "bitIndex >= 0", v86);
          free(v85);
          if (__valid_fs(-1))
          {
            v87 = 2989;
          }

          else
          {
            v87 = 3072;
          }

          *v87 = -559038737;
          abort();
        }

        if (*v91 > i && CFBitVectorGetBitAtIndex(*(v91 + 16), i))
        {
LABEL_49:
          *&__src[520][v35 + 6] = *(*(*(v9 + 8) + 4531) + v35 * 4 + 24);
          if (v94 < 0x80)
          {
            v54 = 1;
          }

          else
          {
            v54 = 2;
          }

          if (v94 >> 14)
          {
            v55 = 3;
          }

          else
          {
            v55 = v54;
          }

          if (v94 >> 21)
          {
            v56 = 4;
          }

          else
          {
            v56 = v55;
          }

          if (v94 >> 28)
          {
            v57 = 5;
          }

          else
          {
            v57 = v56;
          }

          v58 = (v94 + v57 + 8);
          v59 = (__src[2] + v58);
          if ((__src[2] + v58) >= __src[1])
          {
            if (_storageWindowsExpandBacking(__src, v58))
            {
              v59 = (__src[2] + v58);
              goto LABEL_62;
            }
          }

          else
          {
LABEL_62:
            __src[2] = v59;
          }

          v60 = data_entry_store<unsigned long long,false,true,false>(__src, &v94);
          *&__src[520][v35 + 4] = v60;
          goto LABEL_36;
        }

        ++*(v3 + 8);
        if ((v93 & 2) != 0)
        {
          if ((v93 & 8) != 0)
          {
            if (gSILogLevels[0] >= 5)
            {
              v67 = *__error();
              v68 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                v69 = *(v9 + 8);
                v70 = v95 + *(v69 + 216);
                LODWORD(v120[0]) = 67109890;
                DWORD1(v120[0]) = i;
                WORD4(v120[0]) = 1024;
                *(v120 + 10) = v94;
                HIWORD(v120[0]) = 2080;
                *&v120[1] = v70;
                WORD4(v120[1]) = 2048;
                *(&v120[1] + 10) = v69;
                _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "Deleting id: %d size: %d %s from %p", v120, 0x22u);
              }

              *__error() = v67;
            }
          }

          else if (gSILogLevels[0] >= 5)
          {
            v61 = *__error();
            v62 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              v63 = *(v9 + 8);
              LODWORD(v120[0]) = 67109632;
              DWORD1(v120[0]) = i;
              WORD4(v120[0]) = 1024;
              *(v120 + 10) = v94;
              HIWORD(v120[0]) = 2048;
              *&v120[1] = v63;
              _os_log_impl(&dword_1C278D000, v62, OS_LOG_TYPE_DEFAULT, "Deleting id: %d size: %d from %p", v120, 0x18u);
            }

            *__error() = v61;
          }
        }
      }

LABEL_35:
      *&__src[520][4 * i] = xmmword_1C2BFA340;
LABEL_36:
      v35 += 4;
    }
  }

  if (*(v3 + 8))
  {
    if (SLODWORD(__src[4]) >= 1)
    {
      v71 = 0;
      do
      {
        v72 = v71;
        storageWindowSync(__src[v71 + 7], 1);
        v71 = v72 + 1;
      }

      while (v72 + 1 < SLODWORD(__src[4]));
    }

    v73 = __src[520];
    v74 = __src[522];
    fd_system_status_stall_if_busy();
    msync(v73, v74, 16);
    memcpy((v3 + 32), __src, 0x1058uLL);
    *v3 = 842150450;
    v103 = 1;
    v75 = threadData[9 * v100 + 1] + 320 * v99;
    *(v75 + 312) = v89;
    v76 = *(v75 + 232);
    if (v76)
    {
      v76(*(v75 + 288));
    }

    dropThreadId(v100, 0, add_explicit + 1);
LABEL_85:
    v33 = 0;
    result = 0;
    if (v103)
    {
      return result;
    }

    goto LABEL_19;
  }

  v33 = 0;
LABEL_19:
  if (sibling_protected)
  {
    storageWindowsUnmap(__src);
    fd_release(sibling_protected);
    _fd_unlink_with_origin(sibling_protected, 0);
  }

  if (__src[520] + 1 >= 2)
  {
    munmap(__src[520], __src[521]);
  }

  if (__src[519])
  {
    fd_release(__src[519]);
    _fd_unlink_with_origin(__src[519], 0);
  }

  return v33;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_garbage_collect_setup(void *a1)
{
  (*(*a1 + 336))(a1);
  v2 = a1[1];
  v3 = *(v2 + 4539);
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_garbage_compact_collect_commit(void *a1, void *a2, _BYTE *a3, char a4)
{
  (*(*a1 + 336))(a1);
  if ((a4 & 1) == 0 && (*a3 & 1) == 0)
  {
    if (a2[1])
    {
      v8 = a2[2];
      v9 = a1[1];
      if (v8 != *(v9 + 4539) || (v10 = a2[3], v12.length = v8 - 1, v12.location = 0, v10 != CFBitVectorGetCountOfBit(*(*(v9 + 264) + 16), v12, 1u)))
      {
        *a3 = 1;
      }
    }
  }

  return 0;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_garbage_collect_handle_deletes(uint64_t *a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a2[1])
  {
    bzero(v52, 0x400uLL);
    bzero(v51, 0x400uLL);
    storageWindowsUnmap(a1[1] + 315);
    fd_sync(*(a1[1] + 315), 0);
    fd_sync(a2[523], 1);
    munmap(*(a1[1] + 4531), *(a1[1] + 4523));
    v4 = a1[1];
    *(v4 + 4531) = a2[524];
    *(v4 + 4467) = a2[526];
    a2[524] = -1;
    v49 = 0u;
    memset(v50, 0, sizeof(v50));
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    __buf[0] = 0x6D6F76650A00;
    __buf[1] = 0x3232323200000003;
    strlcpy(&v50[12], (v4 + 4595), 0xFFuLL);
    v5 = (a2 + 1);
    v6 = a1[1];
    v7 = vld1q_dup_f64(v5);
    *(v6 + 4563) = vaddq_s64(*(v6 + 4563), v7);
    *(v6 + 4579) = 0;
    dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
    (*(*a1 + 224))(a1, 1);
    dataMap<unsigned long long,false,true,false>::_data_map_sync_header_to_tmp<false>(a1);
    v8 = *(a1[1] + 315);
    if (v8)
    {
      v9 = *(v8 + 44);
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }

    v10 = si_openat_protected(v9, "tmp.movePlan", 1538, 3);
    pwrite(v10, __buf, 0x210uLL, 0);
    fcntl(v10, 85);
    v11 = fd_name(*(a1[1] + 315), v52, 0x400uLL);
    v12 = *__error();
    v13 = _SILogForLogForCategory(0);
    v14 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = a1[1];
      v16 = fd_realpath(a2[4], v51);
      v28 = 134218498;
      v29 = v15;
      v30 = 2080;
      v31 = v16;
      v32 = 2080;
      v33 = v11;
      _os_log_impl(&dword_1C278D000, v13, v14, "rename %p %s to %s", &v28, 0x20u);
    }

    *__error() = v12;
    fd_rename(a2[4], v11);
    memcpy((a1[1] + 315), a2 + 4, 0x1038uLL);
    bzero(a2 + 4, 0x1038uLL);
    v17 = fd_name(*(a1[1] + 4515), v52, 0x400uLL);
    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    v20 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = a1[1];
      v22 = fd_realpath(a2[523], v51);
      v28 = 134218498;
      v29 = v21;
      v30 = 2080;
      v31 = v22;
      v32 = 2080;
      v33 = v17;
      _os_log_impl(&dword_1C278D000, v19, v20, "rename %p %s to %s", &v28, 0x20u);
    }

    *__error() = v18;
    fd_rename(a2[523], v17);
    v23 = a1[1];
    v24 = *(v23 + 4515);
    *(v23 + 4515) = a2[523];
    fd_release(v24);
    a2[523] = 0;
    (*(*a1 + 232))(a1, 1);
    (*(*a1 + 48))(a1);
    (*(*a1 + 56))(a1);
    (*(*a1 + 64))(a1);
    (*(*a1 + 72))(a1);
    v25 = *(a1[1] + 315);
    if (v25)
    {
      v26 = *(v25 + 44);
    }

    else
    {
      v26 = -1;
    }

    unlinkat(v26, "tmp.movePlan", 2048);
    close(v10);
    if ((*(a1[1] + 274) & 1) == 0)
    {
      dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
      *(a1[1] + 274) = 1;
    }

    dataMap<unsigned long long,false,true,false>::_data_map_rehash(a1);
    (*(*a1 + 224))(a1, 1);
    (*(*a1 + 232))(a1, 1);
    (*(*a1 + 56))(a1);
    (*(*a1 + 64))(a1);
    (*(*a1 + 72))(a1);
  }

  return 0;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_sync_header_to_tmp<false>(uint64_t *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v31 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
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

  v29 = v7;
  v30 = v6;
  if (_setjmp(v10))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v36, 2u);
    }

    *(v10 + 312) = v11;
    CIOnThreadCleanUpReset(v5);
    dropThreadId(v6, 1, add_explicit + 1);
    result = CICleanUpReset(v6, v9);
  }

  else
  {
    if (!*(a1[1] + 278) && *(*(a1[1] + 307) + 16) != 1)
    {
      v14 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
      v15 = *(a1[1] + 307);
      v16 = *v15;
      *(v14 + 1) = v15[1];
      v18 = v15[3];
      v17 = v15[4];
      v19 = *(v15 + 76);
      *(v14 + 2) = v15[2];
      *(v14 + 3) = v18;
      *v14 = v16;
      *(v14 + 76) = v19;
      *(v14 + 4) = v17;
      *(v14 + 44) = *(v14 + 20);
      *(v14 + 60) = *(v14 + 36);
      v20 = a1[1];
      *(v14 + 20) = *(v20 + 331);
      *(v14 + 36) = *(v20 + 4539);
      *(v14 + 28) = *(v20 + 4507);
      *(v14 + 4) = 2;
      sibling_with_prefix_protected = fd_create_sibling_with_prefix_protected(*(v20 + 220), "tmp.", 0);
      fd_pwrite(sibling_with_prefix_protected, v14, 0x5CuLL, 0);
      fd_sync(sibling_with_prefix_protected, 1);
      fd_release(sibling_with_prefix_protected);
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
      v22 = *__error();
      v23 = _SILogForLogForCategory(7);
      v24 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = fd_name(*(a1[1] + 220), v36, 0x100uLL);
        v26 = (*(*a1 + 96))(a1);
        *buf = 136315394;
        v33 = v25;
        v34 = 2048;
        v35 = v26;
        _os_log_impl(&dword_1C278D000, v23, v24, "%s complete write tmp header with count: %llu", buf, 0x16u);
      }

      *__error() = v22;
      free(v14);
    }

    v31 = 1;
    v27 = threadData[9 * v30 + 1] + 320 * v29;
    *(v27 + 312) = v11;
    v28 = *(v27 + 232);
    if (v28)
    {
      v28(*(v27 + 288));
    }

    result = dropThreadId(v30, 0, add_explicit + 1);
  }

  if ((v31 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  return result;
}

void dataMap<unsigned long long,false,true,false>::_data_map_clear_seen(uint64_t a1)
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

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_match_address(uint64_t a1, char *a2)
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
LABEL_21:
          log_map_access_error(v8, v4, v5, v9, v7, v6);
          return 1;
        }
      }
    }

    return 0;
  }

  if (!storage_windows_contains_address(v2 + 315, a2))
  {
    v4 = *(v2 + 4531);
    v10 = (v4 + 1) < 2 || v4 > a2;
    if (v10 || (v5 = *(v2 + 4523), &v4[v5] <= a2))
    {
      v4 = *(v2 + 4499);
      if ((v4 + 1) < 2)
      {
        return 0;
      }

      if (v4 > a2)
      {
        return 0;
      }

      v5 = *(v2 + 4491);
      if (&v4[v5] <= a2)
      {
        return 0;
      }

      v9 = *(v2 + 4483);
      v6 = *(v2 + 236);
      v7 = "data buckets";
    }

    else
    {
      v9 = *(v2 + 4467);
      v6 = *(v2 + 4515);
      v7 = "data offsets";
    }

    v8 = a2;
    goto LABEL_21;
  }

  return 1;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_version_update(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 307);
  if (*(v2 + 8) <= 0xAu)
  {
    v3 = result;
    *(v2 + 8) = 12;
    result = fd_pwrite(*(v1 + 220), v2, 0x5CuLL, 0);
    v4 = *(v3 + 8);
    v5 = (v4 + 347);
    if (*(v4 + 347) >= 1)
    {
      v6 = 0;
      v7 = v4 + 371;
      do
      {
        result = storageWindowSync(*(v7 + 8 * v6++), 1);
      }

      while (v6 < *v5);
    }
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_version(uint64_t a1)
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

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_sync_header(uint64_t *a1, int a2)
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
        *(v16 + 60) = *(v16 + 36);
        *(v16 + 44) = *(v16 + 20);
        *(v16 + 20) = *(v15 + 331);
        *(v16 + 36) = *(v15 + 4539);
        *(v16 + 28) = *(v15 + 4507);
        *(v16 + 16) = 0;
        fd_pwrite(*(v15 + 220), v16, 0x5CuLL, 0);
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

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_sync_data(uint64_t *a1, int a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v42 = 0;
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

  v40 = v9;
  v41 = v8;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v49 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v49, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v7);
    dropThreadId(v8, 1, add_explicit + 1);
    CICleanUpReset(v8, v11);
  }

  else
  {
    v15 = a1[1];
    v16 = v15 + 278;
    if (!*(v15 + 278) && !*(*(v15 + 307) + 16))
    {
      v17 = a1[1];
      if (*(v15 + 273) == 1)
      {
        if (a2 && *(v15 + 347) >= 1)
        {
          v18 = v15 + 371;
          v19 = 0;
          do
          {
            v20 = v19;
            storageWindowSync(*(v18 + 8 * v19), 0);
            v19 = v20 + 1;
          }

          while (v20 + 1 < *(v16 + 69));
          v17 = a1[1];
        }

        *(v17 + 273) = 0;
      }

      v21 = v17;
      if (*(v17 + 275) == 1)
      {
        if (a2)
        {
          v22 = *(*(v17 + 307) + 60);
          v23 = *(v17 + 4531) + 16 * v22;
          v24 = -*MEMORY[0x1E69E9AC8];
          v25 = 16 * (*(v17 + 4539) - v22);
          fd_system_status_stall_if_busy();
          msync((v23 & v24), v25, 16);
          v21 = a1[1];
        }

        *(v21 + 275) = 0;
      }

      if (*(v21 + 274) == 1)
      {
        if (a2)
        {
          v26 = v21 + 4096;
          v27 = *(v26 + 403);
          v28 = 8 * *(v26 + 411);
          fd_system_status_stall_if_busy();
          msync(v27, v28, 16);
          v21 = a1[1];
        }

        *(v21 + 274) = 0;
      }

      v29 = *(v21 + 307);
      *(v29 + 20) = *(v21 + 331);
      *(v29 + 36) = *(v21 + 4539);
      *(v29 + 28) = *(v21 + 4507);
      *(v29 + 68) = *(v21 + 4563);
      *(v29 + 84) = *(v21 + 4579);
      *(v29 + 16) = 0;
      fd_pwrite(*(v21 + 220), v29, 0x5CuLL, 0);
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
      v54 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      *v49 = 0u;
      v30 = *__error();
      v31 = _SILogForLogForCategory(7);
      v32 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = fd_name(*(a1[1] + 220), v49, 0x100uLL);
        if (a2)
        {
          v34 = "sync";
        }

        else
        {
          v34 = "update";
        }

        v35 = (*(*a1 + 96))(a1);
        *buf = 136315650;
        v44 = v33;
        v45 = 2080;
        v46 = v34;
        v47 = 2048;
        v48 = v35;
        _os_log_impl(&dword_1C278D000, v31, v32, "%s complete %s map with count: %llu", buf, 0x20u);
      }

      *__error() = v30;
    }

    v42 = 1;
    v36 = threadData[9 * v41 + 1] + 320 * v40;
    *(v36 + 312) = v13;
    v37 = *(v36 + 232);
    if (v37)
    {
      v37(*(v36 + 288));
    }

    dropThreadId(v41, 0, add_explicit + 1);
  }

  v38 = (a1[1] + 278);
  if (v42 == 1)
  {
    return *v38;
  }

  *v38 = 22;
  return 22;
}

BOOL dataMap<unsigned long long,false,true,false>::_data_map_needs_sync(uint64_t a1)
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_get_data(uint64_t *a1, uint64_t a2, void *a3)
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

char *dataMap<unsigned long long,false,true,false>::data_map_get_data_entry@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_get_extra_with_key(uint64_t *a1, unsigned __int8 *a2, size_t a3, _BYTE *a4)
{
  v8 = 0;
  v100 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  __dst = 0;
  v9 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    goto LABEL_46;
  }

  v59 = v9;
  v69 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v60 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v67 = v15;
  v68 = v14;
  v65 = v13;
  v66 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v84 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v84, 2u);
    }

    *(v18 + 312) = v60;
    CIOnThreadCleanUpReset(v65);
    dropThreadId(v68, 1, add_explicit + 1);
    CICleanUpReset(v68, v66);
    goto LABEL_43;
  }

  v61 = a2;
  v20 = a1[1];
  v21 = *(v20 + 4507);
  v22 = v59 % v21;
  v58 = *(v20 + 216);
  do
  {
    v23 = a1[1];
    v24 = *(v23 + 4499);
    v25 = *(v24 + 8 * v22);
    if (!v25)
    {
      break;
    }

    if (*(v23 + 264))
    {
      os_unfair_lock_lock((v23 + 260));
      v50 = a1[1];
      v51 = *(v50 + 264);
      if (v51)
      {
        bit_vector_set(v51, v25);
        v50 = a1[1];
      }

      os_unfair_lock_unlock((v50 + 260));
      v26 = *(v24 + 8 * v22);
      v23 = a1[1];
    }

    else
    {
      v26 = *(v24 + 8 * v22);
    }

    v27 = *(v23 + 4531);
    v28 = *(v23 + 4539);
    if (v26 >= v28 || (v27 + 1) <= 1)
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
      v30 = *__error();
      v31 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        log = v31;
        v42 = a1[1];
        v43 = fd_name(*(v42 + 220), v84, 0x100uLL);
        *buf = 136316418;
        v73 = "_data_map_get_offset_entry_impl";
        v74 = 1024;
        v75 = 362;
        v76 = 2048;
        v77 = v26;
        v78 = 2048;
        v79 = v28;
        v80 = 2048;
        v81 = v42;
        v82 = 2080;
        v83 = v43;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v30;
      goto LABEL_19;
    }

    v33 = (v27 + 16 * v26);
    v34 = *v33;
    if (*v33 != 1 && v33[1] == v59)
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v71 = 0;
      v35 = (*(v23 + 5619) + v34);
      if (v35 >= *(v23 + 331))
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
        v36 = *__error();
        v44 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v57 = v44;
          v46 = v35;
          v47 = a1[1];
          v48 = *(v47 + 331);
          v49 = fd_name(*(v47 + 220), v84, 0x100uLL);
          *buf = 136316418;
          v73 = "_data_map_get_data_entry";
          v74 = 1024;
          v75 = 397;
          v76 = 2048;
          v77 = v46;
          v78 = 2048;
          v79 = v48;
          v80 = 2048;
          v81 = v47;
          v82 = 2080;
          v83 = v49;
          v40 = v57;
          v41 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_36:
          _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, v41, buf, 0x3Au);
        }

LABEL_30:
        *__error() = v36;
        goto LABEL_19;
      }

      dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, *(v23 + 5619) + v34, &v62, &v71);
      if (v71 == 1)
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
        v36 = *__error();
        v37 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = fd_name(*(a1[1] + 220), v84, 0x100uLL);
          v39 = *(a1[1] + 331);
          *buf = 136316418;
          v73 = "_data_map_get_data_entry";
          v74 = 1024;
          v75 = 393;
          v76 = 2080;
          v77 = v38;
          v78 = 2048;
          v79 = v35;
          v80 = 2048;
          v81 = v39;
          v82 = 2048;
          v83 = v62;
          v40 = v37;
          v41 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if ((v71 & 1) == 0 && v58 + a3 == v62)
      {
        v45 = v63;
        if (!memcmp(v61, &v63[v58], a3))
        {
          v52 = *(a1[1] + 216);
          memcpy(&__dst, v45, v52);
          HIDWORD(__dst) = v52;
          *a4 = 1;
          break;
        }
      }
    }

LABEL_19:
    v32 = 0;
    if (v22 + 1 != v21)
    {
      v32 = v22 + 1;
    }

    v22 = v32;
  }

  while (v32 != v59 % v21);
  v69 = 1;
  v53 = threadData[9 * v68 + 1] + 320 * v67;
  *(v53 + 312) = v60;
  v54 = *(v53 + 232);
  if (v54)
  {
    v54(*(v53 + 288));
  }

  dropThreadId(v68, 0, add_explicit + 1);
LABEL_43:
  if ((v69 & 1) == 0)
  {
    *a4 = 0;
    *(a1[1] + 278) = 22;
  }

  v8 = __dst;
LABEL_46:
  (*(*a1 + 112))(a1);
  return v8;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_ids_get_locked(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = dataMap<unsigned long long,false,true,false>::dm_hash(*(*(a1 + 8) + 282), a2, a3);

  return dataMap<unsigned long long,false,true,false>::data_map_ids_get_locked_with_hash(a1, a4, v10, v5, a2, a3);
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_ids_get_locked_with_hash(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const void *a5, size_t a6)
{
  v100 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  v9 = *(v8 + 4507);
  v10 = *(v8 + 216);
  v70 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(a1 + 8), 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v57 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v68 = v15;
  v69 = v14;
  v66 = v13;
  v67 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v84 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v84, 2u);
    }

    *(v18 + 312) = v57;
    CIOnThreadCleanUpReset(v66);
    dropThreadId(v69, 1, add_explicit + 1);
    CICleanUpReset(v69, v67);
    v20 = 0;
    goto LABEL_40;
  }

  v56 = a3;
  v21 = a3 % v9;
  v22 = v21;
  v23 = 0;
  do
  {
    v24 = v23;
    v25 = *(a1 + 8);
    v26 = *(v25 + 4499);
    v27 = *(v26 + 8 * v22);
    if (!v27)
    {
      break;
    }

    v28 = *(v25 + 4531);
    v29 = *(v25 + 4539);
    if (v27 >= v29 || (v28 + 1) <= 1)
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
      v31 = *__error();
      v32 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        log = v32;
        v44 = *(a1 + 8);
        v45 = fd_name(*(v44 + 220), v84, 0x100uLL);
        *buf = 136316418;
        v73 = "_data_map_get_offset_entry_impl";
        v74 = 1024;
        v75 = 362;
        v76 = 2048;
        v77 = v27;
        v78 = 2048;
        v79 = v29;
        v80 = 2048;
        v81 = v44;
        v82 = 2080;
        v83 = v45;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v31;
      goto LABEL_16;
    }

    v34 = (v28 + 16 * v27);
    v35 = *v34;
    if (*v34 != 1 && v34[1] == v56)
    {
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v71 = 0;
      v36 = *(v25 + 5619) + v35;
      v37 = v36;
      if (v36 >= *(v25 + 331))
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
        v38 = *__error();
        v46 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v55 = v46;
          v47 = v37;
          v48 = *(a1 + 8);
          v49 = *(v48 + 331);
          v50 = fd_name(*(v48 + 220), v84, 0x100uLL);
          *buf = 136316418;
          v73 = "_data_map_get_data_entry";
          v74 = 1024;
          v75 = 397;
          v76 = 2048;
          v77 = v47;
          v78 = 2048;
          v79 = v49;
          v80 = 2048;
          v81 = v48;
          v82 = 2080;
          v83 = v50;
          v42 = v55;
          v43 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_36:
          _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, v43, buf, 0x3Au);
        }
      }

      else
      {
        dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v36, &v63, &v71);
        if (v71 != 1)
        {
          if ((v71 & 1) == 0 && v10 + a6 == v63 && !memcmp(a5, (v64 + v10), a6))
          {
            if (v24 < a4)
            {
              *(a2 + 8 * v24) = *(v26 + 8 * v22);
            }

            v24 = (v24 + 1);
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
        v38 = *__error();
        v39 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = fd_name(*(*(a1 + 8) + 220), v84, 0x100uLL);
          v41 = *(*(a1 + 8) + 331);
          *buf = 136316418;
          v73 = "_data_map_get_data_entry";
          v74 = 1024;
          v75 = 393;
          v76 = 2080;
          v77 = v40;
          v78 = 2048;
          v79 = v37;
          v80 = 2048;
          v81 = v41;
          v82 = 2048;
          v83 = v63;
          v42 = v39;
          v43 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_36;
        }
      }

      *__error() = v38;
    }

LABEL_16:
    if (v22 + 1 == v9)
    {
      v33 = 0;
    }

    else
    {
      v33 = v22 + 1;
    }

    v22 = v33;
    v23 = v24;
  }

  while (v33 != v21);
  v70 = 1;
  v51 = threadData[9 * v69 + 1] + 320 * v68;
  *(v51 + 312) = v57;
  v52 = *(v51 + 232);
  if (v52)
  {
    v52(*(v51 + 288));
  }

  dropThreadId(v69, 0, add_explicit + 1);
  v20 = v24;
LABEL_40:
  result = v20;
  if ((v70 & 1) == 0)
  {
    result = 0;
    *(*(a1 + 8) + 278) = 22;
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_ids_get(void *a1, unsigned __int8 *a2, size_t a3, uint64_t a4, unsigned int a5)
{
  v10 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  locked_with_hash = dataMap<unsigned long long,false,true,false>::data_map_ids_get_locked_with_hash(a1, a4, v10, a5, a2, a3);
  (*(*a1 + 112))(a1);
  return locked_with_hash;
}

CFIndex dataMap<unsigned long long,false,true,false>::data_map_id_get_with_key_noextra(uint64_t *a1, unsigned __int8 *a2, unint64_t a3)
{
  v97 = *MEMORY[0x1E69E9840];
  v56 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  v67 = 0;
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

  v65 = v10;
  v66 = v9;
  v63 = v8;
  v64 = v12;
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v81 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v81, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v63);
    dropThreadId(v66, 1, add_explicit + 1);
    CICleanUpReset(v66, v64);
    v16 = 0;
    goto LABEL_43;
  }

  if ((*(*a1 + 104))(a1))
  {
    v16 = 0;
    goto LABEL_39;
  }

  v59 = v14;
  v17 = a1[1];
  v18 = *(v17 + 4507);
  v19 = v56 % v18;
  v58 = a3;
  v55 = *(v17 + 216);
  v54 = v55 + a3;
  while (1)
  {
    v20 = a1[1];
    v21 = *(v20 + 4499);
    v22 = *(v21 + 8 * v19);
    if (!v22)
    {
      break;
    }

    v23 = *(v20 + 4531);
    v24 = *(v20 + 4539);
    if (v22 >= v24 || (v23 + 1) <= 1)
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
      *v81 = 0u;
      v82 = 0u;
      v26 = *__error();
      v27 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        log = v27;
        v39 = a1[1];
        v40 = fd_name(*(v39 + 220), v81, 0x100uLL);
        *buf = 136316418;
        v70 = "_data_map_get_offset_entry_impl";
        v71 = 1024;
        v72 = 362;
        v73 = 2048;
        v74 = v22;
        v75 = 2048;
        v76 = v24;
        v77 = 2048;
        v78 = v39;
        v79 = 2080;
        v80 = v40;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v26;
      goto LABEL_18;
    }

    v29 = (v23 + 16 * v22);
    v30 = *v29;
    if (*v29 != 1 && v29[1] == v56)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v68 = 0;
      v31 = *(v20 + 5619) + v30;
      v32 = v31;
      if (v31 >= *(v20 + 331))
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
        *v81 = 0u;
        v82 = 0u;
        v33 = *__error();
        v41 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v53 = v41;
          v42 = v33;
          v43 = a1[1];
          v44 = *(v43 + 331);
          v45 = fd_name(*(v43 + 220), v81, 0x100uLL);
          *buf = 136316418;
          v70 = "_data_map_get_data_entry";
          v71 = 1024;
          v72 = 397;
          v73 = 2048;
          v74 = v32;
          v75 = 2048;
          v76 = v44;
          v77 = 2048;
          v78 = v43;
          v33 = v42;
          v79 = 2080;
          v80 = v45;
          v37 = v53;
          v38 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_36:
          _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, v38, buf, 0x3Au);
        }

LABEL_30:
        *__error() = v33;
        goto LABEL_18;
      }

      dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v31, &v60, &v68);
      if (v68 == 1)
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
        *v81 = 0u;
        v82 = 0u;
        v33 = *__error();
        v34 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = fd_name(*(a1[1] + 220), v81, 0x100uLL);
          v36 = *(a1[1] + 331);
          *buf = 136316418;
          v70 = "_data_map_get_data_entry";
          v71 = 1024;
          v72 = 393;
          v73 = 2080;
          v74 = v35;
          v75 = 2048;
          v76 = v32;
          v77 = 2048;
          v78 = v36;
          v79 = 2048;
          v80 = v60;
          v37 = v34;
          v38 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if ((v68 & 1) == 0 && v54 == v60 && !memcmp(a2, (v61 + v55), v58))
      {
        v16 = *(v21 + 8 * v19);
        goto LABEL_38;
      }
    }

LABEL_18:
    v16 = 0;
    if (v19 + 1 == v18)
    {
      v28 = 0;
    }

    else
    {
      v28 = v19 + 1;
    }

    v19 = v28;
    if (v28 == v56 % v18)
    {
      goto LABEL_38;
    }
  }

  v16 = 0;
LABEL_38:
  v14 = v59;
LABEL_39:
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

  v67 = 1;
  v47 = threadData[9 * v66 + 1] + 320 * v65;
  *(v47 + 312) = v14;
  v48 = *(v47 + 232);
  if (v48)
  {
    v48(*(v47 + 288));
  }

  dropThreadId(v66, 0, add_explicit + 1);
LABEL_43:
  if ((v67 & 1) == 0)
  {
    v16 = 0;
    *(a1[1] + 278) = 22;
  }

  (*(*a1 + 112))(a1);
  return v16;
}

CFIndex dataMap<unsigned long long,false,true,false>::data_map_id_get_with_key(uint64_t *a1, unsigned __int8 *a2, size_t a3, void *a4)
{
  v100 = *MEMORY[0x1E69E9840];
  v8 = dataMap<unsigned long long,false,true,false>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    v9 = 0;
  }

  else
  {
    v59 = v8;
    v70 = 0;
    makeThreadId();
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
    v13 = v12;
    v14 = v11;
    v15 = HIDWORD(v11);
    v17 = v16;
    v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    v60 = *(v18 + 312);
    v19 = *(v18 + 224);
    if (v19)
    {
      v19(*(v18 + 288));
    }

    v68 = v15;
    v69 = v14;
    v66 = v13;
    v67 = v17;
    if (_setjmp(v18))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v84 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v84, 2u);
      }

      *(v18 + 312) = v60;
      CIOnThreadCleanUpReset(v66);
      dropThreadId(v69, 1, add_explicit + 1);
      CICleanUpReset(v69, v67);
      v9 = 0;
    }

    else
    {
      v61 = a2;
      __s2 = a4;
      v20 = a1[1];
      v21 = *(v20 + 4507);
      v22 = v59 % v21;
      v58 = *(v20 + 216);
      while (1)
      {
        v23 = a1[1];
        v24 = *(v23 + 4499);
        v25 = *(v24 + 8 * v22);
        if (!v25)
        {
          break;
        }

        v26 = *(v23 + 4531);
        v27 = *(v23 + 4539);
        if (v25 < v27 && (v26 + 1) > 1)
        {
          v32 = (v26 + 16 * v25);
          v33 = *v32;
          if (*v32 != 1 && v32[1] == v59)
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v71 = 0;
            v34 = *(v23 + 5619) + v33;
            v35 = v34;
            if (v34 >= *(v23 + 331))
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
              v41 = *__error();
              v42 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v57 = v42;
                v44 = add_explicit;
                v45 = a1[1];
                v46 = *(v45 + 331);
                v47 = fd_name(*(v45 + 220), v84, 0x100uLL);
                *buf = 136316418;
                v73 = "_data_map_get_data_entry";
                v74 = 1024;
                v75 = 397;
                v76 = 2048;
                v77 = v35;
                v78 = 2048;
                v79 = v46;
                v80 = 2048;
                v81 = v45;
                add_explicit = v44;
                v82 = 2080;
                v83 = v47;
                _os_log_error_impl(&dword_1C278D000, v57, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx 0x%lx %p %s", buf, 0x3Au);
              }

              *__error() = v41;
            }

            else
            {
              dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v34, &v63, &v71);
              if (v71 == 1)
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
                v36 = *__error();
                v37 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v48 = fd_name(*(a1[1] + 220), v84, 0x100uLL);
                  v49 = *(a1[1] + 331);
                  *buf = 136316418;
                  v73 = "_data_map_get_data_entry";
                  v74 = 1024;
                  v75 = 393;
                  v76 = 2080;
                  v77 = v48;
                  v78 = 2048;
                  v79 = v35;
                  v80 = 2048;
                  v81 = v49;
                  v82 = 2048;
                  v83 = v63;
                  _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx", buf, 0x3Au);
                }

                *__error() = v36;
              }

              else if ((v71 & 1) == 0 && v58 + a3 == v63)
              {
                v43 = v64;
                if (!memcmp(v61, &v64[v58], a3) && !memcmp(v43, __s2, *(a1[1] + 216)))
                {
                  v9 = *(v24 + 8 * v22);
                  goto LABEL_39;
                }
              }
            }
          }
        }

        else
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
          v29 = *__error();
          v30 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            log = v30;
            v38 = add_explicit;
            v39 = a1[1];
            v40 = fd_name(*(v39 + 220), v84, 0x100uLL);
            *buf = 136316418;
            v73 = "_data_map_get_offset_entry_impl";
            v74 = 1024;
            v75 = 362;
            v76 = 2048;
            v77 = v25;
            v78 = 2048;
            v79 = v27;
            v80 = 2048;
            v81 = v39;
            add_explicit = v38;
            v82 = 2080;
            v83 = v40;
            _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
          }

          *__error() = v29;
        }

        if (v22 + 1 == v21)
        {
          v31 = 0;
        }

        else
        {
          v31 = v22 + 1;
        }

        v22 = v31;
        if (v31 == v59 % v21)
        {
          v9 = 0;
          goto LABEL_39;
        }
      }

      v9 = 0;
LABEL_39:
      v70 = 1;
      v50 = threadData[9 * v69 + 1] + 320 * v68;
      *(v50 + 312) = v60;
      v51 = *(v50 + 232);
      if (v51)
      {
        v51(*(v50 + 288));
      }

      dropThreadId(v69, 0, add_explicit + 1);
    }

    if ((v70 & 1) == 0)
    {
      v9 = 0;
      *(a1[1] + 278) = 22;
    }
  }

  v52 = a1[1];
  if (*(v52 + 264))
  {
    os_unfair_lock_lock((v52 + 260));
    v54 = a1[1];
    v55 = *(v54 + 264);
    if (v55)
    {
      bit_vector_set(v55, v9);
      v54 = a1[1];
    }

    os_unfair_lock_unlock((v54 + 260));
  }

  (*(*a1 + 112))(a1);
  return v9;
}

char *dataMap<unsigned long long,false,true,false>::_data_map_get_data_id(uint64_t *a1, unsigned int a2, unsigned __int8 *a3, size_t a4, int a5)
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
  v36 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v44 = v15;
  v45 = v14;
  v42 = v13;
  v43 = v17;
  if (!_setjmp(v18))
  {
    bucket_entry = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a3, a4, *(a1[1] + 4539));
    v41 = 0;
    *buf = 0;
    v39 = 0;
    v40 = 0;
    if (!bucket_entry)
    {
      v20 = 0;
LABEL_18:
      v24 = threadData[9 * v45 + 1] + 320 * v44;
      *(v24 + 312) = v36;
      v25 = *(v24 + 232);
      if (v25)
      {
        v25(*(v24 + 288));
      }

      dropThreadId(v45, 0, add_explicit + 1);
      goto LABEL_21;
    }

    if (*bucket_entry)
    {
      if (*bucket_entry >= *(a1[1] + 4539))
      {
        v20 = 0;
      }

      else
      {
        v20 = *bucket_entry;
      }

      goto LABEL_18;
    }

    if (!a5 || (v22 = bucket_entry, *buf = a4, v39 = a3, v23 = *(a1[1] + 4539), (*(*a1 + 112))(a1), (*(*a1 + 336))(a1)))
    {
LABEL_17:
      v20 = 0;
      goto LABEL_18;
    }

    v26 = v23;
    v27 = *(a1[1] + 4539);
    if (v23 != v27)
    {
      v31 = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v9, 0, a3, a4, v27);
      if (!v31)
      {
        v20 = 0;
        goto LABEL_18;
      }

      v28 = *v31;
      v26 = *(a1[1] + 4539);
      if (*v31 >= v26)
      {
        goto LABEL_17;
      }

      if (v28)
      {
        dataMap<unsigned long long,false,true,false>::_data_map_set_seen_id(a1, v28);
        goto LABEL_48;
      }

      v22 = v31;
    }

    v28 = v26;
    v29 = v22;
    if (a4 >> 28)
    {
      v32 = 5;
    }

    else if (a4 >> 21)
    {
      v32 = 4;
    }

    else
    {
      if (!(a4 >> 14))
      {
        if (a4 < 0x80)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        goto LABEL_38;
      }

      v32 = 3;
    }

    v30 = v32;
LABEL_38:
    if (!dataMap<unsigned long long,false,true,false>::_data_map_grow(a1, (v30 + a4), &v41))
    {
      goto LABEL_17;
    }

    v33 = a1[1];
    if ((*(v33 + 275) & 1) == 0)
    {
      dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
      v33 = a1[1];
      *(v33 + 275) = 1;
    }

    v34 = (*(v33 + 4531) + 16 * v28);
    *v34 = *(v33 + 331);
    v34[1] = v9;
    if ((*(v33 + 273) & 1) == 0)
    {
      dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
      v33 = a1[1];
      *(v33 + 273) = 1;
    }

    *v34 = data_entry_store<unsigned long long,false,true,false>(v33 + 315, buf);
    v35 = a1[1];
    ++*(v35 + 4539);
    if ((*(v35 + 274) & 1) == 0)
    {
      dataMap<unsigned long long,false,true,false>::_data_map_dirty(a1);
      v35 = a1[1];
      *(v35 + 274) = 1;
    }

    if ((v41 & 4) != 0)
    {
      v29 = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v9, v28, 0, 0, *(v35 + 4539));
    }

    *v29 = v28;
LABEL_48:
    v20 = v28;
    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v18 + 312) = v36;
  CIOnThreadCleanUpReset(v42);
  dropThreadId(v45, 1, add_explicit + 1);
  CICleanUpReset(v45, v43);
  v20 = 0;
LABEL_21:
  (*(*a1 + 112))(a1);
  return v20;
}

void dataMap<unsigned long long,false,true,false>::_data_map_set_seen_id(uint64_t a1, CFIndex a2)
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_get_data_locked(uint64_t a1, unint64_t a2, void *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v6 = *(v5 + 4531);
  v7 = *(v5 + 4539);
  if (v7 <= a2 || (v6 + 1) <= 1)
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
    v41 = v7;
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

  v13 = *(v6 + 16 * a2);
  if (v13 == 1)
  {
    return 0;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v14 = *(v5 + 216);
  v33 = 0;
  v15 = *(v5 + 5619) + v13;
  if (v15 >= *(v5 + 331))
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
    v22 = *(v21 + 331);
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

  dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, *(v5 + 5619) + v13, &v30, &v33);
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
    v19 = *(*(a1 + 8) + 331);
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

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_unlock(uint64_t a1)
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

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_rdlock(uint64_t a1)
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_make_read_only(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v53 = *MEMORY[0x1E69E9840];
  v3 = *(v1[1] + 277);
  if (dataMap<unsigned long long,false,true,false>::_data_map_commit(v1, 0))
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v52, 0x400uLL);
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

  v7 = fd_name(v5, v52, 0x400uLL);
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
  v15 = *(v14 + 331);
  v16 = (*(v14 + 4483) + 151) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v14 + 4467) + v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (fd_truncate(v12, (v15 + v17 + 15) & 0xFFFFFFFFFFFFFFF8))
  {
    _fd_unlink_with_origin(v13, 0);
    fd_release(v13);
    return 0xFFFFFFFFLL;
  }

  v50 = 0;
  v49 = 0u;
  v48 = 0u;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN7dataMapIyLb0ELb1ELb0EE28data_map_make_read_only_implILb0EEENSt3__19enable_ifIXntT_EiE4typeEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_95;
  aBlock[4] = v2;
  v47[0] = v13;
  v43 = v13;
  v47[1] = (v15 + v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v49) = 1;
  BYTE5(v49) = 1;
  *(&v49 + 1) = _Block_copy(aBlock);
  LOBYTE(v50) = 26;
  bzero(v51, 0x1000uLL);
  _windowsMapInit(v47, 1, 1);
  v44 = (v15 + v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  *&v48 = v44;
  Ptr = _windowsGetPtr(v47, 0, 136);
  v19 = _windowsGetPtr(v47, 0x88uLL, v16 - 136);
  v20 = _windowsGetPtr(v47, v16, v17 - v16);
  v21 = *(v2[1] + 307);
  v22 = *(v21 + 76);
  v24 = v21[3];
  v23 = v21[4];
  *(Ptr + 32) = v21[2];
  *(Ptr + 48) = v24;
  *(Ptr + 64) = v23;
  *(Ptr + 76) = v22;
  v25 = v21[1];
  *Ptr = *v21;
  *(Ptr + 16) = v25;
  *(Ptr + 92) = 14;
  *(Ptr + 104) = 136;
  *(Ptr + 112) = v16;
  *(Ptr + 120) = v17;
  memcpy(v19, *(v2[1] + 4499), *(v2[1] + 4483));
  memcpy(v20, *(v2[1] + 4531), *(v2[1] + 4467));
  if (v15)
  {
    for (i = 0; i < v15; i += v27)
    {
      if (v15 - i >= 0x100000)
      {
        v27 = 0x100000;
      }

      else
      {
        v27 = v15 - i;
      }

      v28 = _windowsGetPtr(v47, i + v17, v27);
      fd_pread(*(v2[1] + 315), v28, v27, i);
    }
  }

  *(Ptr + 96) = v44;
  if (v49 >= 1)
  {
    v29 = 0;
    do
    {
      storageWindowSync(v51[v29++], 1);
    }

    while (v29 < v49);
  }

  storageWindowsUnmap(v47);
  fd_release(v43);
  free(*(v2[1] + 307));
  v30 = v2[1];
  *(v30 + 307) = 0;
  _fd_unlink_with_origin(*(v30 + 220), 0);
  fd_release(*(v2[1] + 220));
  v31 = v2[1];
  *(v31 + 220) = 0;
  munmap(*(v31 + 4499), *(v31 + 4491));
  v32 = v2[1];
  *(v32 + 4499) = -1;
  _fd_unlink_with_origin(*(v32 + 236), 0);
  fd_release(*(v2[1] + 236));
  v33 = v2[1];
  *(v33 + 236) = 0;
  munmap(*(v33 + 4531), *(v33 + 4523));
  v34 = v2[1];
  *(v34 + 4531) = -1;
  _fd_unlink_with_origin(*(v34 + 4515), 0);
  fd_release(*(v2[1] + 4515));
  v35 = v2[1];
  *(v35 + 4515) = 0;
  storageWindowsUnmap(v35 + 315);
  v36 = *(v2[1] + 315);
  _fd_unlink_with_origin(v36, 0);
  fd_release(v36);
  if (*(v2[1] + 277))
  {
    v37 = 3;
  }

  else
  {
    v37 = 0;
  }

  v38 = fd_create_protected(v6, v8, 0, v37);
  v39 = v2[1];
  *(v39 + 220) = v38;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 0x40000000;
  v45[2] = ___ZN7dataMapIyLb0ELb1ELb0EE28data_map_make_read_only_implILb0EEENSt3__19enable_ifIXntT_EiE4typeEv_block_invoke_2;
  v45[3] = &__block_descriptor_tmp_96;
  v45[4] = v2;
  *(v39 + 351) = 257;
  *(v39 + 315) = v38;
  *(v39 + 323) = v44;
  *(v39 + 347) = 1;
  *(v39 + 355) = _Block_copy(v45);
  *(v39 + 363) = 26;
  bzero((v39 + 371), 0x1000uLL);
  _windowsMapInit((v2[1] + 315), 1, 1);
  *(v2[1] + 331) = v44;
  v40 = v2[1];
  v41 = _windowsGetPtr(v40 + 315, 0, 128);
  *(v40 + 283) = v41;
  *(v40 + 307) = _windowsGetPtr(v40 + 315, 0, 92);
  *(v40 + 4499) = _windowsGetPtr(v40 + 315, 0x88uLL, v16 - 136);
  v42 = _windowsGetPtr(v40 + 315, v16, v17 - v16);
  result = 0;
  *(v40 + 4531) = v42;
  *(v40 + 5619) = *(v41 + 120);
  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::_data_map_commit(uint64_t *a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 208))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v31 = 0;
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

  LODWORD(v38[0]) = v9;
  *buf = v10;
  v29 = v8;
  v30 = v12;
  if (!_setjmp(v13))
  {
    v17 = *(*(a1[1] + 307) + 16);
    if (v17 == 1)
    {
      goto LABEL_13;
    }

    if (v17)
    {
      v19 = 0xFFFFFFFFLL;
      goto LABEL_18;
    }

    v18 = (*(*a1 + 224))(a1, a2);
    if (!v18)
    {
      v18 = (*(*a1 + 232))(a1, a2);
      if (!v18)
      {
LABEL_13:
        v18 = (*(*a1 + 56))(a1);
        if (!v18)
        {
          v18 = (*(*a1 + 64))(a1);
          if (!v18)
          {
            v18 = (*(*a1 + 72))(a1);
          }
        }
      }
    }

    v19 = v18;
LABEL_18:
    v31 = 1;
    v20 = threadData[9 * LODWORD(v38[0]) + 1] + 320 * *buf;
    *(v20 + 312) = v14;
    v21 = *(v20 + 232);
    if (v21)
    {
      v21(*(v20 + 288));
    }

    dropThreadId(LODWORD(v38[0]), 0, add_explicit + 1);
    v16 = v19;
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v28 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v28, 2u);
  }

  *(v13 + 312) = v14;
  CIOnThreadCleanUpReset(v29);
  dropThreadId(LODWORD(v38[0]), 1, add_explicit + 1);
  CICleanUpReset(LODWORD(v38[0]), v30);
  v16 = 0xFFFFFFFFLL;
LABEL_21:
  if ((v31 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  memset(v38, 0, sizeof(v38));
  v22 = *__error();
  v23 = _SILogForLogForCategory(7);
  v24 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = fd_name(*(a1[1] + 220), v38, 0x100uLL);
    if (a2)
    {
      v26 = "commit";
    }

    else
    {
      v26 = "syncless commit";
    }

    v27 = (*(*a1 + 96))(a1);
    *buf = 136315650;
    v33 = v25;
    v34 = 2080;
    v35 = v26;
    v36 = 2048;
    v37 = v27;
    _os_log_impl(&dword_1C278D000, v23, v24, "%s complete %s with count: %llu", buf, 0x20u);
  }

  *__error() = v22;
  (*(*a1 + 216))(a1);
  return v16;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_commit_shadow_complete(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    v4 = *(v2 + 307);
    if (*(v4 + 16) == 2)
    {
      *(v4 + 44) = *(v4 + 20);
      *(v4 + 60) = *(v4 + 36);
      *(v4 + 16) = 1;
      fd_pwrite(*(v2 + 220), v4, 0x5CuLL, 0);
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_commit_shadow(uint64_t a1)
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_shadow(uint64_t a1)
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

      fd_pwrite(sibling_with_suffix_protected, v4, 0x5CuLL, 0);
      return *(*(a1 + 8) + 278);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_commit_sync(uint64_t a1)
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
      fd_pwrite(*(v2 + 220), v4, 0x5CuLL, 0);
      fd_sync(*(*(a1 + 8) + 220), 0);
      return *(*(a1 + 8) + 278);
    }
  }

  return result;
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_flush(uint64_t *a1)
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_validate(void *a1)
{
  v96 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  v3 = a1[1];
  v2 = 1;
  if (*(v3 + 331))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(v3 + 216);
    while (1)
    {
      v66 = 0;
      v67 = 0;
      v8 = *(v3 + 4539);
      v68 = 0;
      v9 = *(v3 + 4531);
      if (v5 < v8 && (v9 + 1) > 1)
      {
        v14 = (v9 + v4);
        v13 = 1;
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
        v11 = *__error();
        v12 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v31 = a1[1];
          v32 = fd_name(*(v31 + 220), v82, 0x100uLL);
          *buf = 136316418;
          v71 = "_data_map_get_offset_entry_impl";
          v72 = 1024;
          v73 = 362;
          v74 = 2048;
          v75 = v5;
          v76 = 2048;
          v77 = v8;
          v78 = 2048;
          v79 = v31;
          v80 = 2080;
          v81 = v32;
          _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        v13 = 0;
        v14 = 0;
        *__error() = v11;
      }

      v69 = 0;
      v15 = a1[1];
      v16 = *(v15 + 5619) + v6;
      if (v16 >= *(v15 + 331))
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
        v40 = *__error();
        v41 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_47;
        }

        v42 = a1[1];
        v43 = *(v42 + 331);
        v44 = fd_name(*(v42 + 220), v82, 0x100uLL);
        *buf = 136316418;
        v71 = "_data_map_get_data_entry";
        v72 = 1024;
        v73 = 397;
        v74 = 2048;
        v75 = v16;
        v76 = 2048;
        v77 = v43;
        v78 = 2048;
        v79 = v42;
        v80 = 2080;
        v81 = v44;
        v45 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
        goto LABEL_77;
      }

      dataMap<unsigned long long,false,true,false>::data_entry_restore<false>(a1, v16, &v66, &v69);
      if (v69 == 1)
      {
        break;
      }

      if ((v13 & 1) == 0 || *v14 != v6)
      {
        v33 = *__error();
        v34 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *v82 = 136315394;
          *&v82[4] = "_data_map_validate";
          *&v82[12] = 1024;
          *&v82[14] = 827;
          _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch offset ids ", v82, 0x12u);
        }

        *__error() = v33;
        v35 = *__error();
        v36 = _SILogForLogForCategory(0);
        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          if (!v37)
          {
            goto LABEL_72;
          }

          v38 = *v14;
          *v82 = 136316418;
          *&v82[4] = "_data_map_validate";
          *&v82[12] = 1024;
          *&v82[14] = 829;
          *&v82[18] = 2048;
          *&v82[20] = v5;
          *&v82[28] = 2048;
          *&v82[30] = v6;
          *&v82[38] = 2048;
          *&v82[40] = v38;
          LOWORD(v83) = 2080;
          *(&v83 + 2) = v67;
          v39 = "%s:%d: sid: %llu so: %ld oo:%ld %s";
LABEL_65:
          v47 = v36;
          v48 = 58;
          goto LABEL_71;
        }

        if (!v37)
        {
          goto LABEL_72;
        }

        *v82 = 136316162;
        *&v82[4] = "_data_map_validate";
        *&v82[12] = 1024;
        *&v82[14] = 831;
        *&v82[18] = 2048;
        *&v82[20] = v5;
        *&v82[28] = 2048;
        *&v82[30] = v6;
        *&v82[38] = 2080;
        *&v82[40] = v67;
        v39 = "%s:%d: offset not found for %llu offset 0x%lx %s";
        goto LABEL_70;
      }

      v17 = v66;
      if (v5)
      {
        v18 = v67;
        v19 = a1[1];
        if (*(v19 + 282) == 1)
        {
          v20 = LegacyHash(&v67[v7], (v66 - v7));
        }

        else
        {
          v20 = commonHash(v66 - v7, &v67[v7]);
        }

        bucket_entry = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v20, v5, 0, 0, *(v19 + 4539));
        v22 = bucket_entry;
        if (!bucket_entry)
        {
          v49 = 0;
          goto LABEL_53;
        }

        if (v5 != *bucket_entry)
        {
          v49 = bucket_entry;
LABEL_53:
          v50 = *__error();
          v51 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *v82 = 136315394;
            *&v82[4] = "_data_map_validate";
            *&v82[12] = 1024;
            *&v82[14] = 841;
            _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch hash ids ", v82, 0x12u);
          }

          *__error() = v50;
          v35 = *__error();
          v52 = _SILogForLogForCategory(0);
          v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
          if (v22)
          {
            if (v53)
            {
              v54 = *v49;
              *v82 = 136316418;
              *&v82[4] = "_data_map_validate";
              *&v82[12] = 1024;
              *&v82[14] = 843;
              *&v82[18] = 2048;
              *&v82[20] = v5;
              *&v82[28] = 2048;
              *&v82[30] = v54;
              *&v82[38] = 2048;
              *&v82[40] = v6;
              LOWORD(v83) = 2080;
              *(&v83 + 2) = v18;
              v55 = "%s:%d: sid: %llu hid: %llu offset: %ld %s";
              v56 = v52;
              v57 = 58;
              goto LABEL_79;
            }
          }

          else if (v53)
          {
            *v82 = 136316162;
            *&v82[4] = "_data_map_validate";
            *&v82[12] = 1024;
            *&v82[14] = 845;
            *&v82[18] = 2048;
            *&v82[20] = v5;
            *&v82[28] = 2048;
            *&v82[30] = v6;
            *&v82[38] = 2080;
            *&v82[40] = v18;
            v55 = "%s:%d: hash entry not found for %llu offset 0x%lx %s";
            v56 = v52;
            v57 = 48;
LABEL_79:
            _os_log_error_impl(&dword_1C278D000, v56, OS_LOG_TYPE_ERROR, v55, v82, v57);
          }

          v2 = 0;
          goto LABEL_73;
        }

        v23 = a1[1];
        v24 = dataMap<unsigned long long,false,true,false>::dm_hash(*(v23 + 282), v18, v17);
        v25 = dataMap<unsigned long long,false,true,false>::_data_map_get_bucket_entry(a1, v24, 0, v18, v17, *(v23 + 4539));
        v26 = v25;
        if (!v25)
        {
          v58 = 0;
          goto LABEL_60;
        }

        if (v5 != *v25)
        {
          v58 = v25;
LABEL_60:
          v59 = *__error();
          v60 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *v82 = 136315394;
            *&v82[4] = "_data_map_validate";
            *&v82[12] = 1024;
            *&v82[14] = 855;
            _os_log_error_impl(&dword_1C278D000, v60, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch hash ", v82, 0x12u);
          }

          *__error() = v59;
          v35 = *__error();
          v36 = _SILogForLogForCategory(0);
          v61 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
          if (v26)
          {
            if (!v61)
            {
              goto LABEL_72;
            }

            v62 = *v58;
            *v82 = 136316418;
            *&v82[4] = "_data_map_validate";
            *&v82[12] = 1024;
            *&v82[14] = 857;
            *&v82[18] = 2048;
            *&v82[20] = v5;
            *&v82[28] = 2048;
            *&v82[30] = v62;
            *&v82[38] = 2048;
            *&v82[40] = v6;
            LOWORD(v83) = 2080;
            *(&v83 + 2) = v18;
            v39 = "%s:%d: sid: %llu hid: %llu offset: %ld %s";
            goto LABEL_65;
          }

          if (!v61)
          {
            goto LABEL_72;
          }

          *v82 = 136316162;
          *&v82[4] = "_data_map_validate";
          *&v82[12] = 1024;
          *&v82[14] = 859;
          *&v82[18] = 2048;
          *&v82[20] = v5;
          *&v82[28] = 2048;
          *&v82[30] = v6;
          *&v82[38] = 2080;
          *&v82[40] = v18;
          v39 = "%s:%d: hash entry not found for %llu offset 0x%lx %s";
LABEL_70:
          v47 = v36;
          v48 = 48;
          goto LABEL_71;
        }
      }

      if (v17 < 0x80)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v17 >> 14)
      {
        v28 = 3;
      }

      else
      {
        v28 = v27;
      }

      if (v17 >> 21)
      {
        v29 = 4;
      }

      else
      {
        v29 = v28;
      }

      if (v17 >> 28)
      {
        v30 = 5;
      }

      else
      {
        v30 = v29;
      }

      v6 += (v30 + v17);
      ++v5;
      v3 = a1[1];
      v4 += 16;
      if (v6 >= *(v3 + 331))
      {
        v2 = 1;
        goto LABEL_74;
      }
    }

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
    v40 = *__error();
    v41 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    v64 = fd_name(*(a1[1] + 220), v82, 0x100uLL);
    v65 = *(a1[1] + 331);
    *buf = 136316418;
    v71 = "_data_map_get_data_entry";
    v72 = 1024;
    v73 = 393;
    v74 = 2080;
    v75 = v64;
    v76 = 2048;
    v77 = v16;
    v78 = 2048;
    v79 = v65;
    v80 = 2048;
    v81 = v66;
    v45 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_77:
    _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, v45, buf, 0x3Au);
LABEL_47:
    *__error() = v40;
    v35 = *__error();
    v46 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_72;
    }

    *v82 = 136315394;
    *&v82[4] = "_data_map_validate";
    *&v82[12] = 1024;
    *&v82[14] = 814;
    v39 = "%s:%d: entry exceeds storage";
    v47 = v46;
    v48 = 18;
LABEL_71:
    _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, v39, v82, v48);
LABEL_72:
    v2 = 1;
LABEL_73:
    *__error() = v35;
  }

LABEL_74:
  (*(*a1 + 112))(a1);
  return v2;
}

void dataMap<unsigned long long,false,true,false>::data_map_destroy(uint64_t a1)
{
  if (*(a1 + 8))
  {
    makeThreadId();
    v2 = *(a1 + 8);
    if ((*(v2 + 283) + 1) >= 2)
    {
      v72 = 0;
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

      v70 = v19;
      v71 = v18;
      v68 = v17;
      v69 = v21;
      if (_setjmp(v22))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v67 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v67, 2u);
        }

        *(v22 + 312) = v23;
        CIOnThreadCleanUpReset(v68);
        dropThreadId(v71, 1, add_explicit + 1);
        CICleanUpReset(v71, v69);
        v25 = 0;
      }

      else
      {
        v52 = *(*(*(a1 + 8) + 283) + 96);
        v72 = 1;
        v53 = threadData[9 * v71 + 1] + 320 * v70;
        *(v53 + 312) = v23;
        v54 = *(v53 + 232);
        if (v54)
        {
          v54(*(v53 + 288));
        }

        dropThreadId(v71, 0, add_explicit + 1);
        v25 = v52;
      }

      v55 = v25;
      if ((v72 & 1) == 0)
      {
        v55 = *(*(a1 + 8) + 291);
      }

      munmap(*(*(a1 + 8) + 283), v55);
      v56 = *(a1 + 8);
      *(v56 + 283) = -1;
      fd_release(*(v56 + 220));
      v57 = *(a1 + 8);
      *(v57 + 220) = 0;
      v58 = *(v57 + 228);
      if (v58)
      {
        fd_release(v58);
        v59 = *(a1 + 8);
        *(v59 + 228) = 0;
        v60 = v59;
      }

      else
      {
        v60 = v57;
      }

      v51 = v60;
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

      v70 = v8;
      v71 = v7;
      v68 = v6;
      v69 = v10;
      if (_setjmp(v11))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v67 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v67, 2u);
        }

        *(v11 + 312) = v12;
        CIOnThreadCleanUpReset(v68);
        dropThreadId(v71, 1, v3 + 1);
        CICleanUpReset(v71, v69);
      }

      else
      {
        v26 = *(a1 + 8);
        v27 = *(v26 + 307);
        if (v27 && !*(v27 + 16))
        {
          v28 = *(a1 + 8);
          if (*(v26 + 274) == 1)
          {
            v29 = v26 + 4499;
            v30 = *v29;
            v31 = 8 * *(v29 + 8);
            fd_system_status_stall_if_busy();
            msync(v30, v31, 4);
            _fd_unlink_with_origin(*(*(a1 + 8) + 236), 0);
            munmap(*(*(a1 + 8) + 4499), *(*(a1 + 8) + 4491));
            v32 = *(a1 + 8);
            *(v32 + 4499) = -1;
            v28 = v32;
          }

          v33 = v28;
          if (*(v28 + 273) == 1)
          {
            storageWindowsKillPages(v28 + 315);
            storageWindowsUnmap(*(a1 + 8) + 315);
            storageWindowsClose(*(a1 + 8) + 315);
            fd_truncate(*(*(a1 + 8) + 315), *(*(*(a1 + 8) + 307) + 20));
            v33 = *(a1 + 8);
          }

          if (*(v33 + 275) == 1)
          {
            v34 = v33 + 4096;
            v35 = *(v34 + 435);
            v36 = 16 * *(v34 + 443);
            fd_system_status_stall_if_busy();
            msync(v35, v36, 4);
            munmap(*(*(a1 + 8) + 4531), *(*(a1 + 8) + 4523));
            v37 = *(a1 + 8);
            *(v37 + 4531) = -1;
            fd_truncate(*(v37 + 4515), 16 * *(v37 + 4539));
          }
        }

        v38 = threadData[9 * v71 + 1] + 320 * v70;
        *(v38 + 312) = v12;
        v39 = *(v38 + 232);
        if (v39)
        {
          v39(*(v38 + 288));
        }

        dropThreadId(v71, 0, v3 + 1);
      }

      v40 = *(a1 + 8);
      v41 = *(v40 + 307);
      if (v41)
      {
        free(v41);
        v42 = *(a1 + 8);
        *(v42 + 307) = 0;
        v40 = v42;
      }

      fd_release(*(v40 + 220));
      v43 = *(a1 + 8);
      *(v43 + 220) = 0;
      v44 = *(v43 + 4531);
      if (v44 != -1)
      {
        munmap(v44, *(v43 + 4523));
        v45 = *(a1 + 8);
        *(v45 + 4531) = -1;
        *(v45 + 4523) = 0;
        v43 = v45;
      }

      fd_release(*(v43 + 4515));
      v46 = *(a1 + 8);
      *(v46 + 4515) = 0;
      storageWindowsUnmap(v46 + 315);
      storageWindowsClose(*(a1 + 8) + 315);
      v47 = *(a1 + 8);
      v48 = *(v47 + 4499);
      if (v48 != -1)
      {
        munmap(v48, *(v47 + 4491));
        v49 = *(a1 + 8);
        *(v49 + 4499) = -1;
        *(v49 + 4491) = 0;
        v47 = v49;
      }

      fd_release(*(v47 + 236));
      v50 = *(a1 + 8);
      *(v50 + 236) = 0;
      v51 = v50;
    }

    v61 = *(v51 + 228);
    if (v61)
    {
      fd_release(v61);
      v62 = *(a1 + 8);
      *(v62 + 228) = 0;
      v51 = v62;
    }

    v63 = *(v51 + 264);
    v64 = v51;
    if (v63)
    {
      v65 = v63[2];
      if (v65)
      {
        CFRelease(v65);
      }

      free(v63);
      v66 = *(a1 + 8);
      *(v66 + 264) = 0;
      v64 = v66;
    }

    if ((v64[4].__opaque[12] & 1) == 0)
    {
      db_rwlock_destroy(v64);
      v64 = *(a1 + 8);
    }

    free(v64);
  }
}

uint64_t dataMap<unsigned long long,false,true,false>::data_map_init(uint64_t (***a1)(void, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t dataMap<unsigned long long,false,true,false>::data_map_init_with_ctx(uint64_t a1, uint64_t a2)
{
  v203 = *MEMORY[0x1E69E9840];
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

  v179 = v9;
  v180 = v8;
  v177 = v7;
  v178 = v11;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", __str, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v177);
    dropThreadId(v180, 1, add_explicit + 1);
    CICleanUpReset(v180, v178);
    return 0;
  }

  v168 = v13;
  v16 = *a2;
  __source = *(a2 + 8);
  v17 = *(a2 + 20);
  v165 = *(a2 + 16);
  bzero(__str, 0x400uLL);
  v18 = malloc_type_calloc(1uLL, 0x1603uLL, 0x10A0040AAFE2AE5uLL);
  *(a1 + 8) = v18;
  *(v18 + 63) = *(a2 + 72);
  *(v18 + 4587) = *(a2 + 24);
  *(v18 + 244) = *(a2 + 56);
  *(v18 + 65) = 0;
  v18[277] = BYTE1(v17) & 1;
  v18[276] = (v17 & 8) != 0;
  *(v18 + 283) = -1;
  *(v18 + 307) = 0;
  *(v18 + 4531) = -1;
  *(v18 + 4499) = -1;
  v169 = add_explicit;
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
    v18 = *(a1 + 8);
  }

  v19 = *(a2 + 32);
  *(v18 + 347) = 0;
  *(v18 + 5619) = 0;
  *(v18 + 5627) = v19;
  *(v18 + 323) = 0;
  *(v18 + 315) = 0;
  strlcpy(v18 + 4595, __source, 0x400uLL);
  v163 = v17 & 2;
  if ((v17 & 2) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = 536871426;
  }

  v176 = 0;
  makeThreadId();
  v167 = a1;
  v166 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v21 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(a1 + 8), 0, v166 + 1);
  v23 = v22;
  v24 = v21;
  v25 = HIDWORD(v21);
  v27 = v26;
  v28 = threadData[9 * v21 + 1] + 320 * HIDWORD(v21);
  v29 = *(v28 + 312);
  v30 = *(v28 + 224);
  if (v30)
  {
    v30(*(v28 + 288));
  }

  v174 = v25;
  v175 = v24;
  v172 = v23;
  v173 = v27;
  if (_setjmp(v28))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v187 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v187, 2u);
    }

    *(v28 + 312) = v29;
    CIOnThreadCleanUpReset(v172);
    dropThreadId(v175, 1, v166 + 1);
    CICleanUpReset(v175, v173);
    v31 = v168;
    v32 = v167;
    if (v176)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (!__source || (v33 = strlen(__source), v16 == -1) || v33 - 241 <= 0xFFFFFFFFFFFFFF0FLL)
  {
    v55 = *__error();
    v56 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *v187 = 136315394;
      *&v187[4] = "data_map_init_with_ctx";
      *&v187[12] = 1024;
      *&v187[14] = 1111;
      _os_log_error_impl(&dword_1C278D000, v56, OS_LOG_TYPE_ERROR, "%s:%d: param error", v187, 0x12u);
    }

LABEL_40:
    v57 = v55;
    v31 = v168;
LABEL_41:
    v32 = v167;
LABEL_42:
    *__error() = v57;
LABEL_43:
    v58 = 0;
    goto LABEL_44;
  }

  v164 = v17;
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
      v74 = 3;
    }

    else
    {
      v74 = 0;
    }

LABEL_66:
    snprintf(__str, 0x400uLL, "%s.header", __source);
    v77 = fd_create_protected(v16, __str, v34, 3u);
    *(*(v167 + 8) + 220) = v77;
    *(*(v167 + 8) + 299) = fd_lseek(v77, 0, 2);
    snprintf(__str, 0x400uLL, "%s.data", __source);
    v78 = fd_create_protected(v16, __str, v34, v74);
    v79 = v78;
    if ((v17 & 3) != 0 || (memset(&buf, 0, sizeof(buf)), fd_stat(v78, &buf)) || (v80 = buf.st_blocks << 9, buf.st_blocks << 9 <= buf.st_size + 0x400000))
    {
      v82 = v79;
    }

    else
    {
      bzero(v187, 0x400uLL);
      v161 = *__error();
      v81 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *v181 = 134218498;
        v182 = v80;
        v183 = 2048;
        st_size = buf.st_size;
        v185 = 2080;
        v186 = __str;
        _os_log_impl(&dword_1C278D000, v81, OS_LOG_TYPE_DEFAULT, "found allocated size %lld for %lld %s", v181, 0x20u);
      }

      *__error() = v161;
      snprintf(v187, 0x400uLL, "tmp.%s.data.1", __source);
      v82 = fd_create_protected(v16, v187, 1538, v74);
      if (fd_copyfile(v79, v82, 0) || (snprintf(v187, 0x400uLL, "tmp.%s.data.2", __source), fd_rename(v79, v187)) || fd_rename(v82, __str))
      {
        v83 = v82;
        v82 = v79;
      }

      else
      {
        _fd_unlink_with_origin(v79, 0);
        fd_release(v79);
        v83 = 0;
      }

      v84 = v83;
      _fd_unlink_with_origin(v83, 0);
      fd_release(v84);
    }

    v85 = fd_lseek(v82, 0, 2);
    v86 = *(v167 + 8);
    v170[0] = MEMORY[0x1E69E9820];
    v170[1] = 0x40000000;
    v170[2] = ___ZN7dataMapIyLb0ELb1ELb0EE22data_map_init_with_ctxEP17data_map_init_ctx_block_invoke_79;
    v170[3] = &__block_descriptor_tmp_80_6103;
    v170[4] = v167;
    *(v86 + 351) = (v17 & 2) >> 1;
    *(v86 + 315) = v82;
    *(v86 + 323) = v85;
    *(v86 + 347) = 1;
    *(v86 + 352) = 1;
    *(v86 + 355) = _Block_copy(v170);
    *(v86 + 363) = 26;
    bzero((v86 + 371), 0x1000uLL);
    snprintf(__str, 0x400uLL, "%s.offsets", __source);
    v87 = fd_create_protected(v16, __str, v34, 3u);
    *(*(v167 + 8) + 4515) = v87;
    *(*(v167 + 8) + 4467) = fd_lseek(v87, 0, 2);
    snprintf(__str, 0x400uLL, "%s.buckets", __source);
    v88 = fd_create_protected(v16, __str, 514, 3u);
    *(*(v167 + 8) + 236) = v88;
    v89 = fd_lseek(v88, 0, 2);
    v90 = *(v167 + 8);
    *(v90 + 4483) = v89;
    if (v17)
    {
      v31 = v168;
      if (fd_truncate(*(v90 + 220), 92) == -1)
      {
        v116 = *__error();
        v117 = _SILogForLogForCategory(0);
        v32 = v167;
        if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_152;
        }

        *v187 = 136315394;
        *&v187[4] = "data_map_init_with_ctx";
        *&v187[12] = 1024;
        *&v187[14] = 1241;
        v118 = "%s:%d: fd_truncate error";
      }

      else
      {
        v93 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
        v32 = v167;
        v94 = *(v167 + 8);
        *(v94 + 299) = 92;
        *(v94 + 307) = v93;
        *v93 = 0x446174615064;
        *(v93 + 12) = v165;
        *(v93 + 2) = 14;
        *(v93 + 20) = 0;
        v95 = MEMORY[0x1E69E9AC8];
        if (fd_truncate(*(v94 + 4515), *MEMORY[0x1E69E9AC8] & 0xFFFFFFFFFFFFFFF0) == -1)
        {
          v116 = *__error();
          v117 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_152;
          }

          *v187 = 136315394;
          *&v187[4] = "data_map_init_with_ctx";
          *&v187[12] = 1024;
          *&v187[14] = 1267;
          v118 = "%s:%d: fd_truncate error";
        }

        else
        {
          v96 = fd_mmap(*(*(v167 + 8) + 4515), 0x100000, v163 ^ 3u, 1, 0);
          v97 = *(v167 + 8);
          *(v97 + 4531) = v96;
          if (v96 == -1)
          {
            v116 = *__error();
            v117 = _SILogForLogForCategory(0);
            if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_152;
            }

            *v187 = 136315394;
            *&v187[4] = "data_map_init_with_ctx";
            *&v187[12] = 1024;
            *&v187[14] = 1272;
            v118 = "%s:%d: offsets fd_mmap error";
          }

          else
          {
            v98 = v97;
            v99 = v97 + 4096;
            *(v99 + 427) = 0x100000;
            v100 = *v95;
            *(v99 + 371) = *v95 & 0xFFFFFFFFFFFFFFF0;
            *(v99 + 379) = v100 >> 4;
            v101 = v100 & 0xFFFFFFFFFFFFFFF8;
            if (fd_truncate(*(v98 + 236), v100 & 0xFFFFFFFFFFFFFFF8) == -1)
            {
              v116 = *__error();
              v117 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_152;
              }

              *v187 = 136315394;
              *&v187[4] = "data_map_init_with_ctx";
              *&v187[12] = 1024;
              *&v187[14] = 1282;
              v118 = "%s:%d: fd_truncate error";
            }

            else
            {
              v102 = fd_mmap(*(*(v167 + 8) + 236), 0x100000, v163 ^ 3u, 1, 0);
              v103 = *(v167 + 8);
              *(v103 + 4499) = v102;
              if (v102 == -1)
              {
                v116 = *__error();
                v117 = _SILogForLogForCategory(0);
                if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_152;
                }

                *v187 = 136315394;
                *&v187[4] = "data_map_init_with_ctx";
                *&v187[12] = 1024;
                *&v187[14] = 1288;
                v118 = "%s:%d: hash fd_mmap error";
              }

              else
              {
                *(v103 + 4483) = v101;
                *(v103 + 4491) = 0x100000;
                v104 = *v95;
                v105 = *v95 >> 3;
                *(*(v103 + 307) + 28) = v105;
                *(v103 + 4507) = v105;
                if (_storageWindowsSetFileSize((v103 + 315), v104))
                {
                  data_entry_store<unsigned long long,false,true,false>(*(v167 + 8) + 315, dword_1E8194788);
                  v106 = *(v167 + 8);
                  v107 = *(v106 + 307);
                  *(v107 + 20) = *(v106 + 331);
                  v108 = *(v106 + 4531);
                  v109 = (v107 + 36);
                  *v108 = 0;
                  v108[1] = 0;
                  v110 = v106;
                  goto LABEL_133;
                }

                v116 = *__error();
                v117 = _SILogForLogForCategory(0);
                if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_152;
                }

                *v187 = 136315394;
                *&v187[4] = "data_map_init_with_ctx";
                *&v187[12] = 1024;
                *&v187[14] = 1300;
                v118 = "%s:%d: fd_truncate error";
              }
            }
          }
        }
      }
    }

    else
    {
      if (*(v90 + 299) <= 0x5BuLL)
      {
        v55 = *__error();
        v91 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          v32 = v167;
          v92 = *(*(v167 + 8) + 299);
          *v187 = 136315650;
          *&v187[4] = "data_map_init_with_ctx";
          *&v187[12] = 1024;
          *&v187[14] = 1322;
          *&v187[18] = 2048;
          *&v187[20] = v92;
          _os_log_error_impl(&dword_1C278D000, v91, OS_LOG_TYPE_ERROR, "%s:%d: invalid header size %ld", v187, 0x1Cu);
          v57 = v55;
          v31 = v168;
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v111 = v17;
      v112 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
      v32 = v167;
      v113 = *(v167 + 8);
      *(v113 + 307) = v112;
      v114 = (v17 >> 2) & 1;
      if (v164 < 0)
      {
        sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v113 + 220), ".shadow", 0);
        v113 = *(v167 + 8);
        v115 = v163;
        if (sibling_with_suffix_protected)
        {
          v120 = sibling_with_suffix_protected;
          v121 = (v111 >> 2) & 1;
          if (!fd_copyfile(sibling_with_suffix_protected, *(v113 + 220), 0))
          {
            v121 = 0;
          }

          fd_release(v120);
          v113 = *(v167 + 8);
          v114 = v121;
        }

        v31 = v168;
      }

      else
      {
        v31 = v168;
        v115 = v163;
      }

      if (fd_pread(*(v113 + 220), *(v113 + 307), 0x5CuLL, 0) == 92)
      {
        *(*(v167 + 8) + 331) = *(*(*(v167 + 8) + 307) + 20);
        v122 = *(v167 + 8);
        v123 = (v122 + 4515);
        v124 = *(*(v122 + 307) + 36);
        v123[3] = v124;
        fd_truncate(*v123, 16 * v124);
        fd_truncate(*(*(v167 + 8) + 4515), *(*(v167 + 8) + 4467));
        v125 = *(v167 + 8);
        *(v125 + 4475) = *(v125 + 4467) >> 4;
        v126 = *(v125 + 307);
        *(v125 + 4507) = *(v126 + 28);
        *(v125 + 4563) = *(v126 + 68);
        *(v125 + 4579) = *(v126 + 84);
        *(v125 + 282) = *(v126 + 8) < 9u;
        if (v114)
        {
          v127 = *(v126 + 20);
          v128 = *(v126 + 44);
          if (v127 < v128)
          {
            goto LABEL_43;
          }

          if (v128 == v127)
          {
            v129 = v126;
            v130 = v125;
          }

          else
          {
            if (!v115)
            {
              *(v126 + 20) = v128;
            }

            *(v125 + 331) = v128;
            v130 = *(v167 + 8);
            v129 = *(v130 + 307);
          }

          v131 = *(v130 + 4539);
          v132 = *(v129 + 60);
          if (v131 < v132)
          {
            goto LABEL_43;
          }

          if (v131 != v132)
          {
            if (!v115)
            {
              *(v129 + 36) = v132;
              *(v129 + 28) = 0;
              *(v129 + 20) = *(v129 + 44);
            }

            *(v130 + 4539) = v132;
            *(v130 + 4507) = 0;
          }

          v125 = v130;
        }

        v133 = MEMORY[0x1E69E9AC8];
        if (((*(v125 + 4467) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) <= 0x100000)
        {
          v134 = 0x100000;
        }

        else
        {
          v134 = (*(v125 + 4467) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        }

        v135 = fd_mmap(*(v125 + 4515), v134, v115 ^ 3u, 1, 0);
        v136 = *(v167 + 8);
        *(v136 + 4531) = v135;
        if (v135 == -1)
        {
          v116 = *__error();
          v117 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_152;
          }

          *v187 = 136315394;
          *&v187[4] = "data_map_init_with_ctx";
          *&v187[12] = 1024;
          *&v187[14] = 1398;
          v118 = "%s:%d: offset fd_mmap error";
        }

        else
        {
          *(v136 + 4523) = v134;
          if (((*(v136 + 4483) + *v133 - 1) & -*v133) <= 0x100000)
          {
            v137 = 0x100000;
          }

          else
          {
            v137 = (*(v136 + 4483) + *v133 - 1) & -*v133;
          }

          v138 = fd_mmap(*(v136 + 236), v137, 3, 1, 0);
          v139 = *(v167 + 8);
          *(v139 + 4499) = v138;
          if (v138 != -1)
          {
            v110 = v139;
            *(v139 + 4491) = v137;
            v140 = *(v139 + 307);
            v141 = *(v140 + 36);
            v109 = (v140 + 36);
            if (v141)
            {
LABEL_134:
              v53 = v110;
              if ((v164 & 0x10) != 0)
              {
                v53 = v32[1];
              }

              v54 = 0;
              goto LABEL_137;
            }

LABEL_133:
            *v109 = 1;
            *(v110 + 4539) = 1;
            goto LABEL_134;
          }

          v116 = *__error();
          v117 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_152;
          }

          *v187 = 136315394;
          *&v187[4] = "data_map_init_with_ctx";
          *&v187[12] = 1024;
          *&v187[14] = 1407;
          v118 = "%s:%d: offset fd_mmap error";
        }
      }

      else
      {
        v116 = *__error();
        v117 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_152;
        }

        *v187 = 136315394;
        *&v187[4] = "data_map_init_with_ctx";
        *&v187[12] = 1024;
        *&v187[14] = 1341;
        v118 = "%s:%d: header pread error";
      }
    }

LABEL_150:
    v146 = v117;
    v147 = 18;
    goto LABEL_151;
  }

  snprintf(__str, 0x400uLL, "%s.map", __source);
  if ((v17 & 0x100) != 0)
  {
    v35 = 3;
  }

  else
  {
    v35 = 0;
  }

  v36 = fd_create_protected(v16, __str, v20, v35);
  *(*(v167 + 8) + 220) = v36;
  v37 = fd_lseek(v36, 0, 2);
  v38 = *(v167 + 8);
  *(v38 + 299) = v37;
  v39 = *(v38 + 220);
  if ((v37 - 129) > 0xFFFFFFFFFFFFFF7DLL)
  {
    fd_release(v39);
    *(*(v167 + 8) + 299) = 0;
    v74 = v35;
    goto LABEL_66;
  }

  v40 = fd_mmap(v39, v37, v163 ^ 3u, 1, 0);
  v41 = *(v167 + 8);
  *(v41 + 283) = v40;
  v32 = v167;
  if (v40 == -1)
  {
    v58 = 0;
    v31 = v168;
    goto LABEL_44;
  }

  v42 = *(v41 + 299);
  *(v41 + 291) = v42;
  v31 = v168;
  if (v40[12] != v42)
  {
    goto LABEL_43;
  }

  *(v41 + 307) = v40;
  v43 = v40[13];
  if (v43 >= v42)
  {
    goto LABEL_43;
  }

  v44 = v40[14];
  if (v44 >= v42)
  {
    goto LABEL_43;
  }

  v45 = v40[15];
  if (v45 >= v42)
  {
    goto LABEL_43;
  }

  *(v41 + 4539) = *(v40 + 36);
  *(v41 + 4499) = v40 + v43;
  *(v41 + 4507) = *(v40 + 28);
  *(v41 + 4531) = v40 + v44;
  v46 = *(v41 + 220);
  v47 = *(v40 + 20) + v45;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN7dataMapIyLb0ELb1ELb0EE22data_map_init_with_ctxEP17data_map_init_ctx_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_74_6102;
  aBlock[4] = v167;
  *(v41 + 351) = 257;
  *(v41 + 315) = v46;
  *(v41 + 323) = v47;
  *(v41 + 347) = 1;
  *(v41 + 355) = _Block_copy(aBlock);
  *(v41 + 363) = 26;
  bzero((v41 + 371), 0x1000uLL);
  v48 = *(v167 + 8);
  v49 = *(*(v48 + 283) + 120);
  *(v48 + 5619) = v49;
  *(v48 + 331) = *(*(v48 + 307) + 20) + v49;
  v50 = *(v167 + 8);
  v51 = (*(*(v50 + 283) + 120) - *(*(v50 + 283) + 112)) >> 4;
  if (*(v50 + 4475) > *(v50 + 4539))
  {
    v51 = *(v50 + 4539);
  }

  *(v50 + 4475) = v51;
  v52 = *(v50 + 307);
  *(v50 + 4563) = *(v52 + 68);
  *(v50 + 4579) = *(v52 + 84);
  *(v50 + 282) = *(v52 + 8) < 9u;
  v53 = v50;
  v54 = 1;
LABEL_137:
  if (*(v53 + 4475) < *(v53 + 4539))
  {
    v116 = *__error();
    v142 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      v143 = v32[1];
      v144 = *(v143 + 4475);
      v145 = *(v143 + 4539);
      *v187 = 136315906;
      *&v187[4] = "data_map_init_with_ctx";
      *&v187[12] = 1024;
      *&v187[14] = 1431;
      *&v187[18] = 2048;
      *&v187[20] = v144;
      *&v187[28] = 2048;
      *&v187[30] = v145;
      v118 = "%s:%d: invalid offset size 1 - %ld %llu";
      v146 = v142;
      v147 = 38;
LABEL_151:
      _os_log_error_impl(&dword_1C278D000, v146, OS_LOG_TYPE_ERROR, v118, v187, v147);
      goto LABEL_152;
    }

    goto LABEL_152;
  }

  v148 = *(v53 + 307);
  if (*v148 != 0x446174615064)
  {
    v116 = *__error();
    v117 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    *v187 = 136315394;
    *&v187[4] = "data_map_init_with_ctx";
    *&v187[12] = 1024;
    *&v187[14] = 1440;
    v118 = "%s:%d: invalid offset signature";
    goto LABEL_150;
  }

  v149 = *(v148 + 8);
  if (v149 <= 0xD)
  {
    v116 = *__error();
    v150 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
    {
      *v187 = 136315650;
      *&v187[4] = "data_map_init_with_ctx";
      *&v187[12] = 1024;
      *&v187[14] = 1450;
      *&v187[18] = 1024;
      *&v187[20] = v149;
      v118 = "%s:%d: invalid version %d";
      v146 = v150;
      v147 = 24;
      goto LABEL_151;
    }

LABEL_152:
    v57 = v116;
    goto LABEL_42;
  }

  if (*(v148 + 12) != v165)
  {
    v116 = *__error();
    v151 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    v152 = *(*(v32[1] + 307) + 12);
    *v187 = 136315906;
    *&v187[4] = "data_map_init_with_ctx";
    *&v187[12] = 1024;
    *&v187[14] = 1454;
    *&v187[18] = 1024;
    *&v187[20] = v152;
    *&v187[24] = 1024;
    *&v187[26] = v165;
    v118 = "%s:%d: invalid extra_size %d %d";
    v146 = v151;
    v147 = 30;
    goto LABEL_151;
  }

  *(v53 + 216) = v165;
  if (v54)
  {
    v58 = 1;
    goto LABEL_44;
  }

  if (*(v53 + 299) <= 0x5BuLL)
  {
    v153 = *__error();
    v154 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
    {
      v32 = v167;
      v155 = *(*(v167 + 8) + 299);
      *v187 = 136315906;
      *&v187[4] = "data_map_init_with_ctx";
      *&v187[12] = 1024;
      *&v187[14] = 1462;
      *&v187[18] = 2048;
      *&v187[20] = v155;
      *&v187[28] = 2048;
      *&v187[30] = 92;
      _os_log_error_impl(&dword_1C278D000, v154, OS_LOG_TYPE_ERROR, "%s:%d: invalid header size %llu < %lu", v187, 0x26u);
      v57 = v153;
      v31 = v168;
      goto LABEL_42;
    }

    goto LABEL_175;
  }

  if (*(v53 + 323) < *(v53 + 331))
  {
    v153 = *__error();
    v156 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
    {
      *v187 = 136315394;
      *&v187[4] = "data_map_init_with_ctx";
      *&v187[12] = 1024;
      *&v187[14] = 1468;
      v157 = "%s:%d: invalid storage size 1";
LABEL_178:
      _os_log_error_impl(&dword_1C278D000, v156, OS_LOG_TYPE_ERROR, v157, v187, 0x12u);
      goto LABEL_175;
    }

    goto LABEL_175;
  }

  if (v164 < 0 || !*(v148 + 16) || (v158 = *(v53 + 4507)) == 0 || (v159 = *(v53 + 4483), v159 < 8 * v158))
  {
    if (!dataMap<unsigned long long,false,true,false>::_data_map_rehash(v167))
    {
      v153 = *__error();
      v156 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
      {
        *v187 = 136315394;
        *&v187[4] = "data_map_init_with_ctx";
        *&v187[12] = 1024;
        *&v187[14] = 1475;
        v157 = "%s:%d: re-build hash error";
        goto LABEL_178;
      }

      goto LABEL_175;
    }

    v160 = *(v167 + 8);
    v159 = *(v160 + 4483);
    v158 = *(v160 + 4507);
  }

  if (v159 < 8 * v158)
  {
    v153 = *__error();
    v156 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
    {
      *v187 = 136315394;
      *&v187[4] = "data_map_init_with_ctx";
      *&v187[12] = 1024;
      *&v187[14] = 1482;
      v157 = "%s:%d: invalid hash size 1";
      goto LABEL_178;
    }

LABEL_175:
    v57 = v153;
    v31 = v168;
    goto LABEL_41;
  }

  v58 = 1;
  v31 = v168;
  v32 = v167;
LABEL_44:
  v176 = 1;
  v59 = threadData[9 * v175 + 1] + 320 * v174;
  *(v59 + 312) = v29;
  v60 = *(v59 + 232);
  if (v60)
  {
    v60(*(v59 + 288));
  }

  dropThreadId(v175, 0, v166 + 1);
  if ((v176 & 1) == 0)
  {
LABEL_53:
    v70 = *__error();
    v71 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v75 = fd_realpath(*(v32[1] + 220), __str);
      *&v187[4] = "data_map_init_with_ctx";
      v76 = "";
      *v187 = 136315650;
      if (v75)
      {
        v76 = v75;
      }

      *&v187[12] = 1024;
      *&v187[14] = 1496;
      *&v187[18] = 2080;
      *&v187[20] = v76;
      _os_log_error_impl(&dword_1C278D000, v71, OS_LOG_TYPE_ERROR, "%s:%d: exception processing %s", v187, 0x1Cu);
    }

    *__error() = v70;
    goto LABEL_55;
  }

  if (v58)
  {
    v61 = v32[1];
    if (v61)
    {
      v62 = v61 + 4096;
      v63 = *(v62 + 443) - 1;
      *(v62 + 451) = v63;
      *(v62 + 459) = v63;
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      v191 = 0u;
      v192 = 0u;
      v189 = 0u;
      v190 = 0u;
      v188 = 0u;
      memset(v187, 0, sizeof(v187));
      v64 = *__error();
      v65 = _SILogForLogForCategory(7);
      v66 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v65, v66))
      {
        v67 = fd_name(*(v32[1] + 220), v187, 0x100uLL);
        v68 = (*(*v32 + 96))(v32);
        buf.st_dev = 136315394;
        *&buf.st_mode = v67;
        WORD2(buf.st_ino) = 2048;
        *(&buf.st_ino + 6) = v68;
        _os_log_impl(&dword_1C278D000, v65, v66, "Opened map %s with counts: %llu", &buf, 0x16u);
      }

      *__error() = v64;
    }

    v69 = 1;
    goto LABEL_56;
  }

LABEL_55:
  (*(*v32 + 16))(v32);
  v32[1] = 0;
  v69 = 0;
LABEL_56:
  v72 = threadData[9 * v180 + 1] + 320 * v179;
  *(v72 + 312) = v31;
  v73 = *(v72 + 232);
  if (v73)
  {
    v73(*(v72 + 288));
  }

  dropThreadId(v180, 0, v169 + 1);
  return v69;
}

__CFString *convertCommaSeparatedNumberTokenWithNumberFormatter(const __CFString *a1)
{
  if (!a1)
  {
    return &stru_1F4284FD0;
  }

  v2 = &stru_1F4284FD0;
  if ((CFStringGetLength(a1) - 4) <= 0x13)
  {
    v3 = [MEMORY[0x1E695DF58] currentLocale];
    v4 = [v3 localeIdentifier];
    if (v4)
    {
      v5 = v4;
      os_unfair_lock_lock(&copyNumberFormatters_sUnfairLock);
      if (copyNumberFormatters_sFormatters)
      {
        v6 = *(copyNumberFormatters_sFormatters + 8);
      }

      else
      {
        v6 = 0;
      }

      if ([objc_msgSend(v6 "localeIdentifier")])
      {
        v7 = copyNumberFormatters_sFormatters;
        os_unfair_lock_unlock(&copyNumberFormatters_sUnfairLock);
        if (v7)
        {
          goto LABEL_17;
        }
      }

      else
      {
        os_unfair_lock_unlock(&copyNumberFormatters_sUnfairLock);
      }

      os_unfair_lock_lock(&copyNumberFormatters_sUnfairLock);
      if (copyNumberFormatters_sFormatters)
      {
        v8 = *(copyNumberFormatters_sFormatters + 8);
      }

      else
      {
        v8 = 0;
      }

      v9 = [objc_msgSend(v8 "localeIdentifier")];
      v10 = copyNumberFormatters_sFormatters;
      if (v9)
      {
        v11 = copyNumberFormatters_sFormatters;
        v10 = 0;
      }

      else
      {
        v11 = [[PRQueryNumberFormatters alloc] initWithLocale:v3];
        copyNumberFormatters_sFormatters = v11;
      }

      v7 = v11;
      os_unfair_lock_unlock(&copyNumberFormatters_sUnfairLock);

      if (v7)
      {
LABEL_17:
        v12 = v7 + 5;
        v13 = [v7[5] numberFromString:a1];
        if (v13)
        {
          v14 = v13;
          v15 = [v7[4] stringFromNumber:v13];
          if (([v15 isEqualToString:a1] & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v12 = v7 + 3;
          v16 = [v7[3] numberFromString:a1];
          if (!v16)
          {
            v15 = 0;
            goto LABEL_25;
          }

          v14 = v16;
          v15 = [v7[2] stringFromNumber:v16];
          if (![v15 isEqualToString:a1])
          {
LABEL_25:

LABEL_26:
            if (v15)
            {
              return v15;
            }

            return v2;
          }
        }

        v15 = [*v12 stringFromNumber:v14];
        goto LABEL_25;
      }
    }

    v15 = 0;
    goto LABEL_26;
  }

  return v2;
}

_BYTE *packPostingChunkUpdatesWithType(_BYTE *result, unint64_t *a2, unsigned int a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2;
    v5 = result;
    v6 = 0;
    v7 = a3;
    do
    {
      if (v6)
      {
        packRelativeVDocID(v5, v3);
      }

      else
      {
        v10 = *(v5 + 1);
        v9 = *(v5 + 2);
        if (v9 + 10 > v10)
        {
          do
          {
            v10 *= 2;
          }

          while (v10 < v9 + 10);
          *(v5 + 1) = v10;
          v11 = malloc_type_realloc(*v5, v10, 0xF29073FuLL);
          *v5 = v11;
          v9 = *(v5 + 2);
        }

        else
        {
          v11 = *v5;
        }

        v12 = writeVInt64(v11, v9, v3);
        *(v5 + 2) = v12;
        *(v5 + 3) = v3;
        v13 = *(v5 + 1);
        if (v12 + 10 > v13)
        {
          do
          {
            v13 *= 2;
          }

          while (v13 < v12 + 10);
          *(v5 + 1) = v13;
          v15 = malloc_type_realloc(*v5, v13, 0xF29073FuLL);
          *v5 = v15;
          v14 = *(v5 + 2);
        }

        else
        {
          v14 = v12;
          v15 = *v5;
        }

        v16 = writeVInt64(v15, v14, v3);
        *(v5 + 2) = v16;
        *(v5 + 3) = v3;
        v17 = *(v5 + 1);
        if (v16 + 10 > v17)
        {
          do
          {
            v17 *= 2;
          }

          while (v17 < v16 + 10);
          *(v5 + 1) = v17;
          v19 = malloc_type_realloc(*v5, v17, 0xF29073FuLL);
          *v5 = v19;
          v18 = *(v5 + 2);
        }

        else
        {
          v18 = v16;
          v19 = *v5;
        }

        *(v5 + 2) = writeVInt64(v19, v18, v7);
      }

      v8 = v4[1];
      ++v4;
      v3 = v8;
      v6 = 1;
    }

    while (v8);
    v20 = *(v5 + 1);
    v21 = *(v5 + 2);
    if (v21 + 10 > v20)
    {
      do
      {
        v20 *= 2;
      }

      while (v20 < v21 + 10);
      *(v5 + 1) = v20;
      result = malloc_type_realloc(*v5, v20, 0xF29073FuLL);
      *v5 = result;
      v21 = *(v5 + 2);
    }

    else
    {
      result = *v5;
    }

    result[v21] = 0;
    *(v5 + 2) = v21 + 1;
    *(v5 + 3) = 0;
  }

  return result;
}

uint64_t packRelativeVDocID(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 <= a2)
  {
    v9 = __si_assert_copy_extra_332();
    v10 = v9;
    v11 = "";
    if (v9)
    {
      v11 = v9;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 570, "rb->current > docID", v11);
    free(v10);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 + 10 > v6)
  {
    do
    {
      v6 *= 2;
    }

    while (v6 < v5 + 10);
    *(a1 + 8) = v6;
    v7 = malloc_type_realloc(*a1, v6, 0xF29073FuLL);
    *a1 = v7;
    v5 = *(a1 + 16);
    v2 = *(a1 + 24);
  }

  else
  {
    v7 = *a1;
  }

  result = writeVInt64(v7, v5, v2 - a2);
  *(a1 + 16) = result;
  *(a1 + 24) = a2;
  return result;
}

void si_analytics_log_6257(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, "%s:%u: failed assertion '%s' %s Offset past bounds; incoming %ld, current %ld, buffer length %ld, val %llu from %d", va);
  SISetCrashCStr(v8[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v10 = v8[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
  }

  free(v8[0]);
}

unint64_t PostingChunkEnumeratorNextDocID(unint64_t *a1, int *a2)
{
  v114 = 0;
  for (LODWORD(v3) = *(a1 + 9); ; LODWORD(v3) = 4)
  {
    while (1)
    {
LABEL_2:
      while (v3 > 3)
      {
        if ((v3 - 5) >= 2)
        {
          if (v3 != 4)
          {
            goto LABEL_125;
          }

          v15 = a1[1];
          if (v15 >= *a1)
          {
            v26 = *(a1 + 8);
            if (v26)
            {
LABEL_64:
              v39 = 0;
              *(a1 + 8) = v26 - 1;
              a1[1] = v15 - 1;
              goto LABEL_73;
            }

            while (1)
            {
              v27 = a1[3];
              if (v114 >= v27)
              {
                goto LABEL_125;
              }

              v28 = a1[2];
              if (v114 + 5 <= v27)
              {
                v31 = v114 + 1;
                v30 = *(v28 + v114);
                if (*(v28 + v114) < 0)
                {
                  v32 = *(v28 + v31);
                  v33 = *(v28 + v31);
                  if (v32 < 0)
                  {
                    v34 = *(v28 + v114 + 2);
                    if (*(v28 + v114 + 2) < 0)
                    {
                      v35 = *(v28 + v114 + 3);
                      if (*(v28 + v114 + 3) < 0)
                      {
                        v36 = *(v28 + v114 + 4);
                        if (v36 < 0)
                        {
                          goto LABEL_134;
                        }

                        v30 = ((v35 & 0x7F) << 21) | (v36 << 28) | ((v34 & 0x7F) << 14) | ((v33 & 0x7F) << 7) | v30 & 0x7F;
                        v114 += 5;
                      }

                      else
                      {
                        v30 = ((v34 & 0x7F) << 14) | (v35 << 21) | ((v33 & 0x7F) << 7) | v30 & 0x7F;
                        v114 += 4;
                      }
                    }

                    else
                    {
                      v30 = ((v33 & 0x7F) << 7) | (v34 << 14) | v30 & 0x7F;
                      v114 += 3;
                    }
                  }

                  else
                  {
                    v30 = v30 & 0x7F | (v33 << 7);
                    v114 += 2;
                  }
                }

                else
                {
                  ++v114;
                }
              }

              else
              {
                v29 = a1;
                v30 = _protectedReadVInt32(a1[2], &v114, v27);
                a1 = v29;
                v15 = v29[1];
              }

              a1[1] = --v15;
              if (v30 >= 2)
              {
                v26 = v30 - 1;
                goto LABEL_64;
              }

              if (!v30)
              {
                v37 = v15 - *a1;
                v38 = __CFADD__(v37, 1);
                v26 = v37 + 1;
                *(a1 + 8) = v26;
                if (!v38)
                {
                  goto LABEL_64;
                }

                LODWORD(v3) = 0;
                *(a1 + 9) = 0;
                goto LABEL_2;
              }
            }
          }
        }

        else
        {
          v9 = v114;
          v10 = a1[3];
          if (v114 >= v10)
          {
            goto LABEL_125;
          }

          v11 = 0;
          v12 = 0;
          v13 = v114;
          while (1)
          {
            v14 = *(a1[2] + v13++);
            v12 |= (v14 & 0x7F) << v11;
            if ((v14 & 0x80) == 0 || v11 == 63)
            {
              break;
            }

            v11 += 7;
            if (v10 == v13)
            {
              if (!__valid_fs(-1))
              {
                goto LABEL_143;
              }

              v63 = __si_assert_copy_extra_332();
              v71 = v63;
              v72 = "";
              if (v63)
              {
                v72 = v63;
              }

              si_analytics_log_6257(v63, v64, v65, v66, v67, v68, v69, v70, "PostingChunk.c", 90, "offset < bufferLength", v72, v9, v10, v10, v12, 1129);
LABEL_107:
              free(v71);
              v84 = 2816;
              goto LABEL_144;
            }
          }

          v114 = v13;
          if (v12)
          {
            v15 = *a1 - v12;
            *a1 = v15;
            if (v3 == 5)
            {
              v39 = 1;
            }

            else
            {
              v39 = 2;
            }

            goto LABEL_73;
          }
        }

        LODWORD(v3) = 0;
        *(a1 + 9) = 0;
      }

      if (!v3)
      {
        break;
      }

      if (v3 == 2)
      {
        v3 = a1[1];
        if (v3)
        {
          v40 = v114;
          v41 = a1[3];
          if (v114 >= v41)
          {
            goto LABEL_125;
          }

          v15 = *a1 - v3;
          *a1 = v15;
          v42 = a1[2];
          v43 = v40 + 5;
          if (v40 + 5 <= v41)
          {
            v53 = v40 + 1;
            v45 = *(v42 + v40);
            if (*(v42 + v40) < 0)
            {
              v56 = *(v42 + v53);
              v57 = *(v42 + v53);
              if (v56 < 0)
              {
                v60 = *(v42 + v40 + 2);
                if (*(v42 + v40 + 2) < 0)
                {
                  v97 = v40 + 4;
                  v98 = *(v42 + v40 + 3);
                  v99 = *(v42 + v40 + 3);
                  if (v98 < 0)
                  {
                    v103 = *(v42 + v97);
                    if (v103 < 0)
                    {
                      v111 = __si_assert_copy_extra_332();
                      v112 = v111;
                      v113 = "";
                      if (v111)
                      {
                        v113 = v111;
                      }

                      __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v113);
                      free(v112);
                      if (!__valid_fs(-1))
                      {
                        goto LABEL_143;
                      }

                      v84 = 2989;
                      goto LABEL_144;
                    }

                    v45 = ((v99 & 0x7F) << 21) | (v103 << 28) | ((v60 & 0x7F) << 14) | ((v57 & 0x7F) << 7) | v45 & 0x7F;
                    v114 = v43;
                  }

                  else
                  {
                    v45 = ((v60 & 0x7F) << 14) | (v99 << 21) | ((v57 & 0x7F) << 7) | v45 & 0x7F;
                    v114 = v97;
                  }
                }

                else
                {
                  v45 = ((v57 & 0x7F) << 7) | (v60 << 14) | v45 & 0x7F;
                  v114 = v40 + 3;
                }
              }

              else
              {
                v45 = v45 & 0x7F | (v57 << 7);
                v114 = v40 + 2;
              }
            }

            else
            {
              v114 = v40 + 1;
            }
          }

          else
          {
            v44 = a1;
            v45 = _protectedReadVInt32(a1[2], &v114, v41);
            a1 = v44;
            v15 = *v44;
          }

          v39 = 0;
          a1[1] = v45;
LABEL_73:
          v46 = a1[3];
          if (v114 >= v46)
          {
            v47 = a1[3];
          }

          else
          {
            v47 = v114;
          }

          v48 = v46 - v114;
          if (v46 < v114)
          {
            v48 = 0;
          }

          a1[2] += v47;
          a1[3] = v48;
          if (a2)
          {
            goto LABEL_79;
          }

          return v15;
        }

        *(a1 + 9) = 0;
      }

      else
      {
        if (v3 != 3)
        {
          goto LABEL_125;
        }

        v4 = *(a1 + 8);
        v5 = v114;
        if (v4)
        {
          v6 = a1[1];
          v8 = v114;
LABEL_72:
          v39 = 0;
          v114 = v8;
          v15 = v6 - PostingChunkEnumeratorNextDocID_sBitToIndex1[(((v4 - 1) & v4 ^ v4) - 11 * ((((117 * ((v4 - 1) & v4 ^ v4)) >> 8) + (((((v4 - 1) & v4 ^ v4) - ((117 * ((v4 - 1) & v4 ^ v4)) >> 8)) & 0xFE) >> 1)) >> 3))];
          *(a1 + 8) = (v4 - 1) & v4;
          goto LABEL_73;
        }

        v6 = a1[1];
        v7 = -*a1;
        while (v7 + v6 >= 9 && v5 < a1[3])
        {
          v6 -= 8;
          a1[1] = v6;
          v8 = v5 + 1;
          v4 = *(a1[2] + v5);
          *(a1 + 8) = v4;
          ++v5;
          if (v4)
          {
            goto LABEL_72;
          }
        }

        LODWORD(v3) = 0;
        v114 = v5;
        *(a1 + 9) = 0;
      }
    }

    v16 = v114;
    v17 = a1[3];
    if (v114 >= v17)
    {
      goto LABEL_125;
    }

    v18 = 0;
    v15 = 0;
    v19 = a1[2];
    v20 = v114;
    while (1)
    {
      v21 = *(v19 + v20++);
      v15 |= (v21 & 0x7F) << v18;
      if ((v21 & 0x80) == 0 || v18 == 63)
      {
        break;
      }

      v18 += 7;
      if (v17 == v20)
      {
        v73 = a1[3];
        if (__valid_fs(-1))
        {
          v75 = __si_assert_copy_extra_332();
          v71 = v75;
          v83 = "";
          if (v75)
          {
            v83 = v75;
          }

          si_analytics_log_6257(v75, v76, v77, v78, v79, v80, v81, v82, "PostingChunk.c", 90, "offset < bufferLength", v83, v16, v73, v73, v15, 985);
          goto LABEL_107;
        }

LABEL_143:
        v84 = 3072;
LABEL_144:
        *v84 = -559038737;
        abort();
      }
    }

    v114 = v20;
    *a1 = v15;
    if (v20 >= v17 || !v15)
    {
      goto LABEL_125;
    }

    v22 = 0;
    v23 = 0;
    v24 = v20;
    while (1)
    {
      v25 = v24 + 1;
      v23 |= (*(v19 + v24) & 0x7F) << v22;
      if ((*(v19 + v24) & 0x80) == 0 || v22 == 63)
      {
        break;
      }

      v22 += 7;
      ++v24;
      if (v17 == v25)
      {
        v85 = v17;
        if (__valid_fs(-1))
        {
          v87 = __si_assert_copy_extra_332();
          v95 = v87;
          v96 = "";
          if (v87)
          {
            v96 = v87;
          }

          si_analytics_log_6257(v87, v88, v89, v90, v91, v92, v93, v94, "PostingChunk.c", 90, "offset < bufferLength", v96, v20, v85, v85, v23, 993);
          free(v95);
          MEMORY[0xB00] = -559038737;
          abort();
        }

        goto LABEL_138;
      }
    }

    v114 = v24 + 1;
    a1[1] = v23;
    if (v15 > v23)
    {
      v39 = 0;
      v50 = 2;
      goto LABEL_82;
    }

    if (v15 >= v23)
    {
      break;
    }

    if (*(v19 + v25))
    {
      v39 = 0;
      v15 = v23 - 1;
      *(a1 + 9) = 3;
      v114 = v24 + 2;
      *(a1 + 8) = *(v19 + v25) & 0xFE;
      goto LABEL_73;
    }

    v114 = v24 + 2;
    a1[4] = 0x400000000;
  }

  if (v25 >= v17)
  {
    goto LABEL_125;
  }

  v51 = v24 + 6;
  if (v24 + 6 <= v17)
  {
    v54 = v24 + 2;
    v55 = *(v19 + v25);
    v39 = v55;
    if (v55 < 0)
    {
      v58 = *(v19 + v54);
      v59 = *(v19 + v54);
      if (v58 < 0)
      {
        v61 = *(v19 + v24 + 3);
        if (*(v19 + v24 + 3) < 0)
        {
          v100 = v24 + 5;
          v101 = *(v19 + v24 + 4);
          v102 = *(v19 + v24 + 4);
          if (v101 < 0)
          {
            v104 = *(v19 + v100);
            if (v104 < 0)
            {
LABEL_134:
              v108 = __si_assert_copy_extra_332();
              v109 = v108;
              v110 = "";
              if (v108)
              {
                v110 = v108;
              }

              __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v110);
              free(v109);
              if (__valid_fs(-1))
              {
                MEMORY[0xBAD] = -559038737;
                abort();
              }

LABEL_138:
              MEMORY[0xC00] = -559038737;
              abort();
            }

            v39 = ((v102 & 0x7F) << 21) | (v104 << 28) | ((v61 & 0x7F) << 14) | ((v59 & 0x7F) << 7) | v39 & 0x7F;
            v114 = v51;
          }

          else
          {
            v39 = ((v61 & 0x7F) << 14) | (v102 << 21) | ((v59 & 0x7F) << 7) | v39 & 0x7F;
            v114 = v100;
          }
        }

        else
        {
          v39 = ((v59 & 0x7F) << 7) | (v61 << 14) | v55 & 0x7F;
          v114 = v24 + 4;
        }
      }

      else
      {
        v39 = v55 & 0x7F | (v59 << 7);
        v114 = v24 + 3;
      }
    }

    else
    {
      v114 = v24 + 2;
    }
  }

  else
  {
    v52 = a1;
    v39 = _protectedReadVInt32(v19, &v114, v17);
    a1 = v52;
  }

  switch(v39)
  {
    case 2:
      v50 = 6;
      goto LABEL_82;
    case 1:
      v50 = 5;
LABEL_82:
      *(a1 + 9) = v50;
      goto LABEL_73;
    case 0:
      *(a1 + 9) = 0;
      v39 = 1;
      *a1 = 0;
      a1[1] = 0;
      goto LABEL_73;
  }

LABEL_125:
  v15 = 0;
  *(a1 + 9) = 1;
  v105 = a1[3];
  if (v114 >= v105)
  {
    v106 = a1[3];
  }

  else
  {
    v106 = v114;
  }

  v107 = v105 - v114;
  if (v105 < v114)
  {
    v107 = 0;
  }

  a1[2] += v106;
  a1[3] = v107;
  if (a2)
  {
    v39 = 0;
LABEL_79:
    *a2 = v39;
  }

  return v15;
}

void packPostingChunks(void **a1, _DWORD *a2, size_t size, uint64_t a4)
{
  v4 = a4;
  v5 = size;
  v7 = a1;
  v66 = *MEMORY[0x1E69E9840];
  if (size)
  {
    if (a4)
    {
      v8 = *(a4 + 32);
      if (*(a4 + 40) < size)
      {
        v9 = malloc_type_realloc(*(a4 + 32), size, 0x100004077774924uLL);
        *(v4 + 32) = v9;
        if (!v9)
        {
          v56 = __si_assert_copy_extra_332();
          v57 = v56;
          v58 = "";
          if (v56)
          {
            v58 = v56;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 454, "packCtx->chunkChanges", v58);
          free(v57);
          if (__valid_fs(-1))
          {
            v59 = 2989;
          }

          else
          {
            v59 = 3072;
          }

          *v59 = -559038737;
          abort();
        }

        v8 = v9;
        *(v4 + 40) = v5;
      }

      bzero(v8, v5);
    }

    else
    {
      v8 = malloc_type_calloc(size, 1uLL, 0x100004077774924uLL);
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = v5 - 1;
    v20 = a2[v19];
    if (*a2 < 0x200000u)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    if (*a2 >> 28)
    {
      v22 = 5;
    }

    else
    {
      v22 = v21;
    }

    if (*a2 < 0x80u)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (*a2 >> 14)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    v25 = 16 * v24;
    v26 = v5 - 2;
    v61 = v5;
    v27 = -v5;
    v28 = 1 - v5;
    v60 = v8;
    v29 = &v8[v19];
    v30 = &a2[v19];
    v31 = 8 * v24 + 8;
    v32 = (2 * v24) | 1;
    v33 = v20;
    do
    {
      v34 = v30[v13];
      if (v28 == v13)
      {
        v35 = 0;
      }

      else
      {
        v35 = a2[v26 + v13] + ~v34;
      }

      v36 = v34 - v20 + 1;
      v37 = v31 + v15 - 8 * v14;
      v38 = v17 + v34;
      v39 = v16 + v25 + v36;
      v64[0] = v37;
      v64[1] = v39;
      v65 = v18 + 8 + 8 * (v32 + v13 + v17 + v34 - v33);
      if (v39 <= v65)
      {
        v40 = 1;
      }

      else
      {
        v40 = 2;
      }

      if (v37 <= v39)
      {
        v41 = 2 * (v37 > v65);
      }

      else
      {
        v41 = v40;
      }

      v42 = v36 + v16 + v35;
      v43 = v18 + 8 + 8 * (v13 + v38 + v35 - v33);
      v44 = v64[v41];
      v45 = v44 + 8;
      v46 = v43 > v44 + 8;
      v47 = v44 + 4;
      v48 = (v44 + 7) & 0xFFFFFFF8;
      v49 = 3;
      if (v43 <= v45)
      {
        v49 = 1;
      }

      v50 = 2 * v46;
      if (v41)
      {
        v15 = v48;
        v14 = v12 + 1;
      }

      if (v42 <= v47)
      {
        v49 = v50;
      }

      v29[v13] = kPostingChunkChangeHintForFormat[4 * v41 + v49];
      if (v42 > v47)
      {
        v16 = v48;
        v20 = 0;
      }

      if (v28 != v13 && v42 > v47)
      {
        v20 = a2[v26 + v13];
        v16 = v48;
      }

      if (v43 > v45)
      {
        v18 = v48;
        v17 = v12 + 1;
        v33 = 0;
      }

      if (v28 != v13 && v43 > v45)
      {
        v33 = a2[v26 + v13];
        v18 = v48;
        v17 = v12 + 1;
      }

      --v13;
      ++v12;
      v31 += 8;
    }

    while (v27 + v12);
    v64[0] = 0;
    v10 = v60;
    v51 = *v60;
    if ((v51 - 4) < 4)
    {
      v11 = 1;
      v7 = a1;
      v4 = a4;
      v5 = v61;
    }

    else
    {
      v7 = a1;
      v4 = a4;
      v5 = v61;
      if ((v51 - 8) >= 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = 2;
      }
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v64[0] = 0;
  }

  packPostingChunk(v7, v11, a2, v10, v5, v64);
  v52 = v64[0];
  while (v52 < v5)
  {
    v54 = v10[v52];
    if (v54 <= 5)
    {
      if (v54 <= 2)
      {
        if (v54 == 1)
        {
          v53 = v11;
          if (v11 != 1)
          {
            goto LABEL_54;
          }

LABEL_79:
          v53 = 0;
          goto LABEL_54;
        }

        v55 = v54 == 2 && v11 == 2;
        v53 = v11;
        if (v55)
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v54 == 3)
        {
          goto LABEL_79;
        }

        if (v54 != 4)
        {
          if (v11 != 2)
          {
            goto LABEL_53;
          }

LABEL_83:
          v53 = 2;
          goto LABEL_54;
        }

        v53 = v11;
        if (!v11)
        {
          goto LABEL_53;
        }
      }
    }

    else if (v54 > 8)
    {
      if (v54 == 9)
      {
        v53 = 2;
      }

      else
      {
        if (v54 == 10)
        {
          if (v11 == 1)
          {
LABEL_53:
            v53 = 1;
            goto LABEL_54;
          }

          goto LABEL_83;
        }

        v53 = v11;
        if (v54 == 11)
        {
          goto LABEL_83;
        }
      }
    }

    else if (v54 == 6)
    {
      v53 = 1;
    }

    else
    {
      if (v54 == 7)
      {
        goto LABEL_53;
      }

      v53 = v11;
      if (!v11)
      {
        goto LABEL_83;
      }
    }

LABEL_54:
    packPostingChunk(v7, v53, a2, v10, v5, v64);
    v52 = v64[0];
    v11 = v53;
  }

  if (!v4)
  {

    free(v10);
  }
}

void packPostingChunk(void **a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6)
{
  v6 = *a6;
  if (v6 >= a5)
  {
    return;
  }

  v12 = *(a3 + 4 * v6);
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v13 = v6 + 1;
      if (v6 + 1 >= a5)
      {
        *a6 = v13;
        v35 = 1;
      }

      else
      {
        v14 = a5 - 1;
        v15 = (a4 + v13);
        do
        {
          v16 = *v15++;
          v17 = (1 << v16) & 0xAAA;
          if (v16 <= 0xB && v17 != 0)
          {
            v14 = v13 - 1;
            goto LABEL_33;
          }

          LODWORD(v13) = v13 + 1;
        }

        while (a5 != v13);
        LODWORD(v13) = a5;
LABEL_33:
        v36 = *(a3 + 4 * v14);
        *a6 = v13;
        v35 = v12 + 1 - v36;
        if (v12 + 1 == v36)
        {
          v88 = __si_assert_copy_extra_332();
          v81 = v88;
          v89 = "";
          if (v88)
          {
            v89 = v88;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 642, "bitVectorCount > 0", v89);
          goto LABEL_80;
        }

        LODWORD(v12) = v36;
      }

      v37 = a1[1];
      v38 = a1[2];
      if (v38 + 10 > v37)
      {
        do
        {
          v37 *= 2;
        }

        while (v37 < v38 + 10);
        a1[1] = v37;
        v39 = malloc_type_realloc(*a1, v37, 0xF29073FuLL);
        *a1 = v39;
        v38 = a1[2];
      }

      else
      {
        v39 = *a1;
      }

      v40 = writeVInt64(v39, v38, v12);
      a1[2] = v40;
      a1[3] = v12;
      v41 = v12 + v35;
      v42 = a1[1];
      if (v40 + 10 > v42)
      {
        do
        {
          v42 *= 2;
        }

        while (v42 < v40 + 10);
        a1[1] = v42;
        v44 = malloc_type_realloc(*a1, v42, 0xF29073FuLL);
        *a1 = v44;
        v43 = a1[2];
      }

      else
      {
        v43 = v40;
        v44 = *a1;
      }

      v45 = writeVInt64(v44, v43, v41);
      a1[2] = v45;
      a1[3] = v41;
      v46 = (v35 + 7) >> 3;
      v47 = v45 + (v46 + 4);
      v48 = a1[1];
      if (v47 > v48)
      {
        do
        {
          v48 *= 2;
        }

        while (v48 < v47);
        a1[1] = v48;
        v49 = malloc_type_realloc(*a1, v48, 0xF29073FuLL);
        *a1 = v49;
        v45 = a1[2];
      }

      else
      {
        v49 = *a1;
      }

      bzero(&v49[v45], (v35 + 7) >> 3);
      v50 = *a6;
      v51 = a1[2];
      if (v6 < v50)
      {
        v52 = &v51[*a1];
        v53 = *(a3 + 4 * v6);
        v54 = v50 - v6;
        v55 = (a3 + 4 * v6);
        do
        {
          v56 = *v55++;
          v52[(v53 - v56) >> 3] |= 1 << ((v53 - v56) & 7);
          --v54;
        }

        while (v54);
        v51 = a1[2];
      }

      a1[2] = &v51[v46];
    }

    else
    {
      v27 = a1[1];
      v28 = a1[2];
      if (v28 + 10 > v27)
      {
        do
        {
          v27 *= 2;
        }

        while (v27 < v28 + 10);
        a1[1] = v27;
        v29 = malloc_type_realloc(*a1, v27, 0xF29073FuLL);
        *a1 = v29;
        v28 = a1[2];
      }

      else
      {
        v29 = *a1;
      }

      a1[2] = writeVInt64(v29, v28, v12);
      a1[3] = v12;
      v30 = (v6 + 1);
      if (v30 < a5)
      {
        v31 = ~v6 + a5;
        while (*(a4 + v30) - 4 >= 8)
        {
          packRelativeVDocID(a1, *(a3 + 4 * v30++));
          if (!--v31)
          {
            LODWORD(v30) = a5;
            break;
          }
        }
      }

      v32 = a1[1];
      v33 = a1[2];
      if ((v33 + 10) > v32)
      {
        do
        {
          v32 *= 2;
        }

        while (v32 < (v33 + 10));
        a1[1] = v32;
        v34 = malloc_type_realloc(*a1, v32, 0xF29073FuLL);
        *a1 = v34;
        v33 = a1[2];
      }

      else
      {
        v34 = *a1;
      }

      v33[v34] = 0;
      a1[2] = v33 + 1;
      a1[3] = 0;
      *a6 = v30;
    }

    return;
  }

  v19 = (v12 + 1);
  v20 = v6 + 1;
  v21 = v6 + 1;
  if (v6 + 1 < a5)
  {
    v22 = a5 - 1;
    v23 = (a4 + v20);
    v21 = v6 + 1;
    do
    {
      v24 = *v23++;
      v25 = (1 << v24) & 0xCCC;
      if (v24 <= 0xB && v25 != 0)
      {
        v22 = v21 - 1;
        goto LABEL_46;
      }

      ++v21;
    }

    while (a5 != v21);
    v21 = a5;
LABEL_46:
    LODWORD(v12) = *(a3 + 4 * v22);
  }

  v57 = v12;
  v58 = a1[1];
  v59 = a1[2];
  if (v59 + 10 > v58)
  {
    do
    {
      v58 *= 2;
    }

    while (v58 < v59 + 10);
    a1[1] = v58;
    v60 = malloc_type_realloc(*a1, v58, 0xF29073FuLL);
    *a1 = v60;
    v59 = a1[2];
  }

  else
  {
    v60 = *a1;
  }

  v61 = writeVInt64(v60, v59, v12);
  a1[2] = v61;
  a1[3] = v12;
  v62 = a1[1];
  if (v61 + 10 > v62)
  {
    do
    {
      v62 *= 2;
    }

    while (v62 < v61 + 10);
    a1[1] = v62;
    v64 = malloc_type_realloc(*a1, v62, 0xF29073FuLL);
    *a1 = v64;
    v63 = a1[2];
  }

  else
  {
    v63 = v61;
    v64 = *a1;
  }

  v65 = writeVInt64(v64, v63, v19);
  a1[2] = v65;
  a1[3] = v19;
  v66 = a1[1];
  if (v65 + 10 > v66)
  {
    do
    {
      v66 *= 2;
    }

    while (v66 < v65 + 10);
    a1[1] = v66;
    v67 = malloc_type_realloc(*a1, v66, 0xF29073FuLL);
    *a1 = v67;
    v65 = a1[2];
  }

  else
  {
    v67 = *a1;
  }

  v68 = v65 + 1;
  v67[v65] = 0;
  a1[2] = (v65 + 1);
  v69 = *(a3 + 4 * v6);
  if (v69 <= v57)
  {
    v90 = __si_assert_copy_extra_332();
    v81 = v90;
    v91 = "";
    if (v90)
    {
      v91 = v90;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 727, "docIDLast > docIDStart", v91);
    goto LABEL_80;
  }

  if (v69 >= v19)
  {
    v92 = __si_assert_copy_extra_332();
    v81 = v92;
    v93 = "";
    if (v92)
    {
      v93 = v92;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 728, "docIDLast < docIDEnd", v93);
    goto LABEL_80;
  }

  if (v20 >= v21)
  {
    goto LABEL_70;
  }

  v70 = v20;
  do
  {
    v71 = *(a3 + 4 * v70);
    if (v69 < v71)
    {
      v86 = __si_assert_copy_extra_332();
      v81 = v86;
      v87 = "";
      if (v86)
      {
        v87 = v86;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 732, "docIDLast >= docIDs[i]", v87);
      goto LABEL_80;
    }

    if (--v69 > v71)
    {
      while (1)
      {
        if (v69 >= v19)
        {
          v77 = __si_assert_copy_extra_332();
          v78 = v77;
          v79 = "";
          if (v77)
          {
            v79 = v77;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 734, "docIDLast < docIDEnd", v79);
LABEL_85:
          free(v78);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        if (v69 <= v57)
        {
          break;
        }

        v72 = a1[3];
        if (v72 <= v69)
        {
          v84 = __si_assert_copy_extra_332();
          v78 = v84;
          v85 = "";
          if (v84)
          {
            v85 = v84;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 570, "rb->current > docID", v85);
          goto LABEL_85;
        }

        v73 = a1[1];
        if (v68 + 10 > v73)
        {
          do
          {
            v73 *= 2;
          }

          while (v73 < v68 + 10);
          a1[1] = v73;
          v74 = malloc_type_realloc(*a1, v73, 0xF29073FuLL);
          *a1 = v74;
          v68 = a1[2];
          v72 = a1[3];
        }

        else
        {
          v74 = *a1;
        }

        v68 = writeVInt64(v74, v68, v72 - v69);
        a1[2] = v68;
        a1[3] = v69--;
        if (v69 <= *(a3 + 4 * v70))
        {
          goto LABEL_57;
        }
      }

      v80 = __si_assert_copy_extra_332();
      v81 = v80;
      v82 = "";
      if (v80)
      {
        v82 = v80;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 735, "docIDLast > docIDStart", v82);
LABEL_80:
      free(v81);
      if (__valid_fs(-1))
      {
        v83 = 2989;
      }

      else
      {
        v83 = 3072;
      }

      *v83 = -559038737;
      abort();
    }

LABEL_57:
    ++v70;
  }

  while (v70 != v21);
  LODWORD(v20) = v21;
LABEL_70:
  v75 = a1[1];
  if (v68 + 10 > v75)
  {
    do
    {
      v75 *= 2;
    }

    while (v75 < v68 + 10);
    a1[1] = v75;
    v76 = malloc_type_realloc(*a1, v75, 0xF29073FuLL);
    *a1 = v76;
    v68 = a1[2];
  }

  else
  {
    v76 = *a1;
  }

  v76[v68] = 0;
  a1[2] = (v68 + 1);
  a1[3] = 0;
  *a6 = v20;
}

void *FlattenPostingsContextInit(uint64_t a1)
{
  *(a1 + 8) = 16;
  *a1 = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
  *(a1 + 24) = 16;
  *(a1 + 16) = malloc_type_malloc(0x80uLL, 0x100004000313F17uLL);
  *(a1 + 40) = 16;
  result = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  *(a1 + 32) = result;
  return result;
}

void FlattenPostingsContextDestroy(uint64_t a1)
{
  if (a1)
  {
    free(*a1);
    free(*(a1 + 16));
    v2 = *(a1 + 32);

    free(v2);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,false>(unint64_t result, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = a2 - 6;
  v288 = a2 - 5;
  n128_u64 = result;
  while (1)
  {
    result = n128_u64;
    v11 = a2 - n128_u64;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - n128_u64) >> 5);
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(n128_u64, (n128_u64 + 96), a2 - 6, a5);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(n128_u64, (n128_u64 + 96), (n128_u64 + 192), a2 - 6, a5);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(n128_u64, (n128_u64 + 96), (n128_u64 + 192), (n128_u64 + 288), a2 - 6, a5);
          return;
      }

      goto LABEL_9;
    }

    if (v12 < 2)
    {
      return;
    }

    if (v12 == 2)
    {
      break;
    }

LABEL_9:
    if (v11 <= 2303)
    {
      v120 = n128_u64 + 96;
      v122 = n128_u64 == a2 || v120 == a2;
      if (a4)
      {
        if (v122)
        {
          return;
        }

        v123 = 0;
        v124 = n128_u64;
        while (1)
        {
          v126 = v124;
          v124 = v120;
          v127 = *(v126 + 181);
          if (v127 == 1)
          {
            break;
          }

          v131 = *(v126 + 14);
          v130 = *(v126 + 15);
          if (__PAIR128__(v130, v131) < v126[1])
          {
            goto LABEL_285;
          }

          if (v130 == *(v126 + 3) && v131 == *(v126 + 2))
          {
            goto LABEL_282;
          }

LABEL_271:
          v120 = (v124 + 6);
          v123 += 96;
          if (v124 + 6 == a2)
          {
            return;
          }
        }

        v128 = *(v126 + 43);
        v129 = *(v126 + 19);
        if (v128 < v129)
        {
          goto LABEL_285;
        }

        if (v128 != v129)
        {
          goto LABEL_271;
        }

LABEL_282:
        v133 = *(v126 + 41);
        v134 = *(v126 + 17);
        if (v133 < v134 || v133 == v134 && *(v126 + 40) > *(v126 + 16))
        {
LABEL_285:
          v135 = *(v126 + 24);
          v137 = *(v126 + 14);
          v136 = *(v126 + 15);
          v294 = v126[8];
          v302 = v126[9];
          v138 = *(v126 + 40);
          v139 = *(v126 + 41);
          v140 = *(v126 + 42);
          v141 = *(v126 + 43);
          v324 = *(v126 + 44);
          v327 = *(v126 + 180);
          v336 = *(v126 + 95);
          v332 = *(v126 + 182);
          *(v126 + 24) = *v126;
          v125 = (v126 + 1);
          v142 = v126[4];
          v124[3] = v126[3];
          v124[4] = v142;
          v124[5] = v126[5];
          v143 = v126[2];
          v124[1] = v126[1];
          v124[2] = v143;
          if (v126 == n128_u64)
          {
LABEL_269:
            v126 = n128_u64;
            goto LABEL_270;
          }

          v144 = v123;
          if (v127)
          {
            while (1)
            {
              v147 = n128_u64 + v144;
              v148 = *(n128_u64 + v144 - 20);
              if (v141 >= v148)
              {
                if (v141 != v148)
                {
LABEL_306:
                  v126 = (n128_u64 + v144);
                  v125 = (n128_u64 + v144 + 16);
                  goto LABEL_270;
                }

                v149 = *(n128_u64 + v144 - 28);
                if (v139 >= v149 && (v139 != v149 || v138 <= *(n128_u64 + v144 - 32)))
                {
                  goto LABEL_270;
                }
              }

              v125 = (v126 - 5);
              v126 -= 6;
              *v147 = *(v147 - 96);
              v145 = *(v147 - 32);
              *(v147 + 48) = *(v147 - 48);
              *(v147 + 64) = v145;
              *(v147 + 80) = *(v147 - 16);
              v146 = *(v147 - 64);
              *(v147 + 16) = *(v147 - 80);
              *(v147 + 32) = v146;
              v144 -= 96;
              if (!v144)
              {
LABEL_268:
                v125 = (n128_u64 + v144 + 16);
                goto LABEL_269;
              }
            }
          }

          while (1)
          {
            v152 = n128_u64 + v144;
            if (__PAIR128__(v136, v137) >= *(n128_u64 + v144 - 80))
            {
              if (v136 != *(n128_u64 + v144 - 72) || v137 != *(n128_u64 + v144 - 80))
              {
                break;
              }

              v154 = *(n128_u64 + v144 - 28);
              if (v139 >= v154)
              {
                if (v139 != v154)
                {
                  goto LABEL_306;
                }

                if (v138 <= *(n128_u64 + v144 - 32))
                {
                  break;
                }
              }
            }

            v125 = (v126 - 5);
            v126 -= 6;
            *v152 = *(v152 - 96);
            v150 = *(n128_u64 + v144 - 32);
            *(v152 + 48) = *(n128_u64 + v144 - 48);
            *(v152 + 64) = v150;
            *(v152 + 80) = *(n128_u64 + v144 - 16);
            v151 = *(n128_u64 + v144 - 64);
            *(v152 + 16) = *(n128_u64 + v144 - 80);
            *(v152 + 32) = v151;
            v144 -= 96;
            if (!v144)
            {
              goto LABEL_268;
            }
          }

LABEL_270:
          *v126 = v135;
          *v125 = v137;
          v125[1] = v136;
          v126[2] = v294;
          v126[3] = v302;
          *(v126 + 16) = v138;
          *(v126 + 17) = v139;
          *(v126 + 18) = v140;
          *(v126 + 19) = v141;
          *(v126 + 84) = v327;
          *(v126 + 20) = v324;
          *(v126 + 85) = v127;
          *(v126 + 86) = v332;
          *(v126 + 47) = v336;
          goto LABEL_271;
        }

        goto LABEL_271;
      }

      if (v122)
      {
        return;
      }

      for (i = (n128_u64 + 112); ; i += 6)
      {
        v258 = result;
        result = v120;
        v259 = *(v258 + 181);
        if (v259 == 1)
        {
          break;
        }

        v263 = *(v258 + 112);
        v262 = *(v258 + 120);
        if (__PAIR128__(v262, v263) < *(v258 + 16))
        {
          goto LABEL_455;
        }

        if (v262 == *(v258 + 24) && v263 == *(v258 + 16))
        {
          goto LABEL_452;
        }

LABEL_441:
        v120 = result + 96;
        if ((result + 96) == a2)
        {
          return;
        }
      }

      v260 = *(v258 + 172);
      v261 = *(v258 + 76);
      if (v260 < v261)
      {
        goto LABEL_455;
      }

      if (v260 != v261)
      {
        goto LABEL_441;
      }

LABEL_452:
      v265 = *(v258 + 164);
      v266 = *(v258 + 68);
      if (v265 < v266 || v265 == v266 && *(v258 + 160) > *(v258 + 64))
      {
LABEL_455:
        v267 = *result;
        v269 = *(v258 + 112);
        v268 = *(v258 + 120);
        v297 = *(v258 + 128);
        v305 = *(v258 + 144);
        v270 = *(v258 + 160);
        v271 = *(v258 + 164);
        v272 = *(v258 + 168);
        v326 = *(v258 + 176);
        v328 = *(v258 + 180);
        v335 = *(v258 + 182);
        v337 = *(v258 + 190);
        v273 = i;
        v274 = *(v258 + 172);
        if (v259)
        {
          do
          {
            do
            {
              v256 = v258;
              *(v258 + 96) = *v258;
              v275 = *(v258 + 64);
              *(v258 + 144) = *(v258 + 48);
              *(v258 + 160) = v275;
              *(v258 + 176) = *(v258 + 80);
              v276 = *(v258 - 20);
              v277 = v274 == v276;
              v278 = v274 < v276;
              v280 = *(v258 + 16);
              v279 = *(v258 + 32);
              v258 -= 96;
              v256[7] = v280;
              v256[8] = v279;
            }

            while (v278);
            if (!v277)
            {
              break;
            }

            v281 = *(v256 - 7);
          }

          while (v271 < v281 || v271 == v281 && v270 > *(v256 - 8));
          v257 = (v256 + 1);
        }

        else
        {
          while (1)
          {
            *(v273 - 4) = *(v273 - 28);
            v282 = *(v273 - 3);
            v273[2] = *(v273 - 4);
            v273[3] = v282;
            v273[4] = *(v273 - 2);
            v283 = *(v273 - 5);
            v285 = *(v273 - 24);
            v284 = *(v273 - 23);
            v93 = __PAIR128__(v268, v269) >= *(v273 - 12);
            *v273 = *(v273 - 6);
            v273[1] = v283;
            if (v93)
            {
              if (v268 != v284 || v269 != v285)
              {
                break;
              }

              v287 = *(v273 - 35);
              if (v271 >= v287 && (v271 != v287 || v270 <= *(v273 - 36)))
              {
                break;
              }
            }

            v273 -= 6;
          }

          v256 = v273 - 7;
          v257 = (v273 - 6);
        }

        *v256 = v267;
        *v257 = v269;
        v257[1] = v268;
        v256[2] = v297;
        v256[3] = v305;
        *(v256 + 16) = v270;
        *(v256 + 17) = v271;
        *(v256 + 18) = v272;
        *(v256 + 19) = v274;
        *(v256 + 84) = v328;
        *(v256 + 20) = v326;
        *(v256 + 85) = v259;
        *(v256 + 86) = v335;
        *(v256 + 47) = v337;
        goto LABEL_441;
      }

      goto LABEL_441;
    }

    if (!a3)
    {
      if (n128_u64 == a2)
      {
        return;
      }

      v155 = (v12 - 2) >> 1;
      v156 = v155;
LABEL_312:
      v158 = v156;
      if (v155 < v156)
      {
        goto LABEL_311;
      }

      v159 = (2 * v156) | 1;
      v157 = n128_u64 + 96 * v159;
      if (2 * v158 + 2 >= v12)
      {
        goto LABEL_328;
      }

      if (*(v157 + 85) == 1)
      {
        v160 = *(v157 + 76);
        v161 = *(v157 + 172);
        if (v160 >= v161)
        {
          if (v160 != v161)
          {
            goto LABEL_328;
          }

LABEL_324:
          v165 = *(v157 + 68);
          v166 = *(v157 + 164);
          if (v165 < v166 || v165 == v166 && *(v157 + 64) > *(v157 + 160))
          {
            goto LABEL_327;
          }

LABEL_328:
          v167 = n128_u64 + 96 * v158;
          if (*(v157 + 85) == 1)
          {
            v168 = *(v157 + 76);
            v169 = *(v167 + 76);
            if (v168 < v169)
            {
              goto LABEL_311;
            }

            if (v168 != v169)
            {
LABEL_341:
              v175 = *v167;
              v176 = *(v167 + 16);
              v177 = *(v167 + 24);
              v295 = *(v167 + 32);
              v303 = *(v167 + 48);
              v178 = *(v167 + 64);
              v179 = *(v167 + 68);
              v180 = *(v167 + 72);
              v181 = *(v167 + 76);
              v333 = *(v167 + 80);
              while (1)
              {
                *v167 = *v157;
                *(v167 + 16) = *(v157 + 16);
                v182 = *(v157 + 32);
                v183 = *(v157 + 48);
                v184 = *(v157 + 80);
                *(v167 + 64) = *(v157 + 64);
                *(v167 + 80) = v184;
                *(v167 + 32) = v182;
                *(v167 + 48) = v183;
                if (v155 < v159)
                {
                  goto LABEL_310;
                }

                v167 = v157;
                v185 = 2 * v159;
                v159 = (2 * v159) | 1;
                v157 = n128_u64 + 96 * v159;
                v186 = v185 + 2;
                if (v186 >= v12)
                {
                  goto LABEL_358;
                }

                if (*(v157 + 85) == 1)
                {
                  v187 = *(v157 + 76);
                  v188 = *(v157 + 172);
                  if (v187 >= v188)
                  {
                    if (v187 != v188)
                    {
                      goto LABEL_358;
                    }

                    goto LABEL_354;
                  }
                }

                else
                {
                  v190 = *(v157 + 16);
                  v189 = *(v157 + 24);
                  if (__PAIR128__(v189, v190) >= *(v157 + 112))
                  {
                    if (v189 != *(v157 + 120) || v190 != *(v157 + 112))
                    {
                      goto LABEL_358;
                    }

LABEL_354:
                    v192 = *(v157 + 68);
                    v193 = *(v157 + 164);
                    if (v192 >= v193 && (v192 != v193 || *(v157 + 64) <= *(v157 + 160)))
                    {
                      goto LABEL_358;
                    }
                  }
                }

                v157 += 96;
                v159 = v186;
LABEL_358:
                if (*(v157 + 85) == 1)
                {
                  v194 = *(v157 + 76);
                  if (v194 < v181)
                  {
                    goto LABEL_309;
                  }

                  if (v194 == v181)
                  {
LABEL_368:
                    v196 = *(v157 + 68);
                    if (v196 < v179 || v196 == v179 && *(v157 + 64) > v178)
                    {
LABEL_309:
                      v157 = v167;
LABEL_310:
                      *v157 = v175;
                      *(v157 + 16) = v176;
                      *(v157 + 24) = v177;
                      *(v157 + 32) = v295;
                      *(v157 + 48) = v303;
                      *(v157 + 64) = v178;
                      *(v157 + 68) = v179;
                      *(v157 + 72) = v180;
                      *(v157 + 76) = v181;
                      *(v157 + 80) = v333;
LABEL_311:
                      v156 = v158 - 1;
                      if (v158)
                      {
                        goto LABEL_312;
                      }

                      v197 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 5);
                      while (2)
                      {
                        v199 = 0;
                        v200 = *n128_u64;
                        v298 = *(n128_u64 + 16);
                        v321 = *(n128_u64 + 80);
                        v316 = *(n128_u64 + 64);
                        v311 = *(n128_u64 + 48);
                        v306 = *(n128_u64 + 32);
                        v201 = n128_u64;
LABEL_378:
                        v205 = v201;
                        v206 = v201 + 96 * v199;
                        v201 = v206 + 96;
                        v207 = 2 * v199;
                        v199 = (2 * v199) | 1;
                        v208 = v207 + 2;
                        if (v208 >= v197)
                        {
                          goto LABEL_377;
                        }

                        if (*(v206 + 181) == 1)
                        {
                          v209 = *(v206 + 172);
                          v210 = *(v206 + 268);
                          if (v209 >= v210)
                          {
                            if (v209 != v210)
                            {
                              goto LABEL_377;
                            }

LABEL_389:
                            v214 = *(v206 + 164);
                            v215 = *(v206 + 260);
                            if (v214 >= v215 && (v214 != v215 || *(v206 + 160) <= *(v206 + 256)))
                            {
LABEL_377:
                              *v205 = *v201;
                              *(v205 + 16) = *(v201 + 16);
                              v202 = *(v201 + 32);
                              v203 = *(v201 + 48);
                              v204 = *(v201 + 80);
                              *(v205 + 64) = *(v201 + 64);
                              *(v205 + 80) = v204;
                              *(v205 + 32) = v202;
                              *(v205 + 48) = v203;
                              if (v199 > ((v197 - 2) >> 1))
                              {
                                if (v201 == &a2[-6])
                                {
                                  *v201 = v200;
                                  *(v201 + 16) = v298;
                                  *(v201 + 64) = v316;
                                  *(v201 + 80) = v321;
                                  *(v201 + 32) = v306;
                                  *(v201 + 48) = v311;
                                  goto LABEL_374;
                                }

                                *v201 = a2[-6].n128_u32[0];
                                *(v201 + 16) = a2[-5];
                                v216 = a2[-4];
                                v217 = a2[-3];
                                v218 = a2[-1];
                                *(v201 + 64) = a2[-2];
                                *(v201 + 80) = v218;
                                *(v201 + 32) = v216;
                                *(v201 + 48) = v217;
                                a2[-6].n128_u32[0] = v200;
                                a2[-5] = v298;
                                a2[-2] = v316;
                                a2[-1] = v321;
                                a2[-4] = v306;
                                a2[-3] = v311;
                                v219 = v201 - n128_u64 + 96;
                                if (v219 >= 97)
                                {
                                  v220 = 0xAAAAAAAAAAAAAAABLL * (v219 >> 5) - 2;
                                  v221 = v220 >> 1;
                                  v222 = n128_u64 + 96 * (v220 >> 1);
                                  if (*(v222 + 85) == 1)
                                  {
                                    v223 = *(v222 + 76);
                                    v224 = *(v201 + 76);
                                    if (v223 < v224)
                                    {
                                      goto LABEL_408;
                                    }

                                    if (v223 != v224)
                                    {
                                      goto LABEL_374;
                                    }

LABEL_405:
                                    v228 = *(v222 + 68);
                                    v229 = *(v201 + 68);
                                    if (v228 < v229 || v228 == v229 && *(v222 + 64) > *(v201 + 64))
                                    {
LABEL_408:
                                      v230 = *v201;
                                      v231 = *(v201 + 16);
                                      v232 = *(v201 + 24);
                                      v334 = *(v201 + 32);
                                      v340 = *(v201 + 48);
                                      v233 = *(v201 + 64);
                                      v234 = *(v201 + 68);
                                      v235 = *(v201 + 72);
                                      v236 = *(v201 + 76);
                                      v325 = *(v201 + 80);
                                      *v201 = *v222;
                                      v238 = *(v222 + 64);
                                      v237 = *(v222 + 80);
                                      v239 = *(v222 + 48);
                                      *(v201 + 32) = *(v222 + 32);
                                      *(v201 + 48) = v239;
                                      *(v201 + 64) = v238;
                                      *(v201 + 80) = v237;
                                      *(v201 + 16) = *(v222 + 16);
                                      if (v220 < 2)
                                      {
LABEL_425:
                                        *v222 = v230;
                                        *(v222 + 16) = v231;
                                        *(v222 + 24) = v232;
                                        *(v222 + 32) = v334;
                                        *(v222 + 48) = v340;
                                        *(v222 + 64) = v233;
                                        *(v222 + 68) = v234;
                                        *(v222 + 72) = v235;
                                        *(v222 + 76) = v236;
                                        *(v222 + 80) = v325;
                                        goto LABEL_374;
                                      }

                                      while (2)
                                      {
                                        v243 = v222;
                                        v244 = v221 - 1;
                                        v221 = (v221 - 1) >> 1;
                                        v222 = n128_u64 + 96 * v221;
                                        if (*(v222 + 85) == 1)
                                        {
                                          v245 = *(v222 + 76);
                                          if (v245 >= v236)
                                          {
                                            if (v245 != v236)
                                            {
                                              goto LABEL_424;
                                            }

                                            goto LABEL_421;
                                          }
                                        }

                                        else if (*(v222 + 16) >= __PAIR128__(v232, v231))
                                        {
                                          if (*(v222 + 24) != v232 || *(v222 + 16) != v231)
                                          {
LABEL_424:
                                            v222 = v243;
                                            goto LABEL_425;
                                          }

LABEL_421:
                                          v247 = *(v222 + 68);
                                          if (v247 >= v234 && (v247 != v234 || *(v222 + 64) <= v233))
                                          {
                                            goto LABEL_424;
                                          }
                                        }

                                        *v243 = *v222;
                                        *(v243 + 16) = *(v222 + 16);
                                        v240 = *(v222 + 32);
                                        v241 = *(v222 + 48);
                                        v242 = *(v222 + 80);
                                        *(v243 + 64) = *(v222 + 64);
                                        *(v243 + 80) = v242;
                                        *(v243 + 32) = v240;
                                        *(v243 + 48) = v241;
                                        if (v244 <= 1)
                                        {
                                          goto LABEL_425;
                                        }

                                        continue;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v226 = *(v222 + 16);
                                    v225 = *(v222 + 24);
                                    if (__PAIR128__(v225, v226) < *(v201 + 16))
                                    {
                                      goto LABEL_408;
                                    }

                                    if (v225 == *(v201 + 24) && v226 == *(v201 + 16))
                                    {
                                      goto LABEL_405;
                                    }
                                  }
                                }

LABEL_374:
                                a2 -= 6;
                                if (v197-- <= 2)
                                {
                                  return;
                                }

                                continue;
                              }

                              goto LABEL_378;
                            }
                          }
                        }

                        else
                        {
                          v212 = *(v206 + 112);
                          v211 = *(v206 + 120);
                          if (__PAIR128__(v211, v212) >= *(v206 + 208))
                          {
                            if (v211 == *(v206 + 216) && v212 == *(v206 + 208))
                            {
                              goto LABEL_389;
                            }

                            goto LABEL_377;
                          }
                        }

                        break;
                      }

                      v201 = v206 + 192;
                      v199 = v208;
                      goto LABEL_377;
                    }
                  }
                }

                else
                {
                  if (*(v157 + 16) < __PAIR128__(v177, v176))
                  {
                    goto LABEL_309;
                  }

                  if (*(v157 + 24) == v177 && *(v157 + 16) == v176)
                  {
                    goto LABEL_368;
                  }
                }
              }
            }
          }

          else
          {
            v171 = *(v157 + 16);
            v170 = *(v157 + 24);
            if (__PAIR128__(v170, v171) < *(v167 + 16))
            {
              goto LABEL_311;
            }

            if (v170 != *(v167 + 24) || v171 != *(v167 + 16))
            {
              goto LABEL_341;
            }
          }

          v173 = *(v157 + 68);
          v174 = *(v167 + 68);
          if (v173 < v174 || v173 == v174 && *(v157 + 64) > *(v167 + 64))
          {
            goto LABEL_311;
          }

          goto LABEL_341;
        }
      }

      else
      {
        v163 = *(v157 + 16);
        v162 = *(v157 + 24);
        if (__PAIR128__(v162, v163) >= *(v157 + 112))
        {
          if (v162 != *(v157 + 120) || v163 != *(v157 + 112))
          {
            goto LABEL_328;
          }

          goto LABEL_324;
        }
      }

LABEL_327:
      v157 += 96;
      v159 = 2 * v158 + 2;
      goto LABEL_328;
    }

    v13 = v12 >> 1;
    v14 = n128_u64 + 96 * (v12 >> 1);
    if (v11 <= 0x3000)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>((result + 96 * v13), result, a2 - 6, a5);
      --a3;
      if (a4)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(result, (result + 96 * v13), a2 - 6, a5);
      v16 = 96 * v13;
      v17 = (96 * v13 + result - 96);
      v18 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>((result + 96), v17, a2 - 12, v15);
      v19 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>((result + 192), (result + 96 + v16), a2 - 18, v18);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(v17, v14, (result + 96 + v16), v19);
      v20 = *result;
      *result = *v14;
      *v14 = v20;
      v312 = *(result + 64);
      v317 = *(result + 80);
      v299 = *(result + 32);
      v307 = *(result + 48);
      v291 = *(result + 16);
      *(result + 16) = *(v14 + 16);
      v21 = *(v14 + 48);
      v23 = *(v14 + 64);
      v22 = *(v14 + 80);
      *(result + 32) = *(v14 + 32);
      *(result + 48) = v21;
      *(result + 64) = v23;
      *(result + 80) = v22;
      *(v14 + 16) = v291;
      *(v14 + 64) = v312;
      *(v14 + 80) = v317;
      *(v14 + 32) = v299;
      *(v14 + 48) = v307;
      --a3;
      if (a4)
      {
        goto LABEL_28;
      }
    }

    if (*(result - 11) == 1)
    {
      v24 = *(result - 20);
      v25 = *(result + 76);
      if (v24 < v25)
      {
        goto LABEL_28;
      }

      if (v24 != v25)
      {
        goto LABEL_114;
      }

LABEL_25:
      v29 = *(result - 28);
      v30 = *(result + 68);
      if (v29 < v30 || v29 == v30 && *(result - 32) > *(result + 64))
      {
        goto LABEL_28;
      }

LABEL_114:
      v71 = *result;
      v72 = *(result + 16);
      v73 = *(result + 24);
      a5 = *(result + 32);
      v331 = a5;
      v339 = *(result + 48);
      v74 = *(result + 64);
      a5.n128_u32[0] = *(result + 68);
      v75 = *(result + 72);
      v76 = *(result + 76);
      v289 = *(result + 80);
      v290 = *(result + 84);
      v77 = *(result + 85);
      v329 = *(result + 94);
      v323 = *(result + 86);
      if (v77)
      {
        v78 = a2[-2].n128_f32[3];
        if (v76 < v78 || v76 == v78 && ((v79 = a2[-2].n128_f32[1], a5.n128_f32[0] < v79) || a5.n128_f32[0] == v79 && v74 > a2[-2].n128_u32[0]))
        {
          v80 = (result + 96);
          v81 = *(result + 172);
          if (v76 < v81)
          {
            j = a2;
            if (v80 >= a2)
            {
              goto LABEL_186;
            }

LABEL_177:
            for (j = a2 - 6; ; j -= 6)
            {
              v96 = j[4].n128_f32[3];
              if (v76 >= v96)
              {
                if (v76 != v96)
                {
                  break;
                }

                v97 = j[4].n128_f32[1];
                if (a5.n128_f32[0] >= v97 && (a5.n128_f32[0] != v97 || v74 <= j[4].n128_u32[0]))
                {
                  break;
                }
              }
            }

            goto LABEL_186;
          }

          v91 = result + 160;
          do
          {
            if (v76 == v81)
            {
              v92 = *(v91 + 4);
              if (a5.n128_f32[0] < v92)
              {
                goto LABEL_175;
              }

              if (a5.n128_f32[0] == v92 && v74 > *v91)
              {
                break;
              }
            }

            v80 += 6;
            v81 = *(v91 + 108);
            v91 += 96;
          }

          while (v76 >= v81);
LABEL_174:
          v80 = (v91 - 64);
          goto LABEL_175;
        }
      }

      else if (__PAIR128__(v73, v72) < *v288 || (v73 == a2[-5].n128_u64[1] ? (v85 = v72 == v288->n128_u64[0]) : (v85 = 0), v85 && ((v86 = a2[-2].n128_f32[1], a5.n128_f32[0] < v86) || a5.n128_f32[0] == v86 && v74 > a2[-2].n128_u32[0])))
      {
        v80 = (result + 96);
        v83 = *(result + 112);
        v84 = *(result + 120);
        if (__PAIR128__(v73, v72) < *(result + 112))
        {
          j = a2;
          if (v80 >= a2)
          {
            goto LABEL_186;
          }

          goto LABEL_232;
        }

        v91 = result + 160;
        while (1)
        {
          if (v73 == v84 && v72 == v83)
          {
            v95 = *(v91 + 4);
            if (a5.n128_f32[0] < v95)
            {
              goto LABEL_175;
            }

            if (a5.n128_f32[0] == v95 && v74 > *v91)
            {
              goto LABEL_174;
            }
          }

          v80 += 6;
          v83 = *(v91 + 48);
          v84 = *(v91 + 56);
          v93 = __PAIR128__(v73, v72) >= *(v91 + 48);
          v91 += 96;
          if (!v93)
          {
            goto LABEL_174;
          }
        }
      }

      v80 = (result + 96);
      if (result + 96 < a2)
      {
        if (*(result + 85))
        {
          do
          {
            v89 = v80[4].n128_f32[3];
            if (v76 < v89)
            {
              break;
            }

            if (v76 == v89)
            {
              v90 = v80[4].n128_f32[1];
              if (a5.n128_f32[0] < v90 || a5.n128_f32[0] == v90 && v74 > v80[4].n128_u32[0])
              {
                break;
              }
            }

            v80 += 6;
          }

          while (v80 < a2);
        }

        else
        {
          do
          {
            if (__PAIR128__(v73, v72) < *&v80[1])
            {
              break;
            }

            if (v73 == v80[1].n128_u64[1] && v72 == v80[1].n128_u64[0])
            {
              v88 = v80[4].n128_f32[1];
              if (a5.n128_f32[0] < v88 || a5.n128_f32[0] == v88 && v74 > v80[4].n128_u32[0])
              {
                break;
              }
            }

            v80 += 6;
          }

          while (v80 < a2);
        }
      }

LABEL_175:
      if (v80 >= a2)
      {
        j = a2;
        goto LABEL_186;
      }

      if (*(result + 85))
      {
        goto LABEL_177;
      }

LABEL_232:
      for (j = a2 - 6; ; j -= 6)
      {
        if (__PAIR128__(v73, v72) >= *&j[1])
        {
          if (v73 != j[1].n128_u64[1] || v72 != j[1].n128_u64[0])
          {
            break;
          }

          v117 = j[4].n128_f32[1];
          if (a5.n128_f32[0] >= v117 && (a5.n128_f32[0] != v117 || v74 <= j[4].n128_u32[0]))
          {
            break;
          }
        }
      }

LABEL_186:
      if (v80 < j)
      {
        while (1)
        {
          v101 = v80->n128_u32[0];
          v80->n128_u32[0] = j->n128_u32[0];
          j->n128_u32[0] = v101;
          v314 = v80[4];
          v319 = v80[5];
          v301 = v80[2];
          v309 = v80[3];
          v293 = v80[1];
          v80[1] = j[1];
          v102 = j[3];
          v104 = j[4];
          v103 = j[5];
          v80[2] = j[2];
          v80[3] = v102;
          v80[4] = v104;
          v80[5] = v103;
          j[3] = v309;
          j[4] = v314;
          j[5] = v319;
          j[1] = v293;
          j[2] = v301;
          n128_u64 = v80[6].n128_u64;
          if (v77)
          {
            v105 = v80[10].n128_f32[3];
            if (v76 >= v105)
            {
              v106 = v80 + 10;
              while (1)
              {
                if (v76 == v105)
                {
                  v107 = v106->n128_f32[1];
                  if (a5.n128_f32[0] < v107)
                  {
                    goto LABEL_215;
                  }

                  if (a5.n128_f32[0] == v107 && v74 > v106->n128_u32[0])
                  {
                    break;
                  }
                }

                n128_u64 += 96;
                v105 = v106[6].n128_f32[3];
                v106 += 6;
                if (v76 < v105)
                {
                  goto LABEL_215;
                }
              }

LABEL_213:
              if ((v77 & 1) == 0)
              {
                goto LABEL_222;
              }
            }

            do
            {
              do
              {
LABEL_216:
                j -= 6;
                v112 = j[4].n128_f32[3];
              }

              while (v76 < v112);
              if (v76 != v112)
              {
                break;
              }

              v113 = j[4].n128_f32[1];
            }

            while (a5.n128_f32[0] < v113 || a5.n128_f32[0] == v113 && v74 > j[4].n128_u32[0]);
            goto LABEL_191;
          }

          v108 = v80[7].n128_u64[0];
          v109 = v80[7].n128_u64[1];
          if (__PAIR128__(v73, v72) < *&v80[7])
          {
            goto LABEL_222;
          }

          v106 = v80 + 10;
          while (v73 != v109 || v72 != v108)
          {
LABEL_203:
            n128_u64 += 96;
            v108 = v106[3].n128_u64[0];
            v109 = v106[3].n128_u64[1];
            v93 = __PAIR128__(v73, v72) >= *&v106[3];
            v106 += 6;
            if (!v93)
            {
              goto LABEL_215;
            }
          }

          v111 = v106->n128_f32[1];
          if (a5.n128_f32[0] >= v111)
          {
            break;
          }

LABEL_215:
          n128_u64 = v106[-4].n128_u64;
          if (v77)
          {
            goto LABEL_216;
          }

          do
          {
            do
            {
LABEL_222:
              j -= 6;
            }

            while (__PAIR128__(v73, v72) < *&j[1]);
            if (v73 != j[1].n128_u64[1] || v72 != j[1].n128_u64[0])
            {
              break;
            }

            v115 = j[4].n128_f32[1];
          }

          while (a5.n128_f32[0] < v115 || a5.n128_f32[0] == v115 && v74 > j[4].n128_u32[0]);
LABEL_191:
          v80 = n128_u64;
          if (n128_u64 >= j)
          {
            goto LABEL_188;
          }
        }

        if (a5.n128_f32[0] == v111 && v74 > v106->n128_u32[0])
        {
          goto LABEL_213;
        }

        goto LABEL_203;
      }

      n128_u64 = v80;
LABEL_188:
      if (n128_u64 - 96 != result)
      {
        *result = *(n128_u64 - 96);
        *(result + 16) = *(n128_u64 - 80);
        v98 = *(n128_u64 - 64);
        v99 = *(n128_u64 - 48);
        v100 = *(n128_u64 - 16);
        *(result + 64) = *(n128_u64 - 32);
        *(result + 80) = v100;
        *(result + 32) = v98;
        *(result + 48) = v99;
      }

      a4 = 0;
      *(n128_u64 - 96) = v71;
      *(n128_u64 - 80) = v72;
      *(n128_u64 - 72) = v73;
      *(n128_u64 - 64) = v331;
      *(n128_u64 - 48) = v339;
      *(n128_u64 - 32) = v74;
      *(n128_u64 - 28) = a5.n128_u32[0];
      *(n128_u64 - 24) = v75;
      *(n128_u64 - 20) = v76;
      *(n128_u64 - 16) = v289;
      *(n128_u64 - 12) = v290;
      *(n128_u64 - 11) = v77;
      *(n128_u64 - 10) = v323;
      *(n128_u64 - 2) = v329;
    }

    else
    {
      v27 = *(result - 80);
      v26 = *(result - 72);
      if (__PAIR128__(v26, v27) >= *(result + 16))
      {
        if (v26 != *(result + 24) || v27 != *(result + 16))
        {
          goto LABEL_114;
        }

        goto LABEL_25;
      }

LABEL_28:
      v31 = 0;
      v32 = *(result + 16);
      v33 = *result;
      v34 = *(result + 24);
      v330 = *(result + 32);
      v338 = *(result + 48);
      v35 = *(result + 64);
      v36 = *(result + 68);
      v37 = *(result + 72);
      v38 = *(result + 76);
      v322 = *(result + 80);
      while (1)
      {
        v39 = result + v31;
        if (*(result + v31 + 181) == 1)
        {
          v40 = *(v39 + 172);
          if (v40 < v38)
          {
            goto LABEL_29;
          }

          if (v40 != v38)
          {
            break;
          }

          goto LABEL_40;
        }

        v43 = v39 + 112;
        v41 = *(v39 + 112);
        v42 = *(v43 + 8);
        if (__PAIR128__(v42, v41) < __PAIR128__(v34, v32))
        {
          goto LABEL_29;
        }

        if (v42 != v34 || v41 != v32)
        {
          break;
        }

LABEL_40:
        v45 = *(result + v31 + 164);
        if (v45 >= v36)
        {
          if (v45 != v36)
          {
            break;
          }

          v46 = (result + v31);
          if (*(result + v31 + 160) <= v35)
          {
            goto LABEL_45;
          }
        }

LABEL_29:
        v31 += 96;
      }

      v46 = (result + v31);
LABEL_45:
      v47 = v46 + 6;
      k = a2 - 6;
      if (v46 != result)
      {
        while (1)
        {
          if (k[5].n128_u8[5] == 1)
          {
            v52 = k[4].n128_f32[3];
            if (v52 < v38)
            {
              goto LABEL_77;
            }

            if (v52 != v38)
            {
              goto LABEL_63;
            }
          }

          else
          {
            if (*&k[1] < __PAIR128__(v34, v32))
            {
              goto LABEL_77;
            }

            if (k[1].n128_u64[1] != v34 || k[1].n128_u64[0] != v32)
            {
              goto LABEL_63;
            }
          }

          v54 = k[4].n128_f32[1];
          if (v54 < v36 || v54 == v36 && k[4].n128_u32[0] > v35)
          {
            goto LABEL_77;
          }

LABEL_63:
          k -= 6;
        }
      }

      k = a2;
      if (v47 < a2)
      {
        for (k = a2 - 6; ; k -= 6)
        {
          if (k[5].n128_u8[5] == 1)
          {
            v49 = k[4].n128_f32[3];
            if (v49 < v38)
            {
              break;
            }

            if (v49 != v38)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (*&k[1] < __PAIR128__(v34, v32))
            {
              break;
            }

            if (k[1].n128_u64[1] != v34 || k[1].n128_u64[0] != v32)
            {
              goto LABEL_61;
            }
          }

          v51 = k[4].n128_f32[1];
          if (v51 < v36 || v51 == v36 && k[4].n128_u32[0] > v35)
          {
            break;
          }

LABEL_61:
          if (v47 >= k)
          {
            break;
          }
        }
      }

LABEL_77:
      n128_u64 = v46[6].n128_u64;
      if (v47 < k)
      {
        n128_u64 = v46[6].n128_u64;
        v55 = k;
LABEL_80:
        v56 = *n128_u64;
        *n128_u64 = v55->n128_u32[0];
        v55->n128_u32[0] = v56;
        v313 = *(n128_u64 + 64);
        v318 = *(n128_u64 + 80);
        v300 = *(n128_u64 + 32);
        v308 = *(n128_u64 + 48);
        v292 = *(n128_u64 + 16);
        *(n128_u64 + 16) = v55[1];
        v57 = v55[3];
        v59 = v55[4];
        v58 = v55[5];
        *(n128_u64 + 32) = v55[2];
        *(n128_u64 + 48) = v57;
        *(n128_u64 + 64) = v59;
        *(n128_u64 + 80) = v58;
        v55[3] = v308;
        v55[4] = v313;
        v55[5] = v318;
        v55[1] = v292;
        v55[2] = v300;
        while (1)
        {
          do
          {
            while (1)
            {
              n128_u64 += 96;
              if (*(n128_u64 + 85) != 1)
              {
                break;
              }

              v60 = *(n128_u64 + 76);
              if (v60 >= v38)
              {
                if (v60 != v38)
                {
                  goto LABEL_94;
                }

                goto LABEL_91;
              }
            }
          }

          while (*(n128_u64 + 16) < __PAIR128__(v34, v32));
          if (*(n128_u64 + 24) != v34 || *(n128_u64 + 16) != v32)
          {
            break;
          }

LABEL_91:
          v62 = *(n128_u64 + 68);
          if (v62 >= v36 && (v62 != v36 || *(n128_u64 + 64) <= v35))
          {
            goto LABEL_94;
          }
        }

        while (1)
        {
LABEL_94:
          while (1)
          {
            v55 -= 6;
            if (v55[5].n128_u8[5] == 1)
            {
              break;
            }

            if (*&v55[1] < __PAIR128__(v34, v32))
            {
              goto LABEL_79;
            }

            if (v55[1].n128_u64[1] == v34 && v55[1].n128_u64[0] == v32)
            {
              goto LABEL_104;
            }
          }

          v63 = v55[4].n128_f32[3];
          if (v63 < v38)
          {
            goto LABEL_79;
          }

          if (v63 == v38)
          {
LABEL_104:
            v65 = v55[4].n128_f32[1];
            if (v65 < v36 || v65 == v36 && v55[4].n128_u32[0] > v35)
            {
LABEL_79:
              if (n128_u64 >= v55)
              {
                break;
              }

              goto LABEL_80;
            }
          }
        }
      }

      if (n128_u64 - 96 != result)
      {
        *result = *(n128_u64 - 96);
        *(result + 16) = *(n128_u64 - 80);
        v66 = *(n128_u64 - 64);
        v67 = *(n128_u64 - 48);
        v68 = *(n128_u64 - 16);
        *(result + 64) = *(n128_u64 - 32);
        *(result + 80) = v68;
        *(result + 32) = v66;
        *(result + 48) = v67;
      }

      *(n128_u64 - 96) = v33;
      *(n128_u64 - 80) = v32;
      *(n128_u64 - 72) = v34;
      *(n128_u64 - 64) = v330;
      *(n128_u64 - 48) = v338;
      *(n128_u64 - 32) = v35;
      *(n128_u64 - 28) = v36;
      *(n128_u64 - 24) = v37;
      *(n128_u64 - 20) = v38;
      *(n128_u64 - 16) = v322;
      if (v47 < k)
      {
LABEL_113:
        std::__introsort<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,false>(result, n128_u64 - 96, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v69 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *>(result, (n128_u64 - 96), v322);
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *>(n128_u64, a2, v70))
        {
          a2 = (n128_u64 - 96);
          if (v69)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v69)
        {
          goto LABEL_113;
        }
      }
    }
  }

  if (a2[-1].n128_u8[5] != 1)
  {
    if (*v288 >= *(n128_u64 + 16))
    {
      if (a2[-5].n128_u64[1] != *(n128_u64 + 24) || v288->n128_u64[0] != *(n128_u64 + 16))
      {
        return;
      }

      goto LABEL_432;
    }

LABEL_435:
    v251 = *n128_u64;
    *n128_u64 = v9->n128_u32[0];
    v9->n128_u32[0] = v251;
    v315 = *(n128_u64 + 64);
    v320 = *(n128_u64 + 80);
    v304 = *(n128_u64 + 32);
    v310 = *(n128_u64 + 48);
    v296 = *(n128_u64 + 16);
    *(n128_u64 + 16) = *v288;
    v252 = a2[-3];
    v254 = a2[-2];
    v253 = a2[-1];
    *(n128_u64 + 32) = a2[-4];
    *(n128_u64 + 48) = v252;
    *(n128_u64 + 64) = v254;
    *(n128_u64 + 80) = v253;
    *v288 = v296;
    a2[-2] = v315;
    a2[-1] = v320;
    a2[-4] = v304;
    a2[-3] = v310;
    return;
  }

  v118 = a2[-2].n128_f32[3];
  v119 = *(n128_u64 + 76);
  if (v118 < v119)
  {
    goto LABEL_435;
  }

  if (v118 != v119)
  {
    return;
  }

LABEL_432:
  v249 = a2[-2].n128_f32[1];
  v250 = *(n128_u64 + 68);
  if (v249 < v250 || v249 == v250 && a2[-2].n128_u32[0] > *(n128_u64 + 64))
  {
    goto LABEL_435;
  }
}