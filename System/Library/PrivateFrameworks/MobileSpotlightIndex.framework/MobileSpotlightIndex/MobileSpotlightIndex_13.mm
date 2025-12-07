uint64_t ___ZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbb_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v3 + 8 * a2);
  if (*v2 != v4)
  {
    *v2 = v4;
    if (!RLEOIDArrayContainsOid(*(a1 + 48), *(v3 + 8 * a2)))
    {
      if (*(a1 + 72) != 1 || *(*(a1 + 40) + 8 * a2 + 4) != 2147284299)
      {
        return 1;
      }

      v8 = *(a1 + 56);
      v9 = *__error();
      v10 = _SILogForLogForCategory(1);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v11)
        {
          v12 = *(a1 + 64);
          v13 = *(v12 + 8);
          v14 = *(v13 + 608);
          v15 = *(v13 + 616);
          LODWORD(v13) = *(v13 + 152);
          v16 = *(*(a1 + 40) + 8 * a2);
          v17 = (*(a1 + 56) + 80 * a2);
          v19 = *v17;
          v18 = v17[1];
          v28 = 134219520;
          v29 = v12;
          v30 = 2048;
          v31 = v14;
          v32 = 2048;
          v33 = v15;
          v34 = 1024;
          v35 = v13;
          v36 = 2048;
          v37 = v16;
          v38 = 2048;
          v39 = v18;
          v40 = 2048;
          v41 = v19;
          v20 = "### query: %p qid: (%lld,%lld) kind:%d found 0x%llx %llx%016llx";
          v21 = v10;
          v22 = 68;
LABEL_12:
          _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, v20, &v28, v22);
        }
      }

      else if (v11)
      {
        v23 = *(a1 + 64);
        v24 = *(v23 + 8);
        v25 = *(v24 + 608);
        v26 = *(v24 + 616);
        LODWORD(v24) = *(v24 + 152);
        v27 = *(*(a1 + 40) + 8 * a2);
        v28 = 134219008;
        v29 = v23;
        v30 = 2048;
        v31 = v25;
        v32 = 2048;
        v33 = v26;
        v34 = 1024;
        v35 = v24;
        v36 = 2048;
        v37 = v27;
        v20 = "### query: %p qid: (%lld,%lld) kind:%d found 0x%llx";
        v21 = v10;
        v22 = 48;
        goto LABEL_12;
      }

      *__error() = v9;
      return 1;
    }
  }

  return 0;
}

unsigned int *si_add_livequery(uint64_t a1, atomic_uint *a2, atomic_uint *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10600408BC92946uLL);
  atomic_fetch_add(a2 + 146, 1u);
  *(v6 + 1) = a2;
  atomic_fetch_add(a3, 1u);
  *(v6 + 5) = a3;
  atomic_store(1u, v6);
  v6[12] = 0;
  pthread_mutex_lock((a1 + 1712));
  CFSetAddValue(*(a1 + 1776), v6);
  if (!*(a2 + 15))
  {
    v7 = *a2;
    v8 = *(*a2 + 152);
    if (!v8)
    {
      v8 = *(v7 + 112);
      if (v8)
      {
        os_unfair_lock_lock((v7 + 48));
        if (!*(v7 + 152))
        {
          *(v7 + 152) = CFStringCreateByCombiningStrings(*MEMORY[0x1E695E480], *(v7 + 112), @",");
        }

        os_unfair_lock_unlock((v7 + 48));
        v8 = *(v7 + 152);
      }
    }

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &stru_1F4284FD0;
    }

    CFDictionaryGetValue(*(a1 + 1784), v9);
    Value = CFDictionaryGetValue(*(a1 + 1784), v9);
    *(a2 + 15) = Value;
    if (Value)
    {
      atomic_fetch_add_explicit(Value + 18, 1u, memory_order_relaxed);
    }

    else
    {
      v11 = malloc_type_zone_malloc(queryZone, 0x50uLL, 0xA4971684uLL);
      if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        LOWORD(v19.version) = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", &v19, 2u);
      }

      v19 = *byte_1F4281FF0;
      v11[1].__sig = CFBagCreateMutable(*MEMORY[0x1E695E480], 0, &v19);
      pthread_mutex_init(v11, 0);
      *v11[1].__opaque = 1;
      *(a2 + 15) = v11;
      CFDictionaryAddValue(*(a1 + 1784), v9, v11);
    }

    v12 = compileToLiveQuery(*(a2 + 9));
    *(a2 + 13) = query_node_unique_retain(*(a2 + 15), v12);
    db_free_query_node(v12);
    v13 = *(a2 + 10);
    if (v13)
    {
      v14 = compileToLiveQuery(v13);
      *(a2 + 14) = query_node_unique_retain(*(a2 + 15), v14);
      db_free_query_node(v14);
    }

    if (dword_1EBF46AD4 >= 5)
    {
      v16 = *__error();
      v17 = _SILogForLogForCategory(2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        node_unique_set_copy_description = _query_node_unique_set_copy_description(*(a2 + 15));
        LODWORD(v19.version) = 138412290;
        *(&v19.version + 4) = node_unique_set_copy_description;
        _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "live query nodes: %@", &v19, 0xCu);
        *__error() = v16;
        if (node_unique_set_copy_description)
        {
          CFRelease(node_unique_set_copy_description);
        }
      }

      else
      {
        *__error() = v16;
      }
    }
  }

  pthread_mutex_unlock((a1 + 1712));
  return v6;
}

int64_t _add_dirty_chunk(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  v67 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 804) & 8) != 0)
  {
    v49 = *__error();
    v50 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v62 = "_add_dirty_chunk";
      v63 = 1024;
      v64 = 492;
      v65 = 2080;
      v66 = a1 + 324;
      _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: %s: ERR: Can't add dirty chunks to a read-only db!", buf, 0x1Cu);
    }

    *__error() = v49;
    v51 = __si_assert_copy_extra_3233(*(a1 + 840), -1);
    v52 = v51;
    v53 = "";
    if (v51)
    {
      v53 = v51;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ERR: Can't add dirty chunks to a read-only db %s\n", "sdb2.c", 493, "0", v53, (a1 + 324));
    free(v52);
    if (__valid_fsp(*(a1 + 840)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v5 = a3;
  if (!a3)
  {
    v54 = __si_assert_copy_extra_3233(*(a1 + 840), -1);
    v55 = v54;
    v56 = "";
    if (v54)
    {
      v56 = v54;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ERR: Chunk size is null\n", "sdb2.c", 498, "size", v56);
    free(v55);
    if (!__valid_fsp(*(a1 + 840)))
    {
      v57 = 3072;
LABEL_86:
      *v57 = -559038737;
      abort();
    }

LABEL_83:
    v57 = 2989;
    goto LABEL_86;
  }

  LODWORD(v6) = a2;
  result = _dirty_datastore_locked(a1, a4);
  if (result)
  {
    return result;
  }

  v8 = *(a1 + 872);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(a1 + 872);
    while (1)
    {
      v11 = (v10 + v9) >> 1;
      v12 = *(*(a1 + 864) + 8 * v11);
      v13 = v11;
      if (v12 <= v6)
      {
        if (v12 >= v6)
        {
          goto LABEL_11;
        }

        v9 = v11 + 1;
        v13 = v10;
      }

      v10 = v13;
      if (v9 >= v13)
      {
        goto LABEL_11;
      }
    }
  }

  v11 = 0;
LABEL_11:
  if (v11)
  {
    v14 = v11 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (!v8)
  {
LABEL_42:
    v29 = *(a1 + 876);
    if (v8 + 1 >= v29)
    {
      *(a1 + 876) = v29 + 128;
      result = malloc_type_realloc(*(a1 + 864), 8 * (v29 + 128), 0x100004000313F17uLL);
      if (!result)
      {
        *(a1 + 876) -= 128;
        return result;
      }

      *(a1 + 864) = result;
      v8 = *(a1 + 872);
    }

    else
    {
      result = *(a1 + 864);
    }

    v30 = 8 * v14;
    result = memmove((result + v30 + 8), (result + v30), 8 * (v8 - v14));
    v31 = (*(a1 + 864) + v30);
    *v31 = v6;
    v31[1] = v5;
    v32 = *(a1 + 872) + 1;
    goto LABEL_47;
  }

  v15 = *(a1 + 12);
  while (1)
  {
    v16 = v6 << v15;
    v17 = v16 + v5;
    v18 = v14;
    v19 = (*(a1 + 864) + 8 * v14);
    while (1)
    {
      v20 = *v19;
      v21 = v19[1];
      v22 = v20 << v15;
      if (v16 >= v20 << v15 && v16 <= (v20 << v15) + v21)
      {
        break;
      }

      if (v22 <= v17 && v22 >= v16)
      {
        break;
      }

      if (v6 <= v20)
      {
        v14 = v18;
        goto LABEL_42;
      }

      ++v18;
      v19 += 2;
      if (v8 <= v18)
      {
        if (v8 <= v14 + 1)
        {
          ++v14;
        }

        else
        {
          v14 = *(a1 + 872);
        }

        goto LABEL_42;
      }
    }

    result = *v19;
    if (*v19 >= v6)
    {
      v25 = v6;
    }

    else
    {
      v25 = result;
    }

    v26 = result << v15;
    v27 = v26 + HIDWORD(result);
    if (v27 <= v17)
    {
      v27 = v16 + v5;
    }

    v28 = v27 - (v25 << v15);
    if (v28 <= 4294967294)
    {
      break;
    }

    if (v6 < result)
    {
      LODWORD(v5) = (result - v6) << v15;
      v14 = v18;
      goto LABEL_42;
    }

    v5 = (v26 + v21 - v17);
    v6 = (v26 + v21) >> v15;
    v14 = v18 + 1;
    if (v18 + 1 >= v8)
    {
      goto LABEL_42;
    }
  }

  *v19 = v25 | (v28 << 32);
  v33 = v18 + 1;
  v34 = *(a1 + 872);
  if (v18 + 1 < v34)
  {
    v35 = v18 + 1;
    v36 = 8 * (v18 + 1);
    while (1)
    {
      v37 = *(a1 + 864);
      v38 = (v37 + 8 * v18);
      v39 = *(a1 + 12);
      v40 = *v38 << v39;
      v41 = (v37 + v36);
      result = *v41 << v39;
      if ((v40 < result || v40 > result + v41[1]) && (result < v40 || result > v40 + v38[1]))
      {
        goto LABEL_72;
      }

      v44 = *v38;
      v45 = *v41;
      if (*v38 >= v45)
      {
        result = v45;
      }

      else
      {
        result = v44;
      }

      v46 = (v44 << v39) + HIDWORD(v44);
      if (v46 <= ((v45 << v39) + HIDWORD(v45)))
      {
        v46 = (v45 << v39) + HIDWORD(v45);
      }

      v47 = v46 - (result << v39);
      if (v47 > 4294967294)
      {
        break;
      }

      *v38 = result | (v47 << 32);
      ++v35;
      v34 = *(a1 + 872);
      v36 += 8;
      if (v34 <= v35)
      {
        goto LABEL_72;
      }
    }

    if (v44 < v45)
    {
      v38[1] = (v45 - v44) << v39;
LABEL_72:
      v48 = v33 - v35;
      if (v33 < v35)
      {
        result = memmove((*(a1 + 864) + 8 * v18 + 8), (*(a1 + 864) + 8 * v35), 8 * (v34 - v35));
        v32 = v48 + *(a1 + 872);
LABEL_47:
        *(a1 + 872) = v32;
        return result;
      }

      return result;
    }

    v58 = __si_assert_copy_extra_3233(0, -1);
    v59 = v58;
    if (v58)
    {
      v60 = v58;
    }

    else
    {
      v60 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 544, v60);
    free(v59);
    goto LABEL_83;
  }

  return result;
}

uint64_t fd_sync(uint64_t a1, int a2)
{
  fd_system_status_stall_if_busy();
  v8 = 0;
  result = _fd_acquire_fd(a1, &v8);
  if (result != -1)
  {
    v5 = result;
    if (a2)
    {
      v6 = (*(a1 + 56) & 8) == 0;
    }

    else
    {
      v6 = 0;
    }

    v7 = prot_fsync(result, v6);
    _fd_release_fd(a1, v5, 0, v8);
    return v7;
  }

  return result;
}

uint64_t db_downgrade_datastore(int *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      *buf = 136315650;
      v10 = "db_downgrade_datastore";
      v11 = 1024;
      v12 = 266;
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 266, v8);
    free(v7);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  pthread_mutex_lock((a1 + 146));
  *(a1 + 796) = 1;
  db_rwlock_wakeup((a1 + 146), 1, 1);

  return pthread_mutex_unlock((a1 + 146));
}

uint64_t db_store_dirty_chunk_info(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v4 = a1;
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return v4;
  }

  if (unlinkat(a2, "store.updates", 0) == -1)
  {
    v8 = *__error();
    v9 = *__error();
    v10 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "db_store_dirty_chunk_info";
      *&buf[12] = 1024;
      *&buf[14] = 758;
      *&buf[18] = 1024;
      *&buf[20] = v8;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: Error unliking store.updates: %d", buf, 0x18u);
    }

    *__error() = v9;
  }

  v11 = si_openat_protected(a2, "store.updates", 536872450, 3);
  if (v11 != -1)
  {
    v12 = v11;
    v45 = 0u;
    v46 = 0u;
    memset(buf, 0, sizeof(buf));
    if ((store_stream_init_fd(buf, v11, 0, 0, 1) & 1) == 0)
    {
      v4 = *&buf[16];
      if (!*&buf[16])
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (a3)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_31;
    }

    if (*v4 == 1685287992)
    {
      v21 = *(v4 + 804);
      if ((v21 & 0x14) != 0 || !*(*(v4 + 880) + 8) && !*(*(v4 + 888) + 8) && !*(*(v4 + 896) + 8) && !*(*(v4 + 904) + 8) && !*(*(v4 + 912) + 8))
      {
        if (*(*(v4 + 856) + 12))
        {
          v36 = __si_assert_copy_extra_3233(0, -1);
          v29 = v36;
          v37 = "";
          if (v36)
          {
            v37 = v36;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 15238, "(dst->dbm->flags& 0x0001) == 0", v37);
LABEL_48:
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

        v15 = *(v4 + 864);
        v13 = *(v4 + 872);
        v14 = *(v4 + 876);
        if (a4)
        {
          *(v4 + 4) |= 8u;
          *(v4 + 804) = v21 | 8;
        }

LABEL_31:
        v22 = *(&v45 + 1);
        if (v45 - *(&v45 + 1) < 6uLL)
        {
          *&__src[9] = 0;
          *&__src[1] = 0;
          *&__src[24] = 0;
          *&__src[17] = 0;
          __src[0] = 1;
          store_stream_write_bytes(buf, __src, 1uLL);
        }

        else
        {
          *(v46 + *(&v45 + 1)) = 1;
          *(&v45 + 1) = v22 + 1;
        }

        store_stream_write_vint32(buf, v13);
        store_stream_write_vint32(buf, v14);
        if (v13)
        {
          v23 = 0;
          v24 = 0;
          do
          {
            if (v23 * 4)
            {
              v25 = v15[v23];
              if (v25 <= v15[v23 - 2])
              {
                v28 = __si_assert_copy_extra_332();
                v29 = v28;
                v30 = "";
                if (v28)
                {
                  v30 = v28;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "core-db.c", 795, "dirty_chunks[i].pgnum > dirty_chunks[i-1].pgnum", v30);
                goto LABEL_48;
              }

              v26 = v25 - v24;
            }

            else
            {
              v26 = *v15;
            }

            store_stream_write_vint32(buf, v26);
            if (v15[v23 + 1] == 0x10000)
            {
              v27 = 0;
            }

            else
            {
              v27 = v15[v23 + 1];
            }

            store_stream_write_vint32(buf, v27);
            v24 = v15[v23];
            v23 += 2;
          }

          while (2 * v13 != v23);
        }

        store_stream_flush(buf, 1);
        v4 = *&buf[16];
        store_stream_destroy(buf);
        if (!v4)
        {
LABEL_16:
          close(v12);
          if (!v4)
          {
            return v4;
          }

          goto LABEL_17;
        }

LABEL_15:
        _fd_ftruncate(v12, 0);
        goto LABEL_16;
      }

      v32 = __si_assert_copy_extra_3233(0, -1);
      v33 = v32;
      v34 = "";
      if (v32)
      {
        v34 = v32;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 15236, "dst->string_table[i]->dirty_page == 0", v34);
      free(v33);
      if (!__valid_fs(-1))
      {
        v35 = 3072;
LABEL_61:
        *v35 = -559038737;
        abort();
      }
    }

    else
    {
      v38 = *__error();
      v39 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = *v4;
        *__src = 136315650;
        *&__src[4] = "db_get_dirty_chunks";
        *&__src[12] = 1024;
        *&__src[14] = 434;
        *&__src[18] = 1024;
        *&__src[20] = v40;
        _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", __src, 0x18u);
      }

      *__error() = v38;
      v41 = __si_assert_copy_extra_332();
      v42 = v41;
      if (v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 434, v43);
      free(v42);
    }

    v35 = 2989;
    goto LABEL_61;
  }

  v4 = *__error();
  v16 = *__error();
  v17 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "db_store_dirty_chunk_info";
    *&buf[12] = 1024;
    *&buf[14] = 765;
    *&buf[18] = 1024;
    *&buf[20] = v4;
    _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Error opening store.updates: %d", buf, 0x18u);
  }

  *__error() = v16;
  if (v4)
  {
LABEL_17:
    v18 = *__error();
    v19 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "db_store_dirty_chunk_info";
      *&buf[12] = 1024;
      *&buf[14] = 816;
      *&buf[18] = 1024;
      *&buf[20] = v4;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: Error storing dirty sdb pages: %d", buf, 0x18u);
    }

    *__error() = v18;
  }

  return v4;
}

void *store_stream_write_vint32(void *result, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = result[5];
  if ((result[4] - v2) < 6)
  {
    memset(v9, 0, sizeof(v9));
    if (a2 >> 28)
    {
      LOBYTE(v9[0]) = a2 | 0x80;
      BYTE1(v9[0]) = (a2 >> 7) | 0x80;
      BYTE2(v9[0]) = (a2 >> 14) | 0x80;
      BYTE3(v9[0]) = (a2 >> 21) | 0x80;
      BYTE4(v9[0]) = a2 >> 28;
      v8 = 5;
    }

    else if (a2 >= 0x200000)
    {
      LOBYTE(v9[0]) = a2 | 0x80;
      BYTE1(v9[0]) = (a2 >> 7) | 0x80;
      BYTE2(v9[0]) = (a2 >> 14) | 0x80;
      BYTE3(v9[0]) = a2 >> 21;
      v8 = 4;
    }

    else if (a2 >= 0x4000)
    {
      LOBYTE(v9[0]) = a2 | 0x80;
      BYTE1(v9[0]) = (a2 >> 7) | 0x80;
      BYTE2(v9[0]) = a2 >> 14;
      v8 = 3;
    }

    else if (a2 >= 0x80)
    {
      LOBYTE(v9[0]) = a2 | 0x80;
      BYTE1(v9[0]) = a2 >> 7;
      v8 = 2;
    }

    else
    {
      LOBYTE(v9[0]) = a2;
      v8 = 1;
    }

    return store_stream_write_bytes(result, v9, v8);
  }

  else
  {
    v3 = result[6];
    if (a2 >> 28)
    {
      v6 = (v3 + v2);
      *v6 = a2 | 0x80;
      v6[1] = (a2 >> 7) | 0x80;
      v6[2] = (a2 >> 14) | 0x80;
      v6[3] = (a2 >> 21) | 0x80;
      v5 = v2 + 5;
      v6[4] = a2 >> 28;
    }

    else if (a2 >= 0x200000)
    {
      v7 = (v3 + v2);
      *v7 = a2 | 0x80;
      v7[1] = (a2 >> 7) | 0x80;
      v7[2] = (a2 >> 14) | 0x80;
      v5 = v2 + 4;
      v7[3] = a2 >> 21;
    }

    else
    {
      v4 = (v3 + v2);
      if (a2 >= 0x4000)
      {
        *v4 = a2 | 0x80;
        v4[1] = (a2 >> 7) | 0x80;
        v5 = v2 + 3;
        v4[2] = a2 >> 14;
      }

      else if (a2 >= 0x80)
      {
        *v4 = a2 | 0x80;
        v5 = v2 + 2;
        v4[1] = a2 >> 7;
      }

      else
      {
        v5 = v2 + 1;
        *v4 = a2;
      }
    }

    result[5] = v5;
  }

  return result;
}

{
  v10 = *MEMORY[0x1E69E9840];
  v2 = result[5];
  if ((result[4] - v2) < 6)
  {
    memset(v9, 0, sizeof(v9));
    if (a2 >> 28)
    {
      LOBYTE(v9[0]) = a2 | 0x80;
      BYTE1(v9[0]) = (a2 >> 7) | 0x80;
      BYTE2(v9[0]) = (a2 >> 14) | 0x80;
      BYTE3(v9[0]) = (a2 >> 21) | 0x80;
      BYTE4(v9[0]) = a2 >> 28;
      v8 = 5;
    }

    else if (a2 >= 0x200000)
    {
      LOBYTE(v9[0]) = a2 | 0x80;
      BYTE1(v9[0]) = (a2 >> 7) | 0x80;
      BYTE2(v9[0]) = (a2 >> 14) | 0x80;
      BYTE3(v9[0]) = a2 >> 21;
      v8 = 4;
    }

    else if (a2 >= 0x4000)
    {
      LOBYTE(v9[0]) = a2 | 0x80;
      BYTE1(v9[0]) = (a2 >> 7) | 0x80;
      BYTE2(v9[0]) = a2 >> 14;
      v8 = 3;
    }

    else if (a2 >= 0x80)
    {
      LOBYTE(v9[0]) = a2 | 0x80;
      BYTE1(v9[0]) = a2 >> 7;
      v8 = 2;
    }

    else
    {
      LOBYTE(v9[0]) = a2;
      v8 = 1;
    }

    return store_stream_write_bytes_3266(result, v9, v8);
  }

  else
  {
    v3 = result[6];
    if (a2 >> 28)
    {
      v6 = (v3 + v2);
      *v6 = a2 | 0x80;
      v6[1] = (a2 >> 7) | 0x80;
      v6[2] = (a2 >> 14) | 0x80;
      v6[3] = (a2 >> 21) | 0x80;
      v5 = v2 + 5;
      v6[4] = a2 >> 28;
    }

    else if (a2 >= 0x200000)
    {
      v7 = (v3 + v2);
      *v7 = a2 | 0x80;
      v7[1] = (a2 >> 7) | 0x80;
      v7[2] = (a2 >> 14) | 0x80;
      v5 = v2 + 4;
      v7[3] = a2 >> 21;
    }

    else
    {
      v4 = (v3 + v2);
      if (a2 >= 0x4000)
      {
        *v4 = a2 | 0x80;
        v4[1] = (a2 >> 7) | 0x80;
        v5 = v2 + 3;
        v4[2] = a2 >> 14;
      }

      else if (a2 >= 0x80)
      {
        *v4 = a2 | 0x80;
        v5 = v2 + 2;
        v4[1] = a2 >> 7;
      }

      else
      {
        v5 = v2 + 1;
        *v4 = a2;
      }
    }

    result[5] = v5;
  }

  return result;
}

uint64_t db_commit_sync_datastore(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v20 = *__error();
    v21 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_commit_sync_datastore";
      v27 = 1024;
      v28 = 269;
      v29 = 1024;
      LODWORD(v30) = v22;
      _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v20;
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 269, v25);
    free(v24);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v17 = *__error();
    v18 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = data_map_count(*(a1 + 920));
      *buf = 134217984;
      *&buf[4] = v19;
      _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "Commit sync at vector count %lld", buf, 0xCu);
    }

    *__error() = v17;
  }

  v4 = *(a1 + 4);
  if ((v4 & 2) == 0)
  {
    v5 = v4 | 0x401;
    v4 = v4 & 0xFFFFF9FC | 0x201;
    if (a2)
    {
      v4 = v5;
    }

    *(a1 + 4) = v4;
  }

  if ((v4 & 0x80) != 0)
  {
    v6.i32[0] = *a1;
    v6.i32[1] = v4;
    v6.i64[1] = *(a1 + 8);
    *a1 = vrev32q_s8(v6);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  }

  v7 = fd_pwrite(*(a1 + 848), a1, 0x1000uLL, 0);
  v8 = *__error();
  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    *a1 = vrev32q_s8(*a1);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  }

  if (v7 == 4096)
  {
    v9 = *(a1 + 848);
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

    *buf = 0;
    v10 = _fd_acquire_fd(v9, buf);
    if (v10 != -1)
    {
      v11 = v10;
      prot_fsync(v10, 0);
      _fd_release_fd(v9, v11, 0, *buf);
    }

    if ((*(a1 + 804) & 0x14) != 0)
    {
      data_map_commit_sync(*(a1 + 880));
      if ((*(a1 + 804) & 0x14) != 0)
      {
        data_map_commit_sync(*(a1 + 888));
        if ((*(a1 + 804) & 0x14) != 0)
        {
          data_map_commit_sync(*(a1 + 896));
          if ((*(a1 + 804) & 0x14) != 0)
          {
            data_map_commit_sync(*(a1 + 904));
            if ((*(a1 + 804) & 0x14) != 0)
            {
              data_map_commit_sync(*(a1 + 912));
            }
          }
        }
      }
    }

    data_map_commit_sync(*(a1 + 920));
    return 0;
  }

  else
  {
    *(a1 + 800) = v8;
    v12 = *__error();
    v13 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = __error();
      v16 = strerror(*v15);
      *buf = 136315906;
      *&buf[4] = "db2_commit_sync_datastore";
      v27 = 1024;
      v28 = 8677;
      v29 = 2080;
      v30 = a1 + 324;
      v31 = 2080;
      v32 = v16;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_sync_datastore: ERR: Can't write DST header (%s)\n", buf, 0x26u);
    }

    *__error() = v12;
    *(a1 + 4) |= 2u;
  }

  return v8;
}

uint64_t data_map_commit_sync(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = *(a1 + 216);
  if (v3 <= 842150449)
  {
    if (v3 == -572662307)
    {
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      v2 = data_map_commit_sync(*(a1 + 440));
      v13 = (*(**(a1 + 448) + 48))(*(a1 + 448));
      if (v2 != v13)
      {
        v27 = v13;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v33 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v34 = 1024;
          *v35 = 267;
          *&v35[4] = 2080;
          *&v35[6] = "data_map_double_commit_sync";
          v36 = 2080;
          v37 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v33 = v2;
          v34 = 2048;
          *v35 = v27;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v28 = __si_assert_copy_extra_332();
        v29 = v28;
        v30 = "";
        if (v28)
        {
          v30 = v28;
        }

        __message_assert(v28, "data_map_double.m", 267, "output == output_new", v30);
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

      pthread_rwlock_unlock((a1 + 224));
    }

    else if (v3 == -270471200)
    {
      if (*(a1 + 480) || (v4 = *(*(a1 + 272) + 16), v4 == 1))
      {
        v5 = *__error();
        v6 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 224);
          *buf = 134217984;
          v33 = v7;
          _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "Already clean cs; don't update next_id = %lld", buf, 0xCu);
        }

        *__error() = v5;
      }

      else
      {
        v14 = *(a1 + 408);
        if (v4 == 2)
        {
          v15 = 3;
        }

        else
        {
          v15 = 0;
        }

        if (v4)
        {
          v16 = v15;
        }

        else
        {
          v16 = 1;
        }

        SIActivityJournalEvent(v14, *(a1 + 416), 8u, v16, *(a1 + 224));
        v17 = *(a1 + 272);
        *(v17 + 16) = 2;
        fd_pwrite(*(a1 + 248), v17, 0x54uLL, 0);
        v18 = *__error();
        v19 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 224);
          *buf = 134217984;
          v33 = v20;
          _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "cs update next_id = %lld", buf, 0xCu);
        }

        *__error() = v18;
        fd_sync(*(a1 + 248), 0);
        v21 = *(a1 + 272);
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

        SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 9u, v23, *(a1 + 224));
      }

      return *(a1 + 480);
    }

    return v2;
  }

  if (v3 == 1684300900)
  {
    if (*(a1 + 4576) || (v9 = *(a1 + 272), *(v9 + 16) == 1))
    {
      v10 = *__error();
      v11 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 224);
        *buf = 134217984;
        v33 = v12;
        _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "Already clean cs; don't update next_id = %lld", buf, 0xCu);
      }

      *__error() = v10;
    }

    else
    {
      *(v9 + 16) = 2;
      fd_pwrite(*(a1 + 248), v9, 0x5CuLL, 0);
      v24 = *__error();
      v25 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 224);
        *buf = 134217984;
        v33 = v26;
        _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "cs update next_id = %lld", buf, 0xCu);
      }

      *__error() = v24;
      fd_sync(*(a1 + 248), 0);
    }

    return *(a1 + 4576);
  }

  if (v3 != 842150450)
  {
    return v2;
  }

  return data_map32_commit_sync(a1);
}

