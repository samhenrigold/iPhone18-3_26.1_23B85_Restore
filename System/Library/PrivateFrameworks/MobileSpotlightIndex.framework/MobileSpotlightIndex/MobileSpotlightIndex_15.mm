__n128 L1RankQueuePush(uint64_t a1, __n128 *a2)
{
  v27 = a2[2];
  v28 = a2[3];
  v29 = a2[4];
  v25 = *a2;
  v26 = a2[1];
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v4;
  if ((v4 + 2) >= v3)
  {
    v6 = 2 * v3;
    v7 = v3 < 4;
    v8 = 4;
    if (!v7)
    {
      v8 = v6;
    }

    *(a1 + 8) = v8;
    v9 = 80 * v8 + 160;
    if (*a1)
    {
      v10 = malloc_type_zone_realloc(queryZone, *a1, v9, 0xA1A7ADA0uLL);
    }

    else
    {
      v10 = malloc_type_zone_malloc(queryZone, v9, 0x566E289CuLL);
    }

    v11 = v10;
    if (!v10)
    {
      _log_fault_for_malloc_failure();
    }

    *a1 = v11;
    v11[4] = xmmword_1C2BF6DC0;
    v11[2] = xmmword_1C2BF6DA0;
    v11[3] = unk_1C2BF6DB0;
    *v11 = ZERO_RANKING_WRAPPED_BITS;
    v11[1] = *algn_1C2BF6D90;
    v5 = *(a1 + 16);
  }

  *(a1 + 16) = v5 + 1;
  v12 = (*a1 + 80 * v4);
  v12[2] = v27;
  v12[3] = v28;
  v12[4] = v29;
  result = v26;
  *v12 = v25;
  v12[1] = v26;
  if (v4 >= 2)
  {
    do
    {
      v14 = *a1 + 80 * v4;
      result.n128_u32[0] = *(v14 + 52);
      v15 = *a1 + 80 * (v4 >> 1);
      v16 = *(v15 + 52);
      if (*(v14 + 69))
      {
        v17 = *(v14 + 60);
        v18 = *(v15 + 60);
        if (v17 < v18)
        {
          goto LABEL_27;
        }

        if (v17 != v18)
        {
          return result;
        }
      }

      else
      {
        if (*v14 < *v15)
        {
          goto LABEL_27;
        }

        if (*(v14 + 8) != *(v15 + 8) || *v14 != *v15)
        {
          return result;
        }
      }

      if (result.n128_f32[0] >= v16 && (result.n128_f32[0] != v16 || *(v14 + 48) < *(v15 + 48)))
      {
        return result;
      }

LABEL_27:
      v32 = *(v14 + 32);
      v33 = *(v14 + 48);
      v34 = *(v14 + 64);
      v30 = *v14;
      v31 = *(v14 + 16);
      *v14 = *v15;
      v21 = *(v15 + 64);
      v23 = *(v15 + 16);
      v22 = *(v15 + 32);
      *(v14 + 48) = *(v15 + 48);
      *(v14 + 64) = v21;
      *(v14 + 16) = v23;
      *(v14 + 32) = v22;
      v24 = (*a1 + 80 * (v4 >> 1));
      v24[2] = v32;
      v24[3] = v33;
      v24[4] = v34;
      result = v31;
      *v24 = v30;
      v24[1] = v31;
      v7 = v4 > 3;
      v4 >>= 1;
    }

    while (v7);
  }

  return result;
}

uint64_t _qpPostcheckMatch(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (***a5)(void, uint64_t))
{
  v7 = *a2;
  if (!v7)
  {
    v8 = a4;
    v9 = a3;
    (a2[1])(a1, a2);
    a3 = v9;
    a4 = v8;
    v7 = *a2;
  }

  v10 = **a5;

  return v10(a5, v7, a3, a4);
}

uint64_t QueryFunctionCallbackContext_METADATA::postCheck(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL8 *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *a4;
  if (*a4 == -1 || !v4)
  {
    return 2;
  }

  v6 = *(a2 + 32);
  v7 = *(v4 + 56);
  if (v7 <= *MEMORY[0x1E69E9AC8])
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315906;
      v15 = "ContentIndexDocSetInRangeDocId";
      v16 = 1024;
      v17 = 348;
      v18 = 2048;
      v19 = v7;
      v20 = 2048;
      v21 = v6;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Invalid ContentIndexDocSetRef:%p docId:%lld", &v14, 0x26u);
    }

    *__error() = v11;
    return 2;
  }

  v8 = *(a3 + 24);
  if (*(v4 + 48) >= 3u)
  {
    v13 = *(v7 + 80);
    if (v13 > v6 || v13 + *(v7 + 68) <= v6)
    {
      return 2;
    }
  }

  if (ContentIndexDocSetNeedsPostcheckForDocId(*a4, *(a2 + 32)))
  {
    return 2;
  }

  LODWORD(result) = ContentIndexDocSetContainsDocId(v4, *(a2 + 32));
  v10 = result ^ 1;
  if (((1 << v8) & 0x5060) == 0)
  {
    v10 = result;
  }

  if (v8 <= 0xE)
  {
    return v10;
  }

  else
  {
    return result;
  }
}

BOOL ContentIndexDocSetNeedsPostcheckForDocId(_BOOL8 result, int a2)
{
  if (!result)
  {
    return result;
  }

  v3 = *(result + 52);
  if (v3 == 3)
  {
    return 1;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(result + 48);
  if (v4 <= 3)
  {
    if (v4 >= 3)
    {
      if (v4 == 3)
      {
        v6 = *(result + 64);
        if (!v6)
        {
          goto LABEL_14;
        }

        v5 = (v6 + 96);
        goto LABEL_7;
      }

LABEL_20:
      assert_invalid_doc_type(result);
    }

    return 0;
  }

  if ((v4 - 4) >= 4)
  {
    if ((v4 - 8) < 2)
    {
      v6 = 0;
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  v5 = (result + 88);
LABEL_7:
  v6 = *v5;
LABEL_14:
  v7 = a2 - *(*(result + 56) + 80);

  return CIIndexSetHasIndex(v6, v7);
}

BOOL ContentIndexDocSetContainsDocId(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  if (v3 <= 3)
  {
    v8 = 0;
    if (v3 > 1)
    {
      if (v3 != 2)
      {
        goto LABEL_18;
      }
    }

    else if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_21;
      }

      return 1;
    }

    return v8;
  }

  if ((v3 - 4) < 4)
  {
LABEL_4:
    v4 = (a1 + 80);
    goto LABEL_5;
  }

  if (v3 != 8)
  {
    if (v3 == 9)
    {
      goto LABEL_4;
    }

LABEL_21:
    assert_invalid_doc_type(a1);
  }

LABEL_18:
  v5 = *(a1 + 64);
  if (!v5)
  {
    goto LABEL_6;
  }

  v4 = (v5 + 88);
LABEL_5:
  v5 = *v4;
LABEL_6:
  v6 = a2 - *(*(a1 + 56) + 80);

  return CIIndexSetHasIndex(v5, v6);
}

void *copyDataForUniquedValue(uint64_t a1, int a2, void *a3, unsigned int *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  string_and_length_for_id = get_string_and_length_for_id(a1, 3u, a2, 1);
  if (string_and_length_for_id)
  {
    v9 = *string_and_length_for_id;
    if ((*string_and_length_for_id & 0x80000000) == 0)
    {
      if (!*string_and_length_for_id)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v9 > 0xBF)
    {
      if (v9 > 0xDF)
      {
        if (v9 > 0xEF)
        {
          v12 = *(string_and_length_for_id + 1);
          if (v12)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v12 = ((v9 & 0xF) << 24) | (string_and_length_for_id[1] << 16) | (string_and_length_for_id[2] << 8) | string_and_length_for_id[3];
          if (v12)
          {
            goto LABEL_16;
          }
        }

LABEL_25:
        si_analytics_log_2752("Failed to fetch the SDB fLen for index:%d, nameId:%lu, dst->flags:0x%lx, dst->name:%s", 3, a2, *(a1 + 4), (a1 + 324));
        return 0;
      }

      v12 = ((v9 & 0x1F) << 16) | (string_and_length_for_id[1] << 8) | string_and_length_for_id[2];
      if (!v12)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v12 = string_and_length_for_id[1] | ((v9 & 0x3F) << 8);
      if (!v12)
      {
        goto LABEL_25;
      }
    }

LABEL_16:
    if ((v9 & 0x80) != 0)
    {
      v15 = v12;
      if (v9 > 0xBF)
      {
        if (v9 > 0xDF)
        {
          if (v9 > 0xEF)
          {
            v9 = *(string_and_length_for_id + 1);
            v13 = 5;
          }

          else
          {
            v9 = ((v9 & 0xF) << 24) | (string_and_length_for_id[1] << 16) | (string_and_length_for_id[2] << 8) | string_and_length_for_id[3];
            v13 = 4;
          }
        }

        else
        {
          v9 = ((v9 & 0x1F) << 16) | (string_and_length_for_id[1] << 8) | string_and_length_for_id[2];
          v13 = 3;
        }
      }

      else
      {
        v13 = 2;
        v9 = string_and_length_for_id[1] | ((v9 & 0x3F) << 8);
      }

      if (v13 > v12)
      {
        v18 = __si_assert_copy_extra_2708(*(a1 + 848));
        v19 = v18;
        v20 = "";
        if (v18)
        {
          v20 = v18;
        }

        si_analytics_log_2752("%s:%u: failure log '%s' %s Expected offset %ld to fit in size %ld, dst->flags:0x%lx, dst->name:%s", "ldb.c", 402, "fLen >= fOffset", v20, v13, v15, *(a1 + 4), (a1 + 324));
        free(v19);
        return 0;
      }

      goto LABEL_18;
    }

LABEL_17:
    v13 = 1;
LABEL_18:
    if (a3 && *a4 < v9)
    {
      v14 = string_and_length_for_id;
      a3 = malloc_type_malloc(v9, 0x5E820AB3uLL);
      string_and_length_for_id = v14;
    }

    memcpy(a3, &string_and_length_for_id[v13], v9);
    *a4 = v9;
    return a3;
  }

  v10 = *__error();
  v11 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 4);
    *buf = 136316418;
    v22 = "copyDataForUniquedValue";
    v23 = 1024;
    v24 = 389;
    v25 = 1024;
    v26 = 3;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v17;
    v31 = 2080;
    v32 = a1 + 324;
    _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: Failed to fetch the field for index:%d, nameId:%lu, dst->flags:0x%lx, dst->name:%s", buf, 0x36u);
  }

  a3 = 0;
  *__error() = v10;
  return a3;
}

BOOL si_dboLastModAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a5)
  {
    (*(a9 + 16))(a9, 25, *(a5 + 16) / 1000000.0 - *MEMORY[0x1E695E468], 0, a6, a10, a7, a8);
  }

  return a5 != 0;
}

uint64_t db_store_obj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v26 = *__error();
    v27 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *a1;
      *buf = 136315650;
      v35 = "db_store_obj";
      v36 = 1024;
      v37 = 319;
      v38 = 1024;
      v39 = v28;
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v26;
    v29 = __si_assert_copy_extra_332();
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 319, v31);
    free(v30);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v6 = db2_store_obj_preamble(*(a1 + 804), a2, a3);
  if (!v6)
  {
    v8 = __THREAD_SLOT_KEY[0];
    if (!__THREAD_SLOT_KEY[0])
    {
      makeThreadId();
      v8 = __THREAD_SLOT_KEY[0];
    }

    v9 = pthread_getspecific(v8);
    HIDWORD(v11) = qos_class_self() - 9;
    LODWORD(v11) = HIDWORD(v11);
    v10 = v11 >> 2;
    if (v10 > 6)
    {
      v12 = 0;
    }

    else
    {
      v12 = dword_1C2BFF8F0[v10];
    }

    v13 = pthread_mutex_lock((a1 + 584));
    if (!*(a1 + 768) && !*(a1 + 780) && (*(a1 + 796) & 1) == 0)
    {
      if (v12 > 5)
      {
LABEL_28:
        *(a1 + 768) = pthread_self();
        goto LABEL_13;
      }

      v23 = v12 - 6;
      v24 = (a1 + 16 * v12 + 648);
      while (!*v24)
      {
        v24 += 2;
        if (__CFADD__(v23++, 1))
        {
          goto LABEL_28;
        }
      }
    }

    db_rwlock_wait(a1 + 584, v12, 2);
LABEL_13:
    pthread_mutex_unlock((a1 + 584));
    if (v13)
    {
      v32 = *__error();
      v33 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v35 = "db2_store_obj";
        v36 = 1024;
        v37 = 11699;
        v38 = 1024;
        v39 = v13;
        _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
      }

      *__error() = v32;
      sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11699);
    }

    if (v9)
    {
      v15 = CIOnThreadCleanUpPush(v9 - 1, db_write_unlock, a1 + 584);
    }

    else
    {
      v15 = -1;
    }

    v6 = db2_store_obj_inner(a1, a2, a3, v14);
    v16 = pthread_mutex_lock((a1 + 584));
    *(a1 + 788) = 0;
    v17 = *(a1 + 760);
    *(a1 + 760) = 0u;
    v18 = *(a1 + 780) != 0;
    *(a1 + 796) = 0;
    db_rwlock_wakeup(a1 + 584, v18, 0);
    pthread_mutex_unlock((a1 + 584));
    if (v17)
    {
      pthread_override_qos_class_end_np(v17);
    }

    if (v16)
    {
      sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11701);
    }

    if (v9)
    {
      CIOnThreadCleanUpClearItem(v9 - 1, v15);
      v19 = &threadData[9 * (v9 - 1)];
      v22 = *(v19 + 14);
      v20 = v19 + 7;
      v21 = v22;
      if (v15 + 1 == v22)
      {
        *v20 = v21 - 1;
      }
    }
  }

  return v6;
}

uint64_t db2_store_obj_preamble(char a1, uint64_t a2, char a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((a1 & 8) != 0)
  {
    return 13;
  }

  v3 = *(a2 + 12);
  if (v3 >= 0x30 && *(a2 + 8) > 0x2Fu)
  {
    if (v3 <= 0xFFEB)
    {
      *(a2 + 40) &= ~8u;
      if (a3)
      {
        return 0;
      }

      else
      {
        *v10 = 0;
        *&v10[8] = 0;
        if (gettimeofday(v10, 0))
        {
          v8 = time(0);
          v9 = 0;
        }

        else
        {
          v8 = *v10;
          v9 = *&v10[8];
        }

        result = 0;
        *(a2 + 16) = v9 + 1000000 * v8;
      }
    }

    else
    {
      return 7;
    }
  }

  else
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315394;
      *&v10[4] = "db2_store_obj_preamble";
      *&v10[12] = 1024;
      *&v10[14] = 11679;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: dbo too small", v10, 0x12u);
    }

    *__error() = v4;
    return 22;
  }

  return result;
}

uint64_t db2_store_obj_inner(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v76 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 4) & 2) != 0)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "db2_store_obj_inner";
      v70 = 1024;
      v71 = 11668;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: Previous write error", buf, 0x12u);
    }

    *__error() = v10;
    return 22;
  }

  if (*(a2 + 12) <= 0x2Fu)
  {
    v65 = __si_assert_copy_extra_3233(0, -1);
    v66 = v65;
    v67 = "";
    if (v65)
    {
      v67 = v65;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v67);
    free(v66);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v5 = *a2;
  if ((a3 & 4) != 0)
  {
    v13 = 0;
    v68 = 0;
    if (*(a1 + 804))
    {
      v13 = (*(a2 + 40) >> 5) & 1;
    }

    v14 = *(a1 + 856);
    v15 = *(v14 + 8);
    if (v15)
    {
      v16 = *(v14 + 16);
      if (v16 >= v15 || (v17 = v14 + 16 * v16, v19 = *(v17 + 20), v18 = v17 + 20, v19 != v5) || (v20 = *(v18 + 12), v13 != v20 >> 28))
      {
        v21 = v15;
        if (v15 >= 1)
        {
          v22 = 0;
          while (1)
          {
            v24 = (v15 + v22) >> 1;
            v25 = v14 + 20 + 16 * v24;
            v26 = v13 - (*(v25 + 12) >> 28);
            if (v26)
            {
              v27 = v26;
              v23 = (v15 + v22) >> 1;
              if ((v27 & 0x8000000000000000) == 0)
              {
LABEL_25:
                if (!v27)
                {
                  v28 = 0;
                  goto LABEL_31;
                }

                v22 = v24 + 1;
                v23 = v15;
              }
            }

            else
            {
              v27 = v5 - *v25;
              v23 = (v15 + v22) >> 1;
              if ((v27 & 0x8000000000000000) == 0)
              {
                goto LABEL_25;
              }
            }

            v15 = v23;
            if (v22 >= v23)
            {
              v28 = v27 > 0;
              goto LABEL_31;
            }
          }
        }

        v28 = 0;
        v24 = 0;
LABEL_31:
        if (v21 - 1 <= v24)
        {
          v28 = 0;
        }

        v32 = v24 + v28;
        v33 = v14 + 16 * v32;
        *(v14 + 16) = v32;
        v18 = v33 + 20;
        v20 = *(v33 + 32);
      }

      v30 = (v18 + 8);
      v31 = v20 & 0xFFFFFFF;
    }

    else
    {
      *buf = 0;
      v29 = a1;
      result = _page_alloc_fetch(a1, buf, 0, &v68 + 1, &v68, a3 & 0x4006);
      if (result)
      {
        return result;
      }

      free(*buf);
      v30 = &v68 + 1;
      v31 = v68;
      a1 = v29;
    }

    v34 = *v30;
    v35 = a1;
    serializeDBO(a4);
    updated = _page_update_obj(v35, 0, v34, v31, a3 & 0x4002);
    if ((a3 & 8) != 0 && updated == 2)
    {
      inserted = _real_page_insert_obj(v35, 0, a3, v34, v31);
    }

    else if (updated)
    {
      inserted = updated;
      v38 = *__error();
      v39 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "db2_store_obj_inner";
        v70 = 1024;
        v71 = 11660;
        v72 = 1024;
        v73 = inserted;
        v74 = 2048;
        v75 = v5;
        _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, "%s:%d: Error %d, oid %llx", buf, 0x22u);
      }

      *__error() = v38;
    }

    else
    {
      inserted = 0;
    }

    free(0);
    return inserted;
  }

  if ((a3 & 8) != 0)
  {
    goto LABEL_87;
  }

  v6 = *(a1 + 992);
  v7 = *(a1 + 804);
  v8 = v6[1];
  if (!*&v8)
  {
    goto LABEL_60;
  }

  a4.n128_u64[0] = vcnt_s8(v8);
  a4.n128_u16[0] = vaddlv_u8(a4.n128_u64[0]);
  if (a4.n128_u32[0] > 1uLL)
  {
    v9 = *a2;
    if (v5 >= *&v8)
    {
      v9 = v5 % *&v8;
    }
  }

  else
  {
    v9 = (*&v8 - 1) & v5;
  }

  v40 = *(*v6 + 8 * v9);
  if (!v40)
  {
    goto LABEL_60;
  }

  v41 = *v40;
  if (!v41)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v42 = v41[1];
    if (v42 == v5)
    {
      break;
    }

    if (a4.n128_u32[0] > 1uLL)
    {
      if (v42 >= *&v8)
      {
        v42 %= *&v8;
      }
    }

    else
    {
      v42 &= *&v8 - 1;
    }

    if (v42 != v9)
    {
      goto LABEL_60;
    }

LABEL_48:
    v41 = *v41;
    if (!v41)
    {
      goto LABEL_60;
    }
  }

  if (v41[2] != v5)
  {
    goto LABEL_48;
  }

  if (*(v41 + 6) == 3)
  {
    goto LABEL_87;
  }

LABEL_60:
  if (v7)
  {
    v43 = (*(a2 + 40) >> 5) & 1;
  }

  else
  {
    v43 = 0;
  }

  v44 = *(a1 + 856);
  v45 = *(v44 + 8);
  if (!v45)
  {
    goto LABEL_87;
  }

  v46 = *(v44 + 16);
  if (v46 < v45)
  {
    v47 = v44 + 16 * v46;
    v49 = *(v47 + 20);
    v48 = v47 + 20;
    if (v49 == v5)
    {
      v50 = *(v48 + 12);
      if (v43 == v50 >> 28)
      {
        goto LABEL_82;
      }
    }
  }

  v51 = v45;
  if (v45 < 1)
  {
    v58 = 0;
    v53 = 0;
    goto LABEL_79;
  }

  v52 = 0;
  while (2)
  {
    v53 = (v45 + v52) >> 1;
    v54 = v44 + 20 + 16 * v53;
    v55 = v43 - (*(v54 + 12) >> 28);
    if (v55)
    {
      v56 = v55;
      v57 = (v45 + v52) >> 1;
      if (v56 < 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v56 = v5 - *v54;
      v57 = (v45 + v52) >> 1;
      if (v56 < 0)
      {
LABEL_69:
        v45 = v57;
        if (v52 >= v57)
        {
          v58 = v56 > 0;
          goto LABEL_79;
        }

        continue;
      }
    }

    break;
  }

  if (v56)
  {
    v52 = v53 + 1;
    v57 = v45;
    goto LABEL_69;
  }

  v58 = 0;
LABEL_79:
  if (v51 - 1 <= v53)
  {
    v58 = 0;
  }

  v59 = v53 + v58;
  v60 = v44 + 16 * v59;
  *(v44 + 16) = v59;
  v48 = v60 + 20;
  v50 = *(v60 + 32);
LABEL_82:
  v61 = a2;
  if (v7)
  {
    v62 = (*(a2 + 40) >> 5) & 1;
  }

  else
  {
    v62 = 0;
  }

  v63 = a1;
  v64 = _page_obj_exists_by_oid_and_type(a1, v5, v62, *(v48 + 8), v50 & 0xFFFFFFF);
  a1 = v63;
  a2 = v61;
  if (v64)
  {
    return 17;
  }

LABEL_87:

  return _insert_obj(a1, a2, 0, a3, a4);
}

uint64_t setDocumentAttributes(uint64_t a1, uint64_t a2, const void *a3, int a4, const void *a5, uint64_t a6, int a7, const void *a8, float a9, const __CFDictionary *a10, unint64_t a11, uint64_t *a12, unsigned int a13, uint64_t a14, uint64_t (*a15)(uint64_t), uint64_t a16, unsigned int a17, int a18, int a19, int a20, unsigned __int8 a21, uint64_t a22)
{
  v234 = *MEMORY[0x1E69E9840];
  v206 = 0;
  v233 = 0u;
  v232 = 0u;
  v231 = 0u;
  v230 = 0u;
  v229 = 0u;
  v228 = 0u;
  v227 = 0u;
  v226 = 0u;
  v225 = 0u;
  v224 = 0u;
  v223 = 0u;
  v222 = 0u;
  v221 = 766030772;
  if ((*(a1 + 8) & 1) == 0)
  {
    bzero(v218, 0x400uLL);
    if ((setDocumentAttributes__COUNT_ & 1) == 0)
    {
      setDocumentAttributes__COUNT_ = 1;
      v26 = *__error();
      v27 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v36 = fcntl(*(a1 + 64), 50, v218);
        if (LOBYTE(v218[0]))
        {
          v37 = v36 < 0;
        }

        else
        {
          v37 = 1;
        }

        *v207 = 136315906;
        *&v207[4] = "setDocumentAttributes";
        v38 = "";
        if (!v37)
        {
          v38 = v218;
        }

        v208 = 1024;
        v209 = 4473;
        v210 = 2080;
        v211 = v38;
        v212 = 2080;
        v213 = a1 + 15208;
        _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: trying to set to invalid index %s/%s", v207, 0x26u);
      }

      *__error() = v26;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 15203) == 1)
  {
    bzero(v218, 0x400uLL);
    if ((setDocumentAttributes__COUNT__44 & 1) == 0)
    {
      setDocumentAttributes__COUNT__44 = 1;
      v23 = *__error();
      v24 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v60 = fcntl(*(a1 + 64), 50, v218);
        if (LOBYTE(v218[0]))
        {
          v61 = v60 < 0;
        }

        else
        {
          v61 = 1;
        }

        *v207 = 136315906;
        *&v207[4] = "setDocumentAttributes";
        v62 = "";
        if (!v61)
        {
          v62 = v218;
        }

        v208 = 1024;
        v209 = 4479;
        v210 = 2080;
        v211 = v62;
        v212 = 2080;
        v213 = a1 + 15208;
        _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: trying to modify read only index %s/%s", v207, 0x26u);
      }

      *__error() = v23;
    }

    return 1;
  }

  v204 = a8;
  v199 = a7;
  v203 = a4;
  v200 = a6;
  v201 = a5;
  v202 = a3;
  if (_indexProgress(a1))
  {
    if (gSILogLevels[0] < 5)
    {
      return 89;
    }

    v165 = *__error();
    v166 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v218[0]) = 0;
      _os_log_impl(&dword_1C278D000, v166, OS_LOG_TYPE_DEFAULT, "setDocumentAttributes canceled", v218, 2u);
    }

    *__error() = v165;
    return 89;
  }

  v30 = atomic_load((a1 + 36));
  if ((v30 & 3) != 0)
  {
    v181 = *__error();
    v182 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v218[0]) = 136315394;
      *(v218 + 4) = "setDocumentAttributes";
      WORD6(v218[0]) = 1024;
      *(v218 + 14) = 4492;
      _os_log_error_impl(&dword_1C278D000, v182, OS_LOG_TYPE_ERROR, "%s:%d: trying to add to read only index", v218, 0x12u);
    }

    *__error() = v181;
    v183 = __si_assert_copy_extra_3233(0, -1);
    v184 = v183;
    v185 = "";
    if (v183)
    {
      v185 = v183;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 4493, "0", v185);
    free(v184);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v31 = a21;
  v32 = a10;
  if ((!a21 || !a2 && !a10) && !*(a1 + 14392))
  {
    HIDWORD(v34) = qos_class_self() - 9;
    LODWORD(v34) = HIDWORD(v34);
    v33 = v34 >> 2;
    if (v33 > 6)
    {
      v35 = 0;
    }

    else
    {
      v35 = dword_1C2BFF8F0[v33];
    }

    pthread_mutex_lock((a1 + 14720));
    if (!*(a1 + 14904) && !*(a1 + 14916) && (*(a1 + 14932) & 1) == 0)
    {
      if (v35 > 5)
      {
LABEL_197:
        *(a1 + 14904) = pthread_self();
        goto LABEL_32;
      }

      v136 = v35 - 6;
      v137 = (a1 + 16 * v35 + 14784);
      while (!*v137)
      {
        v137 += 2;
        v87 = __CFADD__(v136++, 1);
        if (v87)
        {
          goto LABEL_197;
        }
      }
    }

    db_rwlock_wait(a1 + 14720, v35, 2);
LABEL_32:
    pthread_mutex_unlock((a1 + 14720));
    if (!*(a1 + 14392))
    {
      if (*(a1 + 46))
      {
        v39 = 32;
      }

      else
      {
        v39 = 0;
      }

      v40 = TermUpdateSetCreate(_indexProgress, a1, *(a1 + 80), *(a1 + 68), v39, *(a1 + 14384), *(a1 + 56), *(a1 + 4936));
      if (!v40)
      {
        v111 = *__error();
        v112 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v218[0]) = 136315394;
          *(v218 + 4) = "setDocumentAttributes";
          WORD6(v218[0]) = 1024;
          *(v218 + 14) = 4505;
          _os_log_error_impl(&dword_1C278D000, v112, OS_LOG_TYPE_ERROR, "%s:%d: TermUpdateSetCreate failed", v218, 0x12u);
        }

        *__error() = v111;
        db_write_unlock(a1 + 14720);
        return 12;
      }

      if (*(a1 + 15202) == 1)
      {
        *(v40 + 76) = getPropertyStringCallback;
      }

      *(v40 + 35) = a1 + 14184;
      __dmb(0xBu);
      *(a1 + 14392) = v40;
    }

    pthread_mutex_lock((a1 + 14720));
    *(a1 + 14924) = 0;
    v41 = *(a1 + 14896);
    *(a1 + 14896) = 0u;
    v42 = *(a1 + 14916) != 0;
    *(a1 + 14932) = 0;
    db_rwlock_wakeup(a1 + 14720, v42, 0);
    pthread_mutex_unlock((a1 + 14720));
    if (v41)
    {
      pthread_override_qos_class_end_np(v41);
    }
  }

  if (__THREAD_SLOT_KEY[0])
  {
    v43 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v43)
    {
      goto LABEL_44;
    }
  }

  else
  {
    makeThreadId();
    v43 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v43)
    {
LABEL_44:
      if (v43 < 0x801)
      {
        goto LABEL_45;
      }
    }
  }

  makeThreadId();
  v43 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
