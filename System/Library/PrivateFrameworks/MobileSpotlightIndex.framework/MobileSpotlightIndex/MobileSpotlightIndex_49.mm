uint64_t db_set_ignore_vectors(uint64_t result, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*result != 1685287992)
  {
    v2 = result;
    v3 = *__error();
    v4 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *v2;
      *buf = 136315650;
      v10 = "db_set_ignore_vectors";
      v11 = 1024;
      v12 = 427;
      v13 = 1024;
      v14 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v3;
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 427, v8);
    free(v7);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  *(result + 989) = a2;
  return result;
}

uint64_t db_clear_vector_fields(int *a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      *buf = 136315650;
      v13 = "db_clear_vector_fields";
      v14 = 1024;
      v15 = 428;
      v16 = 1024;
      v17 = v8;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v6;
    v9 = __si_assert_copy_extra_332();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 428, v11);
    free(v10);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return db2_clear_vector_fields(a1, a2, a3, 0, a4);
}

uint64_t db_apply(int *a1, uint64_t (*a2)(uint64_t, void, uint64_t), uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      *buf = 136315650;
      v12 = "db_apply";
      v13 = 1024;
      v14 = 431;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v5;
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 431, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return db2_apply(a1, a2, a3);
}

uint64_t db_set_dirty_chunks(uint64_t result, uint64_t a2, int a3, int a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*result != 1685287992)
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 435, v27);
    free(v26);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  LODWORD(v4) = a3;
  v6 = result;
  if (!*(result + 864))
  {
    *(result + 864) = a2;
    *(result + 872) = a3;
    *(result + 876) = a4;
    return result;
  }

  v7 = __THREAD_SLOT_KEY[0];
  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v7 = __THREAD_SLOT_KEY[0];
  }

  v8 = pthread_getspecific(v7);
  HIDWORD(v10) = qos_class_self() - 9;
  LODWORD(v10) = HIDWORD(v10);
  v9 = v10 >> 2;
  if (v9 > 6)
  {
    v11 = 0;
  }

  else
  {
    v11 = dword_1C2BFF8F0[v9];
  }

  v12 = pthread_mutex_lock((v6 + 584));
  if (*(v6 + 768) || *(v6 + 780) || (*(v6 + 796) & 1) != 0)
  {
    goto LABEL_12;
  }

  if (v11 <= 5)
  {
    v22 = v11 - 6;
    v23 = (v6 + 16 * v11 + 648);
    while (!*v23)
    {
      v23 += 2;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_32;
      }
    }

LABEL_12:
    db_rwlock_wait(v6 + 584, v11, 2);
    goto LABEL_13;
  }

LABEL_32:
  *(v6 + 768) = pthread_self();
LABEL_13:
  pthread_mutex_unlock((v6 + 584));
  if (v12)
  {
    v28 = *__error();
    v29 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v31 = "db2_set_dirty_chunks";
      v32 = 1024;
      v33 = 15253;
      v34 = 1024;
      v35 = v12;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
    }

    *__error() = v28;
    sdb2_die(v6, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15253);
  }

  if (v8)
  {
    v13 = CIOnThreadCleanUpPush(v8 - 1, db_write_unlock, v6 + 584);
    if (!v4)
    {
      goto LABEL_20;
    }

LABEL_18:
    v4 = v4;
    v14 = (a2 + 4);
    do
    {
      _add_dirty_chunk(v6, *(v14 - 1), *v14, 0);
      v14 += 2;
      --v4;
    }

    while (v4);
    goto LABEL_20;
  }

  v13 = -1;
  if (v4)
  {
    goto LABEL_18;
  }

LABEL_20:
  v15 = pthread_mutex_lock((v6 + 584));
  *(v6 + 788) = 0;
  v16 = *(v6 + 760);
  *(v6 + 760) = 0u;
  v17 = *(v6 + 780) != 0;
  *(v6 + 796) = 0;
  db_rwlock_wakeup(v6 + 584, v17, 0);
  result = pthread_mutex_unlock((v6 + 584));
  if (v16)
  {
    result = pthread_override_qos_class_end_np(v16);
  }

  if (v15)
  {
    sdb2_die(v6, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15257);
  }

  if (v8)
  {
    result = CIOnThreadCleanUpClearItem(v8 - 1, v13);
    v18 = &threadData[9 * (v8 - 1)];
    v21 = *(v18 + 14);
    v19 = v18 + 7;
    v20 = v21;
    if (v13 + 1 == v21)
    {
      *v19 = v20 - 1;
    }
  }

  return result;
}

void db_garbage_collect_strings_commit(uint64_t a1, _BYTE *a2, char a3)
{
  if (a2 && (a3 & 1) == 0)
  {
    if (a1)
    {
      if ((*(a1 + 804) & 0x14) != 0)
      {
        data_maps_garbage_compact_collect_commit(a1 + 880, a2, 0);
        if (a2[16896] == 1)
        {
          (*(*(a1 + 968) + 16))();
        }
      }
    }

    free(a2);
  }
}

BOOL db_uses_stringmap(uint64_t a1)
{
  if (*a1 != 1685287992)
  {
    v2 = __si_assert_copy_extra_332();
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 470, v4);
    free(v3);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return (*(a1 + 804) & 0x14) != 0;
}

void *db_open_query_with_expr(_DWORD *a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v23 = __si_assert_copy_extra_332();
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 569, v25);
    free(v24);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (*MEMORY[0x1E69E9AC8] <= 0x7FFuLL)
  {
    ++sTotal_14546;
  }

  v4 = malloc_type_zone_calloc(queryZone, 0x800uLL, 1uLL, 0x5BAF1CEAuLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 3506;
    v4[250] = a2;
    v4[1] = 0;
    v4[2] = a1;
    *(v4 + 506) = 20;
    v6 = malloc_type_malloc(a1[11], 0x1000040A86A77D5uLL);
    *(v5 + 255) = v6;
    if (v6)
    {
      v29 = 0;
      v30 = 0;
      v7 = CICleanUpThreadLocGet(&v29);
      v8 = _db_write_lock((a1 + 146));
      if (v8)
      {
        v26 = v8;
        v27 = *__error();
        v28 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v32 = "db2_open_query_with_expr";
          v33 = 1024;
          v34 = 43;
          v35 = 1024;
          v36 = v26;
          _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
        }

        *__error() = v27;
        sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 43);
      }

      if (v7)
      {
        v9 = CIOnThreadCleanUpPush(v29, db_write_unlock, (a1 + 146));
      }

      else
      {
        v9 = -1;
      }

      _db2_flush_all_cache(a1, 0);
      v10 = a1[9];
      v11 = a1[10];
      v12 = v11 + v10;
      *(v5 + 252) = v11 + v10;
      v13 = a1[11];
      if (v11 + v10 == a1[12])
      {
        v12 += 0x4000;
        *(v5 + 252) = v12;
      }

      v14 = *(v5 + 255);
      while (fd_pread(*(*(v5 + 2) + 848), v14, v13, v12) == v13 && !db2_page_uncompress_swap(a1, *(v5 + 255), &v30, 0))
      {
        v14 = *(v5 + 255);
        if (v30)
        {
          free(*(v5 + 255));
          v14 = v30;
          *(v5 + 255) = v30;
        }

        if (*v14 != 1684172850)
        {
          break;
        }

        v15 = v14[3];
        if ((v15 & 0xF0) == 0)
        {
          goto LABEL_26;
        }

        if ((v15 & 4) != 0)
        {
          v16 = 4;
        }

        else
        {
          v16 = 1;
        }

        v13 = v14[v16];
        v12 = *(v5 + 252) + v13;
        *(v5 + 252) = v12;
      }

      *(v5 + 502) = -1;
LABEL_26:
      if (db_write_unlock((a1 + 146)))
      {
        sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 96);
      }

      if (v7)
      {
        v17 = v29;
        CIOnThreadCleanUpClearItem(v29, v9);
        v18 = &threadData[9 * v17];
        v21 = *(v18 + 14);
        v19 = v18 + 7;
        v20 = v21;
        if (v9 + 1 == v21)
        {
          *v19 = v20 - 1;
        }
      }

      *(v5 + 254) = 0;
    }

    else
    {
      free(v5);
      return 0;
    }
  }

  else
  {
    _log_fault_for_malloc_failure();
  }

  return v5;
}

uint64_t db_restore_dirty_chunk_info(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v28 = __si_assert_copy_extra_332();
    v29 = v28;
    v30 = "";
    if (v28)
    {
      v30 = v28;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "core-db.c", 827, "!info->dirty_chunks", v30);
    goto LABEL_38;
  }

  v9 = x_openat(a1, "store.updates", 256, a4, a5, a6, a7, a8, v34);
  if (v9 == -1)
  {
    v11 = *__error();
    goto LABEL_29;
  }

  v47 = 0u;
  v48 = 0u;
  *buf = 0u;
  v46 = 0u;
  if ((store_stream_init_fd(buf, v9, 0, 0, 0) & 1) == 0)
  {
    v11 = v46;
    goto LABEL_29;
  }

  if (store_stream_read_vint32(buf) != 1)
  {
    v11 = v46;
    goto LABEL_28;
  }

  *(a2 + 8) = store_stream_read_vint32(buf);
  vint32 = store_stream_read_vint32(buf);
  *(a2 + 12) = vint32;
  if (*(a2 + 8) <= vint32)
  {
    v14 = malloc_type_malloc(8 * vint32, 0x100004000313F17uLL);
    *a2 = v14;
    if (v14)
    {
      if (*(a2 + 8))
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v18 = store_stream_read_vint32(buf);
          v19 = store_stream_read_vint32(buf);
          v11 = v46;
          if (v46)
          {
            break;
          }

          v17 += v18;
          if (v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = 0x10000;
          }

          v21 = (*a2 + v15);
          *v21 = v17;
          v21[1] = v20;
          ++v16;
          v15 += 8;
          if (v16 >= *(a2 + 8))
          {
            v11 = 0;
            goto LABEL_28;
          }
        }

        v14 = *a2;
      }

      else
      {
        v11 = v46;
        if (!v46)
        {
          goto LABEL_28;
        }
      }

      free(v14);
      *a2 = 0;
LABEL_28:
      store_stream_destroy(buf);
      goto LABEL_29;
    }

    v32 = __si_assert_copy_extra_332();
    v29 = v32;
    v33 = "";
    if (v32)
    {
      v33 = v32;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "core-db.c", 851, "info->dirty_chunks", v33);
LABEL_38:
    free(v29);
    if (__valid_fs(-1))
    {
      v31 = 2989;
    }

    else
    {
      v31 = 3072;
    }

    *v31 = -559038737;
    abort();
  }

  if (v46)
  {
    v11 = v46;
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  v12 = *__error();
  v13 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v26 = *(a2 + 8);
    v27 = *(a2 + 12);
    *v35 = 136316162;
    v36 = "db_restore_dirty_chunk_info";
    v37 = 1024;
    v38 = 844;
    v39 = 1024;
    v40 = v11;
    v41 = 1024;
    v42 = v26;
    v43 = 1024;
    v44 = v27;
    _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: err:%d num_chunks:%d > max_chunks:%d", v35, 0x24u);
  }

  *__error() = v12;
LABEL_29:
  close(v9);
  if (v11)
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(4);
    v24 = dword_1EBF46ADC < 3;
    if (os_log_type_enabled(v23, (dword_1EBF46ADC < 3)))
    {
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&dword_1C278D000, v23, v24, "*warn* Restore error: %d, recovering from shadow", buf, 8u);
    }

    *__error() = v22;
    if (*a2)
    {
      free(*a2);
      *a2 = 0;
    }
  }

  return v11;
}

uint64_t _fd_protection_class(int a1, int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  else
  {
    return fcntl(a2, 63);
  }
}

BOOL _assert_match_address(uint64_t a1, uint64_t a2)
{
  v2 = a2 == 3072;
  if (a2 == 2989)
  {
    v2 = 1;
  }

  return a2 == 2816 || v2;
}

BOOL _mappingMatchAddress(unint64_t *a1, unint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v3 = a1[1];
    v4 = 1;
    v5 = *a1;
    v6 = 1;
    while (1)
    {
      v7 = *v3;
      if (*v3 + 1 >= 2 && v7 <= a2)
      {
        v9 = v7 + v3[1];
        if (v9 > a2)
        {
          break;
        }
      }

      v6 = v4++ < *a1;
      v3 += 3;
      if (!--v5)
      {
        return 0;
      }
    }

    v10 = v3[2];
    memset(&v23, 0, sizeof(v23));
    memset(v42, 0, sizeof(v42));
    if (v10)
    {
      v11 = *(v10 + 44);
    }

    else
    {
      v11 = -1;
    }

    v13 = fd_name(v10, v42, 0x100uLL);
    v14 = fstatat(v11, v13, &v23, 32);
    v15 = *__error();
    v16 = _SILogForLogForCategory(0);
    v17 = gSILogLevels[0] < 3;
    v18 = os_log_type_enabled(v16, (gSILogLevels[0] < 3));
    if (v14)
    {
      if (v18)
      {
        *buf = 136316162;
        v25 = "mapping";
        v26 = 2080;
        v27 = v13;
        v28 = 2048;
        v29 = a2;
        v30 = 2048;
        v31 = v7;
        v32 = 2048;
        v33 = v9;
        v19 = "*warn* Got exception on %s %s addr:%p start:%p map end:%p";
        v20 = v16;
        v21 = v17;
        v22 = 52;
LABEL_21:
        _os_log_impl(&dword_1C278D000, v20, v21, v19, buf, v22);
      }
    }

    else if (v18)
    {
      *buf = 136317186;
      v25 = "mapping";
      v26 = 2080;
      v27 = v13;
      v28 = 2048;
      v29 = a2;
      v30 = 2048;
      v31 = v7;
      v32 = 2048;
      v33 = v9;
      v34 = 1024;
      v35 = 0;
      v36 = 2048;
      st_size = v23.st_size;
      v38 = 1024;
      st_dev = v23.st_dev;
      v40 = 2048;
      st_ino = v23.st_ino;
      v19 = "*warn* Got exception on %s %s addr:%p start:%p map end:%p sres:%d file_size:%lld dev:%d ino:%lld";
      v20 = v16;
      v21 = v17;
      v22 = 84;
      goto LABEL_21;
    }

    *__error() = v15;
    return v6;
  }

  return 0;
}

char *copyVolumeInfoStr(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = 0;
  if (a1 == -1)
  {
    return strdup("");
  }

  bzero(&v13, 0x878uLL);
  if (fstatfs(a1, &v13))
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *__error();
      *buf = 136315650;
      v8 = "copyVolumeInfoStr";
      v9 = 1024;
      v10 = 45;
      v11 = 1024;
      v12 = v5;
      _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: fstatfs err:%d", buf, 0x18u);
    }

    *__error() = v2;
    return strdup("");
  }

  asprintf(&v6, "(%s, t: 0x%x, st: 0x%x, f: 0x%x)", v13.f_fstypename, v13.f_type, v13.f_fssubtype, v13.f_flags);
  result = v6;
  if (!v6)
  {
    return strdup("");
  }

  return result;
}

uint64_t check_crash_state(int a1, int a2, char a3, uint64_t *a4, int a5)
{
  v149 = *MEMORY[0x1E69E9840];
  bzero(v140, 0x400uLL);
  v10 = fcntl(a1, 50, v140);
  if (v140[0])
  {
    v11 = v10 < 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v140;
  }

  v134 = v13;
  v14 = time(0);
  __s2 = getBuildVersion();
  v15 = a3 & 4;
  v16 = 3600;
  if ((a3 & 4) == 0)
  {
    v16 = 10800;
  }

  if (a3)
  {
    v17 = 14400;
  }

  else
  {
    v17 = v16;
  }

  v18 = os_log_create("com.apple.spotlight.trace", "SignPosts");
  v19 = v18;
  if (a4)
  {
    *a4 = -1;
  }

  v139 = 0;
  if (v12)
  {
    if (os_signpost_enabled(v18))
    {
      *__s = 0;
      v20 = __s;
      v21 = v19;
LABEL_30:
      v35 = (v15 >> 1) ^ 3;
LABEL_31:
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v21, OS_SIGNPOST_EVENT, v35, "check_crash_state_signpost", &unk_1C2C3BEBB, v20, 2u);
      return 0;
    }

    return 0;
  }

  v22 = v18;
  v123 = a4;
  bzero(__s, 0x400uLL);
  v115 = __s;
  if ((fcntl(a1, 50) & 0x80000000) == 0 && __s[0])
  {
    size = strlen(__s) + 1;
    v28 = (v15 >> 1) ^ 3;
    v29 = a2;
    v30 = v22;
    v119 = v15;
    if (a2)
    {
      bzero(buf, 0x400uLL);
      v31 = strrchr(__s, 47);
      if (!v31 || (v33 = v31[1], v32 = v31 + 1, !v33))
      {
        v39 = -1;
        goto LABEL_48;
      }

      if (a5)
      {
        if (a5 == 1)
        {
          v34 = "mds64-crash-state-vector-index-v2";
        }

        else
        {
          v34 = "mds64-crash-state-reverse-store-v2";
          if (a5 == 3)
          {
            v34 = "mds64-crash-state-forward-path-index-v2";
          }
        }
      }

      else
      {
        v34 = "mds64-crash-state-v2";
      }

      snprintf(buf, 0x400uLL, "/private/var/db/Spotlight-V100/%s-%s", v32, v34);
      LOWORD(v115) = 0;
      v38 = buf;
      v40 = -1;
      v41 = 0x20000000;
    }

    else
    {
      if (a5)
      {
        if (a5 == 1)
        {
          v38 = "mds64-crash-state-vector-index-v2";
        }

        else if (a5 == 3)
        {
          v38 = "mds64-crash-state-forward-path-index-v2";
        }

        else
        {
          v38 = "mds64-crash-state-reverse-store-v2";
        }
      }

      else
      {
        v38 = "mds64-crash-state-v2";
      }

      v40 = a1;
      v41 = 0;
    }

    v39 = x_openat(v40, v38, v41, v23, v24, v25, v26, v27, v115);
LABEL_48:
    if (v39 != -1)
    {
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v131 = 0;
      v42 = 0x100004077774924;
      v116 = 0;
      v117 = -1;
      v118 = -1;
      v129 = v17;
      v130 = v28;
      v125 = v30;
      v126 = a2;
      v127 = a1;
      v128 = v39;
      for (i = v14; ; v14 = i)
      {
        v43 = read(v39, &v139, 4uLL);
        if (v43 != 4)
        {
          if (!v43)
          {
            v83 = 0;
            goto LABEL_126;
          }

          v84 = v28;
          v85 = v30;
          v86 = *__error();
          v87 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315650;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 333;
            HIWORD(buf[0].st_uid) = 2080;
            *&buf[0].st_gid = __s;
            v88 = "%s:%d: check_crash_state not enough content 1 path:%s";
            goto LABEL_175;
          }

          goto LABEL_106;
        }

        if (read(v39, &size, 8uLL) != 8)
        {
          v84 = v28;
          v85 = v30;
          v86 = *__error();
          v87 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_106;
          }

          buf[0].st_dev = 136315650;
          *&buf[0].st_mode = "check_crash_state_with_date";
          WORD2(buf[0].st_ino) = 1024;
          *(&buf[0].st_ino + 6) = 339;
          HIWORD(buf[0].st_uid) = 2080;
          *&buf[0].st_gid = __s;
          v88 = "%s:%d: check_crash_state not enough content 2 path:%s";
          goto LABEL_175;
        }

        v49 = v139;
        v50 = size;
        if (v139 == 875967043)
        {
          v139 = 1127364148;
          v50 = bswap64(size);
          size = v50;
          v51 = 1127364148;
        }

        else
        {
          v51 = v139;
        }

        if (v51 != 1127364148 || v50 - 4097 <= 0xFFFFFFFFFFFFF02FLL)
        {
          break;
        }

        v52 = malloc_type_malloc(v50, v42);
        if (!v52)
        {
          v84 = v28;
          v85 = v30;
          v89 = *__error();
          v90 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315650;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 367;
            HIWORD(buf[0].st_uid) = 2080;
            *&buf[0].st_gid = __s;
            _os_log_error_impl(&dword_1C278D000, v90, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state malloc error vol:%s", buf, 0x1Cu);
          }

          *__error() = v89;
          v83 = 1;
          v14 = i;
          goto LABEL_110;
        }

        v53 = v52;
        v54 = read(v39, v52, size);
        if (v54 != size)
        {
          v91 = *__error();
          v92 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315650;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 372;
            HIWORD(buf[0].st_uid) = 2080;
            *&buf[0].st_gid = __s;
            _os_log_error_impl(&dword_1C278D000, v92, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state not enough content 4 path:%s", buf, 0x1Cu);
          }

          goto LABEL_125;
        }

        v55 = v30;
        if (v49 == 875967043)
        {
          for (j = 0; j != 6; j += 2)
          {
            *&v53[j] = vrev64q_s8(*&v53[j]);
          }
        }

        *(v53 + v54 - 1) = 0;
        v57 = v53[4];
        v133 = v53[3];
        v58 = v53[5];
        v59 = malloc_type_malloc(v57, v42);
        if (!v59)
        {
          v91 = *__error();
          v93 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315906;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 403;
            HIWORD(buf[0].st_uid) = 2048;
            *&buf[0].st_gid = v57;
            *(&buf[0].st_rdev + 2) = 2080;
            *(&buf[0].st_rdev + 6) = __s;
            _os_log_error_impl(&dword_1C278D000, v93, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state buildVersion is null buildLen:%ld path:%s", buf, 0x26u);
          }

LABEL_118:
          v30 = v55;
          v17 = v129;
          v28 = v130;
LABEL_125:
          *__error() = v91;
          free(v53);
          v83 = 1;
          v14 = i;
LABEL_126:
          if (v131 <= 2 || v122 <= v14 - 1800)
          {
LABEL_131:
            if (v121 >= 2)
            {
              if (v121 / (v116 - v117) >= 0.000277777778)
              {
                v112 = v30;
                v113 = *__error();
                v114 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                {
                  buf[0].st_dev = 136315394;
                  *&buf[0].st_mode = "check_crash_state_with_date";
                  WORD2(buf[0].st_ino) = 1024;
                  *(&buf[0].st_ino + 6) = 539;
                  _os_log_error_impl(&dword_1C278D000, v114, OS_LOG_TYPE_ERROR, "%s:%d: Detected recurring crashes during compacting", buf, 0x12u);
                }

                *__error() = v113;
                v30 = v112;
                v36 = v121;
                if (os_signpost_enabled(v112))
                {
                  LOWORD(buf[0].st_dev) = 0;
                  _os_signpost_emit_with_name_impl(&dword_1C278D000, v112, OS_SIGNPOST_EVENT, v28 | 0x28, "check_crash_state_signpost", &unk_1C2C3BEBB, buf, 2u);
                  v36 = v121;
                }

                goto LABEL_136;
              }

              if (os_signpost_enabled(v30))
              {
                LOWORD(buf[0].st_dev) = 0;
                _os_signpost_emit_with_name_impl(&dword_1C278D000, v30, OS_SIGNPOST_EVENT, v28 | 8, "check_crash_state_signpost", &unk_1C2C3BEBB, buf, 2u);
              }
            }

            v36 = 0;
            goto LABEL_136;
          }

          if (v131 / (v122 - v118) < 0.000277777778)
          {
            if (os_signpost_enabled(v30))
            {
              LOWORD(buf[0].st_dev) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C278D000, v30, OS_SIGNPOST_EVENT, v28 | 4, "check_crash_state_signpost", &unk_1C2C3BEBB, buf, 2u);
            }

            goto LABEL_131;
          }

          v107 = v28;
          v108 = v30;
          v109 = *__error();
          v110 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315650;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 523;
            HIWORD(buf[0].st_uid) = 2048;
            *&buf[0].st_gid = (v17 * 0x123456789ABCE0uLL) >> 64;
            _os_log_error_impl(&dword_1C278D000, v110, OS_LOG_TYPE_ERROR, "%s:%d: Detected recurring crashes %lu hour window", buf, 0x1Cu);
          }

          *__error() = v109;
          v30 = v108;
          v111 = os_signpost_enabled(v108);
          v36 = v131;
          v28 = v107;
          if (v111)
          {
            LOWORD(buf[0].st_dev) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C278D000, v30, OS_SIGNPOST_EVENT, v107 | 0x24, "check_crash_state_signpost", &unk_1C2C3BEBB, buf, 2u);
            v36 = v131;
          }

LABEL_136:
          if (!v119 && v124 >= 96)
          {
            v97 = v30;
            v98 = *__error();
            v99 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              buf[0].st_dev = 136315650;
              *&buf[0].st_mode = "check_crash_state_with_date";
              WORD2(buf[0].st_ino) = 1024;
              *(&buf[0].st_ino + 6) = 549;
              HIWORD(buf[0].st_uid) = 1024;
              buf[0].st_gid = v124;
              _os_log_error_impl(&dword_1C278D000, v99, OS_LOG_TYPE_ERROR, "%s:%d: crash count: %d", buf, 0x18u);
            }

            *__error() = v98;
            v30 = v97;
            v36 = v124;
            if (os_signpost_enabled(v97))
            {
              LOWORD(buf[0].st_dev) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C278D000, v97, OS_SIGNPOST_EVENT, 0x33uLL, "check_crash_state_signpost", &unk_1C2C3BEBB, buf, 2u);
              v36 = v124;
            }
          }

          if (v36 || v131 || v121 || v124 > 95)
          {
            if (v36 && v29 && v122 && (v100 = x_openat(a1, "indexState", 0, v44, v45, v46, v47, v48, v115), v100 != -1))
            {
              v101 = v100;
              memset(buf, 0, 144);
              v102 = fstat(v100, buf) == 0;
              v103 = v102 && buf[0].st_mtimespec.tv_sec > v122;
              v104 = v83 | v103;
              if (v103)
              {
                v36 = 0;
              }

              else
              {
                v36 = v36;
              }

              close(v101);
              if ((v104 & 1) == 0)
              {
                goto LABEL_165;
              }
            }

            else if (!v83)
            {
              goto LABEL_165;
            }
          }

          else
          {
            if (os_signpost_enabled(v30))
            {
              LOWORD(buf[0].st_dev) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C278D000, v30, OS_SIGNPOST_EVENT, v28, "check_crash_state_signpost", &unk_1C2C3BEBB, buf, 2u);
            }

            v36 = 0;
            if ((v83 & 1) == 0)
            {
LABEL_165:
              close(v39);
              return v36;
            }
          }

          bzero(buf, 0x400uLL);
          if ((fcntl(v39, 50, buf) & 0x80000000) == 0 && LOBYTE(buf[0].st_dev))
          {
            v105 = *__error();
            v106 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              *v141 = 136315650;
              v142 = "check_crash_state_with_date";
              v143 = 1024;
              v144 = 578;
              v145 = 2080;
              v146 = buf;
              _os_log_error_impl(&dword_1C278D000, v106, OS_LOG_TYPE_ERROR, "%s:%d: invalid crash state file (%s) deleting", v141, 0x1Cu);
            }

            *__error() = v105;
            unlink(buf);
          }

          goto LABEL_165;
        }

        v60 = v59;
        __dst = malloc_type_malloc(v58, v42);
        if (!__dst)
        {
          v91 = *__error();
          v94 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315906;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 409;
            HIWORD(buf[0].st_uid) = 2048;
            *&buf[0].st_gid = v58;
            *(&buf[0].st_rdev + 2) = 2080;
            *(&buf[0].st_rdev + 6) = __s;
            _os_log_error_impl(&dword_1C278D000, v94, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state spotlightVersion is null svLen:%ld path:%s", buf, 0x26u);
          }

          v39 = v128;
          goto LABEL_118;
        }

        v61 = v42;
        v62 = -49;
        if (*(v53 + 48) == 43)
        {
          v63 = v53 + 49;
        }

        else
        {
          v62 = -48;
          v63 = (v53 + 6);
        }

        v64 = size - (v58 + v57);
        v65 = v64 + v62;
        if ((v64 + v62) <= 0)
        {
          v95 = *__error();
          v96 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315906;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 420;
            HIWORD(buf[0].st_uid) = 2048;
            *&buf[0].st_gid = v65;
            *(&buf[0].st_rdev + 2) = 2080;
            *(&buf[0].st_rdev + 6) = __s;
            _os_log_error_impl(&dword_1C278D000, v96, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state pathLen is <= 0 pathLen:%ld path:%s", buf, 0x26u);
          }

          v29 = v126;
          a1 = v127;
          v39 = v128;
          v30 = v55;
          v17 = v129;
          v28 = v130;
          v91 = v95;
          goto LABEL_125;
        }

        v120 = *(v53 + 48);
        v66 = malloc_type_malloc(v64 + v62, v61);
        v67 = *__error();
        v68 = _SILogForLogForCategory(0);
        v69 = v68;
        v135 = v66;
        if (!v66)
        {
          v28 = v130;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315906;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 427;
            HIWORD(buf[0].st_uid) = 2048;
            *&buf[0].st_gid = v65;
            *(&buf[0].st_rdev + 2) = 2080;
            *(&buf[0].st_rdev + 6) = __s;
            _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state malloc error 2 pathLen:%ld path:%s", buf, 0x26u);
          }

          v30 = v125;
          v29 = v126;
          v39 = v128;
          v17 = v129;
          v91 = v67;
          a1 = v127;
          goto LABEL_125;
        }

        v70 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v68, v70))
        {
          buf[0].st_dev = 134218496;
          *&buf[0].st_mode = v133;
          WORD2(buf[0].st_ino) = 2048;
          *(&buf[0].st_ino + 6) = v57;
          HIWORD(buf[0].st_gid) = 2048;
          *&buf[0].st_rdev = v58;
          _os_log_impl(&dword_1C278D000, v69, v70, "check_crash_state (%ld, %ld, %ld)", buf, 0x20u);
        }

        *__error() = v67;
        memcpy(v60, v63, v57);
        v71 = &v63[v57];
        memcpy(__dst, v71, v58);
        memcpy(v135, &v71[v58], v65);
        if (!strcmp(v60, __s2) && !strcmp(__dst, sSpotlightVersion) && !strcmp(v135, v134))
        {
          v72 = i - v133;
          v28 = v130;
          v30 = v125;
          v42 = v61;
          if (v123)
          {
            *v123 = v72;
          }

          v73 = v72 > 0;
          v74 = v72 - 1;
          v75 = v124;
          if ((v72 - 1) < 0x545FF)
          {
            v75 = v124 + 1;
          }

          v124 = v75;
          v17 = v129;
          v29 = v126;
          if (v72 < v129)
          {
            v76 = 1;
          }

          else
          {
            v76 = v126;
          }

          v77 = v73 & v76;
          v78 = v122;
          if (v77)
          {
            v78 = v133;
          }

          v122 = v78;
          v79 = v118;
          if ((v77 & (v131 == 0)) != 0)
          {
            v79 = v133;
          }

          v118 = v79;
          v131 += v77;
          if (v120 == 43)
          {
            a1 = v127;
            if (v74 <= 0x3F47E)
            {
              v80 = v117;
              if (!v121)
              {
                v80 = v133;
              }

              v116 = v133;
              v117 = v80;
              ++v121;
            }
          }

          else
          {
            a1 = v127;
          }
        }

        else
        {
          v28 = v130;
          v30 = v125;
          if (gSILogLevels[0] >= 5)
          {
            v81 = *__error();
            v82 = _SILogForLogForCategory(0);
            a1 = v127;
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              buf[0].st_dev = 136315650;
              *&buf[0].st_mode = v60;
              WORD2(buf[0].st_ino) = 2080;
              *(&buf[0].st_ino + 6) = __dst;
              HIWORD(buf[0].st_gid) = 2080;
              *&buf[0].st_rdev = v135;
              _os_log_impl(&dword_1C278D000, v82, OS_LOG_TYPE_DEFAULT, "Ignoring crash data for (%s,%s,%s)", buf, 0x20u);
            }

            *__error() = v81;
            v29 = v126;
            v17 = v129;
            v30 = v125;
            v28 = v130;
            v42 = v61;
          }

          else
          {
            v42 = v61;
            v29 = v126;
            a1 = v127;
            v17 = v129;
          }
        }

        free(v53);
        free(v60);
        free(__dst);
        free(v135);
        v39 = v128;
      }

      v84 = v28;
      v85 = v30;
      v86 = *__error();
      v87 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_106;
      }

      buf[0].st_dev = 136315650;
      *&buf[0].st_mode = "check_crash_state_with_date";
      WORD2(buf[0].st_ino) = 1024;
      *(&buf[0].st_ino + 6) = 360;
      HIWORD(buf[0].st_uid) = 2080;
      *&buf[0].st_gid = __s;
      v88 = "%s:%d: check_crash_state not enough content 3 path:%s";