uint64_t data_map32_commit_sync(uint64_t a1)
{
  result = *(a1 + 1464);
  if (!result)
  {
    v3 = *(*(a1 + 1296) + 16);
    if (v3 == 1)
    {
      return 0;
    }

    else
    {
      if (v3 == 2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 0;
      }

      if (v3)
      {
        v5 = v4;
      }

      else
      {
        v5 = 1;
      }

      SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 8u, v5, *(a1 + 220));
      v6 = *(a1 + 1296);
      *(v6 + 16) = 2;
      fd_pwrite(*(a1 + 1272), v6, 0x38uLL, 0);
      fd_sync(*(a1 + 1272), 0);
      v7 = *(a1 + 1296);
      if (v7)
      {
        v8 = *(v7 + 16);
        if (v8 < 3)
        {
          v9 = v8 + 1;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 9u, v9, *(a1 + 220));
      return *(a1 + 1464);
    }
  }

  return result;
}

uint64_t db_shadow_datastore(int *a1, int a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v36 = *__error();
    v37 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = *a1;
      *valuePtr = 136315650;
      *&valuePtr[4] = "db_shadow_datastore";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = 270;
      v44 = 1024;
      v45 = v38;
      _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", valuePtr, 0x18u);
    }

    *__error() = v36;
    v39 = __si_assert_copy_extra_332();
    v40 = v39;
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 270, v41);
    free(v40);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v33 = *__error();
    v34 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = data_map_count(*(a1 + 115));
      *valuePtr = 134217984;
      *&valuePtr[4] = v35;
      _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "Shadow at vector count %lld", valuePtr, 0xCu);
    }

    *__error() = v33;
  }

  v4 = *(a1 + 106);
  if (v4)
  {
    v5 = *(v4 + 44);
  }

  else
  {
    v5 = -1;
  }

  *valuePtr = v5;
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (registeredCloneFds)
  {
    v7 = CFSetContainsValue(registeredCloneFds, v6);
    pthread_mutex_unlock(&registeredFdsLock);
    CFRelease(v6);
    if (v7 && (a1[247] & 1) == 0)
    {
      v8 = a2 ^ 1;
      v9 = fd_copyfile(*(a1 + 106), *(a1 + 105), a2 ^ 1u);
      if ((v8 & 1) == 0)
      {
        if (db_upgrade_lock((a1 + 146)))
        {
          sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 8718);
        }

        v10 = *__error();
        v11 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 0;
          _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "Defragging index...", valuePtr, 2u);
        }

        *__error() = v10;
        v12 = *(a1 + 106);
        v13 = fd_dup(v12);
        *(a1 + 106) = v13;
        if (*(a1 + 988) == 1)
        {
          if (v12)
          {
            v14 = *(v12 + 88);
          }

          else
          {
            v14 = 0.0;
          }

          v23 = v14 - CFAbsoluteTimeGetCurrent();
          if (v23 > 0.0)
          {
            v42 = 0;
            v24 = _fd_acquire_fd(v13, &v42);
            *valuePtr = 0;
            *&valuePtr[8] = (v23 * 1000000000.0);
            if (!fcntl(v24, 108, valuePtr))
            {
              if (v12)
              {
                *(v12 + 88) = 0;
              }

              if (v13)
              {
                *(v13 + 11) = v14;
              }
            }

            _fd_release_fd(v13, v24, 0, v42);
          }

          v13 = *(a1 + 106);
        }

        fd_copyfile(*(a1 + 105), v13, 1);
        fd_release(v12);
        pthread_mutex_lock((a1 + 146));
        *(a1 + 796) = 1;
        db_rwlock_wakeup((a1 + 146), 1, 1);
        pthread_mutex_unlock((a1 + 146));
      }

      if (v9)
      {
        v25 = *__error();
        v26 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 136315906;
          *&valuePtr[4] = "db2_shadow_datastore";
          *&valuePtr[12] = 1024;
          *&valuePtr[14] = 8739;
          v44 = 1024;
          v45 = v9;
          v46 = 2080;
          v47 = a1 + 81;
          _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: copyFile: ERR:%d (%s)\n", valuePtr, 0x22u);
        }

        *__error() = v25;
        v18 = a1[1];
LABEL_46:
        a1[1] = v18 | 2;
        a1[200] = v9;
        goto LABEL_55;
      }

      a1[218] = 0;
      goto LABEL_48;
    }
  }

  else
  {
    pthread_mutex_unlock(&registeredFdsLock);
    CFRelease(v6);
  }

  if ((a1[1] & 0x80) != 0)
  {
    *a1 = vrev32q_s8(*a1);
    a1[4] = bswap32(a1[4]);
    *(a1 + 5) = vrev64q_s8(*(a1 + 5));
    *(a1 + 9) = vrev32q_s8(*(a1 + 9));
    *(a1 + 13) = vrev32q_s8(*(a1 + 13));
  }

  v15 = sync_dirty_chunks(a1);
  if (!v15)
  {
    v20 = *(a1 + 105);
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

    *valuePtr = 0;
    v21 = _fd_acquire_fd(v20, valuePtr);
    if (v21 != -1)
    {
      v22 = v21;
      prot_fsync(v21, 0);
      _fd_release_fd(v20, v22, 0, *valuePtr);
    }

LABEL_48:
    if ((a1[201] & 0x14) != 0)
    {
      data_map_shadow(*(a1 + 110));
      if ((a1[201] & 0x14) != 0)
      {
        data_map_shadow(*(a1 + 111));
        if ((a1[201] & 0x14) != 0)
        {
          data_map_shadow(*(a1 + 112));
          if ((a1[201] & 0x14) != 0)
          {
            data_map_shadow(*(a1 + 113));
            if ((a1[201] & 0x14) != 0)
            {
              data_map_shadow(*(a1 + 114));
            }
          }
        }
      }
    }

    data_map_shadow(*(a1 + 115));
    v9 = 0;
    goto LABEL_55;
  }

  v9 = v15;
  v16 = *__error();
  v17 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *valuePtr = 136315906;
    *&valuePtr[4] = "db2_shadow_datastore";
    *&valuePtr[12] = 1024;
    *&valuePtr[14] = 8790;
    v44 = 1024;
    v45 = v9;
    v46 = 2080;
    v47 = a1 + 81;
    _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: sync_dirty_chunks: ERR:%d (%s)\n", valuePtr, 0x22u);
  }

  *__error() = v16;
  v18 = a1[1];
  if (v18 < 0)
  {
    v19 = vrev32q_s8(*a1);
    *a1 = v19;
    a1[4] = bswap32(a1[4]);
    *(a1 + 5) = vrev64q_s8(*(a1 + 5));
    *(a1 + 9) = vrev32q_s8(*(a1 + 9));
    *(a1 + 13) = vrev32q_s8(*(a1 + 13));
    v18 = v19.i32[1];
  }

  if (v9 != 28)
  {
    goto LABEL_46;
  }

LABEL_55:
  v27 = *__error();
  v28 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 115);
    if (v29)
    {
      v30 = 0;
      v31 = *(v29 + 216);
      if (v31 > 842150449)
      {
        if (v31 != 1684300900)
        {
          if (v31 == 842150450)
          {
            v30 = (*(v29 + 220) - 1);
          }

          goto LABEL_67;
        }
      }

      else
      {
        if (v31 == -572662307)
        {
          v30 = data_map_double_count(*(a1 + 115));
          goto LABEL_67;
        }

        if (v31 != -270471200)
        {
          goto LABEL_67;
        }
      }

      v30 = *(v29 + 224) - 1;
    }

    else
    {
      v30 = 0;
    }

LABEL_67:
    *valuePtr = 134217984;
    *&valuePtr[4] = v30;
    _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "Shadow completed at vector count %lld", valuePtr, 0xCu);
  }

  *__error() = v27;
  return v9;
}

uint64_t sync_dirty_chunks(uint64_t a1)
{
  v102 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    *(a1 + 12) = bswap32(*(a1 + 12));
  }

  st_size = fd_lseek(*(a1 + 848), 0, 2);
  if ((st_size & 0x8000000000000000) == 0)
  {
LABEL_4:
    v3 = fd_lseek(*(a1 + 840), 0, 2);
    if (v3 != -1)
    {
      v4 = *(a1 + 872);
      memset(v94, 0, sizeof(v94));
      v92 = 0;
      v93 = v94;
      if (!v4)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v22 = 0;
          LOWORD(buf.st_dev) = 0;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", &buf, 2u);
          v23 = -1;
          v24 = -1;
          v25 = 0;
        }

        else
        {
          v23 = -1;
          v24 = -1;
          v25 = 0;
          v22 = 0;
        }

        goto LABEL_58;
      }

      v5 = v3;
      v6 = fd_mmap(*(a1 + 848), st_size, 1, 1, 0);
      if (v6 != -1)
      {
        v7 = v6;
        v8 = v6;
        v9 = fd_mmap(*(a1 + 840), st_size, 3, 1, 0);
        if (v9 == -1)
        {
          v12 = *__error();
          v48 = _SILogForLogForCategory(7);
          v49 = 2 * (dword_1EBF46AE8 < 4);
          if (os_log_type_enabled(v48, v49))
          {
            LOWORD(buf.st_dev) = 0;
            _os_log_impl(&dword_1C278D000, v48, v49, "sync_dirty_chunks: ERR: Failed to map master", &buf, 2u);
          }

          v15 = -1;
          goto LABEL_46;
        }

        v10 = v9;
        v11 = v9;
        if (v5 != st_size && fd_truncate(*(a1 + 840), st_size))
        {
          v12 = *__error();
          v13 = _SILogForLogForCategory(7);
          v14 = 2 * (dword_1EBF46AE8 < 4);
          if (os_log_type_enabled(v13, v14))
          {
            buf.st_dev = 134217984;
            *&buf.st_mode = st_size;
            _os_log_impl(&dword_1C278D000, v13, v14, "sync_dirty_chunks: ERR: Failed to truncate master fd to %lld\n", &buf, 0xCu);
          }

          v15 = v11;
LABEL_46:
          v50 = v15;
          *__error() = v12;
          v51 = *__error();
          v52 = v8;
          v53 = v50;
          v54 = st_size;
          goto LABEL_89;
        }

        v32 = v93;
        *v93 = v8;
        v32[1] = st_size;
        v32[2] = *(a1 + 840);
        v32[3] = v11;
        v86 = v11;
        v32[4] = st_size;
        v32[5] = *(a1 + 848);
        v92 = 2;
        add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
        buf.st_dev = 0;
        *v95 = 0;
        v34 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, &v92, 0x40000000, add_explicit + 1);
        *v95 = HIDWORD(v34);
        buf.st_dev = v34;
        v91 = __PAIR64__(v35, v36);
        v37 = threadData[9 * v34 + 1] + 320 * HIDWORD(v34);
        *(v37 + 216) = 0;
        v38 = *(v37 + 312);
        v39 = *(v37 + 224);
        v40 = v37;
        if (v39)
        {
          v39(*(v37 + 288));
        }

        st_dev = buf.st_dev;
        v89 = *v95;
        v88 = v91;
        if (!_setjmp(v40))
        {
          v85 = add_explicit;
          v55 = 0;
          v56 = v4;
          do
          {
            v57 = *(a1 + 864);
            v58 = *(v57 + v55) << *(a1 + 12);
            if (st_size > v58)
            {
              v59 = *(v57 + v55 + 4);
              if ((v58 + v59) <= st_size)
              {
                v59 = v59;
              }

              else
              {
                v59 = (st_size - v58);
              }

              memcpy((v10 + v58), (v7 + v58), v59);
            }

            v55 += 8;
            --v56;
          }

          while (v56);
          v60 = threadData[9 * st_dev + 1] + 320 * v89;
          *(v60 + 312) = v38;
          v61 = *(v60 + 232);
          if (v61)
          {
            v61(*(v60 + 288));
          }

          dropThreadId(st_dev, 0, v85 + 1);
          v22 = v4;
          v24 = v8;
          v23 = v86;
          v25 = st_size;
LABEL_58:
          if (v4 != *(a1 + 872))
          {
            v82 = __si_assert_copy_extra_3233(0, -1);
            v83 = v82;
            v84 = "";
            if (v82)
            {
              v84 = v82;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 880, "num_chunks == dst->num_chunks", v84);
            free(v83);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          v62 = fd_lseek(*(a1 + 840), 0, 2);
          if (v62 == -1)
          {
            goto LABEL_68;
          }

          if (v4 && v22 != *(a1 + 872))
          {
            v67 = *__error();
            if (v67)
            {
              v66 = v67;
            }

            else
            {
              v66 = 22;
            }

            v68 = *__error();
            v69 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              v81 = *(a1 + 872);
              buf.st_dev = 136316418;
              *&buf.st_mode = "sync_dirty_chunks";
              WORD2(buf.st_ino) = 1024;
              *(&buf.st_ino + 6) = 906;
              HIWORD(buf.st_uid) = 1024;
              buf.st_gid = v66;
              LOWORD(buf.st_rdev) = 1024;
              *(&buf.st_rdev + 2) = v22;
              *(&buf.st_rdev + 3) = 1024;
              LODWORD(buf.st_atimespec.tv_sec) = v81;
              WORD2(buf.st_atimespec.tv_sec) = 2080;
              *(&buf.st_atimespec.tv_sec + 6) = a1 + 324;
              _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, "%s:%d: sync_dirty_chunks: ERR:%d count:%d expected %d! (%s)\n", &buf, 0x2Eu);
            }

            *__error() = v68;
          }

          else
          {
            *(a1 + 872) = 0;
            if ((v62 & 0x8000000000000000) == 0)
            {
              if (v62 > st_size)
              {
                goto LABEL_64;
              }

              goto LABEL_87;
            }

            memset(&buf, 0, sizeof(buf));
            v70 = *(a1 + 840);
            if (v70)
            {
              while (1)
              {
                v71 = fstatat(*(v70 + 44), *(v70 + 72), &buf, 2048);
                v72 = g_prot_error_callback;
                if (v71 != -1 || g_prot_error_callback == 0)
                {
                  break;
                }

                v74 = *(v70 + 40);
                v75 = __error();
                if (((*(v72 + 16))(v72, v74, *v75, 8) & 1) == 0)
                {
                  goto LABEL_83;
                }
              }

              if (!v71)
              {
                if (buf.st_size > st_size)
                {
LABEL_64:
                  if (fd_truncate(*(a1 + 840), st_size))
                  {
                    v63 = *__error();
                    v64 = _SILogForLogForCategory(7);
                    v65 = 2 * (dword_1EBF46AE8 < 4);
                    if (os_log_type_enabled(v64, v65))
                    {
                      buf.st_dev = 134217984;
                      *&buf.st_mode = st_size;
                      _os_log_impl(&dword_1C278D000, v64, v65, "sync_dirty_chunks: ERR: Failed to truncate master fd to %lld\n", &buf, 0xCu);
                    }

                    *__error() = v63;
LABEL_68:
                    v66 = *__error();
                    goto LABEL_88;
                  }
                }

LABEL_87:
                v66 = 0;
                goto LABEL_88;
              }
            }

LABEL_83:
            v76 = *__error();
            v77 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              *v95 = 136315650;
              v96 = "sync_dirty_chunks";
              v97 = 1024;
              v98 = 915;
              v99 = 2080;
              v100 = a1 + 324;
              _os_log_error_impl(&dword_1C278D000, v77, OS_LOG_TYPE_ERROR, "%s:%d: sync_dirty_chunks: ERR: Can't determine the master file size! (%s)\n", v95, 0x1Cu);
            }

            *__error() = v76;
            v66 = 22;
          }

LABEL_88:
          v78 = v66;
          v51 = v66;
          v52 = v24;
          v53 = v23;
          v54 = v25;
          if (v24 == -1)
          {
LABEL_90:
            v80 = v78;
            if (v23 != -1)
            {
              munmap(v23, v25);
            }

            return v80;
          }

LABEL_89:
          v23 = v53;
          v79 = v51;
          munmap(v52, v54);
          v78 = v79;
          v25 = v54;
          goto LABEL_90;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v87 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v87, 2u);
        }

        v40[78] = v38;
        v41 = v88;
        if (__THREAD_SLOT_KEY[0])
        {
          v42 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
          if (!v42)
          {
            goto LABEL_99;
          }
        }

        else
        {
          makeThreadId();
          v42 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
          if (!v42)
          {
            goto LABEL_99;
          }
        }

        v43 = v42;
        if (v42 < 0x801)
        {
LABEL_39:
          v44 = &threadData[9 * v43];
          v46 = *(v44 - 4);
          v45 = (v44 - 2);
          if (v46 > v41)
          {
            v47 = v43 - 1;
            do
            {
              CIOnThreadCleanUpPop(v47);
            }

            while (*v45 > v41);
          }

          dropThreadId(st_dev, 1, add_explicit + 1);
          CICleanUpReset(st_dev, HIDWORD(v88));
          v24 = v8;
          v23 = v86;
          v25 = st_size;
          v22 = 0;
          goto LABEL_58;
        }

LABEL_99:
        makeThreadId();
        v43 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        goto LABEL_39;
      }

      v29 = *__error();
      v30 = _SILogForLogForCategory(7);
      v31 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v30, v31))
      {
        LOWORD(buf.st_dev) = 0;
        _os_log_impl(&dword_1C278D000, v30, v31, "sync_dirty_chunks: ERR: Failed to map shadow", &buf, 2u);
      }

      *__error() = v29;
    }

    return *__error();
  }

  memset(&buf, 0, sizeof(buf));
  v16 = *(a1 + 848);
  if (v16)
  {
    while (1)
    {
      v17 = fstatat(*(v16 + 44), *(v16 + 72), &buf, 2048);
      v18 = g_prot_error_callback;
      if (v17 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v20 = *(v16 + 40);
      v21 = __error();
      if (((*(v18 + 16))(v18, v20, *v21, 8) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (!v17)
    {
      st_size = buf.st_size;
      goto LABEL_4;
    }
  }

LABEL_23:
  v26 = *__error();
  v27 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *v95 = 136315650;
    v96 = "sync_dirty_chunks";
    v97 = 1024;
    v98 = 743;
    v99 = 2080;
    v100 = a1 + 324;
    _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: sync_dirty_chunks: ERR: Can't determine the shadow file size! (%s)\n", v95, 0x1Cu);
  }

  *__error() = v26;
  return 22;
}

void obj_iter_resume(uint64_t result, double a2, double a3, __n128 a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(result + 74) == 1)
  {
    v5 = *(result + 24);
    if ((*(result + 76) & 1) == 0 && db_read_lock(v5 + 584))
    {
      sdb2_die(v5, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 12297);
    }

    if ((*(result + 75) & 1) == 0)
    {
      subiter_do_lookups((result + 80), a2, a3, a4);
    }

    if (*(result + 4) == -1)
    {
      *(result + 4) = _fd_acquire_fd(*(result + 8), (result + 16));
    }

    if (dword_1EBF46AD0 >= 5)
    {
      v6 = *__error();
      v7 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = atomic_load((result + 144));
        v9 = 134217984;
        v10 = v8;
        _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "Prefetch pages from %ld", &v9, 0xCu);
      }

      *__error() = v6;
    }

    *(result + 74) = 0;
    if ((*(result + 76) & 1) == 0)
    {
      db2_string_table_rdlock(v5);
    }
  }
}

void subiter_do_lookups(unint64_t *a1, double a2, double a3, __n128 a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a1[7];
  v6 = atomic_load(a1 + 8);
  v7 = v5 - v6;
  v8 = *a1;
  v9 = *(*a1 + 32);
  v10 = atomic_load(a1 + 8);
  v11 = (v9 + 32 * v10);
  v12 = v5 - v6 - 1;
  if (v12 >= 1)
  {
    if (v12 > 0x7FE)
    {
      v13 = OSAtomicDequeue(&qsort_cached_allocations, 0);
      if (!v13)
      {
        v13 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
      }

      v14 = dispatch_group_create();
      v13[3] = v14;
      v13[4] = 0;
      v13[1] = 0;
      v13[2] = v12;
      *v13 = v11;
      v15 = thread_count;
      if (!thread_count)
      {
        *buf = 0x1900000006;
        v62 = 4;
        sysctl(buf, 2u, &thread_count, &v62, 0, 0);
        v15 = thread_count;
      }

      *(v13 + 14) = v15;
      v13[5] = sqrt(v7) / 2;
      if (!v15)
      {
        *buf = 0x1900000006;
        v62 = 4;
        sysctl(buf, 2u, &thread_count, &v62, 0, 0);
        v15 = thread_count;
      }

      v16 = v7 / (2 * v15);
      if (v16 <= 0x8000)
      {
        v16 = 0x8000;
      }

      else if (!v15)
      {
        *buf = 0x1900000006;
        v62 = 4;
        sysctl(buf, 2u, &thread_count, &v62, 0, 0);
        v16 = v7 / (2 * thread_count);
      }

      v13[6] = v16;
      if (v13[5] <= 2047)
      {
        v13[5] = 2048;
      }

      _qsort_big_oid_lookups(v13);
      dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v14);
    }

    else
    {
      _qsort_oid_lookups(v9 + 32 * v10, 0, v5 - v6 - 1);
    }
  }

  if (v8 + 10 == a1 && v8[5])
  {
    if (v5 == v6)
    {
      v23 = 0;
      v24 = v8 + 10;
      goto LABEL_41;
    }

    v17 = 0;
    v25 = 0;
    v26 = 0;
    v27 = v11;
    do
    {
      if (*v27 == v25 || !(*(v8[5] + 16))())
      {
        if (dword_1EBF46AD0 >= 5)
        {
          v60 = *__error();
          loga = _SILogForLogForCategory(1);
          if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
          {
            v31 = *v27;
            *buf = 134218240;
            *&buf[4] = v31;
            *&buf[12] = 2048;
            *&buf[14] = v26;
            _os_log_impl(&dword_1C278D000, loga, OS_LOG_TYPE_DEFAULT, "1) Skipping oid %lld at index %ld", buf, 0x16u);
          }

          *__error() = v60;
        }
      }

      else
      {
        v29 = &v11[4 * v17];
        v30 = *(v27 + 1);
        ++v17;
        *v29 = *v27;
        v29[1] = v30;
      }

      v28 = *v27;
      v27 += 4;
      v25 = v28;
      ++v26;
    }

    while (v7 != v26);
  }

  else
  {
    v17 = v5 != v6;
    if (v7 >= 2)
    {
      v18 = v11 + 4;
      v19 = 1;
      a4.n128_u64[0] = 134218240;
      do
      {
        if (*v18 == *(v18 - 4))
        {
          if (dword_1EBF46AD0 >= 5)
          {
            v61 = a4;
            v59 = *__error();
            log = _SILogForLogForCategory(1);
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              v22 = *v18;
              *buf = v61.n128_u32[0];
              *&buf[4] = v22;
              *&buf[12] = 2048;
              *&buf[14] = v19;
              _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "2) Skipping oid %lld at index %ld", buf, 0x16u);
            }

            *__error() = v59;
            a4 = v61;
          }
        }

        else
        {
          v20 = &v11[4 * v17];
          v21 = *(v18 + 1);
          ++v17;
          *v20 = *v18;
          v20[1] = v21;
        }

        ++v19;
        v18 += 4;
      }

      while (v7 != v19);
    }
  }

  v24 = v8 + 10;
  if (v8 + 10 == a1 && v8[6])
  {
    v23 = 0;
    if (v17)
    {
      v51 = v11 + 1;
      do
      {
        if ((*(v8[6] + 16))())
        {
          v52 = &v11[4 * v23];
          v53 = *(v51 + 1);
          ++v23;
          *v52 = *(v51 - 1);
          v52[1] = v53;
        }

        v51 += 4;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v23 = v17;
  }

LABEL_41:
  v32 = atomic_load(a1 + 8);
  a1[7] = v32 + v23;
  v33 = *(*a1 + 24);
  if (v33)
  {
    v34 = *(v33 + 856);
    if (v34)
    {
      if (*(v34 + 8))
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __get_pages_for_keys_block_invoke;
        v64 = &__block_descriptor_tmp_186;
        if (v23 < 0x20)
        {
          v35 = 1;
        }

        else
        {
          v35 = (v23 + 31) >> 5;
        }

        v65 = v33;
        v66 = v35;
        if (v23 >= 0x20)
        {
          v36 = 32;
        }

        else
        {
          v36 = v23;
        }

        v67 = v23;
        v68 = v11;
        v69 = a1;
        dispatch_apply(v36, 0, buf);
      }
    }
  }

  if (v23 >= 2)
  {
    v37 = malloc_type_malloc(24 * v23, 0x10000402C707793uLL);
    v38 = v37;
    v39 = 0;
    *v37 = xmmword_1C2BF7A50;
    v37[20] = (v11[2] & 0x400000000) != 0;
    *(v37 + 4) = v11[2] >> 2;
    v40 = v11 + 6;
    for (i = 1; i != v23; ++i)
    {
      if ((*v40 >> 2) == (*(v40 - 4) >> 2))
      {
        v42 = &v37[24 * v39];
        ++*(v42 + 1);
        v42[20] |= (*v40 & 0x400000000) != 0;
      }

      else
      {
        ++v39;
        v43 = &v37[24 * v39];
        *(v43 + 1) = 1;
        *(v43 + 4) = *v40 >> 2;
        v43[20] = (*v40 & 0x400000000) != 0;
        *v43 = i;
      }

      v40 += 4;
    }

    v44 = v39 + 1;
    if ((v39 + 1) > 1)
    {
      psort_b(v37, v39 + 1, 0x18uLL, &__block_literal_global_222);
      v45 = 32 * v23;
      v46 = malloc_type_malloc(32 * v23, 0x1000040E990BCCAuLL);
      madvise(v46, v45, 3);
      v47 = atomic_load(a1 + 8);
      if (v24 != a1 || v47)
      {
        memcpy(v46, v11, v45);
        v54 = 0;
        v55 = v38 + 1;
        do
        {
          memcpy(&v11[4 * v54], &v46[32 * *(v55 - 1)], 32 * *v55);
          v56 = *v55;
          v55 += 3;
          v54 += v56;
          --v44;
        }

        while (v44);
        v11 = v46;
      }

      else
      {
        v48 = 0;
        v49 = v38 + 1;
        do
        {
          memcpy(&v46[32 * v48], &v11[4 * *(v49 - 1)], 32 * *v49);
          v50 = *v49;
          v49 += 3;
          v48 += v50;
          --v44;
        }

        while (v44);
        v8[4] = v46;
      }

      free(v11);
    }

    free(v38);
  }
}

void _qsort_oid_lookups(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v8 = 128;
      }

      else
      {
        v8 = v7;
      }

      v9 = &v6[2 * v7 + 1];
      while (a3 - a2 > 16)
      {
        v10 = _partition_oid_lookups(a1, a2, a3);
        if (v10 < a2)
        {
          v30 = __si_assert_copy_extra_332();
          v31 = v30;
          v32 = "";
          if (v30)
          {
            v32 = v30;
          }

          __message_assert(v30, "sdb2_qsort.cpp", 17, "q>=left", v32);
          free(v31);
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

        if (v8 == v7)
        {
          heapsort_b((a1 + 32 * a2), a3 - a2 + 1, 0x20uLL, &__block_literal_global_15695);
          v7 = v8;
          goto LABEL_33;
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
          goto LABEL_33;
        }
      }

      v11 = a1 + 24 + 32 * a2;
      v12 = a2;
      do
      {
        v13 = v12++;
        v14 = (a1 + 32 * v12);
        v16 = *v14;
        v15 = v14[1];
        v17 = (a1 + 32 * v13);
        v18 = *v17;
        v19 = v17[2];
        v20 = v19 == v15;
        if (*v17 <= v16)
        {
          v20 = 0;
        }

        v21 = v19 <= v15 && !v20;
        v22 = v12;
        if (!v21)
        {
          v23 = v11;
          do
          {
            v22 = v13;
            v24 = *(v23 - 2);
            v25 = *v23;
            v23[1] = v18;
            v23[2] = v24;
            v23[3] = v19;
            v23[4] = v25;
            if (v22 <= a2)
            {
              break;
            }

            v18 = *(v23 - 7);
            v19 = *(v23 - 5);
            v23 -= 4;
            v26 = v18 > v16 && v19 == v15;
            v13 = v22 - 1;
          }

          while (v19 > v15 || v26);
        }

        v28 = (a1 + 32 * v22);
        *v28 = v16;
        v28[1] = v15;
        v11 += 32;
      }

      while (v12 != a3);
    }