LABEL_45:
  v44 = v43 - 1;
  HIDWORD(v46) = qos_class_self() - 9;
  LODWORD(v46) = HIDWORD(v46);
  v45 = v46 >> 2;
  if (v45 > 6)
  {
    v47 = 0;
  }

  else
  {
    v47 = dword_1C2BFF8F0[v45];
  }

  pthread_mutex_lock((a1 + 14504));
  if (!*(a1 + 14688) && !*(a1 + 14700) && (*(a1 + 14716) & 1) == 0)
  {
    if (v47 > 5)
    {
LABEL_125:
      *(a1 + 14688) = pthread_self();
      goto LABEL_52;
    }

    v85 = v47 - 6;
    v86 = (a1 + 16 * v47 + 14568);
    while (!*v86)
    {
      v86 += 2;
      v87 = __CFADD__(v85++, 1);
      if (v87)
      {
        goto LABEL_125;
      }
    }
  }

  db_rwlock_wait(a1 + 14504, v47, 2);
LABEL_52:
  pthread_mutex_unlock((a1 + 14504));
  CIOnThreadCleanUpPush(v44, si_rwlock_wrunlock_3589, a1 + 14504);
  if (indexMarkDirty(a1))
  {
    v48 = a13;
    if (!a2 && !a10)
    {
      CIOnThreadCleanUpPop(v44);
      if (a13 <= 0xB && ((0xECFu >> a13) & 1) != 0)
      {
        ++*(*(a1 + 14392) + qword_1C2BFF158[a13]);
      }

      result = 0;
      if (a12)
      {
        *a12 = 0;
      }

      return result;
    }

    v193 = a22;
    v189 = a20;
    v191 = a19;
    v190 = a18;
    v194 = a17;
    v51 = a11;
    v195 = a12;
    v196 = a11;
    v198 = a13;
    if (a11)
    {
      v52 = *(a1 + 80);
      v53 = a11 - v52;
      v54 = v203;
      if (a11 <= v52 || v52 + *(a1 + 68) <= a11)
      {
        v55 = 0;
      }

      else
      {
        v55 = 0;
        v56 = *(*(a1 + 14408) + 8 * v53);
        if (v56 && v56 != v200)
        {
          bzero(v218, 0x400uLL);
          if (setDocumentAttributes__COUNT__46 >= 1)
          {
            --setDocumentAttributes__COUNT__46;
            v57 = *__error();
            v58 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v167 = fcntl(*(a1 + 64), 50, v218);
              if (LOBYTE(v218[0]))
              {
                v168 = v167 < 0;
              }

              else
              {
                v168 = 1;
              }

              v169 = *(a1 + 80);
              v170 = "";
              if (!v168)
              {
                v170 = v218;
              }

              v48 = v198;
              *v207 = 136316418;
              *&v207[4] = "setDocumentAttributes";
              v208 = 1024;
              v209 = 4554;
              v210 = 2080;
              v211 = v170;
              v212 = 2048;
              v213 = v200;
              v214 = 1024;
              v215 = v196 - v169;
              v216 = 2048;
              v217 = v56;
              _os_log_error_impl(&dword_1C278D000, v58, OS_LOG_TYPE_ERROR, "%s:%d: %s setDocumentAttributes error - bad oid/docid mapping oid: %lld, docId: %d, old oid: %lld ", v207, 0x36u);
            }

            *__error() = v57;
          }

          v55 = -3;
          v54 = v203;
          v51 = v196;
        }
      }

      if (v48 == 8)
      {
        v206 = v51;
        v59 = 1;
      }

      else
      {
        v59 = 0;
      }
    }

    else
    {
      v55 = 0;
      v59 = 0;
      v54 = v203;
    }

    v197 = v55;
    v187 = a16;
    v188 = a15;
    v192 = a14;
    if (a10)
    {
      TypeID = CFDictionaryGetTypeID();
      v64 = CFGetTypeID(a10);
      v54 = v203;
      if (v204)
      {
        if (TypeID == v64)
        {
          v65 = CFDictionaryGetTypeID();
          v66 = CFGetTypeID(v204);
          v54 = v203;
          if (v65 == v66)
          {
            goto LABEL_286;
          }
        }
      }
    }

    if (!v54 || v54 == a2 && !memcmp(v201, v202, 8 * a2))
    {
LABEL_95:
      v67 = 0;
LABEL_96:
      *v207 = 0;
      if (v59)
      {
LABEL_97:
        CIOnThreadCleanUpPop(v44);
        if (a10)
        {
          Count = CFDictionaryGetCount(a10);
        }

        else
        {
          Count = 0;
        }

        v186 = &v186;
        MEMORY[0x1EEE9AC00](v68);
        v93 = (&v186 - v92);
        bzero(&v186 - v92, v94);
        if (a10)
        {
          CFDictionaryGetKeysAndValues(a10, v93, 0);
        }

        if (Count < 1)
        {
LABEL_147:
          v100 = 0;
          v99 = 1;
LABEL_148:
          v95 = v204;
        }

        else
        {
          v95 = v204;
          if (v204)
          {
            while (1)
            {
              if ((*v93 & 0x80000000) == 0)
              {
                v101 = v32;
                v102 = v31;
                v103 = v101;
                Value = CFDictionaryGetValue(v101, *v93);
                v105 = CFGetTypeID(Value);
                v106 = CFNullGetTypeID();
                v107 = CFDictionaryGetValue(v204, *v93);
                if (v105 == v106)
                {
                  v31 = v102;
                  v32 = v103;
                  v48 = v198;
                  if (v107)
                  {
                    goto LABEL_146;
                  }
                }

                else
                {
                  v31 = v102;
                  if (!v107)
                  {
                    v99 = 0;
                    v100 = 1;
                    v95 = v204;
                    v32 = v103;
                    v48 = v198;
                    goto LABEL_149;
                  }

                  v108 = CFEqual(Value, v107);
                  v32 = v103;
                  v48 = v198;
                  if (!v108)
                  {
LABEL_146:
                    v99 = 0;
                    v100 = 1;
                    goto LABEL_148;
                  }
                }
              }

              ++v93;
              if (!--Count)
              {
                goto LABEL_147;
              }
            }
          }

          do
          {
            if ((*v93 & 0x80000000) == 0)
            {
              v96 = CFDictionaryGetValue(a10, *v93);
              v97 = CFGetTypeID(v96);
              v98 = CFNullGetTypeID();
              v95 = v204;
              if (v97 != v98)
              {
                v99 = 0;
                v100 = 1;
                goto LABEL_149;
              }
            }

            ++v93;
            --Count;
          }

          while (Count);
          v100 = 0;
          v99 = 1;
        }

LABEL_149:
        *&v218[0] = v95;
        *(&v218[0] + 1) = v32;
        v218[1] = 0uLL;
        v219 = v192;
        v220 = v100;
        if (v32)
        {
          if (v95)
          {
            CFDictionaryApplyFunction(v32, attributeMergeInfoApplier, v218);
            CFDictionaryApplyFunction(v204, attributeMergeInfoRemoveApplier, v218);
            v109 = v204;
            if ((v99 & 1) == 0)
            {
              v110 = attributeMergeInfoWildcardApplier;
LABEL_155:
              CFDictionaryApplyFunction(v109, v110, v218);
            }
          }

          else if (v48 == 8)
          {
            *(&v218[1] + 1) = CFRetain(v32);
          }
        }

        else if (v95)
        {
          v110 = attributeMergeInfoRemoveApplier;
          v109 = v95;
          goto LABEL_155;
        }

        v113 = v201;
        v114 = v202;
        LODWORD(v115) = v203;
        v116 = v197;
        if (v218[1] != 0 || v203 | a2 && (v203 != a2 || (v117 = memcmp(v201, v202, 8 * a2), LODWORD(v115) = v203, v118 = v117, v113 = v201, v114 = v202, v116 = v197, v118)))
        {
          if (v115 == a2)
          {
            if (!memcmp(v113, v114, 8 * a2))
            {
              v115 = 0;
            }

            else
            {
              v115 = a2;
            }

            a2 = v115;
          }

          if (v31)
          {
            create_termupdateset(a1, v207, &v221);
            v120 = v206;
            v119 = *v207;
            v121 = v218[1];
            v122 = atomic_load((a1 + 36));
            TermUpdateSetUpdateDocumentInfo(v119, v194, v120, *(&v121 + 1), v121, v48, 0, 0, 0, 0, (v122 & 8) != 0);
            updated = mergeIntoUpdateSet(a1, v190, v191, &v206, v199, v196, v189, 0, a9, a2, v202, v200, v115, v201, v195, *v207, 0, v188, v187, v193);
            if (updated)
            {
              v116 = updated;
            }

            else
            {
              v116 = v197;
            }
          }

          else
          {
            v124 = v206;
            if (!v206)
            {
              v124 = _getAndSetDocId(a1, v200, v199, v190, v191, &v205, 0, a9);
              v206 = v124;
            }

            db_read_lock(a1 + 14720);
            v125 = *(a1 + 14392);
            *v207 = v125;
            v126 = v218[1];
            v127 = atomic_load((a1 + 36));
            TermUpdateSetUpdateDocumentInfo(v125, v194, v124, *(&v126 + 1), v126, v48, v202, a2, v201, v115, (v127 & 8) != 0);
            v128 = (*(a1 + 15664) & 1) != 0 || index_termUpdateSetShouldFlush(a1, *(a1 + 14392), v189) != 0;
            v132 = v195;
            v133 = v193;
            *(a1 + 15664) = v128;
            if (v133)
            {
              (*(v133 + 16))(v133, v196);
            }

            db_read_unlock(a1 + 14720);
            *v132 = 0;
            v116 = v197;
          }

          if (*&v218[1])
          {
            v134 = v116;
            CFRelease(*&v218[1]);
            v116 = v134;
          }

          if (*(&v218[1] + 1))
          {
            v135 = v116;
            CFRelease(*(&v218[1] + 1));
            v116 = v135;
          }
        }

        v91 = v116;
        if (!v116)
        {
          return 0;
        }

        goto LABEL_226;
      }

      if ((a21 & 1) == 0 && (*(a1 + 68) + 1) >= *(a1 + 72))
      {
        v70 = indexGrowDocumentPayloads(a1, v188, v187);
        if (v70)
        {
          v71 = v70;
          CIOnThreadCleanUpPop(v44);
          return v71;
        }
      }

      v72 = v196;
      if (!v196 || (v73 = *(a1 + 80), v74 = v196 - v73, v196 <= v73) || v73 + *(a1 + 68) <= v196)
      {
        v78 = 0;
LABEL_110:
        CIOnThreadCleanUpPop(v44);
        if (v204 && a10 && (v79 = CFDictionaryGetTypeID(), v79 == CFGetTypeID(a10)))
        {
          MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v204);
          *&v218[0] = v204;
          *(&v218[0] + 1) = v192;
          *&v218[1] = MutableCopy;
          CFDictionaryApplyFunction(a10, mergeAttributesForNewEntryApplier, v218);
          if (a21)
          {
            create_termupdateset(a1, v207, &v221);
            if (v206 <= 1)
            {
              v81 = 1;
            }

            else
            {
              v81 = v206;
            }

            v82 = atomic_load((a1 + 36));
            TermUpdateSetAddDocumentInfo(*v207, v194, v81, v78, MutableCopy, 0, 0, v198, (v82 & 8) != 0);
            v83 = mergeIntoUpdateSet(a1, v190, v191, &v206, v199, v196, v189, 1, a9, a2, v202, v200, v203, v201, v195, *v207, v78, v188, v187, v193);
            v84 = v197;
            if (v83)
            {
              v84 = v83;
            }

            v197 = v84;
          }

          else
          {
            v141 = v206;
            if (!v206)
            {
              v141 = _getAndSetDocId(a1, v200, v199, v190, v191, &v205, 0, a9);
              v206 = v141;
            }

            db_read_lock(a1 + 14720);
            v142 = *(a1 + 14392);
            *v207 = v142;
            v143 = v141;
            if (!v67)
            {
              v143 = 1;
            }

            if (v141)
            {
              v144 = v143;
            }

            else
            {
              v144 = 1;
            }

            v145 = atomic_load((a1 + 36));
            TermUpdateSetAddDocumentInfo(v142, v194, v144, v78, MutableCopy, v202, a2, v198, (v145 & 8) != 0);
            v146 = (*(a1 + 15664) & 1) != 0 || index_termUpdateSetShouldFlush(a1, *(a1 + 14392), v189) != 0;
            *(a1 + 15664) = v146;
            db_read_unlock(a1 + 14720);
            if (v195)
            {
              v147 = v206 == 0;
            }

            else
            {
              v147 = 1;
            }

            if (v147)
            {
              v148 = 0;
            }

            else
            {
              v148 = v67;
            }

            if (v148 == 1)
            {
              *v195 = *(a1 + 80) + v206;
            }
          }

          CFRelease(MutableCopy);
          v91 = v197;
          if (!v197)
          {
            return 0;
          }
        }

        else
        {
          if (a21)
          {
            create_termupdateset(a1, v207, &v221);
            v206 = 1;
            v88 = *v207;
            v89 = atomic_load((a1 + 36));
            TermUpdateSetAddDocumentInfo(v88, v194, 1, v78, a10, 0, 0, v48, (v89 & 8) != 0);
            v90 = mergeIntoUpdateSet(a1, v190, v191, &v206, v199, v196, v189, 1, a9, a2, v202, v200, v203, v201, v195, *v207, v78, v188, v187, v193);
            if (v90)
            {
              v91 = v90;
            }

            else
            {
              v91 = v197;
            }
          }

          else
          {
            LOBYTE(v218[0]) = 0;
            v206 = _getAndSetDocId(a1, v200, v199, v190, v191, v218, 0, a9);
            db_read_lock(a1 + 14720);
            v129 = *(a1 + 14392);
            *v207 = v129;
            v130 = atomic_load((a1 + 36));
            TermUpdateSetAddDocumentInfo(v129, v194, v206, v78, a10, v202, a2, v48, (v130 & 8) != 0);
            v131 = (*(a1 + 15664) & 1) != 0 || index_termUpdateSetShouldFlush(a1, *(a1 + 14392), v189) != 0;
            v138 = v193;
            *(a1 + 15664) = v131;
            if (v138)
            {
              (*(v138 + 16))(v138, *(a1 + 80) + v206);
            }

            db_read_unlock(a1 + 14720);
            *v195 = *(a1 + 80) + v206;
            v91 = v197;
          }

          if (!v91)
          {
            return 0;
          }

          v139 = *__error();
          v140 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v218[0]) = 136315650;
            *(v218 + 4) = "setDocumentAttributes";
            WORD6(v218[0]) = 1024;
            *(v218 + 14) = 4673;
            WORD1(v218[1]) = 1024;
            DWORD1(v218[1]) = v91;
            _os_log_error_impl(&dword_1C278D000, v140, OS_LOG_TYPE_ERROR, "%s:%d: Got error %d", v218, 0x18u);
          }

          *__error() = v139;
        }

LABEL_226:
        v149 = *__error();
        v150 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v218[0]) = 136315650;
          *(v218 + 4) = "setDocumentAttributes";
          WORD6(v218[0]) = 1024;
          *(v218 + 14) = 4765;
          WORD1(v218[1]) = 1024;
          DWORD1(v218[1]) = v91;
          _os_log_error_impl(&dword_1C278D000, v150, OS_LOG_TYPE_ERROR, "%s:%d: Got error %d", v218, 0x18u);
        }

        *__error() = v149;
        return v91;
      }

      v75 = v199;
      if (v199)
      {
        v76 = *(a1 + 14432);
        if (*(a1 + 45))
        {
          v77 = v74;
          goto LABEL_233;
        }

        v152 = v74 / 5uLL;
        v153 = 6 * (v74 % 5);
      }

      else
      {
        if (*(a1 + 45))
        {
          v76 = *(a1 + 14432);
          v77 = (v196 - v73);
          v75 = *(v76 + v77);
LABEL_233:
          v199 = v75;
          *(v76 + v77) = 0;
          v151 = *(a1 + 14440);
          if (v151)
          {
            *(v151 + (v72 - *(a1 + 80)) / (32 * *MEMORY[0x1E69E9AC8])) |= 1 << (((v72 - *(a1 + 80)) / (4 * *MEMORY[0x1E69E9AC8])) & 7);
          }

LABEL_247:
          atomic_fetch_add((a1 + 16), 1u);
          v78 = (v72 - *(a1 + 80));
          goto LABEL_110;
        }

        v154 = v196 - v73;
        v152 = (v196 - v73) / 5uLL;
        LOBYTE(v153) = 6 * (v154 - 5 * v152);
        v76 = *(a1 + 14432);
        v75 = (*(v76 + 4 * v152) >> v153) & 0x3F;
      }

      v155 = *(v76 + 4 * v152) & ~(63 << v153);
      v156 = *(a1 + 14440);
      v199 = v75;
      if (v156)
      {
        v157 = MEMORY[0x1E69E9AC8];
        v158 = v152 / (8 * *MEMORY[0x1E69E9AC8]);
        v159 = (v152 / *MEMORY[0x1E69E9AC8]) & 7;
        *(v156 + v158) |= 1 << v159;
        if (*(*(a1 + 14440) + v158))
        {
          v160 = *v157;
          v161 = v159 | (8 * v158);
          if (v160 * v161 > v152)
          {
            v179 = __si_assert_copy_extra_3233(0, -1);
            v176 = v179;
            v177 = "";
            if (v179)
            {
              v177 = v179;
            }

            v178 = "vm_page_size*(gslot*8+bslot) <=slot";
          }

          else
          {
            if (v160 * (v161 + 1) > v152)
            {
              v76 = *(a1 + 14432);
              v162 = *(a1 + 45);
              *(v76 + 4 * v152) = v155;
              v163 = v72 - *(a1 + 80);
              if (v162)
              {
                v164 = *(v76 + v163);
                goto LABEL_246;
              }

              v152 = v163 / 5uLL;
              v153 = 6 * (v163 % 5);
LABEL_245:
              v164 = (*(v76 + 4 * v152) >> v153) & 0x3F;
LABEL_246:
              if (v164)
              {
                v171 = __si_assert_copy_extra_3233(0, -1);
                v172 = v171;
                v173 = "";
                if (v171)
                {
                  v173 = v171;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 4599, "((cindex)->coreSpotlight?({ ((uint8_t *)(cindex)->groups)[((uint32_t)(oldDocID-cindex->base))]; }):({ uint32_t __where=(uint32_t)((uint32_t)(oldDocID-cindex->base)); uint32_t __slot = __where/5; uint32_t __shift= (__where-(__slot*5))*6; uint32_t __word = ((uint32_t)((cindex)->groups[__slot])); (__word >> __shift) & 0x3F ; }))==(inval&0x3F)", v173);
                free(v172);
                if (__valid_fs(-1))
                {
                  v174 = 2989;
                }

                else
                {
                  v174 = 3072;
                }

                *v174 = -559038737;
                abort();
              }

              goto LABEL_247;
            }

            v180 = __si_assert_copy_extra_3233(0, -1);
            v176 = v180;
            v177 = "";
            if (v180)
            {
              v177 = v180;
            }

            v178 = "vm_page_size*(gslot*8+bslot+1) >slot";
          }
        }

        else
        {
          v175 = __si_assert_copy_extra_3233(0, -1);
          v176 = v175;
          v177 = "";
          if (v175)
          {
            v177 = v175;
          }

          v178 = "(cindex)->groupMap[gslot]";
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 4599, v178, v177);
        free(v176);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      *(v76 + 4 * v152) = v155;
      goto LABEL_245;
    }

    if (a10)
    {
LABEL_286:
      if (CFDictionaryGetValue(a10, 0))
      {
        v67 = 1;
        goto LABEL_96;
      }
    }

    v206 = v196;
    if (v196)
    {
      *v207 = 0;
      goto LABEL_97;
    }

    goto LABEL_95;
  }

  v49 = *__error();
  v50 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v218[0]) = 136315394;
    *(v218 + 4) = "setDocumentAttributes";
    WORD6(v218[0]) = 1024;
    *(v218 + 14) = 4532;
    _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: indexMarkDirty failed", v218, 0x12u);
  }

  *__error() = v49;
  CIOnThreadCleanUpPop(v44);
  return 22;
}

uint64_t indexMarkDirty(uint64_t a1)
{
  *&v29[5] = *MEMORY[0x1E69E9840];
  v2 = a1 + 12288;
  if (*(a1 + 15203) == 1)
  {
    if (indexMarkDirty__COUNT_)
    {
      return 0;
    }

    indexMarkDirty__COUNT_ = 1;
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315650;
      v25 = "indexMarkDirty";
      v26 = 1024;
      v27 = 2684;
      v28 = 2080;
      *v29 = a1 + 15208;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: trying to modify read only index %s", &v24, 0x1Cu);
    }

    v10 = __error();
    result = 0;
    *v10 = v8;
    return result;
  }

  if (*(a1 + 8) != 1)
  {
    return 1;
  }

  if (!atomic_load((a1 + 32)))
  {
    return 1;
  }

  HIDWORD(v6) = qos_class_self() - 9;
  LODWORD(v6) = HIDWORD(v6);
  v5 = v6 >> 2;
  if (v5 > 6)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_1C2BFF8F0[v5];
  }

  pthread_mutex_lock((a1 + 14720));
  if (*(a1 + 14904) || *(a1 + 14916) || (*(v2 + 2644) & 1) != 0)
  {
    goto LABEL_16;
  }

  if (v7 <= 5)
  {
    v20 = v7 - 6;
    v21 = (a1 + 16 * v7 + 14784);
    while (!*v21)
    {
      v21 += 2;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_34;
      }
    }

LABEL_16:
    db_rwlock_wait(a1 + 14720, v7, 2);
    goto LABEL_17;
  }

LABEL_34:
  *(a1 + 14904) = pthread_self();
LABEL_17:
  pthread_mutex_unlock((a1 + 14720));
  v12 = atomic_load((a1 + 32));
  if (v12 == -804450864 || (v13 = atomic_load((a1 + 15192))) != 0)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = atomic_load((a1 + 15192));
      v24 = 136315906;
      v25 = "indexMarkDirty";
      v26 = 1024;
      v27 = 2696;
      v28 = 1024;
      v29[0] = v12;
      LOWORD(v29[1]) = 1024;
      *(&v29[1] + 2) = v23;
      _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: indexMarkDirty failed - state:%x closing:%d", &v24, 0x1Eu);
    }

    v16 = 0;
    *__error() = v14;
  }

  else
  {
    v19 = *(a1 + 15184);
    if (v19 && (*(v19 + 16))())
    {
      v16 = 0;
    }

    else
    {
      indexWriteShutdowState(v11);
      v16 = 1;
    }
  }

  pthread_mutex_lock((a1 + 14720));
  *(a1 + 14924) = 0;
  v17 = *(a1 + 14896);
  *(a1 + 14896) = 0u;
  v18 = *(a1 + 14916) != 0;
  *(a1 + 14932) = 0;
  db_rwlock_wakeup(a1 + 14720, v18, 0);
  pthread_mutex_unlock((a1 + 14720));
  if (v17)
  {
    pthread_override_qos_class_end_np(v17);
  }

  return v16;
}

void __SIUINT32SetFinalize(char *a1)
{
  v2 = 0;
  v3 = a1 + 48;
  v4 = *(a1 + 5);
  do
  {
    v5 = *&v3[v2];
    if (v5)
    {
      if ((v5 & 1) == 0)
      {
        (*(*v5 + 72))(*&v3[v2]);
        CFAllocatorDeallocate(v4, v5);
      }

      *&v3[v2] = 0;
    }

    v2 += 8;
  }

  while (v2 != 128);
  v6 = *(a1 + 3);
  if (v6)
  {
    SIValueSet<unsigned int>::CombLevel_s::malloc_chain_s::chain_s::clear(v6, *(a1 + 5), *(a1 + 4));
    CFAllocatorDeallocate(*(a1 + 5), *(a1 + 3));
    *(a1 + 3) = 0;
  }
}

void SIValueSet<unsigned int>::CombLevel_s::malloc_chain_s::chain_s::clear(void **a1, const __CFAllocator *a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    SIValueSet<unsigned int>::CombLevel_s::malloc_chain_s::chain_s::clear(v6, a2, 63);
    CFAllocatorDeallocate(a2, *a1);
    *a1 = 0;
  }

  if (a3)
  {
    v7 = 0;
    v8 = a1 + 1;
    do
    {
      for (i = 0; i != 16; ++i)
      {
        v10 = v8[i];
        if (v10)
        {
          if ((v10 & 1) == 0)
          {
            (*(*v10 + 72))(v8[i]);
            CFAllocatorDeallocate(a2, v10);
          }

          v8[i] = 0;
        }
      }

      ++v7;
      v8 += 16;
    }

    while (v7 != a3);
  }
}