LABEL_175:
      _os_log_error_impl(&dword_1C278D000, v87, OS_LOG_TYPE_ERROR, v88, buf, 0x1Cu);
LABEL_106:
      *__error() = v86;
      v83 = 1;
LABEL_110:
      v30 = v85;
      v28 = v84;
      goto LABEL_126;
    }

    if (os_signpost_enabled(v22))
    {
      LOWORD(buf[0].st_dev) = 0;
      v20 = buf;
      v21 = v22;
      v35 = v28;
      goto LABEL_31;
    }

    return 0;
  }

  if (os_signpost_enabled(v22))
  {
    LOWORD(buf[0].st_dev) = 0;
    v20 = buf;
    v21 = v22;
    goto LABEL_30;
  }

  return 0;
}

char *getBuildVersion()
{
  v0 = sBuildVersion;
  if ((sBuildVersionWasSet & 1) == 0)
  {
    v1 = _CFCopySystemVersionDictionary();
    if (v1)
    {
      v2 = v1;
      Value = CFDictionaryGetValue(v1, @"ProductBuildVersion");
      CFStringGetCString(Value, sBuildVersion, 128, 0x8000100u);
      CFRelease(v2);
      sBuildVersionWasSet = 1;
    }

    else if (!sBuildVersionWasSet)
    {
      return "unknown";
    }
  }

  return v0;
}

void touch_crash_state(uint64_t a1)
{
  v1 = a1;
  v2 = time(0);

  write_out_crash_state(0, 0, 0, v2, v1, 0, 0);
}

void write_out_crash_state(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = a3;
  if ((gProcessTerminating & 1) == 0 && (write_out_crash_state_lastDirFd != a5 || CFAbsoluteTimeGetCurrent() - *&write_out_crash_state_lastTime >= 10.0))
  {
    qmemcpy(v33, "+462C", sizeof(v33));
    bzero(__s, 0x400uLL);
    if ((fcntl(a5, 50, __s) & 0x80000000) == 0)
    {
      if (__s[0])
      {
        BuildVersion = getBuildVersion();
        v14 = strlen(BuildVersion);
        v20 = strlen(sSpotlightVersion);
        if (a7)
        {
          if (a7 == 1)
          {
            v21 = "mds64-crash-state-vector-index-v2";
          }

          else
          {
            v21 = a7 == 3 ? "mds64-crash-state-forward-path-index-v2" : "mds64-crash-state-reverse-store-v2";
          }
        }

        else
        {
          v21 = "mds64-crash-state-v2";
        }

        v22 = x_openat(a5, v21, 536871434, v15, v16, v17, v18, v19, 384);
        if ((v22 & 0x80000000) == 0)
        {
          v23 = v22;
          v24 = v20 + 1;
          write_out_crash_state_lastDirFd = a5;
          write_out_crash_state_lastTime = CFAbsoluteTimeGetCurrent();
          v25 = strlen(__s) + 1;
          v26 = 49;
          if (a6)
          {
            v26 = 50;
          }

          v32 = v26 + v14 + v24 + v25;
          write(v23, &v33[1], 4uLL);
          write(v23, &v32, 8uLL);
          v30 = a2;
          v31 = a1;
          v28 = v14 + 1;
          v29 = a4;
          v27 = v24;
          write(v23, &v31, 8uLL);
          write(v23, &v30, 8uLL);
          write(v23, &v34, 8uLL);
          write(v23, &v29, 8uLL);
          write(v23, &v28, 8uLL);
          write(v23, &v27, 8uLL);
          if (a6)
          {
            write(v23, v33, 1uLL);
          }

          write(v23, BuildVersion, v14 + 1);
          write(v23, sSpotlightVersion, v24);
          write(v23, __s, v25);
          close(v23);
        }
      }
    }
  }
}

void ContentIndex_catch_mach_exception_raise()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v0 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported ContentIndex_catch_mach_exception_raise", v0, 2u);
  }
}

void ContentIndex_catch_mach_exception_raise_state()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v0 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported ContentIndex_catch_mach_exception_raise_state", v0, 2u);
  }
}

void ContentIndex_catch_mach_exception_raise_state_identity()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v0 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported ContentIndex_catch_mach_exception_raise_state_identity", v0, 2u);
  }
}

uint64_t ContentIndex_catch_mach_exception_raise_identity_protected(uint64_t a1, int a2, thread_act_array_t a3)
{
  v101 = *MEMORY[0x1E69E9840];
  act_list[0] = 0;
  memset(thread_info_out, 0, 24);
  thread_info_outCnt = 6;
  act_listCnt = 0;
  v6 = MEMORY[0x1E69E9A60];
  task_threads(*MEMORY[0x1E69E9A60], act_list, &act_listCnt);
  if (!act_listCnt)
  {
    v8 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = act_list[0][v7];
    if (v8)
    {
      if (v8 == v9)
      {
        v62 = __si_assert_copy_extra_332();
        v63 = v62;
        v64 = "";
        if (v62)
        {
          v64 = v62;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 858, "thread != threads[i]", v64);
        free(v63);
        if (__valid_fs(-1))
        {
          v65 = 2989;
        }

        else
        {
          v65 = 3072;
        }

        *v65 = -559038737;
        abort();
      }

      mach_port_deallocate(*v6, v9);
    }

    else
    {
      if (thread_info(act_list[0][v7], 4u, thread_info_out, &thread_info_outCnt) != 268435459)
      {
        if (*thread_info_out == a1)
        {
          v8 = act_list[0][v7];
          goto LABEL_11;
        }

        mach_port_deallocate(*v6, act_list[0][v7]);
      }

      v8 = 0;
    }

LABEL_11:
    ++v7;
  }

  while (v7 < act_listCnt);
  v10 = 4 * act_listCnt;
LABEL_14:
  MEMORY[0x1C6921920](*v6, act_list[0], v10);
  thread_info_outCnt = 4;
  act_list[0] = 0;
  act_list[1] = 0;
  v11 = 0;
  if (!thread_get_state(v8, 7, act_list, &thread_info_outCnt))
  {
    a3 = act_list[0];
  }

  v12 = &dword_1EDD78EF0;
  while (1)
  {
    v13 = *v12;
    v12 += 4;
    if (v13 == v8)
    {
      break;
    }

    if (++v11 == 2048)
    {
      v14 = 0;
LABEL_111:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        thread_info_out[0] = 67109632;
        thread_info_out[1] = v8;
        LOWORD(thread_info_out[2]) = 2048;
        *(&thread_info_out[2] + 2) = a3;
        HIWORD(thread_info_out[4]) = 1024;
        thread_info_out[5] = v14;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "exception handler not resolved for thread 0x%x addr %p reason %d", thread_info_out, 0x18u);
      }

      v55 = 5;
      goto LABEL_114;
    }
  }

  v15 = 0;
  v16 = 0;
  v73 = 0;
  v17 = &threadData[9 * v11];
  v18 = *(v17 + 4);
  v75 = a2;
  v19 = 320 * v18 - 320;
  v76 = a2;
  while (2)
  {
    if (v18 <= 0)
    {
      if (v73)
      {
        v14 = v73;
      }

      else
      {
        v14 = 4;
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_133;
    }

    v20 = v17[1];
    v21 = v20 + v19;
    if (a2 != 1)
    {
      goto LABEL_84;
    }

    v22 = *(v21 + 30);
    if (!v22)
    {
      goto LABEL_84;
    }

    v23 = v20 + v19;
    v24 = v15;
    v25 = a3;
    v26 = v17;
    v80 = v16;
    log = v17[1];
    v27 = log + v19;
    v28 = v25;
    if (!v22(*(&log[36].isa + v19)))
    {
      v16 = v80;
      v17 = v26;
      a3 = v28;
      v15 = v24;
      v21 = v23;
      v20 = log;
      goto LABEL_84;
    }

    v29 = *(v27 + 34);
    v74 = log + v19;
    if (v29)
    {
      v30 = v29(*(v27 + 36), *(&log[37].isa + v19));
      v17 = v26;
      a3 = v28;
      v15 = v24;
      v21 = v23;
      goto LABEL_27;
    }

    v17 = v26;
    v33 = v26[1];
    v34 = *(v33 + 296);
    if (v34 != -1)
    {
      a3 = v28;
      goto LABEL_44;
    }

    a3 = v28;
    if (!*(v33 + 272))
    {
      v37 = 320;
      if (*(v17 + 4) <= 1u)
      {
        v37 = 0;
      }

      v33 += v37;
      v34 = *(v33 + 296);
      v15 = v24;
      if (v34 != -1)
      {
        goto LABEL_45;
      }

      v21 = v23;
      if (*(v33 + 272))
      {
        v34 = 0xFFFFFFFFLL;
        goto LABEL_46;
      }

      v72 = 0;
      goto LABEL_66;
    }

    v34 = 0xFFFFFFFFLL;
LABEL_44:
    v15 = v24;
LABEL_45:
    v21 = v23;
LABEL_46:
    v20 = log;
    v35 = *(v33 + 272);
    if (!v35)
    {
LABEL_49:
      if (v34 != -1)
      {
        bzero(thread_info_out, 0x400uLL);
        v36 = fcntl(*(v33 + 296), 50, thread_info_out);
        v30 = 0;
        if ((v36 & 0x80000000) == 0 && LOBYTE(thread_info_out[0]))
        {
          if (strstr(thread_info_out, "NSFileProtectionComplete/"))
          {
            v30 = 1;
          }

          else if (strstr(thread_info_out, "NSFileProtectionCompleteUnlessOpen/"))
          {
            v30 = 2;
          }

          else if (strstr(thread_info_out, "NSFileProtectionCompleteWhenUserInactive/"))
          {
            v30 = 7;
          }

          else
          {
            v30 = 0;
          }
        }

        goto LABEL_27;
      }

      v72 = 0;
LABEL_67:
      v16 = v80;
      if (a3 > *MEMORY[0x1E69E9AC8])
      {
        goto LABEL_68;
      }

      goto LABEL_81;
    }

    v30 = v35(*(v33 + 288), v34);
    if (!v30)
    {
      LODWORD(v34) = *(v33 + 296);
      v20 = log;
      goto LABEL_49;
    }

LABEL_27:
    v31 = v30 > 7 || ((1 << v30) & 0x86) == 0;
    v72 = v30;
    if (v31)
    {
LABEL_66:
      v20 = log;
      goto LABEL_67;
    }

    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 0x40000000;
    v82[2] = __ContentIndex_catch_mach_exception_raise_identity_protected_block_invoke;
    v82[3] = &__block_descriptor_tmp_6969;
    v82[4] = v21;
    v20 = log;
    if (_SISuspendThreadIfLocked(v8, v82))
    {
      goto LABEL_102;
    }

    v32 = !gTerminating || !sGetLockStateCallback || (*(sGetLockStateCallback + 16))() == 0;
    v16 = v80;
    if (!v32 || a3 <= *MEMORY[0x1E69E9AC8])
    {
      goto LABEL_81;
    }

LABEL_68:
    Current = CFAbsoluteTimeGetCurrent();
    v39 = v20 + v19;
    v40 = *(&v20[25].isa + v19);
    if (Current - *(&v20[24].isa + v19) <= 1.0 && a3 == v40)
    {
      v43 = *__error();
      logb = _SILogForLogForCategory(10);
      if (os_log_type_enabled(logb, OS_LOG_TYPE_ERROR))
      {
        thread_info_out[0] = 136315906;
        *&thread_info_out[1] = "ContentIndex_catch_mach_exception_raise_identity_protected";
        LOWORD(thread_info_out[3]) = 1024;
        *(&thread_info_out[3] + 2) = 1004;
        HIWORD(thread_info_out[4]) = 2048;
        *&thread_info_out[5] = a3;
        LOWORD(thread_info_out[7]) = 1024;
        *(&thread_info_out[7] + 2) = v72;
        _os_log_error_impl(&dword_1C278D000, logb, OS_LOG_TYPE_ERROR, "%s:%d: Repeated error on address %p pc %d", thread_info_out, 0x22u);
      }

      v44 = 2;
    }

    else
    {
      if (a3 != v40)
      {
        *(v39 + 52) = 0;
LABEL_128:
        v66 = *__error();
        v67 = _SILogForLogForCategory(10);
        v68 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);
        v6 = MEMORY[0x1E69E9A60];
        if (v68)
        {
          v69 = *(v21 + 25);
          v70 = Current - *(v21 + 24);
          v71 = *(v39 + 52);
          thread_info_out[0] = 136316674;
          *&thread_info_out[1] = "ContentIndex_catch_mach_exception_raise_identity_protected";
          LOWORD(thread_info_out[3]) = 1024;
          *(&thread_info_out[3] + 2) = 992;
          HIWORD(thread_info_out[4]) = 2048;
          *&thread_info_out[5] = a3;
          LOWORD(thread_info_out[7]) = 2048;
          *(&thread_info_out[7] + 2) = v69;
          HIWORD(thread_info_out[9]) = 2048;
          *&thread_info_out[10] = v70;
          LOWORD(v87) = 1024;
          *(&v87 + 2) = v71;
          WORD3(v87) = 1024;
          DWORD2(v87) = v72;
          _os_log_error_impl(&dword_1C278D000, v67, OS_LOG_TYPE_ERROR, "%s:%d: Retry operation on address %p (%p) %f %d pc %d", thread_info_out, 0x3Cu);
        }

        *__error() = v66;
        *(v21 + 25) = a3;
        *(v21 + 24) = Current;
        usleep(0x30D40u);
        v55 = 0;
        goto LABEL_114;
      }

      v42 = *(v39 + 52) + 1;
      *(v39 + 52) = v42;
      if (v42 <= 5)
      {
        goto LABEL_128;
      }

      v43 = *__error();
      loga = _SILogForLogForCategory(10);
      if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
      {
        thread_info_out[0] = 136315906;
        *&thread_info_out[1] = "ContentIndex_catch_mach_exception_raise_identity_protected";
        LOWORD(thread_info_out[3]) = 1024;
        *(&thread_info_out[3] + 2) = 1000;
        HIWORD(thread_info_out[4]) = 2048;
        *&thread_info_out[5] = a3;
        LOWORD(thread_info_out[7]) = 1024;
        *(&thread_info_out[7] + 2) = v72;
        _os_log_error_impl(&dword_1C278D000, loga, OS_LOG_TYPE_ERROR, "%s:%d: Repeated error on address %p pc %d", thread_info_out, 0x22u);
      }

      v44 = 1;
    }

    v73 = v44;
    *__error() = v43;
    v16 = v80;
LABEL_81:
    v45 = *(&v20[35].isa + v19);
    if (v45)
    {
      v45(*(v74 + 36));
      v16 = v80;
    }

    v46 = *(&v20[26].isa + v19 + 4);
    a2 = v76;
    if ((v46 & 0x40000000) == 0)
    {
      *(v21 + 53) = v46 | 0x80000000;
      v57 = exc_pthread_key;
      if (!exc_pthread_key)
      {
        pthread_key_create(&exc_pthread_key, 0);
        v57 = exc_pthread_key;
      }

      pthread_setspecific(v57, v17[5]);
      v58 = *(v17 + 4);
      if (v58 >= v18)
      {
        v59 = v58 + 1;
        do
        {
          v60 = v17[1] + 320 * (v59 - 2);
          CICleanUpReset(v11, *(v60 + 300));
          v61 = *(v60 + 248);
          if (v61)
          {
            *(v60 + 248) = 0;
            v61(*(v60 + 288));
          }

          --v59;
        }

        while (v59 > v18);
      }

      goto LABEL_101;
    }

LABEL_84:
    v15 |= v21[216];
    if (*(v21 + 74) == -1 || *(v17 + 6))
    {
      v16 |= a3 == 2816;
    }

    else
    {
      v81 = v16;
      act_listCnt = 68;
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
      v87 = 0u;
      v88 = 0u;
      memset(thread_info_out, 0, sizeof(thread_info_out));
      thread_get_state(v8, 6, thread_info_out, &act_listCnt);
      v47 = v100;
      v48 = time(0);
      write_out_crash_state(v47, a3, v75, v48, *(v21 + 74), v15 & 1, *(v17 + 7));
      *(&v20[39].isa + v19 + 4) = 1;
      a2 = v76;
      v16 = v81;
      if (a3 == 2816)
      {
        goto LABEL_133;
      }
    }

    v49 = *(&v20[26].isa + v19 + 4);
    if (((v49 & 0x20000000) == 0 || a3 != 2986) && ((v49 & 1) == 0 || a3 != 3072))
    {
      --v18;
      v19 -= 320;
      if ((v49 & 1) == 0)
      {
        continue;
      }

      if ((v16 & 1) == 0)
      {
        v14 = 3;
LABEL_110:
        v6 = MEMORY[0x1E69E9A60];
        goto LABEL_111;
      }

LABEL_133:
      exit(-1);
    }

    break;
  }

  *(&v20[26].isa + v19 + 4) = v49 | 0x80000000;
  v50 = exc_pthread_key;
  if (!exc_pthread_key)
  {
    pthread_key_create(&exc_pthread_key, 0);
    v50 = exc_pthread_key;
  }

  pthread_setspecific(v50, v17[5]);
  v51 = *(v17 + 4);
  if (v51 >= v18)
  {
    v52 = v51 + 1;
    do
    {
      v53 = v17[1] + 320 * (v52 - 2);
      CICleanUpReset(v11, *(v53 + 300));
      v54 = *(v53 + 248);
      if (v54)
      {
        *(v53 + 248) = 0;
        v54(*(v53 + 288));
      }

      --v52;
    }

    while (v52 > v18);
  }

LABEL_101:
  pthread_setspecific(exc_pthread_key, 0);
  setPC(v8);
LABEL_102:
  v55 = 0;
  v6 = MEMORY[0x1E69E9A60];
LABEL_114:
  mach_port_deallocate(*v6, v8);
  return v55;
}

int *setPC(thread_read_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *old_state = 0u;
  v12 = 0u;
  old_stateCnt = 68;
  state = thread_get_state(a1, 6, old_state, &old_stateCnt);
  if (state)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = mach_error_string(state);
      *buf = 136315650;
      v29 = "setPC";
      v30 = 1024;
      v31 = 762;
      v32 = 2080;
      v33 = v8;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: thread_get_state: %s", buf, 0x1Cu);
    }

    *__error() = v3;
  }

  *&v27 = in_thread_handler;
  HIDWORD(v27) &= ~4u;
  result = thread_set_state(a1, 6, old_state, old_stateCnt);
  if (state)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = mach_error_string(state);
      *buf = 136315650;
      v29 = "setPC";
      v30 = 1024;
      v31 = 775;
      v32 = 2080;
      v33 = v9;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: thread_set_state: %s", buf, 0x1Cu);
    }

    result = __error();
    *result = v6;
  }

  return result;
}

void in_thread_handler()
{
  v0 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  if (!v0)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 727, "loc", v7);
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

  v1 = &threadData[9 * v0];
  v2 = *(v1 - 14);
  v3 = (v2 & (v2 >> 31)) - 1;
  v4 = *(v1 - 8);
  do
  {
    if (v2 < 1)
    {
      goto LABEL_6;
    }

    --v2;
  }

  while ((*(v4 + 320 * v2 + 212) & 0x80000001) == 0);
  v3 = v2;
LABEL_6:
  _longjmp((v4 + 320 * v3), 1);
}

BOOL SIGetExceptionPort(_DWORD *a1, void *a2)
{
  v3 = _exceptionPort[0];
  if (!_exceptionPort[0])
  {
    if (gSILogLevels[0] >= 5)
    {
      v9 = *__error();
      v10 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "Allocating threads and such.", buf, 2u);
      }

      *__error() = v9;
    }

    v5 = MEMORY[0x1E69E9A60];
    v6 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, _exceptionPort);
    if (v6)
    {
      v11 = v6;
      v12 = __si_assert_copy_extra_332();
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = "";
      }

      v15 = mach_error_string(v11);
      __message_assert("%s:%u: failed assertion '%s' %s %s", "ContentIndexExceptionHandler.c", 1230, "krc==KERN_SUCCESS", v14, v15);
      free(v13);
      if (__valid_fs(-1))
      {
        v16 = 2989;
      }

      else
      {
        v16 = 3072;
      }

      *v16 = -559038737;
      abort();
    }

    inserted = mach_port_insert_right(*v5, _exceptionPort[0], _exceptionPort[0], 0x14u);
    if (inserted)
    {
      v17 = inserted;
      v18 = __si_assert_copy_extra_332();
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = "";
      }

      v21 = mach_error_string(v17);
      __message_assert("%s:%u: failed assertion '%s' %s %s", "ContentIndexExceptionHandler.c", 1235, "krc==KERN_SUCCESS", v20, v21);
      free(v19);
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

    *a1 = _exceptionPort[0];
  }

  result = v3 == 0;
  *a2 = handleException;
  return result;
}

void __makeThreadId_block_invoke()
{
  v25 = *MEMORY[0x1E69E9840];
  if (!__THREAD_SLOT_KEY[0] && pthread_key_create(__THREAD_SLOT_KEY, freeThreadSlot))
  {
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1256, "result==0", v9);
LABEL_20:
    free(v8);
    if (__valid_fs(-1))
    {
      v12 = 2989;
    }

    else
    {
      v12 = 3072;
    }

    *v12 = -559038737;
    abort();
  }

  if (!__THREAD_STR_DATA_KEY[0] && pthread_key_create(__THREAD_STR_DATA_KEY, MEMORY[0x1E69E9B38]))
  {
    v10 = __si_assert_copy_extra_332();
    v8 = v10;
    v11 = "";
    if (v10)
    {
      v11 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1260, "result==0", v11);
    goto LABEL_20;
  }

  v0 = -2048;
  v1 = &unk_1EDD80ED8;
  do
  {
    v1[3] = -1;
    OSAtomicEnqueue(&sAvailabeThreadEntries, v1, 0);
    v1 -= 4;
  }

  while (!__CFADD__(v0++, 1));
  if (!_exceptionPort[0])
  {
    v23 = 0;
    SIGetExceptionPort(&v22, &v21);
    memset(&v24, 0, sizeof(v24));
    pthread_attr_init(&v24);
    v3 = *__error();
    v4 = _SILogForLogForCategory(0);
    v5 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v4, v5))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v4, v5, "Creating exception handler thread", buf, 2u);
    }

    *__error() = v3;
    v6 = pthread_create(&v23, &v24, _handleExceptions, _exceptionPort);
    pthread_attr_destroy(&v24);
    if (v6)
    {
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

      v16 = mach_error_string(v6);
      __message_assert("%s:%u: failed assertion '%s' %s %s", "ContentIndexExceptionHandler.c", 1289, "krc==KERN_SUCCESS", v15, v16);
      free(v14);
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

    if (gSILogLevels[0] >= 5)
    {
      v18 = *__error();
      v19 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24.__sig) = 0;
        _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "Done allocating threads and such.", &v24, 2u);
      }

      *__error() = v18;
    }
  }
}

void _handleExceptions(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  if (gSILogLevels[0] >= 5)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *MEMORY[0x1E69E9A60];
      v9[0].msgh_bits = 67109120;
      v9[0].msgh_size = v6;
      _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "starting exc_thread loop in task %d", v9, 8u);
    }

    *__error() = v4;
  }

  while (1)
  {
    do
    {
      bzero(v9, 0x1000uLL);
      v3 = *v2;
      v9[0].msgh_size = 4096;
      v9[0].msgh_local_port = v3;
    }

    while (mach_msg(v9, 2, 0, 0x1000u, v3, 1u, 0));
    bzero(&v7, 0x1000uLL);
    mach_exc_server(v9, &v7);
    mach_msg(&v7, 1, *(&msg.msgh_bits + 3), 0, 0, 0, 0);
  }
}

uint64_t setCrashStateTarget(int a1)
{
  v2 = __THREAD_SLOT_KEY[0];
  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v2 = __THREAD_SLOT_KEY[0];
  }

  v3 = pthread_getspecific(v2);
  if (!v3 || v3 >= 0x801)
  {
    makeThreadId();
    v3 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  }

  v4 = 0;
  if (v3 && v3 <= 0x800)
  {
    v5 = &threadData[9 * v3];
    v4 = *(v5 - 11);
    *(v5 - 11) = a1;
  }

  return v4;
}

BOOL CICleanUpThreadLocGet(void *a1)
{
  v2 = __THREAD_SLOT_KEY[0];
  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v2 = __THREAD_SLOT_KEY[0];
  }

  v3 = pthread_getspecific(v2);
  *a1 = v3 - 1;
  return v3 != 0;
}

uint64_t CIOnThreadCleanUpReset(unsigned int a1)
{
  result = CICleanUpThreadLoc();
  v3 = &threadData[9 * result];
  v5 = *(v3 + 14);
  v4 = v3 + 7;
  if (v5 > a1)
  {
    v6 = result;
    do
    {
      result = CIOnThreadCleanUpPop(v6);
    }

    while (*v4 > a1);
  }

  return result;
}

uint64_t _data_map64_wrlock(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4573))
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
      v7 = "_data_map64_wrlock";
      v8 = 1024;
      v9 = 261;
      v10 = 1024;
      v11 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: _data_map64_wrlock error %d", &v6, 0x18u);
    }

    *__error() = v3;
  }

  return v1;
}

uint64_t _data_map64_rdlock(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4573))
  {
    return 0;
  }

  lock = db_read_lock(a1);
  if (lock)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = lock;
      if (lock == -1)
      {
        v5 = *__error();
      }

      v6 = 136315650;
      v7 = "_data_map64_rdlock";
      v8 = 1024;
      v9 = 271;
      v10 = 1024;
      v11 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: _data_map64_rdlock error %d", &v6, 0x18u);
    }

    *__error() = v3;
  }

  return lock;
}

uint64_t _data_map64_unlock(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4573))
  {
    return 0;
  }

  v1 = db_rwlock_unlock_unknown(a1);
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
      v7 = "_data_map64_unlock";
      v8 = 1024;
      v9 = 281;
      v10 = 1024;
      v11 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: _data_map64_unlock error %d", &v6, 0x18u);
    }

    *__error() = v3;
  }

  return v1;
}