LABEL_33:
    --v7;
    v29 = &v6[2 * v7];
    a2 = *v29;
    a3 = v29[1];
  }

  while (v7);

  free(v6);
}

void L1ComboQueueDestroy(void ***a1)
{
  L1RankQueueDestroy(*a1);
  L1RankQueueDestroy(a1[1]);
  L1RankQueueDestroy(a1[2]);

  free(a1);
}

void __get_pages_for_keys_block_invoke(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v59 = *MEMORY[0x1E69E9840];
  bzero(v57, 0x1000uLL);
  v5 = *(*(v4[4] + 856) + 8);
  v6 = v5 + 3;
  if (v5 < -3)
  {
    v6 = v5 + 6;
  }

  if (v5 > 0x4000)
  {
    v7 = malloc_type_calloc((v6 >> 2), 1uLL, 0x53A50D40uLL);
  }

  else
  {
    v7 = v57;
    __memset_chk();
  }

  v8 = v4[5];
  v9 = v8 * v2;
  v10 = v8 * v2 + v8;
  if (v10 >= v4[6])
  {
    v11 = v4[6];
  }

  else
  {
    v11 = v10;
  }

  if (v9 < v11)
  {
    v12 = 0;
    do
    {
      v18 = v4[7];
      v19 = (v18 + 32 * v9);
      v20 = 32 * v9;
      if (v19[3])
      {
        if (dword_1EBF46AD0 >= 5)
        {
          v56 = *__error();
          log = _SILogForLogForCategory(1);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            v54 = *(v4[7] + 32 * v9);
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v54;
            _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "Already found %lld", &buf, 0xCu);
          }

          *__error() = v56;
          v18 = v4[7];
        }

        *(v18 + v20 + 16) &= 0xFFFFFFFC00000003;
        *(v4[7] + v20 + 25) = 0;
        goto LABEL_14;
      }

      v21 = v19[2];
      v22 = v21 & 3;
      if (v22 == 3)
      {
        v22 = *(v4[8] + 112);
      }

      v23 = *v19;
      v24 = *(v4[4] + 856);
      v25 = *(v24 + 8);
      if (!v12 || v25 <= v12)
      {
        goto LABEL_26;
      }

      v26 = v24 + 20 + 16 * v12;
      v27 = v22 - (*(v26 + 12) >> 28);
      if (v27)
      {
        if (v27 <= 0)
        {
LABEL_63:
          v52 = v24 + 20 + 16 * (v12 - 1);
          v53 = v22 - (*(v52 + 12) >> 28);
          if (v53)
          {
            if (v53 > 0)
            {
              goto LABEL_42;
            }
          }

          else if (v23 - *v52 > 0)
          {
            goto LABEL_42;
          }
        }
      }

      else if (v23 - *v26 <= 0)
      {
        goto LABEL_63;
      }

LABEL_26:
      if (v25 < 1)
      {
        v35 = 0;
        v30 = 0;
        goto LABEL_38;
      }

      v28 = 0;
      v29 = *(v24 + 8);
      while (1)
      {
        v30 = (v29 + v28) >> 1;
        v31 = v24 + 20 + 16 * v30;
        v32 = v22 - (*(v31 + 12) >> 28);
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = (v29 + v28) >> 1;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        v29 = v34;
        if (v28 >= v34)
        {
          v35 = v33 > 0;
          goto LABEL_38;
        }
      }

      v33 = v23 - *v31;
      v34 = (v29 + v28) >> 1;
      if (v33 < 0)
      {
        goto LABEL_28;
      }

LABEL_33:
      if (v33)
      {
        v28 = v30 + 1;
        v34 = v29;
        goto LABEL_28;
      }

      v35 = 0;
LABEL_38:
      v36 = v25 - 1 > v30 && v35;
      v12 = v30 + v36;
      v26 = v24 + 16 * (v30 + v36) + 20;
LABEL_42:
      *(v18 + v20 + 16) = v21 & 0xFFFFFFFC00000003 | (4 * *(v26 + 8));
      v37 = v4[7];
      *(v37 + v20 + 25) = *(v26 + 12) >> 12;
      v38 = 2 * (v12 & 3);
      if (!v7)
      {
        goto LABEL_47;
      }

      v39 = (v7[v12 >> 2] >> v38) & 3;
      if (v39 > 1)
      {
        if (v39 != 2)
        {
          goto LABEL_47;
        }

LABEL_11:
        v13 = v37 + 32 * v9;
        v16 = *(v13 + 16);
        v14 = (v13 + 16);
        v15 = v16;
LABEL_12:
        v17 = 0;
        goto LABEL_13;
      }

      if (v39)
      {
        v40 = v37 + 32 * v9;
        v41 = *(v40 + 16);
        v14 = (v40 + 16);
        v15 = v41;
        v17 = 0x400000000;
        goto LABEL_13;
      }

LABEL_47:
      v42 = *(v4[4] + 928);
      v43 = *(v26 + 8);
      v44 = *(v42 + 220);
      if (v44 < 1)
      {
LABEL_51:
        buf = 0uLL;
        v47 = atomic_load((v42 + 248));
        if (v47 <= v43)
        {
          goto LABEL_56;
        }

        *(&buf + 1) = 0;
        *&buf = *v42;
        DWORD2(buf) = v43;
        if (sdb_init_cache_onceToken != -1)
        {
          dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
        }

        if (sdb_init_cache_status == 1 && !cache_get_info_for_key())
        {
          v48 = 0;
          if (!v7)
          {
            goto LABEL_61;
          }
        }

        else
        {
LABEL_56:
          v48 = 0;
          if (!v7)
          {
            goto LABEL_61;
          }
        }

        v48 = 0;
        v49 = 1;
        goto LABEL_60;
      }

      v45 = (v42 + 252);
      while (1)
      {
        v46 = *v45++;
        if (v46 == v43)
        {
          break;
        }

        if (!--v44)
        {
          goto LABEL_51;
        }
      }

      if (!v7)
      {
        goto LABEL_11;
      }

      v49 = 2;
      v48 = 1;
LABEL_60:
      v7[v12 >> 2] |= v49 << v38;
LABEL_61:
      v50 = v4[7] + 32 * v9;
      v51 = *(v50 + 16);
      v14 = (v50 + 16);
      v15 = v51;
      if (v48)
      {
        goto LABEL_12;
      }

      v17 = 0x400000000;
LABEL_13:
      *v14 = v17 | v15 & 0xFFFFFFFBFFFFFFFFLL;
LABEL_14:
      ++v9;
    }

    while (v9 != v11);
  }

  if (v7 != v57)
  {
    free(v7);
  }
}

atomic_uint *si_livequery_retain2(uint64_t a1, atomic_uint *a2)
{
  result = a2;
  atomic_fetch_add(a2, 1u);
  return result;
}

void **L1RankQueueDestroy(void **result)
{
  if (result)
  {
    free(*result);

    JUMPOUT(0x1C691FEF0);
  }

  return result;
}

uint64_t __subiter_do_lookups_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 20);
  v4 = *(a3 + 20);
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 == v4)
  {
    return (*(a2 + 16) - *(a3 + 16));
  }

  return 1;
}

uint64_t compileToLiveQuery(void *a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __db_query_tree_apply_block_block_invoke;
  v4[3] = &unk_1E8198ED0;
  v4[4] = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a1, v4, &__block_literal_global_25_15416);
  v2 = v1;
  setupCannedFields(v1);
  return v2;
}

void initializeSubIter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_zone_malloc(queryZone, 0x100C8uLL, 0xA4971684uLL);
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
  }

  v11 = (a5 + 8 * (a3 + a1));
  *v11 = v10;
  v10[14] = 0;
  *(v10 + 5) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *v10 = 0u;
  v12 = *v11;
  *v12 = a2;
  *(v12 + 112) = *(a2 + 192);
  *(v12 + 120) = 0;
  *(v12 + 192) = 0;
  if (a3 + a1)
  {
    v13 = *(*(v11 - 1) + 56) + *(*(v11 - 1) + 8);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 8) = v13;
  v14 = *(a2 + 136);
  if (v13 + a4 <= v14)
  {
    v15 = a4;
  }

  else
  {
    v15 = v14 - v13;
  }

  *(v12 + 56) = v15;
  if (v15 < 0)
  {
    v18 = __si_assert_copy_extra_3233(0, -1);
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 12598, "(ssize_t)subiters[base+i]->count>=0", v20);
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

  if (v15)
  {
    v16 = v15 + v13;
    if (v16 < *(a2 + 136) - 1)
    {
      v17 = (*(a2 + 32) + 32 * v16 + 16);
      do
      {
        if ((*(v17 - 4) >> 2) != (*v17 >> 2))
        {
          break;
        }

        v17 += 4;
        *(v12 + 56) = ++v15;
        ++v16;
      }

      while (v16 < *(a2 + 136) - 1);
      if (v15 < 0)
      {
        v22 = __si_assert_copy_extra_3233(0, -1);
        v23 = v22;
        v24 = "";
        if (v22)
        {
          v24 = v22;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 12604, "(ssize_t)subiters[base+i]->count>=0", v24);
        free(v23);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }
  }
}

uint64_t query_node_unique_retain(pthread_mutex_t *a1, void *a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __query_node_unique_retain_block_invoke;
  v8[3] = &__block_descriptor_tmp_27_15455;
  v8[4] = a1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __query_node_unique_retain_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_28_15456;
  v7[4] = a1;
  pthread_mutex_lock(a1);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __db_query_tree_apply_block_block_invoke;
  v9[3] = &unk_1E8198ED0;
  v9[4] = v8;
  db_query_tree_apply_block_with_meta(a2, v9, v7);
  v5 = v4;
  pthread_mutex_unlock(a1);
  return v5;
}

uint64_t pqpop(void *a1, _BYTE *a2)
{
  v3 = *a1;
  *a2 = v3;
  if (v3 == 1)
  {
    v4 = a1[3];
    if (v4 != 1)
    {
      v5 = a1[1];
      result = *(v5 + 16);
      v7 = *(v5 + 16 * v4 - 16);
      *(v5 + 16) = v7;
      v9 = a1[2];
      v8 = a1[3];
      a1[3] = v8 - 1;
      v10 = v9 >> 1;
      v11 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = 3;
      v13 = 2;
      v14 = 1;
      while (1)
      {
        v15 = a1[1];
        v16 = *(v15 + 16 * v13);
        if (v12 >= v8)
        {
          v17 = xmmword_1C2BFA680;
          if (v13 >= v8)
          {
            return result;
          }
        }

        else
        {
          v17 = *(v15 + 16 * v12);
        }

        v18 = v16.i64[0] & 0x3FFFFFFFFFFFFFFFLL;
        v19 = v17.i64[0] & 0x3FFFFFFFFFFFFFFFLL;
        if ((v16.i64[0] & 0x3FFFFFFFFFFFFFFFuLL) >= v11)
        {
          if (v19 >= v11)
          {
            _X8 = v15 + 32 * v14;
            __asm { PRFM            #1, [X8] }

            return result;
          }
        }

        else
        {
          _CF = v19 >= v18;
          v21 = v19 < v18;
          if (_CF)
          {
            v12 = v13;
          }

          v22 = vdup_n_s32(v21);
          v23.i64[0] = v22.u32[0];
          v23.i64[1] = v22.u32[1];
          v17 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v23, 0x3FuLL)), v17, v16);
        }

        _X15 = v15 + 32 * v12;
        __asm { PRFM            #1, [X15] }

        if (v12 != v14)
        {
          v13 = 2 * v12;
          *(v15 + 16 * v12) = v7;
          *(a1[1] + 16 * v14) = v17;
          v14 = v12;
          _VF = __OFSUB__(v12, v10);
          _NF = v12 - v10 < 0;
          v12 = (2 * v12) | 1;
          if (_NF != _VF)
          {
            continue;
          }
        }

        return result;
      }
    }

    return 0;
  }

  v31 = a1[3];
  if (v31 == 1)
  {
    return 0;
  }

  v32 = a1[1];
  result = *(v32 + 8);
  v33 = *(v32 + 8 * v31 - 8);
  v34 = a1[2] >> 1;
  *(v32 + 8) = v33;
  a1[3] = v31 - 1;
  v35 = v33 & 0x3FFFFFFFFFFFFFFFLL;
  v36 = 1;
  v37 = 2;
  v38 = 3;
  do
  {
    v39 = *(v32 + 8 * v37);
    if (v38 >= v31)
    {
      if (v37 >= v31)
      {
        return result;
      }

      v40 = 0xBFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v40 = *(v32 + 8 * v38);
    }

    v41 = v40 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v39 & 0x3FFFFFFFFFFFFFFFuLL) >= v35)
    {
      v42 = v33 & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = v39 & 0x3FFFFFFFFFFFFFFFLL;
    }

    if ((v39 & 0x3FFFFFFFFFFFFFFFuLL) >= v35)
    {
      v37 = v36;
    }

    if (v41 >= v42)
    {
      v43 = v37;
    }

    else
    {
      v43 = v38;
    }

    _X14 = v32 + 16 * v43;
    __asm { PRFM            #1, [X14] }

    if (v43 == v36)
    {
      break;
    }

    v37 = 2 * v43;
    v46 = (v39 & 0x3FFFFFFFFFFFFFFFuLL) >= v35 ? v33 : v39;
    v47 = v41 >= v42 ? v46 : v40;
    v38 = v37 | 1;
    *(v32 + 8 * v43) = v33;
    *(v32 + 8 * v36) = v47;
    v36 = v43;
  }

  while (v43 < v34);
  return result;
}

void *compileToSDBPostCheckQuery(uint64_t a1)
{
  v1 = compileToSDBTree(a1, factorRewrite);
  db_query_tree_apply_block_with_meta(v1, &__block_literal_global_15_15380, 0);
  setupCannedFields(v1);
  return v1;
}

void preparePostCheckQueries(SISearchCtx_METADATA **a1)
{
  v2 = *a1;
  if (!*(*(*a1 + 105) + 8))
  {
    *(*(*a1 + 105) + 8) = compileToSDBPostCheckQuery(v2[14]);
    v2 = *a1;
  }

  if (*(v2 + 208) >= 2u)
  {
    v3 = 1;
    v4 = 56;
    do
    {
      v5 = v2[105];
      v6 = *(v5 + v4 - 8);
      if (v6 && !*(v5 + v4))
      {
        translateSDBQuery(v6);
        v8 = v7;
        *(*(*a1 + 105) + v4) = compileToSDBPostCheckQuery(v7);
        v9 = *(*(*a1 + 105) + v4);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = __db_query_tree_apply_block_block_invoke;
        v10[3] = &unk_1E8198ED0;
        v10[4] = &__block_literal_global_32_15488;
        db_query_tree_apply_block_with_meta(v9, v10, &__block_literal_global_35_15489);
        siquerynode_release(v8);
        v2 = *a1;
      }

      ++v3;
      v4 += 48;
    }

    while (v3 < *(v2 + 208));
  }

  *(v2 + 642) = 1;
}

uint64_t si_lqn_hash(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (v3)
  {
    v4 = db_hash_qps(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = v2 + v1 + v4;
  v6 = HIDWORD(v5) - v5;
  v7 = HIDWORD(v5) - v5 - 8;
  LODWORD(v5) = (v5 - (HIDWORD(v5) - v5) - 1640531527) ^ (v7 << 8);
  v8 = (16 - v6 - v5) ^ (v5 >> 13);
  v9 = (v7 - v5 - v8) ^ (v8 >> 12);
  LODWORD(v5) = (v5 - v8 - v9) ^ (v9 << 16);
  v10 = (v8 - v9 - v5) ^ (v5 >> 5);
  v11 = (v9 - v5 - v10) ^ (v10 >> 3);
  return (v10 - v11 - ((v5 - v10 - v11) ^ (v11 << 10))) ^ (((v5 - v10 - v11) ^ (v11 << 10)) >> 15);
}

uint64_t *__query_node_unique_retain_block_invoke_2(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v4 = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    a2[1] = a4;
    Value = CFBagGetValue(*(*(a1 + 32) + 64), a2);
    if (Value)
    {
      v7 = Value;
      *v4 = 0;
      v4[1] = 0;
      v10 = MEMORY[0x1E69E9820];
      v11 = 0x40000000;
      v12 = __db_query_tree_apply_block_block_invoke;
      v13 = &unk_1E8198ED0;
      v14 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v4, &v10, 0);
      v4 = v7;
    }

    *(v4 + 13) = *(*v4 + 52) + *(v4[1] + 52);
    CFBagAddValue(*(*(a1 + 32) + 64), v4);
  }

  else
  {
    if (a3)
    {
      v10 = MEMORY[0x1E69E9820];
      v11 = 0x40000000;
      v12 = __db_query_tree_apply_block_block_invoke;
      v13 = &unk_1E8198ED0;
      v14 = &__block_literal_global_174;
      v8 = a4;
      db_query_tree_apply_block_with_meta(a3, &v10, 0);
      a4 = v8;
    }

    if (a4)
    {
      v10 = MEMORY[0x1E69E9820];
      v11 = 0x40000000;
      v12 = __db_query_tree_apply_block_block_invoke;
      v13 = &unk_1E8198ED0;
      v14 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a4, &v10, 0);
    }

    free(v4);
    return 0;
  }

  return v4;
}

uint64_t factorRewrite(void *a1)
{
  result.location = MEMORY[0x1E69E9820];
  result.length = 0x40000000;
  v13 = __db_query_tree_apply_block_block_invoke;
  v14 = &unk_1E8198ED0;
  v15 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a1, &result, &__block_literal_global_25_15416);
  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {
    return v2;
  }

  if ((*(v3 + 32) & 0x440) == 0x40)
  {
    v4 = *(v3 + 72);
    result.location = 0;
    result.length = 0;
    v5 = CFStringCreateWithCStringNoCopy(kCIQueryZoneAllocator, v4, 0x8000100u, *MEMORY[0x1E695E498]);
    Length = CFStringGetLength(v5);
    if (initCharSets_onceToken != -1)
    {
      dispatch_once(&initCharSets_onceToken, &__block_literal_global_43_4971);
    }

    v16.location = 0;
    v16.length = Length;
    if (CFStringFindCharacterFromSet(v5, _cjkChars, v16, 0, &result))
    {
      CFRelease(v5);
    }

    else
    {
      v17.location = 0;
      v17.length = Length;
      CharacterFromSet = CFStringFindCharacterFromSet(v5, _infixChars, v17, 0, &result);
      CFRelease(v5);
      if (!CharacterFromSet)
      {
        goto LABEL_9;
      }
    }

    v8 = *(v2 + 16);
    v9 = *(v8 + 72);
    asprintf((v8 + 72), "*%s", v9);
    free(v9);
  }

LABEL_9:
  v10 = *(v2 + 16);
  if (v10)
  {
    *(v10 + 16) = _qpPostcheckMatch;
  }

  return v2;
}

uint64_t __query_push_negation_to_leaves_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = a2;
  v4 = *a3;
  v5 = *(a2 + 48);
  if ((v5 & 8) != 0)
  {
    v5 &= ~8u;
    *(a2 + 48) = v5;
    *a3 = v4 ^ 1;
    if (v4)
    {
      return result;
    }
  }

  else
  {
    *a3 = v4;
    if (!v4)
    {
      return result;
    }
  }

  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      *(a2 + 48) = 2;
    }

    else if (v5 == 2)
    {
      *(a2 + 48) = 1;
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        v6 = *(a2 + 16);
        v7 = *(v6 + 24);
        if ((v7 - 16) >= 0xFFFFFFF1)
        {
          *(v6 + 24) = dword_1C2C005C0[v7];
        }

        else
        {
          *(v6 + 24) = 0;
        }

        break;
      case 16:
        *(a2 + 48) = 32;
        break;
      case 32:
        *(a2 + 48) = 16;
        break;
    }
  }

  return result;
}

uint64_t ___ZL23cacheQPDataForPostCheckRP20SISearchCtx_METADATAP10query_node_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48) & 0xFFF7) == 4)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      if ((*(v3 + 33) & 8) == 0)
      {
        v4 = *(a1 + 32);
        v5 = *(a2 + 32);
        if ((v5 + 1) >= 2)
        {
          ContentIndexDocSetDispose(v5);
        }

        Value = *(v3 + 120);
        if (Value)
        {
          if (*(v3 + 128) != ContentIndexDocSetDispose)
          {
            v11 = __si_assert_copy_extra_332();
            v12 = v11;
            v13 = "";
            if (v11)
            {
              v13 = v11;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 417, "node->qp->_free_cache_data == (void (*)(void*))ContentIndexDocSetDispose", v13);
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
        }

        else
        {
          v8 = *(*v4 + 216);
          if (!v8 || (Value = CFDictionaryGetValue(v8, v3)) == 0)
          {
            if ((*(v3 + 24) - 5) > 1 || ((memcpy(__dst, v3, sizeof(__dst)), (__dst[6] - 16) >= 0xFFFFFFF1) ? (v9 = dword_1C2C005C0[__dst[6]]) : (v9 = 0), (__dst[6] = v9, (v10 = *(*v4 + 216)) == 0) || (Value = CFDictionaryGetValue(v10, __dst)) == 0))
            {
              Value = -1;
              goto LABEL_9;
            }
          }
        }

        atomic_fetch_add(Value, 1u);
LABEL_9:
        *(a2 + 32) = Value;
      }
    }
  }

  return 0;
}

char *copyMinimumTerm(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(&__s1[1], 0, 255);
  if (a2 <= 0)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIQuery.c", 169, "field >= 1", v7);
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

  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  __s1[0] = v2;
  if (a2 >> 28)
  {
    v3 = &__s1[6];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = (a2 >> 21) | 0x80;
    __s1[5] = a2 >> 28;
  }

  else if (a2 >= 0x200000)
  {
    v3 = &__s1[5];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = a2 >> 21;
  }

  else if (a2 >= 0x4000)
  {
    v3 = &__s1[4];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = a2 >> 14;
  }

  else if (a2 >= 0x80)
  {
    v3 = &__s1[3];
    __s1[1] = a2 | 0x80;
    __s1[2] = a2 >> 7;
  }

  else
  {
    v3 = &__s1[2];
    __s1[1] = a2;
  }

  *v3 = 0;
  __strlcat_chk();
  return strdup(__s1);
}

void PartialQueryResults::setupFieldIdVector(uint64_t a1, uint64_t a2, size_t *a3, void **a4, int a5)
{
  v10 = *(a1 + 248);
  if (v10)
  {
    Count = CFBitVectorGetCount(v10);
  }

  else
  {
    Count = 0;
  }

  if (*(a1 + 232) < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (!a5 || ((v14 = *(a1 + 248)) != 0 ? (v15 = Count <= v13) : (v15 = 1), v15 || CFBitVectorGetBitAtIndex(v14, v13)))
      {
        v16 = *(a2 + 8 * v13);
        if (v16)
        {
          if (*v16)
          {
            v17 = v16 + 1;
            do
            {
              ++v12;
            }

            while (*v17++);
          }
        }
      }

      ++v13;
    }

    while (v13 < *(a1 + 232));
  }

  *a3 = v12;
  if (((v12 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && 8 * v12 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal;
  }

  v19 = malloc_type_zone_calloc(queryZone, 8uLL, v12, 0x5BAF1CEAuLL);
  if (!v19)
  {
    _log_fault_for_malloc_failure();
  }

  *a4 = v19;
  if (*(a1 + 232) >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      if (!a5 || ((v23 = *(a1 + 248)) != 0 ? (v24 = Count <= v22) : (v24 = 1), v24 || CFBitVectorGetBitAtIndex(v23, v22)))
      {
        v25 = *(a2 + 8 * v22);
        if (v25)
        {
          if ((a5 & 1) == 0 && v21 != v22)
          {
            v31 = __si_assert_copy_extra_332();
            v39 = v31;
            v40 = "";
            if (v31)
            {
              v40 = v31;
            }

            __message_assert_336(v31, v32, v33, v34, v35, v36, v37, v38, "SISearchCtx.cpp", 1369, "fieldIndex == i", v40);
LABEL_49:
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

          v26 = *v25;
          if (*v25)
          {
            v27 = *a4 + 8 * v20 + 4;
            v28 = v25 + 1;
            do
            {
              *(v27 - 1) = v26;
              *v27 = v22;
              ++v20;
              v29 = *v28++;
              v26 = v29;
              v27 += 2;
            }

            while (v29);
          }
        }

        ++v21;
      }

      if (++v22 >= *(a1 + 232))
      {
        goto LABEL_42;
      }
    }
  }

  v20 = 0;
LABEL_42:
  if (v20 != *a3)
  {
    v42 = __si_assert_copy_extra_332();
    v39 = v42;
    v50 = "";
    if (v42)
    {
      v50 = v42;
    }

    __message_assert_336(v42, v43, v44, v45, v46, v47, v48, v49, "SISearchCtx.cpp", 1379, "count == *outcount", v50);
    goto LABEL_49;
  }

  v30 = *a4;

  qsort_b(v30, v20, 8uLL, &__block_literal_global_22_16265);
}

void PartialQueryResults::setupFixedFunctionVector(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 232);
  v7 = 4 * v6;
  if (((v6 >> 15) & 0x7FFFFFFFFFFFLL) == 0 && v7 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal;
  }

  v9 = malloc_type_zone_calloc(queryZone, 1uLL, v7, 0x5BAF1CEAuLL);
  if (!v9)
  {
    _log_fault_for_malloc_failure();
  }

  *a3 = v9;
  if (*(a1 + 232) >= 1)
  {
    for (i = 0; *(a1 + 232) > i; ++i)
    {
      v11 = *(a2 + 8 * i);
      if (!strncmp(v11, "kMDQueryResult", 0xEuLL))
      {
        v12 = v11 + 14;
        if (!strcmp(v12, "SpotlightRelevance"))
        {
          v15 = 1;
        }

        else if (!strcmp(v12, "GroupId"))
        {
          v15 = 3;
        }

        else if (!strcmp(v12, "MatchedExtraQueriesField") || !strcmp(v12, "MenuRelevance"))
        {
          v15 = 2;
        }

        else if (!strcmp(v12, "NewMatchedExtraQueriesField"))
        {
          v15 = 5;
        }

        else if (!strcmp(v12, "ContentRelevance"))
        {
          v15 = 4;
        }

        else if (!strcmp(v12, "TextContentDistances"))
        {
          v15 = 6;
        }

        else if (!strcmp(v12, "HasTextContentMatch"))
        {
          v15 = 7;
        }

        else if (!strcmp(v12, "ScoreL1"))
        {
          v15 = 8;
        }

        else if (!strcmp(v12, "MatchingAttributes"))
        {
          v15 = 10;
        }

        else
        {
          v13 = 0;
          v14 = 77;
          while (v14 == v12[v13])
          {
            v14 = aMatchingarrayi[v13 + 1];
            v15 = 11;
            if (++v13 == 21)
            {
              goto LABEL_29;
            }
          }

          if (!strcmp(v12, "MatchingHints"))
          {
            v15 = 9;
          }

          else if (!strcmp(v12, "RetrievalType"))
          {
            v15 = 13;
          }

          else if (_os_feature_enabled_impl() && !strcmp((*(a2 + 8 * i) + 14), "EmbeddingDistances"))
          {
            v15 = 12;
          }

          else
          {
            if (!_os_feature_enabled_impl() || strcmp((*(a2 + 8 * i) + 14), "EmbeddingVectorIds"))
            {
              continue;
            }

            v15 = 14;
          }
        }

LABEL_29:
        v9[i] = v15;
      }
    }
  }
}