uint64_t _CIUpdateContent(uint64_t a1, uint64_t a2, const void *a3, int a4, const void *a5, uint64_t a6, int a7, CFTypeRef a8, float a9, const __CFDictionary *cf, unint64_t a11, uint64_t *a12, unsigned int a13, uint64_t a14, unsigned int a15, uint64_t (*a16)(uint64_t), uint64_t a17, int a18, int a19, int a20, char a21, uint64_t a22)
{
  v54 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    return 0xFFFFFFFFLL;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v32 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  v51 = v32;
  v33 = threadData[9 * v32 + 1] + 320 * HIDWORD(v32);
  v49 = v34;
  v50 = HIDWORD(v32);
  v48 = v35;
  *(v33 + 216) = 0;
  v46 = *(v33 + 312);
  v36 = *(v33 + 224);
  if (v36)
  {
    v36(*(v33 + 288));
  }

  if (_setjmp(v33))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v33 + 312) = v46;
    if ((~*(v33 + 212) & 0xA0000000) == 0)
    {
      v37 = *(v33 + 288);
      if (v37)
      {
        _CIMakeInvalid(v37);
      }
    }

    CIOnThreadCleanUpReset(v48);
    dropThreadId(v51, 1, add_explicit + 1);
    CICleanUpReset(v51, v49);
    return 0xFFFFFFFFLL;
  }

  v47 = add_explicit;
  if (dword_1EBF46AF4 >= 5)
  {
    v44 = *__error();
    v45 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v53 = a6;
      _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "_CIUpdateContent oid: %lld", buf, 0xCu);
    }

    *__error() = v44;
  }

  v39 = cf;
  if (a8)
  {
    a8 = CFRetain(a8);
  }

  if (cf)
  {
    v39 = CFRetain(cf);
  }

  if (a12)
  {
    *a12 = 0;
    v40 = setDocumentAttributes(a1, a2, a3, a4, a5, a6, a7, a8, a9, v39, a11, a12, a13, a14, a16, a17, a15, a18, a19, a20, a21, a22);
  }

  else
  {
    v40 = setDocumentAttributes(a1, a2, a3, a4, a5, a6, a7, a8, a9, v39, a11, 0, a13, a14, a16, a17, a15, a18, a19, a20, a21, a22);
  }

  v41 = v40;
  if (v39)
  {
    CFRelease(v39);
  }

  if (a8)
  {
    CFRelease(a8);
  }

  if (*(a1 + 15664) == 1 && *(a1 + 14400))
  {
    pthread_mutex_lock((a1 + 15120));
    pthread_mutex_unlock((a1 + 15120));
  }

  v42 = threadData[9 * v51 + 1] + 320 * v50;
  *(v42 + 312) = v46;
  v43 = *(v42 + 232);
  if (v43)
  {
    v43(*(v42 + 288));
  }

  dropThreadId(v51, 0, v47 + 1);
  return v41;
}

uint64_t _indexProgress(uint64_t a1)
{
  if (!atomic_load((a1 + 15192)))
  {
    return 0;
  }

  v2 = CFAbsoluteTimeGetCurrent() - *(a1 + 15048);
  if (v2 <= 10.0)
  {
    return 0;
  }

  if (v2 <= 20.0)
  {
    if (gSILogLevels[0] < 5)
    {
      return 1;
    }

    v4 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "should cancel\n", v8, 2u);
    }

    v6 = 1;
  }

  else
  {
    if (gSILogLevels[0] < 5)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "should exit\n", buf, 2u);
    }

    v6 = 0xFFFFFFFFLL;
  }

  *__error() = v4;
  return v6;
}

uint64_t indexWriteShutdowState(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v13 = *MEMORY[0x1E69E9840];
  v3 = (v1 + 32);
  bzero(v12, 0x1000uLL);
  atomic_store(0, v3);
  v4 = *(v2 + 4);
  v5 = atomic_load(v3);
  v12[0] = v4;
  v12[1] = v5;
  v6 = atomic_load((v2 + 36));
  v7 = *(v2 + 48);
  v12[2] = v6;
  v12[3] = v7;
  pthread_mutex_lock((v2 + 14720));
  *(v2 + 14932) = 1;
  db_rwlock_wakeup(v2 + 14720, 1, 1);
  result = pthread_mutex_unlock((v2 + 14720));
  v9 = *(v2 + 14480);
  if (v9)
  {
    result = fd_pwrite(v9, v12, 0x10uLL, 0);
    if (result == 16)
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

      v11 = 0;
      result = _fd_acquire_fd(v9, &v11);
      if (result != -1)
      {
        v10 = result;
        prot_fsync(result, (*(v9 + 56) & 8) == 0);
        return _fd_release_fd(v9, v10, 0, v11);
      }
    }

    else if (result == -1)
    {
      return __error();
    }
  }

  return result;
}