uint64_t data_map64_init_with_ctx(uint64_t a1)
{
  v138 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 20);
  v106 = *(a1 + 16);
  bzero(__str, 0x400uLL);
  v5 = malloc_type_calloc(1uLL, 0x11E8uLL, 0x10A0040B9F7BED4uLL);
  v6 = v5;
  v7 = v5;
  v8 = v5 + 4096;
  v5[4573] = (v4 & 8) != 0;
  *(v5 + 54) = 1684300900;
  if ((v4 & 8) == 0)
  {
    *(v5 + 26) = 0;
    *(v5 + 11) = 0u;
    *(v5 + 12) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 10) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    pthread_mutex_init(v5, 0);
  }

  *(v7 + 232) = -1;
  *(v7 + 4456) = -1;
  *(v7 + 4496) = -1;
  *(v7 + 312) = 0;
  *(v7 + 280) = 0;
  *(v7 + 288) = 0;
  *(v7 + 272) = 0;
  *(v7 + 4536) = *(a1 + 24);
  *(v7 + 4544) = *(a1 + 56);
  *(v7 + 4552) = 0;
  v8[476] = (v4 & 0xFFFFFF) != 0;
  v115 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, v7, 0, add_explicit + 1);
  v113 = HIDWORD(v10);
  v114 = v10;
  v112 = __PAIR64__(v11, v12);
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  v111 = v114;
  v110 = v113;
  v109 = v112;
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v122 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v122, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v109);
    dropThreadId(v111, 1, add_explicit + 1);
    CICleanUpReset(v111, HIDWORD(v109));
    if (v115)
    {
      goto LABEL_125;
    }

    goto LABEL_123;
  }

  if (v3)
  {
    v16 = strlen(v3);
    if (v2 != -1 && v16 - 241 > 0xFFFFFFFFFFFFFF0FLL)
    {
      v107 = v14;
      v17 = v2;
      if ((v4 & 2) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = ((v4 & 1) << 10) | 0x20000202;
      }

      v104 = v18;
      v105 = v4 & 2;
      snprintf(__str, 0x400uLL, "%s.header", v3);
      v19 = fd_create_protected(v17, __str, v18, 3u);
      *(v7 + 248) = v19;
      *(v7 + 264) = fd_lseek(v19, 0, 2);
      snprintf(__str, 0x400uLL, "%s.data", v3);
      v20 = fd_create_protected(v17, __str, v18, 0);
      v21 = v20;
      if ((v4 & 3) != 0 || (memset(&v136, 0, sizeof(v136)), fd_stat(v20, &v136)) || (v22 = v136.st_blocks << 9, v136.st_blocks << 9 <= v136.st_size + 0x400000))
      {
        v24 = v21;
      }

      else
      {
        bzero(v122, 0x400uLL);
        v103 = *__error();
        v23 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v117 = v22;
          v118 = 2048;
          st_size = v136.st_size;
          v120 = 2080;
          v121 = __str;
          _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "found allocated size %lld for %lld %s", buf, 0x20u);
        }

        *__error() = v103;
        snprintf(v122, 0x400uLL, "tmp.%s.data.1", v3);
        v24 = fd_create_protected(v17, v122, 1538, 0);
        if (fd_copyfile(v21, v24, 0) || (snprintf(v122, 0x400uLL, "tmp.%s.data.2", v3), fd_rename(v21, v122)) || fd_rename(v24, __str))
        {
          v25 = v24;
          v24 = v21;
        }

        else
        {
          _fd_unlink_with_origin(v21, 0);
          fd_release(v21);
          v25 = 0;
        }

        v26 = v25;
        _fd_unlink_with_origin(v25, 0);
        fd_release(v26);
      }

      v30 = fd_lseek(v24, 0, 2);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __data_map64_init_with_ctx_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_7069;
      aBlock[4] = v7;
      *(v7 + 316) = (v4 & 2) >> 1;
      *(v7 + 280) = v24;
      *(v7 + 288) = v30;
      *(v7 + 312) = 1;
      *(v7 + 317) = 1;
      *(v7 + 320) = _Block_copy(aBlock);
      *(v7 + 328) = 26;
      bzero(v6 + 336, 0x1000uLL);
      snprintf(__str, 0x400uLL, "%s.offsets", v3);
      v31 = fd_create_protected(v17, __str, v104, 3u);
      *(v7 + 4432) = v31;
      *(v7 + 4448) = fd_lseek(v31, 0, 2);
      snprintf(__str, 0x400uLL, "%s.buckets", v3);
      v32 = fd_create_protected(v17, __str, 514, 3u);
      *(v7 + 4472) = v32;
      *(v7 + 4480) = fd_lseek(v32, 0, 2);
      if (v4)
      {
        if (fd_truncate(*(v7 + 248), 92) == -1)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1078;
          v35 = "%s:%d: fd_truncate error";
          goto LABEL_112;
        }

        v38 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
        *(v7 + 272) = v38;
        if (!v38)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1086;
          v35 = "%s:%d: offset fd_mmap error";
          goto LABEL_112;
        }

        *(v7 + 264) = 92;
        *v38 = 0x446174615064;
        *(v38 + 3) = v106;
        *(v38 + 4) = 0;
        *(v38 + 2) = 14;
        *(v38 + 20) = 0;
        v39 = MEMORY[0x1E69E9AC8];
        if ((_storageWindowsSetFileSize(v6 + 35, *MEMORY[0x1E69E9AC8]) & 1) == 0)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1099;
          v35 = "%s:%d: fd_truncate error";
          goto LABEL_112;
        }

        if (fd_truncate(*(v7 + 4432), *v39 & 0xFFFFFFFFFFFFFFF0) == -1)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1105;
          v35 = "%s:%d: fd_truncate error";
          goto LABEL_112;
        }

        v40 = fd_mmap(*(v7 + 4432), 0x100000, v105 ^ 3u, 1, 0);
        *(v7 + 4456) = v40;
        if (v40 == -1)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1110;
          v35 = "%s:%d: offsets fd_mmap error";
          goto LABEL_112;
        }

        *(v7 + 4440) = 0x100000;
        v41 = *v39;
        v42 = *v39 >> 4;
        *(v7 + 4448) = *v39 & 0xFFFFFFFFFFFFFFF0;
        *(v7 + 4464) = v42;
        v43 = v41 & 0xFFFFFFFFFFFFFFF8;
        if (fd_truncate(*(v7 + 4472), v41 & 0xFFFFFFFFFFFFFFF8) == -1)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1120;
          v35 = "%s:%d: fd_truncate error";
          goto LABEL_112;
        }

        v44 = fd_mmap(*(v7 + 4472), 0x100000, v105 ^ 3u, 1, 0);
        *(v7 + 4496) = v44;
        if (v44 == -1)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1126;
          v35 = "%s:%d: hash fd_mmap error";
          goto LABEL_112;
        }

        *(v7 + 4488) = 0x100000;
        *(v7 + 4480) = v43;
        v45 = *v39 >> 3;
        *(*(v7 + 272) + 28) = v45;
        *(v7 + 4504) = v45;
        data_entry_store<unsigned long long,false,true,false>((v6 + 280), dword_1E81997B0);
        v46 = *(v7 + 272);
        *(v46 + 20) = *(v7 + 296);
        v47 = *(v7 + 4456);
        *v47 = 0;
        v47[1] = 0;
        *(v46 + 36) = 1;
        v48 = (v6 + 224);
        v49 = 0;
        goto LABEL_102;
      }

      if (*(v7 + 264) <= 0x5BuLL)
      {
        v27 = *__error();
        v33 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = *(v7 + 264);
          *v122 = 136315650;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1150;
          *&v122[18] = 2048;
          *&v122[20] = v34;
          v35 = "%s:%d: invalid header size %ld";
          v36 = v33;
          v37 = 28;
LABEL_113:
          _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, v35, v122, v37);
          goto LABEL_114;
        }

        goto LABEL_114;
      }

      v50 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
      *(v7 + 272) = v50;
      if (!v50)
      {
        v27 = *__error();
        v61 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1157;
          v35 = "%s:%d: header calloc error";
          v36 = v61;
          v37 = 18;
          goto LABEL_113;
        }

LABEL_114:
        v14 = v107;
        goto LABEL_115;
      }

      if ((v4 & 0x80) != 0 && (sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v7 + 248), ".shadow", v104)) != 0)
      {
        v52 = sibling_with_suffix_protected;
        v53 = fd_copyfile(sibling_with_suffix_protected, *(v7 + 248), 0);
        v49 = v53 == 0;
        v54 = (v53 != 0) & (v4 >> 2);
        fd_release(v52);
      }

      else
      {
        v49 = 0;
        v54 = (v4 >> 2) & 1;
      }

      v56 = fd_pread(*(v7 + 248), *(v7 + 272), 0x5CuLL, 0);
      v27 = *__error();
      v57 = _SILogForLogForCategory(0);
      v55 = v57;
      if (v56 != 92)
      {
        if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        *v122 = 136315394;
        *&v122[4] = "data_map64_init_with_ctx";
        *&v122[12] = 1024;
        *&v122[14] = 1175;
        v35 = "%s:%d: header pread error";
        goto LABEL_112;
      }

      v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
      if ((v4 & 0x80) != 0)
      {
        if (v58)
        {
          v62 = *(*(v7 + 272) + 36);
          *v122 = 134217984;
          *&v122[4] = v62;
          v60 = "recovered next_id: %llu";
          goto LABEL_63;
        }
      }

      else if (v58)
      {
        v59 = *(*(v7 + 272) + 36);
        *v122 = 134217984;
        *&v122[4] = v59;
        v60 = "opened next_id: %llu";
LABEL_63:
        _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, v60, v122, 0xCu);
      }

      *__error() = v27;
      v63 = *(v7 + 272);
      *(v7 + 224) = *(v63 + 36);
      v48 = (v7 + 224);
      *(v7 + 296) = *(v63 + 20);
      *(v7 + 4464) = *(v7 + 4448) >> 4;
      *(v7 + 4504) = *(v63 + 28);
      *(v7 + 4512) = *(v63 + 68);
      *(v7 + 4528) = *(v63 + 84);
      if (v54)
      {
        v64 = *__error();
        v65 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = *(*(v7 + 272) + 60);
          *v122 = 134217984;
          *&v122[4] = v66;
          _os_log_impl(&dword_1C278D000, v65, OS_LOG_TYPE_DEFAULT, "use_shadow next_id: %llu", v122, 0xCu);
        }

        *__error() = v64;
        v67 = *(v7 + 272);
        v68 = *(v67 + 20);
        v69 = *(v67 + 44);
        if (v68 < v69)
        {
          goto LABEL_73;
        }

        v70 = *(v67 + 44);
        if (v69 != v68)
        {
          if ((v4 & 2) == 0)
          {
            *(v67 + 20) = v69;
          }

          *(v7 + 296) = v69;
        }

        v71 = *(v67 + 60);
        if (*v48 < v71)
        {
LABEL_73:
          v72 = 0;
LABEL_74:
          v14 = v107;
          goto LABEL_116;
        }

        if (*v48 != v71)
        {
          if ((v4 & 2) == 0)
          {
            *(v67 + 36) = v71;
            *(v67 + 20) = v70;
            *(v67 + 28) = 0;
          }

          *(v7 + 224) = v71;
          *(v7 + 4504) = 0;
        }
      }

      v73 = MEMORY[0x1E69E9AC8];
      if (((*(v7 + 4448) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) <= 0x100000)
      {
        v74 = 0x100000;
      }

      else
      {
        v74 = (*(v7 + 4448) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      }

      v75 = fd_mmap(*(v7 + 4432), v74, v105 ^ 3u, 1, 0);
      *(v7 + 4456) = v75;
      if (v75 == -1)
      {
        v27 = *__error();
        v55 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        *v122 = 136315394;
        *&v122[4] = "data_map64_init_with_ctx";
        *&v122[12] = 1024;
        *&v122[14] = 1230;
        v35 = "%s:%d: offset fd_mmap error";
        goto LABEL_112;
      }

      *(v7 + 4440) = v74;
      if (((*(v7 + 4480) + *v73 - 1) & -*v73) <= 0x100000)
      {
        v76 = 0x100000;
      }

      else
      {
        v76 = (*(v7 + 4480) + *v73 - 1) & -*v73;
      }

      v77 = fd_mmap(*(v7 + 4472), v76, 3, 1, 0);
      *(v7 + 4496) = v77;
      if (v77 == -1)
      {
        v27 = *__error();
        v55 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        *v122 = 136315394;
        *&v122[4] = "data_map64_init_with_ctx";
        *&v122[12] = 1024;
        *&v122[14] = 1239;
        v35 = "%s:%d: offset fd_mmap error";
        goto LABEL_112;
      }

      *(v7 + 4488) = v76;
      v78 = *(v7 + 272);
      if (*(v78 + 36))
      {
        v79 = *v48;
        goto LABEL_103;
      }

      *(v78 + 36) = 1;
LABEL_102:
      v79 = 1;
      *v48 = 1;
LABEL_103:
      if (*(v7 + 4464) < v79)
      {
        v27 = *__error();
        v80 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v81 = *(v7 + 4464);
          v82 = *(v7 + 224);
          *v122 = 136315906;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1260;
          *&v122[18] = 2048;
          *&v122[20] = v81;
          *&v122[28] = 2048;
          *&v122[30] = v82;
          v35 = "%s:%d: invalid offset size 1 - %lld %lld";
          v36 = v80;
          v37 = 38;
          goto LABEL_113;
        }

        goto LABEL_114;
      }

      v83 = *(v7 + 272);
      if (*v83 == 0x446174615064)
      {
        v84 = *(v83 + 8);
        if (v84 <= 0xD)
        {
          v27 = *__error();
          v85 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            *v122 = 136315650;
            *&v122[4] = "data_map64_init_with_ctx";
            *&v122[12] = 1024;
            *&v122[14] = 1270;
            *&v122[18] = 1024;
            *&v122[20] = v84;
            v35 = "%s:%d: invalid version %d";
            v36 = v85;
            v37 = 24;
            goto LABEL_113;
          }

          goto LABEL_114;
        }

        v98 = *(v83 + 12);
        if (v98 != v106 && v98)
        {
          v27 = *__error();
          v99 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          v100 = *(*(v7 + 272) + 12);
          *v122 = 136315906;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1275;
          *&v122[18] = 1024;
          *&v122[20] = v100;
          *&v122[24] = 1024;
          *&v122[26] = v106;
          v35 = "%s:%d: invalid extra_size %d %d";
          v36 = v99;
          v37 = 30;
          goto LABEL_113;
        }

        *(v7 + 220) = v106;
        if (*(v7 + 264) <= 0x5BuLL)
        {
          v27 = *__error();
          v28 = _SILogForLogForCategory(0);
          v14 = v107;
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_115;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1283;
          v29 = "%s:%d: invalid header size";
          goto LABEL_28;
        }

        if (*(v7 + 288) < *(v7 + 296))
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1288;
          v35 = "%s:%d: invalid storage size 1";
          goto LABEL_112;
        }

        if (v49 || !*(v83 + 16) || (v101 = *(v7 + 4504)) == 0 || (v102 = *(v7 + 4480), v102 < 8 * v101))
        {
          if (!_data_map64_rehash(v7))
          {
            v27 = *__error();
            v55 = _SILogForLogForCategory(0);
            if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_114;
            }

            *v122 = 136315394;
            *&v122[4] = "data_map64_init_with_ctx";
            *&v122[12] = 1024;
            *&v122[14] = 1295;
            v35 = "%s:%d: re-build hash error";
            goto LABEL_112;
          }

          v102 = *(v7 + 4480);
          v101 = *(v7 + 4504);
        }

        if (v102 >= 8 * v101)
        {
          v72 = 1;
          goto LABEL_74;
        }

        v27 = *__error();
        v55 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        *v122 = 136315394;
        *&v122[4] = "data_map64_init_with_ctx";
        *&v122[12] = 1024;
        *&v122[14] = 1302;
        v35 = "%s:%d: invalid hash size 1";
      }

      else
      {
        v27 = *__error();
        v55 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        *v122 = 136315394;
        *&v122[4] = "data_map64_init_with_ctx";
        *&v122[12] = 1024;
        *&v122[14] = 1264;
        v35 = "%s:%d: invalid offset signature";
      }

LABEL_112:
      v36 = v55;
      v37 = 18;
      goto LABEL_113;
    }
  }

  v27 = *__error();
  v28 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *v122 = 136315394;
    *&v122[4] = "data_map64_init_with_ctx";
    *&v122[12] = 1024;
    *&v122[14] = 943;
    v29 = "%s:%d: param error";
LABEL_28:
    _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, v29, v122, 0x12u);
  }

LABEL_115:
  *__error() = v27;
  v72 = 0;
LABEL_116:
  v115 = 1;
  v86 = threadData[9 * v111 + 1] + 320 * v110;
  *(v86 + 312) = v14;
  v87 = *(v86 + 232);
  if (v87)
  {
    v87(*(v86 + 288));
  }

  dropThreadId(v111, 0, add_explicit + 1);
  if ((v115 & 1) == 0)
  {
LABEL_123:
    v94 = *__error();
    v95 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      v96 = fd_realpath(*(v7 + 248), __str);
      *&v122[4] = "data_map64_init_with_ctx";
      v97 = "";
      *v122 = 136315650;
      if (v96)
      {
        v97 = v96;
      }

      *&v122[12] = 1024;
      *&v122[14] = 1316;
      *&v122[18] = 2080;
      *&v122[20] = v97;
      _os_log_error_impl(&dword_1C278D000, v95, OS_LOG_TYPE_ERROR, "%s:%d: exception processing %s", v122, 0x1Cu);
    }

    *__error() = v94;
    goto LABEL_125;
  }

  if ((v72 & 1) == 0)
  {
LABEL_125:
    data_map64_destroy(v7);
    return 0;
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v123 = 0u;
  memset(v122, 0, sizeof(v122));
  v88 = *__error();
  v89 = _SILogForLogForCategory(7);
  v90 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v89, v90))
  {
    v91 = fd_name(*(v7 + 248), v122, 0x100uLL);
    v92 = *(v7 + 224) - 1;
    v136.st_dev = 136315394;
    *&v136.st_mode = v91;
    WORD2(v136.st_ino) = 2048;
    *(&v136.st_ino + 6) = v92;
    _os_log_impl(&dword_1C278D000, v89, v90, "Opened map %s with counts: %lld", &v136, 0x16u);
  }

  *__error() = v88;
  return v7;
}

uint64_t _data_map64_rehash(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  *(a1 + 4520) = 0;
  v2 = *(a1 + 224) - *(a1 + 4512);
  v3 = *__error();
  v4 = _SILogForLogForCategory(0);
  v5 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 224);
    v7 = *(a1 + 4512);
    v8 = *(a1 + 4504);
    v26 = 134219008;
    v27 = a1;
    v28 = 2048;
    *v29 = v6;
    *&v29[8] = 2048;
    *&v29[10] = v7;
    v30 = 2048;
    v31 = v2;
    v32 = 2048;
    v33 = v8;
    _os_log_impl(&dword_1C278D000, v4, v5, "rehash %p max id: %lld deletes: %lld count: %lld hash_size: %lld", &v26, 0x34u);
  }

  *__error() = v3;
  v9 = *(a1 + 4496);
  v10 = 8 * *(a1 + 4504);
  fd_system_status_stall_if_busy();
  msync(v9, v10, 4);
  if (fd_truncate(*(a1 + 4472), 0) == -1)
  {
    goto LABEL_22;
  }

  v11 = 2 * v2;
  if ((2 * v2) <= *MEMORY[0x1E69E9AC8] >> 3)
  {
    v11 = *MEMORY[0x1E69E9AC8] >> 3;
  }

  *(a1 + 4504) = v11;
  v12 = 8 * v11;
  if (fd_truncate(*(a1 + 4472), 8 * v11) == -1)
  {
    goto LABEL_22;
  }

  if ((*(a1 + 4570) & 1) == 0)
  {
    _data_map64_dirty(a1);
    *(a1 + 4570) = 1;
  }

  *(a1 + 4480) = v12;
  v13 = *(a1 + 4488);
  if (v12 <= v13)
  {
    goto LABEL_14;
  }

  v14 = *(a1 + 4488);
  do
  {
    v15 = v14;
    v14 *= 2;
  }

  while (v15 < v12);
  munmap(*(a1 + 4496), v13);
  *(a1 + 4488) = 0;
  *(a1 + 4496) = -1;
  v16 = fd_mmap(*(a1 + 4472), v15, 3, 1, 0);
  *(a1 + 4496) = v16;
  if (v16 == -1)
  {
LABEL_22:
    v23 = *__error();
    v24 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315650;
      v27 = "_data_map64_rehash";
      v28 = 1024;
      *v29 = 556;
      *&v29[4] = 2048;
      *&v29[6] = a1;
      _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: re-build hash error %p", &v26, 0x1Cu);
    }

    v25 = __error();
    result = 0;
    *v25 = v23;
    return result;
  }

  *(a1 + 4488) = v15;
LABEL_14:
  v17 = *(a1 + 224);
  if (v17 >= 2)
  {
    v18 = 0;
    for (i = 1; i < v17; ++i)
    {
      v20 = *(a1 + 4456) + v18;
      if (*(v20 + 16) != 1)
      {
        bucket_entry = _data_map64_get_bucket_entry(a1, *(v20 + 24), i, 0, 0);
        if (!bucket_entry || *bucket_entry)
        {
          goto LABEL_22;
        }

        *bucket_entry = i;
        v17 = *(a1 + 224);
      }

      v18 += 16;
    }
  }

  return 1;
}

void data_map64_destroy(uint64_t a1)
{
  if (a1)
  {
    v2 = (a1 + 4096);
    makeThreadId();
    if ((*(a1 + 232) + 1) >= 2)
    {
      v44 = 0;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
      v42 = HIDWORD(v11);
      v43 = v11;
      v40 = v13;
      v41 = v12;
      v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
      v15 = *(v14 + 312);
      v16 = *(v14 + 224);
      if (v16)
      {
        v16(*(v14 + 288));
      }

      v39 = v43;
      v38 = v42;
      v37 = __PAIR64__(v41, v40);
      if (_setjmp(v14))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v36 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v36, 2u);
        }

        *(v14 + 312) = v15;
        CIOnThreadCleanUpReset(v37);
        dropThreadId(v39, 1, add_explicit + 1);
        CICleanUpReset(v39, HIDWORD(v37));
        v17 = 0;
      }

      else
      {
        v29 = *(*(a1 + 232) + 96);
        v44 = 1;
        v30 = threadData[9 * v39 + 1] + 320 * v38;
        *(v30 + 312) = v15;
        v31 = *(v30 + 232);
        if (v31)
        {
          v31(*(v30 + 288));
        }

        dropThreadId(v39, 0, add_explicit + 1);
        v17 = v29;
      }

      v32 = v17;
      if ((v44 & 1) == 0)
      {
        v32 = *(a1 + 240);
      }

      munmap(*(a1 + 232), v32);
      *(a1 + 232) = -1;
      fd_release(*(a1 + 248));
      *(a1 + 248) = 0;
      v33 = *(a1 + 256);
      if (v33)
      {
        fd_release(v33);
        *(a1 + 256) = 0;
      }
    }

    else
    {
      v3 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, v3 + 1);
      v42 = HIDWORD(v4);
      v43 = v4;
      v40 = v6;
      v41 = v5;
      v7 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
      v8 = *(v7 + 312);
      v9 = *(v7 + 224);
      if (v9)
      {
        v9(*(v7 + 288));
      }

      v39 = v43;
      v38 = v42;
      v37 = __PAIR64__(v41, v40);
      if (_setjmp(v7))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v36 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v36, 2u);
        }

        *(v7 + 312) = v8;
        CIOnThreadCleanUpReset(v37);
        dropThreadId(v39, 1, v3 + 1);
        CICleanUpReset(v39, HIDWORD(v37));
      }

      else
      {
        v18 = *(a1 + 272);
        if (v18 && !*(v18 + 16))
        {
          if (v2[474] == 1)
          {
            v19 = *(a1 + 4496);
            v20 = 8 * *(a1 + 4504);
            fd_system_status_stall_if_busy();
            msync(v19, v20, 4);
            _fd_unlink_with_origin(*(a1 + 4472), 0);
            munmap(*(a1 + 4496), *(a1 + 4488));
            *(a1 + 4496) = -1;
          }

          if (v2[473] == 1)
          {
            storageWindowsKillPages(a1 + 280);
            storageWindowsUnmap(a1 + 280);
            storageWindowsClose(a1 + 280);
            fd_truncate(*(a1 + 280), *(*(a1 + 272) + 20));
          }

          if (v2[475] == 1)
          {
            v21 = *(a1 + 4456);
            v22 = 16 * *(a1 + 224);
            fd_system_status_stall_if_busy();
            msync(v21, v22, 4);
            munmap(*(a1 + 4456), *(a1 + 4440));
            *(a1 + 4456) = -1;
            fd_truncate(*(a1 + 4432), 16 * *(a1 + 224));
          }
        }

        v23 = threadData[9 * v39 + 1] + 320 * v38;
        *(v23 + 312) = v8;
        v24 = *(v23 + 232);
        if (v24)
        {
          v24(*(v23 + 288));
        }

        dropThreadId(v39, 0, v3 + 1);
      }

      v25 = *(a1 + 272);
      if (v25)
      {
        free(v25);
        *(a1 + 272) = 0;
      }

      fd_release(*(a1 + 248));
      *(a1 + 248) = 0;
      v26 = *(a1 + 256);
      if (v26)
      {
        fd_release(v26);
        *(a1 + 256) = 0;
      }

      storageWindowsUnmap(a1 + 280);
      storageWindowsClose(a1 + 280);
      v27 = *(a1 + 4456);
      if (v27 != -1)
      {
        munmap(v27, *(a1 + 4440));
        *(a1 + 4456) = -1;
        *(a1 + 4440) = 0;
      }

      fd_release(*(a1 + 4432));
      *(a1 + 4432) = 0;
      v28 = *(a1 + 4496);
      if (v28 != -1)
      {
        munmap(v28, *(a1 + 4488));
        *(a1 + 4496) = -1;
        *(a1 + 4488) = 0;
      }

      fd_release(*(a1 + 4472));
      *(a1 + 4472) = 0;
    }

    v34 = *(a1 + 4560);
    if (v34)
    {
      v35 = v34[2];
      if (v35)
      {
        CFRelease(v35);
      }

      free(v34);
      *(a1 + 4560) = 0;
    }

    if ((v2[477] & 1) == 0)
    {
      db_rwlock_destroy(a1);
    }

    free(a1);
  }
}

uint64_t _data_map64_dirty(uint64_t result)
{
  v1 = *(result + 272);
  if (*(v1 + 16))
  {
    v2 = result;
    *(v1 + 16) = 0;
    fd_pwrite(*(result + 248), v1, 0x5CuLL, 0);
    v3 = *(v2 + 248);

    return fd_sync(v3, 0);
  }

  return result;
}

uint64_t _data_map64_get_bucket_entry(void *a1, unint64_t a2, unint64_t a3, const void *a4, size_t a5)
{
  v75 = *MEMORY[0x1E69E9840];
  if (a1[28] > a3)
  {
    v7 = a5;
    v9 = 0;
    v10 = a1[563];
    v11 = a2 % v10;
    v42 = v10;
    while (1)
    {
      v43 = v9;
      if (v11 < v10)
      {
        break;
      }

      v21 = 0;
      v12 = v11;
LABEL_29:
      if (v21)
      {
        return 0;
      }

      result = 0;
      v9 = 1;
      v10 = v11;
      v11 = 0;
      if (v43 & 1 | (v12 != v42))
      {
        return result;
      }
    }

    v12 = v11;
    while (1)
    {
      v13 = a1[562];
      v14 = *(v13 + 8 * v12);
      if (v14)
      {
        v15 = v14 == a3;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        return v13 + 8 * v12;
      }

      if (!a3)
      {
        if (a1[28] <= v14)
        {
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v62 = 0u;
          v60 = 0u;
          v61 = 0u;
          v59 = 0u;
          v31 = *__error();
          v32 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v36 = a1[28];
            v37 = fd_name(a1[31], &v59, 0x100uLL);
            *buf = 136316418;
            v48 = "_data_map64_get_offset_entry";
            v49 = 1024;
            v50 = 359;
            v51 = 2048;
            v52 = v14;
            v53 = 2048;
            v54 = v36;
            v55 = 2048;
            v56 = a1;
            v57 = 2080;
            v58 = v37;
            _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
          }

          v33 = __error();
          result = 0;
          *v33 = v31;
          return result;
        }

        v16 = a1[557];
        if (!v16)
        {
          return 0;
        }

        v17 = (v16 + 16 * v14);
        v18 = *v17;
        if (*v17 == 1)
        {
          return 0;
        }

        if (v17[1] == a2)
        {
          v44 = 0;
          __s2 = 0;
          v46 = 0;
          v19 = a1[37];
          if (v19 <= v18)
          {
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v62 = 0u;
            v60 = 0u;
            v61 = 0u;
            v59 = 0u;
            v22 = *__error();
            v23 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v39 = a1[37];
              v24 = fd_name(a1[31], &v59, 0x100uLL);
              *buf = 136316418;
              v48 = "_data_map64_get_data_entry";
              v49 = 1024;
              v50 = 376;
              v51 = 2048;
              v52 = v18;
              v53 = 2048;
              v54 = v39;
              v55 = 2048;
              v56 = a1;
              v57 = 2080;
              v58 = v24;
              _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx 0x%lx %p %s", buf, 0x3Au);
            }

            *__error() = v22;
            v21 = 1;
            v7 = a5;
            goto LABEL_25;
          }

          data_entry_restore_64((a1 + 35), v18, v19, &v44, &v46);
          if (v46 == 1)
          {
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v62 = 0u;
            v60 = 0u;
            v61 = 0u;
            v59 = 0u;
            v38 = *__error();
            v20 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v25 = fd_name(a1[31], &v59, 0x100uLL);
              v26 = a1[37];
              *buf = 136316418;
              v48 = "_data_map64_get_data_entry";
              v49 = 1024;
              v50 = 372;
              v51 = 2080;
              v52 = v25;
              v53 = 2048;
              v54 = v18;
              v55 = 2048;
              v56 = v26;
              v57 = 2048;
              v58 = v44;
              _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx", buf, 0x3Au);
            }

            *__error() = v38;
            v21 = 1;
            goto LABEL_25;
          }

          if (v44 == v7 && !memcmp(a4, __s2, v7))
          {
            return v13 + 8 * v12;
          }
        }
      }

      v21 = 0;
LABEL_25:
      ++v12;
      if ((v21 & 1) != 0 || v12 >= v10)
      {
        goto LABEL_29;
      }
    }
  }

  if (!a3)
  {
    return 0;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v28 = *__error();
  v29 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v34 = a1[28];
    v35 = fd_name(a1[31], &v59, 0x100uLL);
    *buf = 136316418;
    v48 = "_data_map64_get_bucket_entry";
    v49 = 1024;
    v50 = 446;
    v51 = 2048;
    v52 = a3;
    v53 = 2048;
    v54 = v34;
    v55 = 2048;
    v56 = a1;
    v57 = 2080;
    v58 = v35;
    _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
  }

  v30 = __error();
  result = 0;
  *v30 = v28;
  return result;
}