uint64_t PartialQueryResults::start(PartialQueryResults *this, int a2, unsigned __int16 a3, unint64_t a4, uint64_t a5)
{
  if (a4 >= 0xFFFFFFFF)
  {
    v20 = __si_assert_copy_extra_332();
    v28 = v20;
    v29 = "";
    if (v20)
    {
      v29 = v20;
    }

    __message_assert_336(v20, v21, v22, v23, v24, v25, v26, v27, "SISearchCtx.h", 903, "count < (CFIndex)4294967295U && count>=0", v29);
    free(v28);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v7 = this + 1488;
  if (!*(this + a5 + 186))
  {
    Mutable = _MDPlistBytesCreateMutable();
    *&v7[8 * a5] = Mutable;
    if (!Mutable)
    {
      v30 = __si_assert_copy_extra_332();
      v17 = v30;
      v38 = "";
      if (v30)
      {
        v38 = v30;
      }

      __message_assert_336(v30, v31, v32, v33, v34, v35, v36, v37, "SISearchCtx.h", 917, "tmpB", v38);
LABEL_19:
      free(v17);
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
  }

  _MDPlistBytesBeginPlist();
  _MDPlistBytesBeginArray();
  _MDPlistBytesAddNull();
  if (*(this + a5 + 58))
  {
    if (*(this + a5 + 443))
    {
      v9 = __si_assert_copy_extra_332();
      v17 = v9;
      v18 = "";
      if (v9)
      {
        v18 = v9;
      }

      __message_assert_336(v9, v10, v11, v12, v13, v14, v15, v16, "SISearchCtx.h", 929, "ffillPtr[slot] == 0", v18);
      goto LABEL_19;
    }
  }

  else
  {
    *(this + a5 + 58) = _MDStoreOIDArrayCreateMutable();
    *(this + a5 + 443) = 0;
  }

  _MDStoreOIDArrayBeginSequence();
  _MDStoreOIDArrayBeginBulkAdd();
  return *&v7[8 * a5];
}

void subiter_fetch_page(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v42 = *MEMORY[0x1E69E9840];
  v9 = *(v7 + 88);
  if (v9)
  {
    dispatch_sync(v9, &__block_literal_global_189);
  }

  v10 = *(v8 + 4);
  if (v8[11] == v6)
  {
    *(v8 + 4) = 0;
    v8[10] = v6;
    v8[11] = -1;
    if (v10)
    {
      *(v8 + 2) = v10;
      *(v8 + 3) = v10 + 20;
    }

    else
    {
      *(v8 + 2) = 0;
    }
  }

  else
  {
    if (v10)
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(7);
      v13 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v12, v13))
      {
        v14 = v8[11];
        v15 = *(v8 + 4);
        *buf = 67109376;
        v39 = v14;
        v40 = 2048;
        v41 = v15;
        _os_log_impl(&dword_1C278D000, v12, v13, "Wrong next page in db iterator 0x%x %p", buf, 0x12u);
      }

      *__error() = v11;
      page_release(*(*v8 + 24), *(v8 + 4), v8[11], 0x10u, 0);
      v8[11] = -1;
      *(v8 + 4) = 0;
    }

    value_out = 0;
    v30 = 0;
    bzero(buf, 0x4000uLL);
    *(v8 + 24) = buf;
    subiter_attempt_prefetch(v8, v6, v4);
    if (*(*v8 + 77))
    {
      v16 = 57;
    }

    else
    {
      v16 = 25;
    }

    if (v2)
    {
      v17 = 0x2000;
    }

    else
    {
      v17 = 0;
    }

    v18 = _page_fetch_with_fd(*(*v8 + 24), &value_out, v6, v4 << 12, v16 | v17, &v30, *(*v8 + 4), v8 + 30);
    v19 = value_out;
    if (v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = value_out == 0;
    }

    if (!v20)
    {
      v21 = *(value_out + 3);
      if ((v21 & 8) != 0)
      {
        v25 = *__error();
        v26 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *v32 = 136315650;
          v33 = "subiter_fetch_page";
          v34 = 1024;
          v35 = 12517;
          v36 = 1024;
          v37 = v6;
          _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: obj_iter_fetch_page: ERR: page came back compressed! pgnum 0x%x\n", v32, 0x18u);
        }

        *__error() = v25;
        v27 = __si_assert_copy_extra_3233(0, -1);
        v28 = v27;
        if (v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = "";
        }

        __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 12518, v29);
        free(v28);
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      if ((v21 & 0xF0) != 0)
      {
        v22 = __si_assert_copy_extra_3233(0, *(*v8 + 4));
        v23 = v22;
        v24 = "";
        if (v22)
        {
          v24 = v22;
        }

        __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: tried to read attr name table data! pgnum 0x%x, flags 0x%x\n", "sdb2.c", 12522, "(dbp->flags & 0x000000f0)==0", v24, v6, *(value_out + 3));
        free(v23);
        if (__valid_fs(*(*v8 + 4)))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      if (v30)
      {
        ++*(v8 + 13);
      }

      v8[10] = v6;
      *(v8 + 2) = v19;
    }
  }
}

uint64_t subiter_attempt_prefetch(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (*(result + 124) >= *(result + 120))
  {
    *(result + 120) = 0;
    v3 = atomic_load((result + 64));
    v4 = *(result + 56);
    if (v3 < v4)
    {
      *(result + 120) = 1;
      *(result + 160) = a2;
      *(result + 176) = a3;
      v5 = (result + 176);
      v6 = *result;
      v7 = *(result + 8);
      v8 = result;
      v9 = *(*result + 32);
      v10 = v9 + 32 * v7;
      v11 = v10 + 32 * v3;
      v12 = *(v11 + 16);
      if ((v12 & 0x400000000) == 0)
      {
        goto LABEL_4;
      }

      v13 = v3 + 1;
      v14 = v12 >> 2;
      if ((*(v11 + 24) & 1) != 0 || v14 == a2)
      {
        v16 = v9 + 32 * v7 + 32 * v3;
        while (1)
        {
          result = v12 & 0x400000000;
          if ((v12 & 0x400000000) == 0 || v13 >= v4)
          {
            break;
          }

          v17 = v13 + 1;
          v11 = v10 + 32 * v13;
          v18 = *(v16 + 56);
          v12 = *(v16 + 48);
          v14 = v12 >> 2;
          v16 += 32;
          ++v13;
          if ((v18 & 1) == 0)
          {
            v13 = v17;
            if (v14 != a2)
            {
              result = v12 & 0x400000000;
              goto LABEL_16;
            }
          }
        }

        v17 = v13;
        v16 = v11;
LABEL_16:
        v15 = result == 0;
        v13 = v17;
        v11 = v16;
      }

      else
      {
        v15 = 0;
      }

      if (v13 >= v4 || v15 || v14 < a2 || a3 + a2 < v14)
      {
        goto LABEL_4;
      }

      v8[41] = v14;
      v19 = *(v11 + 25);
      v8[45] = v19;
      v20 = a3 + v19;
      v8[30] = 2;
      if (v20 <= 0xF)
      {
        v21 = *(v11 + 16);
        v22 = v21 >> 2;
        if ((*(v11 + 24) & 1) != 0 || v14 == v22)
        {
          v24 = 32 * v13 + 32 * v7 + v9 - 32;
          while ((v21 & 0x400000000) != 0 && v13 < v4)
          {
            v23 = v13 + 1;
            v11 = v10 + 32 * v13;
            v25 = *(v24 + 56);
            v21 = *(v24 + 48);
            v22 = v21 >> 2;
            v24 += 32;
            ++v13;
            if ((v25 & 1) == 0)
            {
              v13 = v23;
              if (v14 != v22)
              {
                goto LABEL_30;
              }
            }
          }
        }

        v23 = v13;
        v24 = v11;
LABEL_30:
        if (v23 < v4 && (v21 & 0x400000000) != 0 && v14 <= v22 && v14 + v19 >= v22)
        {
          v8[42] = v22;
          v26 = *(v24 + 25);
          v8[46] = v26;
          v20 += v26;
          v8[30] = 3;
          if (v20 <= 0xF)
          {
            v27 = *(v24 + 16);
            v28 = v27 >> 2;
            if ((*(v24 + 24) & 1) != 0 || v22 == v28)
            {
              v30 = 32 * v23 + 32 * v7 + v9 - 32;
              while ((v27 & 0x400000000) != 0 && v23 < v4)
              {
                v29 = v23 + 1;
                v24 = v10 + 32 * v23;
                v31 = *(v30 + 56);
                v27 = *(v30 + 48);
                v28 = v27 >> 2;
                v30 += 32;
                ++v23;
                if ((v31 & 1) == 0)
                {
                  v23 = v29;
                  if (v22 != v28)
                  {
                    goto LABEL_43;
                  }
                }
              }
            }

            v29 = v23;
            v30 = v24;
LABEL_43:
            if (v29 < v4 && (v27 & 0x400000000) != 0 && v22 <= v28 && v22 + v26 >= v28)
            {
              v8[43] = v28;
              v32 = *(v30 + 25);
              v8[47] = v32;
              v20 += v32;
              v8[30] = 4;
            }
          }
        }
      }

      v33 = *(v6 + 4);
      v34 = (v8 + 50);
      v35 = v20 << 12;
      v36 = a2 << 12;
      while (1)
      {
        result = pread(v33, v34, v35, v36);
        if (result != -1)
        {
          break;
        }

        v37 = g_prot_error_callback;
        if (!g_prot_error_callback)
        {
          break;
        }

        v38 = __error();
        result = (*(v37 + 16))(v37, v33, *v38, 4);
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (result == v35)
      {
        v39 = v8[30];
        if (v39)
        {
          v40 = 0;
          v41 = v8 + 32;
          do
          {
            *v41++ = &v34[v40];
            v42 = *v5++;
            v40 += (v42 << 12);
            --v39;
          }

          while (v39);
        }
      }

      else
      {
LABEL_4:
        v8[30] = 0;
      }
    }
  }

  return result;
}

char *__dboi_inflateDBO_block_invoke(uint64_t a1, char *a2, size_t a3, unint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *v5;
  if (a2)
  {
    v7 = &a2[a4];
    if (&a2[a4] > v6[2])
    {
      v8 = a2;
      v10 = slab_new(v5, a4, 0xFAu);

      return memcpy(v10, v8, a3);
    }

LABEL_7:
    v6[1] = v7;
    return a2;
  }

  a2 = v6[1];
  v7 = &a2[a4];
  if (&a2[a4 + 8] < v6[2])
  {
    goto LABEL_7;
  }

  return slab_new(v5, a4, 0xFAu);
}

void *slab_new(void **a1, unint64_t a2, unsigned int a3)
{
  v4 = *a1;
  v18 = *a1;
  if (a2 >= 0xFFFE9)
  {
    v17 = 0;
    v5 = a2 + 24;
    if (!slab_vm_allocate(&v17, a2 + 24, a3))
    {
      v6 = v17;
      v7 = v17 + v5;
      v17[1] = v17 + v5;
      v6[2] = v7;
      *v6 = *v4;
      *v4 = v6;
      return v6 + 3;
    }

    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert(v11, "slab_allocator.c", 438, "kr == 0", v13);
LABEL_13:
    free(v12);
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

  if (slab_vm_allocate(&v18, 0x100000uLL, a3))
  {
    v14 = __si_assert_copy_extra_332();
    v12 = v14;
    v15 = "";
    if (v14)
    {
      v15 = v14;
    }

    __message_assert(v14, "slab_allocator.c", 453, "kr==0", v15);
    goto LABEL_13;
  }

  v10 = v18;
  *v18 = *a1;
  *a1 = v10;
  result = v10 + 3;
  v10[1] = v10 + a2 + 24;
  v10[2] = v10 + 0x20000;
  return result;
}

uint64_t slab_vm_allocate(void **a1, unint64_t a2, unsigned int a3)
{
  if (a3 != 250)
  {
    if (a3 - 243 > 4)
    {
      goto LABEL_18;
    }

    if (*MEMORY[0x1E69E9AC8] == a2)
    {
      v7 = OSAtomicDequeue(&stru_1EDD78B00, 0);
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (a2 != 0x100000)
      {
        goto LABEL_18;
      }

      v10 = OSAtomicDequeue(&stru_1EDD78B10, 0);
      if (!v10)
      {
        goto LABEL_18;
      }

      v7 = v10;
      atomic_fetch_add(qword_1EDD78B20, 0xFFFFFFFFFFFFFFFFLL);
    }

    v11 = v7[1];
    *a1 = v11;
    bzero(v11, v11[1] - v11);
    OSAtomicEnqueue(&slab_cache, v7, 0);
    v9 = &tag_sizes[a3 - 240];
    goto LABEL_17;
  }

  if (*MEMORY[0x1E69E9AC8] == a2)
  {
    v6 = OSAtomicDequeue(&stru_1EDD78D30, 0);
    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a2 == 0x100000)
  {
    v8 = OSAtomicDequeue(&stru_1EDD78D40, 0);
    if (v8)
    {
      v6 = v8;
      atomic_fetch_add(qword_1EDD78D50, 0xFFFFFFFFFFFFFFFFLL);
LABEL_12:
      *a1 = v6[1];
      OSAtomicEnqueue(&slab_cache, v6, 0);
      v9 = qword_1EDD78CE0;
LABEL_17:
      atomic_fetch_add_explicit(v9, a2, memory_order_relaxed);
      return 0;
    }
  }

LABEL_18:

  return my_vm_allocate(a1, a2, (a3 << 24) | 1);
}

int *packOids(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, PartialQueryResults *this, uint64_t a7)
{
  v81 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 104);
  if (*(v13 + 99) == 1 && *(this + 29))
  {
    v65 = __si_assert_copy_extra_332();
    v66 = v65;
    v67 = "";
    if (v65)
    {
      v67 = v65;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 1635, "attributeCount==0", v67);
    free(v66);
    if (__valid_fs(-1))
    {
      v68 = 2989;
    }

    else
    {
      v68 = 3072;
    }

    *v68 = -559038737;
    abort();
  }

  if (!a7)
  {
    v14 = *(a1 + 104);
    do
    {
      v15 = v14;
      v14 = *(v14 + 80);
    }

    while (v14);
    v16 = *(*(v15 + 8) + 80);
    v17 = *(v13 + 80);
    if (v17)
    {
      v18 = 0;
      do
      {
        v18 ^= *(v13 + 104) == 0;
        v13 = v17;
        v17 = *(v17 + 80);
      }

      while (v17);
      if (v18)
      {
        v19 = 3553;
      }

      else
      {
        v19 = 2781;
      }
    }

    else
    {
      v19 = 2781;
    }

    PartialQueryResults::start(this, v16, v19, a5, 0);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v21 = *(a1 + 160);
  v22 = v21 > 6;
  v23 = (1 << v21) & 0x4A;
  v24 = v22 || v23 == 0;
  v69 = a7;
  if (v24)
  {
    updated = 0;
    if (!a5)
    {
      goto LABEL_65;
    }
  }

  else
  {
    updated = SISearchCtx_METADATA::updateGroupingCount(a1);
    if (!a5)
    {
      goto LABEL_65;
    }
  }

  v26 = 0;
  do
  {
    v27 = *(a1 + 104);
    if (*(v27 + 96))
    {
      break;
    }

    v28 = *(a1 + 104);
    do
    {
      v29 = v28;
      v28 = *(v28 + 80);
    }

    while (v28);
    if (*(*(v29 + 8) + 12) == 1)
    {
      break;
    }

    if (*(this + 314) >= 0xFFFDuLL)
    {
      v30 = *(a1 + 104);
      do
      {
        v31 = v30;
        v30 = *(v30 + 80);
      }

      while (v30);
      v32 = *(v27 + 80);
      if (v32)
      {
        v33 = 0;
        do
        {
          v33 ^= *(v27 + 104) == 0;
          v27 = v32;
          v32 = *(v32 + 80);
        }

        while (v32);
        if (v33)
        {
          v34 = 3553;
        }

        else
        {
          v34 = 2781;
        }
      }

      else
      {
        v34 = 2781;
      }

      PartialQueryResults::prepare(this, *(*(v31 + 8) + 80), v34, 0);
    }

    if (*(a1 + 160) != 4)
    {
      v35 = *(a2 + 8 * v26);
      ++*(this + 314);
      v36 = *(this + 443);
      *v36 = v35;
      *(this + 443) = v36 + 1;
      if (*(*(a1 + 104) + 99) == 1)
      {
        _MDPlistBytesAddNull();
      }
    }

    if (updated)
    {
      v37 = *(a3 + 2 * v26);
      v38 = v37 & 0xFFDF;
      if (updated <= (v37 & 0xFFFFFFDF))
      {
        v38 = 18;
      }

      if (updated <= v37)
      {
        LOWORD(v37) = 0;
      }

      v39 = *(a1 + 650) == 1 ? v37 : v38;
    }

    else
    {
      v39 = 0;
    }

    if (*(a1 + 832) >= 2u && *(a1 + 656) > v39)
    {
      v40 = *(a1 + 928);
      if (v40)
      {
        v41 = (a4 + 80 * v26);
        v43 = *v41;
        v42 = v41[1];
        v44 = *(a1 + 184);
        if (*(a1 + 168))
        {
          v45 = *(a1 + 168);
        }

        else
        {
          v45 = *(a1 + 184);
        }

        if (*(a1 + 400) & v43 | *(a1 + 408) & v42)
        {
          v46 = *(a1 + 424) & v42;
          *buf = *(a1 + 416) & v43;
          *&buf[8] = v46;
        }

        else
        {
          *buf = *v41;
          *&buf[8] = v42;
        }

        if (*(a1 + 464) & v43 | *(a1 + 472) & v42)
        {
          v47 = *(a1 + 496) & v43;
          v48 = *(a1 + 516);
          v49 = ((*(a1 + 504) & v42) << v48) | (v47 >> 1 >> ~v48);
          v50 = v47 << v48;
          if ((v48 & 0x40) != 0)
          {
            v49 = v50;
            v50 = 0;
          }

          v51 = v50 | 1;
        }

        else
        {
          v51 = 0;
          v49 = 0;
        }

        v53 = v41[4];
        v52 = v41[5];
        v54 = *(v41 + 12);
        v55 = *(v41 + 13);
        v56 = *(v41 + 14);
        v57 = *(v41 + 60);
        v58 = *(v41 + 68);
        v59 = *(v41 + 69);
        *&buf[16] = v51;
        v72 = v49;
        v73 = v53;
        v74 = v52;
        v75 = v54;
        v76 = v55;
        v77 = v56;
        v78 = v57;
        v79 = v58 & 1;
        v80 = v59 & 1;
        ci_donebits_push(v40, v45, v44, v39, buf);
      }
    }

    atomic_fetch_add((a1 + 544), 1uLL);
    ++v26;
  }

  while (v26 != a5);
LABEL_65:
  v60 = *__error();
  v61 = _SILogForLogForCategory(1);
  v62 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v61, v62))
  {
    v63 = CFAbsoluteTimeGetCurrent();
    *buf = 134218240;
    *&buf[4] = a5;
    *&buf[12] = 2048;
    *&buf[14] = v63 - Current;
    _os_log_impl(&dword_1C278D000, v61, v62, "Read/evaluated %ld oids in %f seconds!", buf, 0x16u);
  }

  result = __error();
  *result = v60;
  if (!v69)
  {
    if (*(this + 186))
    {
      _MDPlistBytesEndArray();
      _MDPlistBytesEndPlist();
    }

    result = *(this + 58);
    if (result)
    {
      _MDStoreOIDArrayEndBulkAdd();
      result = _MDStoreOIDArrayEndSequence();
      *(this + 443) = 0;
    }
  }

  return result;
}