unint64_t TermTrieResolve(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v126[17] = *MEMORY[0x1E69E9840];
  if (!v3)
  {
    v88 = __si_assert_copy_extra_332();
    if (__si_error_str_key)
    {
      pthread_getspecific(__si_error_str_key);
    }

    __message_assert("%s:%u: failed assertion '%s' %s invalid length for %s");
    goto LABEL_100;
  }

  v6 = v5;
  v7 = v3;
  v8 = v1;
  v110 = v4;
  v9 = 0;
  v10 = 0;
  _X25 = &v1[2];
  v124 = 0;
  v12 = 1;
  v123 = 1;
  v114 = v2;
  v116 = v1 + 268;
  v120 = v1 + 260;
  while (2)
  {
    v13 = &v2[v10];
    v112 = _X25;
    v118 = v10;
LABEL_5:
    if (v12 == 2)
    {
      if (v7 == v10)
      {
        v84 = *v112;
        if (*v112)
        {
          return v84 + 16;
        }

        v84 = _TermListEntryCreate(v8, v114, v7, v6);
        *v112 = v84;
LABEL_93:
        *v110 = 1;
        goto LABEL_150;
      }

      v14 = v13;
      if (v6)
      {
        v14 = v116 + *v13;
      }

      v15 = *v14;
      v16 = (_X25 + 8);
      if ((*(_X25 + 8 + ((v15 >> 3) & 0x1C)) >> v15))
      {
        v44 = 0;
        v45 = v15 >> 6;
        if ((v15 >> 6) > 1)
        {
          v2 = v114;
          if (v45 != 2)
          {
            v47 = vcnt_s8(*(_X25 + 24));
            v47.i16[0] = vaddlv_u8(v47);
            v44 = v47.u32[0];
          }

          v48 = vcnt_s8(*(_X25 + 16));
          v48.i16[0] = vaddlv_u8(v48);
          v44 += v48.u32[0];
        }

        else
        {
          v46 = v15 >> 6;
          v2 = v114;
          if (!v45)
          {
LABEL_55:
            v50 = vcnt_s8((*&v16[v45] & ~(-1 << v15)));
            v50.i16[0] = vaddlv_u8(v50);
            v51 = (_X25 + 8 * (v50.u32[0] + v46));
            v52 = v51[6];
            v9 = &v51[6];
            v42 = v52;
            v12 = v52.i8[0] & 3;
            v123 = v12;
            _X10 = &__src[225] + 5;
            __asm { PRFUM           #0x14, [X10,#0xFF] }

            goto LABEL_56;
          }
        }

        v49 = vcnt_s8(*v16);
        v49.i16[0] = vaddlv_u8(v49);
        v46 = v49.u32[0] + v44;
        goto LABEL_55;
      }

      v17 = *(_X25 + 41);
      if (*(_X25 + 40) < v17)
      {
        v84 = _TermListEntryCreate(v8, v114, v7, v6);
        *v110 = 1;
        *(_X25 + 8 * TermTrieCompactSetFollows(_X25, v15) + 48) = v84 | 3;
        goto LABEL_150;
      }

      if (v17 <= 0x1F)
      {
        v18 = _term_trie_compact_alloc(v8, 2 * (v17 & 0x7F));
        memcpy(v18, _X25, 8 * *(_X25 + 41) + 48);
        *(v18 + 41) = 2 * *(_X25 + 41);
        v19 = *(_X25 + 41);
        if ((v19 ^ (v19 - 1)) <= v19 - 1)
        {
          goto LABEL_156;
        }

        v20 = __clz(__rbit32(v19));
        if (v20 - 6 <= 0xFFFFFFFB)
        {
          goto LABEL_156;
        }

        OSAtomicEnqueue(&v120[2 * v20 - 4], _X25, 0);
        *v9 = v18 | 2;
        v12 = 2;
        goto LABEL_4;
      }

      v21 = v7;
      v22 = v6;
      v23 = v9;
      v24 = *(v8 + 8);
      v25 = atomic_load((v24 + 8));
      while (1)
      {
        v18 = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v18 + 2064 >= *(v24 + 16))
        {
          break;
        }

LABEL_17:
        v26 = v25;
        atomic_compare_exchange_strong((v24 + 8), &v26, v18 + 2056);
        _ZF = v26 == v25;
        v25 = v26;
        if (_ZF)
        {
          goto LABEL_24;
        }
      }

      while (1)
      {
        os_unfair_lock_lock(&_slablock);
        v24 = *(v8 + 8);
        v28 = atomic_load((v24 + 8));
        if (((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 2064 >= *(v24 + 16))
        {
          break;
        }

        os_unfair_lock_unlock(&_slablock);
        v25 = atomic_load((v24 + 8));
        v18 = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v18 + 2064 < *(v24 + 16))
        {
          goto LABEL_17;
        }
      }

      v18 = slab_new_slab((v8 + 8), 0x808uLL, 0xF4u);
      os_unfair_lock_unlock(&_slablock);
LABEL_24:
      bzero(v18, 0x808uLL);
      v29 = 0;
      v30 = 0;
      *v18 = *_X25;
      v9 = v23;
      v6 = v22;
      v7 = v21;
      v10 = v118;
      while (1)
      {
        if (v30 >= *(_X25 + 40))
        {
LABEL_36:
          v38 = *(_X25 + 41);
          v39 = __clz(__rbit32(v38));
          if ((v38 ^ (v38 - 1)) <= v38 - 1 || v39 - 6 <= 0xFFFFFFFB)
          {
LABEL_156:
            v88 = __si_assert_copy_extra_332();
LABEL_99:
            __message_assert("%s:%u: failed assertion '%s' %s ");
LABEL_100:
            free(v88);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          OSAtomicEnqueue(&v120[2 * v39 - 4], _X25, 0);
          *v9 = v18 | 1;
          v12 = 1;
          v123 = 1;
LABEL_4:
          _X25 = v18;
          goto LABEL_5;
        }

        if ((v16->i32[v29 >> 5] >> v29))
        {
          break;
        }

LABEL_28:
        if (++v29 == 256)
        {
          goto LABEL_36;
        }
      }

      v32 = 0;
      v36 = v29 >> 6;
      if (v29 >> 6 > 1)
      {
        if (v36 != 2)
        {
          v37 = vcnt_s8(*(_X25 + 24));
          v37.i16[0] = vaddlv_u8(v37);
          v32 = v37.u32[0];
        }

        v31 = vcnt_s8(*(_X25 + 16));
        v31.i16[0] = vaddlv_u8(v31);
        v32 += v31.u32[0];
      }

      else
      {
        v34 = v36;
        if (!v36)
        {
          goto LABEL_27;
        }
      }

      v33 = vcnt_s8(*v16);
      v33.i16[0] = vaddlv_u8(v33);
      v34 = v33.u32[0] + v32;
LABEL_27:
      v35 = vcnt_s8((*&v16[v36] & ~(-1 << v29)));
      v35.i16[0] = vaddlv_u8(v35);
      *(v18 + 8 * v29 + 8) = *(_X25 + 48 + 8 * (v35.u32[0] + v34));
      ++v30;
      goto LABEL_28;
    }

    if (v12 == 1)
    {
      if (v7 == v10)
      {
        v84 = *_X25;
        if (*_X25)
        {
          return v84 + 16;
        }

        v84 = _TermListEntryCreate(v8, v114, v7, v6);
        *_X25 = v84;
        goto LABEL_93;
      }

      if (v6)
      {
        v13 = v116 + *v13;
      }

      v41 = (_X25 + 8 * *v13);
      v43 = v41[1];
      v9 = &v41[1];
      v42 = v43;
      if (!*&v43)
      {
        v84 = _TermListEntryCreate(v8, v114, v7, v6);
        *v110 = 1;
        *v9 = v84 | 3;
        goto LABEL_150;
      }

      v12 = v42.i8[0] & 3;
      v123 = v12;
      v2 = v114;
LABEL_56:
      _X25 = *&v42 & 0xFFFFFFFFFFFFFFFCLL;
      __asm { PRFM            #0x14, [X25] }

      ++v10;
      continue;
    }

    break;
  }

  if (v12 != 3)
  {
    v108 = __si_assert_copy_extra_332();
    v86 = v108;
    v109 = "";
    if (v108)
    {
      v109 = v108;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.c", 697, "0", v109);
LABEL_105:
    free(v86);
    if (__valid_fs(-1))
    {
      v91 = 2989;
    }

    else
    {
      v91 = 3072;
    }

    *v91 = -559038737;
    abort();
  }

  v122 = 0;
  v59 = _RBInsert(v8, _X25 & 0x7FFFFFFFFFFFFFFFLL, v114, 0, v7, v110, &v122, v10, &v124, v6);
  v60 = v124;
  if (!v124)
  {
    goto LABEL_156;
  }

  v61 = v59 & 0x7FFFFFFFFFFFFFFFLL;
  *v9 = v59 & 0x7FFFFFFFFFFFFFFCLL | 3;
  v62 = v122;
  if (v122 < 6)
  {
    goto LABEL_147;
  }

  v111 = v122;
  v113 = v60;
  v115 = v8;
  bzero(v125, 0x1000uLL);
  v63 = 512;
  v122 = 512;
  v117 = vnegq_f64(0);
  v64 = v118;
  while (2)
  {
    bzero(__src, 0x808uLL);
    v65 = 0;
    v66 = 0;
    memset(v126, 0, 128);
    do
    {
      do
      {
        while (1)
        {
          while (v61)
          {
            v69 = *v61 & 0x7FFFFFFFFFFFFFFFLL;
            if (v69)
            {
              v126[v65] = v61;
              if (v65 >= 14)
              {
                v85 = __si_assert_copy_extra_332();
                v86 = v85;
                v87 = "";
                if (v85)
                {
                  v87 = v85;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.c", 322, "depth<15", v87);
                goto LABEL_105;
              }

              if (*(v61 + 32) >= 0x415u)
              {
                goto LABEL_98;
              }

              ++v65;
              v61 = v69;
            }

            else
            {
              if (v66 >= v63)
              {
                v89 = __si_assert_copy_extra_332();
                v86 = v89;
                v90 = "";
                if (v89)
                {
                  v90 = v89;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.c", 326, "count<size", v90);
                goto LABEL_105;
              }

              v70 = *(v61 + 8);
              v125[v66++] = v61;
              *v61 = v117;
              v61 = v70 & 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          v67 = v65 - 1;
          if (v65 >= 1)
          {
            break;
          }

          v61 = 0;
          if (!v65)
          {
            goto LABEL_75;
          }
        }

        if (v66 >= v63)
        {
          goto LABEL_98;
        }

        v68 = v126[v67];
        v126[v65] = 0;
        v61 = *(v68 + 8) & 0x7FFFFFFFFFFFFFFFLL;
        v125[v66++] = v68;
        *v68 = v117;
        --v65;
      }

      while (v67);
LABEL_75:
      ;
    }

    while (v61);
    v71 = __src[0];
    if (!v66)
    {
      v92 = _term_trie_compact_alloc(v115, 4u);
      *v92 = v71;
      v93 = 2;
      v62 = v111;
      goto LABEL_146;
    }

    v119 = v9;
    v72 = 0;
    v73 = v66;
    do
    {
      while (1)
      {
        v75 = v125[--v73];
        v76 = *(v75 + 32);
        if (v76 < v64)
        {
          v94 = __si_assert_copy_extra_332();
          v86 = v94;
          v95 = "";
          if (v94)
          {
            v95 = v94;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.c", 610, "cur->data.termLen>=term_offset", v95);
          goto LABEL_105;
        }

        if (v76 == v64)
        {
          break;
        }

        v77 = v75 + 34;
        v78 = *(v75 + 34 + v64);
        v79 = __src[v78 + 1];
        if (v79)
        {
          if ((~v79 & 3) != 0)
          {
            v97 = __si_assert_copy_extra_332();
            v86 = v97;
            v98 = "";
            if (v97)
            {
              v98 = v97;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.c", 625, "TermTrieKindList==((unsigned)((tmpLevel.follows[cur->data.termData[term_offset]]) & 3))", v98);
            goto LABEL_105;
          }

          v74 = _RBAppend(v79 & 0x7FFFFFFFFFFFFFFCLL, v75, 0, v64 + 1) & 0x7FFFFFFFFFFFFFFCLL | 3;
          v78 = *(v77 + v64);
        }

        else
        {
          ++v72;
          v74 = v75 | 3;
        }

        __src[v78 + 1] = v74;
        if (!v73)
        {
          goto LABEL_88;
        }
      }

      if (v71)
      {
        goto LABEL_98;
      }

      ++v72;
      v71 = v75;
    }

    while (v73);
LABEL_88:
    __src[0] = v71;
    v9 = v119;
    if (v72 == 1)
    {
      v80 = _term_trie_compact_alloc(v115, 4u);
      v81 = *(v124 + v64 + 34);
      v61 = __src[v81 + 1] & 0xFFFFFFFFFFFFFFFCLL;
      if (v61)
      {
        v82 = v80;
        v83 = &v80[TermTrieCompactSetFollows(v80, v81)];
        v83[6] = __src[*(v124 + v64 + 34) + 1];
        *v119 = v82 | 2;
        ++v64;
        v63 = v122;
        v9 = &v83[6];
        continue;
      }

LABEL_98:
      v88 = __si_assert_copy_extra_332();
      goto LABEL_99;
    }

    break;
  }

  if (v72 >= 5)
  {
    v62 = v111;
    if (v72 >= 9)
    {
      if (v72 >= 0x11)
      {
        if (v72 > 0x20)
        {
          v99 = v115;
          v100 = *(v115 + 8);
          v101 = atomic_load((v100 + 8));
          while (1)
          {
            v92 = (v101 + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v92 + 2064 >= *(v100 + 16))
            {
              break;
            }

LABEL_133:
            v102 = v101;
            atomic_compare_exchange_strong((v100 + 8), &v102, v92 + 2056);
            _ZF = v102 == v101;
            v101 = v102;
            if (_ZF)
            {
              goto LABEL_162;
            }
          }

          while (1)
          {
            os_unfair_lock_lock(&_slablock);
            v100 = *(v99 + 8);
            v103 = atomic_load((v100 + 8));
            if (((v103 + 7) & 0xFFFFFFFFFFFFFFF8) + 2064 >= *(v100 + 16))
            {
              break;
            }

            os_unfair_lock_unlock(&_slablock);
            v101 = atomic_load((v100 + 8));
            v92 = (v101 + 7) & 0xFFFFFFFFFFFFFFF8;
            v9 = v119;
            v60 = v113;
            v99 = v115;
            v62 = v111;
            if (v92 + 2064 < *(v100 + 16))
            {
              goto LABEL_133;
            }
          }

          v92 = slab_new_slab((v115 + 8), 0x808uLL, 0xF4u);
          os_unfair_lock_unlock(&_slablock);
          v9 = v119;
          v60 = v113;
          v62 = v111;
LABEL_162:
          bzero(v92, 0x808uLL);
          memcpy(v92, __src, 0x808uLL);
          v93 = 1;
          goto LABEL_146;
        }

        v96 = 32;
      }

      else
      {
        v96 = 16;
      }
    }

    else
    {
      v96 = 8;
    }

    v92 = _term_trie_compact_alloc(v115, v96);
    *v92 = v71;
    goto LABEL_141;
  }

  v92 = _term_trie_compact_alloc(v115, 4u);
  *v92 = v71;
  v62 = v111;
  if (!v72)
  {
    v93 = 2;
    goto LABEL_146;
  }

LABEL_141:
  v104 = 0;
  v105 = 0;
  v93 = 2;
  do
  {
    v106 = __src[v104 + 1];
    if (v106)
    {
      *(v92 + 48 + 8 * TermTrieCompactSetFollows(v92, v104)) = v106;
      ++v105;
    }

    if (v104 > 0xFE)
    {
      break;
    }

    ++v104;
  }

  while (v105 < v72);
LABEL_146:
  *v9 = v93 | v92;
LABEL_147:
  if (v62 <= 5)
  {
    v84 = v60;
  }

  else
  {
    v84 = v124;
  }

LABEL_150:
  if (!v84)
  {
    goto LABEL_98;
  }

  return v84 + 16;
}

unint64_t _TermListEntryCreate(uint64_t a1, unsigned __int8 *a2, size_t __n, uint64_t a4)
{
  v4 = __n;
  if (__n >= 0x415)
  {
    v18 = __si_assert_copy_extra_332();
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s %d", "TermTrie.c", 270, "term_len <= CI_UTF8CHARS_BUFFER_SIZE", v20, v4);
    free(v19);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v6 = __n + 41;
  v7 = (a1 + 8);
  v8 = *(a1 + 8);
  v9 = atomic_load(v8 + 1);
  while (1)
  {
    v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = v10 + v6;
    if (v10 + v6 + 8 >= v8[2])
    {
      break;
    }

LABEL_4:
    v12 = v9;
    atomic_compare_exchange_strong(v8 + 1, &v12, v11);
    v13 = v12 == v9;
    v9 = v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v14 = a4;
    v15 = a2;
    os_unfair_lock_lock(&_slablock);
    v8 = *v7;
    v16 = *v7 + 1;
    v17 = atomic_load(v16);
    if (((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 8 >= v8[2])
    {
      break;
    }

    os_unfair_lock_unlock(&_slablock);
    v9 = atomic_load(v16);
    v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = v10 + v6;
    a2 = v15;
    a4 = v14;
    if (v10 + v6 + 8 < v8[2])
    {
      goto LABEL_4;
    }
  }

  v10 = slab_new_slab(v7, v4 + 41, 0xF4u);
  os_unfair_lock_unlock(&_slablock);
  a2 = v15;
  LODWORD(a4) = v14;
LABEL_15:
  if (a4)
  {
    v21 = (v10 + 34);
    v22 = v4;
    do
    {
      v23 = *a2++;
      *v21++ = *(a1 + 2144 + v23);
      --v22;
    }

    while (v22);
  }

  else
  {
    memcpy((v10 + 34), a2, v4);
  }

  *(v10 + 34 + v4) = 0;
  *(v10 + 32) = v4;
  *(v10 + 16) = 0;
  *v10 = vnegq_f64(0);
  atomic_fetch_add(a1, 1u);
  return v10;
}

char *create_termupdateset(uint64_t a1, char **a2, uint64_t a3)
{
  if (*(a1 + 46))
  {
    v6 = 48;
  }

  else
  {
    v6 = 16;
  }

  result = TermUpdateSetCreate(0, 0, *(a1 + 80), *(a1 + 68), v6, *(a1 + 14384), *(a1 + 56), *(a1 + 4936));
  *a2 = result;
  if (*(a1 + 15202) == 1)
  {
    *(result + 76) = getPropertyStringCallback;
  }

  *(result + 35) = a3;
  return result;
}

char *TermUpdateSetCreate(uint64_t (*a1)(), uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, __int16 a7, const void *a8)
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = malloc_type_calloc(1uLL, 0x270uLL, 0x10A0040208F0414uLL);
  *(v11 + 28) = 0;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 152) = 0u;
  *(v11 + 168) = 0u;
  *(v11 + 184) = 0u;
  *(v11 + 200) = 0u;
  *(v11 + 27) = 0;
  *buf = 0;
  v12 = MEMORY[0x1E69E9AC8];
  v13 = *MEMORY[0x1E69E9AC8];
  v14 = OSAtomicDequeue(&stru_1EDD78B00, 0);
  if (v14)
  {
    v15 = v14[1];
    v16 = v14;
    bzero(v15, v15[1] - v15);
    OSAtomicEnqueue(&slab_cache, v16, 0);
    atomic_fetch_add_explicit(qword_1EDD78CB0, v13, memory_order_relaxed);
LABEL_3:
    *v15 = 0;
    v15[1] = v15 + 3;
    v15[2] = v15 + v13;
    madvise(v15 + 3, *v12, 3);
    goto LABEL_6;
  }

  if (!my_vm_allocate(buf, v13, 0xF4000001))
  {
    v15 = *buf;
    goto LABEL_3;
  }

  v15 = 0;
LABEL_6:
  *(v11 + 29) = v15;
  v17 = v11 + 232;
  *(v11 + 4) = a4;
  v15[1] = (v15[1] + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = *(v11 + 29);
  v19 = *(v18 + 8);
  if ((v19 + 303) >= *(v18 + 16))
  {
    v19 = slab_new(v11 + 29, 0x970uLL, 0xF4u);
    if ((a5 & 8) == 0)
    {
LABEL_9:
      v20 = *v17;
      do
      {
        v21 = atomic_load((v20 + 8));
        if (v21 + 24592 >= *(v20 + 16))
        {
          while (1)
          {
            os_unfair_lock_lock(&_slablock);
            v20 = *v17;
            v23 = (*v17 + 8);
            v24 = atomic_load(v23);
            if (v24 + 24592 >= *(v20 + 16))
            {
              break;
            }

            os_unfair_lock_unlock(&_slablock);
            v21 = atomic_load(v23);
            if (v21 + 24592 < *(v20 + 16))
            {
              goto LABEL_11;
            }
          }

          v21 = slab_new_slab(v11 + 29, 0x6008uLL, 0xF4u);
          os_unfair_lock_unlock(&_slablock);
          goto LABEL_17;
        }

LABEL_11:
        v22 = v21;
        atomic_compare_exchange_strong((v20 + 8), &v22, v21 + 24584);
      }

      while (v22 != v21);
      v25 = atomic_load((v20 + 8));
      if ((v25 ^ v21) < 0x40000)
      {
        goto LABEL_18;
      }

LABEL_17:
      madvise(((v21 & 0xFFFFFFFFFFFC0000) + 0x40000), 0x40000uLL, 3);
LABEL_18:
      *v19 = v21;
    }
  }

  else
  {
    *(v18 + 8) = v19 + 302;
    if (!v19)
    {
      goto LABEL_24;
    }

    if ((a5 & 8) == 0)
    {
      goto LABEL_9;
    }
  }

  bzero(v19 + 2, 0x960uLL);
  *buf = 0;
  v26 = *v12;
  v27 = OSAtomicDequeue(&stru_1EDD78B00, 0);
  if (v27)
  {
    v28 = v27;
    v29 = *(v27 + 1);
    bzero(v29, v29[1] - v29);
    OSAtomicEnqueue(&slab_cache, v28, 0);
    atomic_fetch_add_explicit(qword_1EDD78CB0, v26, memory_order_relaxed);
  }

  else
  {
    if (my_vm_allocate(buf, v26, 0xF4000001))
    {
      v19[3] = 0;
      v35 = __si_assert_copy_extra_332();
      v36 = v35;
      v37 = "";
      if (v35)
      {
        v37 = v35;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.c", 170, "trie->dataAllocator", v37);
      free(v36);
      if (__valid_fs(-1))
      {
        v38 = 2989;
      }

      else
      {
        v38 = 3072;
      }

      *v38 = -559038737;
      abort();
    }

    v29 = *buf;
  }

  *v29 = 0;
  v29[1] = v29 + 3;
  v29[2] = v29 + v26;
  madvise(v29 + 3, *v12, 3);
  *(v19 + 147) = xmmword_1C2C003D0;
  *(v19 + 148) = unk_1C2C003E0;
  *(v19 + 149) = xmmword_1C2C003F0;
  *(v19 + 150) = unk_1C2C00400;
  *(v19 + 143) = xmmword_1C2C00390;
  *(v19 + 144) = unk_1C2C003A0;
  *(v19 + 145) = xmmword_1C2C003B0;
  *(v19 + 146) = unk_1C2C003C0;
  *(v19 + 142) = unk_1C2C00380;
  *(v19 + 135) = tcm;
  *(v19 + 136) = unk_1C2C00320;
  *(v19 + 137) = xmmword_1C2C00330;
  v19[3] = v29;
  v19[262] = 0;
  v19[263] = 0;
  v19[264] = 0;
  v19[265] = 0;
  v19[266] = 0;
  v19[267] = 0;
  *buf = 0;
  v19[268] = 0;
  v19[269] = 0;
LABEL_24:
  *(v11 + 3) = v19;
  v30 = _Block_copy(a8);
  v31 = 0;
  *(v11 + 4) = v30;
  *(v11 + 11) = 0;
  *(v11 + 24) = 0;
  atomic_store(1u, v11 + 25);
  *(v11 + 13) = v30;
  atomic_store(1u, v11 + 62);
  *(v11 + 63) = 0;
  *(v11 + 30) = 0;
  *(v11 + 32) = 0;
  atomic_store(1u, v11 + 67);
  *(v11 + 68) = 0;
  atomic_store(0, v11 + 66);
  *(v11 + 37) = v30;
  *(v11 + 1) = a3;
  if ((a5 & 8) == 0)
  {
    *(*v17 + 8) = (*(*v17 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = *(*v17 + 8);
    if ((v31 + 1922) >= *(*v17 + 16))
    {
      v31 = slab_new(v11 + 29, 0x3C08uLL, 0xF4u);
    }

    else
    {
      *(*v17 + 8) = v31 + 1921;
    }
  }

  if (a1)
  {
    v32 = a1;
  }

  else
  {
    v32 = _termUpdateSetProgress;
  }

  *(v11 + 74) = v32;
  *(v11 + 75) = a2;
  *(v11 + 5) = v31;
  *(v11 + 6) = 2;
  *(v11 + 7) = 0;
  v33 = _os_feature_enabled_impl();
  if ((a5 & 0x40) == 0 && v33)
  {
    operator new();
  }

  atomic_store(1u, v11);
  *(v11 + 154) = a5;
  *(v11 + 19) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 21) = 0u;
  *(v11 + 22) = 0u;
  *(v11 + 23) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 25) = 0u;
  *(v11 + 26) = 0u;
  *(v11 + 27) = 0u;
  *(v11 + 28) = 0u;
  *(v11 + 29) = 0u;
  *(v11 + 30) = 0u;
  *(v11 + 31) = 0u;
  *(v11 + 64) = 0;
  pthread_mutex_init((v11 + 304), 0);
  pthread_mutex_init((v11 + 520), 0);
  *(v11 + 35) = 0;
  return v11;
}

void *slab_new_slab(void **a1, unint64_t a2, unsigned int a3)
{
  v4 = *a1;
  v19 = *a1;
  if (a2 < 0xFFFE9)
  {
    if (!slab_vm_allocate(&v19, 0x100000uLL, a3))
    {
      v9 = *a1;
      v6 = v19;
      v19[2] = v19 + 0x20000;
      v10 = v6 + a2 + 24;
      atomic_store(v10, v6 + 1);
      *v6 = v9;
      v6[1] = v10 + a2;
      __dmb(0xBu);
      *a1 = v19;
      return v6 + 3;
    }

    v15 = __si_assert_copy_extra_332();
    v13 = v15;
    v16 = "";
    if (v15)
    {
      v16 = v15;
    }

    __message_assert(v15, "slab_allocator.c", 496, "kr==0", v16);
LABEL_13:
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

  v18 = 0;
  v5 = a2 + 24;
  if (slab_vm_allocate(&v18, a2 + 24, a3))
  {
    v12 = __si_assert_copy_extra_332();
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert(v12, "slab_allocator.c", 480, "kr == 0", v14);
    goto LABEL_13;
  }

  v6 = v18;
  v7 = &v18[v5];
  atomic_store(&v18[v5], v4 + 1);
  v6[2] = v7;
  *v6 = *v4;
  *v4 = v6;
  return v6 + 3;
}

uint64_t poslock(pthread_rwlock_t *a1)
{
  result = pthread_rwlock_wrlock(a1);
  if (result)
  {
    v2 = __si_assert_copy_extra_332();
    v3 = v2;
    v4 = "";
    if (v2)
    {
      v4 = v2;
    }

    __message_assert(v2, "poslock.c", 8, "result==0", v4);
    free(v3);
    if (__valid_fs(-1))
    {
      v5 = 2989;
    }

    else
    {
      v5 = 3072;
    }

    *v5 = -559038737;
    abort();
  }

  return result;
}

uint64_t TermUpdateSetAddDocumentInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned __int8 a9)
{
  if (!a3)
  {
    v29 = __si_assert_copy_extra_332();
    v30 = v29;
    v31 = "";
    if (v29)
    {
      v31 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s expected non-zero docID for term", "TermUpdateSet.c", 2527, "docID", v31);
    free(v30);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v10 = a7;
  v16 = *(a1 + 280);
  poslock(v16);
  HIDWORD(v18) = qos_class_self() - 9;
  LODWORD(v18) = HIDWORD(v18);
  v17 = v18 >> 2;
  if (v17 > 6)
  {
    v19 = 0;
  }

  else
  {
    v19 = dword_1C2BFF8F0[v17];
  }

  pthread_mutex_lock((a1 + 304));
  if (!*(a1 + 488) && !*(a1 + 500) && (*(a1 + 516) & 1) == 0)
  {
    if (v19 > 5)
    {
LABEL_28:
      *(a1 + 488) = pthread_self();
      goto LABEL_9;
    }

    v26 = v19 - 6;
    v27 = (a1 + 16 * v19 + 368);
    while (!*v27)
    {
      v27 += 2;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_28;
      }
    }
  }

  db_rwlock_wait(a1 + 304, v19, 2);
LABEL_9:
  pthread_mutex_unlock((a1 + 304));
  ++*(a1 + 112);
  if (a8 <= 0xB && ((0xECFu >> a8) & 1) != 0)
  {
    ++*(a1 + qword_1C2BFF158[a8]);
  }

  v20 = CIRetainIndexingTokenizer(a2);
  if (a5)
  {
    v21 = CFGetTypeID(a5);
    if (v21 == CFDictionaryGetTypeID())
    {
      termUpdateSetProcessFields(a1, 0, v20, a3, a4, a5, 0, a9);
    }

    else
    {
      invertValueToUpdateSet(v22, a1, 0, v20, 0, a3, a4, a5, 0, 0, 0, 0, 0, 0, a9);
    }
  }

  CIReleaseIndexingTokenizer(v20);
  if (v10)
  {
    doChildFile(a1 + 88, (a1 + 48), v10, a6, a3, 0);
  }

  pthread_mutex_lock((a1 + 304));
  *(a1 + 508) = 0;
  v23 = *(a1 + 480);
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v24 = *(a1 + 500) != 0;
  *(a1 + 516) = 0;
  db_rwlock_wakeup(a1 + 304, v24, 0);
  pthread_mutex_unlock((a1 + 304));
  if (v23)
  {
    pthread_override_qos_class_end_np(v23);
  }

  return poswriteunlock(v16);
}

uint64_t _getAndSetDocId(uint64_t a1, uint64_t a2, int a3, int a4, int a5, _BYTE *a6, int a7, float a8)
{
  if (__THREAD_SLOT_KEY[0])
  {
    v16 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    makeThreadId();
    v16 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  if (v16 < 0x801)
  {
    v17 = v16 - 1;
    if (a7)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  makeThreadId();
  v17 = pthread_getspecific(__THREAD_SLOT_KEY[0]) - 1;
  if (a7)
  {
LABEL_5:
    v19 = *(a1 + 68);
    v18 = (a1 + 68);
    if (v19 + 1 >= *(a1 + 72))
    {
      v19 = 0;
      *a6 = 1;
      return v19;
    }

LABEL_18:
    if (!v19)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Got unexpected 0 payloadCount. Attempting repair.", buf, 2u);
        v52 = *v18;
        v19 = *v18 + 1;
        *v18 = v19;
        if (v52 == -1)
        {
          v51 = __si_assert_copy_extra_3233(0, -1);
          __message_assert("%s:%u: failed assertion '%s' %s Expected non-zero docid");
          goto LABEL_65;
        }
      }

      else
      {
        v19 = 1;
        *v18 = 1;
      }
    }

    if (!a3)
    {
      goto LABEL_42;
    }

    *(*(a1 + 14408) + 8 * v19) = a2;
    v23 = *(a1 + 14416);
    if (v23)
    {
      *(v23 + 4 * v19) = a4;
    }

    v24 = *(a1 + 14424);
    if (v24)
    {
      v25 = v24 + 8 * v19;
      if (a8 != 0.0)
      {
        *v25 = a8;
      }

      if (a5)
      {
        *(v25 + 4) = a5;
      }
    }

    if (*(a1 + 45) == 1)
    {
      *(*(a1 + 14432) + v19) = a3;
      v26 = *(a1 + 14440);
      if (v26)
      {
        *(v26 + v19 / (32 * *MEMORY[0x1E69E9AC8])) |= 1 << ((v19 / (4 * *MEMORY[0x1E69E9AC8])) & 7);
      }

      goto LABEL_42;
    }

    v29 = v19 / 5uLL;
    v30 = *(a1 + 14432);
    v31 = *(v30 + 4 * v29) & ~(63 << (6 * (v19 % 5))) | ((a3 & 0x3F) << (6 * (v19 % 5)));
    v32 = *(a1 + 14440);
    if (!v32)
    {
      *(v30 + 4 * v29) = v31;
      goto LABEL_40;
    }

    v33 = MEMORY[0x1E69E9AC8];
    v34 = v29 / (8 * *MEMORY[0x1E69E9AC8]);
    v35 = (v29 / *MEMORY[0x1E69E9AC8]) & 7;
    *(v32 + v34) |= 1 << v35;
    if (*(*(a1 + 14440) + v34))
    {
      v36 = *v33;
      v37 = v35 | (8 * v34);
      if (v36 * v37 > v29)
      {
        v49 = __si_assert_copy_extra_3233(0, -1);
        v46 = v49;
        v47 = "";
        if (v49)
        {
          v47 = v49;
        }

        v48 = "vm_page_size*(gslot*8+bslot) <=slot";
        goto LABEL_60;
      }

      if (v36 * (v37 + 1) > v29)
      {
        v38 = *(a1 + 14432);
        v39 = *(a1 + 45);
        *(v38 + 4 * v29) = v31;
        if (v39)
        {
          v40 = *(v38 + v19);
LABEL_41:
          if (v40 == (a3 & 0x3F))
          {
LABEL_42:
            *v18 = v19 + 1;
            if ((a7 & 1) == 0)
            {
              CIOnThreadCleanUpPop(v17);
            }

            return v19;
          }

          v45 = __si_assert_copy_extra_3233(0, -1);
          v46 = v45;
          v47 = "";
          if (v45)
          {
            v47 = v45;
          }

          v48 = "((cindex)->coreSpotlight?({ ((uint8_t *)(cindex)->groups)[(docid)]; }):({ uint32_t __where=(uint32_t)(docid); uint32_t __slot = __where/5; uint32_t __shift= (__where-(__slot*5))*6; uint32_t __word = ((uint32_t)((cindex)->groups[__slot])); (__word >> __shift) & 0x3F ; }))==(inval&0x3F)";
LABEL_60:
          __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 4403, v48, v47);
          free(v46);
          if (__valid_fs(-1))
          {
            v50 = 2989;
          }

          else
          {
            v50 = 3072;
          }

          *v50 = -559038737;
          abort();
        }

LABEL_40:
        v40 = (v31 >> (6 * (v19 % 5))) & 0x3F;
        goto LABEL_41;
      }
    }

    v51 = __si_assert_copy_extra_3233(0, -1);
    __message_assert("%s:%u: failed assertion '%s' %s ");
LABEL_65:
    free(v51);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

LABEL_9:
  HIDWORD(v21) = qos_class_self() - 9;
  LODWORD(v21) = HIDWORD(v21);
  v20 = v21 >> 2;
  if (v20 > 6)
  {
    v22 = 0;
  }

  else
  {
    v22 = dword_1C2BFF8F0[v20];
  }

  pthread_mutex_lock((a1 + 14504));
  if (*(a1 + 14688) || *(a1 + 14700) || (*(a1 + 14716) & 1) != 0)
  {
LABEL_15:
    db_rwlock_wait(a1 + 14504, v22, 2);
    goto LABEL_16;
  }

  if (v22 <= 5)
  {
    v42 = v22 - 6;
    v43 = (a1 + 16 * v22 + 14568);
    while (!*v43)
    {
      v43 += 2;
      if (__CFADD__(v42++, 1))
      {
        goto LABEL_50;
      }
    }

    goto LABEL_15;
  }

LABEL_50:
  *(a1 + 14688) = pthread_self();
LABEL_16:
  pthread_mutex_unlock((a1 + 14504));
  v18 = (a1 + 68);
  if ((*(a1 + 68) + 1) < *(a1 + 72))
  {
    CIOnThreadCleanUpPush(v17, si_rwlock_wrunlock_3589, a1 + 14504);
    v19 = *v18;
    goto LABEL_18;
  }

  *a6 = 1;
  pthread_mutex_lock((a1 + 14504));
  *(a1 + 14708) = 0;
  v27 = *(a1 + 14680);
  *(a1 + 14680) = 0u;
  v28 = *(a1 + 14700) != 0;
  *(a1 + 14716) = 0;
  db_rwlock_wakeup(a1 + 14504, v28, 0);
  pthread_mutex_unlock((a1 + 14504));
  if (v27)
  {
    pthread_override_qos_class_end_np(v27);
  }

  return 0;
}

uint64_t mergeIntoUpdateSet(uint64_t a1, int a2, int a3, uint64_t *a4, int a5, uint64_t a6, int a7, int a8, float a9, int a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t *a15, uint64_t a16, int a17, uint64_t (*a18)(uint64_t), uint64_t a19, uint64_t a20)
{
  os_unfair_lock_lock((a1 + 15688));
  v23 = *(a1 + 15704);
  if (v23)
  {
    v24 = 0;
    do
    {
      v25 = *(v23 + 57);
      if (v25)
      {
        os_unfair_lock_unlock((a1 + 15688));
        dispatch_semaphore_wait(*(a1 + 15696), 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        dispatch_group_enter(*(v23 + 40));
        os_unfair_lock_unlock((a1 + 15688));
        if (v24)
        {
          dispatch_semaphore_signal(*(a1 + 15696));
        }

        v26 = *(a1 + 15704);
        term_fat_level_iterate_helper(*(v26 + 8), *(v26 + 16), *(v26 + 32), *(v26 + 24), *v26, *(v26 + 56));
        dispatch_group_leave(*(*(a1 + 15704) + 40));
      }

      os_unfair_lock_lock((a1 + 15688));
      v23 = *(a1 + 15704);
      v24 = v25;
    }

    while (v23);
  }

  else
  {
    v25 = 0;
  }

  v27 = a1 + 12288;
  *(a1 + 15704) = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040CF47B251uLL);
  *(*(a1 + 15704) + 40) = dispatch_group_create();
  HIDWORD(v29) = qos_class_self() - 9;
  LODWORD(v29) = HIDWORD(v29);
  v28 = v29 >> 2;
  if (v28 > 6)
  {
    v30 = 0;
  }

  else
  {
    v30 = dword_1C2BFF8F0[v28];
  }

  pthread_mutex_lock((a1 + 14504));
  if (*(a1 + 14688) || *(a1 + 14700) || (*(a1 + 14716) & 1) != 0)
  {
LABEL_16:
    db_rwlock_wait(a1 + 14504, v30, 2);
    goto LABEL_17;
  }

  if (v30 <= 5)
  {
    v131 = v30 - 6;
    v132 = (a1 + 16 * v30 + 14568);
    while (!*v132)
    {
      v132 += 2;
      v133 = __CFADD__(v131++, 1);
      if (v133)
      {
        goto LABEL_156;
      }
    }

    goto LABEL_16;
  }

LABEL_156:
  *(a1 + 14688) = pthread_self();
LABEL_17:
  pthread_mutex_unlock((a1 + 14504));
  HIDWORD(v32) = qos_class_self() - 9;
  LODWORD(v32) = HIDWORD(v32);
  v31 = v32 >> 2;
  if (v31 > 6)
  {
    v33 = 0;
  }

  else
  {
    v33 = dword_1C2BFF8F0[v31];
  }

  pthread_mutex_lock((a1 + 14720));
  if (*(a1 + 14904) || *(a1 + 14916) || (*(a1 + 14932) & 1) != 0)
  {
LABEL_23:
    db_rwlock_wait(a1 + 14720, v33, 2);
    goto LABEL_24;
  }

  if (v33 <= 5)
  {
    v134 = v33 - 6;
    v135 = (a1 + 16 * v33 + 14784);
    while (!*v135)
    {
      v135 += 2;
      v133 = __CFADD__(v134++, 1);
      if (v133)
      {
        goto LABEL_162;
      }
    }

    goto LABEL_23;
  }

LABEL_162:
  *(a1 + 14904) = pthread_self();
LABEL_24:
  pthread_mutex_unlock((a1 + 14720));
  v150 = a8;
  if (!a8)
  {
    v155 = a17;
    pthread_mutex_lock((a1 + 14504));
    *(a1 + 14708) = 0;
    v47 = *(a1 + 14680);
    *(a1 + 14680) = 0u;
    v48 = *(a1 + 14700) != 0;
    *(a1 + 14716) = 0;
    db_rwlock_wakeup(a1 + 14504, v48, 0);
    v45 = pthread_mutex_unlock((a1 + 14504));
    if (v47)
    {
      v45 = pthread_override_qos_class_end_np(v47);
    }

    v158 = 0;
    v46 = *(a1 + 14392);
    if (!v46)
    {
LABEL_43:
      if (*(a1 + 46))
      {
        v49 = 32;
      }

      else
      {
        v49 = 0;
      }

      v45 = TermUpdateSetCreate(_indexProgress, a1, *(a1 + 80), *(a1 + 68), v49, *(a1 + 14384), *(a1 + 56), *(a1 + 4936));
      *(a1 + 14392) = v45;
      atomic_fetch_add(gTermUpdateSetCount, 1u);
      v46 = v45;
      if (*(v27 + 2914) == 1)
      {
        *(v45 + 76) = getPropertyStringCallback;
      }

      *(v45 + 35) = a1 + 14184;
    }

LABEL_49:
    v50 = atomic_load((a1 + 36));
    v163[0] = MEMORY[0x1E69E9820];
    v163[1] = 0x40000000;
    v164 = __mergeIntoUpdateSet_block_invoke;
    v165 = &__block_descriptor_tmp_129;
    v166 = a1;
    v167 = v25;
    v159[0] = MEMORY[0x1E69E9820];
    v159[1] = 0x40000000;
    v160 = __mergeIntoUpdateSet_block_invoke_2;
    v161 = &__block_descriptor_tmp_130;
    v162 = a1;
    if (!TermUpdateSetMergeUpdateSet_physMem)
    {
      v170 = 0u;
      v171 = 0u;
      *host_info_out = 0u;
      LODWORD(host_info_outCnt) = 12;
      v51 = MEMORY[0x1C6920B70](v45);
      v52 = host_info(v51, 1, host_info_out, &host_info_outCnt);
      v53 = *(&v171 + 1);
      if (*(&v171 + 1) >= 0x80000000uLL)
      {
        v53 = 0x80000000;
      }

      if (v52)
      {
        v53 = 0x40000000;
      }

      TermUpdateSetMergeUpdateSet_physMem = v53;
    }

    HIDWORD(v55) = qos_class_self() - 9;
    LODWORD(v55) = HIDWORD(v55);
    v54 = v55 >> 2;
    if (v54 > 6)
    {
      v56 = 0;
    }

    else
    {
      v56 = dword_1C2BFF8F0[v54];
    }

    pthread_mutex_lock((v46 + 304));
    if (!*(v46 + 488) && !*(v46 + 500) && (*(v46 + 516) & 1) == 0)
    {
      if (v56 > 5)
      {
LABEL_168:
        *(v46 + 488) = pthread_self();
LABEL_62:
        pthread_mutex_unlock((v46 + 304));
        if (a10)
        {
          doChildFile(v46 + 88, (v46 + 48), a10, a11, a6, 1);
        }

        if (a13)
        {
          doChildFile(v46 + 88, (v46 + 48), a13, a14, a6, 2);
        }

        v57 = atomic_load((v46 + 100));
        v59 = atomic_load((a16 + 100));
        v60 = v59 + v57;
        v61 = atomic_load((*(a16 + 24) + 16));
        v62 = v60 + 2 * v61;
        v63 = *(v46 + 96);
        if (v63 < v62 && (v64 = (v62 - 1) | ((v62 - 1) >> 1) | (((v62 - 1) | ((v62 - 1) >> 1)) >> 2), v65 = v64 | (v64 >> 4) | ((v64 | (v64 >> 4)) >> 8), v66 = (v65 | (v65 >> 16)) + 1, *(v46 + 96) = v66, my_vm_reallocate((v46 + 88), 12 * v63, 12 * v66, 0xF3u, *(v46 + 104))))
        {
          v138 = __si_assert_copy_extra_332();
          v139 = v138;
          v140 = "";
          if (v138)
          {
            v140 = v138;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 470, "0 == kr", v140);
        }

        else
        {
          v67 = atomic_load((v46 + 248));
          v69 = atomic_load((a16 + 248));
          v70 = v69 + v67;
          v71 = atomic_load((*(a16 + 24) + 16));
          v72 = v70 + v71;
          v73 = *(v46 + 252);
          if (v73 >= v72)
          {
            goto LABEL_80;
          }

          v170 = 0u;
          v171 = 0u;
          *host_info_out = 0u;
          LODWORD(host_info_outCnt) = 12;
          v74 = MEMORY[0x1C6920B70]();
          v75 = host_info(v74, 1, host_info_out, &host_info_outCnt);
          v76 = *(&v171 + 1);
          if (*(&v171 + 1) >= 0x80000000uLL)
          {
            v76 = 0x80000000;
          }

          v77 = (3 * v76) >> 18;
          if (v75)
          {
            v78 = 12288;
          }

          else
          {
            v78 = v77;
          }

          v79 = (v72 - 1) | ((v72 - 1) >> 1) | (((v72 - 1) | ((v72 - 1) >> 1)) >> 2);
          v80 = v79 | (v79 >> 4) | ((v79 | (v79 >> 4)) >> 8);
          v81 = (v80 | (v80 >> 16)) + 1;
          if (v78 > v81)
          {
            v170 = 0u;
            v171 = 0u;
            *host_info_out = 0u;
            LODWORD(host_info_outCnt) = 12;
            v82 = MEMORY[0x1C6920B70]();
            v83 = host_info(v82, 1, host_info_out, &host_info_outCnt);
            v84 = *(&v171 + 1);
            if (*(&v171 + 1) >= 0x80000000uLL)
            {
              v84 = 0x80000000;
            }

            v81 = (3 * v84) >> 18;
            if (v83)
            {
              LODWORD(v81) = 12288;
            }
          }

          *(v46 + 252) = v81;
          if (!my_vm_reallocate((v46 + 240), 32 * v73, 32 * v81, 0xF6u, *(v46 + 104)))
          {
LABEL_80:
            v85 = atomic_load((v46 + 268));
            v87 = atomic_load((a16 + 268));
            v88 = v87 + 2 * v85;
            v89 = atomic_load((*(a16 + 24) + 16));
            v90 = v88 + v89;
            v91 = *(v46 + 272);
            if (v91 < v90)
            {
              if (((TermUpdateSetMergeUpdateSet_physMem >> 11) & 0xFFFFFFFE) > v90)
              {
                v90 = (TermUpdateSetMergeUpdateSet_physMem >> 11) & 0xFFFFFFFE;
              }

              *(v46 + 272) = v90;
              if (my_vm_reallocate((v46 + 256), 8 * v91, 8 * v90, 0xF7u, *(v46 + 104)))
              {
                v143 = __si_assert_copy_extra_332();
                v144 = v143;
                v145 = "";
                if (v143)
                {
                  v145 = v143;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 491, "0 == kr", v145);
                free(v144);
                if (__valid_fs(-1))
                {
                  v146 = 2989;
                }

                else
                {
                  v146 = 3072;
                }

                *v146 = -559038737;
                abort();
              }
            }

            v92 = (v50 >> 3) & 1;
            v184 = 0;
            pthread_key_create(&v184, 0);
            v93 = *(a16 + 24);
            *host_info_out = MEMORY[0x1E69E9820];
            *&host_info_out[2] = 0x40000000;
            *&v170 = __TermUpdateSetMergeUpdateSet_block_invoke;
            *(&v170 + 1) = &__block_descriptor_tmp_4339;
            *&v171 = v46;
            *(&v171 + 1) = a16;
            v172 = a6;
            v173 = v158;
            v174 = v155;
            v175 = 0;
            v176 = a13;
            v177 = a14;
            v178 = a10;
            v179 = 0;
            v180 = a11;
            v181 = a16;
            v182 = v184;
            v183 = v92;
            v192[0] = 0;
            v164(v163, v93 + 16, v93 + 32, 0, v192, host_info_out, &__block_literal_global_4340, &__block_literal_global_9_4341);
            if (*(v93 + 32))
            {
              (v170)(host_info_out);
            }

            *&host_info_outCnt = MEMORY[0x1E69E9820];
            *(&host_info_outCnt + 1) = 0x40000000;
            *&v186 = ___TermTrieWalkFatParallel_block_invoke;
            *(&v186 + 1) = &unk_1E8197720;
            *&v187 = host_info_out;
            *(&v187 + 1) = &__block_literal_global_4340;
            *&v188 = &__block_literal_global_9_4341;
            *(&v188 + 1) = v93 + 32;
            v191 = 0;
            v189 = v192;
            v190 = v93 + 16;
            dispatch_apply(gCPUCount, 0, &host_info_outCnt);
            v160(v159);
            v94 = a1 + 12288;
            if (!_os_feature_enabled_impl())
            {
              goto LABEL_130;
            }

            v95 = *(v46 + 80);
            v96 = *(a16 + 80);
            if (__THREAD_SLOT_KEY[0])
            {
              v97 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
              if (!v97)
              {
                goto LABEL_183;
              }
            }

            else
            {
              makeThreadId();
              v97 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
              if (!v97)
              {
                goto LABEL_183;
              }
            }

            if (v97 < 0x801)
            {
              v98 = 0;
              goto LABEL_91;
            }

LABEL_183:
            makeThreadId();
            v97 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
            v98 = 0;
            if (!v97)
            {
LABEL_93:
              v156 = v98;
              v102 = *v96;
              v100 = v96 + 1;
              v101 = v102;
              if (v102 != v100)
              {
                do
                {
                  v104 = v101[5];
                  v103 = v101[6];
                  if (v103)
                  {
                    atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  host_info_outCnt = 0uLL;
                  v105 = *(v104 + 12);
                  if (v105 == 512)
                  {
                    v106 = 1;
                  }

                  else
                  {
                    v106 = 3;
                  }

                  if (v105 == 768)
                  {
                    v106 = 2;
                  }

                  if (v105 == 256)
                  {
                    v107 = 0;
                  }

                  else
                  {
                    v107 = v106;
                  }

                  v108 = *(v104 + 16);
                  if (v108 == 2)
                  {
                    v109 = 1;
                  }

                  else
                  {
                    v109 = 3;
                  }

                  if (v108 == 4)
                  {
                    v110 = 0;
                  }

                  else
                  {
                    v110 = v109;
                  }

                  IVFVectorIndexUpdateSet::getOrCreateVectorIndex(&host_info_outCnt, v95, *(v104 + 8), *(v104 + 20), v107, v110, *(v104 + 22));
                  (*(*host_info_outCnt + 104))(host_info_outCnt, v104, v46 + 88, v158, a6);
                  v111 = *(&host_info_outCnt + 1);
                  if (*(&host_info_outCnt + 1) && !atomic_fetch_add((*(&host_info_outCnt + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v111->__on_zero_shared)(v111);
                    std::__shared_weak_count::__release_weak(v111);
                    if (v103)
                    {
LABEL_115:
                      if (!atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v103->__on_zero_shared)(v103);
                        std::__shared_weak_count::__release_weak(v103);
                      }
                    }
                  }

                  else if (v103)
                  {
                    goto LABEL_115;
                  }

                  v112 = v101[1];
                  if (v112)
                  {
                    do
                    {
                      v113 = v112;
                      v112 = *v112;
                    }

                    while (v112);
                  }

                  else
                  {
                    do
                    {
                      v113 = v101[2];
                      v114 = *v113 == v101;
                      v101 = v113;
                    }

                    while (!v114);
                  }

                  v101 = v113;
                }

                while (v113 != v100);
              }

              v115 = __THREAD_SLOT_KEY[0];
              if (!__THREAD_SLOT_KEY[0])
              {
                makeThreadId();
                v115 = __THREAD_SLOT_KEY[0];
              }

              v116 = pthread_getspecific(v115);
              v94 = a1 + 12288;
              if (v116 && v116 < 0x801 || (makeThreadId(), (v116 = pthread_getspecific(__THREAD_SLOT_KEY[0])) != 0))
              {
                if (v116 <= 0x800)
                {
                  *(&threadData[9 * v116 - 5] - 1) = v156;
                }
              }

LABEL_130:
              *(v46 + 112) += *(a16 + 112);
              *(v46 + 192) += *(a16 + 192);
              v117 = *(v46 + 160);
              *(v46 + 168) += *(a16 + 168);
              *(v46 + 144) = vaddq_s64(*(v46 + 144), *(a16 + 144));
              *(v46 + 120) = vaddq_s64(*(v46 + 120), *(a16 + 120));
              *(v46 + 176) = vaddq_s64(*(v46 + 176), *(a16 + 176));
              *(v46 + 160) = v117 + *(a16 + 160);
              *(v46 + 136) += *(a16 + 136);
              *(v46 + 216) += *(a16 + 216);
              *(v46 + 200) = vaddq_s64(*(v46 + 200), *(a16 + 200));
              v189 = 0;
              v187 = 0u;
              v188 = 0u;
              host_info_outCnt = 0u;
              v186 = 0u;
              _TermUpdateSetGetStats(v46, &host_info_outCnt, 1);
              v118 = v184;
              atomic_fetch_add(&gTotalCurrentUsage, v186 + v187 + host_info_outCnt - *(v46 + 224));
              *(v46 + 224) = v186 + v187 + host_info_outCnt;
              pthread_key_delete(v118);
              pthread_mutex_lock((v46 + 304));
              *(v46 + 508) = 0;
              v119 = *(v46 + 480);
              *(v46 + 480) = 0;
              *(v46 + 488) = 0;
              v120 = *(v46 + 500) != 0;
              *(v46 + 516) = 0;
              db_rwlock_wakeup(v46 + 304, v120, 0);
              pthread_mutex_unlock((v46 + 304));
              if (v119)
              {
                pthread_override_qos_class_end_np(v119);
              }

              if ((*(v94 + 3376) & 1) == 0 && (*(v94 + 3376) = index_termUpdateSetShouldFlush(a1, *(a1 + 14392), a7), *(v94 + 3376) == 1) && dword_1EBF46AF4 >= 5)
              {
                v147 = *__error();
                v148 = _SILogForLogForCategory(10);
                if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(host_info_out[0]) = 0;
                  _os_log_impl(&dword_1C278D000, v148, OS_LOG_TYPE_DEFAULT, "Mark index needs flush", host_info_out, 2u);
                }

                *__error() = v147;
                if (!a20)
                {
                  goto LABEL_137;
                }
              }

              else if (!a20)
              {
LABEL_137:
                pthread_mutex_lock((a1 + 14720));
                *(a1 + 14924) = 0;
                v121 = *(a1 + 14896);
                *(a1 + 14896) = 0u;
                v122 = *(a1 + 14916) != 0;
                *(v94 + 2644) = 0;
                db_rwlock_wakeup(a1 + 14720, v122, 0);
                pthread_mutex_unlock((a1 + 14720));
                if (v121)
                {
                  pthread_override_qos_class_end_np(v121);
                }

                *(a16 + 280) = 0;
                TermUpdateSetRelease(a16);
                if (v150)
                {
                  v123 = *(a1 + 80) + *a4;
                }

                else
                {
                  v123 = 0;
                }

                v124 = 0;
                *a15 = v123;
                return v124;
              }

              pthread_mutex_lock((a1 + 14720));
              *(v94 + 2644) = 1;
              db_rwlock_wakeup(a1 + 14720, 1, 1);
              pthread_mutex_unlock((a1 + 14720));
              (*(a20 + 16))(a20, a6);
              goto LABEL_137;
            }

LABEL_91:
            if (v97 <= 0x800)
            {
              v99 = &threadData[9 * v97];
              v98 = *(v99 - 11);
              *(v99 - 11) = 1;
            }

            goto LABEL_93;
          }

          v141 = __si_assert_copy_extra_332();
          v139 = v141;
          v142 = "";
          if (v141)
          {
            v142 = v141;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 482, "0 == kr", v142);
        }

        free(v139);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v136 = v56 - 6;
      v137 = (v46 + 16 * v56 + 368);
      while (!*v137)
      {
        v137 += 2;
        v133 = __CFADD__(v136++, 1);
        if (v133)
        {
          goto LABEL_168;
        }
      }
    }

    db_rwlock_wait(v46 + 304, v56, 2);
    goto LABEL_62;
  }

  while (1)
  {
    if ((*(a1 + 68) + 1) >= *(a1 + 72))
    {
      v34 = indexGrowDocumentPayloads(a1, a18, a19);
      if (v34)
      {
        break;
      }
    }

    v35 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
    *v35 = a1;
    v35[1] = a16;
    if (__THREAD_SLOT_KEY[0])
    {
      v36 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v36)
      {
        goto LABEL_35;
      }
    }

    else
    {
      makeThreadId();
      v36 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v36)
      {
LABEL_35:
        makeThreadId();
        v36 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        goto LABEL_32;
      }
    }

    if (v36 >= 0x801)
    {
      goto LABEL_35;
    }

LABEL_32:
    v37 = v36 - 1;
    v38 = &threadData[9 * v36];
    v40 = *(v38 - 4);
    v39 = v38 - 2;
    CIOnThreadCleanUpPush(v36 - 1, cleanUpTermUpdateMergeContext, v35);
    v168 = 0;
    v41 = _getAndSetDocId(a1, a12, a5, a2, a3, &v168, 1, a9);
    CIOnThreadCleanUpClearItem(v37, v40);
    v42 = *v39;
    if (v40 + 1 == v42)
    {
      *v39 = v42 - 1;
    }

    free(v35);
    if ((v168 & 1) == 0)
    {
      *a4 = v41;
      pthread_mutex_lock((a1 + 14504));
      *(a1 + 14708) = 0;
      v27 = a1 + 12288;
      v43 = *(a1 + 14680);
      *(a1 + 14680) = 0u;
      v44 = *(a1 + 14700) != 0;
      *(a1 + 14716) = 0;
      db_rwlock_wakeup(a1 + 14504, v44, 0);
      v45 = pthread_mutex_unlock((a1 + 14504));
      if (v43)
      {
        v45 = pthread_override_qos_class_end_np(v43);
      }

      v155 = 0;
      v158 = *a4;
      a6 = *(a1 + 80) + *a4;
      v46 = *(a1 + 14392);
      if (!v46)
      {
        goto LABEL_43;
      }

      goto LABEL_49;
    }
  }

  v124 = v34;
  pthread_mutex_lock((a1 + 14504));
  *(a1 + 14708) = 0;
  v125 = *(a1 + 14680);
  *(a1 + 14680) = 0u;
  v126 = *(a1 + 14700) != 0;
  *(a1 + 14716) = 0;
  db_rwlock_wakeup(a1 + 14504, v126, 0);
  pthread_mutex_unlock((a1 + 14504));
  if (v125)
  {
    pthread_override_qos_class_end_np(v125);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    LOWORD(host_info_out[0]) = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Out of space growing payloads.", host_info_out, 2u);
  }

  pthread_mutex_lock((a1 + 14720));
  *(a1 + 14924) = 0;
  v127 = *(a1 + 14896);
  *(a1 + 14896) = 0u;
  v128 = *(a1 + 14916) != 0;
  *(a1 + 14932) = 0;
  db_rwlock_wakeup(a1 + 14720, v128, 0);
  pthread_mutex_unlock((a1 + 14720));
  if (v127)
  {
    pthread_override_qos_class_end_np(v127);
  }

  dispatch_release(*(*(a1 + 15704) + 40));
  v129 = *(a1 + 15704);
  *(a1 + 15704) = 0;
  os_unfair_lock_unlock((a1 + 15688));
  free(v129);
  TermUpdateSetRelease(a16);
  return v124;
}

void termUpdateSetProcessFields(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, CFDictionaryRef theDict, unsigned int a7, int a8)
{
  v69 = a5;
  v70 = a8;
  v73 = a7;
  v71 = a1;
  v72 = a4;
  v67 = a2;
  v68 = a3;
  v77 = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(theDict);
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v60 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, 8 * Count);
  MEMORY[0x1EEE9AC00](v12);
  bzero(v11, 8 * Count);
  v61 = theDict;
  v62 = v11;
  v63 = v11;
  CFDictionaryGetKeysAndValues(theDict, v11, v11);
  v64 = Count;
  if (Count >= 1)
  {
    v14 = 0;
    *&v13 = 67109378;
    v60 = v13;
    while (1)
    {
      v15 = *&v63[8 * v14];
      v16 = v15 & 0x3FFFFFF;
      v17 = *&v62[8 * v14];
      v18 = CFGetTypeID(v17);
      v65 = v14;
      if ((v15 & 0x4000000) != 0 && _os_feature_enabled_impl())
      {
        if (termUpdateSetProcessVector_onceToken != -1)
        {
          dispatch_once(&termUpdateSetProcessVector_onceToken, &__block_literal_global_35_4441);
        }

        v19 = CFGetTypeID(v17);
        if (v19 == termUpdateSetProcessVector_sDictionaryTypeID)
        {
          termUpdateSetProcessSingleVector(v71, v17, v73, v72, v16);
        }

        else if (v19 == termUpdateSetProcessVector_sArrayTypeID)
        {
          v53 = CFArrayGetCount(v17);
          if (v53 >= 1)
          {
            v54 = v53;
            for (i = 0; i != v54; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v17, i);
              if (CFGetTypeID(ValueAtIndex) == termUpdateSetProcessVector_sDictionaryTypeID)
              {
                termUpdateSetProcessSingleVector(v71, ValueAtIndex, v73, v72, v16);
              }
            }
          }
        }

        goto LABEL_4;
      }

      v20 = v15 >= 0;
      v21 = (v15 >> 30) & 1;
      v22 = (v15 >> 28) & 1;
      v23 = (v15 >> 27) & 1;
      if (v18 == CFArrayGetTypeID())
      {
        break;
      }

      if (v18 == CFDictionaryGetTypeID())
      {
        if (!v16)
        {
          v50 = *__error();
          v51 = _SILogForLogForCategory(10);
          v52 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v51, v52))
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        }

        v42 = v15 & 0x3FFFFFF;
        v43 = CFDictionaryGetCount(v17);
        v66 = &v60;
        MEMORY[0x1EEE9AC00](v44);
        v45 = (&v60 - ((8 * v43 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v45, 8 * v43);
        MEMORY[0x1EEE9AC00](v46);
        v47 = v45;
        bzero(v45, 8 * v43);
        CFDictionaryGetKeysAndValues(v17, v45, v45);
        if (v43 == 1)
        {
          TypeID = CFNumberGetTypeID();
          if (TypeID != CFGetTypeID(*v45))
          {
            goto LABEL_45;
          }

          invertValueToUpdateSet(v48, v71, 0, v68, v42, v72, v69, *v45, v73, 0, 0, &stru_1F4284FD0, v22, v23, v70);
        }

        else if (v43 >= 1)
        {
LABEL_45:
          v57 = v43;
          do
          {
            if (v43 >= 2)
            {
              v58 = *v47;
            }

            else
            {
              v58 = 0;
            }

            v59 = *v45++;
            invertValueToUpdateSet(v48, v71, v67, v68, v42, v72, v69, v59, v73, v20, v21, v58, v22, v23, v70);
            ++v47;
            --v57;
          }

          while (v57);
        }
      }

      else
      {
        invertValueToUpdateSet(v41, v71, v67, v68, v16, v72, v69, v17, v73, v20, (v15 & 0x40000000) != 0, 0, (v15 & 0x10000000) != 0, (v15 & 0x8000000) != 0, v70);
      }

LABEL_4:
      v14 = v65 + 1;
      if (v65 + 1 == v64)
      {
        return;
      }
    }

    if (v16)
    {
      v24 = CFArrayGetCount(v17);
      if (v24 >= 1)
      {
        v25 = v24;
        v26 = 0;
        v27 = ((v15 >> 30) & 1) == 0 && (v15 & 0xA0000000) == 0x20000000;
        v28 = v27;
        LODWORD(v66) = v28;
        do
        {
          v29 = CFArrayGetValueAtIndex(v17, v26);
          v31 = v29;
          v32 = v20;
          if (v28)
          {
            v33 = v25;
            v34 = v17;
            v35 = v21;
            v36 = v23;
            v37 = v22;
            v38 = v16;
            v39 = CFGetTypeID(v29);
            v40 = CFStringGetTypeID();
            v32 = v20;
            v27 = v39 == v40;
            v16 = v38;
            v22 = v37;
            v23 = v36;
            v21 = v35;
            v17 = v34;
            v25 = v33;
            v28 = v66;
            if (v27)
            {
              if (CFStringHasPrefix(v31, @"message:%3C"))
              {
                v32 = 0;
              }

              else
              {
                v32 = v20;
              }
            }
          }

          invertValueToUpdateSet(v30, v71, v67, v68, v16, v72, v69, v31, v73, v32, v21, 0, v22, v23, v70);
          ++v26;
        }

        while (v25 != v26);
      }

      goto LABEL_4;
    }

    v50 = *__error();
    v51 = _SILogForLogForCategory(10);
    v52 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v51, v52))
    {
LABEL_42:
      buf = v60;
      v75 = 2112;
      v76 = v61;
      _os_log_impl(&dword_1C278D000, v51, v52, "invalid type for %d %@", &buf, 0x12u);
    }

LABEL_43:
    *__error() = v50;
    goto LABEL_4;
  }
}

uint64_t my_vm_reallocate(void **a1, size_t a2, size_t a3, unsigned int a4, uint64_t a5)
{
  v9 = *a1;
  result = my_vm_allocate(a1, a3, (a4 << 24) | 1);
  if (a2 && v9)
  {
    if (result)
    {
      *a1 = v9;
      return result;
    }

    if (a2 <= 4 * *MEMORY[0x1E69E9AC8])
    {
      memcpy(*a1, v9, a2);
      if (a5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      vm_copy(*MEMORY[0x1E69E9A60], v9, a2, *a1);
      if (a5)
      {
LABEL_7:
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 0x40000000;
        v11[2] = __my_vm_reallocate_block_invoke;
        v11[3] = &__block_descriptor_tmp_7598;
        v11[4] = v9;
        v11[5] = a2;
        v12 = a4;
        (*(a5 + 16))(a5, v11);
        return 0;
      }
    }

    atomic_fetch_add_explicit(&tag_sizes[a4 - 240], -a2, memory_order_relaxed);
    munmap(v9, a2);
    return 0;
  }

  return result;
}

unint64_t invertValueToUpdateSet(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, char a11, const __CFString *a12, char a13, char a14, char a15)
{
  MEMORY[0x1EEE9AC00](a1);
  v94 = v15;
  v95 = v16;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v113 = *MEMORY[0x1E69E9840];
  if (__THREAD_SLOT_KEY[0])
  {
    v29 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v29)
    {
      goto LABEL_108;
    }
  }

  else
  {
    makeThreadId();
    v29 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v29)
    {
LABEL_108:
      makeThreadId();
      v29 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      v30 = a10;
      if (!v29)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  if (v29 >= 0x801)
  {
    goto LABEL_108;
  }

  v30 = a10;
LABEL_5:
  if (v29 <= 0x800)
  {
    ++LODWORD(threadData[9 * v29 - 6]);
  }

LABEL_7:
  bzero(&v105, 0x414uLL);
  v31 = CFGetTypeID(v18);
  if (v31 == CFStringGetTypeID())
  {
    if (a13)
    {
      bzero(&cf, 0x414uLL);
      if (*(v28 + 608) == getPropertyStringCallback)
      {
        if (v22)
        {
          LOWORD(cf) = 513;
          if (!(v22 >> 21))
          {
            if (!(v22 >> 14))
            {
              v32 = 3;
              v33 = 2;
              if (v22 >= 0x80)
              {
                v34 = 7;
                v35 = 4;
                goto LABEL_35;
              }

LABEL_85:
              *(&cf + v33) = v22;
              *(&cf + v32) = 0;
LABEL_86:
              v85 = CIDecomposeCFString(v18, &cf, v32);
              v86 = v85;
              if (v85)
              {
                v87 = strlen(&v85[v32]) + v32;
                if (v87 >= 0x414)
                {
                  if ((v86[1043] & 0xC0) == 0x80)
                  {
                    v87 = 1043;
                  }

                  else if ((v86[1042] & 0xC0) == 0x80)
                  {
                    v87 = 1042;
                  }

                  else if ((v86[1041] & 0xC0) == 0x80)
                  {
                    v87 = 1041;
                  }

                  else if ((v86[1040] & 0xC0) == 0x80)
                  {
                    v87 = 1040;
                  }

                  else
                  {
                    v87 = 1039;
                  }

                  v86[v87] = 0;
                }

                v88 = strHash(v87, v86, 0);
                LOBYTE(v96) = 0;
                v90 = pushTermTable(*(v28 + 24) + 16, **(v28 + 24), v88, v87, v86, &v96, v89);
                pushTermData(v28, v90, v20, v94, v96, v95, 1);
              }

              if (v86 != &cf)
              {
                v84 = v86;
LABEL_101:
                free(v84);
                goto LABEL_102;
              }

              goto LABEL_102;
            }

            v34 = 14;
            v67 = 7;
            v35 = 5;
            v32 = 4;
            v33 = 3;
            v52 = 2;
            goto LABEL_82;
          }

          v51 = &cf + 2;
          v35 = 6;
          v32 = 5;
          v33 = 4;
          v52 = 3;
LABEL_53:
          *v51 = v22 | 0x80;
          v66 = v22 >> 7;
          v34 = 21;
          v67 = 14;
LABEL_83:
          *(&cf + v52) = v66 | 0x80;
          v41 = v22 >> v67;
          goto LABEL_84;
        }
      }

      else if (v22)
      {
        LOBYTE(cf) = 1;
        if (!(v22 >> 21))
        {
          if (!(v22 >> 14))
          {
            v32 = 2;
            v33 = 1;
            if (v22 >= 0x80)
            {
              v34 = 7;
              v35 = 3;
LABEL_35:
              LOBYTE(v41) = v22;
LABEL_84:
              *(&cf + v33) = v41 | 0x80;
              v22 >>= v34;
              v33 = v32;
              v32 = v35;
              goto LABEL_85;
            }

            goto LABEL_85;
          }

          v34 = 14;
          v67 = 7;
          v35 = 4;
          v32 = 3;
          v33 = 2;
          v52 = 1;
LABEL_82:
          LOBYTE(v66) = v22;
          goto LABEL_83;
        }

        v51 = &cf + 1;
        v35 = 5;
        v32 = 4;
        v33 = 3;
        v52 = 2;
        goto LABEL_53;
      }

      v32 = 0;
      goto LABEL_86;
    }

    if (v22 < 6)
    {
      memset(v101, 0, sizeof(v101));
      v42 = *(v28 + 40);
      v96 = v28;
      v97 = v42;
      v98 = v20;
      v99 = v94;
      v100 = 0;
      LODWORD(v101[0]) = v22;
      BYTE4(v101[0]) = a15;
      memset(v101 + 8, 0, 32);
      *(&v101[2] + 5) = 0;
      v43 = *(v28 + 8) + v20;
      v44 = *(v28 + 616) >> 1;
      *(v28 + 584) = v43;
      if (v22)
      {
        bzero(&cf, 0x1810uLL);
        v46 = *(v24 + 64);
        if (v46)
        {
          free(v46);
          *(v24 + 64) = 0;
          v47 = *(v24 + 56);
          if (v47)
          {
            CFRelease(v47);
          }

          *(v24 + 56) = 0;
          *(v24 + 72) = MEMORY[0x1C691F9C0](0);
        }

        v48 = *(v24 + 8);
        v49 = _getContentRankedTokensCallback;
        v50 = _getContentRankedSubTokensCallback;
      }

      else
      {
        bzero(&cf, 0x1810uLL);
        v75 = *(v24 + 64);
        if (v75)
        {
          free(v75);
          *(v24 + 64) = 0;
          v76 = *(v24 + 56);
          if (v76)
          {
            CFRelease(v76);
          }

          *(v24 + 56) = 0;
          *(v24 + 72) = MEMORY[0x1C691F9C0](0);
        }

        v48 = *(v24 + 8);
        v49 = _getContentTokensCallback;
        v50 = _getContentSubTokensCallback;
      }

      v77 = v50;
      v78 = v44 & 0x10;
      v79 = v24;
      v80 = v18;
      v81 = 0;
LABEL_77:
      _CITokenizerGetTokens(v45, v79, v48, v80, &cf, v78, v81, v49, v77, 0, 0, &v96);
      if (cf)
      {
        CFRelease(cf);
      }

      v84 = v112;
      if (v112)
      {
        goto LABEL_101;
      }

      goto LABEL_102;
    }

    v39 = v103;
    memset(v104, 0, sizeof(v104));
    if (v30)
    {
      LOWORD(v104[0]) = 257;
      v40 = 2;
    }

    else
    {
      v40 = 0;
    }

    memset(v103, 0, sizeof(v103));
    v102 = 1;
    if (v22 >> 21)
    {
      v39 = &v103[1];
      v103[0] = v22 | 0x80;
      v73 = v22 >> 7;
      v70 = 21;
      v74 = 14;
      v71 = 5;
      v68 = 4;
      v69 = 3;
    }

    else
    {
      if (!(v22 >> 14))
      {
        v68 = 2;
        v69 = 1;
        if (v22 < 0x80)
        {
LABEL_70:
          v103[v69 - 1] = v22;
          v103[v68 - 1] = 0;
          *(&v101[2] + 1) = 256;
          v96 = v28;
          v97 = v20;
          v98 = v94;
          v99 = v95;
          v100 = &v102;
          *&v101[0] = v68;
          *(&v101[0] + 1) = v104;
          *&v101[1] = v40;
          *(&v101[1] + 1) = v26;
          *&v101[2] = a12;
          if ((*(v28 + 616) & 0x20) != 0)
          {
            v82 = 17;
          }

          else
          {
            v82 = 1;
          }

          BYTE11(v101[2]) = v30 != 0;
          if (a14)
          {
            v83 = 0;
          }

          else
          {
            v83 = *(v28 + 608);
          }

          bzero(&cf, 0x1810uLL);
          CITokenizerSetLocale(v24, a12, 0);
          v48 = *(v24 + 8);
          v49 = _getPropertyTokenCallback;
          v77 = _getPropertySubTokenCallback;
          v79 = v24;
          v80 = v18;
          v78 = v82;
          v81 = v83;
          goto LABEL_77;
        }

        v70 = 7;
        v71 = 3;
        LOBYTE(v72) = v22;
LABEL_69:
        v103[v69 - 1] = v72 | 0x80;
        v22 >>= v70;
        v69 = v68;
        v68 = v71;
        goto LABEL_70;
      }

      v70 = 14;
      v74 = 7;
      v71 = 4;
      v68 = 3;
      v69 = 2;
      LOBYTE(v73) = v22;
    }

    *v39 = v73 | 0x80;
    v72 = v22 >> v74;
    goto LABEL_69;
  }

  if (v31 == CFNumberGetTypeID() || v31 == CFBooleanGetTypeID())
  {
    if (a12)
    {
      v36 = 4;
    }

    else
    {
      v36 = 2;
    }
  }

  else
  {
    if (v31 != CFDateGetTypeID())
    {
      goto LABEL_102;
    }

    v36 = 3;
  }

  v105 = v36;
  if (v22 >= 0x200000)
  {
    v37 = v110;
    v106 = v22 | 0x80;
    v107 = (v22 >> 7) | 0x80;
    v108 = (v22 >> 14) | 0x80;
    v109 = v22 >> 21;
    v38 = 5;
  }

  else if (v22 >= 0x4000)
  {
    v37 = &v109;
    v106 = v22 | 0x80;
    v107 = (v22 >> 7) | 0x80;
    v108 = v22 >> 14;
    v38 = 4;
  }

  else if (v22 >= 0x80)
  {
    v37 = &v108;
    v106 = v22 | 0x80;
    v107 = v22 >> 7;
    v38 = 3;
  }

  else
  {
    v37 = &v107;
    v106 = v22;
    v38 = 2;
  }

  v53 = FlattenCFTypeToBuffer(v18, v37);
  v55 = (v53 + v38);
  if (!a11)
  {
    v56 = strHash(v53 + v38, &v105, 0);
    LOBYTE(cf) = 0;
    v58 = pushTermTable(*(v28 + 24) + 16, **(v28 + 24), v56, v55, &v105, &cf, v57);
    pushTermData(v28, v58, v20, v94, cf, v95, 1);
  }

  if (v30)
  {
    *(v37 - 2) = v36;
    v59 = v37 - 2;
    v59[1] = 1;
    v60 = &v105 - v59;
    if (v26)
    {
      pushPropertyTermForWildCard(v26, v55 + v60, v59, v95, v54);
    }

    else
    {
      v61 = v55 + v60;
      v62 = v55 + v60;
      v63 = strHash(v61, v59, 0);
      LOBYTE(cf) = 0;
      v65 = pushTermTable(*(v28 + 24) + 16, **(v28 + 24), v63, v62, v59, &cf, v64);
      pushTermData(v28, v65, v20, v94, cf, v95, 1);
    }
  }

LABEL_102:
  result = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  if (result && result <= 0x800)
  {
    v92 = &threadData[9 * result];
    v93 = *(v92 - 12);
    if (v93)
    {
      *(v92 - 12) = v93 - 1;
    }
  }

  return result;
}

unsigned __int16 *getPropertyStringCallback(unsigned __int16 *result, uint64_t a2, uint64_t *a3)
{
  *&v18[1042] = *MEMORY[0x1E69E9840];
  if ((*(a3 + 74) & 1) == 0)
  {
    v5 = result;
    bzero(v18, 0x412uLL);
    v17 = 513;
    v6 = (*(a3 + 8) - 1);
    __memcpy_chk();
    v7 = v6 + 2;
    v16 = 0;
    result = utf8_encodestr(v5, 2 * a2, &v18[v7 - 2], &v16, 1028);
    if (!result)
    {
      v8 = v16 + v7;
      if (*(a3 + 75) == 1)
      {
        v18[v8++ - 2] = 1;
      }

      if (a3[8])
      {
        *&v18[v8 - 2] = 769;
        v8 += 2;
      }

      v9 = *a3;
      v10 = a3[1];
      v12 = *(a3 + 4);
      v11 = *(a3 + 5);
      v13 = strHash(v8, &v17, 0);
      LOBYTE(v16) = 0;
      v15 = pushTermTable(*(v9 + 24) + 16, **(v9 + 24), v13, v8, &v17, &v16, v14);
      return pushTermData(v9, v15, v10, v12, v16, v11, 1);
    }
  }

  return result;
}

uint64_t pushTermTable(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 *a5, _BYTE *a6, __n128 a7)
{
  *a6 = 0;
  if (a2)
  {
    v8 = a3;
    v10 = (a3 >> 16) & 0x7FF;
    v11 = a2 + 0x4000;
    v12 = *(a2 + 0x4000 + 4 * v10);
    if ((v12 & 0x80000000) == 0)
    {
      result = TermTrieResolve(a7);
LABEL_16:
      *(a2 + 8 * v10) = result;
      *(v11 + 4 * v10) = v8 | 0x80000000;
      return result;
    }

    v14 = *(a2 + 8 * v10);
    if (((v12 ^ a3) & 0x7FFFFFFF) == 0 && *(v14 + 16) == a4)
    {
      if (!a4)
      {
        return *(a2 + 8 * v10);
      }

      if (*(v14 + 18) == *(a1 + 2144 + *a5))
      {
        v15 = 0;
        while (a4 - 1 != v15)
        {
          v16 = *(v14 + v15 + 19);
          v17 = *(a1 + 2144 + a5[++v15]);
          if (v16 != v17)
          {
            if (v15 >= a4)
            {
              return *(a2 + 8 * v10);
            }

            goto LABEL_15;
          }
        }

        return *(a2 + 8 * v10);
      }
    }

LABEL_15:
    result = TermTrieResolve(a7);
    if (*(v14 + 4) < *(result + 4))
    {
      goto LABEL_16;
    }
  }

  else
  {

    return TermTrieResolve(a7);
  }

  return result;
}

uint64_t strHash(unsigned int a1, uint64_t a2, unsigned int a3)
{
  if ((a1 & 0x80000000) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 + 3;
  }

  v4 = a3 ^ 0x971E137B;
  v5 = (a2 + (v3 & 0xFFFFFFFC));
  if (a1 + 3 >= 7)
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
  if ((a1 & 3) > 1)
  {
    if ((a1 & 3) != 2)
    {
      v14 = v5[2] << 16;
    }

    v14 |= v5[1] << 8;
  }

  else if ((a1 & 3) == 0)
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
  v17 = -1028477387 * ((-2048144789 * (v4 ^ a1)) ^ ((-2048144789 * (v4 ^ a1)) >> 13));
  return a3 ^ HIWORD(v17) ^ v17;
}

uint64_t pushTermData(uint64_t a1, int *a2, uint64_t a3, int a4, char a5, int a6, int a7)
{
  if (a5)
  {
    a2[3] = 0;
    if (a6)
    {
      *(a2 + 1) = a3;
      *a2 |= 1u;
      a7 = 2 * (a6 != 2);
LABEL_15:
      a2[1] = a7;
      return 1;
    }

LABEL_14:
    a2[2] = a3;
    goto LABEL_15;
  }

  v7 = *a2;
  if (!a6)
  {
    if (v7)
    {
      if (*(a2 + 1) == a3)
      {
        return 0;
      }
    }

    else
    {
      v8 = a2[2];
      if (v8 == a3)
      {
        return 0;
      }

      if (v8 == a4)
      {
        goto LABEL_14;
      }
    }

    addToExistingTermUpdateList(a1, a2, a3, 0, a7);
    return 1;
  }

  if ((v7 & 1) == 0 || *(a2 + 1) != a3)
  {
    goto LABEL_18;
  }

  if (a6 != 2)
  {
    if (a6 == 1 && a2[1] == 2)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (a2[1])
  {
LABEL_18:
    addToExistingTermUpdateList(a1, a2, a3, a6, a7);
  }

  return 0;
}

void getPropertyTokenCallback(unsigned __int16 *result, uint64_t a2, uint64_t *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  bzero(__dst, 0x414uLL);
  v6 = *(a3 + 8);
  memcpy(__dst, a3[3], v6);
  *v45 = 0;
  if (utf8_encodestr(result, 2 * a2, &__dst[v6], v45, 1028))
  {
    return;
  }

  v7 = *v45;
  if (!a3[8])
  {
    v8 = 0;
    if (*(a3 + 74))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *&__dst[*v45 + *(a3 + 8)] = 769;
  v8 = 2;
  if ((*(a3 + 74) & 1) == 0)
  {
LABEL_5:
    v9 = *(a3 + 8);
    v10 = v8 + v7 + v9;
    v11 = *a3;
    v12 = a3[1];
    v13 = *(a3 + 4);
    v14 = *(a3 + 5);
    v15 = strHash(v8 + v7 + v9, __dst, 0);
    LOBYTE(v45[0]) = 0;
    v17 = pushTermTable(*(v11 + 24) + 16, **(v11 + 24), v15, v10, __dst, v45, v16);
    pushTermData(v11, v17, v12, v13, v45[0], v14, 1);
  }

LABEL_6:
  v18 = *(a3 + 12);
  if (v18)
  {
    v19 = *(a3 + 8);
    v20 = &__dst[v19];
    memcpy(&__dst[v19 + v7], a3[5], *(a3 + 12));
    if (a3[8])
    {
      __dst[v7 + v18 + v19] = 3;
      v8 = 1;
    }

    v22 = a3[7];
    if (v22)
    {
      if ((*(a3 + 74) & 1) == 0)
      {
        pushPropertyTermForWildCard(v22, v7 + v18 + v8, v20, *(a3 + 5), v21);
      }

      if (*(a3 + 73) == 1)
      {
        v23 = a3[7];
        v24 = *(a3 + 8);
        v25 = *(a3 + 5);
        if (a3[8])
        {
          pushPrefixTermsForWildCard(v23, v7, &__dst[v24], 3u, "\x01\x04\x03", v25);
        }

        else
        {
          pushPrefixTermsForWildCard(v23, v7, &__dst[v24], 2u, "\x01\x04", v25);
        }
      }
    }

    else if ((*(a3 + 74) & 1) != 0 || (v26 = v7 + v18 + v8, v27 = v26, v28 = *a3, v29 = a3[1], v30 = *(a3 + 4), v31 = *(a3 + 5), v32 = strHash(v26, v20, 0), LOBYTE(v45[0]) = 0, v34 = pushTermTable(*(v28 + 24) + 16, **(v28 + 24), v32, v27, v20, v45, v33), pushTermData(v28, v34, v29, v30, v45[0], v31, 1)))
    {
      if (*(a3 + 73) == 1)
      {
        v35 = *(a3 + 8);
        v36 = *a3;
        v37 = a3[1];
        v38 = *(a3 + 4);
        v39 = *(a3 + 5);
        if (a3[8])
        {
          pushPrefixTerms(v36, v7, &__dst[v35], 3u, "\x01\x04\x03", v37, v38, v39, 0);
        }

        else
        {
          pushPrefixTerms(v36, v7, &__dst[v35], 2u, "\x01\x04", v37, v38, v39, 0);
        }
      }
    }
  }

  if (*(a3 + 72) == 1 && *(a3 + 73) == 1 && !a3[7])
  {
    v40 = *(a3 + 8);
    v41 = *a3;
    v42 = a3[1];
    v43 = *(a3 + 4);
    v44 = *(a3 + 5);
    if (a3[8])
    {
      pushPrefixTerms(v41, v7, &__dst[v40], 3u, "\x01\x05\x03", v42, v43, v44, 0);
    }

    else
    {
      pushPrefixTerms(v41, v7, &__dst[v40], 2u, "\x01\x05", v42, v43, v44, 0);
    }
  }
}

unint64_t _RBInsert(uint64_t a1, unint64_t a2, unsigned __int8 *a3, int a4, uint64_t a5, _BYTE *a6, _DWORD *a7, uint64_t a8, unint64_t *a9, unsigned __int8 a10)
{
  v11 = a9;
  v12 = a2 & 0x7FFFFFFFFFFFFFFFLL;
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = a4;
    v14 = a2;
    v16 = *v12;
    v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 8);
    if ((*v12 & 0x8000000000000000) != 0 && (v15 & 0x8000000000000000) != 0)
    {
      v14 = a2 | 0x8000000000000000;
      v16 &= ~0x8000000000000000;
      v15 &= ~0x8000000000000000;
      *v12 = v16;
      *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 8) = v15;
    }

    _X8 = v16 & 0x7FFFFFFFFFFFFFFFLL;
    __asm { PRFM            #4, [X8] }

    _X8 = v15 & 0x7FFFFFFFFFFFFFFFLL;
    __asm { PRFM            #4, [X8] }

    v25 = (v12 + a8 + 34);
    v26 = &a3[a8];
    v27 = *(v12 + 32);
    v28 = v27 - a5;
    if (v27 >= a5)
    {
      v27 = a5;
    }

    v29 = v27 - a8;
    if (a10)
    {
      if (v27 == a8)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v31 = *v25++;
        v30 = v31;
        v32 = *v26++;
        v33 = v30 - *(a1 + 2144 + v32);
        if (v33)
        {
          break;
        }

        if (!--v29)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v49 = a1;
      v35 = (v12 + a8 + 34);
      v36 = a8;
      v37 = a6;
      v38 = a5;
      v47 = v12;
      v39 = a7;
      v40 = v15;
      v41 = v16;
      v42 = memcmp(v35, v26, v29);
      v16 = v41;
      v15 = v40;
      a7 = v39;
      v12 = v47;
      a5 = v38;
      a6 = v37;
      a8 = v36;
      v13 = a4;
      v33 = v42;
      a1 = v49;
      v11 = a9;
    }

    if (v33)
    {
      if (v33 >= 1)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    v33 = v28;
    if (v28 >= 1)
    {
LABEL_16:
      ++*a7;
      v43 = _RBInsert(a1, v16, a3, 0, a5, a6, a7, a8, v11, a10);
      *v12 = v43;
      if ((v14 & 0x8000000000000000) != 0 && v13 && v43 < 0)
      {
        *v12 = *((v43 & 0x7FFFFFFFFFFFFFFFLL) + 8);
        *((v43 & 0x7FFFFFFFFFFFFFFFLL) + 8) = v14;
        v44 = *(v43 & 0x7FFFFFFFFFFFFFFFLL);
        v12 = v43 & 0x7FFFFFFFFFFFFFFFLL;
        if ((v44 & 0x8000000000000000) == 0)
        {
          return v43;
        }
      }

      else
      {
        v44 = v43;
        v43 = v14;
        if ((v44 & 0x8000000000000000) == 0)
        {
          return v43;
        }
      }

      v14 = v44 & 0x7FFFFFFFFFFFFFFFLL;
      if ((*(v44 & 0x7FFFFFFFFFFFFFFFLL) & 0x8000000000000000) != 0)
      {
        *v12 = *((v44 & 0x7FFFFFFFFFFFFFFFLL) + 8);
        *((v44 & 0x7FFFFFFFFFFFFFFFLL) + 8) = v43 | 0x8000000000000000;
        return v14;
      }

      return v43;
    }

LABEL_21:
    if ((v33 & 0x80000000) == 0)
    {
      *a6 = 0;
      *v11 = v12;
      return v14;
    }

    ++*a7;
    v43 = _RBInsert(a1, v15, a3, 1, a5, a6, a7, a8, v11, a10);
    *(v12 + 8) = v43;
    if ((v14 & 0x8000000000000000) != 0 && !v13 && v43 < 0)
    {
      *(v12 + 8) = *(v43 & 0x7FFFFFFFFFFFFFFFLL);
      *(v43 & 0x7FFFFFFFFFFFFFFFLL) = v14;
      v45 = *((v43 & 0x7FFFFFFFFFFFFFFFLL) + 8);
      v12 = v43 & 0x7FFFFFFFFFFFFFFFLL;
      if ((v45 & 0x8000000000000000) == 0)
      {
        return v43;
      }
    }

    else
    {
      v45 = v43;
      v43 = v14;
      if ((v45 & 0x8000000000000000) == 0)
      {
        return v43;
      }
    }

    v14 = v45 & 0x7FFFFFFFFFFFFFFFLL;
    if ((*((v45 & 0x7FFFFFFFFFFFFFFFLL) + 8) & 0x8000000000000000) != 0)
    {
      *(v12 + 8) = *v14;
      *v14 = v43 | 0x8000000000000000;
      return v14;
    }

    return v43;
  }

  *a6 = 1;
  v34 = _TermListEntryCreate(a1, a3, a5, a10);
  *a9 = v34;
  return v34 & 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t _RBAppend(unint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v5 = (a1 & 0x7FFFFFFFFFFFFFFFLL);
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    *a2 = vnegq_f64(0);
    return a2 & 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = a1;
  v9 = *(a2 + 32) - a4;
  v10 = *v5;
  if ((*v5 & 0x8000000000000000) != 0)
  {
    v11 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 8);
    if (v11 < 0)
    {
      v8 = a1 | 0x8000000000000000;
      v10 &= ~0x8000000000000000;
      *v5 = v10;
      *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 8) = v11 & 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v12 = v9;
  v13 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  if (v13 - a4 >= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13 - a4;
  }

  v15 = memcmp((a2 + a4 + 34), v5 + a4 + 34, v14);
  if (!v15)
  {
    v15 = a4 - v13 + v12;
    if (!v15)
    {
      v20 = __si_assert_copy_extra_332();
      v21 = v20;
      v22 = "";
      if (v20)
      {
        v22 = v20;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.c", 1072, "result!=0", v22);
      free(v21);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  if (v15 < 0)
  {
    result = _RBAppend(v10, a2, 0, a4);
    *v5 = result;
    if ((v8 & 0x8000000000000000) != 0 && a3 && result < 0)
    {
      *v5 = *((result & 0x7FFFFFFFFFFFFFFFLL) + 8);
      *((result & 0x7FFFFFFFFFFFFFFFLL) + 8) = v8;
      v19 = *(result & 0x7FFFFFFFFFFFFFFFLL);
      v5 = (result & 0x7FFFFFFFFFFFFFFFLL);
      if ((v19 & 0x8000000000000000) == 0)
      {
        return result;
      }
    }

    else
    {
      v19 = result;
      result = v8;
      if ((v19 & 0x8000000000000000) == 0)
      {
        return result;
      }
    }

    v18 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    if ((*v18 & 0x8000000000000000) != 0)
    {
      *v5 = v18[1];
      v18[1] = result | 0x8000000000000000;
      return v18;
    }
  }

  else
  {
    result = _RBAppend(v5[1], a2, 1, a4);
    v5[1] = result;
    if ((v8 & 0x8000000000000000) != 0 && !a3 && result < 0)
    {
      v5[1] = *(result & 0x7FFFFFFFFFFFFFFFLL);
      *(result & 0x7FFFFFFFFFFFFFFFLL) = v8;
      v17 = *((result & 0x7FFFFFFFFFFFFFFFLL) + 8);
      v5 = (result & 0x7FFFFFFFFFFFFFFFLL);
      if ((v17 & 0x8000000000000000) == 0)
      {
        return result;
      }
    }

    else
    {
      v17 = result;
      result = v8;
      if ((v17 & 0x8000000000000000) == 0)
      {
        return result;
      }
    }

    v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    if ((v18[1] & 0x8000000000000000) != 0)
    {
      v5[1] = *v18;
      *v18 = result | 0x8000000000000000;
      return v18;
    }
  }

  return result;
}

_BYTE *_term_trie_compact_alloc(uint64_t a1, unsigned int a2)
{
  v2 = __clz(__rbit32(a2));
  if ((a2 ^ (a2 - 1)) <= a2 - 1 || v2 - 6 <= 0xFFFFFFFB)
  {
    v20 = __si_assert_copy_extra_332();
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.c", 106, "__builtin_popcount(entry_size)==1 && slot > 1 && slot <= 5", v22);
    free(v21);
    if (__valid_fs(-1))
    {
      v23 = 2989;
    }

    else
    {
      v23 = 3072;
    }

    *v23 = -559038737;
    abort();
  }

  v6 = OSAtomicDequeue((a1 + 16 * (v2 - 2) + 2080), 0);
  if (v6)
  {
    v7 = 8 * a2 + 48;
  }

  else
  {
    v12 = *(a1 + 8);
    v10 = (a1 + 8);
    v11 = v12;
    v7 = 8 * a2 + 48;
    v13 = atomic_load(v12 + 1);
LABEL_11:
    v6 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    for (i = &v6[v7]; ; i = &v6[v17])
    {
      if (i + 8 < v11[2])
      {
        v14 = v13;
        atomic_compare_exchange_strong(v11 + 1, &v14, i);
        v15 = v14 == v13;
        v13 = v14;
        if (v15)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      }

      v17 = v7;
      os_unfair_lock_lock(&_slablock);
      v11 = *v10;
      v18 = *v10 + 1;
      v19 = atomic_load(v18);
      if (((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + v17 + 8 >= v11[2])
      {
        break;
      }

      os_unfair_lock_unlock(&_slablock);
      v7 = v17;
      v13 = atomic_load(v18);
      v6 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }

    v24 = slab_new_slab(v10, v17, 0xF4u);
    os_unfair_lock_unlock(&_slablock);
    v6 = v24;
    v7 = v17;
  }

LABEL_8:
  v8 = v6;
  bzero(v6, v7);
  v8[41] = a2;
  return v8;
}

unint64_t TermTrieCompactSetFollows(int8x8_t *a1, unsigned int a2)
{
  v2 = 0;
  v3 = a1[5].u8[0];
  v4 = a1 + 1;
  a1[1].i32[a2 >> 5] |= 1 << a2;
  v5 = a2 >> 6;
  if (a2 >> 6 > 1)
  {
    if (v5 != 2)
    {
      v7 = vcnt_s8(a1[3]);
      v7.i16[0] = vaddlv_u8(v7);
      v2 = v7.i32[0];
    }

    v8 = vcnt_s8(a1[2]);
    v8.i16[0] = vaddlv_u8(v8);
    v2 += v8.i32[0];
    goto LABEL_7;
  }

  v6 = a2 >> 6;
  if (v5)
  {
LABEL_7:
    v9 = vcnt_s8(*v4);
    v9.i16[0] = vaddlv_u8(v9);
    v6 = v2 + v9.i32[0];
  }

  v10 = vcnt_s8((*&v4[v5] & ~(-1 << a2)));
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v6 + v10.i32[0];
  if (v11 >= v3)
  {
    goto LABEL_17;
  }

  v12 = v3 - v11;
  if (v3 - v11 < 4)
  {
    v13 = v3;
    goto LABEL_15;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = &a1[v3 + 5];
  v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v17 = *v15[-1].i8;
    *v15[-2].i8 = *v15[-3].i8;
    *v15->i8 = v17;
    v15 -= 4;
    v16 -= 4;
  }

  while (v16);
  if (v12 != v14)
  {
    v13 = v3 - v14;
LABEL_15:
    v18 = &a1[v13 + 6];
    v19 = v18;
    do
    {
      --v13;
      v20 = v19[-1];
      --v19;
      *v18 = v20;
      v18 = v19;
    }

    while (v13 > v11);
  }

LABEL_17:
  v21 = v3 + 1;
  a1[5].i8[0] = v21;
  if (a1[5].u8[1] < v21)
  {
    v23 = __si_assert_copy_extra_332();
    v24 = v23;
    v25 = "";
    if (v23)
    {
      v25 = v23;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.c", 154, "level->size>=level->count", v25);
    free(v24);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return v11;
}

uint64_t poswriteunlock(pthread_rwlock_t *a1)
{
  result = pthread_rwlock_unlock(a1);
  if (result)
  {
    v2 = __si_assert_copy_extra_332();
    v3 = v2;
    v4 = "";
    if (v2)
    {
      v4 = v2;
    }

    __message_assert(v2, "poslock.c", 28, "result==0", v4);
    free(v3);
    if (__valid_fs(-1))
    {
      v5 = 2989;
    }

    else
    {
      v5 = 3072;
    }

    *v5 = -559038737;
    abort();
  }

  return result;
}

void si_collect_block(uint64_t result, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
    v4 = malloc_type_malloc(0x28uLL, 0x10A0040A9CEF559uLL);
    v5 = 0;
    atomic_store(1u, v4);
    *(v4 + 1) = result;
    *(v4 + 2) = v3;
    *(v4 + 3) = 0;
    *(v4 + 4) = dbGCBlock;
    v6 = result + 1008;
    do
    {
      v7 = *(v6 + 8 * v5);
      if (v7 && (v5 - 12) >= 6 && v5 != 9)
      {
        si_enqueue_cleanup_if_busy(v7, v4);
      }

      ++v5;
    }

    while (v5 != 18);

    SIGCContextRelease(v4);
  }
}

void si_enqueue_cleanup_if_busy(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *a1;
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
      if (*(v2 + 28))
      {
        if (!*(v2 + 29))
        {
          v5 = a1[1];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = __si_enqueue_cleanup_if_busy_block_invoke;
          block[3] = &__block_descriptor_tmp_5;
          block[4] = a1;
          block[5] = a2;
          block[6] = v4;
          dispatch_sync(v5, block);
        }
      }
    }
  }
}

void __si_enqueue_cleanup_if_busy_block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = *v1;
  if (*v1 && *(v2 + 112) && !*(v2 + 116))
  {
    v5 = a1[5];
    v4 = a1[6];
    v6 = malloc_type_malloc(0x30uLL, 0x1020040D08A26EBuLL);
    v7 = v6;
    atomic_store(1u, v6);
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
    }

    *(v6 + 1) = v5;
    *(v6 + 2) = v1;
    *(v6 + 3) = v2;
    *(v6 + 4) = v4;
    *(v6 + 5) = 0;
    if (*(v2 + 48))
    {
      *(*(v2 + 56) + 40) = v6;
      *(v2 + 56) = v6;
    }

    else
    {
      *(v2 + 48) = v6;
      *(v2 + 56) = v6;
      v8 = *(a1[4] + 16);
      atomic_fetch_add(v7, 1u);

      dispatch_barrier_async_f(v8, v7, _si_wrapper_collect);
    }
  }
}

void SIGCContextRelease(void *a1)
{
  if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    v2 = a1[4];
    if (v2)
    {
      a1[4] = 0;
      v2(a1[1], a1[2], a1[3], 1);
    }

    free(a1);
  }
}

void __mergeIntoUpdateSet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 15704);
  *(v10 + 48) = a2;
  *(v10 + 56) = a4;
  *v10 = a5;
  *(v10 + 8) = a3;
  *(v10 + 24) = a8;
  *(v10 + 32) = a7;
  *(v10 + 16) = a6;
  os_unfair_lock_unlock((v9 + 15688));
  if (*(a1 + 40) == 1)
  {
    v11 = *(*(a1 + 32) + 15696);

    dispatch_semaphore_signal(v11);
  }
}

uint64_t term_fat_level_iterate_helper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_uint *a5, uint64_t a6)
{
  add_explicit = atomic_fetch_add_explicit(a5, 1u, memory_order_relaxed);
  if (add_explicit <= 0xFF)
  {
    v12 = a1 + 8;
    do
    {
      v13 = *(v12 + 8 * add_explicit);
      if ((v13 & 3u) > 1)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v13 & 3) == 2)
        {
          _TermTrieWalkCompactWithOptions(v14, 1, a6, 0, a2, a3, a4);
        }

        else
        {
          _TermTrieWalkListWithOptions(v14, a6, 0, a2, a3, a4);
        }
      }

      else if ((v13 & 3) != 0)
      {
        _TermTrieWalkFatWithOptions((v13 & 0xFFFFFFFFFFFFFFFCLL), 1, a6, 0, a2, a3, a4);
      }

      else if (v13)
      {
        v17 = __si_assert_copy_extra_332();
        v18 = v17;
        v19 = "";
        if (v17)
        {
          v19 = v17;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.c", 233, "level->follows[i]==0", v19);
        free(v18);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      add_explicit = atomic_fetch_add_explicit(a5, 1u, memory_order_relaxed);
    }

    while (add_explicit < 0x100);
  }

  v15 = *(a2 + 16);

  return v15(a2, 0);
}

int8x8_t *_TermTrieWalkCompactWithOptions(int8x8_t *result, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = result;
  if (a6)
  {
    result = (*(a6 + 16))(a6, result, 2);
  }

  if (a5 && *v11)
  {
    result = (*(a5 + 16))(a5);
  }

  v12 = v11[5].u8[0];
  if (v11[5].i8[0])
  {
    v13 = 0;
    v14 = 0;
    v15 = v11 + 1;
    v16 = v11 + 6;
    while (1)
    {
      if (((v15->i32[v13 >> 5] >> v13) & 1) == 0)
      {
        goto LABEL_25;
      }

      v17 = 0;
      v18 = v13 >> 6;
      if (v13 >> 6 > 1)
      {
        if (v18 != 2)
        {
          v20 = vcnt_s8(v11[3]);
          v20.i16[0] = vaddlv_u8(v20);
          v17 = v20.u32[0];
        }

        v21 = vcnt_s8(v11[2]);
        v21.i16[0] = vaddlv_u8(v21);
        v17 += v21.u32[0];
      }

      else
      {
        v19 = v13 >> 6;
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      v22 = vcnt_s8(*v15);
      v22.i16[0] = vaddlv_u8(v22);
      v19 = v22.u32[0] + v17;
LABEL_16:
      v23 = vcnt_s8((*&v15[v18] & ~(-1 << v13)));
      v23.i16[0] = vaddlv_u8(v23);
      v24 = v16[v23.u32[0] + v19];
      if ((v16[v23.u32[0] + v19].i32[0] & 3u) > 1)
      {
        v25 = *&v24 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v24.i8[0] & 3) == 2)
        {
          result = _TermTrieWalkCompactWithOptions(v25, a2 + 1, a3, a4, a5, a6, a7);
        }

        else
        {
          result = _TermTrieWalkListWithOptions(v25, a3, a4, a5, a6, a7);
        }
      }

      else
      {
        if ((v24.i8[0] & 3) == 0)
        {
          if (v24)
          {
            v27 = __si_assert_copy_extra_332();
            v28 = v27;
            v29 = "";
            if (v27)
            {
              v29 = v27;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.c", 784, "level->follows[pos]==0", v29);
            free(v28);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          goto LABEL_25;
        }

        result = _TermTrieWalkFatWithOptions((*&v24 & 0xFFFFFFFFFFFFFFFCLL), a2 + 1, a3, a4, a5, a6, a7);
      }

      ++v14;
LABEL_25:
      if (v13 <= 0xFE)
      {
        ++v13;
        if (v14 < v12)
        {
          continue;
        }
      }

      break;
    }
  }

  if (a7)
  {
    v26 = *(a7 + 16);

    return v26(a7, v11, 2);
  }

  return result;
}

uint64_t _TermTrieWalkListWithOptions(uint64_t result, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = result;
  v28 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    result = (*(a5 + 16))(a5, result, 3);
  }

  if (a4)
  {
    if (a3)
    {
      result = (*(a4 + 16))(a4, v10);
      goto LABEL_19;
    }

    memset(v27, 0, sizeof(v27));
    if (a2)
    {
      v11 = 0;
      v12 = v10;
      while (1)
      {
        if (v12)
        {
          do
          {
            while (1)
            {
              v14 = *v12 & 0x7FFFFFFFFFFFFFFFLL;
              if (!v14)
              {
                break;
              }

              *(v27 + v11) = v12;
              if (*(v12 + 32) > 0x414u)
              {
                v23 = __si_assert_copy_extra_332();
                v24 = v23;
                v25 = "";
                if (v23)
                {
                  v25 = v23;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.c", 846, "l->data.termLen <= (1024+20)", v25);
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

              ++v11;
              v12 = v14;
            }

            v13 = *(v12 + 8) & 0x7FFFFFFFFFFFFFFFLL;
            result = (*(a4 + 16))(a4);
            v12 = v13;
          }

          while (v13);
        }

        v15 = v11 - 1;
        if (v11 < 1)
        {
          break;
        }

        v16 = *(*(v27 + v15) + 8) & 0x7FFFFFFFFFFFFFFFLL;
        result = (*(a4 + 16))(a4);
        v12 = v16;
        v11 = v15;
        if (!v12)
        {
LABEL_18:
          if (!v11)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = 0;
      goto LABEL_18;
    }

    v18 = 0;
    v19 = v10;
    do
    {
      if (v19)
      {
        do
        {
          v22 = *v19;
          if ((v19[1] & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            *(v27 + v18++) = v19[1] & 0x7FFFFFFFFFFFFFFFLL;
          }

          v21 = v22 & 0x7FFFFFFFFFFFFFFFLL;
          result = (*(a4 + 16))(a4);
          v19 = v21;
        }

        while (v21);
      }

      v20 = __OFSUB__(v18--, 1);
      if (v18 < 0 != v20)
      {
        break;
      }

      v19 = *(v27 + v18);
    }

    while (v19);
  }

LABEL_19:
  if (a6)
  {
    v17 = *(a6 + 16);

    return v17(a6, v10, 3);
  }

  return result;
}

void __TermUpdateSetMergeUpdateSet_block_invoke(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a2)
  {
    v5 = TermTrieResolve(a3);
    if (*(a2 + 16))
    {
      v26 = *(a2 + 20);
      if (v26 == 2)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      pushTermData(*(a1 + 32), v5, *(a2 + 24), *(a1 + 60), 0, v27, v26);
    }

    else
    {
      v6 = *(a1 + 32);
      if (*(a2 + 28))
      {
        v7 = *(a1 + 56);
        v6[73] = v6[1] + v7;
        v8 = *(a2 + 28);
        v9 = *(a2 + 20);
        v11 = *(a1 + 96);
        v10 = *(a1 + 104);
        v17 = v6[30] + 32 * *(v5 + 12);
        addToExistingTermUpdateList(v6, v5, v7, 0, v9);
        if (*(v17 + 8))
        {
          if (*(v17 + 24) >= v7)
          {
            v28 = __si_assert_copy_extra_332();
            v29 = v28;
            v30 = "";
            if (v28)
            {
              v30 = v28;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 3541, "docID > node->docId", v30);
            free(v29);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          CIPositionNodeFinalizeDocument(v18);
        }

        pthread_getspecific(v10);
        if (*(*(v11 + 240) + 32 * v8 + 8) < 2u)
        {
          CIPositionNodeTransferDocument(v19);
        }

        else
        {
          v20 = pthread_getspecific(v10);
          if (!v20)
          {
            v20 = malloc_type_calloc(1uLL, 0x4008uLL, 0x10200409D758B34uLL);
            pthread_setspecific(v10, v20);
          }

          v22 = *(v11 + 240) + 32 * v8;
          v23 = *v20;
          v24 = *v20 + 1;
          *v20 = v24;
          v20[v23 + 1] = v22;
          v20[v23 + 1025] = v17;
          if (v24 == 1024)
          {
            CIPositionNodeTransferDocuments(v21);
            *v20 = 0;
          }
        }
      }

      else
      {
        v15 = *(a1 + 56);
        v16 = *(a2 + 20);
        if (*v5)
        {
          if (*(v5 + 8) == v15)
          {
            return;
          }
        }

        else
        {
          v25 = *(v5 + 8);
          if (v25 == v15)
          {
            return;
          }

          if (!v25)
          {
            *(v5 + 4) = v16;
            *(v5 + 8) = v15;
            return;
          }
        }

        addToExistingTermUpdateList(*(a1 + 32), v5, v15, 0, v16);
      }
    }
  }

  else
  {
    v12 = pthread_getspecific(*(a1 + 104));
    if (v12)
    {
      v14 = v12;
      CIPositionNodeTransferDocuments(v13);
      pthread_setspecific(*(a1 + 104), 0);

      free(v14);
    }
  }
}

void *addToExistingTermUpdateList(uint64_t a1, unsigned int *__src, uint64_t a3, int a4, int a5)
{
  v9 = *__src;
  if (*__src)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = (a1 + 100);
  v12 = atomic_load((a1 + 100));
  v13 = v12 + v10;
  v14 = *(a1 + 96);
  if (v13 >= v14)
  {
    v19 = 2 * v14;
    if (!v14)
    {
      v19 = 0x4000;
    }

    *(a1 + 96) = v19;
    v20 = a1;
    v21 = my_vm_reallocate((a1 + 88), 12 * v14, 12 * v19, 0xF3u, *(a1 + 104));
    a1 = v20;
    if (v21)
    {
      v22 = __si_assert_copy_extra_332();
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "DocPosting.h", 250, "0 == kr", v24);
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

  add = atomic_fetch_add(v11, v10);
  v16 = (*(a1 + 88) + 12 * add);
  if (v9)
  {
    v17 = 16;
  }

  else
  {
    v17 = 12;
  }

  result = memcpy(v16, __src, v17);
  *__src = 2 * add;
  if (a4)
  {
    *(__src + 1) = a3;
    *__src = (2 * add) | 1;
    a5 = 2 * (a4 != 2);
  }

  else
  {
    __src[2] = a3;
    if (v9)
    {
      __src[3] = 0;
    }
  }

  __src[1] = a5;
  return result;
}

void __mergeIntoUpdateSet_block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 15688));
  v2 = *(a1 + 32);
  *(*(v2 + 15704) + 57) = 1;
  os_unfair_lock_unlock((v2 + 15688));
  dispatch_group_wait(*(*(*(a1 + 32) + 15704) + 40), 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_lock((*(a1 + 32) + 15688));
  dispatch_release(*(*(*(a1 + 32) + 15704) + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 15704);
  *(v3 + 15704) = 0;
  os_unfair_lock_unlock((v3 + 15688));
  dispatch_semaphore_signal(*(*(a1 + 32) + 15696));

  free(v4);
}

uint64_t _TermUpdateSetGetStats(uint64_t result, uint64_t a2, char a3)
{
  if (result)
  {
    v5 = result;
    if ((a3 & 1) == 0)
    {
      db_read_lock(result + 304);
    }

    v6 = *(v5 + 232);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v8 = v8 - v6 + v6[1];
        v7 = v7 - v6 + v6[2];
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v9 = *(*(v5 + 24) + 24);
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v11 = v11 - v9 + v9[1];
        v10 = v10 - v9 + v9[2];
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v12 = v8 + v11;
    v13 = v7 + v10;
    result = _os_feature_enabled_impl();
    if (!result || (v14 = *(v5 + 80), v17 = *v14, v15 = v14 + 1, v16 = v17, v17 == v15))
    {
      v22 = 39952;
    }

    else
    {
      v18 = 0;
      do
      {
        result = (*(*v16[5] + 280))(v16[5]);
        v19 = v16[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v16[2];
            v21 = *v20 == v16;
            v16 = v20;
          }

          while (!v21);
        }

        v18 += result;
        v16 = v20;
      }

      while (v20 != v15);
      v22 = v18 + 39952;
    }

    v23 = atomic_load((v5 + 100));
    v24 = 12 * *(v5 + 96);
    v25 = atomic_load((v5 + 248));
    v26 = 32 * *(v5 + 252);
    v27 = atomic_load((v5 + 268));
    v28 = *(v5 + 272);
    *(a2 + 64) = *(v5 + 240) != 0;
    *a2 = v22 + v12;
    *(a2 + 8) = v13 + 39952;
    *(a2 + 16) = 12 * v23;
    *(a2 + 24) = v24;
    *(a2 + 32) = 32 * v25 + 8 * v27;
    *(a2 + 40) = v26 + 8 * v28;
    if ((a3 & 1) == 0)
    {
      pthread_mutex_lock((v5 + 304));
      v29 = *(v5 + 500) - 1;
      *(v5 + 500) = v29;
      if (!v29)
      {
        db_rwlock_wakeup(v5 + 304, 0, 0);
      }

      result = pthread_mutex_unlock((v5 + 304));
    }
  }

  else
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  v30 = atomic_load(&gTotalCurrentUsage);
  v31 = atomic_load(gTermUpdateSetCount);
  *(a2 + 48) = v30;
  *(a2 + 56) = v31;
  return result;
}

uint64_t index_termUpdateSetShouldFlush(uint64_t a1, uint64_t a2, int a3)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a3 >= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = a3;
  }

  if (!index_termUpdateSetShouldFlush_physMem)
  {
    v56 = 0u;
    v57 = 0u;
    *host_info_out = 0u;
    host_info_outCnt = 12;
    v6 = MEMORY[0x1C6920B70]();
    v7 = host_info(v6, 1, host_info_out, &host_info_outCnt);
    v8 = *(&v57 + 1);
    if (*(&v57 + 1) >= 0x80000000uLL)
    {
      v8 = 0x80000000;
    }

    if (v7)
    {
      v8 = 0x40000000;
    }

    index_termUpdateSetShouldFlush_physMem = v8;
  }

  v9 = atomic_load((*(a2 + 24) + 16));
  if (v9 > (3 * index_termUpdateSetShouldFlush_physMem) >> 18)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = atomic_load((*(a2 + 24) + 16));
      host_info_out[0] = 67109376;
      host_info_out[1] = v10;
      LOWORD(host_info_out[2]) = 1024;
      *(&host_info_out[2] + 2) = (3 * index_termUpdateSetShouldFlush_physMem) >> 18;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "should flush, tc:%d, limit:%d";
      p_host_info_outCnt = host_info_out;
      v14 = 14;
LABEL_51:
      _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, v12, p_host_info_outCnt, v14);
      return 1;
    }

    return 1;
  }

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  *host_info_out = 0u;
  v56 = 0u;
  _TermUpdateSetGetStats(a2, host_info_out, 0);
  v15 = v5 + 2 * (MEMORY[0xFFFFFC030] > 0x32u);
  v16 = index_termUpdateSetShouldFlush_physMem >> 8 >> v15;
  v17 = v57;
  v18 = dword_1EBF46ADC;
  if (v57 <= index_termUpdateSetShouldFlush_physMem >> 12 >> v15 || dword_1EBF46ADC < 5)
  {
    v20 = index_termUpdateSetShouldFlush_physMem >> 8 >> v15;
  }

  else
  {
    v34 = index_termUpdateSetShouldFlush_physMem >> 8 >> v15;
    v35 = *__error();
    v36 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      host_info_outCnt = 134218240;
      v48 = v17;
      v49 = 2048;
      v50 = index_termUpdateSetShouldFlush_physMem >> 12 >> v15;
      _os_log_impl(&dword_1C278D000, v36, OS_LOG_TYPE_DEFAULT, "positions exceed limit, used:%ld, limit:%ld", &host_info_outCnt, 0x16u);
    }

    *__error() = v35;
    v18 = dword_1EBF46ADC;
    v20 = index_termUpdateSetShouldFlush_physMem >> 8 >> v15;
    v16 = v34;
  }

  v21 = *host_info_out;
  v22 = v56;
  v23 = v56 + *host_info_out;
  v24 = v16 - (v17 + v56 + *host_info_out);
  if (v56 + *host_info_out <= v20 || v18 < 5)
  {
    if (v24 <= 0)
    {
LABEL_48:
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      host_info_outCnt = 134218752;
      v48 = v21;
      v49 = 2048;
      v50 = v22;
      v51 = 2048;
      v52 = v17;
      v53 = 2048;
      v54 = index_termUpdateSetShouldFlush_physMem >> 8 >> v15;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "should flush Terms + Postings + Positions exceed limit, terms used:%ld, postings used:%ld positions used:%ld limit:%ld";
      goto LABEL_50;
    }
  }

  else
  {
    v45 = *host_info_out;
    v46 = v24;
    v44 = v56;
    v38 = *__error();
    v39 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      host_info_outCnt = 134218240;
      v48 = v23;
      v49 = 2048;
      v50 = index_termUpdateSetShouldFlush_physMem >> 8 >> v15;
      _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "Terms + Postings exceed limit, used:%ld, limit:%ld", &host_info_outCnt, 0x16u);
    }

    *__error() = v38;
    v22 = v44;
    v21 = v45;
    if (v46 <= 0)
    {
      goto LABEL_48;
    }
  }

  v26 = v58;
  if (v58 > 0xC00000)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      host_info_outCnt = 134218240;
      v48 = v26;
      v49 = 2048;
      v50 = 12582912;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "should flush term info (global), used:%ld, max:%ld";
      p_host_info_outCnt = &host_info_outCnt;
      v14 = 22;
      goto LABEL_51;
    }

    return 1;
  }

  v27 = index_termUpdateSetShouldFlush_physMem;
  if (v23 > (index_termUpdateSetShouldFlush_physMem / 0x300uLL) >> (v5 + 2 * (MEMORY[0xFFFFFC030] > 0x32u)))
  {
    v28 = *(&v58 + 1);
    if (*(&v58 + 1) <= 1uLL)
    {
      v28 = 1;
    }

    v29 = v58 / v28;
    if (v23 > v58 / v28)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      host_info_outCnt = 134218752;
      v48 = v26;
      v49 = 2048;
      v50 = v23;
      v51 = 2048;
      v52 = v29;
      v53 = 2048;
      v54 = v27 >> 8;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "should flush, all:%ld, used:%ld, limit:%ld, total limit:%ld";
LABEL_50:
      p_host_info_outCnt = &host_info_outCnt;
      v14 = 42;
      goto LABEL_51;
    }
  }

  v30 = atomic_load((a1 + 16));
  v31 = *(a1 + 68);
  if (v31 >= 0x2711 && 6 * v30 > 5 * v31)
  {
    v32 = *(a1 + 14392);
    if (v32)
    {
      if (*(v32 + 112) > 0x1000u)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(host_info_outCnt) = 0;
          v11 = MEMORY[0x1E69E9C10];
          v12 = "Flush for high delete count";
          p_host_info_outCnt = &host_info_outCnt;
          v14 = 2;
          goto LABEL_51;
        }

        return 1;
      }
    }
  }

  if (dword_1EBF46AF4 < 5)
  {
    return 0;
  }

  v41 = *__error();
  v42 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(host_info_outCnt) = 0;
    _os_log_impl(&dword_1C278D000, v42, OS_LOG_TYPE_DEFAULT, "Flush not required", &host_info_outCnt, 2u);
  }

  v43 = __error();
  result = 0;
  *v43 = v41;
  return result;
}

void freeDirectory(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (v2[1] != 1)
    {
      v3 = 0;
      v4 = 2;
      do
      {
        v5 = &v2[v4];
        if (v2[v4] >= 2)
        {
          v6 = v5[1];
          v7[0] = *v5;
          v7[1] = v6;
          freeDirectory(v7);
          v2 = *(a1 + 8);
        }

        ++v3;
        v4 += 4;
      }

      while (v3 < v2[1] - 1);
    }

    free(v2);
  }
}