unint64_t data_entry_restore_64(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int *a4, _BYTE *a5)
{
  v10 = _windowsResolvePtr(a1, a2, 8);
  v11 = *v10;
  if ((v11 & 0x80) == 0)
  {
    v12 = 1;
    goto LABEL_8;
  }

  if (a3 <= 1)
  {
    goto LABEL_7;
  }

  v13 = v10[1];
  if ((v10[1] & 0x80000000) == 0)
  {
    v11 = v11 & 0x7F | (v13 << 7);
    v12 = 2;
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  v15 = v10[2];
  if ((v10[2] & 0x80000000) == 0)
  {
    v12 = 3;
    v11 = ((v13 & 0x7F) << 7) | (v15 << 14) | v11 & 0x7F;
    goto LABEL_8;
  }

  if (a3 <= 3)
  {
    goto LABEL_7;
  }

  v16 = v10[3];
  if ((v10[3] & 0x80000000) == 0)
  {
    v12 = 4;
    v11 = ((v15 & 0x7F) << 14) | (v16 << 21) | ((v13 & 0x7F) << 7) | v11 & 0x7F;
    goto LABEL_8;
  }

  if (a3 == 4)
  {
LABEL_7:
    v12 = 0;
    v11 = 0;
    *a5 = 1;
    goto LABEL_8;
  }

  v17 = v10[4];
  if (v17 < 0)
  {
    if (__valid_fs(-1))
    {
      v18 = __si_assert_copy_extra_332();
      v26 = v18;
      v27 = "";
      if (v18)
      {
        v27 = v18;
      }

      si_analytics_log_7109(v18, v19, v20, v21, v22, v23, v24, v25, "VIntUtils.h", 389, "(b4 & 0x80) == 0", v27);
      free(v26);
      v28 = 2816;
    }

    else
    {
      v28 = 3072;
    }

    *v28 = -559038737;
    abort();
  }

  v12 = 5;
  v11 = ((v16 & 0x7F) << 21) | (v17 << 28) | ((v15 & 0x7F) << 14) | ((v13 & 0x7F) << 7) | v11 & 0x7F;
LABEL_8:
  *a4 = v11;
  result = _windowsResolvePtr(a1, a2, v12 + v11);
  if (v12 + *a4 <= a3)
  {
    *(a4 + 1) = result + v12;
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

void si_analytics_log_7109(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, "%s:%u: failed assertion '%s' %s readVInt32_boundschecked: exceeds max size for uint32_t", va);
  SISetCrashCStr(v8[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v10 = v8[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
  }

  free(v8[0]);
}

uint64_t _data_map64_match_address(uint64_t result, char *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 232);
    if (v4 != -1)
    {
      if (v4)
      {
        if (v4 <= a2)
        {
          v5 = *(result + 240);
          if (&v4[v5] > a2)
          {
            v6 = *(result + 248);
            v7 = "data ro header";
            v8 = a2;
            v9 = v3[30];
LABEL_21:
            log_map_access_error(v8, v4, v5, v9, v7, v6);
            return 1;
          }
        }
      }

      return 0;
    }

    if (storage_windows_contains_address(result + 280, a2))
    {
      return 1;
    }

    v4 = v3[557];
    v10 = (v4 + 1) < 2 || v4 > a2;
    if (v10 || (v5 = v3[555], &v4[v5] <= a2))
    {
      v4 = v3[562];
      if ((v4 + 1) < 2)
      {
        return 0;
      }

      if (v4 > a2)
      {
        return 0;
      }

      v5 = v3[561];
      if (&v4[v5] <= a2)
      {
        return 0;
      }

      v9 = v3[560];
      v6 = v3[559];
      v7 = "data buckets";
    }

    else
    {
      v9 = v3[556];
      v6 = v3[554];
      v7 = "data offsets";
    }

    v8 = a2;
    goto LABEL_21;
  }

  return result;
}

uint64_t _data_map64_sync_data(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v33 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  v31 = HIDWORD(v3);
  v32 = v3;
  v29 = v5;
  v30 = v4;
  v6 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v7 = *(v6 + 312);
  v8 = *(v6 + 224);
  if (v8)
  {
    v8(*(v6 + 288));
  }

  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v6 + 312) = v7;
    CIOnThreadCleanUpReset(v29);
    dropThreadId(v32, 1, add_explicit + 1);
    CICleanUpReset(v32, v30);
  }

  else
  {
    if (!*(a1 + 4576) && !*(*(a1 + 272) + 16))
    {
      if (*(a1 + 4569) == 1)
      {
        if (*(a1 + 312) >= 1)
        {
          v9 = 0;
          do
          {
            v10 = v9;
            storageWindowSync(*(a1 + 336 + 8 * v9), 0);
            v9 = v10 + 1;
          }

          while (v10 + 1 < *(a1 + 312));
        }

        *(a1 + 4569) = 0;
      }

      if (*(a1 + 4571) == 1)
      {
        v11 = *(*(a1 + 272) + 60);
        v12 = *(a1 + 4456) + 16 * v11;
        v13 = -*MEMORY[0x1E69E9AC8];
        v14 = 16 * (*(a1 + 224) - v11);
        fd_system_status_stall_if_busy();
        msync((v12 & v13), v14, 16);
        *(a1 + 4571) = 0;
      }

      if (*(a1 + 4570) == 1)
      {
        v15 = *(a1 + 4496);
        v16 = 8 * *(a1 + 4504);
        fd_system_status_stall_if_busy();
        msync(v15, v16, 16);
        *(a1 + 4570) = 0;
      }

      *(*(a1 + 272) + 20) = *(a1 + 296);
      v17 = *__error();
      v18 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 224);
        *buf = 134217984;
        *&buf[4] = v19;
        _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "sd update next_id = %lld", buf, 0xCu);
      }

      *__error() = v17;
      v20 = *(a1 + 272);
      *(v20 + 36) = *(a1 + 224);
      *(v20 + 28) = *(a1 + 4504);
      *(v20 + 68) = *(a1 + 4512);
      *(v20 + 84) = *(a1 + 4528);
      *(v20 + 16) = 0;
      fd_pwrite(*(a1 + 248), v20, 0x5CuLL, 0);
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
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      *buf = 0u;
      v41 = 0u;
      v21 = *__error();
      v22 = _SILogForLogForCategory(7);
      v23 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = fd_name(*(a1 + 248), buf, 0x100uLL);
        v25 = *(a1 + 224) - 1;
        *v34 = 136315650;
        v35 = v24;
        v36 = 2080;
        v37 = "sync";
        v38 = 2048;
        v39 = v25;
        _os_log_impl(&dword_1C278D000, v22, v23, "%s complete %s map with count: %lld", v34, 0x20u);
      }

      *__error() = v21;
    }

    v33 = 1;
    v26 = threadData[9 * v32 + 1] + 320 * v31;
    *(v26 + 312) = v7;
    v27 = *(v26 + 232);
    if (v27)
    {
      v27(*(v26 + 288));
    }

    dropThreadId(v32, 0, add_explicit + 1);
  }

  if (v33 == 1)
  {
    return *(a1 + 4576);
  }

  *(a1 + 4576) = 22;
  return 22;
}

uint64_t _data_map64_sync_header(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v33 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  v31 = HIDWORD(v3);
  v32 = v3;
  v29 = v5;
  v30 = v4;
  v6 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v7 = *(v6 + 312);
  v8 = *(v6 + 224);
  if (v8)
  {
    v8(*(v6 + 288));
  }

  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v6 + 312) = v7;
    CIOnThreadCleanUpReset(v29);
    dropThreadId(v32, 1, add_explicit + 1);
    CICleanUpReset(v32, v30);
    goto LABEL_15;
  }

  if (!*(a1 + 4576))
  {
    v9 = *(a1 + 272);
    if (*(v9 + 16) != 1)
    {
      *(v9 + 44) = *(v9 + 20);
      *(v9 + 60) = *(v9 + 36);
      *(v9 + 20) = *(a1 + 296);
      v21 = *__error();
      v22 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 224);
        *buf = 134217984;
        *&buf[4] = v23;
        _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "sh update next_id = %lld", buf, 0xCu);
      }

      *__error() = v21;
      v24 = *(a1 + 272);
      *(v24 + 36) = *(a1 + 224);
      *(v24 + 28) = *(a1 + 4504);
      *(v24 + 16) = 0;
      fd_pwrite(*(a1 + 248), v24, 0x5CuLL, 0);
      fd_sync(*(a1 + 248), 0);
      *(*(a1 + 272) + 16) = 2;
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
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      *buf = 0u;
      v41 = 0u;
      v10 = *__error();
      v25 = _SILogForLogForCategory(7);
      v26 = 2 * (dword_1EBF46AE8 < 4);
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_12;
      }

      v27 = fd_name(*(a1 + 248), buf, 0x100uLL);
      v28 = *(a1 + 224) - 1;
      v34 = 136315650;
      v35 = v27;
      v36 = 2080;
      v37 = "sync";
      v38 = 2048;
      v39 = v28;
      v14 = "%s complete %s header with count: %llu";
      v15 = &v34;
      v16 = v25;
      v13 = v26;
      v17 = 32;
      goto LABEL_11;
    }
  }

  v10 = *__error();
  v11 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 224);
    *buf = 134217984;
    *&buf[4] = v12;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = "Already clean; don't update next_id = %lld";
    v15 = buf;
    v16 = v11;
    v17 = 12;
LABEL_11:
    _os_log_impl(&dword_1C278D000, v16, v13, v14, v15, v17);
  }

LABEL_12:
  *__error() = v10;
  v33 = 1;
  v18 = threadData[9 * v32 + 1] + 320 * v31;
  *(v18 + 312) = v7;
  v19 = *(v18 + 232);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  dropThreadId(v32, 0, add_explicit + 1);
LABEL_15:
  if (v33 == 1)
  {
    return *(a1 + 4576);
  }

  *(a1 + 4576) = 22;
  return 22;
}

uint64_t data_map64_shadow(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4576) || *(*(a1 + 272) + 16) != 2)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 272) + 36);
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "Already shadowed; don't shadow next_id = %lld", &v10, 0xCu);
    }

    *__error() = v6;
  }

  else
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 272) + 36);
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "shadow update next_id = %lld", &v10, 0xCu);
    }

    *__error() = v2;
    *(*(a1 + 272) + 16) = 2;
    sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(a1 + 248), ".shadow", 514);
    *(a1 + 256) = sibling_with_suffix_protected;
    fd_pwrite(sibling_with_suffix_protected, *(a1 + 272), 0x5CuLL, 0);
  }

  return *(a1 + 4576);
}

uint64_t data_map64_commit_shadow(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4576) || *(*(a1 + 272) + 16) != 2)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 224);
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "Already shadowed cs; don't shadow next_id = %lld", &v9, 0xCu);
    }

    *__error() = v5;
  }

  else
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 224);
      v9 = 134217984;
      v10 = v4;
      _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "commit shadow update next_id = %lld", &v9, 0xCu);
    }

    *__error() = v2;
    fd_sync(*(a1 + 256), 0);
  }

  fd_release(*(a1 + 256));
  *(a1 + 256) = 0;
  return *(a1 + 4576);
}

uint64_t data_map64_commit_shadow_complete(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4576) || *(*(a1 + 272) + 16) != 2)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 224);
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "Already shadowed csc; don't shadow next_id = %lld", &v10, 0xCu);
    }

    *__error() = v6;
  }

  else
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 224);
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "commit shadow complete update next_id = %lld", &v10, 0xCu);
    }

    *__error() = v2;
    v5 = *(a1 + 272);
    *(v5 + 16) = 1;
    fd_pwrite(*(a1 + 248), v5, 0x5CuLL, 0);
    fd_sync(*(a1 + 248), 0);
  }

  return *(a1 + 4576);
}

uint64_t data_map64_flush(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (_data_map64_rdlock(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v20 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  v18 = HIDWORD(v4);
  v19 = v4;
  v16 = v6;
  v17 = v5;
  v7 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v8 = *(v7 + 312);
  v9 = *(v7 + 224);
  if (v9)
  {
    v9(*(v7 + 288));
  }

  if (_setjmp(v7))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v7 + 312) = v8;
    CIOnThreadCleanUpReset(v16);
    dropThreadId(v19, 1, add_explicit + 1);
    CICleanUpReset(v19, v17);
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    if (*(*(a1 + 272) + 16))
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 224);
        *buf = 134217984;
        v22 = v13;
        _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "Not dirty; don't flush next_id = %lld", buf, 0xCu);
      }

      *__error() = v11;
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = _data_map64_sync_data(a1);
    }

    v20 = 1;
    v14 = threadData[9 * v19 + 1] + 320 * v18;
    *(v14 + 312) = v8;
    v15 = *(v14 + 232);
    if (v15)
    {
      v15(*(v14 + 288));
    }

    dropThreadId(v19, 0, add_explicit + 1);
  }

  if ((v20 & 1) == 0)
  {
    *(a1 + 4576) = 22;
  }

  _data_map64_unlock(a1);
  return v10;
}

uint64_t _data_map64_commit(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (_data_map64_rdlock(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v26 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  *buf = HIDWORD(v4);
  LODWORD(v33[0]) = v4;
  v25 = __PAIR64__(v5, v6);
  v7 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v8 = *(v7 + 312);
  v9 = *(v7 + 224);
  if (v9)
  {
    v9(*(v7 + 288));
  }

  v24 = v33[0];
  v23 = *buf;
  v22 = v25;
  if (!_setjmp(v7))
  {
    v11 = *(*(a1 + 272) + 16);
    if (v11 == 1)
    {
      goto LABEL_13;
    }

    if (v11)
    {
      v13 = 0xFFFFFFFFLL;
      goto LABEL_18;
    }

    v12 = _data_map64_sync_data(a1);
    if (!v12)
    {
      v12 = _data_map64_sync_header(a1);
      if (!v12)
      {
LABEL_13:
        v12 = data_map64_shadow(a1);
        if (!v12)
        {
          v12 = data_map64_commit_shadow(a1);
          if (!v12)
          {
            v12 = data_map64_commit_shadow_complete(a1);
          }
        }
      }
    }

    v13 = v12;
LABEL_18:
    v26 = 1;
    v14 = threadData[9 * v24 + 1] + 320 * v23;
    *(v14 + 312) = v8;
    v15 = *(v14 + 232);
    if (v15)
    {
      v15(*(v14 + 288));
    }

    dropThreadId(v24, 0, add_explicit + 1);
    v10 = v13;
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v21, 2u);
  }

  *(v7 + 312) = v8;
  CIOnThreadCleanUpReset(v22);
  dropThreadId(v24, 1, add_explicit + 1);
  CICleanUpReset(v24, HIDWORD(v22));
  v10 = 0xFFFFFFFFLL;
LABEL_21:
  if ((v26 & 1) == 0)
  {
    *(a1 + 4576) = 22;
  }

  memset(v33, 0, sizeof(v33));
  v16 = *__error();
  v17 = _SILogForLogForCategory(7);
  v18 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = fd_name(*(a1 + 248), v33, 0x100uLL);
    v20 = *(a1 + 224) - 1;
    *buf = 136315650;
    v28 = v19;
    v29 = 2080;
    v30 = "commit";
    v31 = 2048;
    v32 = v20;
    _os_log_impl(&dword_1C278D000, v17, v18, "%s complete %s with count: %lld", buf, 0x20u);
  }

  *__error() = v16;
  _data_map64_unlock(a1);
  return v10;
}

uint64_t data_map64_ids_get_locked_with_hash(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, const void *a5, size_t a6)
{
  v93 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 220);
  v10 = *(a2 + 4504);
  v63 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v12 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a2, 0, add_explicit + 1);
  v61 = HIDWORD(v12);
  v62 = v12;
  v60 = __PAIR64__(v13, v14);
  v15 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
  v50 = *(v15 + 312);
  v16 = *(v15 + 224);
  if (v16)
  {
    v16(*(v15 + 288));
  }

  v59 = v62;
  v58 = v61;
  v57 = v60;
  if (_setjmp(v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v77 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v77, 2u);
    }

    *(v15 + 312) = v50;
    CIOnThreadCleanUpReset(v57);
    dropThreadId(v59, 1, add_explicit + 1);
    CICleanUpReset(v59, HIDWORD(v57));
    v17 = 0;
    goto LABEL_36;
  }

  v54 = a6;
  v49 = v9;
  v48 = v9 + a6;
  v18 = a3 % v10;
  v19 = 0;
  do
  {
    v20 = v19;
    v21 = *(a2 + 4496);
    v22 = *(v21 + 8 * v18);
    if (!v22)
    {
      break;
    }

    if (*(a2 + 224) <= v22)
    {
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
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v78 = 0u;
      *v77 = 0u;
      v33 = *__error();
      v34 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        log = v34;
        v37 = add_explicit;
        v38 = *(a2 + 224);
        v39 = fd_name(*(a2 + 248), v77, 0x100uLL);
        *buf = 136316418;
        v66 = "_data_map64_get_offset_entry";
        v67 = 1024;
        v68 = 359;
        v69 = 2048;
        v70 = v22;
        v71 = 2048;
        v72 = v38;
        add_explicit = v37;
        v73 = 2048;
        v74 = a2;
        v75 = 2080;
        v76 = v39;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
      }

      *__error() = v33;
      goto LABEL_19;
    }

    v23 = (*(a2 + 4456) + 16 * v22);
    v24 = *v23;
    if (*v23 != 1 && v23[1] == a3)
    {
      v25 = *v23;
      v55 = 0;
      v56 = 0;
      v64 = 0;
      v26 = *(a2 + 296);
      if (v26 <= v24)
      {
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
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v78 = 0u;
        *v77 = 0u;
        v27 = *__error();
        v36 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v46 = v36;
          v40 = add_explicit;
          v41 = *(a2 + 296);
          v42 = fd_name(*(a2 + 248), v77, 0x100uLL);
          *buf = 136316418;
          v66 = "_data_map64_get_data_entry";
          v67 = 1024;
          v68 = 376;
          v69 = 2048;
          v70 = v25;
          v71 = 2048;
          v72 = v41;
          add_explicit = v40;
          v73 = 2048;
          v74 = a2;
          v75 = 2080;
          v76 = v42;
          v31 = v46;
          v32 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_32:
          _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x3Au);
        }
      }

      else
      {
        data_entry_restore_64(a2 + 280, v24, v26, &v55, &v64);
        if (v64 != 1)
        {
          if (v48 == v55 && !memcmp(a5, (v56 + v49), v54))
          {
            if (v20 < a4)
            {
              *(a1 + 8 * v20) = *(v21 + 8 * v18);
            }

            v20 = (v20 + 1);
          }

          goto LABEL_19;
        }

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
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v78 = 0u;
        *v77 = 0u;
        v27 = *__error();
        v28 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = fd_name(*(a2 + 248), v77, 0x100uLL);
          v30 = *(a2 + 296);
          *buf = 136316418;
          v66 = "_data_map64_get_data_entry";
          v67 = 1024;
          v68 = 372;
          v69 = 2080;
          v70 = v29;
          v71 = 2048;
          v72 = v25;
          v73 = 2048;
          v74 = v30;
          v75 = 2048;
          v76 = v55;
          v31 = v28;
          v32 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_32;
        }
      }

      *__error() = v27;
    }

LABEL_19:
    if (v18 + 1 == v10)
    {
      v35 = 0;
    }

    else
    {
      v35 = v18 + 1;
    }

    v18 = v35;
    v19 = v20;
  }

  while (v35 != a3 % v10);
  v63 = 1;
  v43 = threadData[9 * v59 + 1] + 320 * v58;
  *(v43 + 312) = v50;
  v44 = *(v43 + 232);
  if (v44)
  {
    v44(*(v43 + 288));
  }

  dropThreadId(v59, 0, add_explicit + 1);
  v17 = v20;
LABEL_36:
  result = v17;
  if ((v63 & 1) == 0)
  {
    result = 0;
    *(a2 + 4576) = 22;
  }

  return result;
}

void bit_vector_set_7166(void *a1, CFIndex idx)
{
  if (idx < 0)
  {
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert(v6, "bit_vector.h", 142, "bitIndex >= 0", v8);
    free(v7);
    if (__valid_fs(-1))
    {
      v9 = 2989;
    }

    else
    {
      v9 = 3072;
    }

    *v9 = -559038737;
    abort();
  }

  v4 = a1[1];
  if (v4 <= idx)
  {
    if (v4)
    {
      v10 = a1[1];
    }

    else
    {
      v10 = 32;
    }

    while (1)
    {
      v10 *= 2;
      if (v10 > idx)
      {
        break;
      }

      if (v10 <= v4)
      {
        v11 = __si_assert_copy_extra_332();
        v12 = v11;
        v13 = "";
        if (v11)
        {
          v13 = v11;
        }

        __message_assert(v11, "bit_vector.h", 124, "newCapacity > bv->capacity", v13);
        goto LABEL_20;
      }
    }

    v15 = a1[2];
    v16 = *MEMORY[0x1E695E480];
    if (v15)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v16, v10, v15);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v16, v10);
    }

    v18 = MutableCopy;
    if (!MutableCopy)
    {
      v20 = __si_assert_copy_extra_332();
      v12 = v20;
      v21 = "";
      if (v20)
      {
        v21 = v20;
      }

      __message_assert(v20, "bit_vector.h", 128, "newBV", v21);
LABEL_20:
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

    CFBitVectorSetCount(MutableCopy, v10);
    v19 = a1[2];
    if (v19)
    {
      CFRelease(v19);
    }

    a1[1] = v10;
    a1[2] = v18;
  }

  if (*a1 <= idx)
  {
    *a1 = idx + 1;
  }

  v5 = a1[2];

  CFBitVectorSetBitAtIndex(v5, idx, 1u);
}

CFIndex data_map64_id_get_with_key(uint64_t a1, const unsigned __int8 *a2, size_t a3, void *a4)
{
  v90 = *MEMORY[0x1E69E9840];
  v8 = commonHash(a3, a2);
  if (_data_map64_rdlock(a1))
  {
    v9 = 0;
    goto LABEL_40;
  }

  v60 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  v58 = HIDWORD(v11);
  v59 = v11;
  v57 = __PAIR64__(v12, v13);
  v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v15 = *(v14 + 312);
  v16 = *(v14 + 224);
  if (v16)
  {
    v16(*(v14 + 288));
  }

  v56 = v59;
  v55 = v58;
  v54 = v57;
  if (_setjmp(v14))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v74 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v74, 2u);
    }

    *(v14 + 312) = v15;
    CIOnThreadCleanUpReset(v54);
    dropThreadId(v56, 1, add_explicit + 1);
    CICleanUpReset(v56, HIDWORD(v54));
    v9 = 0;
    goto LABEL_38;
  }

  __s2 = a4;
  v51 = add_explicit;
  v17 = v8;
  v18 = *(a1 + 4504);
  v19 = v17 % v18;
  v20 = v17 % v18;
  __n = *(a1 + 220);
  v49 = v17;
  while (1)
  {
    v21 = *(a1 + 4496);
    v22 = *(v21 + 8 * v20);
    if (!v22)
    {
      break;
    }

    if (*(a1 + 224) <= v22)
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
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
      v75 = 0u;
      *v74 = 0u;
      v33 = *__error();
      v34 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        log = v34;
        v38 = *(a1 + 224);
        v39 = fd_name(*(a1 + 248), v74, 0x100uLL);
        *buf = 136316418;
        v63 = "_data_map64_get_offset_entry";
        v64 = 1024;
        v65 = 359;
        v66 = 2048;
        v67 = v22;
        v68 = 2048;
        v69 = v38;
        v70 = 2048;
        v71 = a1;
        v72 = 2080;
        v73 = v39;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
      }

      *__error() = v33;
      goto LABEL_21;
    }

    v23 = (*(a1 + 4456) + 16 * v22);
    v24 = *v23;
    if (*v23 != 1 && v23[1] == v49)
    {
      v25 = *v23;
      v52 = 0;
      v53 = 0;
      v61 = 0;
      v26 = *(a1 + 296);
      if (v26 <= v24)
      {
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
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
        v75 = 0u;
        *v74 = 0u;
        v27 = *__error();
        v36 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v46 = v36;
          v40 = *(a1 + 296);
          v41 = fd_name(*(a1 + 248), v74, 0x100uLL);
          *buf = 136316418;
          v63 = "_data_map64_get_data_entry";
          v64 = 1024;
          v65 = 376;
          v66 = 2048;
          v67 = v25;
          v68 = 2048;
          v69 = v40;
          v70 = 2048;
          v71 = a1;
          v72 = 2080;
          v73 = v41;
          v31 = v46;
          v32 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_33:
          _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x3Au);
        }

LABEL_27:
        *__error() = v27;
        goto LABEL_21;
      }

      data_entry_restore_64(a1 + 280, v24, v26, &v52, &v61);
      if (v61 == 1)
      {
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
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
        v75 = 0u;
        *v74 = 0u;
        v27 = *__error();
        v28 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = fd_name(*(a1 + 248), v74, 0x100uLL);
          v30 = *(a1 + 296);
          *buf = 136316418;
          v63 = "_data_map64_get_data_entry";
          v64 = 1024;
          v65 = 372;
          v66 = 2080;
          v67 = v29;
          v68 = 2048;
          v69 = v25;
          v70 = 2048;
          v71 = v30;
          v72 = 2048;
          v73 = v52;
          v31 = v28;
          v32 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      if (__n + a3 == v52)
      {
        v37 = v53;
        if (!memcmp(a2, &v53[__n], a3) && !memcmp(v37, __s2, __n))
        {
          v9 = *(v21 + 8 * v20);
          goto LABEL_35;
        }
      }
    }

LABEL_21:
    if (v20 + 1 == v18)
    {
      v35 = 0;
    }

    else
    {
      v35 = v20 + 1;
    }

    v20 = v35;
    if (v35 == v19)
    {
      v9 = 0;
      goto LABEL_35;
    }
  }

  v9 = 0;
LABEL_35:
  v60 = 1;
  v42 = threadData[9 * v56 + 1] + 320 * v55;
  *(v42 + 312) = v15;
  v43 = *(v42 + 232);
  if (v43)
  {
    v43(*(v42 + 288));
  }

  dropThreadId(v56, 0, v51 + 1);
LABEL_38:
  if ((v60 & 1) == 0)
  {
    v9 = 0;
    *(a1 + 4576) = 22;
  }

LABEL_40:
  if (*(a1 + 4560))
  {
    os_unfair_lock_lock((a1 + 4552));
    v45 = *(a1 + 4560);
    if (v45)
    {
      bit_vector_set_7166(v45, v9);
    }

    os_unfair_lock_unlock((a1 + 4552));
  }

  _data_map64_unlock(a1);
  return v9;
}

uint64_t data_map64_get_extra_with_key(uint64_t a1, const unsigned __int8 *a2, size_t a3, _BYTE *a4)
{
  v4 = a4;
  v91 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v61 = 0;
  v8 = commonHash(a3, a2);
  if (_data_map64_rdlock(a1))
  {
    goto LABEL_41;
  }

  v60 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  v58 = HIDWORD(v10);
  v59 = v10;
  v57 = __PAIR64__(v11, v12);
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  v56 = v59;
  v55 = v58;
  v54 = v57;
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v75) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v75, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v54);
    dropThreadId(v56, 1, add_explicit + 1);
    CICleanUpReset(v56, HIDWORD(v54));
    goto LABEL_39;
  }

  v49 = v14;
  v50 = add_explicit;
  v51 = v4;
  v16 = *(a1 + 4504);
  v48 = v8;
  v17 = v8 % v16;
  v18 = v17;
  v47 = *(a1 + 220);
  do
  {
    v19 = *(a1 + 4496);
    v20 = *(v19 + 8 * v18);
    if (!v20)
    {
      break;
    }

    if (*(a1 + 4560))
    {
      os_unfair_lock_lock((a1 + 4552));
      v40 = *(a1 + 4560);
      if (v40)
      {
        bit_vector_set_7166(v40, v20);
      }

      os_unfair_lock_unlock((a1 + 4552));
      v21 = *(v19 + 8 * v18);
    }

    else
    {
      v21 = *(v19 + 8 * v18);
    }

    if (*(a1 + 224) <= v21)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v27 = *__error();
      v33 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        log = v33;
        v38 = *(a1 + 224);
        v39 = fd_name(*(a1 + 248), &v75, 0x100uLL);
        *buf = 136316418;
        v64 = "_data_map64_get_offset_entry";
        v65 = 1024;
        v66 = 359;
        v67 = 2048;
        v68 = v21;
        v69 = 2048;
        v70 = v38;
        v71 = 2048;
        v72 = a1;
        v73 = 2080;
        v74 = v39;
        v31 = log;
        v32 = "%s:%d: invalid data id %lld max %lld %p %s";
LABEL_29:
        _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x3Au);
      }

LABEL_21:
      *__error() = v27;
      goto LABEL_22;
    }

    v22 = *(a1 + 4456);
    if (!v22)
    {
      goto LABEL_22;
    }

    v23 = (v22 + 16 * v21);
    v24 = *v23;
    if (*v23 == 1 || v23[1] != v48)
    {
      goto LABEL_22;
    }

    v25 = *v23;
    v52 = 0;
    v53 = 0;
    v62 = 0;
    v26 = *(a1 + 296);
    if (v26 <= v24)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v27 = *__error();
      v35 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v45 = v35;
        v36 = *(a1 + 296);
        v37 = fd_name(*(a1 + 248), &v75, 0x100uLL);
        *buf = 136316418;
        v64 = "_data_map64_get_data_entry";
        v65 = 1024;
        v66 = 376;
        v67 = 2048;
        v68 = v25;
        v69 = 2048;
        v70 = v36;
        v71 = 2048;
        v72 = a1;
        v73 = 2080;
        v74 = v37;
        v31 = v45;
        v32 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    data_entry_restore_64(a1 + 280, v24, v26, &v52, &v62);
    if (v62 == 1)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v27 = *__error();
      v28 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = fd_name(*(a1 + 248), &v75, 0x100uLL);
        v30 = *(a1 + 296);
        *buf = 136316418;
        v64 = "_data_map64_get_data_entry";
        v65 = 1024;
        v66 = 372;
        v67 = 2080;
        v68 = v29;
        v69 = 2048;
        v70 = v25;
        v71 = 2048;
        v72 = v30;
        v73 = 2048;
        v74 = v52;
        v31 = v28;
        v32 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v47 + a3 == v52 && !memcmp(a2, (v53 + v47), a3))
    {
      v41 = *(a1 + 220);
      __memcpy_chk();
      HIDWORD(v61) = v41;
      *v51 = 1;
      break;
    }

LABEL_22:
    v34 = 0;
    if (v18 + 1 != v16)
    {
      v34 = v18 + 1;
    }

    v18 = v34;
  }

  while (v34 != v17);
  v60 = 1;
  v42 = threadData[9 * v56 + 1] + 320 * v55;
  *(v42 + 312) = v49;
  v43 = *(v42 + 232);
  if (v43)
  {
    v43(*(v42 + 288));
  }

  dropThreadId(v56, 0, v50 + 1);
  v4 = v51;
LABEL_39:
  if ((v60 & 1) == 0)
  {
    *v4 = 0;
    *(a1 + 4576) = 22;
  }

LABEL_41:
  _data_map64_unlock(a1);
  return v61;
}