unsigned int *db_obj_subiter_next(unsigned int *result, unint64_t *a2, __n128 a3, double a4, __n128 a5)
{
  if (result)
  {
    v6 = result;
    v7 = *result;
    while (1)
    {
      result = _db_obj_iter_next(v6, a2, 0, a3, a4, a5);
      if (result)
      {
        break;
      }

      v8 = atomic_load(v6 + 8);
      v9 = *(v6 + 7);
      if (v8 >= v9)
      {
        v10 = *(v6 + 112) + 1;
        *(v6 + 112) = v10;
        if (v10 > 1u || *(v6 + 10) == v9)
        {
          return 0;
        }

        atomic_store(0, v6 + 8);
        if (v9)
        {
          v11 = 0;
          v12 = 0;
          do
          {
            v13 = *(v7 + 32) + 32 * *(v6 + 1) + v11;
            *(v13 + 16) |= 0x3FFFFFFFCuLL;
            v14 = *(v7 + 32) + 32 * *(v6 + 1) + v11;
            *(v14 + 25) = 0;
            *(v14 + 16) |= 0x400000000uLL;
            ++v12;
            v11 += 32;
          }

          while (v12 < *(v6 + 7));
        }

        subiter_do_lookups(v6, a3.n128_f64[0], a4, a5);
      }

      else if (*(v6 + 112))
      {
        return 0;
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unsigned int *_db_obj_iter_next(uint64_t a1, unint64_t *a2, int a3, __n128 a4, double a5, __n128 a6)
{
  v109 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  if (*(*a1 + 74) == 1)
  {
    if (v9 + 80 != a1)
    {
      v56 = __si_assert_copy_extra_3233(0, -1);
      v57 = v56;
      v58 = "";
      if (v56)
      {
        v58 = v56;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 12885, "iter==&dboi->subiterator", v58);
LABEL_96:
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

    obj_iter_resume(*a1, a4.n128_f64[0], a5, a6);
  }

  v10 = (a1 + 96);
  if (!*(a1 + 96))
  {
    if (!*(v9 + 64))
    {
      goto LABEL_9;
    }

    os_unfair_lock_lock(&slabQueueLock);
    v11 = *(v9 + 64);
    if (v11)
    {
      *v10 = v11;
      *(v9 + 64) = *(v11 + 24);
    }

    os_unfair_lock_unlock(&slabQueueLock);
    if (!*v10)
    {
LABEL_9:
      *block = 0;
      v12 = MEMORY[0x1E69E9AC8];
      v13 = *MEMORY[0x1E69E9AC8];
      v14 = OSAtomicDequeue(&stru_1EDD78D30, 0);
      if (v14)
      {
        v15 = v14[1];
        OSAtomicEnqueue(&slab_cache, v14, 0);
        atomic_fetch_add_explicit(qword_1EDD78CE0, v13, memory_order_relaxed);
      }

      else
      {
        if (my_vm_allocate(block, v13, 0xFA000001))
        {
          v15 = 0;
          goto LABEL_14;
        }

        v15 = *block;
      }

      *v15 = 0;
      v15[1] = v15 + 3;
      v15[2] = v15 + v13;
      madvise(v15 + 3, *v12, 3);
LABEL_14:
      *v10 = v15;
    }
  }

  v16 = (a1 + 64);
  v17 = atomic_load((a1 + 64));
  if (v17 >= *(a1 + 56))
  {
    result = 0;
    *a2 = -1;
    return result;
  }

  v18 = atomic_load(v16);
  v19 = *(v9 + 32);
  v20 = *(a1 + 8);
  for (i = v19 + 32 * v20 + 32 * atomic_fetch_add(v16, 1uLL); (*(i + 24) & 1) != 0; i = v23 + 32 * v24 + 32 * atomic_fetch_add((a1 + 64), 1uLL))
  {
    v22 = atomic_load((a1 + 64));
    if (v22 >= *(a1 + 56))
    {
      return 0;
    }

    v23 = *(v9 + 32);
    v24 = *(a1 + 8);
  }

  *a2 = *(i + 8);
  v25 = *(*(v9 + 24) + 992);
  v26 = v25[1];
  if (v26)
  {
    v27 = *i;
    a4.n128_u64[0] = vcnt_s8(v26);
    a4.n128_u16[0] = vaddlv_u8(a4.n128_u64[0]);
    if (a4.n128_u32[0] > 1uLL)
    {
      v28 = *i;
      if (v27 >= *&v26)
      {
        v28 = v27 % *&v26;
      }
    }

    else
    {
      v28 = (*&v26 - 1) & v27;
    }

    v30 = *(*v25 + 8 * v28);
    if (v30)
    {
      for (j = *v30; j; j = *j)
      {
        v32 = j[1];
        if (v32 == v27)
        {
          if (j[2] == v27)
          {
            if (*(j + 6) != 3)
            {
              v53 = j[4];
              *(i + 24) |= 1u;
              ++*(a1 + 80);
              v54 = (*(i + 24) >> 2) & 1;

              return dboi_inflateDBO(v9, (a1 + 96), v53, v54);
            }

            return 0;
          }
        }

        else
        {
          if (a4.n128_u32[0] > 1uLL)
          {
            if (v32 >= *&v26)
            {
              v32 %= *&v26;
            }
          }

          else
          {
            v32 &= *&v26 - 1;
          }

          if (v32 != v28)
          {
            break;
          }
        }
      }
    }
  }

  v33 = *(i + 16);
  if ((~v33 & 0x3FFFFFFFCLL) == 0)
  {
    return 0;
  }

  if (*(v9 + 75) == 1)
  {
    v34 = *(*a1 + 24);
    if (!v34)
    {
      return 0;
    }

    v35 = *(v34 + 856);
    if (!v35 || !*(v35 + 8))
    {
      return 0;
    }

    *block = MEMORY[0x1E69E9820];
    *&block[8] = 0x40000000;
    *&block[16] = __get_pages_for_keys_block_invoke;
    *&block[24] = &__block_descriptor_tmp_186;
    *&block[32] = v34;
    v106 = vdupq_n_s64(1uLL);
    v107 = i;
    v108 = a1;
    dispatch_apply(1uLL, 0, block);
    v33 = *(i + 16);
  }

  v36 = v33 >> 2;
  v37 = *(a1 + 40);
  if (v37 == v36)
  {
    goto LABEL_44;
  }

  if (a3)
  {
    result = 0;
    *a2 = v18;
    atomic_store(v18, (a1 + 64));
    return result;
  }

  v42 = *(a1 + 16);
  v43 = 0xFFFFFFFFLL;
  if (v42)
  {
    *(a1 + 40) = -1;
    v43 = v37;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  if (*v10)
  {
    slab_reset((a1 + 96), 0xFFFFFFFF);
  }

  v44 = *(i + 16) >> 2;
  subiter_fetch_page(a4);
  if (*(a1 + 88))
  {
    v46 = atomic_load((a1 + 64));
    v47 = *(a1 + 56);
    if (v46 < v47)
    {
      v48 = v46 + 1;
      for (k = *(v9 + 32) + 32 * *(a1 + 8) + 32 * v46; ; k += 32)
      {
        if (*(k + 24))
        {
          if (v48 >= v47)
          {
            goto LABEL_65;
          }
        }

        else if (v48 >= v47 || v44 != (*(k + 16) >> 2))
        {
LABEL_65:
          if (v48 < v47)
          {
            *(a1 + 48) = v48;
            subiter_fetch_next_page(a1, *(k + 16) >> 2, *(k + 25), (*(i + 16) & 0x400000000) != 0);
          }

          break;
        }

        ++v48;
      }
    }
  }

  if (v42)
  {
    if (*(*a1 + 73))
    {
      v50 = 24;
    }

    else
    {
      v50 = 16;
    }

    page_release(*(v9 + 24), v42, v43, v50, 0);
  }

  if (*(a1 + 88))
  {
    v51 = *(a1 + 72);
    if (v51 < *(a1 + 56))
    {
      LODWORD(v52) = -1;
      *&v45 = 134218240;
      do
      {
        v92 = *(v9 + 32) + 32 * *(a1 + 8) + 32 * v51;
        if ((*(v92 + 24) & 2) == 0)
        {
          v93 = *(v92 + 16);
          if ((v93 & 0x400000000) != 0)
          {
            *(v92 + 24) |= 2u;
            v94 = v93 >> 2;
            if (v52 != (v93 >> 2))
            {
              if (*(a1 + 44) != v94 && *(a1 + 40) != v94)
              {
                obj_iter_prefetch_page(v9, v94, *(v92 + 25));
                break;
              }

              if (dword_1EBF46AD0 >= 5)
              {
                v104 = v45;
                v103 = v93 >> 2;
                v95 = *__error();
                v96 = _SILogForLogForCategory(1);
                if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                {
                  v97 = atomic_load((a1 + 64));
                  v98 = (*(v92 + 16) >> 34) & 1;
                  *block = v104;
                  *&block[4] = v97;
                  *&block[12] = 1024;
                  *&block[14] = v98;
                  _os_log_impl(&dword_1C278D000, v96, OS_LOG_TYPE_DEFAULT, "(nextpage)Skip prefetch of %ld cache:%d", block, 0x12u);
                }

                *__error() = v95;
                LODWORD(v52) = v103;
                v45 = v104;
              }

              else
              {
                v52 = v93 >> 2;
              }
            }
          }
        }

        v51 = *(a1 + 72) + 1;
        *(a1 + 72) = v51;
      }

      while (v51 < *(a1 + 56));
    }
  }

LABEL_44:
  v38 = *(a1 + 16);
  if (!v38)
  {
    return 0;
  }

  if (*v38 != 1684172850 && (*v38 || *(v38 + 4)))
  {
    v101 = __si_assert_copy_extra_3233(0, -1);
    v57 = v101;
    v102 = "";
    if (v101)
    {
      v102 = v101;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 12996, "iter->dbp->signature == 0x64627032 || (iter->dbp->signature==0 && iter->dbp->size==0)", v102);
    goto LABEL_96;
  }

  v39 = *(v38 + 8);
  v40 = *(v38 + 24);
  if (*(v38 + 24) < 0)
  {
    v55 = *(v38 + 24);
    if (v55 > 0xBF)
    {
      if (v55 > 0xDF)
      {
        if (v55 > 0xEF)
        {
          if (v55 > 0xF7)
          {
            if (v55 > 0xFB)
            {
              if (v55 > 0xFD)
              {
                if (v55 == 255)
                {
                  v40 = *(v38 + 25);
                  v41 = 9;
                }

                else
                {
                  v40 = (*(v38 + 25) << 48) | (*(v38 + 26) << 40) | (*(v38 + 27) << 32) | (*(v38 + 28) << 24) | (*(v38 + 29) << 16) | (*(v38 + 30) << 8) | *(v38 + 31);
                  v41 = 8;
                }
              }

              else
              {
                v40 = ((v40 & 1) << 48) | (*(v38 + 25) << 40) | (*(v38 + 26) << 32) | (*(v38 + 27) << 24) | (*(v38 + 28) << 16) | (*(v38 + 29) << 8) | *(v38 + 30);
                v41 = 7;
              }
            }

            else
            {
              v40 = ((v40 & 3) << 40) | (*(v38 + 25) << 32) | (*(v38 + 26) << 24) | (*(v38 + 27) << 16) | (*(v38 + 28) << 8) | *(v38 + 29);
              v41 = 6;
            }
          }

          else
          {
            v40 = ((v40 & 7) << 32) | (*(v38 + 25) << 24) | (*(v38 + 26) << 16) | (*(v38 + 27) << 8) | *(v38 + 28);
            v41 = 5;
          }
        }

        else
        {
          v40 = ((v40 & 0xF) << 24) | (*(v38 + 25) << 16) | (*(v38 + 26) << 8) | *(v38 + 27);
          v41 = 4;
        }
      }

      else
      {
        v40 = ((v40 & 0x1F) << 16) | (*(v38 + 25) << 8) | *(v38 + 26);
        v41 = 3;
      }
    }

    else
    {
      v41 = 2;
      v40 = *(v38 + 25) | ((v40 & 0x3F) << 8);
    }
  }

  else
  {
    v41 = 1;
  }

  v60 = v38 + 20;
  *block = v41;
  VInt16 = ldb_readVInt16(v38 + 24, block);
  v62 = *(*(v9 + 24) + 804);
  v63 = *(a1 + 24);
  if (!v63)
  {
    *(a1 + 24) = v60;
    v63 = v38 + 20;
  }

  v64 = v38 + v39;
  if ((v62 & ((VInt16 & 0x20) >> 5)) != 0)
  {
    v65 = 1;
  }

  else
  {
    v65 = 3;
  }

  if ((*(i + 16) & 3) != 3)
  {
    v65 = *(i + 16) & 3;
  }

  if (v65 != 3)
  {
    if (v63 < v64)
    {
      while (1)
      {
        v73 = *(v63 + 4);
        if (*(v63 + 4) < 0)
        {
          v75 = *(v63 + 4);
          if (v75 > 0xBF)
          {
            if (v75 > 0xDF)
            {
              if (v75 > 0xEF)
              {
                if (v75 > 0xF7)
                {
                  if (v75 > 0xFB)
                  {
                    if (v75 > 0xFD)
                    {
                      if (v75 == 255)
                      {
                        v73 = *(v63 + 5);
                        v74 = 9;
                      }

                      else
                      {
                        v73 = (*(v63 + 5) << 48) | (*(v63 + 6) << 40) | (*(v63 + 7) << 32) | (*(v63 + 8) << 24) | (*(v63 + 9) << 16) | (*(v63 + 10) << 8) | *(v63 + 11);
                        v74 = 8;
                      }
                    }

                    else
                    {
                      v73 = ((v73 & 1) << 48) | (*(v63 + 5) << 40) | (*(v63 + 6) << 32) | (*(v63 + 7) << 24) | (*(v63 + 8) << 16) | (*(v63 + 9) << 8) | *(v63 + 10);
                      v74 = 7;
                    }
                  }

                  else
                  {
                    v73 = ((v73 & 3) << 40) | (*(v63 + 5) << 32) | (*(v63 + 6) << 24) | (*(v63 + 7) << 16) | (*(v63 + 8) << 8) | *(v63 + 9);
                    v74 = 6;
                  }
                }

                else
                {
                  v73 = ((v73 & 7) << 32) | (*(v63 + 5) << 24) | (*(v63 + 6) << 16) | (*(v63 + 7) << 8) | *(v63 + 8);
                  v74 = 5;
                }
              }

              else
              {
                v73 = ((v73 & 0xF) << 24) | (*(v63 + 5) << 16) | (*(v63 + 6) << 8) | *(v63 + 7);
                v74 = 4;
              }
            }

            else
            {
              v73 = ((v73 & 0x1F) << 16) | (*(v63 + 5) << 8) | *(v63 + 6);
              v74 = 3;
            }
          }

          else
          {
            v74 = 2;
            v73 = *(v63 + 5) | ((v73 & 0x3F) << 8);
          }
        }

        else
        {
          v74 = 1;
        }

        v76 = (v63 + 4 + v74);
        v77 = *v76;
        if (*v76 < 0)
        {
          if (v77 >= 0xC0)
          {
            if (v77 >= 0xE0)
            {
              v99 = __si_assert_copy_extra_3233(0, -1);
              v57 = v99;
              v100 = "";
              if (v99)
              {
                v100 = v99;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v100);
              goto LABEL_96;
            }

            v78 = 2;
          }

          else
          {
            v78 = 1;
          }

          v77 = v76[v78];
        }

        v79 = *i - v73;
        if (*i == v73)
        {
          goto LABEL_169;
        }

        v80 = v65 - (v62 & (v77 >> 5) & 1);
        if (v80)
        {
          v79 = v80;
        }

        if (v79 <= 0)
        {
          v82 = *__error();
          v83 = _SILogForLogForCategory(1);
          v84 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v83, v84))
          {
            v85 = *i;
            v86 = *(i + 16) & 3;
            v87 = *(a1 + 24) - v60;
            *block = 134218752;
            *&block[4] = v85;
            *&block[12] = 1024;
            *&block[14] = v86;
            *&block[18] = 2048;
            *&block[20] = v87;
            *&block[28] = 2048;
            *&block[30] = v40;
            _os_log_impl(&dword_1C278D000, v83, v84, "Failed to find %lld (%d) (offset:%lu first:%llu)", block, 0x26u);
          }

          v88 = __error();
          result = 0;
          *v88 = v82;
          return result;
        }

        result = 0;
        v63 += (*v63 + 4);
        *(a1 + 24) = v63;
        if (v63 >= v64)
        {
          return result;
        }
      }
    }

    return 0;
  }

  for (m = *(a1 + 16) + 20; ; m += (*m + 4))
  {
    *(a1 + 24) = m;
    if (m >= v64)
    {
      result = 0;
      *(a1 + 24) = v63;
      return result;
    }

    v67 = *(m + 4);
    if (*(m + 4) < 0)
    {
      v69 = *(m + 4);
      if (v69 > 0xBF)
      {
        if (v69 > 0xDF)
        {
          if (v69 > 0xEF)
          {
            if (v69 > 0xF7)
            {
              if (v69 > 0xFB)
              {
                if (v69 > 0xFD)
                {
                  if (v69 == 255)
                  {
                    v67 = *(m + 5);
                    v68 = 9;
                  }

                  else
                  {
                    v67 = (*(m + 5) << 48) | (*(m + 6) << 40) | (*(m + 7) << 32) | (*(m + 8) << 24) | (*(m + 9) << 16) | (*(m + 10) << 8) | *(m + 11);
                    v68 = 8;
                  }
                }

                else
                {
                  v67 = ((v67 & 1) << 48) | (*(m + 5) << 40) | (*(m + 6) << 32) | (*(m + 7) << 24) | (*(m + 8) << 16) | (*(m + 9) << 8) | *(m + 10);
                  v68 = 7;
                }
              }

              else
              {
                v67 = ((v67 & 3) << 40) | (*(m + 5) << 32) | (*(m + 6) << 24) | (*(m + 7) << 16) | (*(m + 8) << 8) | *(m + 9);
                v68 = 6;
              }
            }

            else
            {
              v67 = ((v67 & 7) << 32) | (*(m + 5) << 24) | (*(m + 6) << 16) | (*(m + 7) << 8) | *(m + 8);
              v68 = 5;
            }
          }

          else
          {
            v67 = ((v67 & 0xF) << 24) | (*(m + 5) << 16) | (*(m + 6) << 8) | *(m + 7);
            v68 = 4;
          }
        }

        else
        {
          v67 = ((v67 & 0x1F) << 16) | (*(m + 5) << 8) | *(m + 6);
          v68 = 3;
        }
      }

      else
      {
        v68 = 2;
        v67 = *(m + 5) | ((v67 & 0x3F) << 8);
      }
    }

    else
    {
      v68 = 1;
    }

    v70 = (m + 4 + v68);
    v71 = *v70;
    if (*v70 < 0)
    {
      if (v71 >= 0xC0)
      {
        if (v71 >= 0xE0)
        {
          v89 = __si_assert_copy_extra_3233(0, -1);
          v90 = v89;
          v91 = "";
          if (v89)
          {
            v91 = v89;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v91);
          free(v90);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v72 = 2;
      }

      else
      {
        v72 = 1;
      }

      v71 = v70[v72];
    }

    if (v67 == *i)
    {
      break;
    }
  }

  if (v62)
  {
    v81 = (v71 >> 5) & 1;
  }

  else
  {
    v81 = 0;
  }

  *(i + 16) = v81 | *(i + 16) & 0xFFFFFFFFFFFFFFFCLL;
LABEL_169:
  *(i + 24) |= 1u;
  ++*(a1 + 80);
  return dboi_inflateDBO(v9, (a1 + 96), *(a1 + 24), (*(i + 24) & 4) != 0);
}

char *copyMaximumTerm(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(&__s1[1], 0, 255);
  if (a2 <= 0)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIQuery.c", 179, "field >= 1", v7);
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

  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  __s1[0] = v2;
  if (a2 >> 28)
  {
    v3 = &__s1[6];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = (a2 >> 21) | 0x80;
    __s1[5] = a2 >> 28;
  }

  else if (a2 >= 0x200000)
  {
    v3 = &__s1[5];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = a2 >> 21;
  }

  else if (a2 >= 0x4000)
  {
    v3 = &__s1[4];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = a2 >> 14;
  }

  else if (a2 >= 0x80)
  {
    v3 = &__s1[3];
    __s1[1] = a2 | 0x80;
    __s1[2] = a2 >> 7;
  }

  else
  {
    v3 = &__s1[2];
    __s1[1] = a2;
  }

  *v3 = 0;
  __strlcat_chk();
  return strdup(__s1);
}

uint64_t skipDBFData(uint64_t result, int a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (result != 14)
  {
    if ((a2 & 3) == 2)
    {
      if (result != 15)
      {
        goto LABEL_11;
      }

      goto LABEL_32;
    }

    if (a2)
    {
      if (result != 15)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (result <= 6)
      {
        if (result < 3)
        {
          v7 = *a3 + 1;
          goto LABEL_127;
        }

        if ((result - 3) < 2)
        {
          v22 = *a3;
          if (*(a4 + *a3) < 0)
          {
            v30 = *(a4 + *a3);
            if (v30 >= 0xC0)
            {
              if (v30 >= 0xE0)
              {
LABEL_134:
                v34 = __si_assert_copy_extra_2708(0);
                v35 = v34;
                v36 = "";
                if (v34)
                {
                  v36 = v34;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v36);
                free(v35);
                if (__valid_fs(-1))
                {
                  MEMORY[0xBAD] = -559038737;
                  abort();
                }

                MEMORY[0xC00] = -559038737;
                abort();
              }

              v7 = v22 + 3;
            }

            else
            {
              v7 = v22 + 2;
            }
          }

          else
          {
            v7 = v22 + 1;
          }

          goto LABEL_127;
        }

        if ((result - 5) >= 2)
        {
          goto LABEL_28;
        }

        goto LABEL_32;
      }

      if (result <= 9)
      {
        if ((result - 7) < 2)
        {
          v6 = *a3;
          v12 = *(a4 + *a3);
          if (v12 < 0)
          {
            goto LABEL_21;
          }

          goto LABEL_33;
        }

        if (result != 9)
        {
          goto LABEL_28;
        }

        v21 = 4;
LABEL_126:
        v7 = *a3 + v21;
        goto LABEL_127;
      }

      v21 = 8;
      if (result == 10 || result == 12)
      {
        goto LABEL_126;
      }

      if (result != 15)
      {
        goto LABEL_28;
      }
    }

LABEL_32:
    v6 = *a3;
    if (*(a4 + *a3) < 0)
    {
      v20 = *(a4 + *a3);
      if (v20 > 0xBF)
      {
        if (v20 > 0xDF)
        {
          if (v20 > 0xEF)
          {
LABEL_60:
            v7 = v6 + 5;
            goto LABEL_127;
          }

LABEL_57:
          v7 = v6 + 4;
          goto LABEL_127;
        }

LABEL_46:
        v7 = v6 + 3;
        goto LABEL_127;
      }

LABEL_38:
      v7 = v6 + 2;
      goto LABEL_127;
    }

    goto LABEL_33;
  }

  v5 = (32 * a2) & 0x1000;
  if (a5)
  {
    v5 = 4096;
  }

  if ((((a2 << 7) | (16 * a2)) & 0x4020 | v5) == 0x5020)
  {
    v6 = *a3;
    if ((a2 & 4) == 0)
    {
      v7 = v6 + *(a4 + v6);
      goto LABEL_127;
    }

    v12 = *(a4 + v6);
    if (v12 < 0)
    {
LABEL_21:
      if (v12 > 0xBFu)
      {
        if (v12 > 0xDFu)
        {
          if (v12 > 0xEFu)
          {
            if (v12 > 0xF7u)
            {
              if (v12 > 0xFBu)
              {
                if (v12 > 0xFDu)
                {
                  if (v12 == 255)
                  {
                    v7 = v6 + 9;
                  }

                  else
                  {
                    v7 = v6 + 8;
                  }
                }

                else
                {
                  v7 = v6 + 7;
                }
              }

              else
              {
                v7 = v6 + 6;
              }

              goto LABEL_127;
            }

            goto LABEL_60;
          }

          goto LABEL_57;
        }

        goto LABEL_46;
      }

      goto LABEL_38;
    }

LABEL_33:
    v7 = v6 + 1;
    goto LABEL_127;
  }

  if ((a2 & 3) != 2)
  {
    if ((a2 & 1) == 0)
    {
LABEL_28:
      v13 = *a3;
      v14 = *a3 + 1;
      v15 = (a4 + *a3);
      v16 = *v15;
      if (*v15 < 0)
      {
        if (v16 > 0xBF)
        {
          if (v16 > 0xDF)
          {
            if (v16 > 0xEF)
            {
              v16 = *(a4 + v14);
              v14 = v13 + 5;
            }

            else
            {
              v16 = ((v16 & 0xF) << 24) | (*(a4 + v14) << 16) | (v15[2] << 8) | v15[3];
              v14 = v13 + 4;
            }
          }

          else
          {
            v16 = ((v16 & 0x1F) << 16) | (*(a4 + v14) << 8) | v15[2];
            v14 = v13 + 3;
          }
        }

        else
        {
          v17 = *(a4 + v14) | ((v16 & 0x3F) << 8);
          v14 = v13 + 2;
          v16 = v17;
        }
      }

      *a3 = v14;
      v21 = v16;
      goto LABEL_126;
    }

LABEL_34:
    v18 = *a3;
    v7 = *a3 + 1;
    v19 = (a4 + *a3);
    v10 = *v19;
    if (*v19 < 0)
    {
      if (v10 <= 0xBF)
      {
        v7 = v18 + 2 + (*(a4 + v7) | ((v10 & 0x3F) << 8));
        goto LABEL_127;
      }

      if (v10 <= 0xDF)
      {
        v7 = v18 + 3 + (((v10 & 0x1F) << 16) | (*(a4 + v7) << 8) | v19[2]);
        goto LABEL_127;
      }

      if (v10 <= 0xEF)
      {
        v7 = v18 + 4 + (((v10 & 0xF) << 24) | (*(a4 + v7) << 16) | (v19[2] << 8) | v19[3]);
        goto LABEL_127;
      }

      v10 = *(a4 + v7);
      v7 = v18 + 5;
    }

LABEL_68:
    v7 += v10;
    goto LABEL_127;
  }

LABEL_11:
  v8 = *a3;
  v7 = *a3 + 1;
  v9 = (a4 + *a3);
  v10 = *v9;
  if (*v9 < 0)
  {
    if (v10 > 0xBF)
    {
      if (v10 > 0xDF)
      {
        if (v10 > 0xEF)
        {
          v10 = *(a4 + v7);
          v7 = v8 + 5;
        }

        else
        {
          v10 = ((v10 & 0xF) << 24) | (*(a4 + v7) << 16) | (v9[2] << 8) | v9[3];
          v7 = v8 + 4;
        }
      }

      else
      {
        v10 = ((v10 & 0x1F) << 16) | (*(a4 + v7) << 8) | v9[2];
        v7 = v8 + 3;
      }
    }

    else
    {
      v11 = *(a4 + v7) | ((v10 & 0x3F) << 8);
      v7 = v8 + 2;
      v10 = v11;
    }
  }

  *a3 = v7;
  if ((result - 9) < 4 || result == 14)
  {
    goto LABEL_68;
  }

  if (!v10)
  {
    return result;
  }

  if (result > 0xF)
  {
    goto LABEL_95;
  }

  if (((1 << result) & 0x8060) != 0)
  {
    for (i = 0; i < v10; i += 4)
    {
      if (*(a4 + v7) < 0)
      {
        v26 = *(a4 + v7);
        v27 = v7 + 2;
        v28 = v7 + 3;
        v29 = v7 + 4;
        v7 += 5;
        if (v26 < 0xF0)
        {
          v7 = v29;
        }

        if (v26 < 0xE0)
        {
          v7 = v28;
        }

        if (v26 < 0xC0)
        {
          v7 = v27;
        }
      }

      else
      {
        ++v7;
      }
    }

    goto LABEL_127;
  }

  if (((1 << result) & 0x18) != 0)
  {
    v31 = 0;
    while (1)
    {
      if (*(a4 + v7) < 0)
      {
        v33 = *(a4 + v7);
        if (v33 >= 0xC0)
        {
          if (v33 > 0xDF)
          {
            goto LABEL_134;
          }

          v32 = 3;
        }

        else
        {
          v32 = 2;
        }
      }

      else
      {
        v32 = 1;
      }

      v7 += v32;
      *a3 = v7;
      v31 += 2;
      if (v31 >= v10)
      {
        return result;
      }
    }
  }

  if (((1 << result) & 0x180) != 0)
  {
    for (j = 0; j < v10; j += 8)
    {
      if (*(a4 + v7) < 0)
      {
        v24 = *(a4 + v7);
        if (v24 >= 0xC0)
        {
          if (v24 >= 0xE0)
          {
            if (v24 >= 0xF0)
            {
              if (v24 >= 0xF8)
              {
                if (v24 >= 0xFC)
                {
                  if (v24 >= 0xFE)
                  {
                    if (v24 == 255)
                    {
                      v7 += 9;
                    }

                    else
                    {
                      v7 += 8;
                    }
                  }

                  else
                  {
                    v7 += 7;
                  }
                }

                else
                {
                  v7 += 6;
                }
              }

              else
              {
                v7 += 5;
              }
            }

            else
            {
              v7 += 4;
            }
          }

          else
          {
            v7 += 3;
          }
        }

        else
        {
          v7 += 2;
        }
      }

      else
      {
        ++v7;
      }
    }
  }

  else
  {
LABEL_95:
    if (result >= 3)
    {
        ;
      }
    }

    v7 += v10;
  }

LABEL_127:
  *a3 = v7;
  return result;
}

void query_updateTimingOnInitialResults(uint64_t a1)
{
  if (*(a1 + 560) == 0.0 && *(a1 + 568) == 0.0 && *(a1 + 552) == 0.0 && *(a1 + 536) == 0.0 && *(a1 + 544) == 0.0)
  {
    v1 = *(a1 + 424);
    *(a1 + 544) = *(a1 + 408);
    *(a1 + 560) = v1;
    *(a1 + 528) = *(a1 + 392);
    *(a1 + 376) = CFAbsoluteTimeGetCurrent();
  }
}

void *slab_reset(void *result, unsigned int a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    result = *v2;
    *v2 = 0;
    *(*v3 + 8) = *v3 + 24;
    if (result)
    {
      do
      {
        v5 = *result;
        slab_vm_deallocate(result, result[2] - result, a2);
        result = v5;
      }

      while (v5);
    }
  }

  return result;
}

void si_querypipe_addresults(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5)
{
  v151 = a5;
  LODWORD(v150) = a3;
  v7 = a1;
  v181 = *MEMORY[0x1E69E9840];
  v8 = a1;
  do
  {
    v9 = v8;
    v8 = *(v8 + 80);
  }

  while (v8);
  v10 = *(v9 + 8);
  pthread_mutex_lock((*v10 + 8));
  ++v10[21];
  pthread_mutex_unlock((*v10 + 8));
  if (a4)
  {
    v11 = *(a2 + 456);
    *(a2 + 456) = 0;
    si_querypipe_send_matchinfo(v7, v11);
  }

  Mutable = *(a2 + 440);
  if (Mutable)
  {
    *(a2 + 440) = 0;
    _MDPlistBytesEndArray();
    _MDPlistBytesEndPlist();
    MutableUsingMalloc = *(a2 + 448);
    if (!MutableUsingMalloc)
    {
      goto LABEL_10;
    }
  }

  else
  {
    MutableUsingMalloc = *(a2 + 448);
    if (!MutableUsingMalloc)
    {
      goto LABEL_16;
    }
  }

  *(a2 + 448) = 0;
  _MDPlistBytesEndArray();
  _MDPlistBytesEndPlist();
LABEL_10:
  v14 = v7;
  do
  {
    v15 = v14;
    v14 = *(v14 + 80);
  }

  while (v14);
  v16 = *(v15 + 8);
  v17 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
  v17[1] = *(v7 + 48);
  *(v17 + 1) = si_querypipe_copy_jobid(v7);
  if (Mutable)
  {
    if (MutableUsingMalloc)
    {
      goto LABEL_14;
    }
  }

  else
  {
    Mutable = _MDPlistBytesCreateMutable();
    _MDPlistBytesBeginPlist();
    _MDPlistBytesBeginArray();
    _MDPlistBytesEndArray();
    _MDPlistBytesEndPlist();
    if (MutableUsingMalloc)
    {
      goto LABEL_14;
    }
  }

  MutableUsingMalloc = _MDPlistBytesCreateMutableUsingMalloc();
  _MDPlistBytesBeginPlist();
  _MDPlistBytesBeginArray();
  _MDPlistBytesEndArray();
  _MDPlistBytesEndPlist();
LABEL_14:
  _MDPlistBytesAppendPlistBytes();
  CFRelease(MutableUsingMalloc);
  *(v17 + 5) = Mutable;
  *v17 = 11;
  if (!si_resultqueue_enqueue(v16, v17))
  {
    SIResultBatchFree(v17);
  }

LABEL_16:
  v18 = *(a2 + 3536);
  if (!v18)
  {
    goto LABEL_65;
  }

  v19 = 0;
  v20 = 0;
  v21 = a2 + 464;
  do
  {
    if (*(a2 + 8 * v19 + 464))
    {
      VectorCount = _MDStoreOIDArrayGetVectorCount();
      v18 = *(a2 + 3536);
    }

    else
    {
      VectorCount = 0;
    }

    v20 += VectorCount;
    ++v19;
  }

  while (v19 < v18);
  if (!v20)
  {
LABEL_65:
    if (a4)
    {
      si_querypipe_remove_process(v7, v151, 0, 0);
    }

    goto LABEL_67;
  }

  if (*(v7 + 96))
  {
    goto LABEL_173;
  }

  v23 = v7;
  do
  {
    v24 = v23;
    v23 = *(v23 + 80);
  }

  while (v23);
  if (*(*(v24 + 8) + 12))
  {
LABEL_173:
    do
    {
LABEL_67:
      v50 = v7;
      v7 = *(v7 + 80);
    }

    while (v7);
    si_resultqueue_start(*(v50 + 8));
    return;
  }

  v25 = *(v7 + 80);
  v148 = a2 + 464;
  if (!v25)
  {
    goto LABEL_71;
  }

  v26 = 0;
  v27 = v25;
  v28 = v7;
  do
  {
    v26 ^= *(v28 + 104) == 0;
    v28 = v27;
    v27 = *(v27 + 80);
  }

  while (v27);
  if ((v26 & 1) == 0)
  {
LABEL_71:
    v149 = a4;
    v51 = v25 != 0;
    if (v150)
    {
      v51 = v150;
    }

    LODWORD(v147) = v51;
    v150 = RLEOIDArrayCreateMutable(kCIQueryZoneAllocator);
    v146 = &v146;
    v177 = 0;
    v178 = &v177;
    v52.n128_u64[0] = 0x2000000000;
    v179 = 0x2000000000;
    v180 = 0;
    *buf = 0;
    v174 = buf;
    v175 = 0x2000000000;
    v176 = 0;
    MEMORY[0x1EEE9AC00](v52);
    v54 = (&v146 - ((v53 + 15) & 0xFFFFFFFF0));
    bzero(v54, v53);
    v55 = *(a2 + 3536);
    if (v55)
    {
      v56 = 0;
      v57 = 0;
      do
      {
        v58 = (a2 + 8 * v56);
        if (v58[443])
        {
          v97 = __si_assert_copy_extra_332();
          v105 = v97;
          v106 = "";
          if (v97)
          {
            v106 = v97;
          }

          __message_assert_336(v97, v98, v99, v100, v101, v102, v103, v104, "SISearchCtx.h", 1369, "ffillPtr[slot] == 0", v106);
          free(v105);
          if (__valid_fs(-1))
          {
            v107 = 2989;
          }

          else
          {
            v107 = 3072;
          }

          *v107 = -559038737;
          abort();
        }

        if (v58[58])
        {
          _MDStoreOIDArrayGetVectorCount();
          v164 = MEMORY[0x1E69E9820];
          v165 = 0x40000000;
          v166 = __si_querypipe_addresults_block_invoke;
          v167 = &unk_1E8193F78;
          v172 = v56;
          v170 = v7;
          v171 = v150;
          v168 = buf;
          v169 = v54;
          _MDStoreOIDArrayApplyBlock();
          v178[3] += v54[v56];
          if (!v58[186])
          {
            v58[186] = _MDPlistBytesCreateMutableUsingMallocWithZone();
          }

          v57 += _MDPlistBytesGetByteVectorCount();
          v55 = *(a2 + 3536);
        }

        ++v56;
      }

      while (v56 < v55);
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v59 = v178[3];
    if (!v59)
    {
      v60 = v147;
      v65 = v147 > 1;
      goto LABEL_114;
    }

    v60 = v147;
    if (v147 != 1)
    {
      v61 = v148;
      if (!v147)
      {
        if (!v55)
        {
          goto LABEL_93;
        }

        v62 = 0;
        v63 = 0;
        do
        {
          if (*(v61 + 8 * v62))
          {
            v64 = _MDStoreOIDArrayGetVectorCount();
            v55 = *(a2 + 3536);
          }

          else
          {
            v64 = 0;
          }

          v63 += v64;
          ++v62;
        }

        while (v62 < v55);
        if (v59 != v63)
        {
LABEL_93:
          if (*(v7 + 99) == 1)
          {
            PartialQueryResults::removeDupsInPlace(a2, v150);
          }
        }
      }

      goto LABEL_103;
    }

    v66 = v148;
    if (v55)
    {
      v67 = 0;
      v68 = 0;
      do
      {
        if (*(v66 + 8 * v67))
        {
          v69 = _MDStoreOIDArrayGetVectorCount();
          v55 = *(a2 + 3536);
        }

        else
        {
          v69 = 0;
        }

        v68 += v69;
        ++v67;
      }

      while (v67 < v55);
      v70 = v55 == 0;
      if (v59 == v68)
      {
LABEL_103:
        v65 = 1;
        goto LABEL_114;
      }
    }

    else
    {
      v70 = 1;
    }

    if (*(v7 + 99) == 1)
    {
      v155[0] = MEMORY[0x1E69E9820];
      v155[1] = 0x40000000;
      v156 = __si_querypipe_addresults_block_invoke_2;
      v157 = &unk_1E8193FE0;
      v158 = &v177;
      v159 = buf;
      v160 = v150;
      v161 = v7;
      v162 = v151;
      v163 = 1;
      if (v57 >= 0x4C4B40)
      {
        if (!v70)
        {
          v92 = 443;
          v93 = a2;
          while (!v93[443])
          {
            v94 = v93[58];
            v93[58] = 0;
            v95 = v93[186];
            v93[186] = 0;
            v156(v155, v94, v95);
            v65 = 0;
            v96 = v92 - 442;
            ++v92;
            ++v93;
            if (v96 >= *(a2 + 3536))
            {
              goto LABEL_114;
            }
          }

          goto LABEL_155;
        }
      }

      else
      {
        v71 = PartialQueryResults::ownOidArray(a2);
        v72 = PartialQueryResults::ownFields(a2);
        v156(v155, v71, v72);
      }
    }

    v65 = 0;
LABEL_114:
    if (v150)
    {
      CFRelease(v150);
    }

    v73 = v149;
    if (v65)
    {
      if (v57 < 0xFFFFFFFF)
      {
        if (!*(a2 + 3544))
        {
          v74 = *(a2 + 464);
          *(a2 + 464) = 0;
          _MDStoreOIDArrayAppendMultipleOIDArrays();
          v75 = v178[3];
          v76 = *(a2 + 1488);
          *(a2 + 1488) = 0;
          v77 = *(a2 + 3536);
          if (v76)
          {
LABEL_140:
            _MDPlistBytesAppendMultiplePlistBytes();
          }

          else
          {
            if (v77 <= 1)
            {
              v89 = 1;
            }

            else
            {
              v89 = v77;
            }

            v90 = (a2 + 1496);
            v91 = 1;
            while (v89 != v91)
            {
              v76 = *v90;
              *v90++ = 0;
              ++v91;
              if (v76)
              {
                goto LABEL_140;
              }
            }

            v76 = 0;
          }

          _si_querypipe_addoids(v7, v60, v74, v75, v76, v73, v151);
          goto LABEL_142;
        }

        v137 = __si_assert_copy_extra_332();
        v116 = v137;
        v145 = "";
        if (v137)
        {
          v145 = v137;
        }

        __message_assert_336(v137, v138, v139, v140, v141, v142, v143, v144, "SISearchCtx.h", 1409, "ffillPtr[0] == 0", v145, v146);
LABEL_161:
        free(v116);
        if (__valid_fs(-1))
        {
          v127 = 2989;
        }

        else
        {
          v127 = 3072;
        }

        *v127 = -559038737;
        abort();
      }

      v80 = *(a2 + 3536);
      if (v80)
      {
        v81 = 443;
        v82 = a2;
        while (!v82[443])
        {
          v83 = v82[58];
          v85 = *v54++;
          v84 = v85;
          v82[58] = 0;
          v86 = v82[186];
          v82[186] = 0;
          v87 = v81 - 442;
          if (v81 - 442 == v80)
          {
            v88 = v149;
          }

          else
          {
            v88 = 0;
          }

          _si_querypipe_addoids(v7, v60, v83, v84, v86, v88, v151);
          v80 = *(a2 + 3536);
          ++v81;
          ++v82;
          if (v87 >= v80)
          {
            goto LABEL_142;
          }
        }

LABEL_155:
        v108 = __si_assert_copy_extra_332();
        v116 = v108;
        v117 = "";
        if (v108)
        {
          v117 = v108;
        }

        __message_assert_336(v108, v109, v110, v111, v112, v113, v114, v115, "SISearchCtx.h", 1363, "ffillPtr[slot] == 0", v117, v146);
        goto LABEL_161;
      }
    }

    else
    {
      if (v149)
      {
        si_querypipe_remove_process(v7, v151, 0, 0);
      }

      v78 = v7;
      do
      {
        v79 = v78;
        v78 = *(v78 + 80);
      }

      while (v78);
      si_resultqueue_start(*(v79 + 8));
    }

LABEL_142:
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v177, 8);
    if (!v65)
    {
      return;
    }

    goto LABEL_67;
  }

  if (!v18)
  {
    goto LABEL_67;
  }

  v29 = 0;
  v146 = v153;
  v147 = a2 + 3544;
  v149 = a4;
  while (1)
  {
    if (*(v21 + 8 * v29))
    {
      v30 = _MDStoreOIDArrayGetVectorCount();
    }

    else
    {
      v30 = 0;
    }

    if (*(v147 + 8 * v29))
    {
      v118 = __si_assert_copy_extra_332();
      v116 = v118;
      v126 = "";
      if (v118)
      {
        v126 = v118;
      }

      __message_assert_336(v118, v119, v120, v121, v122, v123, v124, v125, "SISearchCtx.h", 1373, "ffillPtr[slot] == 0", v126, v146);
      goto LABEL_161;
    }

    v31 = *(v21 + 8 * v29) ? _MDStoreOIDArrayGetVector() : 0;
    v32 = malloc_type_malloc(8 * v30, 0x100004000313F17uLL);
    v33 = v32;
    v177 = 0;
    v178 = &v177;
    v179 = 0x2000000000;
    v180 = 0;
    if (!v31)
    {
      break;
    }

    memcpy(v32, v31, 8 * v30);
    qsort(v33, v30, 8uLL, _oidCmp);
    v34 = v7;
    do
    {
      v35 = v34;
      v34 = *(v34 + 80);
    }

    while (v34);
    v36 = *(v35 + 40);
    v152[0] = MEMORY[0x1E69E9820];
    v152[1] = 0x40000000;
    v153[0] = __si_querypipe_addresults_block_invoke_5;
    v153[1] = &unk_1E8194008;
    v154 = v150;
    v153[2] = &v177;
    v153[3] = v31;
    RLEOIDArrayRemoveSortedOids(v36, v33, v30, v152);
    v37 = v7;
    if (!v178[3])
    {
      break;
    }

    do
    {
      v38 = v37;
      v37 = *(v37 + 80);
    }

    while (v37);
    if (*MEMORY[0x1E69E9AC8] <= 0x3FuLL)
    {
      ++sTotal;
    }

    v39 = *(v38 + 8);
    v40 = malloc_type_zone_calloc(queryZone, 1uLL, 0x40uLL, 0x5BAF1CEAuLL);
    if (!v40)
    {
      _log_fault_for_malloc_failure();
    }

    v40[1] = *(v7 + 48);
    *(v40 + 1) = si_querypipe_copy_jobid(v7);
    v41 = v178[3];
    v42 = 8 * v41;
    if (v41 < 512)
    {
      v43 = malloc_good_size(v42 + 8);
      v44 = malloc_type_malloc(v43, 0x100004000313F17uLL);
      goto LABEL_52;
    }

    v44 = mmap(0, (*MEMORY[0x1E69E9AC8] + v42 + 7) & ~*MEMORY[0x1E69E9AB8], 3, 4098, -268435456, 0);
    if (v44 == -1)
    {
      v128 = __si_assert_copy_extra_332();
      v116 = v128;
      v136 = "";
      if (v128)
      {
        v136 = v128;
      }

      __message_assert_336(v128, v129, v130, v131, v132, v133, v134, v135, "SIQueryPipe.cpp", 699, "kr == 0", v136, v146);
      goto LABEL_161;
    }

LABEL_52:
    v45 = v7;
    do
    {
      v46 = v45;
      v45 = *(v45 + 80);
    }

    while (v45);
    v47 = (*(*(v46 + 8) + 80) << 32) | 0xDE10000;
    *v44 = v47;
    *v44 = *(v178 + 12) | v47;
    memcpy(v44 + 1, v33, 8 * v178[3]);
    free(v33);
    *v40 = 7;
    *(v40 + 5) = 0;
    *(v40 + 4) = _MDStoreOIDArrayCreateMutableWithOids();
    _MDStoreOIDArraySetShouldUseMalloc();
    *(v40 + 14) = 3;
    a4 = v149;
    if (v149 && v29 == *(a2 + 3536) - 1)
    {
      si_querypipe_remove_process(v7, v151, v40, 0);
      v21 = v148;
    }

    else
    {
      v21 = v148;
      if (!si_resultqueue_enqueue(v39, v40))
      {
        if (dword_1EBF46AD0 >= 5)
        {
          v48 = *__error();
          v49 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v49, OS_LOG_TYPE_DEFAULT, "Attempt to append to queue failed. Releasing result batch", buf, 2u);
          }

          *__error() = v48;
          a4 = v149;
          v21 = v148;
        }

        SIResultBatchFree(v40);
      }
    }

    _Block_object_dispose(&v177, 8);
    if (++v29 >= *(a2 + 3536))
    {
      goto LABEL_67;
    }
  }

  if (a4 && *(a2 + 3536) - 1 == v29)
  {
    si_querypipe_remove_process(v7, v151, 0, 0);
  }

  free(v33);
  _Block_object_dispose(&v177, 8);
}

void _CIIndexSetClearRange(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 24);
  if (v3 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = v3;
  }

  if (*(a1 + 20) <= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = *(a1 + 20);
  }

  v6 = v4 - v5;
  if (v4 == v5)
  {

    _CIIndexSetRemoveIndex(a1, v4);
    return;
  }

  if (v4 < v5)
  {
    return;
  }

  v8 = CFGetTypeID(a1);
  v9 = a1;
  if (v8 == __kCIIndexSetInvertedTypeID)
  {
    v10 = *(a1 + 16);
    if (v10 > -10 || ((v11 = *(a1 + 24) - *(a1 + 20), v12 = v6 - v10 - 9, v11 + 1 < v12) ? (v13 = v11 + 1) : (v13 = v12), v10 = -10 - v13, *(a1 + 16) = -10 - v13, (v13 & 0x80000000) != 0))
    {
      v14 = (v6 + 1);
      if (v10 >= -1)
      {
        v15 = *(a1 + 32);
      }

      else
      {
        v15 = 4;
      }

      if (v10 < -1)
      {
        v10 = -2 - v10;
      }

      if (v15 < v10 + v14)
      {
        _CIIndexSetMakeSpace(a1, v14, 0, 0, 0);
        v9 = a1;
      }
    }
  }

  v16 = *(v9 + 16);
  if (v16 <= -10)
  {
    v17 = *(v9 + 24);
    v18 = v17 - v4;
    v19 = (v17 - v4) >> 5;
    v20 = v17 - v5;
    v21 = v20 >> 5;
    v22 = v20 & 0x1F;
    v23 = masks[v18 & 0x1F];
    if (v19 == v21)
    {
      v24 = v23 | ~masks[v22 + 1];
      v25 = *(v9 + 40);
    }

    else
    {
      v25 = *(v9 + 40);
      *(v25 + 4 * v19) &= v23;
      if (v19 + 1 < v21)
      {
        bzero((v25 + ((v18 >> 3) & 0x1FFFFFFC) + 4), 4 * (v21 - v19 - 2) + 4);
      }

      v24 = ~masks[v22 + 1];
      v19 = v21;
    }

    *(v25 + 4 * v19) &= v24;
    return;
  }

  if ((v16 & 0x80000000) == 0)
  {
    if (CFGetTypeID(v9) != __kCIIndexSetInvertedTypeID)
    {

      CIIndexSetClearRange_Array(a1, v5, v4);
      return;
    }

    v59 = -1;
    if (v5)
    {
      v26 = v5 - 1;
    }

    else
    {
      v26 = 0;
    }

    v27 = a1;
    v28 = searchMapWithHint(a1, v26, &v59, 1);
    v29 = *(a1 + 16);
    v30 = *(a1 + 32);
    if (v30 != v29)
    {
      v45 = *(a1 + 36);
      if (v45 == v28)
      {
        goto LABEL_61;
      }

      v56 = *(a1 + 40);
      if (v45 >= v28)
      {
        v58 = v28;
        memmove((v56 + 4 * (v30 - v29 + v28)), (v56 + 4 * v28), 4 * (v45 - v28));
        v28 = v58;
        v27 = a1;
      }

      else
      {
        v57 = v28;
        memmove((v56 + 4 * v45), (v56 + 4 * (v45 + v30 - v29)), 4 * (v28 - (v45 + v30 - v29)));
        v27 = a1;
        v28 = v57 - *(a1 + 32) + *(a1 + 16);
      }
    }

    *(v27 + 36) = v28;
LABEL_61:
    v46 = *(v27 + 40);
    v47 = v28 - 1;
    if (v28 >= 33)
    {
      LODWORD(v48) = 0;
      while (1)
      {
        v49 = v48 + (v47 - v48) / 2;
        v50 = *(v46 + 4 * v49);
        if (v50 == v4)
        {
          break;
        }

        if (v50 > v4)
        {
          LODWORD(v48) = v49 + 1;
        }

        else
        {
          v47 = v49 - 1;
        }

        if (v48 > v47 - 32)
        {
          v48 = v48;
          goto LABEL_70;
        }
      }
    }

    else
    {
      v48 = 0;
LABEL_70:
      if (v47 + 1 > v48)
      {
        v49 = v47 + 1;
      }

      else
      {
        v49 = v48;
      }

      while (v48 <= v47)
      {
        v51 = *(v46 + 4 * v48++);
        if (v51 <= v4)
        {
          v49 = v48 - 1;
          break;
        }
      }
    }

    if (v6 + 1 > (v28 - v49))
    {
      *(v27 + 16) -= v28 - v49;
      *(v27 + 36) = v49;
      v52 = 4 * v49;
      do
      {
        *(*(v27 + 40) + v52) = v4;
        ++*(v27 + 16);
        ++*(v27 + 36);
        LODWORD(v4) = v4 - 1;
        v52 += 4;
      }

      while (v4 >= v5);
    }

    return;
  }

  v31 = (-2 - v16);
  v32 = (v9 + 32);
  if (v16 > 0xFFFFFFFD || *v32 <= v4)
  {
    v33 = 0;
  }

  else
  {
    if (v16 == -3)
    {
LABEL_43:
      v33 = -2 - v16;
LABEL_52:
      *(v9 + 16) = -v33 - 2;
      return;
    }

    if (*(v9 + 36) <= v4)
    {
      v33 = 1;
    }

    else
    {
      if (v16 == -4)
      {
        goto LABEL_43;
      }

      if (*(v9 + 40) <= v4)
      {
        v33 = 2;
      }

      else
      {
        if (v16 == -5)
        {
          goto LABEL_43;
        }

        if (*(v9 + 44) <= v4)
        {
          v33 = 3;
        }

        else
        {
          if (v16 == -6)
          {
            goto LABEL_43;
          }

          if (*(v9 + 48) <= v4)
          {
            v33 = 4;
          }

          else
          {
            if (v16 == -7)
            {
LABEL_94:
              v33 = -2 - v16;
              v9 = a1;
              goto LABEL_52;
            }

            if (*(a1 + 52) <= v4)
            {
              v33 = 5;
              v9 = a1;
            }

            else
            {
              if (v16 == -8)
              {
                goto LABEL_94;
              }

              v9 = a1;
              v33 = -2 - v16;
              if (*(a1 + 56) > v4)
              {
                goto LABEL_52;
              }

              v33 = 6;
            }
          }
        }
      }
    }
  }

  LODWORD(v34) = v33;
  if (v33 < v31)
  {
    v34 = v33;
    while (v32[v34] >= v5)
    {
      if (v31 == ++v34)
      {
        goto LABEL_52;
      }
    }
  }

  *(v9 + 16) = v16 - v33 + v34;
  if (v34 < v31)
  {
    v35 = v33;
    v36 = v34;
    v37 = (-3 - (v34 + v16));
    if (v37 >= 7 && ((v33 - v34) & 0x3FFFFFFFFFFFFFF8) != 0)
    {
      v38 = v37 + 1;
      v39 = (v37 + 1) & 0x1FFFFFFF8;
      v40 = v39 + v36;
      v41 = (v9 + 4 * v36 + 48);
      v42 = (v9 + 4 * v35 + 48);
      v43 = v39;
      do
      {
        v44 = *v41;
        *(v42 - 1) = *(v41 - 1);
        *v42 = v44;
        v41 += 2;
        v42 += 2;
        v43 -= 8;
      }

      while (v43);
      if (v38 == v39)
      {
        return;
      }

      v35 |= v39;
    }

    else
    {
      v40 = v34;
    }

    v53 = (v9 + 4 * v40 + 32);
    v54 = (v9 + 4 * v35 + 32);
    do
    {
      v55 = *v53++;
      *v54++ = v55;
      LODWORD(v40) = v40 + 1;
    }

    while (v31 > v40);
  }
}