void std::__tree<std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete(a1);
  }
}

uint64_t db_rwlock_destroy(pthread_mutex_t *a1)
{
  v2 = 0;
  v3 = a1 + 1;
  do
  {
    v4 = &v3->__sig + 2 * v2;
    while (1)
    {
      v5 = *v4;
      if (*v4 != v4[1])
      {
        *v4 = *(v5 + 64);
        goto LABEL_6;
      }

      *v4 = 0;
      v4[1] = 0;
      if (!v5)
      {
        break;
      }

LABEL_6:
      *(v5 + 52) = 1;
      --*&a1[3].__opaque[8];
      pthread_cond_destroy(v5);
      free(v5);
    }

    ++v2;
  }

  while (v2 != 6);
  while (1)
  {
    v6 = *&a1[2].__opaque[32];
    if (!v6)
    {
      break;
    }

    *&a1[2].__opaque[32] = *(v6 + 64);
    pthread_cond_destroy(v6);
    free(v6);
  }

  v7 = *&a1[2].__opaque[24];
  if (v7)
  {
    pthread_cond_destroy(*&a1[2].__opaque[24]);
    free(v7);
  }

  return pthread_mutex_destroy(a1);
}

void __si_pop_queue_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, *(a1 + 40));
  }

  else
  {
    Value = 0;
  }

  if (dword_1EBF46ADC >= 5)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = *(*(a1 + 32) + 72);
      v18 = 134218240;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "Pop %p from tags %p", &v18, 0x16u);
    }

    *__error() = v7;
    if (Value)
    {
      goto LABEL_6;
    }
  }

  else if (Value)
  {
LABEL_6:
    if (*(a1 + 48))
    {
      v4 = 0;
      do
      {
        CFBagRemoveValue(Value, *(*(a1 + 56) + 8 * v4++));
      }

      while (v4 < *(a1 + 48));
    }

    if (!MEMORY[0x1C691E5D0](Value))
    {
      v5 = *(a1 + 32);
      if (*(v5 + 33) == 1 && dword_1EBF46ADC >= 5)
      {
        v14 = *__error();
        v15 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 40);
          v18 = 134217984;
          v19 = v17;
          _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "Emptied tag bag for %p", &v18, 0xCu);
        }

        *__error() = v14;
        v5 = *(a1 + 32);
      }

      CFDictionaryRemoveValue(*(v5 + 72), *(a1 + 40));
    }

    return;
  }

  if (gSILogLevels[0] >= 5)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v18 = 134217984;
      v19 = v13;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "Unknown tag %p", &v18, 0xCu);
    }

    *__error() = v11;
  }
}