unint64_t _data_map64_get_data_id(uint64_t a1, int a2, const unsigned __int8 *a3, size_t a4, int a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = commonHash(a4 - a2, &a3[a2]);
  if (_data_map64_rdlock(a1))
  {
    return 0;
  }

  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v13 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  v41 = HIDWORD(v13);
  v42 = v13;
  v39 = v15;
  v40 = v14;
  v16 = threadData[9 * v13 + 1] + 320 * HIDWORD(v13);
  v17 = *(v16 + 312);
  v18 = *(v16 + 224);
  if (v18)
  {
    v18(*(v16 + 288));
  }

  v38 = v42;
  v37 = v41;
  v36 = __PAIR64__(v40, v39);
  if (!_setjmp(v16))
  {
    bucket_entry = _data_map64_get_bucket_entry(a1, v10, 0, a3, a4);
    if (!bucket_entry)
    {
      v19 = 0;
LABEL_28:
      v25 = threadData[9 * v38 + 1] + 320 * v37;
      *(v25 + 312) = v17;
      v26 = *(v25 + 232);
      if (v26)
      {
        v26(*(v25 + 288));
      }

      dropThreadId(v38, 0, add_explicit + 1);
      goto LABEL_31;
    }

    if (*bucket_entry)
    {
      if (*bucket_entry >= *(a1 + 224))
      {
        v19 = 0;
      }

      else
      {
        v19 = *bucket_entry;
      }

      goto LABEL_28;
    }

    if (!a5)
    {
LABEL_27:
      v19 = 0;
      goto LABEL_28;
    }

    v21 = bucket_entry;
    v35[1] = a3;
    v35[0] = v9;
    if (v9 >> 28)
    {
      v23 = 5;
    }

    else if (v9 >> 21)
    {
      v23 = 4;
    }

    else
    {
      if (!(v9 >> 14))
      {
        if (v9 < 0x80)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

LABEL_26:
        v24 = *(a1 + 224);
        _data_map64_unlock(a1);
        if (_data_map64_wrlock(a1))
        {
          goto LABEL_27;
        }

        v27 = v24;
        if (v24 != *(a1 + 224))
        {
          v33 = _data_map64_get_bucket_entry(a1, v10, 0, a3, a4);
          if (!v33)
          {
            v19 = 0;
            goto LABEL_28;
          }

          v29 = *v33;
          v27 = *(a1 + 224);
          if (*v33 >= v27)
          {
            goto LABEL_27;
          }

          if (v29)
          {
            _data_map64_set_seen_id(a1, v29);
            goto LABEL_50;
          }

          v21 = v33;
        }

        v28 = v21;
        v29 = v27;
        v34 = 0;
        if (!_data_map64_grow(a1, (v22 + a4), &v34))
        {
          goto LABEL_27;
        }

        if ((*(a1 + 4571) & 1) == 0)
        {
          _data_map64_dirty(a1);
          *(a1 + 4571) = 1;
        }

        v30 = (*(a1 + 4456) + 16 * v29);
        v30[1] = v10;
        if ((*(a1 + 4569) & 1) == 0)
        {
          _data_map64_dirty(a1);
          *(a1 + 4569) = 1;
        }

        *v30 = data_entry_store<unsigned long long,false,true,false>(a1 + 280, v35);
        ++*(a1 + 224);
        if ((*(a1 + 4570) & 1) == 0)
        {
          _data_map64_dirty(a1);
          *(a1 + 4570) = 1;
        }

        if ((v34 & 4) != 0)
        {
          v28 = _data_map64_get_bucket_entry(a1, v10, v29, 0, 0);
        }

        *v28 = v29;
        if (gSILogLevels[0] >= 5)
        {
          v31 = *__error();
          v32 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v44 = v29;
            v45 = 2048;
            v46 = a1;
            _os_log_impl(&dword_1C278D000, v32, OS_LOG_TYPE_DEFAULT, "added %lld to %p", buf, 0x16u);
          }

          *__error() = v31;
        }

LABEL_50:
        v19 = v29;
        goto LABEL_28;
      }

      v23 = 3;
    }

    v22 = v23;
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v16 + 312) = v17;
  CIOnThreadCleanUpReset(v36);
  dropThreadId(v38, 1, add_explicit + 1);
  CICleanUpReset(v38, HIDWORD(v36));
  v19 = 0;
LABEL_31:
  _data_map64_unlock(a1);
  return v19;
}

void _data_map64_set_seen_id(uint64_t a1, CFIndex a2)
{
  if (*(a1 + 4560))
  {
    os_unfair_lock_lock((a1 + 4552));
    v5 = *(a1 + 4560);
    if (v5)
    {
      bit_vector_set_7166(v5, a2);
    }

    os_unfair_lock_unlock((a1 + 4552));
  }
}

uint64_t _data_map64_grow(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 4576))
  {
    return 0;
  }

  v7 = *(a1 + 224);
  if (v7 >= *(a1 + 4464))
  {
    v8 = (*MEMORY[0x1E69E9AC8] + 16 * v7 + 15) & -*MEMORY[0x1E69E9AC8];
    if (fd_truncate(*(a1 + 4432), v8) == -1)
    {
      goto LABEL_17;
    }

    *(a1 + 4448) = v8;
    v9 = *(a1 + 4440);
    if (v8 > v9)
    {
      v10 = 2 * v9;
      munmap(*(a1 + 4456), v9);
      *(a1 + 4440) = 0;
      v11 = fd_mmap(*(a1 + 4432), v10, 3, 1, 0);
      *(a1 + 4456) = v11;
      if (v11 == -1)
      {
        goto LABEL_17;
      }

      *(a1 + 4440) = v10;
    }

    *(a1 + 4464) = v8 >> 4;
    *a3 |= 2u;
    v7 = *(a1 + 224);
  }

  v12 = v7 - *(a1 + 4512);
  if (v12 >= 2 * *(a1 + 4504) / 3uLL || v12 < 2 * *(a1 + 4520))
  {
    if (!_data_map64_rehash(a1))
    {
      goto LABEL_17;
    }

    *a3 |= 4u;
  }

  v13 = a2 + *(a1 + 296) + 8;
  if (v13 <= *(a1 + 288))
  {
    return 1;
  }

  if (_storageWindowsSetFileSize((a1 + 280), (v13 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]))
  {
    *a3 |= 1u;
    return 1;
  }

LABEL_17:
  result = 0;
  if (!*(a1 + 4576))
  {
    *(a1 + 4576) = 1;
  }

  return result;
}

uint64_t data_map64_get_data(uint64_t a1, unint64_t a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  if (_data_map64_rdlock(a1))
  {
LABEL_2:
    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }

  v38 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  v36 = HIDWORD(v8);
  v37 = v8;
  v34 = v10;
  v35 = v9;
  v11 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v11 + 312) = v12;
    CIOnThreadCleanUpReset(v34);
    dropThreadId(v37, 1, add_explicit + 1);
    CICleanUpReset(v37, v35);
    v14 = 0;
    goto LABEL_32;
  }

  if (*(a1 + 224) <= a2)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
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
    *buf = 0u;
    v24 = *__error();
    v25 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 224);
      v30 = fd_name(*(a1 + 248), buf, 0x100uLL);
      *v42 = 136316418;
      v43 = "_data_map64_get_offset_entry";
      v44 = 1024;
      v45 = 359;
      v46 = 2048;
      v47 = a2;
      v48 = 2048;
      v49 = v29;
      v50 = 2048;
      v51 = a1;
      v52 = 2080;
      v53 = v30;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", v42, 0x3Au);
    }

    *__error() = v24;
  }

  else
  {
    v15 = *(a1 + 4456);
    if (v15)
    {
      v16 = *(v15 + 16 * a2);
      if (v16 != 1)
      {
        v17 = v16;
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v18 = *(a1 + 296);
        if (v18 <= v16)
        {
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
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
          *buf = 0u;
          v19 = *__error();
          v20 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v31 = *(a1 + 296);
            v32 = fd_name(*(a1 + 248), buf, 0x100uLL);
            *v42 = 136316418;
            v43 = "_data_map64_get_data_entry";
            v44 = 1024;
            v45 = 376;
            v46 = 2048;
            v47 = v17;
            v48 = 2048;
            v49 = v31;
            v50 = 2048;
            v51 = a1;
            v52 = 2080;
            v53 = v32;
            v23 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
            goto LABEL_37;
          }
        }

        else
        {
          data_entry_restore_64(a1 + 280, v16, v18, &v39, &v41);
          if (v41 != 1)
          {
            if (a3)
            {
              *a3 = (v39 - *(a1 + 220));
            }

            if (*(a1 + 4560))
            {
              os_unfair_lock_lock((a1 + 4552));
              v33 = *(a1 + 4560);
              if (v33)
              {
                bit_vector_set_7166(v33, a2);
              }

              os_unfair_lock_unlock((a1 + 4552));
            }

            v26 = v40 + *(a1 + 220);
            goto LABEL_28;
          }

          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
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
          *buf = 0u;
          v19 = *__error();
          v20 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = fd_name(*(a1 + 248), buf, 0x100uLL);
            v22 = *(a1 + 296);
            *v42 = 136316418;
            v43 = "_data_map64_get_data_entry";
            v44 = 1024;
            v45 = 372;
            v46 = 2080;
            v47 = v21;
            v48 = 2048;
            v49 = v17;
            v50 = 2048;
            v51 = v22;
            v52 = 2048;
            v53 = v39;
            v23 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_37:
            _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, v23, v42, 0x3Au);
          }
        }

        *__error() = v19;
        v26 = 0;
LABEL_28:
        v14 = v26;
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
LABEL_29:
  v38 = 1;
  v27 = threadData[9 * v37 + 1] + 320 * v36;
  *(v27 + 312) = v12;
  v28 = *(v27 + 232);
  if (v28)
  {
    v28(*(v27 + 288));
  }

  dropThreadId(v37, 0, add_explicit + 1);
LABEL_32:
  if ((v38 & 1) == 0)
  {
    *(a1 + 4576) = 22;
  }

  _data_map64_unlock(a1);
  result = v14;
  if (!v14)
  {
    goto LABEL_2;
  }

  return result;
}

uint64_t _data_map64_garbage_compact_collect(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v71 = v3;
  v70 = v4;
  v6 = v5;
  v8 = v7;
  v117 = *MEMORY[0x1E69E9840];
  v9 = *(v7 + 224);
  bzero(v90, 0x400uLL);
  bzero(v89, 0x400uLL);
  v118.location = 0;
  *v2 = 1684300900;
  *(v2 + 8) = 0;
  *(v2 + 16) = v9;
  v118.length = v9 - 1;
  *(v2 + 24) = CFBitVectorGetCountOfBit(*(v6 + 16), v118, 1u);
  bzero(__src, 0x1058uLL);
  __src[520] = -1;
  v10 = fd_name(*(v8 + 280), v90, 0x400uLL);
  snprintf(v89, 0x400uLL, "tmp.%s", v10);
  sibling_protected = fd_create_sibling_protected(*(v8 + 280), v89, 1538, 0);
  if (fd_truncate(sibling_protected, *(v8 + 288)) == -1 || (v12 = *(v8 + 288), aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 0x40000000, aBlock[2] = ___data_map64_garbage_compact_collect_block_invoke, aBlock[3] = &__block_descriptor_tmp_52_7198, aBlock[4] = v8, __src[0] = sibling_protected, WORD2(__src[4]) = 256, __src[1] = v12, LODWORD(__src[4]) = 1, __src[5] = _Block_copy(aBlock), LOBYTE(__src[6]) = 26, bzero(&__src[7], 0x1000uLL), v13 = fd_name(*(v8 + 4432), v90, 0x400uLL), snprintf(v89, 0x400uLL, "tmp.%s", v13), __src[519] = fd_create_sibling_protected(*(v8 + 4432), v89, 1538, 0), fd_truncate(__src[519], *(v8 + 4448)) == -1))
  {
LABEL_13:
    v23 = *__error();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0xFFFFFFFFLL;
    }

    goto LABEL_16;
  }

  __src[522] = *(v8 + 4448);
  __src[520] = fd_mmap(__src[519], *(v8 + 4440), 3, 1, 0);
  if (__src[520] == -1)
  {
    v21 = *__error();
    v22 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v103[0]) = 136315394;
      *(v103 + 4) = "_data_map64_garbage_compact_collect";
      WORD2(v103[1]) = 1024;
      *(&v103[1] + 6) = 2758;
      _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: offsets fd_mmap error", v103, 0x12u);
    }

    *__error() = v21;
    goto LABEL_13;
  }

  __src[521] = *(v8 + 4440);
  data_entry_store<unsigned long long,false,true,false>(__src, dword_1E81997B0);
  v14 = __src[520];
  *__src[520] = 0;
  *(v14 + 1) = 0;
  v81 = 0;
  v86 = 0;
  v88 = 0u;
  v85 = 0u;
  v87 = v14;
  *&v88 = __src[521];
  v80[0] = 2;
  v80[1] = &v85;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v16 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v80, 0x40000000, add_explicit + 1);
  v78 = HIDWORD(v16);
  v79 = v16;
  v77 = __PAIR64__(v17, v18);
  v19 = threadData[9 * v16 + 1] + 320 * HIDWORD(v16);
  *(v19 + 216) = 0;
  v68 = *(v19 + 312);
  v20 = *(v19 + 224);
  if (v20)
  {
    v20(*(v19 + 288));
  }

  v76 = v79;
  v75 = v78;
  v74 = v77;
  if (_setjmp(v19))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v103[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v103, 2u);
    }

    *(v19 + 312) = v68;
    CIOnThreadCleanUpReset(v74);
    dropThreadId(v76, 1, add_explicit + 1);
    CICleanUpReset(v76, HIDWORD(v74));
    goto LABEL_79;
  }

  v69 = add_explicit;
  if (v9 != 1)
  {
    for (i = 1; i <= v9 - 1; ++i)
    {
      if (*(v8 + 224) <= i)
      {
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v104 = 0u;
        memset(v103, 0, sizeof(v103));
        v37 = *__error();
        v38 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v47 = *(v8 + 224);
          v48 = fd_name(*(v8 + 248), v103, 0x100uLL);
          v91 = 136316418;
          v92 = "_data_map64_get_offset_entry";
          v93 = 1024;
          v94 = 359;
          v95 = 2048;
          v96 = i;
          v97 = 2048;
          v98 = v47;
          v99 = 2048;
          v100 = v8;
          v101 = 2080;
          v102 = v48;
          _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", &v91, 0x3Au);
        }

        *__error() = v37;
        goto LABEL_35;
      }

      v27 = *(v8 + 4456);
      if (v27)
      {
        v28 = *(v27 + 16 * i);
        if (v28 >= 2)
        {
          v29 = v28;
          v72 = 0;
          v73 = 0;
          v84 = 0;
          v30 = *(v8 + 296);
          if (v30 <= v28)
          {
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v104 = 0u;
            memset(v103, 0, sizeof(v103));
            v31 = *__error();
            v39 = _SILogForLogForCategory(0);
            if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            log = v39;
            v53 = *(v8 + 296);
            v54 = fd_name(*(v8 + 248), v103, 0x100uLL);
            v91 = 136316418;
            v92 = "_data_map64_get_data_entry";
            v93 = 1024;
            v94 = 376;
            v95 = 2048;
            v96 = v29;
            v97 = 2048;
            v98 = v53;
            v99 = 2048;
            v100 = v8;
            v101 = 2080;
            v102 = v54;
            v35 = log;
            v36 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
            goto LABEL_65;
          }

          data_entry_restore_64(v8 + 280, v28, v30, &v72, &v84);
          if (v84 == 1)
          {
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v104 = 0u;
            memset(v103, 0, sizeof(v103));
            v31 = *__error();
            v32 = _SILogForLogForCategory(0);
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            v33 = fd_name(*(v8 + 248), v103, 0x100uLL);
            v34 = *(v8 + 296);
            v91 = 136316418;
            v92 = "_data_map64_get_data_entry";
            v93 = 1024;
            v94 = 372;
            v95 = 2080;
            v96 = v33;
            v97 = 2048;
            v98 = v29;
            v99 = 2048;
            v100 = v34;
            v101 = 2048;
            v102 = v72;
            v35 = v32;
            v36 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_65:
            _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, v36, &v91, 0x3Au);
            goto LABEL_39;
          }

          if (i < v70)
          {
            goto LABEL_44;
          }

          if ((i & 0x8000000000000000) != 0)
          {
            v63 = __si_assert_copy_extra_332();
            v64 = v63;
            v65 = "";
            if (v63)
            {
              v65 = v63;
            }

            __message_assert(v63, "bit_vector.h", 109, "bitIndex >= 0", v65);
            free(v64);
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

          if (*v6 > i && CFBitVectorGetBitAtIndex(*(v6 + 16), i))
          {
LABEL_44:
            *&__src[520][4 * i + 2] = *(*(v8 + 4456) + 16 * i + 8);
            if (v72 < 0x80)
            {
              v40 = 1;
            }

            else
            {
              v40 = 2;
            }

            if (v72 >> 14)
            {
              v41 = 3;
            }

            else
            {
              v41 = v40;
            }

            if (v72 >> 21)
            {
              v42 = 4;
            }

            else
            {
              v42 = v41;
            }

            if (v72 >> 28)
            {
              v43 = 5;
            }

            else
            {
              v43 = v42;
            }

            v44 = (v72 + v43 + 8);
            v45 = (__src[2] + v44);
            if ((__src[2] + v44) >= __src[1])
            {
              if (_storageWindowsExpandBacking(__src, v44))
              {
                v45 = (__src[2] + v44);
                goto LABEL_57;
              }
            }

            else
            {
LABEL_57:
              __src[2] = v45;
            }

            v46 = data_entry_store<unsigned long long,false,true,false>(__src, &v72);
            *&__src[520][4 * i] = v46;
            continue;
          }

          ++*(v2 + 8);
          if ((v71 & 2) != 0)
          {
            if ((v71 & 8) != 0)
            {
              if (gSILogLevels[0] < 5)
              {
                goto LABEL_35;
              }

              v31 = *__error();
              v55 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v56 = v73 + *(v8 + 220);
                LODWORD(v103[0]) = 67109890;
                HIDWORD(v103[0]) = i;
                LOWORD(v103[1]) = 1024;
                *(&v103[1] + 2) = v72;
                HIWORD(v103[1]) = 2080;
                v103[2] = v56;
                LOWORD(v103[3]) = 2048;
                *(&v103[3] + 2) = v8;
                v50 = v55;
                v51 = "Deleting id: %d size: %d %s from %p";
                v52 = 34;
LABEL_69:
                _os_log_impl(&dword_1C278D000, v50, OS_LOG_TYPE_DEFAULT, v51, v103, v52);
              }
            }

            else
            {
              if (gSILogLevels[0] < 5)
              {
                goto LABEL_35;
              }

              v31 = *__error();
              v49 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v103[0]) = 67109632;
                HIDWORD(v103[0]) = i;
                LOWORD(v103[1]) = 1024;
                *(&v103[1] + 2) = v72;
                HIWORD(v103[1]) = 2048;
                v103[2] = v8;
                v50 = v49;
                v51 = "Deleting id: %d size: %d from %p";
                v52 = 24;
                goto LABEL_69;
              }
            }

LABEL_39:
            *__error() = v31;
          }
        }
      }

LABEL_35:
      *&__src[520][4 * i] = xmmword_1C2BFA340;
    }
  }

  if (*(v2 + 8))
  {
    if (SLODWORD(__src[4]) >= 1)
    {
      v57 = 0;
      do
      {
        v58 = v57;
        storageWindowSync(__src[v57 + 7], 1);
        v57 = v58 + 1;
      }

      while (v58 + 1 < SLODWORD(__src[4]));
    }

    v59 = __src[520];
    v60 = __src[522];
    fd_system_status_stall_if_busy();
    msync(v59, v60, 16);
    memcpy((v2 + 32), __src, 0x1058uLL);
    v81 = 1;
    v61 = threadData[9 * v76 + 1] + 320 * v75;
    *(v61 + 312) = v68;
    v62 = *(v61 + 232);
    if (v62)
    {
      v62(*(v61 + 288));
    }

    dropThreadId(v76, 0, v69 + 1);
LABEL_79:
    v24 = 0;
    result = 0;
    if (v81)
    {
      return result;
    }

    goto LABEL_16;
  }

  v24 = 0;
LABEL_16:
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

  return v24;
}

uint64_t *peopleNameAlias(uint64_t a1)
{
  {
    PhCommonPeopleNameAlias(void)::_peopleNameAlias = 0u;
    *&qword_1EBF61EF8 = 0u;
    dword_1EBF61F08 = 1065353216;
  }

  if (PhCommonPeopleNameAlias(void)::onceToken != -1)
  {
    dispatch_once(&PhCommonPeopleNameAlias(void)::onceToken, &__block_literal_global_2);
  }

  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v3, v4);
  v6 = *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
  if (*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1))
  {
    v7 = v5;
    v8 = vcnt_s8(*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 8));
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5;
      if (v5 >= *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1))
      {
        v10 = v5 % *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
      }
    }

    else
    {
      v10 = (*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1) - 1) & v5;
    }

    v11 = *(PhCommonPeopleNameAlias(void)::_peopleNameAlias + 8 * v10);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v7 == v13)
          {
            if (std::equal_to<std::string>::operator()[abi:nn200100](v12 + 2, a1))
            {
              return v12 + 5;
            }
          }

          else
          {
            if (v9 > 1)
            {
              if (v13 >= v6)
              {
                v13 %= v6;
              }
            }

            else
            {
              v13 &= v6 - 1;
            }

            if (v13 != v10)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  {
    peopleNameAlias(std::string const&)::sEmptyString = 0;
    *algn_1EBF61EC8 = 0;
    qword_1EBF61ED0 = 0;
  }

  if (peopleNameAlias(std::string const&)::onceToken != -1)
  {
    dispatch_once(&peopleNameAlias(std::string const&)::onceToken, &__block_literal_global_7209);
  }

  return &peopleNameAlias(std::string const&)::sEmptyString;
}

void ___ZL15peopleNameAliasRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke()
{
  if (SHIBYTE(qword_1EBF61ED0) < 0)
  {
    operator delete(peopleNameAlias(std::string const&)::sEmptyString);
  }

  peopleNameAlias(std::string const&)::sEmptyString = 0;
  *algn_1EBF61EC8 = 0;
  qword_1EBF61ED0 = 0;
}

void ___ZL23PhCommonPeopleNameAliasv_block_invoke()
{
  v116[3] = *MEMORY[0x1E69E9840];
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v47, "will", "william");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v48, "bill", "william");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[8],0>(v49, "billy", "william");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v50, "liam", "william");
  std::string::basic_string[abi:nn200100]<0>(v51, "jack");
  std::string::basic_string[abi:nn200100]<0>(v52, "john");
  std::string::basic_string[abi:nn200100]<0>(v53, "johnny");
  std::string::basic_string[abi:nn200100]<0>(v54, "john");
  std::string::basic_string[abi:nn200100]<0>(v55, "jim");
  std::string::basic_string[abi:nn200100]<0>(v56, "james");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(v57, "jimmy", "james");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(v58, "jamie", "james");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(v59, "rob", "robert");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(v60, "bob", "robert");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(v61, "bobby", "robert");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v62, "mike", "michael");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[8],0>(v63, "mikey", "michael");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v64, "rich", "richard");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v65, "rick", "richard");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[8],0>(v66, "ricky", "richard");
  std::string::basic_string[abi:nn200100]<0>(v67, "charlie");
  std::string::basic_string[abi:nn200100]<0>(v68, "charles");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[8],0>(v69, "chuck", "charles");
  std::string::basic_string[abi:nn200100]<0>(v70, "ed");
  std::string::basic_string[abi:nn200100]<0>(v71, "edward");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(v72, "eddie", "edward");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(v73, "ted", "edward");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(v74, "teddy", "edward");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(v75, "joe", "joseph");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[7],0>(v76, "joey", "joseph");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(v77, "tom", "thomas");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(v78, "tommy", "thomas");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(v79, "harry", "henry");
  std::string::basic_string[abi:nn200100]<0>(v80, "hank");
  std::string::basic_string[abi:nn200100]<0>(v81, "henry");
  std::string::basic_string[abi:nn200100]<0>(v82, "chris");
  std::string::basic_string[abi:nn200100]<0>(v83, "christopher");
  std::string::basic_string[abi:nn200100]<0>(v84, "topher");
  std::string::basic_string[abi:nn200100]<0>(v85, "christopher");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(v86, "dan", "daniel");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(v87, "danny", "daniel");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v88, "matt", "matthew");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[8],0>(v89, "matty", "matthew");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[7],0>(v90, "andy", "andrew");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[7],0>(v91, "drew", "andrew");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[10],0>(v92, "liz", "elizabeth");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[10],0>(v93, "lizzy", "elizabeth");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[10],0>(v94, "beth", "elizabeth");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[10],0>(v95, "eliza", "elizabeth");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[10],0>(v96, "ellie", "elizabeth");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[5],0>(v97, "molly");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[5],0>(v98, "polly");
  std::string::basic_string[abi:nn200100]<0>(v99, "may");
  std::string::basic_string[abi:nn200100]<0>(v100, "mary");
  std::string::basic_string[abi:nn200100]<0>(v101, "maggie");
  std::string::basic_string[abi:nn200100]<0>(v102, "margaret");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[9],0>(v103, "meg", "margaret");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[9],0>(v104, "peggy");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[9],0>(v105, "marge");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[10],0>(v106, "kate", "katherine");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[10],0>(v107, "katie", "katherine");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[10],0>(v108, "kathy", "katherine");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[10],0>(v109, "kat", "katherine");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(v110, "sally", "sarah");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(v111, "sadie", "sarah");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(v112, "sadie", "sarah");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(v113, "robby", "robert");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[9],0>(v114, "kim", "kimberly");
  std::string::basic_string[abi:nn200100]<0>(v115, "tim");
  std::string::basic_string[abi:nn200100]<0>(v116, "timothy");
  v0 = *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
  v1 = &unk_1EBF61000;
  if (!*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1))
  {
    goto LABEL_62;
  }

  v2 = 0;
  do
  {
    *(PhCommonPeopleNameAlias(void)::_peopleNameAlias + 8 * v2++) = 0;
  }

  while (v0 != v2);
  v3 = qword_1EBF61EF8;
  qword_1EBF61EF8 = 0;
  qword_1EBF61F00 = 0;
  if (!v3)
  {
LABEL_62:
    v4 = 0;
LABEL_63:
    v32 = *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 8);
    while (1)
    {
      v33 = SHIBYTE(v47[v4 + 2]);
      if (v33 >= 0)
      {
        v34 = &v47[v4];
      }

      else
      {
        v34 = v47[v4];
      }

      if (v33 >= 0)
      {
        v35 = HIBYTE(v47[v4 + 2]);
      }

      else
      {
        v35 = v47[v4 + 1];
      }

      v36 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v34, v35);
      v37 = v36;
      if (!*&v32)
      {
        goto LABEL_87;
      }

      v38 = vcnt_s8(v32);
      v38.i16[0] = vaddlv_u8(v38);
      v39 = v38.u32[0];
      if (v38.u32[0] > 1uLL)
      {
        v40 = v36;
        if (v36 >= *&v32)
        {
          v40 = v36 % *&v32;
        }
      }

      else
      {
        v40 = (*&v32 - 1) & v36;
      }

      v41 = *(v1[477] + 8 * v40);
      if (!v41 || (v42 = *v41) == 0)
      {
LABEL_87:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        operator new();
      }

      while (1)
      {
        v43 = v42[1];
        if (v43 == v37)
        {
          break;
        }

        if (v39 > 1)
        {
          if (v43 >= *&v32)
          {
            v43 %= *&v32;
          }
        }

        else
        {
          v43 &= *&v32 - 1;
        }

        if (v43 != v40)
        {
          goto LABEL_87;
        }

LABEL_86:
        v42 = *v42;
        if (!v42)
        {
          goto LABEL_87;
        }
      }

      if (!std::equal_to<std::string>::operator()[abi:nn200100](v42 + 2, &v47[v4]))
      {
        goto LABEL_86;
      }

      v1 = &unk_1EBF61000;
      v4 += 6;
      if (v4 == 354)
      {
        goto LABEL_55;
      }
    }
  }

  v4 = 0;
  do
  {
    std::string::operator=((v3 + 16), &v47[v4]);
    std::string::operator=((v3 + 40), &v47[v4 + 3]);
    v5 = *v3;
    v6 = *(v3 + 39);
    if (v6 >= 0)
    {
      v7 = (v3 + 16);
    }

    else
    {
      v7 = *(v3 + 16);
    }

    if (v6 >= 0)
    {
      v8 = *(v3 + 39);
    }

    else
    {
      v8 = *(v3 + 24);
    }

    v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
    v10 = v9;
    *(v3 + 8) = v9;
    v11 = *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
    if (*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1))
    {
      v12 = vcnt_s8(*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 8));
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.u32[0];
      if (v12.u32[0] > 1uLL)
      {
        v14 = v9;
        v15 = &unk_1EBF61000;
        if (*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1) <= v9)
        {
          v14 = v9 % *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
        }
      }

      else
      {
        v14 = (*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1) - 1) & v9;
        v15 = &unk_1EBF61000;
      }

      v16 = *(v15[477] + 8 * v14);
      if (v16)
      {
        v17 = *v16;
        if (*v16)
        {
          do
          {
            v18 = v17[1];
            if (v18 == v10)
            {
              if (std::equal_to<std::string>::operator()[abi:nn200100](v17 + 2, (v3 + 16)))
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v13 > 1)
              {
                if (v18 >= v11)
                {
                  v18 %= v11;
                }
              }

              else
              {
                v18 &= v11 - 1;
              }

              if (v18 != v14)
              {
                break;
              }
            }

            v17 = *v17;
          }

          while (v17);
        }
      }
    }

    v19 = (qword_1EBF61F00 + 1);
    if (!v11 || (*&dword_1EBF61F08 * v11) < v19)
    {
      v20 = (v11 & (v11 - 1)) != 0;
      if (v11 < 3)
      {
        v20 = 1;
      }

      v21 = v20 | (2 * v11);
      v22 = vcvtps_u32_f32(v19 / *&dword_1EBF61F08);
      if (v21 <= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(v23);
      v11 = *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
      v10 = *(v3 + 8);
    }

    v24 = vcnt_s8(v11);
    v24.i16[0] = vaddlv_u8(v24);
    if (v24.u32[0] > 1uLL)
    {
      v25 = &unk_1EBF61000;
      if (v10 >= v11)
      {
        v10 %= v11;
      }
    }

    else
    {
      v10 &= v11 - 1;
      v25 = &unk_1EBF61000;
    }

    v26 = v25[477];
    v27 = *(v26 + 8 * v10);
    if (v27)
    {
      *v3 = *v27;
LABEL_48:
      *v27 = v3;
      goto LABEL_49;
    }

    *v3 = qword_1EBF61EF8;
    qword_1EBF61EF8 = v3;
    *(v26 + 8 * v10) = &qword_1EBF61EF8;
    if (*v3)
    {
      v28 = *(*v3 + 8);
      if (v24.u32[0] > 1uLL)
      {
        if (v28 >= v11)
        {
          v28 %= v11;
        }
      }

      else
      {
        v28 &= v11 - 1;
      }

      v27 = (v25[477] + 8 * v28);
      goto LABEL_48;
    }

LABEL_49:
    ++qword_1EBF61F00;
LABEL_50:
    v4 += 6;
    if (!v5)
    {
      break;
    }

    v3 = v5;
  }

  while (v4 != 354);
  if (v5)
  {
    do
    {
      v29 = *v5;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>((v5 + 2));
      operator delete(v5);
      v5 = v29;
    }

    while (v29);
  }

  v1 = &unk_1EBF61000;
  if (v4 != 354)
  {
    goto LABEL_63;
  }

LABEL_55:
  v30 = 354;
  do
  {
    v31 = &v47[v30];
    if (SHIBYTE(v47[v30 - 1]) < 0)
    {
      operator delete(*(v31 - 3));
    }

    if (*(v31 - 25) < 0)
    {
      operator delete(*(v31 - 6));
    }

    v30 -= 6;
  }

  while (v30 * 8);
}