void ___ZL12processItemsP14datastore_infommP24si_localized_value_cachePmbU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmS4_ES4_ooPtmPhbjmbP16dispatch_queue_sS4_jP14__MDPlistBytes14ranking_mode_sP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tP19PartialQueryResultsRP20SISearchCtx_METADATAiRbP10ReadData_sPV3__0P22ci_combobits_wrapped_sP20dispatch_semaphore_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v250 = *MEMORY[0x1E69E9840];
  v248[4] = 0;
  v3 = **(a1 + 32);
  v4 = *(v3 + 16);
  v248[1] = *(v3 + 24);
  v248[2] = v3;
  v248[3] = v4;
  v248[0] = &unk_1F427CB68;
  v248[5] = 0;
  v5 = *(a1 + 40);
  v6 = v5 * a2;
  v7 = v5 * a2 + v5;
  if (v7 >= *(a1 + 48))
  {
    v8 = *(a1 + 48);
  }

  else
  {
    v8 = v7;
  }

  v247 = 0;
  v246 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v9 = setThreadIdAndInfo(*(*(**(a1 + 32) + 24) + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v11 = v10;
  v12 = v9;
  v13 = HIDWORD(v9);
  v15 = v14;
  v16 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
  *(v16 + 216) = 0;
  v17 = *(v16 + 312);
  v18 = *(v16 + 224);
  if (v18)
  {
    v18(*(v16 + 288));
  }

  v244 = v13;
  v245 = v12;
  v242 = v11;
  v243 = v15;
  if (_setjmp(v16))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v229 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v229, 2u);
    }

    *(v16 + 312) = v17;
    CIOnThreadCleanUpReset(v242);
    dropThreadId(v245, 1, add_explicit + 1);
    CICleanUpReset(v245, v243);
    goto LABEL_162;
  }

  v227 = v17;
  v19 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v20 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(*(**(a1 + 32) + 24) + 1192), 0x40000000, v19 + 1);
  v22 = v21;
  v23 = v20;
  v24 = HIDWORD(v20);
  v26 = v25;
  v27 = threadData;
  v28 = threadData[9 * v20 + 1] + 320 * HIDWORD(v20);
  *(v28 + 216) = 0;
  v225 = *(v28 + 312);
  v29 = *(v28 + 224);
  if (v29)
  {
    v29(*(v28 + 288));
  }

  v240 = v24;
  v241 = v23;
  v238 = v22;
  v239 = v26;
  if (_setjmp(v28))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v229 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v229, 2u);
    }

    *(v28 + 312) = v225;
    CIOnThreadCleanUpReset(v238);
    dropThreadId(v241, 1, v19 + 1);
    CICleanUpReset(v241, v239);
    LODWORD(v31) = v227;
    goto LABEL_159;
  }

  v32 = **(a1 + 32);
  v33 = *(v32 + 160);
  if (v33 > 6 || (v34 = 1 << v33, v35 = 1, (v34 & 0x4A) == 0))
  {
    v35 = *(v32 + 232) != 0;
  }

  v31 = v227;
  if (v6 >= v8)
  {
    goto LABEL_156;
  }

  v36 = v35;
  v37 = v6;
  v38 = 160 * v6;
  v30.n128_u64[0] = 134217984;
  v226 = v19;
  v224 = v36;
  do
  {
    v39 = v37;
    v40 = v38;
    v41 = (*(a1 + 56) + 160 * v37);
    v42 = *v41;
    if (!*v41)
    {
      break;
    }

    v43 = *(a1 + 32);
    if (*(*(*v43 + 104) + 96))
    {
      goto LABEL_154;
    }

    v44 = v41[1];
    v45 = *(*v43 + 104);
    do
    {
      v46 = v45;
      v45 = *(v45 + 80);
    }

    while (v45);
    if (*(*(v46 + 8) + 12) == 1)
    {
LABEL_154:
      **(a1 + 64) = 1;
      v198 = v40;
      v199 = v39;
      do
      {
        *(*(a1 + 56) + v198) = 0;
        ++v199;
        v198 += 160;
      }

      while (v199 < v8);
      break;
    }

    if (*(a1 + 48) <= v39)
    {
      v206 = __si_assert_copy_extra_332();
      v207 = v206;
      v208 = "";
      if (v206)
      {
        v208 = v206;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 2831, "batchCount > i", v208);
      free(v207);
      if (__valid_fs(-1))
      {
        v209 = 2989;
      }

      else
      {
        v209 = 3072;
      }

      *v209 = -559038737;
      abort();
    }

    v217 = *v41;
    v218 = v44;
    v221 = v39;
    v222 = v40;
    v237[0] = *v41;
    v237[1] = 0;
    v237[2] = 0;
    v219 = 5 * v39;
    v220 = v42;
    if (((*(*(*v43 + 840) + 40) & 1) != 0 || (v47 = *(a1 + 72)) != 0 && *(v47 + v44)) && !db_eval_obj_with_options(v30) || *(a1 + 156) == 1 && !db_eval_obj_with_options(v30))
    {
      *(*(a1 + 56) + 32 * v219) = 0;
      v50 = (*(a1 + 56) + 32 * v219);
      v50[4] = xmmword_1C2C00670;
      v50[5] = unk_1C2C00680;
      v50[6] = xmmword_1C2C00690;
      v30 = unk_1C2C00660;
      v50[2] = ZERO_RANKING_BITS;
      v50[3] = unk_1C2C00660;
      goto LABEL_38;
    }

    v48 = *(a1 + 56);
    if (v36)
    {
      if (*(a1 + 144) <= *(v48 + 160 * v221 + 16))
      {
        LOBYTE(v49) = 18;
      }

      else
      {
        v49 = *(v48 + 160 * v221 + 16);
      }
    }

    else
    {
      LOBYTE(v49) = 0;
    }

    v53 = v218;
    v54 = v49;
    v55 = (v48 + 32 * v219);
    v55[4] = xmmword_1C2C00670;
    v55[5] = unk_1C2C00680;
    v55[6] = xmmword_1C2C00690;
    v56 = unk_1C2C00660;
    v55[2] = ZERO_RANKING_BITS;
    v55[3] = unk_1C2C00660;
    v57 = *(a1 + 56) + 32 * v219;
    *(v57 + 112) = 0;
    *(v57 + 116) = 0;
    v58 = *(a1 + 56) + 32 * v219;
    *(v58 + 128) = 0;
    *(v58 + 136) = 0;
    *(v58 + 144) = 0;
    *(v58 + 120) = 0;
    v59 = *(a1 + 88);
    if (v59)
    {
      v60 = v59 + 80 * v218;
      v61 = *(v60 + 40);
      v62 = *(v60 + 68);
      v63 = *(v60 + 32);
      v64 = v62;
    }

    else
    {
      v61 = 0;
      v64 = 0;
      v63 = 0;
    }

    v65 = v61;
    v66 = v63;
    v216 = v54;
    if (!(v63 | v61) && !v64)
    {
      if (*(a1 + 157) == 1)
      {
        v67 = **(a1 + 32);
        v68 = *(v67 + 928);
        v69 = *(a1 + 96);
        v70 = *(*(v67 + 8) + 160);
        v71 = (v59 + 80 * v218);
        *&v229[16] = v71[1];
        v230 = v71[2];
        v231 = v71[3];
        v232 = v71[4];
        *v229 = *v71;
        if ((ci_donebits_push(v68, v69, v70, v54, v229) & 1) == 0)
        {
          goto LABEL_122;
        }
      }

LABEL_123:
      if (!*(a1 + 152))
      {
        if (*(v220 + 12) >= 0x31u)
        {
          v170 = v217 + 48;
          do
          {
            *(v170 + 12) = 0;
            v170 += *(v170 + 8) + 13;
          }

          while (v170 < v217 + *(v220 + 12));
        }

        db_eval_obj_with_options(v56);
      }

      v171 = 5 * v218;
      if ((*(**(a1 + 32) + 160) | 2) == 3)
      {
        v172 = *(a1 + 88);
        if (v172)
        {
          v173 = (v172 + 80 * v218);
        }

        else
        {
          v173 = &ZERO_RANKING_BITS;
        }

        v174 = *(a1 + 128);
        v175 = *(a1 + 136);
        v176 = (v174 + v171);
        if (!v174)
        {
          v176 = &ZERO_WORD_DISTANCES;
        }

        LODWORD(buf) = *v176;
        BYTE4(buf) = v176[4];
        v177 = (v175 + 28 * v218);
        if (!v175)
        {
          v177 = &ZERO_VECTOR_DISTANCES;
        }

        *v229 = *v177;
        *&v229[12] = *(v177 + 12);
        memmove((*(a1 + 56) + 32 * v219 + 32), v173, 0x50uLL);
        v178 = *(a1 + 56) + 32 * v219;
        *(v178 + 116) = BYTE4(buf);
        *(v178 + 112) = buf;
        v179 = *(a1 + 56) + 32 * v219;
        *(v179 + 132) = *&v229[12];
        v30 = *v229;
        *(v179 + 120) = *v229;
        *(*(a1 + 56) + 32 * v219 + 16) = v216;
        v180 = v220;
      }

      else
      {
        v181 = v27;
        v182 = v19;
        v183 = v31;
        v184 = *(a1 + 88);
        if (v184)
        {
          v185 = (v184 + 80 * v218);
        }

        else
        {
          v185 = &ZERO_RANKING_BITS;
        }

        v186 = *(a1 + 128);
        v187 = *(a1 + 136);
        v188 = (v186 + v171);
        if (!v186)
        {
          v188 = &ZERO_WORD_DISTANCES;
        }

        LODWORD(v235) = *v188;
        BYTE4(v235) = v188[4];
        v189 = (v187 + 28 * v218);
        if (!v187)
        {
          v189 = &ZERO_VECTOR_DISTANCES;
        }

        *v229 = *v189;
        *&v229[12] = *(v189 + 12);
        memmove((*(a1 + 56) + 32 * v219 + 32), v185, 0x50uLL);
        v190 = *(a1 + 56) + 32 * v219;
        *(v190 + 116) = BYTE4(v235);
        *(v190 + 112) = v235;
        v191 = *(a1 + 56) + 32 * v219;
        *(v191 + 120) = *v229;
        v30 = *&v229[12];
        *(v191 + 132) = *&v229[12];
        if (dword_1EBF46AD0 >= 5)
        {
          v195 = *__error();
          v196 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
          {
            v197 = *(*(a1 + 56) + 160 * v221 + 32);
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v197;
            _os_log_impl(&dword_1C278D000, v196, OS_LOG_TYPE_DEFAULT, "Set match bits %llx", &buf, 0xCu);
          }

          *__error() = v195;
          v183 = v227;
          v182 = v226;
        }

        v180 = v220;
        v31 = v183;
        v19 = v182;
        v27 = v181;
        v36 = v224;
      }

      v51 = v221;
      v52 = v222;
      if (!*(a1 + 152))
      {
        *(*(a1 + 56) + 160 * v221) = v180;
      }

      goto LABEL_148;
    }

    v72 = *(a1 + 96);
    if (!v72)
    {
      buf = 0uLL;
      v235 = 0;
      v236 = 0;
      v233 = 0;
      v234 = 0;
LABEL_64:
      LODWORD(v76) = 1;
      goto LABEL_65;
    }

    v73 = v54;
    v74 = *(*(a1 + 104) + 8 * v54);
    buf = 0uLL;
    v235 = 0;
    v236 = 0;
    v233 = 0;
    v234 = 0;
    if (v74 < v72)
    {
      goto LABEL_64;
    }

    v75 = *(**(a1 + 32) + 928);
    if (v75[1]._os_unfair_lock_opaque > v54)
    {
      v76 = *&v75[8 * v54 + 10]._os_unfair_lock_opaque;
      if (!v76)
      {
        goto LABEL_65;
      }

      v77 = v65;
      v78 = v63;
      os_unfair_lock_lock(v75);
      v79 = *(**(a1 + 32) + 928);
      v80 = *&v79[8 * v73 + 10]._os_unfair_lock_opaque;
      v81 = *v80[2];
      if (v81)
      {
        v82 = (v81 + 80);
      }

      else
      {
        v82 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v84 = *v82;
      v83 = *(v82 + 1);
      v86 = *v80;
      v85 = v80[1];
      v87 = *v86;
      if (v87)
      {
        v88 = (v87 + 80);
      }

      else
      {
        v88 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = *v85;
      if (v91)
      {
        v92 = (v91 + 80);
      }

      else
      {
        v92 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v94 = *v92;
      v93 = *(v92 + 1);
      *&buf = v84;
      *(&buf + 1) = v83;
      v235 = v90;
      v236 = v89;
      v233 = v94;
      v234 = v93;
      os_unfair_lock_unlock(v79);
      v66 = v78;
      v65 = v77;
      v53 = v218;
    }

    LODWORD(v76) = 0;
LABEL_65:
    v215 = v76;
    if (*(a1 + 148) == 2)
    {
      v95 = v31;
      v96 = *(a1 + 88);
      v97 = *(a1 + 32);
      v98 = v36;
      if (*(v96 + 80 * v53 + 68) == 1)
      {
        v99 = db_compute_ranking_score(v56);
        v53 = v218;
        v100 = *(a1 + 88);
        *(v100 + 80 * v218 + 64) = v99;
        v96 = v100;
        v97 = *(a1 + 32);
      }

      v105 = v96;
      v106 = *v97;
      v107 = *(v106 + 928);
      v108 = *(a1 + 96);
      v109 = *(*(v106 + 8) + 160);
      v110 = (v105 + 80 * v53);
      *&v229[16] = v110[1];
      v230 = v110[2];
      v231 = v110[3];
      v232 = v110[4];
      *v229 = *v110;
      v111 = v53;
      v112 = v216;
      v113 = v216;
      goto LABEL_119;
    }

    v101 = *(a1 + 88);
    v102 = v101 + 80 * v53;
    v56.n128_u32[0] = *(v102 + 60);
    v103 = *(v102 + 64);
    if (*(v102 + 69))
    {
      if (v103 != 0.0)
      {
        goto LABEL_70;
      }
    }

    else if (*v102 != 0)
    {
LABEL_70:
      if (v56.n128_f32[0] == v103)
      {
        p_buf = &v235;
      }

      else
      {
        p_buf = &buf;
      }

      goto LABEL_76;
    }

    p_buf = &v233;
LABEL_76:
    v114 = **(a1 + 32);
    if (*(v114 + 960) < 1)
    {
      v156 = *(a1 + 148);
      v157 = **(a1 + 32);
      goto LABEL_114;
    }

    v115 = *(a1 + 112);
    v116 = *(a1 + 120);
    v117 = *(v114 + 960);
    v118 = *(a1 + 88);
    v119 = **(a1 + 32);
    v120 = v118;
    v211 = *p_buf;
    v212 = p_buf[1];
    v121 = v119;
    v223 = v8;
    v213 = v66;
    v214 = v65;
    while (1)
    {
      v122 = 0;
      v123 = v116;
      v124 = v117;
      v125 = v119;
      v126 = v117 - 1;
      v117 = v126;
      v127 = *(*(v121 + 968) + 8 * v126);
      v116 -= v127;
      v128 = *(*(v121 + 976) + 8 * v126);
      v129 = v115 - v128;
      LOBYTE(v115) = v115 - v128;
      v130 = -1 << v128;
      if ((v128 & 0x40) != 0)
      {
        v131 = 0;
      }

      else
      {
        v131 = -1 << v128;
      }

      v132 = v130 | (0x7FFFFFFFFFFFFFFFuLL >> ~v128);
      if ((*(*(v121 + 976) + 8 * v126) & 0x40) != 0)
      {
        v132 = v130;
      }

      v133 = (~v132 << v129) | (~v131 >> 1 >> ~v129);
      if ((v129 & 0x40) != 0)
      {
        v133 = ~v131 << v129;
      }

      else
      {
        v122 = ~v131 << v129;
      }

      if (v122 & v66 | v133 & v65)
      {
        break;
      }

      v142 = v125;
LABEL_105:
      v119 = v142;
      v144 = v118;
      v141 = v142;
LABEL_111:
      if (v124 <= 1)
      {
        goto LABEL_112;
      }
    }

    v134 = (v120 + 80 * v53);
    v135 = v134[1] & ~v133;
    *v134 &= ~v122;
    v134[1] = v135;
    if (*(*(v125 + 968) + 8 * v126))
    {
      v210 = v124;
      v136 = 0;
      v137 = 0;
      v138 = 48 * v123 - 48 * v127 + 56;
      do
      {
        if (db_eval_obj_with_options(v56))
        {
          v139 = v136 + 1;
        }

        else
        {
          v139 = v136;
        }

        ++v137;
        v138 += 48;
        v136 = v139;
      }

      while (v137 < *(*(**(a1 + 32) + 968) + 8 * v126));
      v140 = *(a1 + 88);
      v141 = **(a1 + 32);
      v8 = v223;
      v53 = v218;
      v66 = v213;
      v65 = v214;
      v124 = v210;
    }

    else
    {
      v140 = v118;
      v141 = v125;
      v139 = 0;
    }

    v143 = 0;
    v144 = v140;
    v145 = 1 << *(*(v141 + 976) + 8 * v126);
    v146 = v145 - 1;
    if (v139 < v145)
    {
      v146 = v139;
    }

    v147 = (v146 >> 63 << v129) | (v146 >> 1 >> ~v115);
    if ((v129 & 0x40) != 0)
    {
      v147 = v146 << v129;
    }

    else
    {
      v143 = v146 << v129;
    }

    v148 = (v144 + 80 * v53);
    v149 = v147 | v148[1];
    v150 = v143 | *v148;
    *v148 = v150;
    v148[1] = v149;
    v151 = v146 == 0;
    v152 = v215;
    if (!v151)
    {
      v152 = 1;
    }

    if (v152)
    {
      v118 = v144;
      v142 = v141;
      v120 = v144;
      v121 = v141;
      goto LABEL_105;
    }

    v153 = 0;
    v154 = (-1 << v129) | (0x7FFFFFFFFFFFFFFFuLL >> ~v115);
    if ((v129 & 0x40) != 0)
    {
      v154 = -1 << v129;
    }

    else
    {
      v153 = -1 << v129;
    }

    if (__PAIR128__(v149, v150) >= __PAIR128__(v154 & v212, v153 & v211))
    {
      v118 = v144;
      v119 = v141;
      v120 = v144;
      v121 = v141;
      goto LABEL_111;
    }

LABEL_112:
    v155 = v144;
    v156 = *(a1 + 148);
    v157 = v141;
    v101 = v155;
    v31 = v227;
    v36 = v224;
LABEL_114:
    v95 = v31;
    if (v156 == 1 && *(v101 + 80 * v53 + 68) == 1)
    {
      v98 = v36;
      v158 = db_compute_ranking_score(v56);
      v53 = v218;
      v159 = *(a1 + 88);
      *(v159 + 80 * v218 + 64) = v158;
      v101 = v159;
      v157 = **(a1 + 32);
    }

    else
    {
      v98 = v36;
    }

    v107 = *(v157 + 928);
    v108 = *(a1 + 96);
    v109 = *(*(v157 + 8) + 160);
    v160 = (v101 + 80 * v53);
    *v229 = *v160;
    v161 = v160[1];
    v162 = v160[2];
    v163 = v160[4];
    v231 = v160[3];
    v232 = v163;
    *&v229[16] = v161;
    v230 = v162;
    v111 = v53;
    v112 = v216;
    v113 = v216;
LABEL_119:
    if ((v215 | ci_donebits_push(v107, v108, v109, v113, v229)))
    {
      v36 = v98;
      v31 = v95;
      v19 = v226;
      v27 = threadData;
      goto LABEL_123;
    }

    v164 = **(a1 + 32);
    v165 = *(v164 + 928);
    v166 = *(*(v164 + 8) + 160);
    v167 = *(a1 + 96);
    v168 = (*(a1 + 88) + 80 * v111);
    *&v229[16] = v168[1];
    v230 = v168[2];
    v231 = v168[3];
    v232 = v168[4];
    *v229 = *v168;
    v169 = ci_donebits_check(v165, v167, v166, v112, v229);
    v36 = v98;
    v31 = v95;
    v19 = v226;
    v27 = threadData;
    if (v169)
    {
      goto LABEL_123;
    }

LABEL_122:
    if (*(a1 + 157) == 1)
    {
      goto LABEL_123;
    }

    *(*(a1 + 56) + 32 * v219) = 0;
    v192 = (*(a1 + 56) + 32 * v219);
    v192[4] = xmmword_1C2C00670;
    v192[5] = unk_1C2C00680;
    v192[6] = xmmword_1C2C00690;
    v30 = ZERO_RANKING_BITS;
    v192[2] = ZERO_RANKING_BITS;
    v192[3] = unk_1C2C00660;
    v193 = *(a1 + 56) + 32 * v219;
    *(v193 + 112) = 0;
    *(v193 + 116) = 0;
    v194 = *(a1 + 56) + 32 * v219;
    *(v194 + 120) = 0;
    *(v194 + 128) = 0;
    *(v194 + 144) = 0;
    *(v194 + 136) = 0;
LABEL_38:
    v51 = v221;
    v52 = v222;
LABEL_148:
    v246 = v51;
    v37 = v51 + 1;
    v38 = v52 + 160;
  }

  while (v51 + 1 != v8);
LABEL_156:
  v247 = 1;
  v200 = v27[9 * v241 + 1] + 320 * v240;
  *(v200 + 312) = v225;
  v201 = *(v200 + 232);
  if (v201)
  {
    v201(*(v200 + 288));
  }

  dropThreadId(v241, 0, v19 + 1);
LABEL_159:
  v202 = v27[9 * v245 + 1] + 320 * v244;
  *(v202 + 312) = v31;
  v203 = *(v202 + 232);
  if (v203)
  {
    v203(*(v202 + 288));
  }

  dropThreadId(v245, 0, add_explicit + 1);
LABEL_162:
  if ((v247 & 1) == 0)
  {
    v204 = v8 - v246;
    if (v8 > v246)
    {
      v205 = 160 * v246;
      do
      {
        *(*(a1 + 56) + v205) = 0;
        v205 += 160;
        --v204;
      }

      while (v204);
    }
  }

  QueryFunctionCallbackContext_METADATA::~QueryFunctionCallbackContext_METADATA(v248);
}

void __si_querypipe_addresults_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *(a1 + 48);
  do
  {
    v8 = v7;
    v7 = *(v7 + 80);
  }

  while (v7);
  v9 = (a5 - 1);
  if (a5 == 1)
  {
    v13 = 0;
  }

  else
  {
    v10 = *(a1 + 56);
    v11 = *(v8 + 40);
    v12 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
    memcpy(v12, (a4 + 8), 8 * v9);
    qsort_oids(v12, v9);
    pthread_rwlock_wrlock((v10 + 16));
    pthread_rwlock_wrlock((v11 + 16));
    v14[0] = 0;
    v14[1] = v10 + 216;
    v13 = SIValueSet<unsigned long long>::_SIValueSetAddSortedValues((v11 + 216), v12, v9, v14);
    pthread_rwlock_unlock((v11 + 16));
    pthread_rwlock_unlock((v10 + 16));
    free(v12);
  }

  *(*(a1 + 40) + 8 * *(a1 + 64)) += v13;
  *(*(*(a1 + 32) + 8) + 24) += v9;
}

void qsort_oids(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (a2 > 2047)
    {
      v4 = OSAtomicDequeue(&qsort_cached_allocations_11823, 0);
      if (!v4)
      {
        v4 = malloc_type_malloc(0x40uLL, 0x10300409C00947AuLL);
      }

      v5 = dispatch_group_create();
      v4[3] = v5;
      v4[4] = 0;
      v4[1] = 0;
      v4[2] = a2 - 1;
      *v4 = a1;
      v6 = thread_count_11824;
      if (!thread_count_11824)
      {
        *v9 = 0x1900000006;
        v8 = 4;
        sysctl(v9, 2u, &thread_count_11824, &v8, 0, 0);
        v6 = thread_count_11824;
      }

      *(v4 + 14) = v6;
      v4[5] = sqrt(a2) / 2;
      if (!v6)
      {
        *v9 = 0x1900000006;
        v8 = 4;
        sysctl(v9, 2u, &thread_count_11824, &v8, 0, 0);
        v6 = thread_count_11824;
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
        sysctl(v9, 2u, &thread_count_11824, &v8, 0, 0);
        v7 = a2 / (2 * thread_count_11824);
      }

      v4[6] = v7;
      if (v4[5] <= 2047)
      {
        v4[5] = 2048;
      }

      _qsort_big_oid_t(v4);
      dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v5);
    }

    else
    {

      _qsort_oid_t(a1, 0, a2 - 1);
    }
  }
}