void SIGCContextWrapperCleanup(void *a1)
{
  do
  {
    v2 = a1[1];
    a1[1] = 0;
    SIGCContextRelease(v2);
    a1[1] = 0;
    v3 = a1[5];
    if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
    {
      free(a1);
    }

    a1 = v3;
  }

  while (v3);
}

void dbGCBlock(uint64_t a1, void (**a2)(void))
{
  a2[2](a2);

  _Block_release(a2);
}

uint64_t __my_vm_reallocate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if ((v4 - 240) <= 0x10)
  {
    atomic_fetch_add_explicit(&tag_sizes[v4 - 240], -v3, memory_order_relaxed);
  }

  return munmap(v2, v3);
}

uint64_t sdb_pwrite(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFF) != 0)
  {
    v5 = __si_assert_copy_extra_3233(0, -1);
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 98, "(write_size & ((1 << 12)-1)) == 0", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if ((a4 & 0xFFF) != 0)
  {
    v8 = __si_assert_copy_extra_3233(0, -1);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 99, "(offset & ((1 << 12)-1)) == 0", v10);
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

  return fd_pwrite(a1, a2, a3, a4);
}

uint64_t pushPrefixTerms(uint64_t result, uint64_t a2, char *__src, unsigned int a4, const void *a5, uint64_t a6, int a7, int a8, char a9)
{
  v108 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return result;
  }

  v11 = result;
  memset(__dst, 0, sizeof(__dst));
  v12 = *__src;
  v13 = utf8_byte_length(unsigned char)::utf8_len_table[v12 >> 4];
  v14 = &__src[v13];
  if (v13 >= a2)
  {
    if (v13 != a2)
    {
      v96 = __si_assert_copy_extra_332();
      v97 = v96;
      v98 = "";
      if (v96)
      {
        v98 = v96;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 3229, "ptr==end", v98);
      free(v97);
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
    if ((*v14 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v16 = v15 >> 4;
    v17 = utf8_byte_length(unsigned char)::utf8_len_table[v15 >> 4];
    v18 = v15 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v17];
    if ((~v16 & 0xC) != 0)
    {
      goto LABEL_11;
    }

    v19 = v17 <= 2 ? 2 : v17;
    v20 = v19 - 1;
    v21 = &__src[v13 + 1];
    do
    {
      v22 = *v21++;
      v18 = v22 & 0x3F | (v18 << 6);
      --v20;
    }

    while (v20);
    if (v18 < 0x10000)
    {
LABEL_11:
      if ((v18 - 12441) >= 4 && (v18 - 65438) >= 2)
      {
        v103 = __src;
        v89 = a2;
        v90 = unicode_combinable(v18);
        a2 = v89;
        __src = v103;
        if (!v90)
        {
          goto LABEL_18;
        }
      }

LABEL_15:
      v14 += v17;
      goto LABEL_18;
    }

    v33 = v18 - 917760;
    v34 = v18 - 127995;
    if (v33 < 0xF0 || v34 <= 4)
    {
      goto LABEL_15;
    }
  }

LABEL_18:
  v24 = &__src[a2];
  v25 = v14 - __src;
  if (v14 >= &__src[a2])
  {
    goto LABEL_46;
  }

  v26 = *v14;
  if (v26 != 45)
  {
    if (v26 == 239)
    {
      if (v14[1] != 188 || v14[2] != 189)
      {
        goto LABEL_46;
      }
    }

    else if (v26 != 226 || v14[1] != 128 || (v14[2] & 0xFE) != 0x90)
    {
      goto LABEL_46;
    }
  }

  if ((v12 & 0x80) != 0)
  {
    v28 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v13] & v12;
    if ((~(v12 >> 4) & 0xC) != 0)
    {
      v27 = __src;
      LODWORD(v12) = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v13] & v12;
    }

    else
    {
      if (v13 <= 2)
      {
        v29 = 2;
      }

      else
      {
        v29 = v13;
      }

      v30 = v29 - 1;
      v27 = __src;
      v31 = __src + 1;
      do
      {
        v32 = *v31++;
        LODWORD(v12) = v32 & 0x3F | (v28 << 6);
        v28 = v12;
        --v30;
      }

      while (v30);
    }
  }

  else
  {
    v27 = __src;
  }

  if (((1 << u_charType(v12)) & 0xE3E) != 0)
  {
    v14 += utf8_byte_length(unsigned char)::utf8_len_table[*v14 >> 4];
  }

  __src = v27;