void sub_1C2A233BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (SLOBYTE(STACK[0xB17]) < 0)
  {
    operator delete(STACK[0xB00]);
  }

  do
  {
    v13 -= 48;
    std::pair<std::string const,std::string>::~pair(v13);
  }

  while (v13 != &a13);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_1C2A23554(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[8],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_1C2A235A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_1C2A235FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_1C2A23650(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_1C2A236A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[7],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_1C2A236F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[10],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_1C2A2374C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[10],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_1C2A237A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[10],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_1C2A237F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[5],0>(void *a1, char *a2)
{
  v3 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v3 + 3, "mary");
  return a1;
}

void sub_1C2A23848(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[9],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_1C2A2389C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[9],0>(void *a1, char *a2)
{
  v3 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v3 + 3, "margaret");
  return a1;
}

void sub_1C2A238F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v2 = *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
  if (prime > *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (prime < *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1))
  {
    v3 = vcvtps_u32_f32(qword_1EBF61F00 / *&dword_1EBF61F08);
    if (*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1) < 3uLL || (v4 = vcnt_s8(*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = PhCommonPeopleNameAlias(void)::_peopleNameAlias;
      *&PhCommonPeopleNameAlias(void)::_peopleNameAlias = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1) = 0;
    }
  }
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:nn200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void PhPopulateFiltersFromQuery(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v26 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v16 = *__error();
  if (a6)
  {
    v17 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:
      *buf = 138412546;
      v23 = a7;
      v24 = 2112;
      v25 = redactString([a1 string], a8);
      _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "%@ Processing attributed query: %@", buf, 0x16u);
    }
  }

  *__error() = v16;
  v18 = [a1 length];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___ZL26PhPopulateFiltersFromQueryPK20__CFAttributedStringPP10query_nodeS4_P14NSMutableArrayIP7NSValueES9_bP8NSStringb_block_invoke;
  v20[3] = &unk_1E81949B0;
  v20[4] = a4;
  v20[5] = a5;
  v21 = a6;
  v20[6] = a7;
  v20[7] = a2;
  v20[8] = a3;
  [a1 enumerateAttributesInRange:0 options:v18 usingBlock:{0, v20}];
  objc_autoreleasePoolPop(context);
}

query_node *PhRankingTreeFromLLMParse(const __CFDictionary *a1, void *a2, NSCharacterSet *a3, uint64_t a4)
{
  v673 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  v7 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a4;
    _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "%@ Processing LLM QU output to create ranking tree", buf, 0xCu);
  }

  *__error() = v6;
  TokensInfoFromQueryUnderstanding = getTokensInfoFromQueryUnderstanding(a1);
  Value = CFDictionaryGetValue(a1, @"attributedParse");
  range = [MEMORY[0x1E695DF70] array];
  v594 = [MEMORY[0x1E695DF70] array];
  v9 = [(NSAttributedString *)Value length];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZL29PhPopulateDateFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueE_block_invoke;
  v671 = &unk_1E8199718;
  *&v672 = range;
  *(&v672 + 1) = v594;
  [(NSAttributedString *)Value enumerateAttributesInRange:0 options:v9 usingBlock:0, buf];
  if ([v594 count])
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v594 count];
      *buf = 138412546;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = v12;
      _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "%@ Populated %lu date filters from U2 parse", buf, 0x16u);
    }

    *__error() = v10;
  }

  if (![range count])
  {
    if (CFDictionaryContainsKey(a1, @"attributedParses"))
    {
      v106 = CFDictionaryGetValue(a1, @"attributedParses");
      if ([v106 count] >= 2)
      {
        v107 = [v106 objectAtIndexedSubscript:1];
        v108 = [v107 length];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL29PhPopulateDateFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueE_block_invoke;
        v671 = &unk_1E8199718;
        *&v672 = range;
        *(&v672 + 1) = v594;
        [v107 enumerateAttributesInRange:0 options:v108 usingBlock:{0, buf}];
        if ([v594 count])
        {
          v109 = *__error();
          v110 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
          {
            v111 = [v594 count];
            *buf = 138412546;
            *&buf[4] = a4;
            *&buf[12] = 2048;
            *&buf[14] = v111;
            _os_log_impl(&dword_1C278D000, v110, OS_LOG_TYPE_DEFAULT, "%@ Populated %lu date filters from QP parse", buf, 0x16u);
          }

          *__error() = v109;
        }
      }
    }
  }

  v590 = [MEMORY[0x1E695DFA8] set];
  v559 = [MEMORY[0x1E695DF70] array];
  v636 = [MEMORY[0x1E695DF70] array];
  v635 = [MEMORY[0x1E695DF70] array];
  v634 = [MEMORY[0x1E695DF70] array];
  v633 = [MEMORY[0x1E695DF70] array];
  v632 = [MEMORY[0x1E695DFA8] set];
  v631 = [MEMORY[0x1E695DF70] array];
  v630 = [MEMORY[0x1E695DF70] array];
  v629 = [MEMORY[0x1E695DF70] array];
  v628 = [MEMORY[0x1E695DF70] array];
  v627 = [MEMORY[0x1E695DF70] array];
  v626 = [MEMORY[0x1E695DFA8] set];
  v625 = [MEMORY[0x1E695DF70] array];
  v624 = [MEMORY[0x1E695DF70] array];
  v623 = [MEMORY[0x1E695DF70] array];
  v622 = [MEMORY[0x1E695DF70] array];
  v621 = [MEMORY[0x1E695DF70] array];
  v620 = [MEMORY[0x1E695DF70] array];
  v619 = [MEMORY[0x1E695DF70] array];
  v618 = [MEMORY[0x1E695DF70] array];
  v617 = [MEMORY[0x1E695DF70] array];
  v616 = [MEMORY[0x1E695DF70] array];
  v615 = [MEMORY[0x1E695DF70] array];
  v614 = [MEMORY[0x1E695DF70] array];
  v613 = [MEMORY[0x1E695DF70] array];
  v612 = [MEMORY[0x1E695DF70] array];
  v611 = [MEMORY[0x1E695DF70] array];
  Count = CFArrayGetCount(TokensInfoFromQueryUnderstanding);
  if (Count < 1)
  {
    v581 = 0;
    v548 = 0;
    goto LABEL_208;
  }

  v581 = 0;
  v577 = 0;
  v567 = 0;
  v572 = 0;
  v13 = 0;
  v547 = TokensInfoFromQueryUnderstanding;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(TokensInfoFromQueryUnderstanding, v13);
    if (isValidTokenInfo(ValueAtIndex))
    {
      TopTokenIDFromTokenInfo = getTopTokenIDFromTokenInfo(ValueAtIndex);
      v16 = TopTokenIDFromTokenInfo;
      __p[1] = 0;
      __p[0] = 0;
      v17 = "Unknown";
      *&v660 = 0;
      if (TopTokenIDFromTokenInfo <= 0xD2)
      {
        v17 = off_1E8196D10[TopTokenIDFromTokenInfo];
      }

      std::string::basic_string[abi:nn200100]<0>(__p, v17);
      TokenRangeFromTokenInfo = getTokenRangeFromTokenInfo(ValueAtIndex);
      v20 = v19;
      if (TokenRangeFromTokenInfo == 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = *__error();
        v22 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = SBYTE7(v660);
          v24 = __p[0];
          v674.location = 0x7FFFFFFFFFFFFFFFLL;
          v674.length = v20;
          v25 = NSStringFromRange(v674);
          *buf = 138413058;
          v26 = __p;
          if (v23 < 0)
          {
            v26 = v24;
          }

          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v26;
          *&buf[22] = 2048;
          v671 = v13;
          LOWORD(v672) = 2112;
          *(&v672 + 2) = v25;
          _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "%@[%s] Skipping token: %lu (ERROR: invalid range: %@)", buf, 0x2Au);
        }

        *__error() = v21;
        goto LABEL_72;
      }

      if ([a2 count])
      {
        v29 = 0;
        while (1)
        {
          v704.location = [objc_msgSend(a2 objectAtIndexedSubscript:{v29), "rangeValue"}];
          v704.length = v30;
          v675.location = TokenRangeFromTokenInfo;
          v675.length = v20;
          if (NSIntersectionRange(v675, v704).length)
          {
            break;
          }

          if (++v29 >= [a2 count])
          {
            goto LABEL_26;
          }
        }

        v34 = *__error();
        v35 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = __p;
          if (SBYTE7(v660) < 0)
          {
            v36 = __p[0];
          }

          *buf = 138412802;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v36;
          *&buf[22] = 2048;
          v671 = v13;
          _os_log_impl(&dword_1C278D000, v35, OS_LOG_TYPE_DEFAULT, "%@[%s] Skipping token: %lu (Reason: It is a suggestion token)", buf, 0x20u);
        }

        *__error() = v34;
        goto LABEL_73;
      }

LABEL_26:
      if ([v594 count])
      {
        v31 = 0;
        while (1)
        {
          v705.location = [objc_msgSend(v594 objectAtIndexedSubscript:{v31), "rangeValue"}];
          v705.length = v32;
          v676.location = TokenRangeFromTokenInfo;
          v676.length = v20;
          if (NSIntersectionRange(v676, v705).length)
          {
            break;
          }

          if (++v31 >= [v594 count])
          {
            goto LABEL_30;
          }
        }

        v37 = *__error();
        v38 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = __p;
          if (SBYTE7(v660) < 0)
          {
            v39 = __p[0];
          }

          *buf = 138413058;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v39;
          *&buf[22] = 2048;
          v671 = v13;
          LOWORD(v672) = 2048;
          *(&v672 + 2) = v31;
          _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu has a date parse (Date parse idx: %lu)", buf, 0x2Au);
        }

        *__error() = v37;
        [v559 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", TokenRangeFromTokenInfo, v20)}];
        v40 = *__error();
        v41 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = SBYTE7(v660);
          v43 = __p[0];
          v677.location = TokenRangeFromTokenInfo;
          v677.length = v20;
          v44 = NSStringFromRange(v677);
          *buf = 138413058;
          v45 = __p;
          if (v42 < 0)
          {
            v45 = v43;
          }

          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v45;
          *&buf[22] = 2048;
          v671 = v13;
          LOWORD(v672) = 2112;
          *(&v672 + 2) = v44;
          _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is a new time span (added range: %@)", buf, 0x2Au);
        }

        *__error() = v40;
        goto LABEL_73;
      }

LABEL_30:
      if (v16 == -1)
      {
        v46 = *__error();
        v47 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = __p;
          if (SBYTE7(v660) < 0)
          {
            v48 = __p[0];
          }

          *buf = 138413058;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v48;
          *&buf[22] = 2048;
          v671 = v13;
          LOWORD(v672) = 1024;
          *(&v672 + 2) = 64;
          _os_log_impl(&dword_1C278D000, v47, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is using default label: %d (ERROR: no LLM labels found)", buf, 0x26u);
        }

        *__error() = v46;
        v33 = 64;
      }

      else if ((v16 & 0xFFFFFFFE) == 6)
      {
        v33 = 5;
      }

      else
      {
        v33 = v16;
      }

      v49 = v33;
      v577 |= v33 == 74;
      v567 |= v33 == 105;
      v572 |= v33 == 1;
      if (isLLMPhotosIgnoredArgId(v33))
      {
        TokensInfoFromQueryUnderstanding = v547;
        v50 = *__error();
        v51 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = __p;
          if (SBYTE7(v660) < 0)
          {
            v52 = __p[0];
          }

          *buf = 138412802;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v52;
          *&buf[22] = 2048;
          v671 = v13;
          _os_log_impl(&dword_1C278D000, v51, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is skipped (Reason: It's a photos optional token)", buf, 0x20u);
        }

LABEL_71:
        *__error() = v50;
LABEL_72:
        v581 = 1;
        goto LABEL_73;
      }

      TokensInfoFromQueryUnderstanding = v547;
      if (isLLMInferredAppEntityTypeArgId(v49))
      {
        v50 = *__error();
        v53 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = __p;
          if (SBYTE7(v660) < 0)
          {
            v54 = __p[0];
          }

          *buf = 138412802;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v54;
          *&buf[22] = 2048;
          v671 = v13;
          _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's an inferred app entity type token)", buf, 0x20u);
        }

        goto LABEL_71;
      }

      TokensInfoFromQueryUnderstanding = v547;
      if (isIgnoredAppEntityStatusArgId(v49) || (TokensInfoFromQueryUnderstanding = v547, isBundleSpecificFilterAppEntityStatusArgId(v16)))
      {
        v50 = *__error();
        v55 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = __p;
          if (SBYTE7(v660) < 0)
          {
            v56 = __p[0];
          }

          *buf = 138412802;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v56;
          *&buf[22] = 2048;
          v671 = v13;
          _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's an ignored or bundle specific app entity status token)", buf, 0x20u);
        }

        goto LABEL_71;
      }

      TokensInfoFromQueryUnderstanding = v547;
      if (isLLMSourceTypeArgId(v49))
      {
        v50 = *__error();
        v57 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = __p;
          if (SBYTE7(v660) < 0)
          {
            v58 = __p[0];
          }

          *buf = 138412802;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v58;
          *&buf[22] = 2048;
          v671 = v13;
          _os_log_impl(&dword_1C278D000, v57, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's a source entity type token)", buf, 0x20u);
        }

        goto LABEL_71;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3052000000;
      v671 = __Block_byref_object_copy__7499;
      *&v672 = __Block_byref_object_dispose__7500;
      *(&v672 + 1) = 0;
      v59 = v49;
      if (v49 == 70)
      {
        v610[0] = MEMORY[0x1E69E9820];
        v610[1] = 3221225472;
        v610[2] = ___ZL25PhRankingTreeFromLLMParsePK14__CFDictionaryP7NSArrayIP7NSValueEP14NSCharacterSetP8NSString_block_invoke;
        v610[3] = &unk_1E8197768;
        v610[4] = buf;
        [(NSAttributedString *)Value enumerateAttributesInRange:TokenRangeFromTokenInfo options:v20 usingBlock:0, v610];
      }

      else if (isLLMPhotosAppEntityTypeArgId(v49))
      {
        v703.location = TokenRangeFromTokenInfo;
        v703.length = v20;
        LLMTokenDescription = getLLMTokenDescription(v49, v703, Value, 0);
        *(*&buf[8] + 40) = LLMTokenDescription;
      }

      RawTextFromTokenInfo = getRawTextFromTokenInfo(ValueAtIndex);
      TokenFromTokenInfo = getTokenFromTokenInfo(ValueAtIndex);
      RawTextTokensFromTokenInfo = getRawTextTokensFromTokenInfo(ValueAtIndex);
      if (_containsOnlyCharsInCharset(TokenFromTokenInfo, a3))
      {
        v63 = *__error();
        v64 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = __p;
          if (SBYTE7(v660) < 0)
          {
            v65 = __p[0];
          }

          *v663 = 138412802;
          *&v663[4] = a4;
          v664 = 2080;
          v665 = v65;
          v666 = 2048;
          v667 = v13;
          _os_log_impl(&dword_1C278D000, v64, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is skipped (Reason: It has only trimmable chars)", v663, 0x20u);
        }

LABEL_106:
        *__error() = v63;
        v581 = 1;
LABEL_107:
        _Block_object_dispose(buf, 8);
LABEL_73:
        if (SBYTE7(v660) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_75;
      }

      v66 = [(NSString *)TokenFromTokenInfo UTF8String];
      if (!v66)
      {
        v63 = *__error();
        v70 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = __p;
          if (SBYTE7(v660) < 0)
          {
            v71 = __p[0];
          }

          *v663 = 138412802;
          *&v663[4] = a4;
          v664 = 2080;
          v665 = v71;
          v666 = 2048;
          v667 = v13;
          _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is skipped (ERROR: UTF8 encoding of token failed)", v663, 0x20u);
        }

        goto LABEL_106;
      }

      std::string::basic_string[abi:nn200100]<0>(v663, v66);
      v67 = isOptionalWord(v663);
      if (SHIBYTE(v666) < 0)
      {
        operator delete(*v663);
      }

      if (v67)
      {
        v63 = *__error();
        v68 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = __p;
          if (SBYTE7(v660) < 0)
          {
            v69 = __p[0];
          }

          *v663 = 138412802;
          *&v663[4] = a4;
          v664 = 2080;
          v665 = v69;
          v666 = 2048;
          v667 = v13;
          _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is skipped (Reason: It is optional as per optional dictionary)", v663, 0x20u);
        }

        goto LABEL_106;
      }

      if (v577)
      {
        std::string::basic_string[abi:nn200100]<0>(v663, v66);
        v72 = isOptionalSearchTerm(v59, v663, v547, v13, 0, 1, 0);
        if (SHIBYTE(v666) < 0)
        {
          operator delete(*v663);
        }

        if (v72)
        {
          v63 = *__error();
          v73 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = __p;
            if (SBYTE7(v660) < 0)
            {
              v74 = __p[0];
            }

            *v663 = 138412802;
            *&v663[4] = a4;
            v664 = 2080;
            v665 = v74;
            v666 = 2048;
            v667 = v13;
            _os_log_impl(&dword_1C278D000, v73, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is skipped (Reason: It's a trailing optional search token)", v663, 0x20u);
          }

          goto LABEL_106;
        }
      }

      GroundedNamesFromTokenInfo = getGroundedNamesFromTokenInfo(ValueAtIndex);
      v520 = RawTextFromTokenInfo;
      obj = getGroundedNamesTokenFromTokenInfo(ValueAtIndex);
      v75 = [MEMORY[0x1E695DF70] array];
      v516 = v59;
      if (((v59 != 104) & ~isLLMPersonArgId(v59)) != 0)
      {
        goto LABEL_143;
      }

      if (![obj count])
      {
        std::string::basic_string[abi:nn200100]<0>(v663, v66);
        v80 = peopleNameAlias(v663);
        if (SHIBYTE(v666) < 0)
        {
          operator delete(*v663);
        }

        if (*(v80 + 23) < 0)
        {
          if (!v80[1])
          {
            goto LABEL_143;
          }

          v80 = *v80;
LABEL_142:
          [v75 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v80)}];
          goto LABEL_143;
        }

        if (*(v80 + 23))
        {
          goto LABEL_142;
        }

LABEL_143:
        v81 = isLLMPhotosEventArgId(v516);
        if (v81)
        {
          v82 = 14;
        }

        else
        {
          v82 = v516;
        }

        v541 = v82;
        v83 = &v624;
        if (v81)
        {
          v83 = &v617;
        }

        v517 = v83;
        v84 = &v623;
        if (v81)
        {
          v84 = &v616;
        }

        v514 = v84;
        v85 = &v618;
        if (v81)
        {
          v85 = &v611;
        }

        v500 = v85;
        if (v81)
        {
          v86 = &v613;
        }

        else
        {
          v86 = &v620;
        }

        v87 = &v619;
        if (v81)
        {
          v87 = &v612;
        }

        v507 = v86;
        v509 = v87;
        if (v81)
        {
          v88 = &v615;
        }

        else
        {
          v88 = &v622;
        }

        v89 = &v621;
        if (v81)
        {
          v89 = &v614;
        }

        v510 = v88;
        v512 = v89;
        if (v81)
        {
          v90 = &v630;
        }

        else
        {
          v90 = &v636;
        }

        if (v81)
        {
          v91 = &v629;
        }

        else
        {
          v91 = &v635;
        }

        v92 = &v633;
        if (v81)
        {
          v92 = &v627;
        }

        __s = v92;
        if (v81)
        {
          v93 = &v626;
        }

        else
        {
          v93 = &v632;
        }

        v94 = &v631;
        if (v81)
        {
          v94 = &v625;
        }

        v501 = v94;
        v95 = &v634;
        if (v81)
        {
          v95 = &v628;
        }

        v502 = v95;
        if (([*v93 containsObject:v520] & 1) == 0)
        {
          [*v90 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", TokenRangeFromTokenInfo, v20)}];
          [*v91 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v541)}];
          [*__s addObject:v520];
          [*v93 addObject:v520];
          if (*(*&buf[8] + 40))
          {
            v96 = *(*&buf[8] + 40);
          }

          else
          {
            v96 = &stru_1F4284FD0;
          }

          [*v502 addObject:v96];
          v97 = [(__CFDictionary *)GroundedNamesFromTokenInfo count];
          v98 = *v501;
          if (v97)
          {
            [v98 addObject:GroundedNamesFromTokenInfo];
          }

          else
          {
            [v98 addObject:MEMORY[0x1E695E0F0]];
          }
        }

        [*v517 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", TokenRangeFromTokenInfo, v20)}];
        [*v514 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v541)}];
        v99 = [obj count];
        v100 = *v512;
        if (v99)
        {
          [v100 addObject:obj];
        }

        else
        {
          [v100 addObject:MEMORY[0x1E695E0F0]];
        }

        if (*(*&buf[8] + 40))
        {
          v101 = *(*&buf[8] + 40);
        }

        else
        {
          v101 = &stru_1F4284FD0;
        }

        [*v510 addObject:v101];
        v102 = [v75 count];
        v103 = *v509;
        if (v102)
        {
          [v103 addObject:v75];
        }

        else
        {
          [v103 addObject:MEMORY[0x1E695E0F0]];
        }

        if (v541 == 8)
        {
          [*v500 addObjectsFromArray:RawTextTokensFromTokenInfo];
        }

        LemmaFromTokenInfo = getLemmaFromTokenInfo(ValueAtIndex);
        v105 = LemmaFromTokenInfo;
        if (!LemmaFromTokenInfo || ![(__CFDictionary *)LemmaFromTokenInfo length])
        {
          v105 = &stru_1F4284FD0;
        }

        [*v507 addObject:v105];
        goto LABEL_107;
      }

      v608 = 0u;
      v609 = 0u;
      v606 = 0u;
      v607 = 0u;
      v76 = [obj countByEnumeratingWithState:&v606 objects:v652 count:16];
      if (!v76)
      {
        goto LABEL_143;
      }

      v540 = *v607;
LABEL_121:
      v77 = v76;
      v78 = 0;
      while (1)
      {
        if (*v607 != v540)
        {
          objc_enumerationMutation(obj);
        }

        std::string::basic_string[abi:nn200100]<0>(v663, [objc_msgSend(objc_msgSend(*(*(&v606 + 1) + 8 * v78) objectAtIndexedSubscript:{0), "lowercaseString"), "UTF8String"}]);
        v79 = peopleNameAlias(v663);
        if (SHIBYTE(v666) < 0)
        {
          operator delete(*v663);
        }

        if ((*(v79 + 23) & 0x80000000) == 0)
        {
          break;
        }

        if (v79[1])
        {
          v79 = *v79;
LABEL_131:
          [v75 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v79)}];
        }

LABEL_132:
        if (v77 == ++v78)
        {
          v76 = [obj countByEnumeratingWithState:&v606 objects:v652 count:16];
          if (!v76)
          {
            goto LABEL_143;
          }

          goto LABEL_121;
        }
      }

      if (!*(v79 + 23))
      {
        goto LABEL_132;
      }

      goto LABEL_131;
    }

    v27 = *__error();
    v28 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "%@ Skipping token: %lu (ERROR: token info is missing essential keys)", buf, 0x16u);
    }

    *__error() = v27;
    v581 = 1;
LABEL_75:
    ++v13;
  }

  while (v13 != Count);
  v548 = v577 | v567;
  if (v572)
  {
    v586 = v636;
    v555 = v635;
    v543 = v634;
    v581 = 1;
    v531 = v631;
    obja = v633;
    goto LABEL_211;
  }

LABEL_208:
  v112 = *__error();
  v113 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a4;
    _os_log_impl(&dword_1C278D000, v113, OS_LOG_TYPE_DEFAULT, "%@ No search terms found, adding event tokens to ranking tree", buf, 0xCu);
  }

  *__error() = v112;
  [v624 addObjectsFromArray:v617];
  [(query_node *)v623 addObjectsFromArray:v616];
  [v622 addObjectsFromArray:v615];
  [v621 addObjectsFromArray:v614];
  [(NSAttributedString *)v620 addObjectsFromArray:v613];
  [v619 addObjectsFromArray:v612];
  v586 = v636;
  [v636 addObjectsFromArray:v630];
  v555 = v635;
  [v635 addObjectsFromArray:v629];
  v543 = v634;
  [v634 addObjectsFromArray:v628];
  obja = v633;
  [v633 addObjectsFromArray:v627];
  [v632 unionSet:v626];
  v531 = v631;
  [v631 addObjectsFromArray:v625];