void packItems(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_unfair_lock_s **a16, char a17, char *a18, OSQueueHead *__list, void *a20, char a21)
{
  v534 = *MEMORY[0x1E69E9840];
  makeThreadId();
  v490 = 0;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v23 = setThreadIdAndInfo(*(*&(*a16)[6]._os_unfair_lock_opaque + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v25 = v24;
  v26 = v23;
  v27 = HIDWORD(v23);
  v29 = v28;
  v30 = threadData[9 * v23 + 1] + 320 * HIDWORD(v23);
  *(v30 + 216) = 0;
  v31 = *(v30 + 312);
  v32 = *(v30 + 224);
  v33 = v30;
  if (v32)
  {
    v32(*(v30 + 288));
  }

  v489 = v26;
  v488 = v27;
  if (_setjmp(v33))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    v33[78] = v31;
    CIOnThreadCleanUpReset(v25);
    dropThreadId(v26, 1, add_explicit + 1);
    CICleanUpReset(v26, v29);
    v34 = a18;
    v35 = a16;
    goto LABEL_268;
  }

  v470 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v36 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(*&(*a16)[6]._os_unfair_lock_opaque + 1192), 0x40000000, v470 + 1);
  v38 = v37;
  v39 = v36;
  v40 = HIDWORD(v36);
  v42 = v41;
  v43 = threadData[9 * v36 + 1] + 320 * HIDWORD(v36);
  *(v43 + 216) = 0;
  v469 = *(v43 + 312);
  v44 = *(v43 + 224);
  v35 = a16;
  if (v44)
  {
    v44(*(v43 + 288));
  }

  v487 = v39;
  v486 = v40;
  v485 = v42;
  if (_setjmp(v43))
  {
    v34 = a18;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v43 + 312) = v469;
    CIOnThreadCleanUpReset(v38);
    dropThreadId(v39, 1, v470 + 1);
    CICleanUpReset(v39, v485);
    goto LABEL_265;
  }

  v46 = *(*&(*a16)[6]._os_unfair_lock_opaque + 1192);
  v468 = v46;
  v479 = add_explicit;
  v478 = v31;
  if (*(*&(*a16)[2]._os_unfair_lock_opaque + 762) == 1)
  {
    v47 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 16);
    v48 = *SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46);
    v49 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 24);
    v50 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 32);
    v51 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 8);
    v52 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 48);
    v53 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 40);
    add_explicit = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 56);
    v54 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 64);
    v55 = *(SISearchCtx_METADATA::photosDerivedAttributes(*a16, v46) + 72);
    v56 = v54;
    v57 = v53;
    v58 = v51;
    v59 = v47;
    v60 = v52;
    v35 = a16;
    v61 = add_explicit;
  }

  else
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v49 = 0;
    v59 = 0;
    v48 = 0;
    v50 = 0;
    v60 = 0;
    v61 = 0;
    v55 = 0;
  }

  v34 = a18;
  v467 = v55;
  v466 = v61;
  v465 = v60;
  v464 = v50;
  v463 = v48;
  v462 = v59;
  v461 = v49;
  v460 = v58;
  v459 = v57;
  v458 = v56;
  if (!a2)
  {
    v372 = 0;
    goto LABEL_262;
  }

  v62 = a11;
  v457 = a15 + 2512;
  v456 = a15 + 3544;
  v63 = a17;
  v64 = 65533;
  v65 = 0;
  v66 = 0;
  v67 = 224;
  do
  {
    v68 = v63;
    v69 = v67;
    v70 = v65;
    v71 = v66;
    if (*(v457 + 8 * v62) >= v64)
    {
      v72 = v34;
      v73 = v64;
      v74 = v67;
      v75 = *&(*v35)[26]._os_unfair_lock_opaque;
      do
      {
        v76 = v75;
        v75 = *(v75 + 80);
      }

      while (v75);
      v77 = v45;
      v78 = *(*&(*v35)[26]._os_unfair_lock_opaque + 80);
      if (v78)
      {
        v79 = add_explicit;
        v80 = *&(*v35)[26]._os_unfair_lock_opaque;
        v81 = 0;
        do
        {
          v82 = v81 ^ (*(v80 + 104) == 0);
          v81 ^= *(v80 + 104) == 0;
          v80 = v78;
          v78 = *(v78 + 80);
        }

        while (v78);
        v83 = v68;
        v84 = v70;
        if (v82)
        {
          v85 = 3553;
        }

        else
        {
          v85 = 2781;
        }
      }

      else
      {
        v79 = add_explicit;
        v83 = v63;
        v84 = v70;
        v85 = 2781;
      }

      PartialQueryResults::prepare(a15, *(*(v76 + 8) + 80), v85, v62);
      v70 = v84;
      v68 = v83;
      v45 = v77;
      v69 = v74;
      add_explicit = v79;
      v64 = v73;
      v34 = v72;
    }

    v86 = &v34[160 * v70];
    v87 = *v86;
    *v86 = 0;
    if (!v87)
    {
      v88 = v45;
      v90 = v69;
      v91 = v71;
      goto LABEL_259;
    }

    if (a17)
    {
      v88 = v45;
      v89 = v69;
      goto LABEL_258;
    }

    v451 = v45;
    v452 = v68;
    v448 = v87;
    v92 = *v35;
    v453 = v71;
    if (*(*&(*v35)[2]._os_unfair_lock_opaque + 762) == 1)
    {
      v93 = v87;
      v449 = add_explicit;
      v450 = v69;
      v94 = v70;
      *buf = 0;
      v95 = (*(*&v92->_os_unfair_lock_opaque + 88))(v92, buf);
      v97 = *v35;
      v98 = *buf;
      v99 = a15;
      v100 = *(a15 + 440);
      v101 = v35;
      if (!v100)
      {
        os_unfair_lock_lock((a15 + 4568));
        v102 = a15;
        if (!*(a15 + 440))
        {
          MutableUsingMalloc = _MDPlistBytesCreateMutableUsingMalloc();
          _MDPlistBytesBeginPlist();
          _MDPlistBytesBeginArray();
          __dmb(0xBu);
          *(a15 + 440) = MutableUsingMalloc;
          v102 = a15;
        }

        v104 = v102;
        os_unfair_lock_unlock((a15 + 4568));
        v99 = v104;
        v100 = *(v104 + 440);
        v101 = a16;
      }

      v105 = v64;
      v106 = v95;
      v401 = v95;
      v107 = v97;
      v108 = v468;
      v109 = v93;
      v110 = v99;
      extractSynonymUnalignedMatchingField(v96, v107, v468, v93, v463, v462, v461, v464, v460, v467, v99, v401, v98, v100);
      v112 = v110;
      v113 = *v101;
      v114 = *buf;
      v115 = *(v112 + 448);
      if (!v115)
      {
        v116 = v112;
        os_unfair_lock_lock((a15 + 4568));
        if (!*(v116 + 448))
        {
          v117 = _MDPlistBytesCreateMutableUsingMalloc();
          _MDPlistBytesBeginPlist();
          _MDPlistBytesBeginArray();
          __dmb(0xBu);
          *(v116 + 448) = v117;
          v108 = v468;
        }

        os_unfair_lock_unlock((a15 + 4568));
        v115 = *(v116 + 448);
        v112 = v116;
        v101 = a16;
        v105 = 65533;
        v109 = v93;
      }

      extractPersonUnalignedMatchingField(v111, v113, v108, v109, v459, v466, v458, v465, v112, v106, v114, v115);
      v118 = *v101;
      v34 = a18;
      v35 = v101;
      v70 = v94;
      v68 = v452;
      v119 = v453;
      add_explicit = v449;
      v69 = v450;
      v87 = v109;
      v64 = v105;
    }

    else
    {
      v119 = v71;
      v118 = *v35;
    }

    v120 = v86;
    if (*(v118 + 650))
    {
      v121 = 18;
    }

    else
    {
      v121 = 2;
    }

    v122 = *(v118 + 13);
    if (!a1 || *(v122 + 99) != 1)
    {
      v129 = *(v86 + 4);
      v128 = *(v86 + 5);
      v410 = *(v120 + 9);
      v405 = *(v120 + 8);
      v130 = *(v120 + 21);
      v407 = *(v120 + 22);
      v408 = *(v120 + 20);
      v131 = *(v120 + 92);
      v406 = v120[100];
      v409 = v120[101];
      if (*(v122 + 98) == 1 && (*(v122 + 99) & 1) == 0)
      {
        v152 = *v87;
        ++*(v457 + 8 * a11);
        v153 = *(v456 + 8 * a11);
        *v153 = v152;
        *(v456 + 8 * a11) = v153 + 1;
        v89 = v69;
LABEL_101:
        v189 = add_explicit;
        v190 = *a16;
        v191 = *&(*a16)[232]._os_unfair_lock_opaque;
        if (v191)
        {
          v192 = v120[16];
          if (*(v190 + 164) > v192)
          {
            v193 = v68;
            v194 = v34;
            if (*(v190 + 50) & v129 | *(v190 + 51) & v128)
            {
              v195 = *(v190 + 52) & v129;
              *&buf[8] = *(v190 + 53) & v128;
              *buf = v195;
            }

            else
            {
              *buf = v129;
              *&buf[8] = v128;
            }

            v196 = *(v190 + 58) & v129 | *(v190 + 59) & v128;
            if (v196)
            {
              v197 = v70;
              v198 = 0;
              v199 = *(v190 + 62) & v129;
              v200 = *(v190 + 129);
              v201 = v199 << v200;
              v202 = ((*(v190 + 63) & v128) << v200) | (v199 >> 1 >> ~v200);
              if ((v200 & 0x40) != 0)
              {
                v202 = v201;
              }

              else
              {
                v198 = v201;
              }

              v196 = v198 | 1;
            }

            else
            {
              v197 = v70;
              v202 = 0;
            }

            v35 = a16;
            v203 = *(v190 + 22);
            *&buf[16] = v196;
            *&buf[24] = v202;
            *&v516 = v405;
            *(&v516 + 1) = v410;
            *&v517[0] = __PAIR64__(v130, v408);
            DWORD2(v517[0]) = v407;
            *(v517 + 12) = v131;
            BYTE4(v517[1]) = v406 & 1;
            BYTE5(v517[1]) = v409 & 1;
            ci_donebits_push(v191, a12, v203, v192, buf);
            v88 = v451;
            v68 = v193;
            add_explicit = v189;
            v62 = a11;
            v64 = 65533;
            v70 = v197;
            v34 = v194;
            v71 = v453;
            goto LABEL_258;
          }
        }

        v88 = v451;
        v35 = a16;
        v62 = a11;
        v64 = 65533;
        goto LABEL_106;
      }

      v132 = v34;
      v518 = 0u;
      memset(v517, 0, sizeof(v517));
      v516 = 0u;
      *&buf[16] = 0u;
      *buf = 0u;
      v133 = *(v118 + 2);
      *&buf[16] = *(v118 + 3);
      *&buf[24] = v133;
      LOBYTE(v516) = 1;
      v517[0] = 0u;
      *&v518 = 0;
      v134 = v70;
      if (*&buf[16])
      {
        v135 = *(*&buf[16] + 6586) >> 7;
      }

      else
      {
        LOBYTE(v135) = 1;
      }

      BYTE8(v518) = v135;
      *buf = &unk_1F42826A0;
      *(&v516 + 1) = v87;
      *&buf[8] = v121 | 8;
      if (a4)
      {
        v136 = v69;
        v137 = *(v118 + 19);
        v139 = *(v118 + 2);
        v138 = *(v118 + 3);
        v499 = 0uLL;
        DWORD2(v500) = 0;
        add_explicit &= 0xFFFFFF0000000000;
        *&v500 = 0;
        eventParseDBO(v138, a4, a5, a15, v137, buf, v139, 0, 0, 0, 0, &ZERO_RANKING_BITS, add_explicit, SBYTE4(add_explicit), &v499, 0, v118, a20);
        v140 = *&(*a16)[26]._os_unfair_lock_opaque;
        do
        {
          v141 = v140;
          v140 = *(v140 + 80);
        }

        while (v140);
        v142 = *(v141 + 40);
        v143 = **(&v516 + 1);
        pthread_rwlock_wrlock((v142 + 16));
        SIValueSet<unsigned long long>::SIValueSetInsert((v142 + 216), v143);
        pthread_rwlock_unlock((v142 + 16));
        v144 = v136;
        goto LABEL_98;
      }

      if (*(v118 + 40) != 4)
      {
        v176 = *(v118 + 19);
        v178 = *(v118 + 2);
        v177 = *(v118 + 3);
        v501 = xmmword_1C2C00670;
        v502 = unk_1C2C00680;
        v503 = xmmword_1C2C00690;
        v499 = ZERO_RANKING_BITS;
        v500 = unk_1C2C00660;
        v179 = v69 & 0xFFFFFF0000000000;
        writeDBOToPlistBytes(v177, a14, a15, v176, buf, v178, 0, 0, 0, &v499, v179, SBYTE4(v179), &ZERO_VECTOR_DISTANCES, 0, a11, v118, *(v118 + 1), a20);
        v144 = v179;
LABEL_98:
        if (*(&v516 + 1) == v448)
        {
          *(&v516 + 1) = 0;
        }

        CatInfoGotten_SDB::~CatInfoGotten_SDB(buf);
        v89 = v144;
        v70 = v134;
        v34 = v132;
        v68 = v452;
        v119 = v453;
        goto LABEL_101;
      }

      if (*(v118 + 157))
      {
        v145 = (v118 + 1264);
        v146 = v87;
        os_unfair_lock_lock(v145);
        v147 = v146;
        LOBYTE(v146) = SIUINT32SetContainsValue(*&(*a16)[314]._os_unfair_lock_opaque, *(v146 + 4));
        os_unfair_lock_unlock(*a16 + 316);
        if (v146)
        {
LABEL_97:
          v144 = v69;
          goto LABEL_98;
        }

        v118 = *a16;
        v87 = v147;
      }

      v148 = *(v118 + 3);
      v149 = *(a15 + 232);
      if (*a15 == 1)
      {
        if (v149)
        {
          if (!*(a15 + 104))
          {
            v150 = *(a15 + 128);
            if (v150)
            {
              *&v499 = 0;
              v151 = v87;
              SIFlattenArrayToCStringVector(v150, (a15 + 104), &v499, v510);
              v87 = v151;
            }
          }
        }
      }

      else if (v149)
      {
        if (!*(a15 + 96))
        {
          v185 = *(a15 + 120);
          if (v185)
          {
            v186 = v87;
            SIFlattenArrayToCStringVector(v185, (a15 + 96), (a15 + 240), (a15 + 232));
            v87 = v186;
            if (!*(a15 + 96))
            {
              v390 = __si_assert_copy_extra_332();
              v398 = v390;
              v399 = "";
              if (v390)
              {
                v399 = v390;
              }

              __message_assert_336(v390, v391, v392, v393, v394, v395, v396, v397, "SISearchCtx.h", 998, "fAttributeVector", v399);
              free(v398);
              if (__valid_fs(-1))
              {
                v400 = 2989;
              }

              else
              {
                v400 = 3072;
              }

              *v400 = -559038737;
              abort();
            }
          }
        }
      }

      v187 = v148;
      v188 = v87;
      collectAttributesFromDBO(v187, v87, a1, a15, *&(*a16)[38]._os_unfair_lock_opaque);
      if (*&(*a16)[314]._os_unfair_lock_opaque)
      {
        os_unfair_lock_lock(*a16 + 316);
        SIValueSet<unsigned int>::SIValueSetInsert((*&(*a16)[314]._os_unfair_lock_opaque + 16), *(v188 + 4));
        os_unfair_lock_unlock(*a16 + 316);
      }

      goto LABEL_97;
    }

    v123 = *(v118 + 40);
    if (v123 == 4)
    {
      v124 = *(v118 + 22);
      v454 = v70;
      if (!(a12 | v124))
      {
        v125 = v68;
        v126 = v118;
        v127 = a15;
        goto LABEL_127;
      }

      v180 = *(v86 + 4);
      v181 = *(v86 + 5);
      v446 = v87;
      if ((*(v118 + 25) & *(v86 + 2)) == 0)
      {
        *buf = *(v86 + 4);
        *&buf[8] = v181;
      }

      else
      {
        v182 = *(v118 + 52) & v180;
        *&buf[8] = *(v118 + 53) & v181;
        *buf = v182;
      }

      v125 = v68;
      if (*(v118 + 58) & v180 | *(v118 + 59) & v181)
      {
        v204 = *(v118 + 62) & v180;
        v205 = *(v118 + 129);
        v206 = v204 << v205;
        v207 = ((*(v118 + 63) & v181) << v205) | (v204 >> 1 >> ~v205);
        if ((v205 & 0x40) != 0)
        {
          v208 = v206;
        }

        else
        {
          v208 = v207;
        }

        if ((v205 & 0x40) != 0)
        {
          v209 = 0;
        }

        else
        {
          v209 = v206;
        }

        v210 = v209 | 1;
        v211 = v208;
      }

      else
      {
        v211 = 0;
        v210 = 0;
      }

      v213 = *(v120 + 8);
      v212 = *(v120 + 9);
      v214 = *(v120 + 20);
      v215 = *(v120 + 21);
      v216 = *(v120 + 22);
      v217 = *(v120 + 92);
      v218 = v120[100];
      v219 = v120[101];
      v220 = *(v120 + 8);
      v221 = *(v118 + 116);
      *&buf[16] = v210;
      *&buf[24] = v211;
      *&v516 = v213;
      *(&v516 + 1) = v212;
      *&v517[0] = __PAIR64__(v215, v214);
      DWORD2(v517[0]) = v216;
      *(v517 + 12) = v217;
      BYTE4(v517[1]) = v218 & 1;
      BYTE5(v517[1]) = v219 & 1;
      if (ci_donebits_check(v221, a12, v124, v220, buf))
      {
        v126 = *v35;
        v127 = a15;
        v87 = v446;
LABEL_127:
        v71 = v119;
        if (*(v126 + 157))
        {
          v222 = v87;
          os_unfair_lock_lock(v126 + 316);
          v223 = v222;
          LOBYTE(v222) = SIUINT32SetContainsValue(*&(*v35)[314]._os_unfair_lock_opaque, *(v222 + 4));
          os_unfair_lock_unlock(*v35 + 316);
          if (v222)
          {
            v88 = v451;
            v68 = v125;
            v89 = v69;
            v62 = a11;
LABEL_145:
            v70 = v454;
            goto LABEL_258;
          }

          v126 = *v35;
          v87 = v223;
          v127 = a15;
        }

        v224 = *(v126 + 3);
        v225 = *(v127 + 29);
        if (*v127 == 1)
        {
          v62 = a11;
          if (v225)
          {
            if (!*(a15 + 104))
            {
              v226 = *(v127 + 16);
              if (v226)
              {
                *buf = 0;
                v227 = v87;
                v228 = v127;
                SIFlattenArrayToCStringVector(v226, (a15 + 104), buf, &v499);
                v127 = v228;
                v87 = v227;
                v64 = 65533;
                v71 = v119;
              }
            }
          }
        }

        else
        {
          v62 = a11;
          if (v225)
          {
            if (!*(a15 + 96))
            {
              v229 = *(v127 + 15);
              if (v229)
              {
                v230 = v87;
                v231 = v127;
                SIFlattenArrayToCStringVector(v229, (a15 + 96), (a15 + 240), (a15 + 232));
                v127 = v231;
                v87 = v230;
                v64 = 65533;
                v71 = v119;
                if (!*(a15 + 96))
                {
                  v379 = __si_assert_copy_extra_332();
                  v387 = v379;
                  v388 = "";
                  if (v379)
                  {
                    v388 = v379;
                  }

                  __message_assert_336(v379, v380, v381, v382, v383, v384, v385, v386, "SISearchCtx.h", 998, "fAttributeVector", v388);
                  free(v387);
                  if (__valid_fs(-1))
                  {
                    v389 = 2989;
                  }

                  else
                  {
                    v389 = 3072;
                  }

                  *v389 = -559038737;
                  abort();
                }
              }
            }
          }
        }

        v232 = v224;
        v233 = v87;
        collectAttributesFromDBO(v232, v87, a1, v127, *&(*v35)[38]._os_unfair_lock_opaque);
        if (*&(*v35)[314]._os_unfair_lock_opaque)
        {
          os_unfair_lock_lock(*v35 + 316);
          SIValueSet<unsigned int>::SIValueSetInsert((*&(*v35)[314]._os_unfair_lock_opaque + 16), *(v233 + 4));
          os_unfair_lock_unlock(*v35 + 316);
        }

        v88 = v451;
        v68 = v125;
        v89 = v69;
        goto LABEL_145;
      }

      v88 = v451;
      v68 = v125;
      v89 = v69;
      v62 = a11;
      v70 = v454;
LABEL_106:
      v71 = v119;
      goto LABEL_258;
    }

    v154 = *(v86 + 4);
    v155 = *(v86 + 5);
    v156 = v155;
    v157 = *(v86 + 7);
    v429 = *(v86 + 6);
    v158 = *(v86 + 8);
    v159 = *(v86 + 9);
    v160 = *(v86 + 20);
    v161 = v160;
    v162 = *(v120 + 21);
    v163 = *(v120 + 22);
    v165 = *(v120 + 23);
    v164 = *(v120 + 24);
    v166 = v120[100];
    v439 = v166;
    v167 = v120[101];
    v438 = v167;
    v513 = *(v120 + 102);
    v514 = *(v120 + 55);
    v168 = v120[116];
    v440 = *(v120 + 28);
    *v484 = *(v120 + 120);
    v169 = v120[16];
    *&v484[12] = *(v120 + 132);
    v437 = v163;
    v436 = v159;
    v435 = v160;
    v428 = v154;
    *&v425 = v154;
    if (v123 != 3)
    {
      v183 = v154;
      v71 = v119;
      v184 = v155;
      goto LABEL_225;
    }

    v423 = v120[16];
    ++*(v118 + 10);
    v170 = *(v118 + 3);
    v511 = v513;
    v512 = v514;
    *(&v425 + 1) = v155;
    v172 = (v154 & a9) == a6 && (v155 & a10) == a7;
    v71 = v119;
    if (!v170 || (v173 = *(v170 + 1192)) == 0)
    {
      v183 = v154;
      goto LABEL_224;
    }

    v424 = v172;
    v426 = v167;
    v427 = v166;
    v430 = v156;
    v432 = v158;
    v433 = v157;
    v441 = v168;
    v420 = v169;
    v443 = v121;
    v455 = v70;
    v422 = *v87;
    v445 = v87;
    if (*(v118 + 44))
    {
      v174 = *(v170 + 1192);
      *buf = *(v170 + 2064);
      *&buf[4] = 0;
      *&v499 = 0;
      *v510 = 0;
      if (!db_get_field_by_id(v173, v87, buf, &v499, v510) && *v499 == 11 && (*(v499 + 2) & 0x10) != 0)
      {
        db_get_string_for_id_locked(v174, *(v499 + 13));
      }

      v175 = *(v118 + 44);
    }

    else
    {
      v175 = 0;
    }

    os_unfair_lock_lock(v175);
    v234 = *(v118 + 44);
    if (*(v234 + 4) <= v169)
    {
      goto LABEL_223;
    }

    v235 = (v234 + 24 * v423);
    v236 = v235[3];
    if (v236 - 1 <= *(v118 + 21))
    {
      memset(v520, 0, sizeof(v520));
      *(&v518 + 6) = v513;
      HIWORD(v518) = v514;
      *buf = v422;
      *&buf[8] = 0;
      *&buf[16] = v428;
      *&buf[24] = v430;
      *&v516 = v429;
      *(&v516 + 1) = v433;
      *&v517[0] = v432;
      *(&v517[0] + 1) = v436;
      *&v517[1] = __PAIR64__(LODWORD(v162), v160);
      *(&v517[1] + 1) = __PAIR64__(LODWORD(v165), v437);
      LODWORD(v518) = v164;
      BYTE4(v518) = v439;
      BYTE5(v518) = v438;
      v519 = v424;
      v244 = (v235 + 1);
      goto LABEL_222;
    }

    v237 = v235[1];
    if (v237)
    {
      v238 = (v237 + 14);
    }

    else
    {
      v238 = &ZERO_OIDINFO;
    }

    v239 = *(v238 + 16);
    v240 = *(v238 + 17);
    v241 = *(v238 + 19);
    if (*(v238 + 85) & 1) != 0 || (v438)
    {
      if (v165 != v241 || v162 <= v240 && (v162 == v240 ? (_CF = v160 >= v239) : (_CF = 1), _CF))
      {
        v243 = v165 != 100.0;
        if (v165 <= v241)
        {
          v243 = v241 == 100.0;
        }

        if (!v243)
        {
          goto LABEL_223;
        }
      }
    }

    else
    {
      v247 = v238 + 1;
      v245 = *(v238 + 2);
      v246 = *(v247 + 1);
      if (__PAIR128__(v246, v245) >= v425)
      {
        if (*(&v425 + 1) != v246 || v425 != v245)
        {
          goto LABEL_223;
        }

        if (v162 <= v240 && (v162 != v240 || v160 >= v239))
        {
          goto LABEL_223;
        }
      }
    }

    if (v236 == 1)
    {
      v248 = *(v118 + 44);
      *(v521 + 7) = 0;
      v521[0] = 0;
      v249 = 0;
      v250 = v248;
      goto LABEL_221;
    }

    v251 = v235[1];
    v252 = v237[15];
    v253 = v237 + 14;
    v254 = *(v237 + 209);
    v255 = v237[27];
    v256 = &v237[14 * v236];
    v522 = *(v256 - 7);
    v258 = *(v256 - 12);
    v257 = *(v256 - 11);
    v495 = *(v256 - 5);
    v497 = *(v256 - 4);
    v259 = *(v256 - 12);
    v260 = *(v256 - 11);
    v261 = *(v256 - 10);
    v262 = *(v256 - 9);
    v263 = *(v256 - 8);
    v264 = *(v256 - 28);
    v265 = *(v256 - 27);
    v266 = *(v256 - 26);
    v267 = *(v256 - 9);
    v523 = *(v256 - 1);
    *v253 = *(v256 - 7);
    *(v251 + 144) = v495;
    *(v251 + 160) = v497;
    v268 = v523;
    *(v251 + 208) = v523;
    v533 = v522;
    v493 = v264;
    v491 = v263;
    v525 = v267;
    v524 = v266;
    *(v251 + 128) = v258;
    *(v251 + 136) = v257;
    *(v251 + 176) = v259;
    *(v251 + 180) = v260;
    *(v251 + 184) = v261;
    *(v251 + 188) = v262;
    *(v251 + 192) = v263;
    *(v251 + 196) = v264;
    *(v251 + 197) = v265;
    *(v251 + 206) = v267;
    *(v251 + 198) = v266;
    v269 = v235[2];
    v412 = v235[3];
    v235[3] = v412 - 1;
    *v510 = v495;
    *&v510[16] = v497;
    v417 = v257;
    v418 = v252;
    v521[0] = v254;
    *(v521 + 7) = v255;
    v270 = v257;
    v419 = v259;
    v415 = v261;
    v416 = v259;
    v414 = v265;
    v413 = v269 >> 1;
    v508 = v263;
    v509 = v264;
    v531 = v266;
    v271 = 3;
    v272 = 2;
    v273 = 1;
    v532 = v525;
    v530 = v268;
    v411 = v257;
    while (1)
    {
      v274 = v71;
      v275 = v271;
      v276 = v272;
      v403 = v235[1];
      v404 = v273;
      v277 = v403 + 112 * v272;
      v279 = *(v277 + 16);
      v278 = *(v277 + 24);
      v280 = *(v277 + 64);
      v281 = *(v277 + 68);
      v282 = *(v277 + 72);
      v283 = *(v277 + 76);
      v284 = *(v277 + 85);
      v285 = v403 + 112 * v275;
      v529 = *v285;
      v287 = *(v285 + 16);
      v286 = *(v285 + 24);
      v288 = *(v285 + 48);
      v506 = *(v285 + 32);
      v507 = v288;
      v289 = *(v285 + 64);
      v290 = *(v285 + 68);
      v291 = *(v285 + 72);
      v292 = *(v285 + 76);
      v504 = *(v285 + 80);
      v505 = *(v285 + 84);
      v293 = *(v285 + 85);
      v527 = *(v285 + 86);
      v528 = *(v285 + 94);
      v526 = *(v285 + 96);
      v402 = v275;
      if (v275 >= v412)
      {
        v529 = MAX_OIDINFO;
        v506 = xmmword_1C2C00730;
        v507 = unk_1C2C00740;
        v504 = 0;
        v505 = 0;
        v527 = 0;
        v528 = 0;
        v526 = 0uLL;
        v35 = a16;
        v71 = v274;
        if (v276 >= v412)
        {
          goto LABEL_220;
        }

        v295 = -1;
        v290 = 0.0;
        v293 = 0;
        v292 = 3.4028e38;
        v291 = 0;
        v296 = 0;
        v294 = -1;
      }

      else
      {
        v294 = v286;
        v295 = v287;
        v296 = v289;
      }

      *buf = v258;
      *&buf[8] = v270;
      *&buf[16] = v495;
      v516 = v497;
      *&v517[0] = __PAIR64__(LODWORD(v260), v416);
      *(&v517[0] + 1) = __PAIR64__(LODWORD(v262), v415);
      LODWORD(v517[1]) = v491;
      BYTE4(v517[1]) = v493;
      BYTE5(v517[1]) = v414;
      *(&v517[1] + 6) = v524;
      HIWORD(v517[1]) = v525;
      *(&v499 + 1) = v294;
      *&v499 = v295;
      v500 = v506;
      v501 = v507;
      v297 = v296;
      *&v502 = __PAIR64__(LODWORD(v290), v296);
      *(&v502 + 1) = __PAIR64__(LODWORD(v292), v291);
      LODWORD(v503) = v504;
      BYTE4(v503) = v505;
      BYTE5(v503) = v293;
      HIWORD(v503) = v528;
      *(&v503 + 6) = v527;
      if ((v284 & 1) == 0)
      {
        break;
      }

      if (v283 < v262)
      {
        goto LABEL_185;
      }

      if (v283 != v262)
      {
        goto LABEL_204;
      }

LABEL_182:
      if (v281 >= v260 && (v281 != v260 || v280 <= v419))
      {
        goto LABEL_204;
      }

LABEL_185:
      v299 = v278;
      v300 = v279;
      v301 = v280;
      v302 = v282;
      v303 = (v277 + 96);
      if (v293)
      {
        v304 = v292 == v283;
        if (v292 < v283)
        {
          goto LABEL_197;
        }
      }

      else
      {
        if (__PAIR128__(v294, v295) < __PAIR128__(v278, v279))
        {
          goto LABEL_197;
        }

        v304 = v294 == v278 && v295 == v279;
      }

      if (v304 && (v290 < v281 || v290 == v281 && v297 > v280))
      {
LABEL_197:
        v303 = &v526;
        v305 = &v527;
        v306 = &v504;
        v307 = &v506;
        v308 = &v529;
        v302 = v291;
        v309 = v290;
        v310 = v294;
        v276 = v402;
        goto LABEL_199;
      }

      v308 = v277;
      v307 = (v277 + 32);
      v306 = (v277 + 80);
      v305 = (v277 + 86);
      v293 = v284;
      v292 = v283;
      v309 = v281;
      v297 = v301;
      v295 = v300;
      v310 = v299;
LABEL_199:
      v522 = *v308;
      v496 = *v307;
      v498 = v307[1];
      v492 = *v306;
      v494 = *(v306 + 4);
      v524 = *v305;
      v525 = *(v305 + 4);
      v523 = *v303;
      _X12 = v403 + 224 * v276;
      __asm { PRFM            #1, [X12] }

      v270 = v411;
      if (v276 == v404)
      {
        goto LABEL_219;
      }

      v315 = v533;
      v316 = v403 + 112 * v276;
      *v316 = v533;
      *(v316 + 16) = v258;
      *(v316 + 24) = v411;
      *(v316 + 32) = *v510;
      *(v316 + 48) = *&v510[16];
      *(v316 + 64) = v416;
      *(v316 + 68) = v260;
      *(v316 + 72) = v415;
      *(v316 + 76) = v262;
      v317 = v508;
      *(v316 + 80) = v508;
      *(v316 + 84) = v509;
      *(v316 + 85) = v414;
      *(v316 + 94) = v532;
      v318 = v531;
      *(v316 + 86) = v531;
      v319 = v530;
      *(v316 + 96) = v530;
      v320 = v235[1] + 112 * v404;
      *v320 = v522;
      *(v320 + 32) = v496;
      *(v320 + 48) = v498;
      *(v320 + 68) = v309;
      v271 = (2 * v276) | 1;
      *(v320 + 16) = v295;
      *(v320 + 24) = v310;
      *(v320 + 64) = v297;
      *(v320 + 72) = v302;
      *(v320 + 76) = v292;
      *(v320 + 84) = v494;
      *(v320 + 80) = v492;
      *(v320 + 85) = v293;
      *(v320 + 94) = v525;
      *(v320 + 86) = v524;
      *(v320 + 96) = v523;
      v522 = v315;
      v495 = *v510;
      v497 = *&v510[16];
      v493 = v509;
      v491 = v317;
      v525 = v532;
      v524 = v318;
      v273 = v276;
      v272 = 2 * v276;
      v523 = v319;
      v35 = a16;
      v71 = v274;
      if (v276 >= v413)
      {
        goto LABEL_220;
      }
    }

    if (__PAIR128__(v278, v279) < __PAIR128__(v417, v258))
    {
      goto LABEL_185;
    }

    if (v278 == v417 && v279 == v258)
    {
      goto LABEL_182;
    }

LABEL_204:
    v421 = v235;
    v480 = v292;
    v481 = v290;
    v483 = v262;
    v482 = v260;
    if (ci_rankingbits_wrapped_s::operator<(&v499, buf))
    {
      v303 = &v526;
      v305 = &v527;
      v306 = &v504;
      v307 = &v506;
      v308 = &v529;
      v292 = v480;
      v302 = v291;
      v309 = v481;
      v310 = v294;
      v276 = v402;
      v260 = v482;
      v262 = v483;
      v34 = a18;
      v274 = v453;
      v235 = v421;
      goto LABEL_199;
    }

    _X8 = v403 + 224 * v404;
    __asm { PRFM            #1, [X8] }

    v34 = a18;
    v274 = v453;
LABEL_219:
    v35 = a16;
    v71 = v274;
LABEL_220:
    v250 = *(v118 + 44);
    v249 = v418;
LABEL_221:
    *buf = v422;
    *&buf[8] = v249;
    *&buf[24] = v430;
    *&buf[16] = v428;
    *(&v516 + 1) = v433;
    *&v516 = v429;
    *(&v517[0] + 1) = v436;
    *&v517[0] = v432;
    *&v517[1] = __PAIR64__(LODWORD(v162), v435);
    *(&v517[1] + 1) = __PAIR64__(LODWORD(v165), v437);
    LODWORD(v518) = v164;
    BYTE4(v518) = v439;
    BYTE5(v518) = v438;
    *(&v518 + 6) = v511;
    HIWORD(v518) = v512;
    v519 = v424;
    *v520 = v521[0];
    *&v520[7] = *(v521 + 7);
    v244 = (v250 + 24 * v423 + 8);
LABEL_222:
    pqpush_oid_and_rankinfo_t(v244, buf);
LABEL_223:
    os_unfair_lock_unlock(*(v118 + 44));
    v169 = v420;
    v118 = *v35;
    v70 = v455;
    v87 = v445;
    v64 = 65533;
    v121 = v443;
    v168 = v441;
    v163 = v437;
    v159 = v436;
    v161 = v435;
    v158 = v432;
    v157 = v433;
    v156 = v430;
    v183 = v428;
    v166 = v427;
    v167 = v426;
LABEL_224:
    v184 = *(&v425 + 1);
LABEL_225:
    v325 = v118;
    v326 = *(v118 + 22);
    if (a12 | v326)
    {
      v331 = *(v118 + 50) & v425 | *(v118 + 51) & v184;
      v447 = v87;
      v444 = v121;
      v442 = v168;
      v434 = v157;
      v431 = v156;
      v332 = v167;
      if (v331)
      {
        v333 = *(v325 + 52) & v425;
        *&buf[8] = *(v325 + 53) & v184;
        *buf = v333;
      }

      else
      {
        *buf = v183;
        *&buf[8] = v156;
      }

      v334 = *(v325 + 58) & v425 | *(v325 + 59) & v184;
      if (v334)
      {
        v335 = v70;
        v336 = 0;
        v337 = *(v325 + 62) & v425;
        v338 = *(v325 + 129);
        v339 = v166;
        v340 = v337 << v338;
        v341 = ((*(v325 + 63) & v184) << v338) | (v337 >> 1 >> ~v338);
        if ((v338 & 0x40) != 0)
        {
          v341 = v340;
        }

        else
        {
          v336 = v340;
        }

        v166 = v339;
        v334 = v336 | 1;
      }

      else
      {
        v335 = v70;
        v341 = 0;
      }

      v342 = *(v325 + 116);
      *&buf[16] = v334;
      *&buf[24] = v341;
      v327 = v158;
      *&v516 = v158;
      *(&v516 + 1) = v159;
      *&v517[0] = __PAIR64__(LODWORD(v162), v161);
      *(&v517[0] + 1) = __PAIR64__(LODWORD(v165), v163);
      LODWORD(v517[1]) = v164;
      BYTE4(v517[1]) = v166 & 1;
      BYTE5(v517[1]) = v332 & 1;
      v343 = ci_donebits_check(v342, a12, v326, v169, buf);
      v328 = v343 | a21;
      if (v343)
      {
        v330 = 8;
      }

      else
      {
        v330 = 0;
      }

      v329 = *v35;
      v70 = v335;
      v87 = v447;
      v121 = v444;
      v168 = v442;
      v157 = v434;
      v156 = v431;
      v183 = v428;
    }

    else
    {
      v327 = v158;
      v328 = 1;
      v329 = v118;
      v330 = 0;
    }

    v344 = v183;
    v345 = v156;
    if (*(*(v329 + 8) + 672))
    {
      v346 = v429;
      v347 = v436;
      v348 = v435;
      v349 = v437;
      v350 = v439;
      v351 = v438;
    }

    else
    {
      v346 = v429;
      v347 = v436;
      v348 = v435;
      v349 = v437;
      v350 = v439;
      v351 = v438;
      if (*(v329 + 832) == 1)
      {
        v513 = 0;
        v514 = 0;
        v349 = 0;
        v348 = -1;
        v162 = 0.0;
        v345 = 0;
        v346 = 0;
        v157 = 0;
        v327 = 0;
        v347 = 0;
        v344 = 0;
        v165 = 0.0;
        v164 = 0;
        v350 = 0;
        v351 = 0;
      }
    }

    if (v328)
    {
      v352 = v70;
      v353 = *(v87 + 40);
      v518 = 0u;
      memset(v517, 0, sizeof(v517));
      v516 = 0u;
      *&buf[16] = 0u;
      *buf = 0u;
      v354 = *(v329 + 16);
      *&buf[16] = *(v329 + 24);
      *&buf[24] = v354;
      LOBYTE(v516) = 1;
      v517[0] = 0u;
      *&v518 = 0;
      if (*&buf[16])
      {
        v355 = *(*&buf[16] + 6586) >> 7;
      }

      else
      {
        LOBYTE(v355) = 1;
      }

      v358 = v440 | (v168 << 32);
      BYTE8(v518) = v355;
      *buf = &unk_1F42826A0;
      *(&v516 + 1) = v87;
      *&buf[8] = v330 | (v353 >> 15) & 1 | v121;
      v360 = *(v329 + 16);
      v359 = *(v329 + 24);
      v361 = *(v329 + 152);
      v362 = *(v329 + 224);
      v363 = *(v329 + 232);
      if (a4)
      {
        v364 = v64;
        v365 = add_explicit;
        v366 = v69;
        *&v499 = v344;
        *(&v499 + 1) = v345;
        *&v500 = v346;
        *(&v500 + 1) = v157;
        *&v501 = v327;
        *(&v501 + 1) = v347;
        *&v502 = __PAIR64__(LODWORD(v162), v348);
        *(&v502 + 1) = __PAIR64__(LODWORD(v165), v349);
        LODWORD(v503) = v164;
        BYTE4(v503) = v350;
        BYTE5(v503) = v351;
        *(&v503 + 6) = v513;
        HIWORD(v503) = v514;
        *v510 = *v484;
        v367 = v451 & 0xFFFFFF0000000000 | v358 & 0xFFFFFFFFFFLL;
        *&v510[12] = *&v484[12];
        eventParseDBO(v359, a4, a5, a15, v361, buf, v360, v362, v363, SHIDWORD(v363), v169, &v499, v358, SBYTE4(v367), v510, a3, v329, a20);
        v368 = *&(*v35)[26]._os_unfair_lock_opaque;
        do
        {
          v369 = v368;
          v368 = *(v368 + 80);
        }

        while (v368);
        v370 = *(v369 + 40);
        v371 = **(&v516 + 1);
        pthread_rwlock_wrlock((v370 + 16));
        SIValueSet<unsigned long long>::SIValueSetInsert((v370 + 216), v371);
        pthread_rwlock_unlock((v370 + 16));
        v356 = v367;
        v357 = v452;
        v69 = v366;
        add_explicit = v365;
        v64 = v364;
      }

      else
      {
        *&v499 = v344;
        *(&v499 + 1) = v345;
        *&v500 = v346;
        *(&v500 + 1) = v157;
        *&v501 = v327;
        *(&v501 + 1) = v347;
        *&v502 = __PAIR64__(LODWORD(v162), v348);
        *(&v502 + 1) = __PAIR64__(LODWORD(v165), v349);
        LODWORD(v503) = v164;
        BYTE4(v503) = v350;
        BYTE5(v503) = v351;
        *(&v503 + 6) = v513;
        HIWORD(v503) = v514;
        *v510 = *v484;
        *&v510[12] = *&v484[12];
        v357 = v452 & 0xFFFFFF0000000000 | v358 & 0xFFFFFFFFFFLL;
        writeDBOToPlistBytes(v359, a14, a15, v361, buf, v360, v362, v363, v169, &v499, v358, SBYTE4(v357), v510, *a3, a11, v329, *(v329 + 8), a20);
        v356 = v451;
      }

      if (*(&v516 + 1) == v448)
      {
        *(&v516 + 1) = 0;
      }

      CatInfoGotten_SDB::~CatInfoGotten_SDB(buf);
      v70 = v352;
      v34 = a18;
      v71 = v453;
    }

    else
    {
      v356 = v451;
      v357 = v452;
    }

    v88 = v356;
    v68 = v357;
    v89 = v69;
    v62 = a11;
LABEL_258:
    v91 = v71 + 1;
    v90 = v89;
LABEL_259:
    v372 = v91;
    v67 = v90;
    v63 = v68;
    v45 = v88;
    v65 = v70 + 1;
    v66 = v91;
  }

  while (v70 + 1 != a2);
LABEL_262:
  atomic_fetch_add(&(*v35)[136], v372);
  v490 = 1;
  v373 = threadData[9 * v487 + 1] + 320 * v486;
  *(v373 + 312) = v469;
  v374 = *(v373 + 232);
  if (v374)
  {
    v374(*(v373 + 288));
  }

  dropThreadId(v487, 0, v470 + 1);
  LODWORD(add_explicit) = v479;
  v31 = v478;
LABEL_265:
  v375 = threadData[9 * v489 + 1] + 320 * v488;
  *(v375 + 312) = v31;
  v376 = *(v375 + 232);
  if (v376)
  {
    v376(*(v375 + 288));
  }

  dropThreadId(v489, 0, add_explicit + 1);
LABEL_268:
  OSAtomicEnqueue(__list, v34, 0);
  if (a13)
  {
    db_obj_iter_return_page(*&(*v35)[228]._os_unfair_lock_opaque, a13);
  }

  if ((v490 & 1) == 0)
  {
    v377 = *__error();
    v378 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "packItems";
      *&buf[12] = 1024;
      *&buf[14] = 2677;
      _os_log_error_impl(&dword_1C278D000, v378, OS_LOG_TYPE_ERROR, "%s:%d: Assertion caught during query", buf, 0x12u);
    }

    *__error() = v377;
  }
}