LABEL_46:
  if (v14 >= v24 || (v36 = *v14, v36 < 2))
  {
    memcpy(__dst, __src, v25);
    if (a9)
    {
      v48 = __dst + v25;
      *v48 = 1;
      v48[1] = a9;
      v25 += 3;
      v48[2] = 5;
    }

    memcpy(__dst + v25, a5, a4);
    v49 = v25 + a4;
    v50 = strHash(v25 + a4, __dst, 0);
    v52 = *(v11 + 24);
    v53 = *v52;
    v55 = a7;
    v54 = a8;
    v56 = a6;
    if (*v52)
    {
      v57 = HIWORD(v50) & 0x7FF;
      v58 = *(v53 + 4 * v57 + 0x4000);
      if (v58 < 0 && ((v58 ^ v50) & 0x7FFFFFFF) == 0)
      {
        v59 = *(v53 + 8 * v57);
        if (v49 == *(v59 + 16))
        {
          if (!v49)
          {
            return pushTermData(v11, v59, v56, v55, 0, v54, 1);
          }

          v60 = v52 + 270;
          if (*(v59 + 18) == *(v52 + LOBYTE(__dst[0]) + 2160))
          {
            v61 = 0;
            while (v25 + a4 - 1 != v61)
            {
              v62 = *(v59 + v61 + 19);
              v63 = *(v60 + *(__dst + ++v61));
              if (v62 != v63)
              {
                if (v61 < v49)
                {
                  goto LABEL_104;
                }

                return pushTermData(v11, v59, v56, v55, 0, v54, 1);
              }
            }

            return pushTermData(v11, v59, v56, v55, 0, v54, 1);
          }
        }
      }
    }

LABEL_104:
    v59 = TermTrieResolve(v51);
    return pushTermData(v11, v59, v56, v55, 0, v54, 1);
  }

  v37 = utf8_byte_length(unsigned char)::utf8_len_table[v36 >> 4];
  v38 = &v14[v37];
  if (&v14[v37] >= v24)
  {
    v38 = v24;
    if (&v14[v37] != v24)
    {
      v99 = __si_assert_copy_extra_332();
      v100 = v99;
      v101 = "";
      if (v99)
      {
        v101 = v99;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 3247, "ptr==end", v101);
      free(v100);
      if (__valid_fs(-1))
      {
        v102 = 2989;
      }

      else
      {
        v102 = 3072;
      }

      *v102 = -559038737;
      abort();
    }

    goto LABEL_77;
  }

  if (*v38 < 0)
  {
    v39 = *v38;
    v40 = v39 >> 4;
    v41 = utf8_byte_length(unsigned char)::utf8_len_table[v39 >> 4];
    v42 = v39 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v41];
    if ((~v40 & 0xC) != 0)
    {
      goto LABEL_57;
    }

    v43 = v41 <= 2 ? 2 : v41;
    v44 = v43 - 1;
    v45 = &v14[v37 + 1];
    do
    {
      v46 = *v45++;
      v42 = v46 & 0x3F | (v42 << 6);
      --v44;
    }

    while (v44);
    if (v42 < 0x10000)
    {
LABEL_57:
      if ((v42 - 12441) >= 4 && (v42 - 65438) >= 2)
      {
        v94 = __src;
        v95 = unicode_combinable(v42);
        __src = v94;
        if (!v95)
        {
          goto LABEL_77;
        }
      }
    }

    else
    {
      v91 = v42 - 917760;
      v92 = v42 - 127995;
      if (v91 >= 0xF0 && v92 > 4)
      {
        goto LABEL_77;
      }
    }

    v38 += v41;
  }