LABEL_211:
  v542 = [(NSAttributedString *)Value string];
  if (![(NSString *)v542 length])
  {
    v143 = *__error();
    v144 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a4;
      _os_log_impl(&dword_1C278D000, v144, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping query (Reason: empty query)", buf, 0xCu);
    }

    goto LABEL_240;
  }

  if (![v586 count] && !objc_msgSend(v590, "count"))
  {
    v143 = *__error();
    v146 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a4;
      _os_log_impl(&dword_1C278D000, v146, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping query (Reason: no spans and no time parses in the query)", buf, 0xCu);
    }

LABEL_240:
    v145 = __error();
    v116 = 0;
LABEL_351:
    *v145 = v143;
    goto LABEL_352;
  }

  v114 = [v586 count];
  if (v114 == [v555 count])
  {
    v115 = [v586 count];
    if (v115 == [v543 count])
    {
      v564 = [(NSString *)v542 length];
      LODWORD(v649) = 0;
      if ([v586 count] && objc_msgSend(v559, "count"))
      {
        v116 = 0;
        v117 = 0;
        while (1)
        {
          v118 = [objc_msgSend(v559 objectAtIndexedSubscript:{v117), "rangeValue"}];
          v120 = v118;
          v121 = v119;
          if (v118 == 0x7FFFFFFFFFFFFFFFLL || v118 + v119 > v564)
          {
            v131 = *__error();
            v132 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
            {
              v678.location = v120;
              v678.length = v121;
              v133 = NSStringFromRange(v678);
              *buf = 138412802;
              *&buf[4] = a4;
              *&buf[12] = 2048;
              *&buf[14] = v117;
              *&buf[22] = 2112;
              v671 = v133;
              _os_log_impl(&dword_1C278D000, v132, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping time span: %lu (ERROR: out of bounds range %@)", buf, 0x20u);
            }

            goto LABEL_232;
          }

          v122 = [(NSString *)v542 substringWithRange:v118, v119];
          if (![(NSString *)v122 length])
          {
            break;
          }

          v123 = [(NSString *)v122 UTF8String];
          if (!v123)
          {
            v131 = *__error();
            v136 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
            {
              v680.location = v120;
              v680.length = v121;
              v137 = NSStringFromRange(v680);
              *buf = 138412802;
              *&buf[4] = a4;
              *&buf[12] = 2048;
              *&buf[14] = v117;
              *&buf[22] = 2112;
              v671 = v137;
              _os_log_impl(&dword_1C278D000, v136, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping time span: %lu (ERROR: UTF8 encoding failed for range %@)", buf, 0x20u);
            }

LABEL_232:
            *__error() = v131;
            goto LABEL_233;
          }

          QueryNode = createQueryNode("kMDItemPhotosHolidays", v123, 48, 1, 0, 10.0, 0.0);
          v125 = createQueryNode("kMDItemPhotosSeasons", v123, 48, 1, 0, 10.0, 0.0);
          v126 = createQueryNode("kMDItemPhotosContentCreationDateMonth", v123, 48, 1, 0, 10.0, 0.0);
          v127 = createQueryNode("kMDItemPhotosContentCreationDateYear", v123, 48, 1, 0, 10.0, 0.0);
          LODWORD(v649) = v649 + 4;
          v128 = makeOrNode(QueryNode, v125);
          v129 = makeOrNode(v126, v127);
          v130 = makeOrNode(v128, v129);
          v116 = makeOrNode(v116, v130);
LABEL_233:
          if (++v117 >= [v559 count])
          {
            goto LABEL_245;
          }
        }

        v131 = *__error();
        v134 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
        {
          v679.location = v120;
          v679.length = v121;
          v135 = NSStringFromRange(v679);
          *buf = 138412802;
          *&buf[4] = a4;
          *&buf[12] = 2048;
          *&buf[14] = v117;
          *&buf[22] = 2112;
          v671 = v135;
          _os_log_impl(&dword_1C278D000, v134, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping time span: %lu (ERROR: Empty sub-query for range %@)", buf, 0x20u);
        }

        goto LABEL_232;
      }

      v116 = 0;
LABEL_245:
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      *__p = 0u;
      v147 = [v590 countByEnumeratingWithState:__p objects:buf count:16];
      if (v147)
      {
        v148 = *v660;
        do
        {
          for (i = 0; i != v147; ++i)
          {
            if (*v660 != v148)
            {
              objc_enumerationMutation(v590);
            }

            v150 = *(__p[1] + i);
            v151 = [range objectAtIndexedSubscript:{objc_msgSend(v150, "unsignedIntValue")}];
            if ([v151 length])
            {
              v152 = [v151 UTF8String];
              if (v152)
              {
                v153 = PhRankingTreeFromStr(v152, 10.0, &v649);
                v116 = makeOrNode(v116, v153);
                continue;
              }

              v154 = *__error();
              v157 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
              {
                v158 = [v150 unsignedIntValue];
                *v663 = 138412546;
                *&v663[4] = a4;
                v664 = 1024;
                LODWORD(v665) = v158;
                _os_log_impl(&dword_1C278D000, v157, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping time parse: %u (ERROR: UTF8 encoding failed)", v663, 0x12u);
              }
            }

            else
            {
              v154 = *__error();
              v155 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
              {
                v156 = [v150 unsignedIntValue];
                *v663 = 138412546;
                *&v663[4] = a4;
                v664 = 1024;
                LODWORD(v665) = v156;
                _os_log_impl(&dword_1C278D000, v155, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping time parse: %u (ERROR: its zero length)", v663, 0x12u);
              }
            }

            *__error() = v154;
          }

          v147 = [v590 countByEnumeratingWithState:__p objects:buf count:16];
        }

        while (v147);
      }

      if ([v586 count] && (objc_msgSend(v586, "count") != 1 || v581 & 1 | (objc_msgSend(v590, "count") != 0)))
      {
        v159 = v116 == 0;
        {
          PhSpanMatchLLMRankingAttribs(void)::_phSpanMatchAttribs = 0u;
          unk_1EBF61FD8 = 0u;
          dword_1EBF61FE8 = 1065353216;
        }

        if (PhSpanMatchLLMRankingAttribs(void)::onceToken[0] != -1)
        {
          dispatch_once(PhSpanMatchLLMRankingAttribs(void)::onceToken, &__block_literal_global_155);
        }

        if ([v586 count])
        {
          for (j = 0; j < [v586 count]; ++j)
          {
            v161 = [objc_msgSend(v586 objectAtIndexedSubscript:{j), "rangeValue"}];
            rangea = v162;
            v163 = v161;
            if (v161 == 0x7FFFFFFFFFFFFFFFLL || v161 + v162 > v564)
            {
              v175 = *__error();
              v176 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
              {
                v682.location = v163;
                v682.length = rangea;
                v177 = NSStringFromRange(v682);
                *v668 = 138412802;
                *&v668[4] = a4;
                *&v668[12] = 2048;
                *&v668[14] = j;
                *&v668[22] = 2112;
                *&v668[24] = v177;
                _os_log_impl(&dword_1C278D000, v176, OS_LOG_TYPE_DEFAULT, "%@  {Span Match} Skipping span: %lu, range: %@ (ERROR: range is out of bounds)", v668, 0x20u);
              }
            }

            else
            {
              v578 = [objc_msgSend(obja objectAtIndexedSubscript:{j), "UTF8String"}];
              if (v578)
              {
                v582 = [objc_msgSend(v555 objectAtIndexedSubscript:{j), "intValue"}];
                v641[1] = 0;
                v641[0] = 0;
                v164 = "Unknown";
                *&v642 = 0;
                if (v582 <= 0xD2)
                {
                  v164 = off_1E8196D10[v582];
                }

                std::string::basic_string[abi:nn200100]<0>(v641, v164);
                v165 = [v543 objectAtIndexedSubscript:j];
                v595 = j;
                v166 = [v531 objectAtIndexedSubscript:j];
                v167 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(PhSpanMatchLLMRankingAttribs(void)::_phSpanMatchAttribs, *(&PhSpanMatchLLMRankingAttribs(void)::_phSpanMatchAttribs + 1), v582);
                v168 = *__error();
                v169 = _SILogForLogForCategory(20);
                v568 = v116;
                if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
                {
                  v170 = SBYTE7(v642);
                  v171 = v641[0];
                  v681.location = v163;
                  v681.length = rangea;
                  v172 = NSStringFromRange(v681);
                  *v668 = 138413314;
                  v173 = v641;
                  if (v170 < 0)
                  {
                    v173 = v171;
                  }

                  *&v668[4] = a4;
                  *&v668[12] = 2080;
                  *&v668[14] = v173;
                  *&v668[22] = 2048;
                  *&v668[24] = v595;
                  LOWORD(v669[0]) = 2112;
                  *(v669 + 2) = v165;
                  WORD5(v669[0]) = 2112;
                  *(v669 + 12) = v172;
                  _os_log_impl(&dword_1C278D000, v169, OS_LOG_TYPE_DEFAULT, "%@[%s] {Span Match} Adding span: %lu, desc: %@, range:%@", v668, 0x34u);
                  v116 = v568;
                }

                *__error() = v168;
                memset(v653, 0, sizeof(v653));
                std::string::basic_string[abi:nn200100]<0>(v668, v578);
                getSynonym(v653, v668);
                if (v668[23] < 0)
                {
                  operator delete(*v668);
                }

                v528 = v159;
                if ([v165 length])
                {
                  v174 = PhRankingTreeFromStr([v165 UTF8String], 10.0, &v649);
LABEL_282:
                  v116 = makeAndNode(v116, v174);
                  if (v653[23] < 0)
                  {
                    operator delete(*v653);
                  }

                  j = v595;
                  if (SBYTE7(v642) < 0)
                  {
                    operator delete(v641[0]);
                  }

                  v159 = (v174 == 0) & v528;
                  continue;
                }

                if (v167)
                {
                  p_var3 = v167[4];
                  v560 = v167[5];
                  if (p_var3 != v560)
                  {
                    v551 = v167;
                    v174 = 0;
                    if (v159)
                    {
                      v181 = 10.0;
                    }

                    else
                    {
                      v181 = 0.0;
                    }

                    while (1)
                    {
                      var0 = p_var3;
                      if (SHIBYTE(p_var3[2].var1) < 0)
                      {
                        var0 = p_var3->var0;
                      }

                      v183 = v181 + *&v551[3].super.isa;
                      v573 = p_var3;
                      if (v582 == 104 || v582 == 64 && [v166 count])
                      {
                        v647 = 0u;
                        v648 = 0u;
                        v645 = 0u;
                        v646 = 0u;
                        v184 = [v166 countByEnumeratingWithState:&v645 objects:v663 count:16];
                        if (v184)
                        {
                          v185 = *v646;
                          do
                          {
                            for (k = 0; k != v184; ++k)
                            {
                              if (*v646 != v185)
                              {
                                objc_enumerationMutation(v166);
                              }

                              v187 = *(*(&v645 + 1) + 8 * k);
                              v188 = createQueryNode(var0, [v187 UTF8String], 48, 1, 0, v183, 0.0);
                              v174 = makeOrNode(v174, v188);
                              LODWORD(v649) = v649 + 1;
                              v189 = *__error();
                              v190 = _SILogForLogForCategory(20);
                              if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
                              {
                                v684.location = v163;
                                v684.length = rangea;
                                v191 = NSStringFromRange(v684);
                                *v668 = 138413058;
                                *&v668[4] = a4;
                                *&v668[12] = 2048;
                                *&v668[14] = v595;
                                *&v668[22] = 2112;
                                *&v668[24] = v191;
                                LOWORD(v669[0]) = 2112;
                                *(v669 + 2) = v187;
                                _os_log_impl(&dword_1C278D000, v190, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Adding span: %lu, range:%@, self name: %@", v668, 0x2Au);
                              }

                              *__error() = v189;
                            }

                            v184 = [v166 countByEnumeratingWithState:&v645 objects:v663 count:16];
                          }

                          while (v184);
                        }

                        goto LABEL_324;
                      }

                      v192 = createQueryNode(var0, v578, 48, 1, 0, v183, 0.0);
                      v174 = makeOrNode(v174, v192);
                      if (v653[23] < 0)
                      {
                        if (*&v653[8])
                        {
                          v193 = *v653;
                          goto LABEL_320;
                        }
                      }

                      else if (v653[23])
                      {
                        v193 = v653;
LABEL_320:
                        v194 = createQueryNode(var0, v193, 48, 1, 0, v183, 0.0);
                        v174 = makeOrNode(v174, v194);
                        v195 = *__error();
                        v196 = _SILogForLogForCategory(19);
                        if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
                        {
                          *v668 = 138412546;
                          *&v668[4] = a4;
                          *&v668[12] = 2048;
                          *&v668[14] = v595;
                          _os_log_impl(&dword_1C278D000, v196, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Adding synonym for token %lu", v668, 0x16u);
                        }

                        *__error() = v195;
                        LODWORD(v649) = v649 + 1;
                      }

                      LODWORD(v649) = v649 + 1;
LABEL_324:
                      v116 = v568;
                      p_var3 = &v573->var3;
                      if (&v573->var3 == v560)
                      {
                        goto LABEL_282;
                      }
                    }
                  }

LABEL_342:
                  v174 = 0;
                  goto LABEL_282;
                }

                PhExactMatchRankingAttribs();
                v197 = qword_1EBF483C0;
                if (!qword_1EBF483C0)
                {
                  goto LABEL_342;
                }

                v174 = 0;
                if (v159)
                {
                  v198 = 10.0;
                }

                else
                {
                  v198 = 0.0;
                }

                while (2)
                {
                  v199 = (v197 + 16);
                  if (*(v197 + 39) < 0)
                  {
                    v199 = *v199;
                  }

                  v200 = v198 + *(v197 + 40);
                  v201 = createQueryNode(v199, v578, 48, 1, 0, v200, 0.0);
                  v174 = makeOrNode(v174, v201);
                  if (v653[23] < 0)
                  {
                    if (*&v653[8])
                    {
                      v202 = *v653;
LABEL_337:
                      v203 = createQueryNode(v199, v202, 48, 1, 0, v200, 0.0);
                      v174 = makeOrNode(v174, v203);
                      v204 = *__error();
                      v205 = _SILogForLogForCategory(19);
                      if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
                      {
                        *v668 = 138412546;
                        *&v668[4] = a4;
                        *&v668[12] = 2048;
                        *&v668[14] = v595;
                        _os_log_impl(&dword_1C278D000, v205, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Adding synonym for token %lu", v668, 0x16u);
                      }

                      *__error() = v204;
                      LODWORD(v649) = v649 + 1;
                    }
                  }

                  else if (v653[23])
                  {
                    v202 = v653;
                    goto LABEL_337;
                  }

                  LODWORD(v649) = v649 + 1;
                  v197 = *v197;
                  if (!v197)
                  {
                    goto LABEL_282;
                  }

                  continue;
                }
              }

              v175 = *__error();
              v178 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
              {
                v683.location = v163;
                v683.length = rangea;
                v179 = NSStringFromRange(v683);
                *v668 = 138412802;
                *&v668[4] = a4;
                *&v668[12] = 2048;
                *&v668[14] = j;
                *&v668[22] = 2112;
                *&v668[24] = v179;
                _os_log_impl(&dword_1C278D000, v178, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping span: %lu, range: %@ (ERROR: UTF8 encoding failed)", v668, 0x20u);
              }
            }

            *__error() = v175;
          }
        }

        v143 = *__error();
        v208 = _SILogForLogForCategory(20);
        if (!os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_350;
        }

        *v668 = 138412546;
        *&v668[4] = a4;
        *&v668[12] = 1024;
        *&v668[14] = v649;
        v209 = v668;
      }

      else
      {
        v206 = *__error();
        v207 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
        {
          *v663 = 138412290;
          *&v663[4] = a4;
          _os_log_impl(&dword_1C278D000, v207, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping rest of span match nodes (Reason: exact match nodes should be sufficient)", v663, 0xCu);
        }

        *__error() = v206;
        v143 = *__error();
        v208 = _SILogForLogForCategory(20);
        if (!os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_350;
        }

        *v663 = 138412546;
        *&v663[4] = a4;
        v664 = 1024;
        LODWORD(v665) = v649;
        v209 = v663;
      }

      _os_log_impl(&dword_1C278D000, v208, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Added %d nodes", v209, 0x12u);
LABEL_350:
      v145 = __error();
      goto LABEL_351;
    }
  }

  v138 = *__error();
  v139 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
  {
    v140 = [v586 count];
    v141 = [v555 count];
    v142 = [v543 count];
    *buf = 138413058;
    *&buf[4] = a4;
    *&buf[12] = 2048;
    *&buf[14] = v140;
    *&buf[22] = 2048;
    v671 = v141;
    LOWORD(v672) = 2048;
    *(&v672 + 2) = v142;
    _os_log_impl(&dword_1C278D000, v139, OS_LOG_TYPE_DEFAULT, "%@  {Span Match} Skipping query (ERROR: span count mismatch <#range=%lu, #types=%lu, #descriptions=%lu>)", buf, 0x2Au);
  }

  v116 = 0;
  *__error() = v138;
LABEL_352:
  v210 = v624;
  v211 = v623;
  v212 = v621;
  v552 = v620;
  v556 = v622;
  v561 = v618;
  if (![(NSString *)v542 length])
  {
    v294 = *__error();
    v295 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v295, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a4;
      _os_log_impl(&dword_1C278D000, v295, OS_LOG_TYPE_DEFAULT, "%@ {Token Match} Skipping query (Reason: empty query)", buf, 0xCu);
    }

    goto LABEL_476;
  }

  if (![v210 count])
  {
    v294 = *__error();
    v296 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a4;
      _os_log_impl(&dword_1C278D000, v296, OS_LOG_TYPE_DEFAULT, "%@ {Token Match} Skipping query (Reason: no useful tokens)", buf, 0xCu);
    }

LABEL_476:
    v297 = __error();
    v298 = 0;
    *v297 = v294;
    goto LABEL_484;
  }

  v213 = [v210 count];
  if (v213 == [(query_node *)v211 count])
  {
    {
      PhPrefixMatchLLMRankingAttribs(void)::_phPrefixMatchLLMAttribs = 0u;
      unk_1EBF62018 = 0u;
      dword_1EBF62028 = 1065353216;
    }

    if (PhPrefixMatchLLMRankingAttribs(void)::onceToken != -1)
    {
      dispatch_once(&PhPrefixMatchLLMRankingAttribs(void)::onceToken, &__block_literal_global_171);
    }

    v637 = 0;
    v583 = [(NSString *)v542 length];
    if ([v210 count])
    {
      rangeb = 0;
      v214 = 0;
      v569 = v116;
      v529 = v211;
      v526 = v210;
      v524 = v212;
      while (1)
      {
        v587 = [-[query_node objectAtIndexedSubscript:](v211 objectAtIndexedSubscript:{v214), "intValue"}];
        v650 = 0;
        v649 = 0;
        v215 = "Unknown";
        v651 = 0;
        if (v587 <= 0xD2)
        {
          v215 = off_1E8196D10[v587];
        }

        std::string::basic_string[abi:nn200100]<0>(&v649, v215);
        v216 = [objc_msgSend(v210 objectAtIndexedSubscript:{v214), "rangeValue"}];
        v218 = v216;
        v219 = v217;
        if (v216 == 0x7FFFFFFFFFFFFFFFLL || v216 + v217 > v583)
        {
          v221 = *__error();
          v227 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
          {
            v686.length = v219;
            v228 = SHIBYTE(v651);
            v229 = v649;
            v686.location = v218;
            v230 = NSStringFromRange(v686);
            *v653 = 138413058;
            v231 = &v649;
            if (v228 < 0)
            {
              v231 = v229;
            }

            *&v653[4] = a4;
            *&v653[12] = 2080;
            *&v653[14] = v231;
            *&v653[22] = 2048;
            v654 = v214;
            v655 = 2112;
            *v656 = v230;
            _os_log_impl(&dword_1C278D000, v227, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Skipping token: %lu, range: :%@ (ERROR: range is out of bounds)", v653, 0x2Au);
          }
        }

        else
        {
          v579 = v216;
          v220 = [(NSString *)v542 substringWithRange:v216, v217];
          if ([(NSString *)v220 length])
          {
            v220 = [(NSString *)v220 stringByTrimmingCharactersInSet:a3];
          }

          if ([(NSString *)v220 length]> 1)
          {
            v574 = v214;
            v232 = [(NSString *)v220 UTF8String];
            if (v232)
            {
              v544 = v232;
              v233 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(PhPrefixMatchLLMRankingAttribs(void)::_phPrefixMatchLLMAttribs, *(&PhPrefixMatchLLMRankingAttribs(void)::_phPrefixMatchLLMAttribs + 1), v587);
              if (v233)
              {
                v234 = v233;
                v235 = *(v233 + 6);
                if (v235 > 0.0)
                {
                  v236 = rangeb;
                  v237 = [v556 objectAtIndexedSubscript:v574];
                  v591 = [v212 objectAtIndexedSubscript:v574];
                  v532 = [(NSAttributedString *)v552 objectAtIndexedSubscript:v574];
                  v521 = v219;
                  v238 = *__error();
                  v239 = _SILogForLogForCategory(20);
                  if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
                  {
                    v240 = SHIBYTE(v651);
                    v241 = v649;
                    v687.location = v218;
                    v687.length = v521;
                    v242 = NSStringFromRange(v687);
                    *v653 = 138413314;
                    v243 = &v649;
                    if (v240 < 0)
                    {
                      v243 = v241;
                    }

                    *&v653[4] = a4;
                    *&v653[12] = 2080;
                    *&v653[14] = v243;
                    *&v653[22] = 2048;
                    v654 = v574;
                    v655 = 2112;
                    *v656 = v242;
                    *&v656[8] = 1024;
                    *&v656[10] = v587;
                    _os_log_impl(&dword_1C278D000, v239, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Adding token: %lu, range:%@, type: %d", v653, 0x30u);
                    v116 = v569;
                    v236 = rangeb;
                  }

                  *__error() = v238;
                  if ([v237 length])
                  {
                    v244 = PhRankingTreeFromStr([v237 UTF8String], 0.1, &v637);
                    goto LABEL_390;
                  }

                  v260 = v234[4];
                  *v518 = v234[5];
                  if (v260 == *v518)
                  {
                    v244 = 0;
LABEL_390:
                    v214 = v574;
LABEL_391:
                    rangeb = makeAndNode(v236, v244);
                    v211 = v529;
                    v210 = v526;
                    v212 = v524;
                    goto LABEL_377;
                  }

                  v244 = 0;
                  v214 = v574;
                  while (2)
                  {
                    switch(v587)
                    {
                      case 0x68u:
LABEL_412:
                        v647 = 0u;
                        v648 = 0u;
                        v645 = 0u;
                        v646 = 0u;
                        v261 = [v591 countByEnumeratingWithState:&v645 objects:buf count:16];
                        if (v261)
                        {
                          v596 = *v646;
                          do
                          {
                            for (m = 0; m != v261; ++m)
                            {
                              if (*v646 != v596)
                              {
                                objc_enumerationMutation(v591);
                              }

                              v263 = *(*(&v645 + 1) + 8 * m);
                              memset(v668, 0, sizeof(v668));
                              memset(v669, 0, sizeof(v669));
                              v264 = 0;
                              v265 = [v263 countByEnumeratingWithState:v668 objects:v663 count:16];
                              if (v265)
                              {
                                v266 = **&v668[16];
                                do
                                {
                                  for (n = 0; n != v265; ++n)
                                  {
                                    if (**&v668[16] != v266)
                                    {
                                      objc_enumerationMutation(v263);
                                    }

                                    v268 = v260;
                                    if (*(v260 + 23) < 0)
                                    {
                                      v268 = *v260;
                                    }

                                    v269 = createQueryNode(v268, [*(*&v668[8] + 8 * n) UTF8String], 112, 1, 0, v235, 0.0);
                                    v264 = makeAndNode(v264, v269);
                                    ++v637;
                                  }

                                  v265 = [v263 countByEnumeratingWithState:v668 objects:v663 count:16];
                                }

                                while (v265);
                              }

                              v244 = makeOrNode(v244, v264);
                              v236 = rangeb;
                            }

                            v261 = [v591 countByEnumeratingWithState:&v645 objects:buf count:16];
                          }

                          while (v261);
                        }

                        break;
                      case 0x40u:
                        if ([v591 count])
                        {
                          goto LABEL_412;
                        }

LABEL_440:
                        v276 = v260;
                        if (*(v260 + 23) < 0)
                        {
                          v276 = *v260;
                        }

                        v277 = createQueryNode(v276, v544, 112, 1, 0, v235, 0.0);
                        v244 = makeOrNode(v244, v277);
                        v639 = 0;
                        v638 = 0;
                        v640 = 0;
                        std::string::basic_string[abi:nn200100]<0>(v653, v544);
                        getSynonym(&v638, v653);
                        if (v653[23] < 0)
                        {
                          operator delete(*v653);
                        }

                        v278 = HIBYTE(v640);
                        if (v640 < 0)
                        {
                          v278 = v639;
                        }

                        if (v278)
                        {
                          v279 = v260;
                          if (*(v260 + 23) < 0)
                          {
                            v279 = *v260;
                          }

                          if (v640 >= 0)
                          {
                            v280 = &v638;
                          }

                          else
                          {
                            v280 = v638;
                          }

                          v281 = createQueryNode(v279, v280, 112, 1, 0, v235, 0.0);
                          v244 = makeOrNode(v244, v281);
                          v282 = ++v637;
                          v283 = *__error();
                          v284 = _SILogForLogForCategory(19);
                          if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
                          {
                            v285 = &v649;
                            if (v651 < 0)
                            {
                              v285 = v649;
                            }

                            *v653 = 138412802;
                            *&v653[4] = a4;
                            *&v653[12] = 2080;
                            *&v653[14] = v285;
                            *&v653[22] = 2048;
                            v654 = v214;
                            _os_log_impl(&dword_1C278D000, v284, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Adding synonym for token %lu", v653, 0x20u);
                          }

                          *__error() = v283;
                          v236 = rangeb;
                        }

                        else
                        {
                          v282 = v637;
                        }

                        v637 = v282 + 1;
                        if ([(query_node *)v532 length])
                        {
                          v286 = v260;
                          if (*(v260 + 23) < 0)
                          {
                            v286 = *v260;
                          }

                          v287 = createQueryNode(v286, [(query_node *)v532 UTF8String], 112, 1, 0, v235, 0.0);
                          v244 = makeOrNode(v244, v287);
                          v637 = v282 + 2;
                          v288 = *__error();
                          v289 = _SILogForLogForCategory(20);
                          if (os_log_type_enabled(v289, OS_LOG_TYPE_DEFAULT))
                          {
                            v290 = SHIBYTE(v651);
                            v291 = v649;
                            v691.location = v579;
                            v691.length = v521;
                            v292 = NSStringFromRange(v691);
                            *v653 = 138413570;
                            v293 = &v649;
                            if (v290 < 0)
                            {
                              v293 = v291;
                            }

                            *&v653[4] = a4;
                            *&v653[12] = 2080;
                            *&v653[14] = v293;
                            *&v653[22] = 2112;
                            v654 = v532;
                            v655 = 2048;
                            *v656 = v214;
                            *&v656[8] = 2112;
                            *&v656[10] = v292;
                            v657 = 1024;
                            v658 = v587;
                            _os_log_impl(&dword_1C278D000, v289, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Added lemma node: %@, for token: %lu, range:%@, type: %d", v653, 0x3Au);
                          }

                          *__error() = v288;
                          v236 = rangeb;
                        }

                        if (SHIBYTE(v640) < 0)
                        {
                          operator delete(v638);
                        }

                        break;
                      case 8u:
                        v643 = 0u;
                        v644 = 0u;
                        *v641 = 0u;
                        v642 = 0u;
                        v270 = 0;
                        v271 = [v561 countByEnumeratingWithState:v641 objects:__p count:16];
                        if (v271)
                        {
                          v272 = *v642;
                          do
                          {
                            for (ii = 0; ii != v271; ++ii)
                            {
                              if (*v642 != v272)
                              {
                                objc_enumerationMutation(v561);
                              }

                              v274 = v260;
                              if (*(v260 + 23) < 0)
                              {
                                v274 = *v260;
                              }

                              v275 = createQueryNode(v274, [*(v641[1] + ii) UTF8String], 112, 1, 0, v235, 0.0);
                              v270 = makeAndNode(v270, v275);
                            }

                            v271 = [v561 countByEnumeratingWithState:v641 objects:__p count:16];
                          }

                          while (v271);
                        }

                        v244 = makeOrNode(v244, v270);
                        v236 = rangeb;
                        break;
                      default:
                        goto LABEL_440;
                    }

                    v260 += 24;
                    v116 = v569;
                    v214 = v574;
                    if (v260 == *v518)
                    {
                      goto LABEL_391;
                    }

                    continue;
                  }
                }

                v214 = v574;
                v221 = *__error();
                v255 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
                {
                  v690.length = v219;
                  v256 = SHIBYTE(v651);
                  v257 = v649;
                  v690.location = v218;
                  v258 = NSStringFromRange(v690);
                  *v653 = 138413314;
                  v259 = &v649;
                  if (v256 < 0)
                  {
                    v259 = v257;
                  }

                  *&v653[4] = a4;
                  *&v653[12] = 2080;
                  *&v653[14] = v259;
                  *&v653[22] = 2048;
                  v654 = v574;
                  v655 = 2112;
                  *v656 = v258;
                  *&v656[8] = 1024;
                  *&v656[10] = v587;
                  _os_log_impl(&dword_1C278D000, v255, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Skipping token: %lu, range:%@ (ERROR: attribute score is 0 for type: %d)", v653, 0x30u);
                }
              }

              else
              {
                v221 = *__error();
                v250 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
                {
                  v689.length = v219;
                  v251 = SHIBYTE(v651);
                  v252 = v649;
                  v689.location = v218;
                  v253 = NSStringFromRange(v689);
                  *v653 = 138413314;
                  v254 = &v649;
                  if (v251 < 0)
                  {
                    v254 = v252;
                  }

                  *&v653[4] = a4;
                  *&v653[12] = 2080;
                  *&v653[14] = v254;
                  *&v653[22] = 2048;
                  v654 = v214;
                  v655 = 2112;
                  *v656 = v253;
                  *&v656[8] = 1024;
                  *&v656[10] = v587;
                  _os_log_impl(&dword_1C278D000, v250, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Skipping token: %lu, range:%@ (Reason: not an important attribute type: %d)", v653, 0x30u);
                }
              }
            }

            else
            {
              v221 = *__error();
              v245 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
              {
                v688.length = v219;
                v246 = SHIBYTE(v651);
                v247 = v649;
                v688.location = v218;
                v248 = NSStringFromRange(v688);
                *v653 = 138413058;
                v249 = &v649;
                if (v246 < 0)
                {
                  v249 = v247;
                }

                *&v653[4] = a4;
                *&v653[12] = 2080;
                *&v653[14] = v249;
                *&v653[22] = 2048;
                v654 = v214;
                v655 = 2112;
                *v656 = v248;
                _os_log_impl(&dword_1C278D000, v245, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Skipping token: %lu, range: %@ (ERROR: UTF8 encoding failed)", v653, 0x2Au);
              }
            }
          }

          else
          {
            v221 = *__error();
            v222 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
            {
              v685.length = v219;
              v223 = SHIBYTE(v651);
              v224 = v649;
              v685.location = v218;
              v225 = NSStringFromRange(v685);
              *v653 = 138413058;
              v226 = &v649;
              if (v223 < 0)
              {
                v226 = v224;
              }

              *&v653[4] = a4;
              *&v653[12] = 2080;
              *&v653[14] = v226;
              *&v653[22] = 2048;
              v654 = v214;
              v655 = 2112;
              *v656 = v225;
              _os_log_impl(&dword_1C278D000, v222, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Skipping token: %lu, range: %@ (ERROR: empty sub-query after trimming)", v653, 0x2Au);
            }
          }
        }

        *__error() = v221;
LABEL_377:
        if (SHIBYTE(v651) < 0)
        {
          operator delete(v649);
        }

        v214 = (v214 + 1);
        if (v214 >= [v210 count])
        {
          goto LABEL_481;
        }
      }
    }

    rangeb = 0;
LABEL_481:
    v304 = *__error();
    v305 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
    {
      *v653 = 138412546;
      *&v653[4] = a4;
      *&v653[12] = 1024;
      *&v653[14] = v637;
      _os_log_impl(&dword_1C278D000, v305, OS_LOG_TYPE_DEFAULT, "%@ {Token Match} Added %d nodes", v653, 0x12u);
    }

    *__error() = v304;
    v298 = rangeb;
  }

  else
  {
    v299 = *__error();
    v300 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v300, OS_LOG_TYPE_DEFAULT))
    {
      v301 = [v210 count];
      v302 = [(query_node *)v211 count];
      *buf = 138412802;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = v301;
      *&buf[22] = 2048;
      v671 = v302;
      _os_log_impl(&dword_1C278D000, v300, OS_LOG_TYPE_DEFAULT, "%@ {Token Match} Skipping query (ERROR: token count mismatch <%lu,%lu>)", buf, 0x20u);
    }

    v303 = __error();
    v298 = 0;
    *v303 = v299;
  }

LABEL_484:
  result = makeOrNode(v116, v298);
  if ((v548 & 1) == 0)
  {
    goto LABEL_733;
  }

  v525 = result;
  v307 = v624;
  v562 = v623;
  v545 = v621;
  v533 = v620;
  objb = v619;
  v308 = v618;
  if (![(NSString *)v542 length])
  {
    v395 = *__error();
    v396 = _SILogForLogForCategory(20);
    if (!os_log_type_enabled(v396, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_605;
    }

    *buf = 138412290;
    *&buf[4] = a4;
    v397 = "%@ {OCR Match} Skipping query (Reason: empty query)";
LABEL_601:
    v398 = v396;
    v399 = 12;
LABEL_604:
    _os_log_impl(&dword_1C278D000, v398, OS_LOG_TYPE_DEFAULT, v397, buf, v399);
    goto LABEL_605;
  }

  if (![v307 count])
  {
    v395 = *__error();
    v396 = _SILogForLogForCategory(20);
    if (!os_log_type_enabled(v396, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_605;
    }

    *buf = 138412290;
    *&buf[4] = a4;
    v397 = "%@ {OCR Match} Skipping query (Reason: no useful tokens)";
    goto LABEL_601;
  }

  v309 = [v307 count];
  if (v309 != [(query_node *)v562 count])
  {
    v395 = *__error();
    v400 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v400, OS_LOG_TYPE_DEFAULT))
    {
      v401 = [v307 count];
      v402 = [(query_node *)v562 count];
      *buf = 138412802;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = v401;
      *&buf[22] = 2048;
      v671 = v402;
      v397 = "%@ {OCR Match} Skipping query (ERROR: token count mismatch <%lu,%lu>)";
      v398 = v400;
      v399 = 32;
      goto LABEL_604;
    }

LABEL_605:
    v530 = 0;
    goto LABEL_606;
  }

  {
    PhOCRRankingAttribs(void)::_OCRRankingAttribs = 0u;
    *algn_1EBF62050 = 0u;
    dword_1EBF62060 = 1065353216;
  }

  if (PhOCRRankingAttribs(void)::onceToken != -1)
  {
    dispatch_once(&PhOCRRankingAttribs(void)::onceToken, &__block_literal_global_178);
  }

  v553 = [(NSString *)v542 length];
  if ([v307 count])
  {
    v530 = 0;
    v310 = 0;
    v311 = 0;
    v312 = 1;
    v557 = v307;
    v565 = v308;
    while (1)
    {
      v580 = v311;
      v313 = [-[query_node objectAtIndexedSubscript:](v562 "objectAtIndexedSubscript:"intValue"")];
      v314 = v313;
      v641[1] = 0;
      v641[0] = 0;
      v315 = "Unknown";
      *&v642 = 0;
      if (v313 <= 0xD2)
      {
        v315 = off_1E8196D10[v313];
      }

      std::string::basic_string[abi:nn200100]<0>(v641, v315);
      v316 = [objc_msgSend(v307 objectAtIndexedSubscript:{v580), "rangeValue"}];
      v588.length = v317;
      v318 = v316;
      if (v316 == 0x7FFFFFFFFFFFFFFFLL || v316 + v317 > v553)
      {
        v320 = *__error();
        v326 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v326, OS_LOG_TYPE_DEFAULT))
        {
          v327 = SBYTE7(v642);
          v328 = v641[0];
          v693.location = v318;
          v693.length = v588.length;
          v329 = NSStringFromRange(v693);
          *v668 = 138413058;
          v330 = v641;
          if (v327 < 0)
          {
            v330 = v328;
          }

          *&v668[4] = a4;
          *&v668[12] = 2080;
          *&v668[14] = v330;
          *&v668[22] = 2048;
          *&v668[24] = v580;
          LOWORD(v669[0]) = 2112;
          *(v669 + 2) = v329;
          _os_log_impl(&dword_1C278D000, v326, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Skipping token: %lu, range: :%@ (ERROR: range is out of bounds)", v668, 0x2Au);
        }
      }

      else
      {
        v588.location = v316;
        v319 = [(NSString *)v542 substringWithRange:v316, v317];
        if ([(NSString *)v319 length])
        {
          v319 = [(NSString *)v319 stringByTrimmingCharactersInSet:a3];
        }

        if ([(NSString *)v319 length]> 1)
        {
          v332 = [(NSString *)v319 UTF8String];
          if (v332)
          {
            if (std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&PhOCRRankingAttribs(void)::_OCRRankingAttribs, v314))
            {
              v333 = [v545 objectAtIndexedSubscript:v580];
              rangec = [objb objectAtIndexedSubscript:v580];
              v334 = [(NSAttributedString *)v533 objectAtIndexedSubscript:v580];
              v597 = *__error();
              v335 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v335, OS_LOG_TYPE_DEFAULT))
              {
                v336 = v334;
                v337 = v333;
                v338 = v312;
                v339 = SBYTE7(v642);
                v340 = v641[0];
                v341 = NSStringFromRange(v588);
                *v668 = 138413314;
                v342 = v641;
                if (v339 < 0)
                {
                  v342 = v340;
                }

                *&v668[4] = a4;
                *&v668[12] = 2080;
                *&v668[14] = v342;
                *&v668[22] = 2048;
                *&v668[24] = v580;
                LOWORD(v669[0]) = 2112;
                *(v669 + 2) = v341;
                WORD5(v669[0]) = 1024;
                HIDWORD(v669[0]) = v314;
                _os_log_impl(&dword_1C278D000, v335, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Adding token: %lu, range:%@, type: %d", v668, 0x30u);
                v312 = v338;
                v333 = v337;
                v334 = v336;
                v307 = v557;
              }

              *__error() = v597;
              if (v312)
              {
                v343 = 50.19;
              }

              else
              {
                v343 = 0.19;
              }

              switch(v314)
              {
                case 104:
LABEL_526:
                  v344 = 0;
                  v345 = 0;
                  v570 = v333;
                  while (v344 < [(query_node *)v333 count])
                  {
                    v598 = v344;
                    v346 = [(query_node *)v333 objectAtIndexedSubscript:v344];
                    v662 = 0u;
                    v661 = 0u;
                    v660 = 0u;
                    *__p = 0u;
                    v347 = [v346 countByEnumeratingWithState:__p objects:buf count:16];
                    if (v347)
                    {
                      v575 = v345;
                      v348 = 0;
                      v349 = *v660;
                      do
                      {
                        for (jj = 0; jj != v347; ++jj)
                        {
                          if (*v660 != v349)
                          {
                            objc_enumerationMutation(v346);
                          }

                          v351 = *(__p[1] + jj);
                          if (v348 || ![rangec count])
                          {
                            v352 = createQueryNode("kMDItemTextContent", [v351 UTF8String], 112, 1, 0, v343, 0.0);
                            v348 = makeAndNode(v348, v352);
                          }

                          else
                          {
                            v353 = createQueryNode("kMDItemTextContent", [v351 UTF8String], 112, 1, 0, v343, 0.0);
                            v354 = createQueryNode("kMDItemTextContent", [objc_msgSend(rangec objectAtIndexedSubscript:{0), "UTF8String"}], 112, 1, 0, v343, 0.0);
                            v348 = makeOrNode(v353, v354);
                            v355 = *__error();
                            v356 = _SILogForLogForCategory(20);
                            if (os_log_type_enabled(v356, OS_LOG_TYPE_DEFAULT))
                            {
                              if ((SBYTE7(v642) & 0x80u) == 0)
                              {
                                v357 = v641;
                              }

                              else
                              {
                                v357 = v641[0];
                              }

                              v358 = NSStringFromRange(v588);
                              v359 = [rangec objectAtIndexedSubscript:0];
                              *v668 = 138413314;
                              *&v668[4] = a4;
                              *&v668[12] = 2080;
                              *&v668[14] = v357;
                              *&v668[22] = 2048;
                              *&v668[24] = v598;
                              LOWORD(v669[0]) = 2112;
                              *(v669 + 2) = v358;
                              WORD5(v669[0]) = 2112;
                              *(v669 + 12) = v359;
                              _os_log_impl(&dword_1C278D000, v356, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Adding token: %lu, range:%@, alias name: %@", v668, 0x34u);
                            }

                            ++v310;
                            *__error() = v355;
                          }

                          ++v310;
                          v343 = 0.19;
                        }

                        v347 = [v346 countByEnumeratingWithState:__p objects:buf count:16];
                        v343 = 0.19;
                      }

                      while (v347);
                      v312 = 0;
                      v343 = 0.19;
                      v307 = v557;
                      v345 = v575;
                    }

                    else
                    {
                      v348 = 0;
                    }

                    v345 = makeOrNode(v345, v348);
                    v308 = v565;
                    v360 = *__error();
                    v361 = _SILogForLogForCategory(20);
                    if (os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT))
                    {
                      if ((SBYTE7(v642) & 0x80u) == 0)
                      {
                        v362 = v641;
                      }

                      else
                      {
                        v362 = v641[0];
                      }

                      v363 = NSStringFromRange(v588);
                      v364 = [v346 componentsJoinedByString:@" "];
                      *v668 = 138413314;
                      *&v668[4] = a4;
                      *&v668[12] = 2080;
                      *&v668[14] = v362;
                      *&v668[22] = 2048;
                      *&v668[24] = v598;
                      LOWORD(v669[0]) = 2112;
                      *(v669 + 2) = v363;
                      WORD5(v669[0]) = 2112;
                      *(v669 + 12) = v364;
                      _os_log_impl(&dword_1C278D000, v361, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Adding token: %lu, range:%@, tokenized self name: %@", v668, 0x34u);
                    }

                    *__error() = v360;
                    v344 = v598 + 1;
                    v333 = v570;
                  }

                  break;
                case 64:
                  if ([(query_node *)v333 count])
                  {
                    goto LABEL_526;
                  }

LABEL_571:
                  v379 = createQueryNode("kMDItemTextContent", v332, 112, 1, 0, v343, 0.0);
                  memset(v653, 0, sizeof(v653));
                  std::string::basic_string[abi:nn200100]<0>(v668, v332);
                  getSynonym(v653, v668);
                  if (v668[23] < 0)
                  {
                    operator delete(*v668);
                  }

                  if (v653[23] < 0)
                  {
                    if (*&v653[8])
                    {
                      v380 = *v653;
LABEL_578:
                      v381 = createQueryNode("kMDItemTextContent", v380, 112, 1, 0, v343, 0.0);
                      v379 = makeOrNode(v379, v381);
                      v382 = *__error();
                      v383 = _SILogForLogForCategory(19);
                      if (os_log_type_enabled(v383, OS_LOG_TYPE_DEFAULT))
                      {
                        v384 = v641;
                        if (SBYTE7(v642) < 0)
                        {
                          v384 = v641[0];
                        }

                        *v668 = 138412802;
                        *&v668[4] = a4;
                        *&v668[12] = 2080;
                        *&v668[14] = v384;
                        *&v668[22] = 2048;
                        *&v668[24] = v580;
                        _os_log_impl(&dword_1C278D000, v383, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Adding synonym for token %lu", v668, 0x20u);
                      }

                      ++v310;
                      *__error() = v382;
                    }
                  }

                  else if (v653[23])
                  {
                    v380 = v653;
                    goto LABEL_578;
                  }

                  if ([v334 length])
                  {
                    v385 = createQueryNode("kMDItemTextContent", [v334 UTF8String], 112, 1, 0, v343, 0.0);
                    v379 = makeOrNode(v379, v385);
                    v386 = *__error();
                    v387 = _SILogForLogForCategory(20);
                    if (os_log_type_enabled(v387, OS_LOG_TYPE_DEFAULT))
                    {
                      v599 = v386;
                      v388 = v307;
                      v389 = v334;
                      v390 = SBYTE7(v642);
                      v391 = v641[0];
                      v392 = NSStringFromRange(v588);
                      *v668 = 138413570;
                      v393 = v641;
                      if (v390 < 0)
                      {
                        v393 = v391;
                      }

                      *&v668[4] = a4;
                      *&v668[12] = 2080;
                      *&v668[14] = v393;
                      *&v668[22] = 2112;
                      *&v668[24] = v389;
                      LOWORD(v669[0]) = 2048;
                      *(v669 + 2) = v580;
                      WORD5(v669[0]) = 2112;
                      *(v669 + 12) = v392;
                      WORD2(v669[1]) = 1024;
                      *(&v669[1] + 6) = v314;
                      _os_log_impl(&dword_1C278D000, v387, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Added lemma node: %@, for token: %lu, range:%@, type: %d", v668, 0x3Au);
                      v307 = v388;
                      v386 = v599;
                    }

                    v310 += 2;
                    *__error() = v386;
                  }

                  else
                  {
                    ++v310;
                  }

                  if (isLLMPersonArgId(v314) && [rangec count])
                  {
                    v394 = createQueryNode("kMDItemTextContent", [objc_msgSend(rangec objectAtIndexedSubscript:{0), "UTF8String"}], 112, 1, 0, v343, 0.0);
                    v345 = makeOrNode(v379, v394);
                  }

                  else
                  {
                    v345 = v379;
                  }

                  if (v653[23] < 0)
                  {
                    operator delete(*v653);
                  }

                  break;
                case 8:
                  v647 = 0u;
                  v648 = 0u;
                  v645 = 0u;
                  v646 = 0u;
                  v345 = 0;
                  v375 = [v308 countByEnumeratingWithState:&v645 objects:v663 count:16];
                  if (v375)
                  {
                    v376 = *v646;
                    do
                    {
                      for (kk = 0; kk != v375; ++kk)
                      {
                        if (*v646 != v376)
                        {
                          objc_enumerationMutation(v308);
                        }

                        v378 = createQueryNode("kMDItemTextContent", [*(*(&v645 + 1) + 8 * kk) UTF8String], 112, 1, 0, v343, 0.0);
                        v345 = makeAndNode(v345, v378);
                      }

                      v375 = [v308 countByEnumeratingWithState:&v645 objects:v663 count:16];
                    }

                    while (v375);
                  }

                  break;
                default:
                  goto LABEL_571;
              }

              v312 &= v345 == 0;
              v530 = makeAndNode(v530, v345);
              goto LABEL_510;
            }

            v320 = *__error();
            v370 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v370, OS_LOG_TYPE_DEFAULT))
            {
              v371 = SBYTE7(v642);
              v372 = v641[0];
              v695.location = v318;
              v695.length = v588.length;
              v373 = NSStringFromRange(v695);
              *v668 = 138413314;
              v374 = v641;
              if (v371 < 0)
              {
                v374 = v372;
              }

              *&v668[4] = a4;
              *&v668[12] = 2080;
              *&v668[14] = v374;
              *&v668[22] = 2048;
              *&v668[24] = v580;
              LOWORD(v669[0]) = 2112;
              *(v669 + 2) = v373;
              WORD5(v669[0]) = 1024;
              HIDWORD(v669[0]) = v314;
              _os_log_impl(&dword_1C278D000, v370, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Skipping token: %lu, range:%@ (Reason: not an important attribute type: %d)", v668, 0x30u);
            }
          }

          else
          {
            v320 = *__error();
            v365 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v365, OS_LOG_TYPE_DEFAULT))
            {
              v366 = SBYTE7(v642);
              v367 = v641[0];
              v694.location = v318;
              v694.length = v588.length;
              v368 = NSStringFromRange(v694);
              *v668 = 138413058;
              v369 = v641;
              if (v366 < 0)
              {
                v369 = v367;
              }

              *&v668[4] = a4;
              *&v668[12] = 2080;
              *&v668[14] = v369;
              *&v668[22] = 2048;
              *&v668[24] = v580;
              LOWORD(v669[0]) = 2112;
              *(v669 + 2) = v368;
              _os_log_impl(&dword_1C278D000, v365, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Skipping token: %lu, range: %@ (ERROR: UTF8 encoding failed)", v668, 0x2Au);
            }
          }
        }

        else
        {
          v320 = *__error();
          v321 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT))
          {
            v322 = SBYTE7(v642);
            v323 = v641[0];
            v692.location = v318;
            v692.length = v588.length;
            v324 = NSStringFromRange(v692);
            *v668 = 138413058;
            v325 = v641;
            if (v322 < 0)
            {
              v325 = v323;
            }

            *&v668[4] = a4;
            *&v668[12] = 2080;
            *&v668[14] = v325;
            *&v668[22] = 2048;
            *&v668[24] = v580;
            LOWORD(v669[0]) = 2112;
            *(v669 + 2) = v324;
            _os_log_impl(&dword_1C278D000, v321, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Skipping token: %lu, range: %@ (ERROR: empty sub-query after trimming)", v668, 0x2Au);
          }
        }
      }

      *__error() = v320;
LABEL_510:
      if (SBYTE7(v642) < 0)
      {
        operator delete(v641[0]);
      }

      v331 = [v307 count];
      v311 = v580 + 1;
      if (v580 + 1 >= v331)
      {
        goto LABEL_737;
      }
    }
  }

  v310 = 0;
  v530 = 0;
LABEL_737:
  v395 = *__error();
  v498 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v498, OS_LOG_TYPE_DEFAULT))
  {
    *v668 = 138412546;
    *&v668[4] = a4;
    *&v668[12] = 1024;
    *&v668[14] = v310;
    _os_log_impl(&dword_1C278D000, v498, OS_LOG_TYPE_DEFAULT, "%@ {OCR Match} Added %d nodes", v668, 0x12u);
  }

LABEL_606:
  *__error() = v395;
  v403 = v624;
  v534 = v623;
  v515 = v621;
  v511 = v619;
  v513 = v620;
  v546 = v618;
  if (![(NSString *)v542 length])
  {
    v487 = *__error();
    v488 = _SILogForLogForCategory(20);
    if (!os_log_type_enabled(v488, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_731;
    }

    *buf = 138412290;
    *&buf[4] = a4;
    v489 = "%@ {Pre-extraction Match} Skipping query (Reason: empty query)";
LABEL_727:
    v490 = v488;
    v491 = 12;
LABEL_730:
    _os_log_impl(&dword_1C278D000, v490, OS_LOG_TYPE_DEFAULT, v489, buf, v491);
    goto LABEL_731;
  }

  if (![v403 count])
  {
    v487 = *__error();
    v488 = _SILogForLogForCategory(20);
    if (!os_log_type_enabled(v488, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_731;
    }

    *buf = 138412290;
    *&buf[4] = a4;
    v489 = "%@ {Pre-extraction Match} Skipping query (Reason: no useful tokens)";
    goto LABEL_727;
  }

  v404 = [v403 count];
  v522 = v403;
  if (v404 == [(query_node *)v534 count])
  {
    {
      PhPreExtractionMatchLLMRankingAttribs(void)::_phPreExtractionMatchAttribs = 0u;
      unk_1EBF62088 = 0u;
      dword_1EBF62098 = 1065353216;
    }

    if (PhPreExtractionMatchLLMRankingAttribs(void)::onceToken[0] != -1)
    {
      dispatch_once(PhPreExtractionMatchLLMRankingAttribs(void)::onceToken, &__block_literal_global_181);
    }

    *v519 = [(NSString *)v542 length];
    if ([v403 count])
    {
      v527 = 0;
      v405 = 0;
      v406 = 0;
      v407 = 1;
      while (1)
      {
        objc = [-[query_node objectAtIndexedSubscript:](v534 objectAtIndexedSubscript:{v406), "intValue"}];
        v650 = 0;
        v649 = 0;
        v408 = "Unknown";
        v651 = 0;
        if (objc <= 0xD2)
        {
          v408 = off_1E8196D10[objc];
        }

        std::string::basic_string[abi:nn200100]<0>(&v649, v408);
        v409 = [objc_msgSend(v403 objectAtIndexedSubscript:{v406), "rangeValue"}];
        v589 = v410;
        v411 = v409;
        if (v409 == 0x7FFFFFFFFFFFFFFFLL || v409 + v410 > *v519)
        {
          v413 = *__error();
          v419 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v419, OS_LOG_TYPE_DEFAULT))
          {
            v420 = SHIBYTE(v651);
            v421 = v649;
            v697.location = v411;
            v697.length = v589;
            v422 = NSStringFromRange(v697);
            *v653 = 138413058;
            v423 = &v649;
            if (v420 < 0)
            {
              v423 = v421;
            }

            *&v653[4] = a4;
            *&v653[12] = 2080;
            *&v653[14] = v423;
            *&v653[22] = 2048;
            v654 = v406;
            v655 = 2112;
            *v656 = v422;
            _os_log_impl(&dword_1C278D000, v419, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Skipping token: %lu, range: :%@ (ERROR: range is out of bounds)", v653, 0x2Au);
            v403 = v522;
          }
        }

        else
        {
          v584 = v409;
          v412 = [(NSString *)v542 substringWithRange:v409, v410];
          if ([(NSString *)v412 length])
          {
            v412 = [(NSString *)v412 stringByTrimmingCharactersInSet:a3];
          }

          if ([(NSString *)v412 length]> 1)
          {
            v424 = [(NSString *)v412 UTF8String];
            if (v424)
            {
              __sa = v424;
              v425 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(PhPreExtractionMatchLLMRankingAttribs(void)::_phPreExtractionMatchAttribs, *(&PhPreExtractionMatchLLMRankingAttribs(void)::_phPreExtractionMatchAttribs + 1), objc);
              v549 = [v515 objectAtIndexedSubscript:v406];
              v508 = [(NSAttributedString *)v513 objectAtIndexedSubscript:v406];
              ranged = [v511 objectAtIndexedSubscript:v406];
              v558 = v425;
              v426 = *__error();
              v427 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v427, OS_LOG_TYPE_DEFAULT))
              {
                v428 = SHIBYTE(v651);
                v429 = v649;
                v698.location = v411;
                v698.length = v589;
                v430 = NSStringFromRange(v698);
                *v653 = 138413314;
                v431 = &v649;
                if (v428 < 0)
                {
                  v431 = v429;
                }

                *&v653[4] = a4;
                *&v653[12] = 2080;
                *&v653[14] = v431;
                *&v653[22] = 2048;
                v654 = v406;
                v655 = 1024;
                *v656 = objc;
                *&v656[4] = 2112;
                *&v656[6] = v430;
                _os_log_impl(&dword_1C278D000, v427, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Adding token: %lu, type: %d, range:%@", v653, 0x30u);
                v403 = v522;
              }

              *__error() = v426;
              v432 = v558;
              if (!v558 || (v433 = v558[4], v506 = v558[5], v433 == v506))
              {
                v571 = 0;
LABEL_717:
                v407 &= v571 == 0;
                v527 = makeAndNode(v527, v571);
                goto LABEL_631;
              }

              v571 = 0;
              while (2)
              {
                v434 = 60.0;
                if ((v407 & 1) == 0)
                {
                  v434 = 0.0;
                }

                v435 = v433;
                if (*(v433 + 23) < 0)
                {
                  v435 = *v433;
                }

                v592 = v435;
                v436 = v434 + *(v432 + 6);
                v437 = objc;
                v566 = v433;
                switch(objc)
                {
                  case 0x68u:
LABEL_650:
                    v647 = 0u;
                    v648 = 0u;
                    v645 = 0u;
                    v646 = 0u;
                    v438 = [v549 countByEnumeratingWithState:&v645 objects:buf count:16];
                    v439 = v592;
                    if (v438)
                    {
                      v554 = *v646;
                      do
                      {
                        v440 = 0;
                        v563 = v438;
                        do
                        {
                          if (*v646 != v554)
                          {
                            objc_enumerationMutation(v549);
                          }

                          v576 = v440;
                          v441 = *(*(&v645 + 1) + 8 * v440);
                          memset(v668, 0, sizeof(v668));
                          memset(v669, 0, sizeof(v669));
                          v600 = v441;
                          v442 = 0;
                          v443 = [v441 countByEnumeratingWithState:v668 objects:v663 count:16];
                          if (v443)
                          {
                            v444 = **&v668[16];
                            do
                            {
                              for (mm = 0; mm != v443; ++mm)
                              {
                                if (**&v668[16] != v444)
                                {
                                  objc_enumerationMutation(v600);
                                }

                                v446 = *(*&v668[8] + 8 * mm);
                                if (v442 || ![ranged count])
                                {
                                  v447 = createQueryNode(v439, [v446 UTF8String], 112, 1, 0, v436, 0.0);
                                  v442 = makeAndNode(v442, v447);
                                }

                                else
                                {
                                  v448 = createQueryNode(v439, [v446 UTF8String], 112, 1, 0, v436, 0.0);
                                  v449 = createQueryNode(v439, [objc_msgSend(ranged objectAtIndexedSubscript:{0), "UTF8String"}], 112, 1, 0, v436, 0.0);
                                  v442 = makeOrNode(v448, v449);
                                  v450 = *__error();
                                  v451 = _SILogForLogForCategory(20);
                                  if (os_log_type_enabled(v451, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v452 = v406;
                                    if (v651 >= 0)
                                    {
                                      v453 = &v649;
                                    }

                                    else
                                    {
                                      v453 = v649;
                                    }

                                    v699.location = v584;
                                    v699.length = v589;
                                    v454 = NSStringFromRange(v699);
                                    v455 = [ranged objectAtIndexedSubscript:0];
                                    *v653 = 138413314;
                                    *&v653[4] = a4;
                                    *&v653[12] = 2080;
                                    *&v653[14] = v453;
                                    *&v653[22] = 2048;
                                    v406 = v452;
                                    v654 = v452;
                                    v655 = 2112;
                                    *v656 = v454;
                                    *&v656[8] = 2112;
                                    *&v656[10] = v455;
                                    _os_log_impl(&dword_1C278D000, v451, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Adding token: %lu, range:%@, alias name: %@", v653, 0x34u);
                                    v439 = v592;
                                  }

                                  ++v405;
                                  *__error() = v450;
                                }

                                ++v405;
                                v436 = 0.19;
                              }

                              v443 = [v600 countByEnumeratingWithState:v668 objects:v663 count:16];
                              v436 = 0.19;
                            }

                            while (v443);
                            v407 = 0;
                            v436 = 0.19;
                            v433 = v566;
                          }

                          v571 = makeOrNode(v571, v442);
                          v456 = v576;
                          v457 = *__error();
                          v458 = _SILogForLogForCategory(20);
                          if (os_log_type_enabled(v458, OS_LOG_TYPE_DEFAULT))
                          {
                            if (v651 >= 0)
                            {
                              v459 = &v649;
                            }

                            else
                            {
                              v459 = v649;
                            }

                            v700.location = v584;
                            v700.length = v589;
                            v460 = NSStringFromRange(v700);
                            v461 = [v600 componentsJoinedByString:@" "];
                            *v653 = 138413314;
                            *&v653[4] = a4;
                            *&v653[12] = 2080;
                            *&v653[14] = v459;
                            *&v653[22] = 2048;
                            v654 = v406;
                            v655 = 2112;
                            *v656 = v460;
                            *&v656[8] = 2112;
                            *&v656[10] = v461;
                            _os_log_impl(&dword_1C278D000, v458, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Adding token: %lu, range:%@, tokenized self name: %@", v653, 0x34u);
                            v433 = v566;
                            v456 = v576;
                          }

                          *__error() = v457;
                          v440 = (&v456->var0 + 1);
                          v432 = v558;
                        }

                        while (v440 != v563);
                        v438 = [v549 countByEnumeratingWithState:&v645 objects:buf count:16];
                      }

                      while (v438);
                    }

                    break;
                  case 0x40u:
                    if ([v549 count])
                    {
                      goto LABEL_650;
                    }

LABEL_689:
                    v467 = createQueryNode(v592, __sa, 112, 1, 0, v436, 0.0);
                    v571 = makeOrNode(v571, v467);
                    v639 = 0;
                    v638 = 0;
                    v640 = 0;
                    std::string::basic_string[abi:nn200100]<0>(v653, __sa);
                    getSynonym(&v638, v653);
                    v432 = v558;
                    if (v653[23] < 0)
                    {
                      operator delete(*v653);
                    }

                    v468 = HIBYTE(v640);
                    if (v640 < 0)
                    {
                      v468 = v639;
                    }

                    if (v468)
                    {
                      v469 = *__error();
                      v470 = _SILogForLogForCategory(19);
                      if (os_log_type_enabled(v470, OS_LOG_TYPE_DEFAULT))
                      {
                        v471 = &v649;
                        if (v651 < 0)
                        {
                          v471 = v649;
                        }

                        *v653 = 138412802;
                        *&v653[4] = a4;
                        *&v653[12] = 2080;
                        *&v653[14] = v471;
                        *&v653[22] = 2048;
                        v654 = v406;
                        _os_log_impl(&dword_1C278D000, v470, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Added a synonym for token %ld", v653, 0x20u);
                      }

                      *__error() = v469;
                      if (v640 >= 0)
                      {
                        v472 = &v638;
                      }

                      else
                      {
                        v472 = v638;
                      }

                      v473 = createQueryNode(v592, v472, 112, 1, 0, v436, 0.0);
                      v571 = makeOrNode(v571, v473);
                      v432 = v558;
                    }

                    if ([(query_node *)v508 length])
                    {
                      v474 = createQueryNode(v592, [(query_node *)v508 UTF8String], 112, 1, 0, v436, 0.0);
                      v571 = makeOrNode(v571, v474);
                      v475 = *__error();
                      v476 = _SILogForLogForCategory(20);
                      if (os_log_type_enabled(v476, OS_LOG_TYPE_DEFAULT))
                      {
                        v477 = SHIBYTE(v651);
                        v478 = v649;
                        v701.location = v584;
                        v701.length = v589;
                        v479 = NSStringFromRange(v701);
                        *v653 = 138413570;
                        v480 = &v649;
                        if (v477 < 0)
                        {
                          v480 = v478;
                        }

                        *&v653[4] = a4;
                        *&v653[12] = 2080;
                        *&v653[14] = v480;
                        *&v653[22] = 2112;
                        v654 = v508;
                        v655 = 2048;
                        *v656 = v406;
                        *&v656[8] = 2112;
                        *&v656[10] = v479;
                        v657 = 1024;
                        v437 = objc;
                        v658 = objc;
                        _os_log_impl(&dword_1C278D000, v476, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Added lemma node: %@, for token: %lu, range:%@, type: %d", v653, 0x3Au);
                        v433 = v566;
                      }

                      v405 += 2;
                      *__error() = v475;
                      v432 = v558;
                    }

                    else
                    {
                      ++v405;
                    }

                    if (isLLMPersonArgId(v437) && [ranged count])
                    {
                      v481 = createQueryNode(v592, [objc_msgSend(ranged objectAtIndexedSubscript:{0), "UTF8String"}], 112, 1, 0, v436, 0.0);
                      v571 = makeOrNode(v571, v481);
                    }

                    if (SHIBYTE(v640) < 0)
                    {
                      operator delete(v638);
                    }

                    break;
                  case 8u:
                    v643 = 0u;
                    v644 = 0u;
                    *v641 = 0u;
                    v642 = 0u;
                    v462 = 0;
                    v463 = [v546 countByEnumeratingWithState:v641 objects:__p count:16];
                    if (v463)
                    {
                      v464 = *v642;
                      do
                      {
                        for (nn = 0; nn != v463; ++nn)
                        {
                          if (*v642 != v464)
                          {
                            objc_enumerationMutation(v546);
                          }

                          v466 = createQueryNode(v592, [*(v641[1] + nn) UTF8String], 112, 1, 0, v436, 0.0);
                          v462 = makeAndNode(v462, v466);
                        }

                        v463 = [v546 countByEnumeratingWithState:v641 objects:__p count:16];
                      }

                      while (v463);
                    }

                    v571 = makeOrNode(v571, v462);
                    v432 = v558;
                    v433 = v566;
                    break;
                  default:
                    goto LABEL_689;
                }

                v433 += 24;
                v403 = v522;
                if (v433 == v506)
                {
                  goto LABEL_717;
                }

                continue;
              }
            }

            v413 = *__error();
            v482 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v482, OS_LOG_TYPE_DEFAULT))
            {
              v483 = SHIBYTE(v651);
              v484 = v649;
              v702.location = v411;
              v702.length = v589;
              v485 = NSStringFromRange(v702);
              *v653 = 138413058;
              v486 = &v649;
              if (v483 < 0)
              {
                v486 = v484;
              }

              *&v653[4] = a4;
              *&v653[12] = 2080;
              *&v653[14] = v486;
              *&v653[22] = 2048;
              v654 = v406;
              v655 = 2112;
              *v656 = v485;
              _os_log_impl(&dword_1C278D000, v482, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Skipping token: %lu, range: %@ (ERROR: UTF8 encoding failed)", v653, 0x2Au);
              v403 = v522;
            }
          }

          else
          {
            v413 = *__error();
            v414 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v414, OS_LOG_TYPE_DEFAULT))
            {
              v415 = SHIBYTE(v651);
              v416 = v649;
              v696.location = v411;
              v696.length = v589;
              v417 = NSStringFromRange(v696);
              *v653 = 138413058;
              v418 = &v649;
              if (v415 < 0)
              {
                v418 = v416;
              }

              *&v653[4] = a4;
              *&v653[12] = 2080;
              *&v653[14] = v418;
              *&v653[22] = 2048;
              v654 = v406;
              v655 = 2112;
              *v656 = v417;
              _os_log_impl(&dword_1C278D000, v414, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Skipping token: %lu, range: %@ (ERROR: empty sub-query after trimming)", v653, 0x2Au);
              v403 = v522;
            }
          }
        }

        *__error() = v413;
LABEL_631:
        if (SHIBYTE(v651) < 0)
        {
          operator delete(v649);
        }

        v406 = (v406 + 1);
        if (v406 >= [v403 count])
        {
          goto LABEL_740;
        }
      }
    }

    v405 = 0;
    v527 = 0;
LABEL_740:
    v487 = *__error();
    v499 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v499, OS_LOG_TYPE_DEFAULT))
    {
      *v653 = 138412546;
      *&v653[4] = a4;
      *&v653[12] = 1024;
      *&v653[14] = v405;
      _os_log_impl(&dword_1C278D000, v499, OS_LOG_TYPE_DEFAULT, "%@ {Pre-extraction Match} Added %d nodes", v653, 0x12u);
    }

    goto LABEL_732;
  }

  v487 = *__error();
  v492 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v492, OS_LOG_TYPE_DEFAULT))
  {
    v493 = [v522 count];
    v494 = [(query_node *)v534 count];
    *buf = 138412802;
    *&buf[4] = a4;
    *&buf[12] = 2048;
    *&buf[14] = v493;
    *&buf[22] = 2048;
    v671 = v494;
    v489 = "%@ {Pre-extraction Match} Skipping query (ERROR: token count mismatch <%lu,%lu>)";
    v490 = v492;
    v491 = 32;
    goto LABEL_730;
  }

LABEL_731:
  v527 = 0;
LABEL_732:
  *__error() = v487;
  v495 = makeOrNode(v530, v527);
  result = makeOrNode(v525, v495);
LABEL_733:
  if (result)
  {
    v496 = result;
    v497 = PhRankingBoostTree();
    return makeAndNode(v496, v497);
  }

  return result;
}