LABEL_77:
  v64 = v38 - __src;
  memcpy(__dst, __src, v38 - __src);
  if (a9)
  {
    v65 = __dst + v64;
    *v65 = 1;
    v65[1] = a9;
    v64 += 3;
    v65[2] = 5;
  }

  memcpy(__dst + v64, a5, a4);
  v66 = v64 + a4;
  v67 = strHash(v64 + a4, __dst, 0);
  v69 = *(v11 + 24);
  v70 = *v69;
  v54 = a8;
  if (!*v69)
  {
    goto LABEL_89;
  }

  v71 = HIWORD(v67) & 0x7FF;
  v72 = *(v70 + 4 * v71 + 0x4000);
  if ((v72 & 0x80000000) == 0)
  {
    goto LABEL_89;
  }

  if (((v72 ^ v67) & 0x7FFFFFFF) != 0)
  {
    goto LABEL_89;
  }

  v73 = *(v70 + 8 * v71);
  if (v66 != *(v73 + 16))
  {
    goto LABEL_89;
  }

  if (!v66)
  {
    goto LABEL_90;
  }

  v74 = v69 + 270;
  if (*(v73 + 18) == *(v69 + LOBYTE(__dst[0]) + 2160))
  {
    v75 = 0;
    while (v64 + a4 - 1 != v75)
    {
      v76 = *(v73 + v75 + 19);
      v77 = *(v74 + *(__dst + ++v75));
      if (v76 != v77)
      {
        if (v75 >= v66)
        {
          break;
        }

        goto LABEL_89;
      }
    }
  }

  else
  {
LABEL_89:
    v73 = TermTrieResolve(v68);
  }

LABEL_90:
  v56 = a6;
  v55 = a7;
  result = pushTermData(v11, v73, a6, a7, 0, a8, 1);
  if (a8 || result)
  {
    if (a9)
    {
      v78 = __dst + v25;
      *v78 = 1;
      v78[1] = a9;
      v25 += 3;
      v78[2] = 5;
    }

    memcpy(__dst + v25, a5, a4);
    v79 = v25 + a4;
    v80 = strHash(v25 + a4, __dst, 0);
    v81 = *(v11 + 24);
    v82 = *v81;
    if (*v81)
    {
      v83 = HIWORD(v80) & 0x7FF;
      v84 = *(v82 + 4 * v83 + 0x4000);
      if (v84 < 0 && ((v84 ^ v80) & 0x7FFFFFFF) == 0)
      {
        v59 = *(v82 + 8 * v83);
        if (v79 == *(v59 + 16))
        {
          if (!v79)
          {
            return pushTermData(v11, v59, v56, v55, 0, v54, 1);
          }

          v85 = v81 + 270;
          if (*(v59 + 18) == *(v81 + LOBYTE(__dst[0]) + 2160))
          {
            v86 = 0;
            while (v25 + a4 - 1 != v86)
            {
              v87 = *(v59 + v86 + 19);
              v88 = *(v85 + *(__dst + ++v86));
              if (v87 != v88)
              {
                if (v86 >= v79)
                {
                  return pushTermData(v11, v59, v56, v55, 0, v54, 1);
                }

                goto LABEL_104;
              }
            }

            return pushTermData(v11, v59, v56, v55, 0, v54, 1);
          }
        }
      }
    }

    goto LABEL_104;
  }

  return result;
}

uint64_t handle_missing_punctuation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, int a6)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v9 = a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = *(a1 + 2 * v9);
    if (u_isUWhiteSpace(v15))
    {
      if (v14)
      {
        if (a4)
        {
          v11 = a4(a1 + 2 * v12, v14, v13, a5);
          v14 = 0;
          v13 = 0;
          v12 = 0;
          goto LABEL_19;
        }

        v14 = 0;
        v13 = 0;
        v12 = 0;
      }

      else
      {
        if (!a6)
        {
          goto LABEL_8;
        }

        if (a4)
        {
          v11 = a4(a1 + 2 * v12, 1, 2048, a5);
LABEL_8:
          v14 = 0;
          goto LABEL_19;
        }

        v14 = 0;
      }

      v11 = 0;
    }

    else
    {
      if (((1 << u_charType(v15)) & 0x30F80000) != 0)
      {
        v13 |= 0x20uLL;
      }

      if (!v14)
      {
        v12 = v9;
      }

      ++v14;
    }

LABEL_19:
    ++v9;
  }

  while (a3 != v9);
  if (v14)
  {
    result = 0;
  }

  else
  {
    result = v11;
  }

  if (v14 && a4)
  {

    return a4(a1 + 2 * v12, v14, v13, a5);
  }

  return result;
}

uint64_t quick_check_suspension(uint64_t a1)
{
  v7 = 0;
  pthread_mutex_lock(*(a1 + 8));
  if (((*(a1 + 120) || *(a1 + 144)) && *(a1 + 136) == 1 || *(a1 + 116)) && (*(a1 + 67) & 1) == 0)
  {
    ++*(a1 + 124);
    *(a1 + 200) = 0;
    si_scheduler_do_suspend(a1, &v7);
    v3 = v7;
    if (v7)
    {
      pthread_mutex_unlock(*(a1 + 8));
      si_scheduler_trigger_tokens(v3);
      pthread_mutex_lock(*(a1 + 8));
      if (*(a1 + 116))
      {
        if ((*(a1 + 67) & 1) == 0)
        {
          pthread_cond_broadcast(*(a1 + 16));
        }
      }
    }

    while (*(a1 + 116) && (*(a1 + 67) & 1) == 0)
    {
      v6.tv_sec = 0;
      *&v6.tv_usec = 0;
      v5.tv_sec = 0;
      v5.tv_nsec = 0;
      gettimeofday(&v6, 0);
      v5.tv_sec = v6.tv_sec + 1;
      v5.tv_nsec = 0;
      pthread_cond_timedwait(*(a1 + 16), *(a1 + 8), &v5);
    }

    --*(a1 + 124);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(*(a1 + 8));
  return v2;
}

void SIResumeIndex(uint64_t a1)
{
  if (gFlushSuspendOnceToken == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gFlushSuspendOnceToken, &__block_literal_global_51_13125);
    if (!a1)
    {
      return;
    }
  }

  if (*(a1 + 1192) && *(a1 + 1040) && *(a1 + 1048))
  {
    pthread_mutex_lock(&gSuspensionMutex);
    v2 = *(a1 + 676);
    if (v2)
    {
      *(a1 + 676) = v2 - 1;
      v3 = (a1 + 680);
      v4 = 18;
      do
      {
        if (v3[23])
        {
          si_scheduler_resume_with_token(*v3);
        }

        *v3++ = 0;
        --v4;
      }

      while (v4);
    }

    pthread_mutex_unlock(&gSuspensionMutex);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SIResumeIndex_block_invoke_2;
    block[3] = &__block_descriptor_tmp_52_13126;
    block[4] = a1;
    dispatch_async(gFlushSuspendQueue, block);
  }
}

uint64_t __SIResumeIndex_block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 672) == 1)
  {
    *(v1 + 672) = 0;
  }

  return result;
}

void SIReleaseJournalAssertion(uint64_t a1, const __CFString *Value)
{
  if (a1)
  {
    v4 = fd_create_protected(*(a1 + 32), "assertedJournalAttr.1", 0x20000000, 2u);
    if (v4)
    {
      v5 = v4;
      fd_drop_assertion(v4);
      fd_release(v5);
    }

    if (Value || (pthread_rwlock_rdlock((a1 + 80)), Value = CFDictionaryGetValue(*(a1 + 72), @"journalName"), pthread_rwlock_unlock((a1 + 80)), Value))
    {
      v6 = *(a1 + 32);
      CStringPtr = CFStringGetCStringPtr(Value, 0x8000100u);
      v8 = fd_create_protected(v6, CStringPtr, 0x20000000, 2u);
      if (v8)
      {
        v9 = v8;
        fd_drop_assertion(v8);

        fd_release(v9);
      }
    }
  }
}

uint64_t fd_drop_assertion(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&g_fd_lock);
  if (a1)
  {
    v2 = *(a1 + 40);
    pthread_mutex_unlock(&g_fd_lock);
    if (v2 != -1)
    {
      v14 = 0;
      v3 = _fd_acquire_fd(a1, &v14);
      v4 = fcntl(v3, 109, 0);
      if ((v4 & 0x80000000) != 0)
      {
        bzero(v25, 0x400uLL);
        v5 = *__error();
        v6 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v8 = fd_name(a1, v25, 0x400uLL);
          v9 = *__error();
          v10 = __error();
          v11 = strerror(*v10);
          *buf = 136316162;
          v16 = "fd_drop_assertion";
          v17 = 1024;
          v18 = 952;
          v19 = 2080;
          v20 = v8;
          v21 = 1024;
          v22 = v9;
          v23 = 2080;
          v24 = v11;
          _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: Unable to drop assertion on %s: %d(%s)", buf, 0x2Cu);
        }

        *__error() = v5;
      }

      *(a1 + 88) = 0;
      _fd_release_fd(a1, v3, 0, v14);
      return v4;
    }
  }

  else
  {
    pthread_mutex_unlock(&g_fd_lock);
  }

  if (dword_1EBF46AF4 < 5)
  {
    return 0;
  }

  v12 = *__error();
  v13 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Unable to drop assertion as obj is invalid", v25, 2u);
  }

  v4 = 0;
  *__error() = v12;
  return v4;
}

uint64_t __SIOpenIndexAtPathWithCallbacks_block_invoke_2(uint64_t a1, int a2, int a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 == 17 || a3 == 2)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(10);
    v9 = 2 * (dword_1EBF46AF4 < 4);
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_8;
    }

    *buf = 67109632;
    *v26 = a2;
    *&v26[4] = 1024;
    *&v26[6] = a3;
    LOWORD(v27[0]) = 1024;
    *(v27 + 2) = a4;
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v7 = *__error();
    v12 = _SILogForLogForCategory(10);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *buf = 67109632;
    *v26 = a2;
    *&v26[4] = 1024;
    *&v26[6] = a3;
    LOWORD(v27[0]) = 1024;
    *(v27 + 2) = a4;
    v10 = v12;
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1C278D000, v10, v11, "fd_error_callback (%d, %d, %d)", buf, 0x14u);
LABEL_8:
  *__error() = v7;
  if (a2 == -1)
  {
    return 0;
  }

  if (a3 == 14 || a3 == 1)
  {
    v13 = MEMORY[0x1C6920BC0]();
    v14 = v13;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = __SIOpenIndexAtPathWithCallbacks_block_invoke_22;
    v22[3] = &__block_descriptor_tmp_26_13106;
    v23 = a2;
    v24 = a3;
    v15 = _SISuspendThreadIfLocked(v13, v22);
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v14);
  }

  else
  {
    v15 = 0;
  }

  if (a3 == 14 && (v15 & 1) == 0)
  {
    if (kIndexOptionPriorityPC_block_invoke_sOnce != -1)
    {
      dispatch_once(&kIndexOptionPriorityPC_block_invoke_sOnce, &__block_literal_global_30);
    }

    v16 = pthread_getspecific(kIndexOptionPriorityPC_block_invoke_error_key);
    if (!v16)
    {
      v16 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040D9A13B51uLL);
      pthread_setspecific(kIndexOptionPriorityPC_block_invoke_error_key, v16);
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (Current - *v16 > 1.0)
    {
      *v16 = Current;
      *(v16 + 2) = 1;
LABEL_23:
      v19 = *__error();
      v20 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v26 = "SIOpenIndexAtPathWithCallbacks_block_invoke_2";
        *&v26[8] = 1024;
        v27[0] = 381;
        _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: EFAULT: Retry operation", buf, 0x12u);
      }

      *__error() = v19;
      usleep(0x7D0u);
      return 1;
    }

    v18 = *(v16 + 2);
    *(v16 + 2) = v18 + 1;
    if (v18 <= 9)
    {
      *v16 = Current;
      goto LABEL_23;
    }

    return 0;
  }

  return v15;
}

void __work_fun_inner_block_invoke_2(void *a1)
{
  v2 = a1[5];
  v3 = !*(v2 + 104) && (*(v2 + 64) & 1) == 0 && *(a1[6] + 36) == 0;
  *(*(a1[4] + 8) + 24) = v3;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    dec_running(v2);
    v4 = a1[7];
    if (v4)
    {
      *(v4 + 24) = 0;
    }

    v5 = a1[8];

    dec_running(v5);
  }
}

void freeThreadSlot(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 1;
    v2 = &threadList + 16 * (a1 - 1);
    if (*(v2 + 3))
    {
      v13 = __si_assert_copy_extra_332();
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1172, "entry->count==0", v15);
      free(v14);
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

    v3 = &threadData[9 * v1];
    v4 = *v3;
    if (v1 < 0x11)
    {
      v7 = 0;
      v6 = 0;
      v5 = 0;
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 14) = 0;
      *(v3 + 4) = 0;
      v3[5] = 0;
    }

    else
    {
      v5 = v3[1];
      v6 = v3[6];
      v7 = v3[8];
      *v3 = 0u;
      *(v3 + 1) = 0u;
      *(v3 + 2) = 0u;
      *(v3 + 3) = 0u;
      v3[8] = 0;
    }

    *(v2 + 1) = 0xFFFFFFFF00000000;
    OSAtomicEnqueue(&sAvailabeThreadEntries, v2, 0);
    v8 = MEMORY[0x1C6920BC0]();
    if (gSILogLevels[0] >= 5)
    {
      v17 = *__error();
      v18 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v20 = v1;
        v21 = 1024;
        v22 = v8;
        _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "Dropped handler slot:%u port:%d", buf, 0xEu);
      }

      *__error() = v17;
    }

    if (*v4)
    {
      v9 = &v4[*v4 - 1];
      v10 = v9[1];
      v11 = v9[65];
      v12 = v8;
    }

    else
    {
      v12 = v8;
      v10 = 0;
      v11 = 0;
    }

    thread_set_exception_ports(v12, v10, v11, -2147483644, 1);
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v8);
    free(v5);
    free(v6);
    free(v7);
    free(v4);
  }
}

unsigned int *db_obj_iter_next(uint64_t a1, unint64_t *a2, int a3, __n128 a4, double a5, __n128 a6)
{
  if (*a1 != 3506)
  {
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 701, v21);
    free(v20);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v9 = (a1 + 80);
  v10 = *(a1 + 80);
  while (1)
  {
    result = _db_obj_iter_next(v9, a2, 0, a4, a5, a6);
    if (result)
    {
      return result;
    }

    v12 = atomic_load((a1 + 144));
    v13 = *(a1 + 136);
    if (v12 >= v13)
    {
      v14 = *(a1 + 192) + 1;
      *(a1 + 192) = v14;
      if (v14 > 1u || *(a1 + 160) == v13)
      {
LABEL_13:
        if (a3)
        {
          db2_obj_iter_suspend(a1);
        }

        return 0;
      }

      atomic_store(0, (a1 + 144));
      if (v13)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = *(v10 + 32) + 32 * *(a1 + 88) + v15;
          *(v17 + 16) |= 0x3FFFFFFFCuLL;
          v18 = *(v10 + 32) + 32 * *(a1 + 88) + v15;
          *(v18 + 25) = 0;
          *(v18 + 16) |= 0x400000000uLL;
          ++v16;
          v15 += 32;
        }

        while (v16 < *(a1 + 136));
      }

      subiter_do_lookups(v9, a4.n128_f64[0], a5, a6);
    }

    else if (*(a1 + 192))
    {
      goto LABEL_13;
    }
  }
}

int *creationTouchFileUnlink(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = unlinkat(a1, "creationTouchFile", 0);
  result = __error();
  v3 = *result;
  if (v1)
  {
    if (v3 == 2)
    {
      return result;
    }

    v3 = *__error();
    v4 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *__error();
      v7 = 136315650;
      v8 = "creationTouchFileUnlink";
      v9 = 1024;
      v10 = 2132;
      v11 = 1024;
      v12 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: [IndexLoss] Failed to delete creation touch file with errno: %d", &v7, 0x18u);
    }
  }

  else
  {
    v6 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "[IndexLoss] Deleted creation touch file", &v7, 2u);
    }
  }

  result = __error();
  *result = v3;
  return result;
}

uint64_t si_scheduler_resume(uint64_t result, const void *a2, uint64_t a3, int a4)
{
  if (result)
  {
    v7 = result;
    pthread_mutex_lock(*(result + 8));
    v16 = 0;
    pthread_threadid_np(0, &v16);
    v8 = *(v7 + 116);
    if (!v8)
    {
      v12 = __si_assert_copy_extra_661(-1);
      v13 = v12;
      v14 = "";
      if (v12)
      {
        v14 = v12;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 1368, "scheduler->suspended", v14);
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

    v9 = v8 - 1;
    *(v7 + 116) = v9;
    if (!v9)
    {
      pthread_cond_broadcast(*(v7 + 16));
      dispatch_resume(*(v7 + 160));
      *(v7 + 176) = a3;
      *(v7 + 184) = a4;
    }

    v10 = *(v7 + 192);
    if (v10 == pthread_self() || !*(v7 + 116))
    {
      *(v7 + 192) = 0;
      v11 = *(v7 + 208);
      if (v11)
      {
        pthread_override_qos_class_end_np(v11);
      }

      *(v7 + 208) = 0;
      *(v7 + 216) = 0;
    }

    CFRelease(a2);
    return pthread_mutex_unlock(*(v7 + 8));
  }

  return result;
}

void si_power_info_cleanup(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (*a1)
    {
      v4 = *(a2 + 2360);
      if (v4)
      {
        v5 = *(v4 + 72);
        if (v5)
        {
          v5(*(v4 + 144));
          *a1 = 0;
        }
      }
    }
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(*(a1 + 24));
    *(a1 + 24) = 0;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    xpc_release(v7);
    *(a1 + 8) = 0;
  }
}

void si_querypipe_addcoalescedresults(uint64_t a1, PartialQueryResults *this, datastore_info *a3, char a4)
{
  v71 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    return;
  }

  v7 = a1;
  do
  {
    v8 = v7;
    v7 = *(v7 + 80);
  }

  while (v7);
  if (*(*(v8 + 8) + 12))
  {
    return;
  }

  v9 = a1;
  do
  {
    v10 = v9;
    v9 = *(v9 + 80);
  }

  while (v9);
  v11 = *(*(v10 + 8) + 80);
  v12 = *(a1 + 80);
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = 0;
  v14 = a1;
  do
  {
    v13 ^= *(v14 + 104) == 0;
    v14 = v12;
    v12 = *(v12 + 80);
  }

  while (v12);
  if (v13)
  {
    v15 = 3553;
  }

  else
  {
LABEL_12:
    v15 = 2781;
  }

  v16 = PartialQueryResults::start(this, v11, v15, 2uLL, 0);
  v17 = PartialQueryResults::attributeIdVector(this, a3);
  v18 = *(this + 29);
  if (*this == 1)
  {
    if (v18)
    {
      if (!*(this + 23))
      {
        v19 = *(this + 13);
        if (!v19)
        {
          v20 = *(this + 16);
          if (v20)
          {
            *buf = 0;
            SIFlattenArrayToCStringVector(v20, this + 13, buf, &v65);
            v19 = *(this + 13);
          }

          else
          {
            v19 = 0;
          }
        }

        PartialQueryResults::setupCannedCollectAttributeVector(this, v19, this + 23, buf);
      }

      v34 = 184;
      goto LABEL_35;
    }
  }

  else if (v18)
  {
    if (!*(this + 22))
    {
      v21 = *(this + 12);
      if (!v21)
      {
        v22 = *(this + 15);
        if (v22)
        {
          SIFlattenArrayToCStringVector(v22, this + 12, this + 30, this + 29);
          v21 = *(this + 12);
          if (!v21)
          {
            v23 = __si_assert_copy_extra_332();
            v31 = v23;
            v32 = "";
            if (v23)
            {
              v32 = v23;
            }

            __message_assert_336(v23, v24, v25, v26, v27, v28, v29, v30, "SISearchCtx.h", 998, "fAttributeVector", v32);
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
        }

        else
        {
          v21 = 0;
        }
      }

      PartialQueryResults::setupCannedCollectAttributeVector(this, v21, this + 22, this + 2);
    }

    v34 = 176;
LABEL_35:
    v35 = *(this + 29);
    v36 = *(this + v34);
    _MDPlistBytesBeginArray();
    if (v35 >= 1)
    {
      v37 = 0;
      v38 = 0;
      while (1)
      {
        if (v17 && (v39 = *(v17 + 8 * v38)) != 0)
        {
          v40 = *v39;
        }

        else
        {
          v40 = *(v36 + 8 * v38);
          if (!v40)
          {
            Mutable = 0;
            goto LABEL_45;
          }
        }

        Value = CFDictionaryGetValue(*(this + 14), v40);
        if (Value)
        {
          Mutable = Value;
        }

        else
        {
          Mutable = CFSetCreateMutable(kCIQueryZoneAllocator, 0, MEMORY[0x1E695E9F8]);
          CFDictionarySetValue(*(this + 14), v40, Mutable);
          CFRelease(Mutable);
        }

LABEL_45:
        if (dword_1EBF46AD0 >= 5)
        {
          v63 = *__error();
          v43 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            if (Mutable)
            {
              Count = CFSetGetCount(Mutable);
            }

            else
            {
              Count = 0;
            }

            v44 = *(PartialQueryResults::attributeVector(this) + 8 * v38);
            *buf = 134218498;
            *&buf[4] = Count;
            v67 = 2048;
            v68 = Mutable;
            v69 = 2080;
            v70 = v44;
            _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "Encoding %ld items from set %p for field %s", buf, 0x20u);
          }

          *__error() = v63;
          if (!Mutable)
          {
LABEL_55:
            _MDPlistBytesAddNull();
            goto LABEL_56;
          }
        }

        else if (!Mutable)
        {
          goto LABEL_55;
        }

        if (!CFSetGetCount(Mutable))
        {
          goto LABEL_55;
        }

        v37 += CFSetGetCount(Mutable);
        _MDPlistBytesBeginArray();
        CFSetApplyFunction(Mutable, encodeCTypeField, v16);
        _MDPlistBytesEndArray();
LABEL_56:
        if (v35 == ++v38)
        {
          goto LABEL_59;
        }
      }
    }

    goto LABEL_58;
  }

  _MDPlistBytesBeginArray();
LABEL_58:
  v37 = 0;
LABEL_59:
  _MDPlistBytesEndArray();
  if (*(this + 186))
  {
    _MDPlistBytesEndArray();
    _MDPlistBytesEndPlist();
  }

  if (*(this + 58))
  {
    _MDStoreOIDArrayEndBulkAdd();
    _MDStoreOIDArrayEndSequence();
    *(this + 443) = 0;
  }

  if (v37 != *(a1 + 72) || (a4 & 1) != 0)
  {
    v45 = *(this + 186);
    *(this + 186) = 0;
    v46 = *(this + 884);
    if (v45)
    {
LABEL_72:
      _MDPlistBytesAppendMultiplePlistBytes();
    }

    else
    {
      if (v46 <= 1)
      {
        v47 = 1;
      }

      else
      {
        v47 = v46;
      }

      v48 = (this + 1496);
      v49 = 1;
      while (v47 != v49)
      {
        v45 = *v48;
        *v48++ = 0;
        ++v49;
        if (v45)
        {
          goto LABEL_72;
        }
      }

      v45 = 0;
    }

    v50 = a1;
    do
    {
      v51 = v50;
      v50 = *(v50 + 80);
    }

    while (v50);
    if (*MEMORY[0x1E69E9AC8] <= 0x3FuLL)
    {
      ++sTotal;
    }

    v52 = *(v51 + 8);
    v53 = malloc_type_zone_calloc(queryZone, 1uLL, 0x40uLL, 0x5BAF1CEAuLL);
    if (!v53)
    {
      _log_fault_for_malloc_failure();
    }

    v53[1] = *(a1 + 48);
    *(v53 + 1) = si_querypipe_copy_jobid(a1);
    v54 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
    v55 = v54;
    v54[1] = 2;
    if (*(a1 + 72))
    {
      v54[1] = 1;
      *(v53 + 5) = v45;
      *(v53 + 4) = _MDStoreOIDArrayCreateMutableWithOids();
      v56 = a1;
      do
      {
        v57 = v56;
        v56 = *(v56 + 80);
      }

      while (v56);
      *v55 = (*(*(v57 + 8) + 80) << 32) | 0xC8D0001;
      *(v53 + 14) = 2;
      *v53 = 7;
    }

    else
    {
      *(v53 + 5) = v45;
      *v53 = 1;
      *(v53 + 4) = _MDStoreOIDArrayCreateMutableWithOids();
      v58 = a1;
      do
      {
        v59 = v58;
        v58 = *(v58 + 80);
      }

      while (v58);
      *v55 = (*(*(v59 + 8) + 80) << 32) | 0xADD0001;
    }

    _MDStoreOIDArraySetShouldUseMalloc();
    *(a1 + 72) = v37;
    if (!si_resultqueue_enqueue(v52, v53))
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v60 = *__error();
        v61 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v61, OS_LOG_TYPE_DEFAULT, "Attempt to append to queue failed. Releasing result batch", buf, 2u);
        }

        *__error() = v60;
      }

      SIResultBatchFree(v53);
    }
  }
}