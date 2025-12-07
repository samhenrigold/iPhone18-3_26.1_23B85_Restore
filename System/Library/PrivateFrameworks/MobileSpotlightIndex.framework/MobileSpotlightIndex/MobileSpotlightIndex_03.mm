uint64_t _fd_remove_locked(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = *(a1 + 8);
  v4 = *(a1 + 24);
  if (!v4)
  {
    if (!v2)
    {
      goto LABEL_19;
    }

    v12 = __si_assert_copy_extra_661(-1);
    v10 = v12;
    v13 = "";
    if (v12)
    {
      v13 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 466, "!obj->prev", v13);
    goto LABEL_29;
  }

  if (!v2)
  {
    v15 = __si_assert_copy_extra_661(-1);
    v10 = v15;
    v16 = "";
    if (v15)
    {
      v16 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 446, "obj->prev", v16);
    goto LABEL_29;
  }

  v5 = g_fd_list;
  v6 = *(g_fd_list + 16);
  if (v6 == a1)
  {
    *(g_fd_list + 16) = v4;
    v6 = v4;
  }

  *(v2 + 24) = v4;
  *(*(a1 + 24) + 16) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v7 = *v5;
  v8 = *v5 - 1;
  *v5 = v8;
  if (v6 == a1)
  {
    if (!v8)
    {
      *(v5 + 16) = 0;
      if (v3 != -1)
      {
        --*(v5 + 4);
      }

      goto LABEL_19;
    }

    v19 = __si_assert_copy_extra_661(-1);
    v10 = v19;
    v20 = "";
    if (v19)
    {
      v20 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 456, "g_fd_list->item_count==0", v20);
LABEL_29:
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

  if (!v8)
  {
    v17 = __si_assert_copy_extra_661(-1);
    v10 = v17;
    v18 = "";
    if (v17)
    {
      v18 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 459, "g_fd_list->item_count", v18);
    goto LABEL_29;
  }

  if (v3 != -1)
  {
    --*(v5 + 4);
    if (v7 <= 0)
    {
      v9 = __si_assert_copy_extra_661(-1);
      v10 = v9;
      v11 = "";
      if (v9)
      {
        v11 = v9;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 463, "g_fd_list->item_count>=0", v11);
      goto LABEL_29;
    }
  }

LABEL_19:
  *(a1 + 40) = -1;
  *(a1 + 8) = 0;
  return v3;
}

unint64_t v2_readVInt64(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 != -1)
  {
    v4 = v2 + 1;
    v5 = (a1 + v2);
    v6 = *(a1 + v2);
    result = *(a1 + v2);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      *a2 = v4;
      return result;
    }

    if (v6 > 0xBFu)
    {
      if (v6 > 0xDFu)
      {
        if (v6 > 0xEFu)
        {
          if (v6 > 0xF7u)
          {
            if (v6 > 0xFBu)
            {
              if (v6 > 0xFDu)
              {
                if (v6 == 255)
                {
                  if (v2 <= 0xFFFFFFFFFFFFFFF6)
                  {
                    result = *(a1 + v4);
                    v4 = v2 + 9;
                    goto LABEL_3;
                  }
                }

                else if (v2 <= 0xFFFFFFFFFFFFFFF7)
                {
                  result = (*(a1 + v4) << 48) | (v5[2] << 40) | (v5[3] << 32) | (v5[4] << 24) | (v5[5] << 16) | (v5[6] << 8) | v5[7];
                  v4 = v2 + 8;
                  goto LABEL_3;
                }
              }

              else if (v2 <= 0xFFFFFFFFFFFFFFF8)
              {
                result = ((result & 1) << 48) | (*(a1 + v4) << 40) | (v5[2] << 32) | (v5[3] << 24) | (v5[4] << 16) | (v5[5] << 8) | v5[6];
                v4 = v2 + 7;
                goto LABEL_3;
              }
            }

            else if (v2 <= 0xFFFFFFFFFFFFFFF9)
            {
              result = ((result & 3) << 40) | (*(a1 + v4) << 32) | (v5[2] << 24) | (v5[3] << 16) | (v5[4] << 8) | v5[5];
              v4 = v2 + 6;
              goto LABEL_3;
            }
          }

          else if (v2 <= 0xFFFFFFFFFFFFFFFALL)
          {
            result = ((result & 7) << 32) | (*(a1 + v4) << 24) | (v5[2] << 16) | (v5[3] << 8) | v5[4];
            v4 = v2 + 5;
            goto LABEL_3;
          }
        }

        else if (v2 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          result = ((result & 0xF) << 24) | (*(a1 + v4) << 16) | (v5[2] << 8) | v5[3];
          v4 = v2 + 4;
          goto LABEL_3;
        }
      }

      else if (v2 <= 0xFFFFFFFFFFFFFFFCLL)
      {
        result = ((result & 0x1F) << 16) | (*(a1 + v4) << 8) | v5[2];
        v4 = v2 + 3;
        goto LABEL_3;
      }
    }

    else if (v2 != -2)
    {
      v8 = *(a1 + v4) | ((result & 0x3F) << 8);
      v4 = v2 + 2;
      result = v8;
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t page_cache_fetch(unsigned int *a1, void **value_out, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!value_out)
  {
    return 22;
  }

  v10 = 0;
  v11 = 0;
  v3 = atomic_load(a1 + 62);
  if (v3 <= a3)
  {
    return 2;
  }

  v10 = *a1;
  v11 = a3;
  if (sdb_init_cache_onceToken != -1)
  {
    v9 = value_out;
    dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
    value_out = v9;
  }

  if (sdb_init_cache_status)
  {
    result = cache_get_and_retain(sdbLargeCacheArray, &v10, value_out);
    if ((result & 0xFFFFFFFD) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 1;
  }

  v6 = result;
  v7 = *__error();
  v8 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v13 = "page_cache_fetch";
    v14 = 1024;
    v15 = 443;
    v16 = 2048;
    v17 = a3;
    v18 = 1024;
    v19 = v6;
    _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: Large page cache fetch fail for pgnum:%ld, ret:%d", buf, 0x22u);
  }

  *__error() = v7;
  return v6;
}

uint64_t page_cache_copy_page(unsigned int *a1, const void **a2, unsigned int a3, char a4)
{
  __src = 0;
  if (page_cache_fetch(a1, &__src, a3))
  {
    return 2;
  }

  v9 = 2355089413;
  if ((a4 & 4) != 0 && *a2)
  {
    v10 = *(__src + 1);
    v11 = malloc_size(*a2);
    v12 = *a2;
    if (v11 >= v10)
    {
      goto LABEL_8;
    }

    free(v12);
    v9 = 3923908106;
  }

  v12 = malloc_type_valloc(*(__src + 1), v9);
  *a2 = v12;
LABEL_8:
  v13 = __src;
  if (v12)
  {
    v14 = *(__src + 2);
    if (v14 > *(__src + 1))
    {
      v18 = __si_assert_copy_extra_332();
      v19 = v18;
      v20 = "";
      if (v18)
      {
        v20 = v18;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "page-cache.c", 377, "dbp->used_bytes<=dbp->size", v20);
      free(v19);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    memcpy(v12, __src, v14);
    v13 = __src;
    v15 = atomic_load(a1 + 62);
    if (v15 <= a3)
    {
      return 0;
    }

    if (sdb_init_cache_onceToken != -1)
    {
      v21 = __src;
      dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
      v13 = v21;
    }

    result = 0;
    if (sdb_init_cache_status != 1)
    {
      return result;
    }

LABEL_19:
    v17 = result;
    cache_release_value(sdbLargeCacheArray, v13);
    return v17;
  }

  v16 = atomic_load(a1 + 62);
  if (v16 <= a3)
  {
    return 12;
  }

  if (sdb_init_cache_onceToken != -1)
  {
    v22 = __src;
    dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
    v13 = v22;
  }

  result = 12;
  if (sdb_init_cache_status)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sdb_key_hash(_DWORD *a1)
{
  HIDWORD(v1) = 1713515327 * *a1;
  LODWORD(v1) = HIDWORD(v1);
  v2 = (1107688271 * (v1 >> 21)) ^ 0x1F0A2598;
  HIDWORD(v1) = 2049437143 * a1[1];
  LODWORD(v1) = HIDWORD(v1);
  v3 = -1242805215 * (v1 >> 21);
  HIDWORD(v1) = v2;
  LODWORD(v1) = v2;
  v4 = (5 * (v1 >> 19) + 1390208809) ^ v3;
  HIDWORD(v1) = -565921073 * a1[2];
  LODWORD(v1) = HIDWORD(v1);
  v5 = -110370757 * (v1 >> 21);
  HIDWORD(v1) = v4;
  LODWORD(v1) = v4;
  v6 = (5 * (v1 >> 19) + 1390208809) ^ v5;
  HIDWORD(v1) = -757810265 * a1[3];
  LODWORD(v1) = HIDWORD(v1);
  v7 = v1 >> 21;
  HIDWORD(v1) = v6;
  LODWORD(v1) = v6;
  v8 = -2048144789 * ((1256834237 * v7) ^ (5 * (v1 >> 19) + 1390208809) ^ 0x10);
  return (-1028477387 * (v8 ^ (v8 >> 13))) ^ ((-1028477387 * (v8 ^ (v8 >> 13))) >> 16);
}

ssize_t fd_pread(_DWORD *a1, void *a2, size_t a3, off_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v8 = _fd_acquire_fd(a1, &v16);
  v9 = v8;
  if (v8 == -1 || (v10 = prot_pread(v8, a2, a3, a4), _fd_release_fd(a1, v9, 0, v16), v10 == -1))
  {
    bzero(v31, 0x400uLL);
    v11 = *__error();
    v12 = *__error();
    v13 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = fd_realpath(a1, v31);
      if (!v15)
      {
        v15 = fd_name(a1, v31, 0x400uLL);
        if (!v15)
        {
          v15 = "";
        }
      }

      *buf = 136316674;
      v18 = "fd_pread";
      v19 = 1024;
      v20 = 650;
      v21 = 1024;
      v22 = v9;
      v23 = 2080;
      v24 = v15;
      v25 = 2048;
      v26 = a4;
      v27 = 1024;
      v28 = a3;
      v29 = 1024;
      v30 = v11;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: pread(%d %s, o:%lx, s:%d) err:%d", buf, 0x38u);
    }

    *__error() = v12;
    *__error() = v11;
    return -1;
  }

  return v10;
}

ssize_t prot_pread(uint64_t __fd, void *__buf, size_t __nbyte, off_t a4)
{
  while (1)
  {
    result = pread(__fd, __buf, __nbyte, a4);
    if (result != -1)
    {
      break;
    }

    v9 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v10 = __error();
    if (((*(v9 + 16))(v9, __fd, *v10, 4) & 1) == 0)
    {
      return -1;
    }
  }

  return result;
}

uint64_t db2_page_uncompress_swap(uint64_t a1, unsigned int *a2, void *a3, void *(*a4)(int a1, size_t size))
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = 22;
  if (!a2 || !a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 != 1684172850 && v5 != 846226020)
  {
    return 22;
  }

  v7 = a2[3];
  v8 = bswap32(v7);
  if (v5 == 846226020)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(a1 + 4);
  if ((v9 & 8) == 0)
  {
    if ((v10 & 0x80) == 0 || v5 != 1684172850 && v5 != 846226020)
    {
      goto LABEL_63;
    }

    if (v5 == 846226020)
    {
      if (v7 >> 28)
      {
        v7 = a2[2];
        v11 = bswap32(v7);
LABEL_56:
        if (v11 >= 0x21)
        {
          v37 = a3;
          v38 = a2;
          v39 = a2 + 8;
          for (i = 32; i < v11; i += v41)
          {
            *v39 = bswap32(*v39);
            v41 = strlen(v39 + 4) + 4;
            v39 = (v39 + v41);
          }

          a2 = v38;
          v5 = *v38;
          v7 = v38[2];
          v8 = bswap32(v38[3]);
          a3 = v37;
        }

        a2[5] = bswap32(a2[5]);
        v42 = bswap32(v5);
        v43 = a2[1];
        goto LABEL_62;
      }
    }

    else if ((v7 & 0xF0) != 0)
    {
      v7 = a2[2];
      v11 = v7;
      goto LABEL_56;
    }

    v42 = bswap32(v5);
    v43 = a2[1];
    v7 = a2[2];
LABEL_62:
    *a2 = v42;
    a2[1] = bswap32(v43);
    a2[2] = bswap32(v7);
    a2[3] = v8;
    a2[4] = bswap32(a2[4]);
    LOBYTE(v7) = v8;
LABEL_63:
    *a3 = 0;
    v44 = 4;
    if ((v7 & 4) == 0)
    {
      v44 = 1;
    }

    v45 = a2[v44];
    a2[1] = v45;
    if (a2[2] <= v45)
    {
      return 0;
    }

    v46 = a2;
    v47 = *__error();
    v48 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v60 = v46[1];
      v59 = v46[2];
      *buf = 136316162;
      *&buf[4] = "db2_page_uncompress_swap";
      *&buf[12] = 1024;
      *&buf[14] = 3297;
      *&buf[18] = 2048;
      *&buf[20] = v9;
      *&buf[28] = 2048;
      *&buf[30] = v59;
      *&buf[38] = 2048;
      *&buf[40] = v60;
      _os_log_error_impl(&dword_1C278D000, v48, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap: invalid page size, flags:0x%lx, used_bytes:%lu, size:%ld", buf, 0x30u);
    }

    *__error() = v47;
    return 22;
  }

  if ((v10 & 0x80) != 0)
  {
    *a2 = bswap32(v5);
    v12 = vrev32_s8(*(a2 + 1));
    *(a2 + 1) = v12;
    v13 = bswap32(a2[4]);
    a2[3] = v8;
    a2[4] = v13;
  }

  else
  {
    v12 = *(a2 + 1);
    v13 = a2[4];
  }

  v14 = v12.u32[1];
  if (v12.i32[1] > 0x13u)
  {
    v23 = v12.i32[0];
    v24 = (4 * (v12.i32[0] - v12.i32[1]));
    v16 = a3;
    LODWORD(v25) = v24 + v13;
    if (__CFADD__(v24, v13))
    {
      v17 = a2;
      v26 = *__error();
      v27 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "db2_page_uncompress_swap";
        *&buf[12] = 1024;
        *&buf[14] = 3324;
        *&buf[18] = 2048;
        *&buf[20] = v9;
        *&buf[28] = 2048;
        *&buf[30] = v24 + v13;
        *&buf[38] = 2048;
        *&buf[40] = v13;
        *&buf[48] = 2048;
        *&buf[50] = v24;
        _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap: invalid page, flags:0x%lx, uncompressed_size:%lu, uncompressed_used_bytes:%lu, compression_size_estimate:%lu", buf, 0x3Au);
      }

      v28 = __error();
      v21 = 0;
      v22 = 0;
      *v28 = v26;
      goto LABEL_30;
    }

    v83 = a2;
    if (v25 <= v12.i32[0])
    {
      v25 = v12.u32[0];
    }

    else
    {
      v25 = v25;
    }

    if (v25 < 0x14 || ((v25 + 4095) & 0xFFFFF000) < v25)
    {
      v34 = *__error();
      v35 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "db2_page_uncompress_swap";
        *&buf[12] = 1024;
        *&buf[14] = 3334;
        *&buf[18] = 2048;
        *&buf[20] = v9;
        *&buf[28] = 2048;
        *&buf[30] = v25;
        *&buf[38] = 2048;
        *&buf[40] = v13;
        _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap: invalid page, flags:0x%lx, uncompressed_size:%lu, uncompressed_used_bytes:%lu", buf, 0x30u);
      }

      v36 = __error();
      v21 = 0;
      v22 = 0;
      *v36 = v34;
      v29 = 22;
      goto LABEL_53;
    }

    v82 = (v25 - 20);
    if (a4 && ((v22 = a4(a1, (v25 + 4095) & 0xFFFFF000), a4 == dst_malloc) ? (v51 = v22 == 0) : (v51 = 1), v51 ? (v21 = 0) : (v21 = 1), v22))
    {
      v30 = a1;
      v17 = v83;
    }

    else
    {
      v22 = malloc_type_valloc((v25 + 4095) & 0xFFFFF000, 0xAAA043B4uLL);
      v21 = 1;
      if (!v22)
      {
        v29 = 12;
LABEL_53:
        v17 = v83;
        goto LABEL_31;
      }

      v17 = v83;
      v30 = a1;
    }

    destLen = 0;
    if (v14 == 20)
    {
      v52 = 20;
      goto LABEL_114;
    }

    v53 = &v17[1].u8[4];
    v54 = (v14 - 20);
    v55 = v22 + 20;
    v81 = v22;
    if ((v9 & 0x1000) != 0)
    {
      v61 = fast_uncompress(v22 + 20, v82, v53, v54);
      if (v61)
      {
        goto LABEL_113;
      }

      *(&v79 + 1) = v54;
      v58 = "lz4";
    }

    else
    {
      *(&v79 + 1) = v54;
      if ((v9 & 0x2000) == 0)
      {
        destLen = v82;
        v56 = uncompress(v22 + 20, &destLen, v53, v54);
        if (v56)
        {
          v57 = v56;
          v58 = "deflate";
LABEL_105:
          v69 = *__error();
          v70 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316930;
            *&buf[4] = "db2_page_uncompress_swap";
            *&buf[12] = 1024;
            *&buf[14] = 3439;
            *&buf[18] = 2080;
            *&buf[20] = v58;
            *&buf[28] = 1024;
            *&buf[30] = v57;
            *&buf[34] = 2048;
            *&buf[36] = v9;
            *&buf[44] = 2048;
            *&buf[46] = *(&v79 + 1);
            *&buf[54] = 2048;
            *&buf[56] = v82;
            v86 = 2048;
            v87 = destLen;
            _os_log_error_impl(&dword_1C278D000, v70, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap: uncompress(%s) failed, status:%d, flags:0x%lx, src_size:%lu, out_size:%lu, uncompressed_used_bytes:%lu", buf, 0x4Au);
          }

          *__error() = v69;
          if (v57 == -4)
          {
            v29 = 12;
          }

          else
          {
            v29 = 22;
          }

          v17 = v83;
          v30 = a1;
          v22 = v81;
          goto LABEL_32;
        }

        v61 = destLen;
LABEL_113:
        v52 = v61 + 20;
        v17 = v83;
        v30 = a1;
        v22 = v81;
LABEL_114:
        destLen = v52;
        v71 = v13;
        if (v52 == v13)
        {
          *v22 = 1684172850;
          *(v22 + 1) = v25;
          v72 = v9 & 0xFFFFFFF3 | 4;
          *(v22 + 2) = v52;
          *(v22 + 3) = v72;
          *(v22 + 4) = v23;
          if ((*(v30 + 4) & 0x80) != 0)
          {
            *v22 = 846226020;
            *(v22 + 1) = bswap32(v25);
            *(v22 + 2) = bswap32(v52);
            *(v22 + 3) = bswap32(v72);
            *(v22 + 4) = bswap32(v23);
            v73 = v22;
            db2_swap_page(v22);
            v22 = v73;
            v30 = a1;
            v17 = v83;
          }

          v29 = 0;
        }

        else
        {
          v74 = v22;
          v75 = *__error();
          v76 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "db2_page_uncompress_swap";
            *&buf[12] = 1024;
            *&buf[14] = 3451;
            *&buf[18] = 2048;
            *&buf[20] = destLen;
            *&buf[28] = 2048;
            *&buf[30] = v71;
            _os_log_error_impl(&dword_1C278D000, v76, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap: uncompressed size mismatch (%lu/%lu)", buf, 0x26u);
          }

          *__error() = v75;
          v29 = 22;
          v17 = v83;
          v30 = a1;
          v22 = v74;
        }

        goto LABEL_32;
      }

      *&v79 = v53;
      v62 = compression_decode_scratch_buffer_size(COMPRESSION_LZFSE);
      if (v62 < 0xFA01)
      {
        if (v62)
        {
          MEMORY[0x1EEE9AC00](v63);
          v80 = v55;
          v67 = &v78 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v67, v66);
          v61 = compression_decode_buffer(v80, v82, v79, v54, v67, COMPRESSION_LZFSE);
          if (v61)
          {
            goto LABEL_113;
          }
        }
      }

      else
      {
        memset(buf, 0, 40);
        if (compression_stream_init(buf, COMPRESSION_STREAM_DECODE, COMPRESSION_LZFSE) != COMPRESSION_STATUS_ERROR)
        {
          v80 = v55;
          MEMORY[0x1EEE9AC00](v64);
          bzero(v77, 0xFA00uLL);
          v61 = 0;
          *buf = v77;
          *&buf[8] = 64000;
          *&buf[16] = v79;
          while (1)
          {
            v65 = compression_stream_process(buf, 1);
            if (v65)
            {
              break;
            }

            memcpy(&v80[v61], v77, 0xFA00uLL);
            *buf = v77;
            *&buf[8] = 64000;
            v61 += 64000;
          }

          if (v65 == COMPRESSION_STATUS_ERROR)
          {
            v61 = 0;
          }

          else if (v65 == COMPRESSION_STATUS_END)
          {
            v68 = 64000 - *&buf[8];
            memcpy(&v80[v61], v77, 64000 - *&buf[8]);
            v61 += v68;
          }

          compression_stream_destroy(buf);
          if (v61)
          {
            goto LABEL_113;
          }
        }
      }

      v58 = "lzfse";
    }

    v57 = -3;
    goto LABEL_105;
  }

  v16 = a3;
  v17 = a2;
  v18 = *__error();
  v19 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *&buf[4] = "db2_page_uncompress_swap";
    *&buf[12] = 1024;
    *&buf[14] = 3316;
    *&buf[18] = 2048;
    *&buf[20] = v9;
    *&buf[28] = 2048;
    *&buf[30] = v14;
    *&buf[38] = 2048;
    *&buf[40] = v13;
    _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap: invalid page, flags:0x%lx, used_bytes:%lu, uncompressed_used_bytes:%ld", buf, 0x30u);
  }

  v20 = __error();
  v21 = 0;
  v22 = 0;
  *v20 = v18;
LABEL_30:
  v29 = 22;
LABEL_31:
  v30 = a1;
LABEL_32:
  if ((*(v30 + 4) & 0x80) != 0)
  {
    *v17 = vrev32q_s8(*v17);
    v17[1].i32[0] = bswap32(v17[1].u32[0]);
  }

  if (v29)
  {
    v31 = v21;
  }

  else
  {
    v31 = 0;
  }

  if (v29)
  {
    v32 = 0;
  }

  else
  {
    v32 = v22;
  }

  if (v31 == 1)
  {
    free(v22);
    v32 = 0;
  }

  *v16 = v32;
  return v29;
}

size_t fast_uncompress(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    madvise(a1, a2, 3);

    return compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4_RAW);
  }

  return result;
}

void page_cache_add(unsigned int *a1, _DWORD **a2, unsigned int a3, char a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (!*a2)
  {
    return;
  }

  v5 = (v4[3] & 0xC) != 0 && (v4[3] & 0x1000) == 0;
  if (!v5)
  {
    return;
  }

  v8 = atomic_load(a1 + 62);
  do
  {
    if (v8 > a3)
    {
      break;
    }

    v9 = v8;
    atomic_compare_exchange_strong(a1 + 62, &v9, a3 + 1);
    v5 = v9 == v8;
    v8 = v9;
  }

  while (!v5);
  key = *a1;
  v22 = a3;
  v10 = (v4[2] + *MEMORY[0x1E69E9AC8] - 1) & ~*MEMORY[0x1E69E9AB8];
  v11 = malloc_default_purgeable_zone();
  v12 = malloc_type_zone_valloc(v11, v10, 0x1000040451B5BE8uLL);
  memcpy(v12, v4, v4[2]);
  v12[1] = v10;
  if (sdb_init_cache_onceToken != -1)
  {
    dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
  }

  if (sdb_init_cache_status == 1)
  {
    v13 = cache_set_and_retain(sdbLargeCacheArray, &key, v12, v10);
  }

  else
  {
    v13 = 1;
  }

  v14 = a4;
  if (dword_1EBF46AE8 >= 5)
  {
    v16 = v13;
    v20 = *__error();
    v17 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v4[1];
      v19 = v4[2];
      *buf = 67110656;
      v24 = v16;
      v25 = 2048;
      v26 = key;
      v27 = 1024;
      v28 = v22;
      v29 = 2048;
      v30 = v12;
      v31 = 1024;
      v32 = v18;
      v33 = 1024;
      v34 = v19;
      v35 = 1024;
      v36 = v10;
      _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "Cache add %d %p %d %p %d %d %d", buf, 0x34u);
    }

    *__error() = v20;
    v14 = a4;
    if (v16)
    {
      goto LABEL_17;
    }
  }

  else if (v13)
  {
LABEL_17:
    v15 = malloc_default_purgeable_zone();
    malloc_zone_free(v15, v12);
    return;
  }

  if (v14)
  {
    free(v4);
    *a2 = v12;
  }

  else
  {
    if (sdb_init_cache_onceToken != -1)
    {
      dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
    }

    if (sdb_init_cache_status == 1)
    {
      cache_release_value(sdbLargeCacheArray, v12);
    }
  }
}

BOOL is_valid_xpc_type(const char *a1, const _xpc_type_s *a2, const _xpc_type_s *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1C6921B10](a2);
  v7 = v6;
  if (v6 != a3)
  {
    if (v6 == MEMORY[0x1E69E9E98])
    {
      v11 = MEMORY[0x1E69E9E18];
      if (a2 == MEMORY[0x1E69E9E18])
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          return v7 == a3;
        }

        v15 = 134218240;
        v16 = v11;
        v17 = 2048;
        name = a1;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "### Connection interrupted %p %p";
      }

      else
      {
        v12 = MEMORY[0x1E69E9E20];
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
        if (a2 == v12)
        {
          if (!v13)
          {
            return v7 == a3;
          }

          v15 = 134218240;
          v16 = v12;
          v17 = 2048;
          name = a1;
          v8 = MEMORY[0x1E69E9C10];
          v9 = "### Connection invalid %p %p";
        }

        else
        {
          if (!v13)
          {
            return v7 == a3;
          }

          v15 = 134218240;
          v16 = a2;
          v17 = 2048;
          name = a1;
          v8 = MEMORY[0x1E69E9C10];
          v9 = "### Connection error %p %p";
        }
      }

      v10 = 22;
      goto LABEL_14;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218754;
      v16 = v7;
      v17 = 2080;
      name = xpc_type_get_name(v7);
      v19 = 2048;
      v20 = a3;
      v21 = 2080;
      v22 = xpc_type_get_name(a3);
      v8 = MEMORY[0x1E69E9C10];
      v9 = "### Connection type %p %s not %p %s";
      v10 = 42;
LABEL_14:
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, v9, &v15, v10);
    }
  }

  return v7 == a3;
}

uint64_t __si_xpc_send_msg_block_invoke(uint64_t a1, void *a2)
{
  if (is_valid_xpc_type(*(a1 + 40), a2, MEMORY[0x1E69E9E80]))
  {
    xpc_dictionary_get_int64(a2, "status");
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

int *___si_mobile_journal_notify_new_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "### skg journal_new result %lld", &v7, 0xCu);
  }

  result = __error();
  *result = v4;
  return result;
}

void _si_dump_index_state(uint64_t a1, int a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AF8 >= a2)
  {
    v4 = malloc_type_malloc(*(a1 + 2484) + 1, 0x76B71BC9uLL);
    v5 = malloc_type_malloc(*(a1 + 2486) + 1, 0xF50722CAuLL);
    v6 = v5;
    if (*(a1 + 2484))
    {
      v7 = 0;
      v8 = a1 + 2488;
      do
      {
        v9 = "unknown";
        if ((*(v8 + v7) - 1) <= 3u)
        {
          v9 = off_1E8192938[(*(v8 + v7) - 1)];
        }

        v10 = v7 + 1;
        v4[v7] = *v9;
        v7 = v10;
      }

      while (v10 < *(a1 + 2484));
    }

    else
    {
      v10 = 0;
    }

    v4[v10] = 0;
    if (*(a1 + 2486))
    {
      v11 = 0;
      v12 = a1 + 2488;
      do
      {
        v13 = "unknown";
        if ((*(v12 + v11 + *(a1 + 2484)) - 1) <= 3u)
        {
          v13 = off_1E8192938[(*(v12 + v11 + *(a1 + 2484)) - 1)];
        }

        v14 = v11 + 1;
        *(v5 + v11) = *v13;
        v11 = v14;
      }

      while (v14 < *(a1 + 2486));
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    *(v5 + v15) = 0;
    v33 = 0;
    if (fd_setDir(*(a1 + 32), &v33))
    {
      v16 = *__error();
      v17 = _SILogForLogForCategory(11);
      v18 = v17;
      if (a2 == 2)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          if ((*(a1 + 2481) - 1) > 3u)
          {
            v19 = "unknown";
          }

          else
          {
            v19 = off_1E8192938[(*(a1 + 2481) - 1)];
          }

          if ((*(a1 + 2482) - 1) > 3u)
          {
            v28 = "unknown";
          }

          else
          {
            v28 = off_1E8192938[(*(a1 + 2482) - 1)];
          }

          v29 = *(a1 + 2480);
          if ((*(a1 + 2483) - 1) > 3u)
          {
            v30 = "unknown";
          }

          else
          {
            v30 = off_1E8192938[(*(a1 + 2483) - 1)];
          }

          v31 = *(a1 + 2484);
          v32 = *(a1 + 2486);
          *buf = 136317698;
          v35 = "_si_dump_index_state";
          v36 = 1024;
          v37 = 35024;
          v38 = 2048;
          v39 = a1;
          v40 = 1024;
          *v41 = v29;
          *&v41[4] = 2080;
          *&v41[6] = v19;
          *&v41[14] = 2080;
          *&v41[16] = v28;
          v42 = 2080;
          v43 = v30;
          v44 = 1024;
          v45 = v31;
          v46 = 2080;
          v47 = v4;
          v48 = 1024;
          v49 = v32;
          v50 = 2080;
          v51 = v6;
          _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: (%p ver:%d main:%s sdb:%s path:%s scan:%d %s, live:%d %s)", buf, 0x60u);
        }
      }

      else
      {
        v20 = 2 * (dword_1EBF46AF8 < 4);
        if (os_log_type_enabled(v17, v20))
        {
          if ((*(a1 + 2481) - 1) > 3u)
          {
            v21 = "unknown";
          }

          else
          {
            v21 = off_1E8192938[(*(a1 + 2481) - 1)];
          }

          if ((*(a1 + 2482) - 1) > 3u)
          {
            v22 = "unknown";
          }

          else
          {
            v22 = off_1E8192938[(*(a1 + 2482) - 1)];
          }

          v23 = *(a1 + 2480);
          if ((*(a1 + 2483) - 1) > 3u)
          {
            v24 = "unknown";
          }

          else
          {
            v24 = off_1E8192938[(*(a1 + 2483) - 1)];
          }

          v25 = *(a1 + 2484);
          v26 = *(a1 + 2486);
          *buf = 134220034;
          v35 = a1;
          v36 = 1024;
          v37 = v23;
          v38 = 2080;
          v39 = v21;
          v40 = 2080;
          *v41 = v22;
          *&v41[8] = 2080;
          *&v41[10] = v24;
          *&v41[18] = 1024;
          *&v41[20] = v25;
          v42 = 2080;
          v43 = v4;
          v44 = 1024;
          v45 = v26;
          v46 = 2080;
          v47 = v6;
          _os_log_impl(&dword_1C278D000, v18, v20, "(%p ver:%d main:%s sdb:%s path:%s scan:%d %s, live:%d %s)", buf, 0x50u);
        }
      }

      *__error() = v16;
      v27 = v33;
      MEMORY[0x1C6921200](v33);
      if ((v27 & 0x80000000) == 0)
      {
        close(v27);
      }
    }

    free(v6);
    free(v4);
  }
}

uint64_t prot_pwrite_guarded(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = 0;
  do
  {
    while (1)
    {
      v10 = guarded_pwrite_np();
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      v9 += v10;
      v13 = a4 > v10;
      a4 -= v10;
      if (!v13)
      {
        return v9;
      }

      a3 += v10;
      a5 += v10;
    }

    v11 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v12 = __error();
  }

  while (((*(v11 + 16))(v11, a1, *v12, 5) & 1) != 0);
  return -1;
}

void serialize_to_state(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a4 = 1;
  v6 = *(a1 + 8);
  if (a3)
  {
    if (v6)
    {
      v13 = __si_assert_copy_extra_661(-1);
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34759, "syncSet->indexCount == 0", v15);
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

    v8 = (a2 + 8);
    v7 = *(a2 + 8);
    *(a4 + 6) = v7;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v9 = *(a4 + 4);
    v10 = 1;
  }

  else
  {
    v9 = 0;
    *(a4 + 4) = v6;
    v8 = (a2 + 8);
    v7 = *(a2 + 8);
    *(a4 + 6) = v7;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v10 = v6 == 0;
  }

  v25 = v9;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v18 = __serialize_to_state_block_invoke;
  v19 = &unk_1E8192878;
  v20 = &v22;
  v21 = a4;
  if (v10)
  {
LABEL_11:
    if (v7)
    {
      v12 = 0;
      do
      {
        if (!(v18)(v17, *(*a2 + 8 * v12), 1))
        {
          break;
        }

        ++v12;
      }

      while (v12 < *v8);
    }
  }

  else
  {
    v11 = 0;
    while ((v18)(v17, *(*a1 + 8 * v11), 0))
    {
      if (++v11 >= *(a1 + 8))
      {
        if (!a2)
        {
          break;
        }

        v7 = *v8;
        goto LABEL_11;
      }
    }
  }

  _Block_object_dispose(&v22, 8);
}

uint64_t si_store_index_state(int a1, char *a2, int a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v11 = x_openat(a1, a2, 536872449, a4, a5, a6, a7, a8, 384);
  v12 = v11;
  if (a3)
  {
    fcntl(v11, 64, 3);
  }

  if (v12 == -1)
  {
    return *__error();
  }

  v13 = prot_pwrite(v12, a5, 0x1000uLL, 0);
  if (v13 == 4096)
  {
    prot_fsync(v12, v9);
    v16 = *__error();
    v17 = _SILogForLogForCategory(11);
    v18 = 2 * (dword_1EBF46AF8 < 4);
    if (os_log_type_enabled(v17, v18))
    {
      if ((a5[1] - 1) > 3u)
      {
        v19 = "unknown";
      }

      else
      {
        v19 = off_1E8192938[(a5[1] - 1)];
      }

      *buf = 136315138;
      v23 = v19;
      _os_log_impl(&dword_1C278D000, v17, v18, "write state:%s", buf, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    v14 = v13;
    if (v13 == -1)
    {
      v15 = *__error();
    }

    else
    {
      v15 = 22;
    }

    v16 = *__error();
    v20 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v23 = "si_store_index_state";
      v24 = 1024;
      v25 = 34741;
      v26 = 1024;
      v27 = v12;
      v28 = 2048;
      v29 = v14;
      v30 = 1024;
      v31 = v15;
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: write index state fd:%d rs:%ld error:%d", buf, 0x28u);
    }
  }

  *__error() = v16;
  close(v12);
  return v15;
}

uint64_t __serialize_to_state_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 15201);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  v5 = *(a1 + 40) + v4;
  *(v3 + 24) = v4 + 1;
  *(v5 + 8) = v2;
  return 1;
}

uint64_t x_openat(int a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  if ((a3 & 0x200) != 0)
  {
    v12 = a9;
  }

  else
  {
    v12 = 0;
  }

  result = openat(a1, a2, a3, a4, a5, a6, a7, a8, v12);
  if (result == -1)
  {
    v14 = __error();
    result = 0xFFFFFFFFLL;
    if ((a3 & 0x20000000) != 0 && *v14 == 22)
    {
      return openat(a1, a2, a3 & 0xDFFFFFFF, v12);
    }
  }

  return result;
}

uint64_t fd_pwrite(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *__error() = 2;
    return -1;
  }

  if (*(a1 + 96))
  {
    v17 = __si_assert_copy_extra_661(-1);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 664, "!obj->forbidder", v19);
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

  v21 = 0;
  v8 = _fd_acquire_fd(a1, &v21);
  v9 = v8;
  if (v8 == -1)
  {
    v12 = *__error();
LABEL_9:
    bzero(v36, 0x400uLL);
    v13 = *__error();
    v14 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = fd_realpath(a1, v36);
      if (!v16)
      {
        v16 = fd_name(a1, v36, 0x400uLL);
        if (!v16)
        {
          v16 = "";
        }
      }

      *buf = 136316674;
      v23 = "fd_pwrite";
      v24 = 1024;
      v25 = 680;
      v26 = 1024;
      v27 = v9;
      v28 = 2080;
      v29 = v16;
      v30 = 2048;
      v31 = a4;
      v32 = 1024;
      v33 = a3;
      v34 = 1024;
      v35 = v12;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: pwrite(%d %s, o:%lx, s:%d) err:%d", buf, 0x38u);
    }

    *__error() = v13;
    *__error() = v12;
    return -1;
  }

  v10 = prot_pwrite_guarded(v8, &v21, a2, a3, a4);
  if (v10 == -1)
  {
    v12 = *__error();
    _fd_release_fd(a1, v9, 0, v21);
    goto LABEL_9;
  }

  v11 = v10;
  _fd_release_fd(a1, v9, 0, v21);
  return v11;
}

uint64_t prot_fsync(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    while (1)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v4 = fcntl(a1, 85);
      if (v4 != -1)
      {
        v5 = v4;
        goto LABEL_17;
      }

      if (*__error() == 25 || *__error() == 45)
      {
        *__error() = 0;
        v5 = fcntl(a1, 51);
      }

      else
      {
        v5 = 0xFFFFFFFFLL;
      }

      if (v5 != -1)
      {
        break;
      }

      v6 = g_prot_error_callback;
      if (!g_prot_error_callback)
      {
        break;
      }

      v7 = __error();
      if (((*(v6 + 16))(v6, a1, *v7, 2) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (v5 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_13:
    while (1)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v5 = fsync(a1);
      if (v5 != -1)
      {
        break;
      }

      v8 = g_prot_error_callback;
      if (!g_prot_error_callback)
      {
        break;
      }

      v9 = __error();
      if (((*(v8 + 16))(v8, a1, *v9, 3) & 1) == 0)
      {
        v5 = 0xFFFFFFFFLL;
        break;
      }
    }
  }

LABEL_17:
  v10 = *__error();
  v11 = CFAbsoluteTimeGetCurrent();
  bzero(v24, 0x400uLL);
  v12 = *__error();
  v13 = _SILogForLogForCategory(0);
  v14 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v11 - Current;
    v16 = fcntl(a1, 50, v24);
    if (v24[0])
    {
      v17 = v16 < 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = "";
    if (!v17)
    {
      v18 = v24;
    }

    *buf = 134218242;
    v21 = v15;
    v22 = 2080;
    v23 = v18;
    _os_log_impl(&dword_1C278D000, v13, v14, "fsync time %f - %s\n", buf, 0x16u);
  }

  *__error() = v12;
  *__error() = v10;
  return v5;
}

uint64_t prot_pwrite(uint64_t __fd, char *__buf, size_t __nbyte, off_t a4)
{
  v8 = 0;
  do
  {
    while (1)
    {
      v9 = pwrite(__fd, __buf, __nbyte, a4);
      if ((v9 & 0x8000000000000000) != 0)
      {
        break;
      }

      v8 += v9;
      v12 = __nbyte > v9;
      __nbyte -= v9;
      if (!v12)
      {
        return v8;
      }

      __buf += v9;
      a4 += v9;
    }

    v10 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v11 = __error();
  }

  while (((*(v10 + 16))(v10, __fd, *v11, 5) & 1) != 0);
  return -1;
}

uint64_t getUniquedDBFValue(uint64_t a1, unsigned int a2, _DWORD *a3, __n128 a4, int a5)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = a3[2];
  MEMORY[0x1EEE9AC00](a4);
  v11 = v26 - ((v10 + 15) & 0x1FFFFFFF0);
  bzero(v11, v10);
  if (a2 == 4)
  {
    v12 = a3[1];
    v13 = v12 >> 28;
    if (v12 >> 28)
    {
      v14 = 5;
    }

    else
    {
      v14 = 4;
    }

    if (v12 >= 0x200000)
    {
      v15 = v14;
    }

    else
    {
      v15 = 3;
    }

    if (v12 >= 0x4000)
    {
      v16 = v15;
    }

    else
    {
      v16 = 2;
    }

    if (v12 >= 0x80)
    {
      v17 = v16;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17 + v9;
    if (v18 >> 28)
    {
      *v11 = -16;
      *(v11 + 1) = v18;
      v19 = 5;
      if (v13)
      {
        goto LABEL_40;
      }
    }

    else if (v18 >= 0x200000)
    {
      *v11 = HIBYTE(v18) | 0xE0;
      v11[1] = BYTE2(v18);
      v11[2] = BYTE1(v18);
      v11[3] = v18;
      v19 = 4;
      if (v13)
      {
        goto LABEL_40;
      }
    }

    else if (v18 >= 0x4000)
    {
      *v11 = BYTE2(v18) | 0xC0;
      v11[1] = BYTE1(v18);
      v11[2] = v18;
      v19 = 3;
      if (v13)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v18 < 0x80)
      {
        *v11 = v18;
        v19 = 1;
        if (v13)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

      *v11 = BYTE1(v18) | 0x80;
      v11[1] = v18;
      v19 = 2;
      if (v13)
      {
LABEL_40:
        v23 = &v11[v19];
        *v23 = -16;
        *(v23 + 1) = v12;
        v20 = v19 + 5;
        goto LABEL_41;
      }
    }

LABEL_32:
    if (v12 >= 0x200000)
    {
      v21 = &v11[v19];
      *v21 = HIBYTE(v12) | 0xE0;
      v21[1] = BYTE2(v12);
      v21[2] = BYTE1(v12);
      v20 = v19 + 4;
      v21[3] = v12;
    }

    else if (v12 >= 0x4000)
    {
      v22 = &v11[v19];
      *v22 = BYTE2(v12) | 0xC0;
      v22[1] = BYTE1(v12);
      v20 = v19 + 3;
      v22[2] = v12;
    }

    else if (v12 >= 0x80)
    {
      v25 = &v11[v19];
      *v25 = BYTE1(v12) | 0x80;
      v20 = v19 + 2;
      v25[1] = v12;
    }

    else
    {
      v20 = v19 + 1;
      v11[v19] = v12;
    }

    goto LABEL_41;
  }

  if (v9 >> 28)
  {
    *v11 = -16;
    *(v11 + 1) = v9;
    v20 = 5;
  }

  else if (v9 >= 0x200000)
  {
    *v11 = BYTE3(v9) | 0xE0;
    v11[1] = BYTE2(v9);
    v11[2] = BYTE1(v9);
    v11[3] = v9;
    v20 = 4;
  }

  else if (v9 >= 0x4000)
  {
    *v11 = BYTE2(v9) | 0xC0;
    v11[1] = BYTE1(v9);
    v11[2] = v9;
    v20 = 3;
  }

  else if (v9 >= 0x80)
  {
    *v11 = BYTE1(v9) | 0x80;
    v11[1] = v9;
    v20 = 2;
  }

  else
  {
    *v11 = v9;
    v20 = 1;
  }

LABEL_41:
  memcpy(&v11[v20], a3 + 13, v9);
  return _get_id_for_string(a1, a2, v11, v9 + v20, a5, 0);
}

uint64_t si_indexForDocId(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 1384);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = *v2;
    v5 = v3 + 1;
    v6 = (v4 + 8 * v3 - 8);
    while (1)
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v7 + 80);
        if (v8 < a2 && v8 + *(v7 + 68) > a2)
        {
          break;
        }
      }

      --v5;
      --v6;
      if (v5 <= 1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = *(a1 + 1392);
    v10 = *(v9 + 2);
    if (v10)
    {
      v11 = *v9;
      v12 = v10 + 1;
      for (i = (v11 + 8 * v10 - 8); ; --i)
      {
        v7 = *i;
        if (*i)
        {
          v14 = *(v7 + 80);
          if (v14 < a2 && v14 + *(v7 + 68) > a2)
          {
            break;
          }
        }

        if (--v12 <= 1)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t _skipIndexForUpdate(const __CFDictionary *a1, const __CFString *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(a1);
  if (CFStringCompare(a2, @"com.apple.searchd", 0))
  {
    v6 = 1;
  }

  else
  {
    v6 = (Count - 3) > 1;
  }

  if (!v6)
  {
    v33[1] = v33;
    MEMORY[0x1EEE9AC00](v5);
    v7 = (v33 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v7, 8 * Count);
    MEMORY[0x1EEE9AC00](v8);
    v9 = v7;
    bzero(v7, 8 * Count);
    CFDictionaryGetKeysAndValues(a1, v7, v7);
    v10 = 0;
    v11 = 0;
    v12 = *MEMORY[0x1E695E738];
    do
    {
      if (*v9 != v12)
      {
        v13 = CFGetTypeID(*v9);
        if (v13 == CFDataGetTypeID() && CFStringHasPrefix(*v7, @"_kMDItemStateInfo"))
        {
          ++v11;
        }

        else
        {
          if (v10 >= 2)
          {
            goto LABEL_15;
          }

          ++v10;
        }
      }

      ++v7;
      ++v9;
      --Count;
    }

    while (Count);
    if (v11 && v10 == 2)
    {
      return 1;
    }
  }

LABEL_15:
  if (CFDictionaryGetValue(a1, @"_kMDItemRenderDate") || CFDictionaryGetValue(a1, @"_kMDItemEngagementDate") || CFDictionaryGetValue(a1, @"_kMDItemLastSpotlightEngagementQuery") || (result = CFDictionaryGetValue(a1, @"_kMDItemLastOutOfSpotlightEngagementDate")) != 0)
  {
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      Value = CFDictionaryGetValue(a1, @"_kMDItemExternalID");
      if (Value)
      {
        v16 = Value;
        v17 = CFGetTypeID(Value);
        if (v17 == CFStringGetTypeID())
        {
          memset(v39, 0, sizeof(v39));
          CFStringGetCString(v16, v39, 128, 0x8000100u);
          v18 = CFDictionaryGetValue(a1, @"_kMDItemBundleID");
          if (!v18 || (v19 = v18, v20 = CFGetTypeID(v18), v20 != CFStringGetTypeID()))
          {
            v21 = *__error();
            v31 = _SILogForLogForCategory(0);
            v32 = 2 * (gSILogLevels[0] < 4);
            if (!os_log_type_enabled(v31, v32))
            {
              goto LABEL_34;
            }

            v38[0] = 136315138;
            *&v38[1] = v39;
            v24 = "Skipping index for feedback item %s";
            v25 = v38;
            v26 = v31;
            v27 = v32;
            v28 = 12;
            goto LABEL_33;
          }

          memset(v38, 0, sizeof(v38));
          CFStringGetCString(v19, v38, 128, 0x8000100u);
          v21 = *__error();
          v22 = _SILogForLogForCategory(0);
          v23 = 2 * (gSILogLevels[0] < 4);
          if (os_log_type_enabled(v22, v23))
          {
            v34 = 136315394;
            v35 = v38;
            v36 = 2080;
            v37 = v39;
            v24 = "Skpping index for feedback item (%s, %s)";
            v25 = &v34;
            v26 = v22;
            v27 = v23;
            v28 = 22;
LABEL_33:
            _os_log_impl(&dword_1C278D000, v26, v27, v24, v25, v28);
          }

LABEL_34:
          *__error() = v21;
          return 1;
        }
      }

      v21 = *__error();
      v29 = _SILogForLogForCategory(0);
      v30 = 2 * (gSILogLevels[0] < 4);
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_34;
      }

      v39[0] = 0;
      v24 = "Skipping index for feedback item";
    }

    else
    {
      v21 = *__error();
      v29 = _SILogForLogForCategory(0);
      v30 = 2 * (gSILogLevels[0] < 4);
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_34;
      }

      v39[0] = 0;
      v24 = "Skipping index for feedback item";
    }

    v25 = v39;
    v26 = v29;
    v27 = v30;
    v28 = 2;
    goto LABEL_33;
  }

  return result;
}

uint64_t CIOnThreadCleanUpPush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &threadData[9 * a1];
  v7 = *(v5 + 14);
  v6 = *(v5 + 15);
  if (v7 >= v6)
  {
    if (v6)
    {
      v9 = 2 * v6;
    }

    else
    {
      v9 = 4;
    }

    *(v5 + 15) = v9;
    v8 = malloc_type_realloc(v5[8], 16 * v9, 0x80040803F642BuLL);
    v5[8] = v8;
    if (!*(v5 + 15))
    {
      v12 = __si_assert_copy_extra_332();
      v13 = v12;
      v14 = "";
      if (v12)
      {
        v14 = v12;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1666, "td->onThreadCleanUpSize", v14);
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

    v7 = *(v5 + 14);
  }

  else
  {
    v8 = v5[8];
  }

  v10 = &v8[16 * v7];
  *v10 = a2;
  *(v10 + 1) = a3;
  *(v5 + 14) = v7 + 1;
  return v7;
}

uint64_t db_fast_dirty_datastore_if_necessary(uint64_t result)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*result != 1685287992)
  {
    v1 = result;
    v2 = *__error();
    v3 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *v1;
      *buf = 136315650;
      v9 = "db_fast_dirty_datastore_if_necessary";
      v10 = 1024;
      v11 = 253;
      v12 = 1024;
      v13 = v4;
      _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v2;
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 253, v7);
    free(v6);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (*(result + 4))
  {

    return db2_dirty_datastore(result);
  }

  return result;
}

uint64_t db2_dirty_datastore(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = __THREAD_SLOT_KEY[0];
  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v2 = __THREAD_SLOT_KEY[0];
  }

  v3 = pthread_getspecific(v2);
  HIDWORD(v5) = qos_class_self() - 9;
  LODWORD(v5) = HIDWORD(v5);
  v4 = v5 >> 2;
  if (v4 > 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1C2BFF8F0[v4];
  }

  v7 = pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_9:
    db_rwlock_wait(a1 + 584, v6, 2);
    goto LABEL_10;
  }

  if (v6 <= 5)
  {
    v18 = v6 - 6;
    v19 = (a1 + 16 * v6 + 648);
    while (!*v19)
    {
      v19 += 2;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_26;
      }
    }

    goto LABEL_9;
  }

LABEL_26:
  *(a1 + 768) = pthread_self();
LABEL_10:
  pthread_mutex_unlock((a1 + 584));
  if (v7)
  {
    v21 = *__error();
    v22 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "db2_dirty_datastore";
      v25 = 1024;
      v26 = 9039;
      v27 = 1024;
      v28 = v7;
      _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", &v23, 0x18u);
    }

    *__error() = v21;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9039);
  }

  if (v3)
  {
    v8 = CIOnThreadCleanUpPush(v3 - 1, db_write_unlock, a1 + 584);
  }

  else
  {
    v8 = -1;
  }

  v9 = _dirty_datastore_locked(a1, 0);
  v10 = pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v11 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v12 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v12, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v11)
  {
    pthread_override_qos_class_end_np(v11);
  }

  if (v10)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9041);
  }

  if (v3)
  {
    CIOnThreadCleanUpClearItem(v3 - 1, v8);
    v13 = &threadData[9 * (v3 - 1)];
    v16 = *(v13 + 14);
    v14 = v13 + 7;
    v15 = v16;
    if (v8 + 1 == v16)
    {
      *v14 = v15 - 1;
    }
  }

  return v9;
}

uint64_t _dirty_datastore_locked(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 4);
  if ((v2 & 0xA) != 0)
  {
    return 1;
  }

  if ((*(a1 + 804) & 8) != 0)
  {
    v20 = __si_assert_copy_extra_3233(0, -1);
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 8974, "(dst->const_flags & 0x8) == 0", v22);
    free(v21);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 584));
  *(a1 + 796) = 1;
  db_rwlock_wakeup(a1 + 584, 1, 1);
  pthread_mutex_unlock((a1 + 584));
  v6 = *(a1 + 832);
  if (v6 && (*(v6 + 16))(v6, a2))
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "_dirty_datastore_locked";
      v24 = 1024;
      v25 = 8994;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: dirty callback returned non-zero", buf, 0x12u);
    }

    *__error() = v7;
    return 22;
  }

  v9 = *(a1 + 4);
  *(a1 + 4) = v9 & 0xFFFFF9FE;
  if ((v9 & 0x80) != 0)
  {
    v10.i32[0] = *a1;
    v10.i32[1] = v9 & 0xFFFFF9FE;
    v10.i64[1] = *(a1 + 8);
    *a1 = vrev32q_s8(v10);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  }

  v11 = fd_pwrite(*(a1 + 848), a1, 0x1000uLL, 0);
  v12 = *__error();
  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    *a1 = vrev32q_s8(*a1);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
    if (v11 == 4096)
    {
      goto LABEL_15;
    }

LABEL_23:
    v17 = v12;
    v18 = *__error();
    v19 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_dirty_datastore_locked";
      v24 = 1024;
      v25 = 9014;
      v26 = 2080;
      v27 = a1 + 324;
      v28 = 2080;
      v29 = strerror(v17);
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_dirty_datastore: ERR: Can't write DST header (%s)\n", buf, 0x26u);
    }

    *__error() = v18;
    *(a1 + 4) |= 2u;
    *(a1 + 800) = v17;
    db_upgrade_lock(a1 + 584);
    return v17;
  }

  if (v11 != 4096)
  {
    goto LABEL_23;
  }

LABEL_15:
  v13 = *(a1 + 848);
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
  v14 = _fd_acquire_fd(v13, buf);
  if (v14 == -1)
  {
    db_upgrade_lock(a1 + 584);
  }

  else
  {
    v15 = v14;
    v16 = prot_fsync(v14, (*(v13 + 56) & 8) == 0);
    _fd_release_fd(v13, v15, 0, *buf);
    db_upgrade_lock(a1 + 584);
    result = v16;
    if (v16 != -1)
    {
      return result;
    }
  }

  return *__error();
}

uint64_t si_set_obj_state(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 1644);
  v4 = si_set_obj_state_locked(a1, a2, 1);
  os_unfair_lock_unlock(a1 + 1644);
  return v4;
}

uint64_t si_set_obj_state_locked(uint64_t a1, uint64_t a2, int a3)
{
  os_unfair_lock_assert_owner((a1 + 6576));
  v11 = *(a1 + 2481);
  if (a3 == 1 && v11 == 3)
  {
    _si_dump_index_state(a1, 2);
    if (*(a1 + 2428) || **(a1 + 6592))
    {
      return 89;
    }

    v11 = *(a1 + 2481);
    if (v11 == 3)
    {
      v48 = __si_assert_copy_extra_661(-1);
      v36 = v48;
      v49 = "";
      if (v48)
      {
        v49 = v48;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34830, "!(s->state==kSIIndexStateNeedsShadow && state==kSIIndexStateDirty)", v49);
LABEL_96:
      free(v36);
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
  }

  else if (a3 == 4 && v11 == 1)
  {
    v13 = __si_assert_copy_extra_661(-1);
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34833, "!(s->state==kSIIndexStateDirty && state==kSIIndexStateClean)", v15);
LABEL_11:
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

  if (a2 && a2 != a1)
  {
    if (*(a1 + 1192) == a2)
    {
      if (*(a1 + 2482) != a3)
      {
        v17 = 0;
        *(a1 + 2482) = a3;
        goto LABEL_59;
      }
    }

    else if (*(a1 + 6624) == a2)
    {
      if (*(a1 + 2483) != a3)
      {
        v17 = 0;
        *(a1 + 2483) = a3;
        goto LABEL_59;
      }
    }

    else if (*(a2 + 15201) != a3)
    {
      v17 = 0;
      *(a2 + 15201) = a3;
LABEL_59:
      v26 = 1;
      goto LABEL_60;
    }

    goto LABEL_36;
  }

  if (v11 != a3)
  {
    v17 = 0;
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 == 4)
        {
          *(a1 + 2482) = 1028;
          v18 = *(a1 + 1392);
          v19 = *(a1 + 1384);
          if (v18)
          {
            v20 = *(v18 + 8);
            if (v20)
            {
              v21 = *v18;
              do
              {
                v22 = *v21++;
                *(v22 + 15201) = 4;
                --v20;
              }

              while (v20);
            }
          }

          if (v19)
          {
            v23 = *(v19 + 8);
            if (v23)
            {
              v24 = *v19;
              do
              {
                v25 = *v24++;
                *(v25 + 15201) = 4;
                --v23;
              }

              while (v23);
            }
          }

          v17 = 1;
        }

        goto LABEL_56;
      }

      v17 = 1;
    }

    v56 = 0;
    v57 = &v56;
    v58 = 0x2000000000;
    v59 = 0;
    v27 = *(a1 + 2482);
    if (v27 != a3 && v27 != 4)
    {
      *(a1 + 2482) = a3;
      v59 = 1;
    }

    if (*(a1 + 6624))
    {
      v28 = *(a1 + 2483);
      if (v28 != a3 && v28 != 4)
      {
        *(a1 + 2483) = a3;
        v59 = 1;
      }
    }

    v29 = *(a1 + 1392);
    v30 = *(a1 + 1384);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 0x40000000;
    v52 = __si_set_obj_state_locked_block_invoke_2;
    v53 = &unk_1E81928A0;
    v55 = a3;
    v54 = &v56;
    if (v29 && *(v29 + 8))
    {
      v31 = 0;
      while ((v52)(v51, *(*v29 + 8 * v31), 0))
      {
        if (++v31 >= *(v29 + 8))
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
LABEL_50:
      if (v30 && *(v30 + 8))
      {
        v32 = 0;
        do
        {
          if (!(v52)(v51, *(*v30 + 8 * v32), 1))
          {
            break;
          }

          ++v32;
        }

        while (v32 < *(v30 + 8));
      }
    }

    v33 = *(v57 + 24);
    _Block_object_dispose(&v56, 8);
    if (v33 != 1)
    {
      v26 = 0;
      goto LABEL_60;
    }

LABEL_56:
    *(a1 + 2481) = a3;
    goto LABEL_59;
  }

LABEL_36:
  v26 = 0;
  v17 = 0;
LABEL_60:
  if (a3 == 1 && *(a1 + 2481) != 1)
  {
    v34 = *(a1 + 2482);
    if (v34 == 2)
    {
      *(a1 + 2482) = 1;
    }

    else if (v34 == 3)
    {
      v35 = __si_assert_copy_extra_661(-1);
      v36 = v35;
      v37 = "";
      if (v35)
      {
        v37 = v35;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34928, "s->sdb_state!=kSIIndexStateNeedsShadow", v37);
      goto LABEL_96;
    }

    os_unfair_lock_lock((a1 + 2224));
    Current = CFAbsoluteTimeGetCurrent();
    activityJournalWriteVInt64(a1 + 2192, 36, Current);
    os_unfair_lock_unlock((a1 + 2224));
    if (*(a1 + 6624))
    {
      v39 = *(a1 + 2483);
      if (v39 == 2)
      {
        *(a1 + 2483) = 1;
      }

      else if (v39 == 3)
      {
        v40 = __si_assert_copy_extra_661(-1);
        v14 = v40;
        v41 = "";
        if (v40)
        {
          v41 = v40;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34936, "s->directory_state!=kSIIndexStateNeedsShadow", v41);
        goto LABEL_11;
      }
    }

    v42 = *(a1 + 1392);
    v43 = *(a1 + 1384);
    if (v42)
    {
      v44 = *(v42 + 2);
      if (v44)
      {
        v45 = *v42;
        do
        {
          if (*(*v45 + 15201) == 2)
          {
            *(*v45 + 15201) = 1;
          }

          v45 += 8;
          --v44;
        }

        while (v44);
      }
    }

    if (v43)
    {
      v46 = *(v43 + 2);
      if (v46)
      {
        v47 = *v43;
        do
        {
          if (*(*v47 + 15201) == 2)
          {
            *(*v47 + 15201) = 1;
          }

          v47 += 8;
          --v46;
        }

        while (v46);
      }
    }

    *(a1 + 2481) = 1;
    return si_write_index_state(a1, 1, v17, v6, v7, v8, v9, v10);
  }

  if (!v26)
  {
    return 0;
  }

  return si_write_index_state(a1, 1, v17, v6, v7, v8, v9, v10);
}

uint64_t si_write_index_state(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    serialize_to_state(*(a1 + 1392), *(a1 + 1384), (*(a1 + 828) >> 18) & 1, a1 + 2480);
  }

  v10 = si_store_index_state(*(a1 + 32), "tmp.spotlight.state", *(a1 + 2072), a3, (a1 + 2480), a6, a7, a8);
  v11 = v10;
  if (v10)
  {
    if (v10 == 2)
    {
      v12 = *__error();
      v13 = _SILogForLogForCategory(11);
      v14 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v13, v14))
      {
        v18 = 134218240;
        v19 = a1;
        v20 = 1024;
        v21 = 2;
        _os_log_impl(&dword_1C278D000, v13, v14, "%p open index state error:%d", &v18, 0x12u);
      }

      *__error() = v12;
    }

    else
    {
      v15 = *__error();
      v16 = _SILogForLogForCategory(11);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315906;
        v19 = "si_write_index_state";
        v20 = 1024;
        v21 = 34792;
        v22 = 2048;
        v23 = a1;
        v24 = 1024;
        v25 = v11;
        _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: %p write index state error:%d", &v18, 0x22u);
      }

      *__error() = v15;
    }
  }

  else
  {
    _si_dump_index_state(a1, 4);
  }

  return v11;
}

void activityJournalWriteVInt64(uint64_t a1, char a2, unint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  if (a3 > 0x7F)
  {
    if (a3 >> 14)
    {
      if (a3 >> 21)
      {
        if (a3 >> 28)
        {
          if (a3 >> 35)
          {
            if (a3 >> 42)
            {
              if (a3 >> 49)
              {
                if (HIBYTE(a3))
                {
                  LOBYTE(v4[0]) = -1;
                  *(v4 + 1) = a3;
                  v3 = 9;
                }

                else
                {
                  LOBYTE(v4[0]) = -2;
                  BYTE1(v4[0]) = BYTE6(a3);
                  BYTE2(v4[0]) = BYTE5(a3);
                  BYTE3(v4[0]) = BYTE4(a3);
                  BYTE4(v4[0]) = BYTE3(a3);
                  BYTE5(v4[0]) = BYTE2(a3);
                  BYTE6(v4[0]) = BYTE1(a3);
                  v3 = 8;
                  BYTE7(v4[0]) = a3;
                }
              }

              else
              {
                LOBYTE(v4[0]) = BYTE6(a3) | 0xFC;
                BYTE1(v4[0]) = BYTE5(a3);
                BYTE2(v4[0]) = BYTE4(a3);
                BYTE3(v4[0]) = BYTE3(a3);
                BYTE4(v4[0]) = BYTE2(a3);
                BYTE5(v4[0]) = BYTE1(a3);
                v3 = 7;
                BYTE6(v4[0]) = a3;
              }
            }

            else
            {
              LOBYTE(v4[0]) = BYTE5(a3) | 0xF8;
              BYTE1(v4[0]) = BYTE4(a3);
              BYTE2(v4[0]) = BYTE3(a3);
              BYTE3(v4[0]) = BYTE2(a3);
              BYTE4(v4[0]) = BYTE1(a3);
              BYTE5(v4[0]) = a3;
              v3 = 6;
            }
          }

          else
          {
            LOBYTE(v4[0]) = BYTE4(a3) | 0xF0;
            BYTE1(v4[0]) = BYTE3(a3);
            BYTE2(v4[0]) = BYTE2(a3);
            BYTE3(v4[0]) = BYTE1(a3);
            BYTE4(v4[0]) = a3;
            v3 = 5;
          }
        }

        else
        {
          LOBYTE(v4[0]) = BYTE3(a3) | 0xE0;
          BYTE1(v4[0]) = BYTE2(a3);
          BYTE2(v4[0]) = BYTE1(a3);
          BYTE3(v4[0]) = a3;
          v3 = 4;
        }
      }

      else
      {
        LOBYTE(v4[0]) = BYTE2(a3) | 0xC0;
        BYTE1(v4[0]) = BYTE1(a3);
        BYTE2(v4[0]) = a3;
        v3 = 3;
      }
    }

    else
    {
      LOBYTE(v4[0]) = BYTE1(a3) | 0x80;
      BYTE1(v4[0]) = a3;
      v3 = 2;
    }
  }

  else
  {
    LOBYTE(v4[0]) = a3;
    v3 = 1;
  }

  activityJournalWrite(a1, a2, v4, v3);
}

__CFArray *createStringArray(int *a1, int a2, const char *a3, unsigned int a4, int a5, CFAllocatorRef allocator)
{
  v9 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v20 = a3;
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  memset(v21, 0, sizeof(v21));
  if ((~a2 & 0x8010) != 0)
  {
    v13 = 0;
    v14 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = 512;
    v9 = copyDataForUniquedValue(a1, *v9, v21, &v19);
    v20 = v9;
    v13 = v9 != v21;
    a4 = v19;
    v14 = v9;
    if (!v19)
    {
      goto LABEL_9;
    }
  }

  v15 = v9 + a4;
  do
  {
    v16 = createString(a1, a2, &v20, a5, allocator);
    if (v16)
    {
      v17 = v16;
      CFArrayAppendValue(Mutable, v16);
      CFRelease(v17);
    }
  }

  while (v20 < v15);
LABEL_9:
  if (v13)
  {
    free(v14);
  }

  return Mutable;
}

CFStringRef createString(int *a1, char a2, const char **a3, int a4, CFAllocatorRef alloc)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (!*a3)
  {
    return &stru_1F4284FD0;
  }

  if ((a2 & 0x10) != 0)
  {
    v11 = *v5;
    if (a4)
    {
      string_for_id_locked = db_get_string_for_id_locked(a1, v11);
    }

    else
    {
      string_for_id_locked = db_get_string_for_id(a1, v11);
    }

    if (string_for_id_locked)
    {
      v13 = string_for_id_locked;
    }

    else
    {
      v13 = "";
    }

    result = CFStringCreateWithCString(alloc, v13, 0x8000100u);
    v8 = *a3 + 4;
  }

  else
  {
    v7 = CFStringCreateWithCString(alloc, *a3, 0x8000100u);
    if (dword_1EBF46ADC >= 5)
    {
      v14 = *__error();
      v15 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v7;
        _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "String: %@", &v18, 0xCu);
      }

      *__error() = v14;
      if (dword_1EBF46ADC >= 5)
      {
        v16 = *__error();
        v17 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315138;
          v19 = v5;
          _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "C String: %s", &v18, 0xCu);
        }

        *__error() = v16;
      }
    }

    v8 = &v5[strlen(v5) + 1];
    result = v7;
  }

  *a3 = v8;
  return result;
}

void __checkIndexSetDocIdOrder(uint64_t result, uint64_t *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a2 && *(a2 + 2) >= 2u)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      v6 = *a2;
      v7 = *(*a2 + 8 * v4++);
      if (*(v7 + 80) > *(*(*a2 + 8 * v4) + 80))
      {
        v8 = *__error();
        v9 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v21 = "__checkIndexSetDocIdOrder";
          v22 = 1024;
          v23 = 165;
          _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: Unexpected index base id order, recycling", buf, 0x12u);
        }

        *__error() = v8;
        si_recycleForBadIndex(result, *(*a2 + 8 * v5), "unexpected index base");
        v6 = *a2;
        v7 = *(*a2 + 8 * v5);
      }

      v10 = *(v7 + 68);
      if (v10 >= 2)
      {
        v11 = *(v6 + 8 * v4);
        if (*(v11 + 68) >= 2u && (*(v7 + 80) + v10) > *(v11 + 80))
        {
          v12 = *__error();
          v13 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = *(*a2 + 8 * v5);
            LODWORD(v15) = *(v14 + 68);
            v16 = *(v14 + 80);
            if (v15 >= 2)
            {
              v15 = v15;
            }

            else
            {
              v15 = 0;
            }

            v17 = v16 + v15;
            v18 = *(*(*a2 + 8 * v4) + 80);
            v19 = *(a2 + 2);
            *buf = 136316674;
            v21 = "__checkIndexSetDocIdOrder";
            v22 = 1024;
            v23 = 172;
            v24 = 2048;
            v25 = v17;
            v26 = 2048;
            v27 = v18;
            v28 = 1024;
            v29 = v5;
            v30 = 1024;
            v31 = v4;
            v32 = 1024;
            v33 = v19;
            _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: Overlapping doc ids (%lld>%lld) between indexes %d and %d out of %d. Recycling", buf, 0x38u);
          }

          *__error() = v12;
          si_recycleForBadIndex(result, *(*a2 + 8 * v5), "overlapping doc ids");
        }
      }
    }

    while (v4 < (*(a2 + 2) - 1));
  }
}

int *si_populategroup(uint64_t a1, char **a2, const __CFString *a3, int a4, int a5, unsigned __int8 *a6, _BYTE *a7, _BYTE *a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v15 = *a2;
  v34 = 0;
  updated = _si_updateCSGroupAssignments(a1, a3);
  if (*(a1 + 2072) == 1)
  {
    if (updated)
    {
      v34 = updated;
      *a2 = v15;
      LOBYTE(v18) = updated;
      if (!updated)
      {
        LOBYTE(v18) = -1;
        v34 = -1;
      }

      LOBYTE(GroupFromDBO) = 1;
    }

    else
    {
      LOBYTE(GroupFromDBO) = 0;
      *a2 = v15;
      LOBYTE(v18) = -1;
      v34 = -1;
    }

    goto LABEL_29;
  }

  GroupFromDBO = si_getGroupFromDBO(a1, v15, &v34);
  v18 = v34;
  v20 = *(a1 + 2072);
  *a2 = v15;
  if (v18)
  {
    if (v20)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v21 = v20 & 1;
    v18 = 18;
    if (v21)
    {
      v22 = -1;
    }

    else
    {
      v22 = 18;
    }

    v34 = v22;
    if (v21)
    {
      LOBYTE(v18) = -1;
      goto LABEL_29;
    }
  }

  v31 = a8;
  memset(buf, 0, 32);
  v23 = db_copy_field_ids_with_buffer(*(a1 + 1192), "kMDItemSupportFileType", buf, 8uLL);
  if (v18 >= 0x16)
  {
    v18 = 18;
    v34 = 18;
  }

  if (!GroupFromDBO || !db_get_field_by_id(*(a1 + 1192), v15, v23, &v33, &v32))
  {
    v24 = *(v15 + 10) | 0x20;
    *(v15 + 10) = v24;
    v18 = 17;
    if (!a5)
    {
      goto LABEL_20;
    }

LABEL_23:
    LOBYTE(v18) = v18 | 0x20;
    v25 = v24 | 0x40;
    goto LABEL_24;
  }

  v24 = *(v15 + 10) & 0xFFFFFFDF;
  *(v15 + 10) = v24;
  if (a5)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (!a4)
  {
    v18 |= (v24 >> 1) & 0x20;
    goto LABEL_26;
  }

  v25 = v24 & 0xFFFFFFBF;
LABEL_24:
  *(v15 + 10) = v25;
LABEL_26:
  if (v23 != buf)
  {
    free(v23);
  }

  a8 = v31;
LABEL_29:
  result = db_add_field(*(a1 + 1192), a2, 1u, "_kMDItemGroupId", 0, 0x108u, 2, &v34, v17, 1);
  if (result)
  {
    v27 = result;
    v28 = *__error();
    v29 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = *v15;
      *buf = 136316162;
      *&buf[4] = "si_populategroup";
      *&buf[12] = 1024;
      *&buf[14] = 1723;
      *&buf[18] = 2048;
      *&buf[20] = v30;
      *&buf[28] = 2048;
      *&buf[30] = v30;
      v36 = 1024;
      v37 = v27;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: db_add_field(_kMDItemGroupId) failed, oid:0x%llx(%lld), rc:%d", buf, 0x2Cu);
    }

    result = __error();
    *result = v28;
  }

  *a7 = v18;
  *a6 = v34;
  *a8 = GroupFromDBO;
  return result;
}

uint64_t _si_updateCSGroupAssignments(uint64_t a1, const __CFString *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (!a2 || (*(a1 + 2072) & 1) == 0)
  {
    return valuePtr;
  }

  os_unfair_lock_lock(&group_assignment_lock);
  Value = CFDictionaryGetValue(*(a1 + 2088), a2);
  if (Value && CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr))
  {
LABEL_12:
    os_unfair_lock_unlock(&group_assignment_lock);
    return valuePtr;
  }

  v32.location = 1;
  v32.length = 256;
  valuePtr = CFBitVectorGetFirstIndexOfBit(*(a1 + 2096), v32, 0);
  if (valuePtr == -1)
  {
    valuePtr = 0;
    goto LABEL_12;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  Copy = CFStringCreateCopy(v5, a2);
  CFDictionarySetValue(*(a1 + 2088), Copy, v6);
  CFBitVectorSetBitAtIndex(*(a1 + 2096), valuePtr, 1u);
  os_unfair_lock_unlock(&group_assignment_lock);
  v8 = *__error();
  v9 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = valuePtr;
    *&buf[8] = 2112;
    *&buf[10] = a2;
    _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "### added group %d for bundle %@", buf, 0x12u);
  }

  *__error() = v8;
  v10 = valuePtr;
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(buf, 0, sizeof(buf));
  if (CFStringGetCString(a2, &buf[5], 256, 0x8000100u))
  {
    v11 = strlen(&buf[5]) + 1;
    os_unfair_lock_lock((a1 + 2224));
    if (v10 >= 0x80)
    {
      if (v10 >= 0x4000)
      {
        if (v10 >= 0x200000)
        {
          if (v10 >> 28)
          {
            buf[0] = -16;
            *&buf[1] = v10;
            v13 = 5;
            v12 = buf;
          }

          else
          {
            v12 = &buf[1];
            buf[1] = HIBYTE(v10) | 0xE0;
            buf[2] = BYTE2(v10);
            buf[3] = BYTE1(v10);
            buf[4] = v10;
            v13 = 4;
          }
        }

        else
        {
          v12 = &buf[2];
          buf[2] = BYTE2(v10) | 0xC0;
          buf[3] = BYTE1(v10);
          buf[4] = v10;
          v13 = 3;
        }
      }

      else
      {
        v12 = &buf[3];
        buf[3] = BYTE1(v10) | 0x80;
        buf[4] = v10;
        v13 = 2;
      }
    }

    else
    {
      v12 = &buf[4];
      buf[4] = v10;
      v13 = 1;
    }

    activityJournalWrite(a1 + 2192, 23, v12, v11 + v13);
    os_unfair_lock_unlock((a1 + 2224));
  }

  CFRelease(Copy);
  CFRelease(v6);
  return valuePtr;
}

__CFDictionary *decodeDBOToDictionary(int *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, CFAllocatorRef allocator)
{
  if (a5)
  {
    v15 = &kSIDictionaryPropertyIdKeyCallbacks;
  }

  else
  {
    v15 = MEMORY[0x1E695E9D8];
  }

  theDict = CFDictionaryCreateMutable(allocator, 0, v15, MEMORY[0x1E695E9E8]);
  v54 = 0;
  *v52 = 0;
  cStr = 0;
  if (a5 == 1)
  {
    p_cStr = 0;
  }

  else
  {
    p_cStr = &cStr;
  }

  while (db_next_field(a1, a2, 0, &v54, p_cStr, v52) == 35)
  {
    v18 = *v52;
    v19 = *(*v52 + 2);
    if ((v19 & a4) == 0 && (v19 & a3) == a3)
    {
      switch(a5)
      {
        case 0:
          v22 = CFStringCreateWithCString(allocator, cStr, 0x8000100u);
          v18 = *v52;
          goto LABEL_34;
        case 1:
          v21 = *(*v52 + 4);
LABEL_16:
          v22 = (v21 | ((v19 & 0x100) << 23));
          goto LABEL_34;
        case 2:
          id_for_field = db_get_id_for_field(a1, cStr);
          if (!a7 || id_for_field != a7)
          {
            if (id_for_field != a6 || a6 == 0)
            {
              v25 = id_for_field;
            }

            else
            {
              v25 = id_for_field | 0x20000000;
            }

            v18 = *v52;
            v19 = *(*v52 + 2);
            v26 = (v19 << 24) & 0x8000000;
            if ((v19 & 0x4000) != 0)
            {
              v26 = 0x10000000;
            }

            v21 = v26 | v25;
            if ((~v19 & 0x5020) == 0 && **v52 == 14)
            {
              v21 |= 0x4000000u;
            }

            goto LABEL_16;
          }

          break;
        default:
          v22 = 0;
LABEL_34:
          v27 = _decodeSDBField(a1, v18, (v18 + 13), 0, a8, a9, 0, allocator, v17);
          if (v27)
          {
            v28 = v27;
            CFDictionarySetValue(theDict, v22, v27);
            CFRelease(v28);
          }

          if (!a5)
          {
            if (v22)
            {
              CFRelease(v22);
            }
          }

          break;
      }
    }
  }

  if ((a3 & 0x800) != 0 || (v29 = *(a2 + 16)) == 0)
  {
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (a5)
    {
      v30 = (db_get_id_for_field(a1, "kMDItemAttributeChangeDate") | 0x80000000);
      v29 = *(a2 + 16);
    }

    else
    {
      v30 = @"kMDItemAttributeChangeDate";
    }

    v31 = CFDateCreate(allocator, v29 / 1000000.0 - *MEMORY[0x1E695E468]);
    CFDictionarySetValue(theDict, v30, v31);
    CFRelease(v31);
LABEL_47:
    v32 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 0x40000000;
    v49 = __decodeDBOToDictionary_block_invoke;
    v50 = &__block_descriptor_tmp_107;
    v51 = Mutable;
    if (a1)
    {
      v46 = 0;
      *v47 = 0;
      if (!db_get_field(a1, a2, "kMDItemPrimaryRecipientEmailAddresses", v47, &v46))
      {
        v35 = _decodeSDBField(a1, *v47, (*v47 + 13), 0, 0, 0, 0, v32, v34);
        v49(v48, v35);
        CFRelease(v35);
      }

      if (!db_get_field(a1, a2, "kMDItemAdditionalRecipientEmailAddresses", v47, &v46))
      {
        v37 = _decodeSDBField(a1, *v47, (*v47 + 13), 0, 0, 0, 0, v32, v36);
        v49(v48, v37);
        CFRelease(v37);
      }

      if (!db_get_field(a1, a2, "kMDItemHiddenAdditionalRecipientEmailAddresses", v47, &v46))
      {
        v39 = _decodeSDBField(a1, *v47, (*v47 + 13), 0, 0, 0, 0, v32, v38);
        v49(v48, v39);
        CFRelease(v39);
      }
    }

    if (CFArrayGetCount(Mutable))
    {
      if (a5)
      {
        v40 = db_get_id_for_field(a1, "kMDItemRecipientEmailAddresses");
      }

      else
      {
        v40 = @"kMDItemRecipientEmailAddresses";
      }

      CFDictionarySetValue(theDict, v40, Mutable);
    }

    CFRelease(Mutable);
  }

  return theDict;
}

uint64_t db_next_field(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4, char **a5, void *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *a1;
      *buf = 136315650;
      v26 = "db_next_field";
      v27 = 1024;
      v28 = 409;
      v29 = 1024;
      v30 = v21;
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v19;
    v22 = __si_assert_copy_extra_332();
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 409, v24);
    free(v23);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v8 = a2;
  LODWORD(v9) = *a4;
  if (*a4)
  {
    v9 = v9;
  }

  else
  {
    v9 = 48;
  }

  if (v9 >= *(a2 + 12))
  {
    return 0;
  }

  v12 = a2 + v9;
  if (a5 && (string_and_length_for_id_15021 = get_string_and_length_for_id_15021(a1, 0, *(v12 + 4), 0, a3), (*a5 = string_and_length_for_id_15021) == 0))
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(7);
    v17 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v12 + 4);
      *buf = 136315394;
      v26 = (a1 + 81);
      v27 = 1024;
      v28 = v18;
      _os_log_impl(&dword_1C278D000, v16, v17, "%s : ERR: XXXdbg - whoa dude... can't get name ptr for name id %d\n", buf, 0x12u);
    }

    *__error() = v15;
    return 2;
  }

  else
  {
    if (a6)
    {
      *a6 = v12;
    }

    *a4 = v12 + *(v12 + 8) - v8 + 13;
    return 35;
  }
}

uint64_t db_get_id_for_field(int *a1, char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_get_id_for_field";
      *&buf[12] = 1024;
      *&buf[14] = 288;
      *&buf[18] = 1024;
      *&buf[20] = v8;
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 288, v11);
    free(v10);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  memset(buf, 0, 32);
  v2 = internal_copy_field_ids(a1, a2, buf, 8uLL, 0);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    v3 = 4294967294;
  }

  if (v2 != buf)
  {
    free(v2);
  }

  return v3;
}

char *fastUTF8String(const __CFString *a1, void *a2, char *a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 != CFStringGetTypeID())
  {
    goto LABEL_13;
  }

  CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  if (!CStringPtr)
  {
    if (CFStringGetCString(a1, a3, 1024, 0x8000100u))
    {
      *a2 = strlen(a3) + 1;
      return a3;
    }

    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v14 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (CFStringGetCString(a1, v14, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      *a2 = strlen(v14) + 1;
      return v14;
    }

    free(v14);
LABEL_13:
    *a2 = 1;
    *a3 = 0;
    return a3;
  }

  v8 = CStringPtr;
  v9 = strlen(CStringPtr);
  v10 = v9 + 1;
  *a2 = v9 + 1;
  if ((v9 + 1) >= 1025)
  {
    a3 = malloc_type_malloc(v9 + 1, 0x7381A768uLL);
  }

  return memcpy(a3, v8, v10);
}

uint64_t _data_map32_get_data_id(uint64_t a1, unsigned int a2, char *a3, size_t a4, int a5)
{
  v9 = &a3[a2];
  v10 = a4 - a2;
  if (*(a1 + 1460) == 1)
  {
    v11 = LegacyHash(v9, v10);
  }

  else
  {
    v11 = commonHash(v10, v9);
  }

  v12 = v11;
  if (_data_map32_rdlock(a1))
  {
    return 0;
  }

  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v15 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
  v45 = HIDWORD(v15);
  v46 = v15;
  v43 = v17;
  v44 = v16;
  v18 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
  v19 = *(v18 + 312);
  v20 = *(v18 + 224);
  if (v20)
  {
    v20(*(v18 + 288));
  }

  v42 = v46;
  v41 = v45;
  v40 = __PAIR64__(v44, v43);
  if (!_setjmp(v18))
  {
    bucket_entry = _data_map32_get_bucket_entry(a1, v12, 0, a3, a4);
    if (!bucket_entry)
    {
      v21 = 0;
LABEL_31:
      v28 = threadData[9 * v42 + 1] + 320 * v41;
      *(v28 + 312) = v19;
      v29 = *(v28 + 232);
      if (v29)
      {
        v29(*(v28 + 288));
      }

      dropThreadId(v42, 0, add_explicit + 1);
      goto LABEL_34;
    }

    v23 = *bucket_entry;
    if (*bucket_entry)
    {
      if (v23 >= *(a1 + 220))
      {
        v21 = 0;
      }

      else
      {
        v21 = v23;
      }

      goto LABEL_31;
    }

    if (!a5)
    {
LABEL_30:
      v21 = 0;
      goto LABEL_31;
    }

    v24 = bucket_entry;
    v39[1] = a3;
    v39[0] = a4;
    if (a4 >> 28)
    {
      v26 = 5;
    }

    else if (a4 >> 21)
    {
      v26 = 4;
    }

    else
    {
      if (!(a4 >> 14))
      {
        if (a4 < 0x80)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

LABEL_29:
        v27 = *(a1 + 220);
        _data_map32_unlock(a1);
        if (_data_map32_wrlock(a1))
        {
          goto LABEL_30;
        }

        v30 = v27;
        if (v27 != *(a1 + 220))
        {
          v36 = _data_map32_get_bucket_entry(a1, v12, 0, a3, a4);
          if (!v36)
          {
            goto LABEL_51;
          }

          v31 = *v36;
          v30 = *(a1 + 220);
          if (v31 >= v30)
          {
            goto LABEL_30;
          }

          if (v31)
          {
            _data_map32_set_seen_id(a1, v31);
LABEL_50:
            v21 = v31;
            goto LABEL_31;
          }

          v24 = v36;
        }

        v31 = v30;
        v38 = 0;
        if (_data_map32_grow(a1, (v25 + a4), &v38))
        {
          if ((*(a1 + 1459) & 1) == 0)
          {
            _data_map32_dirty(a1);
            *(a1 + 1459) = 1;
          }

          v32 = *(a1 + 1352);
          v33 = *(a1 + 1328);
          *(v32 + 4 * v31) = v33;
          v34 = v33;
          if ((*(a1 + 1457) & 1) == 0)
          {
            v35 = v32;
            _data_map32_dirty(a1);
            *(a1 + 1457) = 1;
            v34 = *(v35 + 4 * v31);
          }

          *(a1 + 1328) = data_entry_store_16962(*(a1 + 1320), v34, v39);
          ++*(a1 + 220);
          if ((*(a1 + 1458) & 1) == 0)
          {
            _data_map32_dirty(a1);
            *(a1 + 1458) = 1;
          }

          if ((v38 & 4) != 0)
          {
            v24 = _data_map32_get_bucket_entry(a1, v12, v31, 0, 0);
          }

          *v24 = v31;
          SIActivityJournalDMAdd(*(a1 + 1432), *(a1 + 1440), *(a1 + 224), v31, v12, a4);
          goto LABEL_50;
        }

LABEL_51:
        v21 = 0;
        goto LABEL_31;
      }

      v26 = 3;
    }

    v25 = v26;
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v37 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v37, 2u);
  }

  *(v18 + 312) = v19;
  CIOnThreadCleanUpReset(v40);
  dropThreadId(v42, 1, add_explicit + 1);
  CICleanUpReset(v42, HIDWORD(v40));
  v21 = 0;
LABEL_34:
  _data_map32_unlock(a1);
  return v21;
}

uint64_t _data_map32_get_bucket_entry(uint64_t a1, unsigned int a2, unsigned int a3, const void *a4, size_t a5)
{
  v94 = *MEMORY[0x1E69E9840];
  if (*(a1 + 220) > a3)
  {
    v7 = 0;
    v8 = *(a1 + 1392);
    v9 = a2 - a2 / *(a1 + 1392) * v8;
    v10 = v8;
    v47 = v8;
    while (v9 >= v10)
    {
      v15 = 0;
      v32 = v9;
LABEL_33:
      v33 = v32 != v8;
      if (v15)
      {
        return 0;
      }

      result = 0;
      v35 = v7 | v33;
      v7 = 1;
      v10 = v9;
      v9 = 0;
      if (v35)
      {
        return result;
      }
    }

    v49 = v7;
    v11 = v9;
    while (1)
    {
      v12 = *(a1 + 1384);
      v13 = *(v12 + 4 * v11);
      if (v13)
      {
        v14 = v13 == a3;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        return v12 + 4 * v11;
      }

      if (a3)
      {
        goto LABEL_10;
      }

      if (*(a1 + 220) <= v13)
      {
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
        v68 = 0u;
        v69 = 0u;
        v39 = *__error();
        v40 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v44 = *(a1 + 220);
          v45 = fd_name(*(a1 + 1272), &v68, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map32_get_offset_entry";
          *&__s[12] = 1024;
          *&__s[14] = 422;
          *&__s[18] = 1024;
          *&__s[20] = v13;
          *&__s[24] = 1024;
          *&__s[26] = v44;
          *&__s[30] = 2048;
          *&__s[32] = a1;
          *&__s[40] = 2080;
          *&__s[42] = v45;
          _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
        }

        v41 = __error();
        result = 0;
        *v41 = v39;
        return result;
      }

      v16 = *(a1 + 1352);
      if (!v16)
      {
        return 0;
      }

      v17 = *(v16 + 4 * v13);
      if (v17 == 1)
      {
        return 0;
      }

      v51 = 0;
      __s2 = 0;
      v53 = 0;
      v18 = *(a1 + 1328);
      if (v18 <= v17)
      {
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
        v68 = 0u;
        v69 = 0u;
        v22 = *__error();
        v30 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v46 = *(a1 + 1328);
          v31 = fd_name(*(a1 + 1272), &v68, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map32_get_data_entry";
          *&__s[12] = 1024;
          *&__s[14] = 446;
          *&__s[18] = 2048;
          *&__s[20] = v17;
          *&__s[28] = 2048;
          *&__s[30] = v46;
          *&__s[38] = 2048;
          *&__s[40] = a1;
          *&__s[48] = 2080;
          *&__s[50] = v31;
          v26 = __s;
          v27 = v30;
          v28 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
          v29 = 58;
          goto LABEL_30;
        }
      }

      else
      {
        data_entry_restore_32(*(a1 + 1320), v17, v18, &v51, &v53);
        if (v53 != 1)
        {
          if (v51 == a5 && !memcmp(a4, __s2, a5))
          {
            return v12 + 4 * v11;
          }

LABEL_10:
          v15 = 0;
          goto LABEL_23;
        }

        v93 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v19 = v17;
        v20 = 5;
        memset(__s, 0, sizeof(__s));
        do
        {
          if (v19 >= *(a1 + 1328))
          {
            break;
          }

          v21 = strlen(__s);
          sprintf(&__s[v21], "%d ", *(*(a1 + 1320) + v19++));
          --v20;
        }

        while (v20);
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
        v68 = 0u;
        v69 = 0u;
        v22 = *__error();
        v23 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = fd_name(*(a1 + 1272), &v68, 0x100uLL);
          v25 = *(a1 + 1328);
          v54 = 136316674;
          v55 = "_data_map32_get_data_entry";
          v56 = 1024;
          v57 = 442;
          v58 = 2080;
          v59 = v24;
          v60 = 2048;
          v61 = v17;
          v62 = 2048;
          v63 = v25;
          v64 = 2048;
          v65 = v51;
          v66 = 2080;
          v67 = __s;
          v26 = &v54;
          v27 = v23;
          v28 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
          v29 = 68;
LABEL_30:
          _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, v28, v26, v29);
        }
      }

      *__error() = v22;
      v15 = 1;
LABEL_23:
      ++v11;
      if ((v15 & 1) != 0 || v11 >= v10)
      {
        v32 = v11;
        v7 = v49;
        v8 = v47;
        goto LABEL_33;
      }
    }
  }

  if (!a3)
  {
    return 0;
  }

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
  v68 = 0u;
  v69 = 0u;
  v36 = *__error();
  v37 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v42 = *(a1 + 220);
    v43 = fd_name(*(a1 + 1272), &v68, 0x100uLL);
    *__s = 136316418;
    *&__s[4] = "_data_map32_get_bucket_entry";
    *&__s[12] = 1024;
    *&__s[14] = 516;
    *&__s[18] = 1024;
    *&__s[20] = a3;
    *&__s[24] = 1024;
    *&__s[26] = v42;
    *&__s[30] = 2048;
    *&__s[32] = a1;
    *&__s[40] = 2080;
    *&__s[42] = v43;
    _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
  }

  v38 = __error();
  result = 0;
  *v38 = v36;
  return result;
}

double markItemAsUsedForField(int *a1, char **a2, char *a3, char *a4, uint64_t a5, int a6, int a7, uint64_t a8, CFAbsoluteTime a9)
{
  v9 = a8;
  v80 = *MEMORY[0x1E69E9840];
  v18 = objc_autoreleasePoolPush();
  db_validate_obj(a1);
  v19 = *a2;
  if (!**a2)
  {
    v20 = 0.0;
    goto LABEL_57;
  }

  v75 = 0;
  v76 = 0;
  if (db_get_field(a1, v19, a3, &v75, &v76))
  {
    v20 = -INFINITY;
    if (a5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20 = *v76;
    if (a5)
    {
LABEL_8:
      if (a5 || v20 < a9)
      {
        if (a5)
        {
          a9 = MEMORY[0x1C691E960](a5);
        }

        v74 = a9;
        v73 = 0;
        v72 = 0;
        v21 = si_retain_calendar();
        CFCalendarDecomposeAbsoluteTime(v21[1], a9, "yMd", &v72, &v73, &v73 + 4);
        at = 0.0;
        CFCalendarComposeAbsoluteTime(v21[1], &at, "yMd", v72, v73, HIDWORD(v73));
        OSAtomicEnqueue(&sCalenderQueueHead, v21, 0);
        if (a4)
        {
          if (db_get_field(a1, *a2, a4, &v75, &v76))
          {
            v24 = 0;
            if (a9 > v20)
            {
              goto LABEL_15;
            }

            if (a9 != v20)
            {
LABEL_46:
              if (db_add_field(a1, a2, 1u, a4, 0, v9 | 0x20, 12, &at, v23, 8))
              {
                v51 = *__error();
                v52 = _SILogForLogForCategory(7);
                v53 = 2 * (dword_1EBF46AE8 < 4);
                if (os_log_type_enabled(v52, v53))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1C278D000, v52, v53, "Failed adding used dates", buf, 2u);
                }

                *__error() = v51;
              }
            }
          }

          else
          {
            v45 = *MEMORY[0x1E695E480];
            v46 = _decodeSDBField(a1, v75, v76, 0, 0, 0, 0, *MEMORY[0x1E695E480], v23);
            v24 = v46;
            if (a9 > v20)
            {
              if (v46)
              {
                TypeID = CFArrayGetTypeID();
                if (TypeID == CFGetTypeID(v24))
                {
                  Count = CFArrayGetCount(v24);
                  if (Count)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v24, Count - 1);
                    v49 = CFGetTypeID(ValueAtIndex);
                    if (v49 == CFDateGetTypeID())
                    {
                      v50 = MEMORY[0x1C691E960](ValueAtIndex);
                      v22.n128_f64[0] = at;
                      if (v50 == at)
                      {
                        goto LABEL_21;
                      }

                      if (dword_1EBF46ADC >= 5)
                      {
                        LODWORD(ValueAtIndex) = *__error();
                        v67 = _SILogForLogForCategory(4);
                        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 134218240;
                          *&buf[4] = at;
                          v78 = 2048;
                          v79 = v50;
                          _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "New last used date was not in the previous array: %f != %f", buf, 0x16u);
                        }

                        *__error() = ValueAtIndex;
                      }

                      if (!db_add_field(a1, a2, 2u, a4, 0, v9, 12, &at, v22, 8))
                      {
                        goto LABEL_21;
                      }

                      LODWORD(ValueAtIndex) = *__error();
                      v25 = _SILogForLogForCategory(7);
                      v26 = 2 * (dword_1EBF46AE8 < 4);
                      if (!os_log_type_enabled(v25, v26))
                      {
                        goto LABEL_19;
                      }

                      *buf = 0;
                    }

                    else
                    {
                      db_delete_field(a1, a2, a4);
                      if (!db_add_field(a1, a2, 1u, a4, 0, v9 | 0x20, 12, &at, v64, 8))
                      {
                        goto LABEL_21;
                      }

                      LODWORD(ValueAtIndex) = *__error();
                      v25 = _SILogForLogForCategory(7);
                      v26 = 2 * (dword_1EBF46AE8 < 4);
                      if (!os_log_type_enabled(v25, v26))
                      {
                        goto LABEL_19;
                      }

                      *buf = 0;
                    }

                    goto LABEL_18;
                  }
                }
              }

LABEL_15:
              if (!db_add_field(a1, a2, 1u, a4, 0, v9 | 0x20, 12, &at, v23, 8))
              {
LABEL_21:
                if (db_add_field(a1, a2, 1u, a3, 0, v9, 12, &v74, v22, 8))
                {
                  LODWORD(ValueAtIndex) = v9;
                  v27 = a7;
                  v28 = v24;
                  v29 = *__error();
                  v30 = _SILogForLogForCategory(7);
                  v31 = 2 * (dword_1EBF46AE8 < 4);
                  if (os_log_type_enabled(v30, v31))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1C278D000, v30, v31, "Failed adding used date", buf, 2u);
                  }

                  *__error() = v29;
                  v24 = v28;
                  a7 = v27;
                  v9 = ValueAtIndex;
                }

                if (v74 != 0.0)
                {
                  if (a6)
                  {
                    *buf = (86400 * (v74 / 0x15180));
                    v32 = strlen(a3);
                    MEMORY[0x1EEE9AC00](v33);
                    v35 = &v68 - ((v34 + 25) & 0xFFFFFFFFFFFFFFF0);
                    bzero(v35, v34 + 10);
                    strlcpy(v35, a3, v32 + 10);
                    strlcat(v35, "_Ranking", v32 + 10);
                    if (db_add_field(a1, a2, 1u, v35, 0, v9, 12, buf, v36, 8))
                    {
                      v37 = v9;
                      v38 = a7;
                      v39 = v24;
                      v40 = *__error();
                      v41 = _SILogForLogForCategory(7);
                      v42 = 2 * (dword_1EBF46AE8 < 4);
                      if (os_log_type_enabled(v41, v42))
                      {
                        *v70 = 0;
                        _os_log_impl(&dword_1C278D000, v41, v42, "Failed adding ranking used date", v70, 2u);
                      }

                      *__error() = v40;
                      v24 = v39;
                      a7 = v38;
                      v9 = v37;
                    }
                  }
                }

                v20 = a9;
                goto LABEL_32;
              }

              LODWORD(ValueAtIndex) = *__error();
              v25 = _SILogForLogForCategory(7);
              v26 = 2 * (dword_1EBF46AE8 < 4);
              if (!os_log_type_enabled(v25, v26))
              {
LABEL_19:
                *__error() = ValueAtIndex;
                goto LABEL_21;
              }

              *buf = 0;
LABEL_18:
              _os_log_impl(&dword_1C278D000, v25, v26, "Failed adding used dates", buf, 2u);
              goto LABEL_19;
            }

            if (a9 != v20)
            {
              if (v46)
              {
                v58 = CFArrayGetTypeID();
                if (v58 == CFGetTypeID(v24))
                {
                  v59 = CFDateCreate(v45, at);
                  v81.length = CFArrayGetCount(v24);
                  v81.location = 0;
                  if (!CFArrayContainsValue(v24, v81, v59))
                  {
                    if (dword_1EBF46ADC >= 5)
                    {
                      v65 = *__error();
                      v66 = _SILogForLogForCategory(4);
                      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134217984;
                        *&buf[4] = at;
                        _os_log_impl(&dword_1C278D000, v66, OS_LOG_TYPE_DEFAULT, "New last used date was not in the previous array: %f", buf, 0xCu);
                      }

                      *__error() = v65;
                    }

                    if (db_add_field(a1, a2, 2u, a4, 0, v9, 12, &at, v60, 8))
                    {
                      v61 = *__error();
                      v62 = _SILogForLogForCategory(7);
                      v63 = 2 * (dword_1EBF46AE8 < 4);
                      if (os_log_type_enabled(v62, v63))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_1C278D000, v62, v63, "Failed adding used dates", buf, 2u);
                      }

                      *__error() = v61;
                    }
                  }

                  if (v59)
                  {
                    CFRelease(v59);
                  }

                  goto LABEL_32;
                }
              }

              goto LABEL_46;
            }
          }
        }

        else
        {
          v24 = 0;
          if (a9 > v20)
          {
            goto LABEL_21;
          }
        }

LABEL_32:
        if (a7)
        {
          v44 = db_get_field(a1, *a2, "kMDItemUseCount", &v75, &v76) ? 1 : *v76 + 1;
          *buf = v44;
          if (db_add_field(a1, a2, 1u, "kMDItemUseCount", 0, v9 | 0x100, 6, buf, v43, 4))
          {
            v54 = *__error();
            v55 = _SILogForLogForCategory(7);
            v56 = 2 * (dword_1EBF46AE8 < 4);
            if (os_log_type_enabled(v55, v56))
            {
              *v70 = 0;
              _os_log_impl(&dword_1C278D000, v55, v56, "Failed adding use count", v70, 2u);
            }

            *__error() = v54;
          }
        }

        if (v24)
        {
          CFRelease(v24);
        }
      }

LABEL_57:
      db_validate_obj(a1);
      objc_autoreleasePoolPop(v18);
      return v20;
    }
  }

  if (a9 != -INFINITY)
  {
    goto LABEL_8;
  }

  return v20;
}

void *si_retain_calendar()
{
  v0 = OSAtomicDequeue(&sCalenderQueueHead, 0);
  if (!v0)
  {
    v0 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
    v0[1] = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E4A8], *MEMORY[0x1E695E678]);
  }

  return v0;
}

uint64_t db_add_field(int *a1, char **a2, unsigned int a3, char *a4, uint64_t a5, unsigned int a6, int a7, unsigned __int8 *a8, __n128 q0_0, int a9)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_add_field";
      v19 = 1024;
      v20 = 341;
      v21 = 1024;
      v22 = v14;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v12;
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 341, v17);
    free(v16);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  *buf = 0;
  return db2_add_field_with_cache(a1, a2, a3, a4, a5, a6, a7, a8, q0_0, a9, buf);
}

uint64_t db2_add_field_with_cache(uint64_t a1, char **a2, unsigned int a3, char *__s, uint64_t a5, unsigned int a6, int a7, unsigned __int8 *a8, __n128 a9, int a10, void *a11)
{
  v185[3] = *MEMORY[0x1E69E9840];
  v174 = 0;
  v11 = *a2;
  v173 = 0;
  v12 = a5 != 0;
  v13 = *(a1 + 804);
  if ((v13 & 8) != 0)
  {
    return 13;
  }

  v175 = 0;
  if ((a7 - 15) <= 0xFFFFFFF1)
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v180 = "db2_add_field_with_cache";
      *&v180[8] = 1024;
      LODWORD(v181) = 13613;
      WORD2(v181) = 1024;
      *(&v181 + 6) = a7;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: Field type %d out of bounds", buf, 0x18u);
    }

    *__error() = v15;
    return 22;
  }

  v19 = a6;
  v20 = a5;
  if ((a5 + 1) <= 1 && (!__s || !*__s))
  {
    v24 = __s;
    v25 = *__error();
    v26 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v180 = "db2_add_field_with_cache";
      *&v180[8] = 1024;
      LODWORD(v181) = 13620;
      WORD2(v181) = 2080;
      *(&v181 + 6) = v24;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: Field name %s out of bounds", buf, 0x1Cu);
    }

    *__error() = v25;
    return 93;
  }

  v22 = (~a6 & 0x5020) == 0 && a7 == 14;
  if ((a6 & 0x10) == 0 && v22)
  {
    return 22;
  }

  if (v22)
  {
    v23 = 0;
    v17 = 0;
    if (*(a1 + 989))
    {
      return v17;
    }
  }

  else
  {
    v23 = a7 == 11;
    if (a7 != 11 && (a6 & 0x10) != 0)
    {
      return 22;
    }
  }

  v27 = a10;
  if ((a6 & 0x80) == 0)
  {
    if (a10 <= 0x4000)
    {
      goto LABEL_32;
    }

    return 7;
  }

  if (a10 > 60000)
  {
    return 7;
  }

LABEL_32:
  if ((*(v11 + 3) + a10) > 0xFFDE)
  {
    return 7;
  }

  v28 = 0;
  LODWORD(v169) = 0;
  v160 = a11;
  v155 = a1 + 324;
  v168 = v13 & 4;
  v161 = v168 >> 2;
  v166 = (16 * a3) & 0x20;
  v165 = (a3 >> 3) & 2;
  v29 = (a3 & 4) == 0 && v23;
  v167 = v29;
  a9.n128_u64[0] = 136316930;
  v154 = a9;
  a9.n128_u64[0] = 136315906;
  v156 = a9;
  v158 = a10;
  v30 = a8;
  LODWORD(v171) = a3;
  v172 = a1;
  v157 = a2;
  v159 = a8;
  while (1)
  {
    v170 = v30;
    v178[0] = v20;
    v178[1] = 0;
    v31 = v19 >> 5;
    LODWORD(v30) = v19 >> 3;
    v177[0] = 0;
    v177[1] = 0;
    if (!v12)
    {
      goto LABEL_72;
    }

    v32 = v20 & 0x7FFFFFFF;
    v164 = v28;
    if (v32 > 0x7FFFFFFD)
    {
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v33 = *(a1 + 880);
      if ((*(a1 + 804) & 0x14) != 0)
      {
        v34 = __s;
        v176 = 0;
        data = data_map_get_data(v33, v20 & 0x7FFFFFFF, &v176);
        if (!data)
        {
          v162 = v19 >> 3;
          v66 = data_map_count(v33);
          if (v66 < v32)
          {
            v69 = v66;
            v153 = *__error();
            v152 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
            {
              v151 = *(v172 + 4);
              v72 = data_map_valid(v33);
              *buf = v154.n128_u32[0];
              v73 = "n";
              if (v72)
              {
                v73 = "y";
              }

              *v180 = "_get_string_and_length_for_id";
              *&v180[8] = 1024;
              LODWORD(v181) = 574;
              WORD2(v181) = 2048;
              *(&v181 + 6) = v20 & 0x7FFFFFFF;
              HIWORD(v181) = 2048;
              v182 = v69;
              LOWORD(v183) = 1024;
              *(&v183 + 2) = 0;
              WORD3(v183) = 2080;
              *(&v183 + 1) = v155;
              v184 = 1024;
              LODWORD(v185[0]) = v151;
              WORD2(v185[0]) = 2080;
              *(v185 + 6) = v73;
              _os_log_error_impl(&dword_1C278D000, v152, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
            }

            *__error() = v153;
            if ((*(v172 + 4) & 0x20) != 0)
            {
              v70 = *__error();
              v71 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                v74 = *(v172 + 4);
                *buf = v156.n128_u32[0];
                *v180 = "_get_string_and_length_for_id";
                *&v180[8] = 1024;
                LODWORD(v181) = 576;
                WORD2(v181) = 2080;
                *(&v181 + 6) = v155;
                HIWORD(v181) = 1024;
                LODWORD(v182) = v74;
                _os_log_error_impl(&dword_1C278D000, v71, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
              }

              *__error() = v70;
              *(v172 + 4) |= 0x40u;
            }
          }

          v38 = 0;
          v39 = 0;
          LOBYTE(a3) = v171;
          a1 = v172;
          __s = v34;
          v31 = v19 >> 5;
          LODWORD(v30) = v162;
          goto LABEL_48;
        }

        v36 = data;
        LOBYTE(a3) = v171;
        a1 = v172;
        __s = v34;
      }

      else
      {
        if (*(v33 + 56) <= v32 || (v37 = *(*(v33 + 32) + 8 * v32)) == 0)
        {
          v67 = __s;
          v68 = *(a1 + 4);
          if ((v68 & 0x20) != 0)
          {
            v38 = 0;
            v39 = 0;
            a1 = v172;
            *(v172 + 4) = v68 | 0x40;
            LOBYTE(a3) = v171;
          }

          else
          {
            if (SIIsAppleInternal_onceToken != -1)
            {
              dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
            }

            v38 = 0;
            v39 = 0;
            LOBYTE(a3) = v171;
            a1 = v172;
          }

          __s = v67;
          v31 = v19 >> 5;
          goto LABEL_48;
        }

        v36 = (v37 + 6);
      }

      v38 = *(v36 - 2);
      v39 = *(v36 - 1);
    }

LABEL_48:
    if ((v19 & 0x400) != 0)
    {
      v40 = 0;
    }

    else
    {
      v40 = a7;
    }

    v41 = (v19 >> 4) & 2 | (v19 >> 7) & 1 | (v19 >> 1) & 4 | v31 & 8 | v30 & 0x40;
    v163 = v31;
    if (v168)
    {
      v42 = (v19 >> 8) & 0x20 | (v19 >> 14 << 7) | v41;
    }

    else
    {
      v42 = (v19 >> 6) & 0x20 | (v19 >> 12 << 7) | v41;
      if (v40 == 14 && (v19 & 0x4000) != 0)
      {
        LOBYTE(v42) = v42 | 0x80;
      }
    }

    if ((v19 & 0x10) != 0)
    {
      v44 = 15;
    }

    else
    {
      v44 = 11;
    }

    if (v40 == 11)
    {
      v45 = v44;
    }

    else
    {
      v45 = v40;
    }

    if ((a3 & 2) != 0 && (v19 & 0x20) == 0)
    {
      v139 = __si_assert_copy_extra_3233(0, -1);
      v129 = v139;
      v140 = "";
      if (v139)
      {
        v140 = v139;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13661, "field_flags & DB_FIELD_ARRAY_VAL", v140);
LABEL_232:
      free(v129);
      if (!__valid_fs(-1))
      {
        v141 = 3072;
LABEL_235:
        *v141 = -559038737;
        abort();
      }

LABEL_233:
      v141 = 2989;
      goto LABEL_235;
    }

    v46 = v42;
    if (v42 == v39 && v38 == v45)
    {
      v47 = v178;
      v12 = 1;
      v48 = v19;
      goto LABEL_92;
    }

    v162 = v30;
    v30 = __s;
    string_and_length_for_id_15021 = get_string_and_length_for_id_15021(v172, 0, v20, 0, 0);
    v50 = "";
    if (string_and_length_for_id_15021)
    {
      v50 = string_and_length_for_id_15021;
    }

    si_analytics_log_2752("field:%d extras:%d expected:%d type:%d expected:%d ty:%d,ff:%d,,cs:%d,rt:%d %s", v20, v39, v46, v38, v45, a7, v19, v161, v164, v50);
    __s = v30;
    LOBYTE(v30) = v162;
    a1 = v172;
    LOBYTE(v31) = v163;
LABEL_72:
    if (!__s)
    {
      return 28;
    }

    v48 = v19 | v166;
    v51 = __s;
    v52 = internal_copy_field_ids(a1, __s, v177, 4uLL, 0);
    v53 = v30;
    v47 = v52;
    v54 = (v19 & 0x400) != 0 ? 0 : a7;
    v55 = (v48 >> 4) & 2 | (v19 >> 7) & 1 | (v48 >> 1) & 4 | v31 & 8 | v53 & 0x40;
    if (v168)
    {
      v56 = (v19 >> 8) & 0x20 | (v19 >> 14 << 7) | v55;
    }

    else
    {
      v56 = (v19 >> 6) & 0x20 | (v48 >> 12 << 7) | v55;
      if (v54 == 14 && (v19 & 0x4000) != 0)
      {
        LOBYTE(v56) = v56 | 0x80;
      }
    }

    if ((v19 & 0x10) != 0)
    {
      v58 = 15;
    }

    else
    {
      v58 = 11;
    }

    if (v54 == 11)
    {
      LOBYTE(v54) = v58;
    }

    buf[0] = v54;
    buf[1] = v56;
    v59 = strlen(v51);
    id_for_string = _get_id_for_string(v172, 0, v51, v59, v165 | 1, buf);
    v20 = id_for_string;
    if (id_for_string == -1)
    {
      break;
    }

    if (!v47)
    {
      v178[0] = id_for_string;
      v47 = v178;
    }

    v12 = 0;
    LOBYTE(a3) = v171;
    a1 = v172;
    __s = v51;
LABEL_92:
    v61 = v170;
    if ((v48 & 0xA0) == 0x80)
    {
      v137 = __si_assert_copy_extra_3233(0, -1);
      v129 = v137;
      v138 = "";
      if (v137)
      {
        v138 = v137;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13695, "field_flags & DB_FIELD_ARRAY_VAL", v138);
      goto LABEL_232;
    }

    if (v20 >= 0xFFFFFFFE)
    {
      v128 = __si_assert_copy_extra_3233(0, -1);
      v129 = v128;
      v130 = "";
      if (v128)
      {
        v130 = v128;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13700, "(db_uint32_t)name_id!=((db_uint32_t)~0) && (db_uint32_t)name_id!=((db_uint32_t)-2)", v130);
      goto LABEL_232;
    }

    v170 = v47;
    if (!v167)
    {
      v75 = 1;
      if ((a3 & 4) != 0)
      {
        v30 = v159;
        v76 = v158;
        goto LABEL_141;
      }

      v30 = v159;
      v76 = v158;
      if (a7 == 14 && (v48 & 0x5030) == 0x5030)
      {
        v77 = __s;
        if (!_os_feature_enabled_impl())
        {
          v30 = v159;
          goto LABEL_172;
        }

        v79 = *v159;
        v80 = v159[1];
        if (v79 > 2 || v80 > 2 || (v81 = (vector_dimension_vec_sizes_15424[v159[1]] * vector_size_elem_sizes_15423[*v159]), v81 == -1))
        {
          v106 = *__error();
          v107 = _SILogForLogForCategory(7);
          v87 = v170;
          if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
          {
            *buf = v156.n128_u32[0];
            *v180 = "db2_add_field_with_cache";
            *&v180[8] = 1024;
            LODWORD(v181) = 13762;
            WORD2(v181) = 1024;
            *(&v181 + 6) = v79;
            WORD5(v181) = 1024;
            HIDWORD(v181) = v80;
            _os_log_error_impl(&dword_1C278D000, v107, OS_LOG_TYPE_ERROR, "%s:%d: Invalid data type and dimensions. data_type: %hhu dim: %hhu ", buf, 0x1Eu);
          }

          *__error() = v106;
          v17 = 22;
        }

        else
        {
          v82 = v158;
          v83 = (v158 - 2) / v81;
          v84 = 8 * v83;
          if (v83 < 0x801)
          {
            MEMORY[0x1EEE9AC00](v78);
            v30 = &v150 - ((v84 + 15) & 0xFFFFFFFF0);
            bzero(v30, v84);
            a1 = v172;
            v121 = v159;
            if (v82 < 5)
            {
LABEL_210:
              v76 = 8 * v83;
              v75 = 1;
              LOBYTE(a3) = v171;
              goto LABEL_141;
            }

            v122 = 0;
            v123 = v159 + 4;
            v169 = &v159[v158];
            while (1)
            {
              v124 = _get_id_for_string(a1, 5u, v123, v81, -2147483647, v121);
              if ((v124 - 4294967294) < 2 || v124 == 0)
              {
                break;
              }

              *&v30[8 * v122] = v124;
              if (v122 >= v83)
              {
                v76 = 8 * v83;
                v75 = 1;
LABEL_172:
                LOBYTE(a3) = v171;
LABEL_140:
                a1 = v172;
                goto LABEL_141;
              }

              ++v122;
              v123 += v81;
              a1 = v172;
              v121 = v159;
              if (v123 >= v169)
              {
                goto LABEL_210;
              }
            }

            v134 = v124;
            v135 = *__error();
            v136 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
            {
              v144 = *v11;
              *buf = 136316674;
              *v180 = "db2_add_field_with_cache";
              *&v180[8] = 1024;
              LODWORD(v181) = 13780;
              WORD2(v181) = 2048;
              *(&v181 + 6) = v172;
              HIWORD(v181) = 2048;
              v182 = v134;
              LOWORD(v183) = 2048;
              *(&v183 + 2) = v144;
              WORD5(v183) = 1024;
              HIDWORD(v183) = v20;
              v184 = 2080;
              v185[0] = v77;
              _os_log_error_impl(&dword_1C278D000, v136, OS_LOG_TYPE_ERROR, "%s:%d: %p unexpected vec id: %llu oid: 0x%llx name id: %d name: %s", buf, 0x40u);
            }

            *__error() = v135;
            v17 = 22;
            v87 = v170;
          }

          else
          {
            v85 = *__error();
            v86 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *v180 = "db2_add_field_with_cache";
              *&v180[8] = 1024;
              LODWORD(v181) = 13770;
              WORD2(v181) = 2048;
              *(&v181 + 6) = 8 * v83;
              _os_log_error_impl(&dword_1C278D000, v86, OS_LOG_TYPE_ERROR, "%s:%d: Stack allocation of size %zu exceeds limit", buf, 0x1Cu);
            }

            *__error() = v85;
            v17 = 7;
            v87 = v170;
          }
        }

        goto LABEL_187;
      }

LABEL_141:
      v89 = v76 + 13;
      LODWORD(v91) = *(v11 + 2);
      v90 = *(v11 + 3);
      if (v89 <= v91 - v90)
      {
        LODWORD(v169) = v75;
      }

      else
      {
        v92 = v91 + 2 * v89;
        if (v92 >= 0x10000)
        {
          v91 = 0x10000;
        }

        else
        {
          v91 = v92;
        }

        v93 = malloc_type_realloc(v11, v91, 0x1000040EED21634uLL);
        if (!v93)
        {
          v17 = 12;
          v87 = v170;
          goto LABEL_185;
        }

        v11 = v93;
        LODWORD(v169) = v75;
        *(v93 + 2) = v91;
        *v157 = v93;
        v90 = *(v93 + 3);
        LOBYTE(a3) = v171;
        a1 = v172;
      }

      v94 = v11 + 48;
      v95 = &v11[*v160 + 48];
      v96 = v90;
      v97 = &v11[v90];
      if (v95 >= v97)
      {
        goto LABEL_156;
      }

      if (!*v170)
      {
        do
        {
          v95 = (v95 + *(v95 + 2) + 13);
        }

        while (v95 < v97);
LABEL_156:
        if (v95 >= &v11[v91])
        {
          v102 = *__error();
          v103 = _SILogForLogForCategory(7);
          v104 = 2 * (dword_1EBF46AE8 < 4);
          if (os_log_type_enabled(v103, v104))
          {
            v105 = *(v11 + 2);
            *buf = 134218496;
            *v180 = v95;
            *&v180[8] = 2048;
            *&v181 = v11;
            WORD4(v181) = 1024;
            *(&v181 + 10) = v105;
            _os_log_impl(&dword_1C278D000, v103, v104, "db_add_field: ERR: dbf is not valid! (dbf %p dbo %p size 0x%x)\n", buf, 0x1Cu);
          }

          *__error() = v102;
          v17 = 22;
          goto LABEL_184;
        }

        *v160 = v95 - v94;
        *v95 = a7;
        v95[1] = v48;
        if ((a3 & 2) != 0 && (v48 & 0x20) == 0)
        {
          v145 = __si_assert_copy_extra_3233(0, -1);
          v132 = v145;
          v146 = "";
          if (v145)
          {
            v146 = v145;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13963, "dbf->flags & DB_FIELD_ARRAY_VAL", v146);
          goto LABEL_220;
        }

        *(v95 + 1) = v20;
        *(v95 + 2) = v76;
        memcpy(v95 + 13, v30, v76);
        v101 = *(v11 + 3) + v89;
        goto LABEL_182;
      }

LABEL_150:
      v98 = v170 + 1;
      v99 = *v170;
      while (*(v95 + 1) != v99)
      {
        v100 = *v98++;
        v99 = v100;
        if (!v100)
        {
          v95 = (v95 + *(v95 + 2) + 13);
          if (v95 >= v97)
          {
            goto LABEL_156;
          }

          goto LABEL_150;
        }
      }

      *v160 = v95 - v94;
      if ((a3 & 8) != 0 || (a3 & 1) != 0 && ((*(a1 + 804) & 4) != 0 || (v95[1] & 0xA00) != 0x200))
      {
        *v95 = a7;
        v95[1] = v48;
        v108 = *(v95 + 2);
        v109 = v95 + 13;
        if (v76 <= v108)
        {
          memcpy(v95 + 13, v30, v76);
          *(v95 + 2) = v76;
          memmove(&v109[v76], &v109[v108], &v11[*(v11 + 3)] - &v109[v108]);
          v101 = v76 - v108 + *(v11 + 3);
        }

        else
        {
          v110 = &v109[v108];
          v111 = v76 - v108;
          memmove(&v110[v111], v110, v97 - v110);
          memcpy(v95 + 13, v30, v76);
          *(v95 + 2) = v76;
          v101 = *(v11 + 3) + v111;
        }

LABEL_182:
        *(v11 + 3) = v101;
LABEL_183:
        v17 = 0;
        *(v95 + 1) = v20;
        goto LABEL_184;
      }

      if ((a3 & 2) == 0)
      {
        v17 = 17;
LABEL_184:
        v87 = v170;
        LOBYTE(v75) = v169;
LABEL_185:
        if (!v75)
        {
          free(v173);
        }

LABEL_187:
        if (v87 == v178 || v87 == v177)
        {
          return v17;
        }

        v88 = v87;
        goto LABEL_190;
      }

      v112 = v95[1];
      v113 = *(v95 + 2);
      v114 = v113 + v76;
      if ((v112 & 0x80) != 0)
      {
        if (v114 <= 0xEA60)
        {
          goto LABEL_193;
        }
      }

      else if (v114 <= 0x4000)
      {
LABEL_193:
        if ((v48 & 0x20) != 0)
        {
          v115 = v95 + 13;
          if (*v95 != a7)
          {
            v126 = *__error();
            v127 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
            {
              v142 = v95[1];
              v143 = *v95;
              *buf = 136316418;
              *v180 = "db2_add_field_with_cache";
              *&v180[8] = 1024;
              LODWORD(v181) = 13916;
              WORD2(v181) = 1024;
              *(&v181 + 6) = v142;
              WORD5(v181) = 1024;
              HIDWORD(v181) = v143;
              LOWORD(v182) = 1024;
              *(&v182 + 2) = v48;
              HIWORD(v182) = 1024;
              LODWORD(v183) = a7;
              _os_log_error_impl(&dword_1C278D000, v127, OS_LOG_TYPE_ERROR, "%s:%d: types don't match dbf_flags:%x dfb_type:%d flags:%x type:%d", buf, 0x2Au);
            }

            *__error() = v126;
            v17 = 22;
            goto LABEL_184;
          }

          v116 = &v115[v113];
          if ((v112 & 0x20) == 0)
          {
            LODWORD(v172) = *__error();
            v117 = _SILogForLogForCategory(7);
            v118 = dword_1EBF46AE8 < 4;
            v171 = v117;
            v168 = 2 * v118;
            if (os_log_type_enabled(v117, (2 * v118)))
            {
              v119 = v95[1];
              v120 = *v95;
              *buf = 67109888;
              *v180 = v119;
              *&v180[4] = 1024;
              *&v180[6] = v120;
              LOWORD(v181) = 1024;
              *(&v181 + 2) = v48;
              WORD3(v181) = 1024;
              DWORD2(v181) = a7;
              _os_log_impl(&dword_1C278D000, v171, v168, "original field not an array, dbf_flags:%x dfb_type:%d flags:%x type:%d", buf, 0x1Au);
            }

            *__error() = v172;
            v96 = *(v11 + 3);
          }

          memmove(&v116[v76], v116, &v11[v96] - v116);
          memcpy(&v115[*(v95 + 2)], v30, v76);
          *(v95 + 2) += v76;
          *(v11 + 3) += v76;
          v95[1] |= v48;
          goto LABEL_183;
        }

        v147 = __si_assert_copy_extra_3233(0, -1);
        v148 = v147;
        if (v147)
        {
          v149 = v147;
        }

        else
        {
          v149 = "";
        }

        __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 13910, v149);
        free(v148);
        goto LABEL_233;
      }

      v17 = 7;
      goto LABEL_184;
    }

    v62 = __s;
    v63 = check_and_decompose_string(v61, v27, &v173, &v175);
    if (v63)
    {
      v17 = v63;
      if (v47 == v178 || v47 == v177)
      {
        return v17;
      }

      v88 = v47;
LABEL_190:
      free(v88);
      return v17;
    }

    v30 = v173;
    v64 = v169;
    if (v173 != v61)
    {
      v64 = 1;
      v27 = v175;
    }

    if ((v48 & 0x10) == 0)
    {
      LOBYTE(a3) = v171;
LABEL_139:
      v75 = v64 == 0;
      v76 = v27;
      goto LABEL_140;
    }

    if (v27 - 1 != strlen(v173))
    {
      v131 = __si_assert_copy_extra_3233(0, -1);
      v132 = v131;
      v133 = "";
      if (v131)
      {
        v133 = v131;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13722, "size-1 == (db_int32_t)strlen(data)", v133);
LABEL_220:
      free(v132);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v65 = _get_id_for_string(v172, 1u, v173, v27 - 1, -2147483647, 0);
    v174 = v65;
    LOBYTE(a3) = v171;
    __s = v62;
    if (v65 != -1 && (v65 != -2 || !*v30))
    {
      v30 = &v174;
      v27 = 4;
      goto LABEL_139;
    }

    LODWORD(v169) = v64;
    if (v170 != v178 && v170 != v177)
    {
      free(v170);
      __s = v62;
      LOBYTE(a3) = v171;
    }

    v19 = v48 & 0xFFFFFFEF;
    v17 = 7;
    v28 = 1;
    a1 = v172;
    if ((v48 & 0x20) != 0)
    {
      return v17;
    }
  }

  if (v47 != v177)
  {
    free(v47);
  }

  return 28;
}

uint64_t _get_id_for_string(uint64_t a1, unsigned int a2, unsigned __int8 *a3, int a4, int a5, void *a6)
{
  v6 = a5;
  v84 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = *(a1 + 8 * a2 + 880);
  if (a2 > 4 || (*(a1 + 804) & 0x14) != 0)
  {
    v21 = table_extra_bytes_14628[a2];
    if (!a2 && a5 < 0)
    {
      v58 = __si_assert_copy_extra_3233(0, -1);
      v55 = v58;
      v59 = "";
      if (v58)
      {
        v59 = v58;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11279, "!(flags& 0x80000000)", v59);
      goto LABEL_114;
    }

    if (a2 <= 1 && !*a3)
    {
      return 4294967294;
    }

    if (a2 == 1)
    {
      if (!*a3)
      {
        v28 = a6;
        v26 = 1;
        v25 = 1;
        goto LABEL_44;
      }

      v22 = a3 + 1;
      v23 = -1;
      do
      {
        v24 = *v22++;
        ++v23;
      }

      while (v24);
      v25 = v23 + 2;
    }

    else
    {
      if (a2)
      {
        v25 = a4;
      }

      else
      {
        v25 = a4 + 1;
      }

      if (a2 == 5)
      {
LABEL_35:
        v26 = a2;
        v27 = a3;
        v28 = a6;
        result = data_map_id_get_with_key(*(a1 + 8 * a2 + 880), a3, v25, a6);
        if (result)
        {
          return result;
        }

        goto LABEL_45;
      }
    }

    if (!a2)
    {
      goto LABEL_35;
    }

    v28 = a6;
    v26 = a2;
LABEL_44:
    v27 = a3;
    result = data_map_id_get(*(a1 + 8 * a2 + 880), a3, v25);
    if (result)
    {
      return result;
    }

LABEL_45:
    if (v6)
    {
      v32 = (v25 + v21);
      if (v26)
      {
        if (v32 > 32775)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (v32 > 16391)
      {
        return 0xFFFFFFFFLL;
      }

      if ((v6 & 2) != 0)
      {
        _dirty_datastore_locked(a1, 0);
      }

      else if (*(a1 + 4))
      {
        db2_dirty_datastore(a1);
      }

      if (v26 != 5 && v26)
      {
        result = data_map_id_insert(v9, v27, v25);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v29);
        bzero(&v73 - ((v32 + 15) & 0x1FFFFFFF0), (v25 + v21));
        memcpy(&v73 - ((v32 + 15) & 0x1FFFFFFF0), v28, v21);
        memcpy(&v73 + v21 - ((v32 + 15) & 0x1FFFFFFF0), v27, v25);
        result = data_map_id_insert(v9, &v73 - ((v32 + 15) & 0x1FFFFFFF0), v32);
      }

      if (result)
      {
        if (v26 == 4)
        {
          v36 = *(a1 + 968);
          if (v36)
          {
            v37 = result;
            (*(v36 + 16))(v36, result);
            return v37;
          }
        }

        return result;
      }

      return 0xFFFFFFFFLL;
    }

    return 4294967294;
  }

  v10 = *(v9 + 24);
  v11 = table_extra_bytes_14628[a2];
  if (!a2 && a5 < 0)
  {
    v60 = __si_assert_copy_extra_3233(0, -1);
    v55 = v60;
    v61 = "";
    if (v60)
    {
      v61 = v60;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11352, "!(flags& 0x80000000)", v61);
    goto LABEL_114;
  }

  v12 = *a3;
  if (a2 <= 1 && !*a3)
  {
    return 4294967294;
  }

  LODWORD(v13) = a4;
  if (a2 != 1)
  {
    goto LABEL_16;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  while (1)
  {
    if (v12 == 22)
    {
      v15 = 1;
      v14 = v13;
      goto LABEL_10;
    }

    if (!v12)
    {
      break;
    }

LABEL_10:
    v12 = a3[++v13];
  }

  if (v15)
  {
    a4 = v14;
  }

  else
  {
    a4 = v13;
  }

LABEL_16:
  v76 = a4;
  v77 = a2;
  v16 = *(v9 + 16);
  if (a2 > 1)
  {
    v18 = a6;
    v17 = a3;
    v19 = hash_field_lookup(v16, a3);
    if (!v19)
    {
      goto LABEL_38;
    }

    return *v19;
  }

  v17 = a3;
  v18 = a6;
  v19 = hash_lookup_extended(v16, a3, a6, 0);
  if (v19)
  {
    return *v19;
  }

LABEL_38:
  if ((v6 & 1) == 0)
  {
    return 4294967294;
  }

  if (v13 >= 0x2000)
  {
    return 0xFFFFFFFFLL;
  }

  os_unfair_lock_lock((v9 + 64));
  v30 = *(v9 + 16);
  if (v77 > 1)
  {
    v31 = hash_field_lookup(v30, v17);
  }

  else
  {
    v31 = hash_lookup_extended(v30, v17, v18, 0);
  }

  v33 = v31;
  if (v31)
  {
    os_unfair_lock_unlock((v9 + 64));
    return *v33;
  }

  v75 = *(v9 + 56);
  v34 = *v9;
  if (*v9 == -1)
  {
    os_unfair_lock_lock((v9 + 68));
    v38 = a1 + 4 * v8 + 48;
    do
    {
      v35 = v10;
      v39 = v38;
      v10 = *(v10 + 24);
      v38 = v35 + 20;
    }

    while (v10);
    v34 = *v39;
    os_unfair_lock_unlock((v9 + 68));
  }

  else
  {
    v35 = *(v9 + 8);
  }

  if ((v6 & 2) != 0)
  {
    _dirty_datastore_locked(a1, 0);
  }

  else if (*(a1 + 4))
  {
    db2_dirty_datastore(a1);
  }

  v40 = *(v35 + 8);
  v41 = v77;
  v42 = 4;
  if (v77 < 2)
  {
    v42 = 5;
  }

  v43 = v42 + v11 + v13;
  v44 = v43 > *(v35 + 4) - v40;
  v45 = v17;
  v74 = v17;
  if (v44)
  {
    if (dword_1EBF46AE8 >= 5)
    {
      v67 = v18;
      v68 = v17;
      v69 = *__error();
      v70 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v79 = v35;
        v80 = 1024;
        v81 = v77;
        _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, "Grow string table %p (%d)", buf, 0x12u);
      }

      *__error() = v69;
      v41 = v77;
      v45 = v68;
      v18 = v67;
    }

    if ((v6 & 2) != 0)
    {
      v46 = grow_string_table_locked(a1, v41, v45, v13, v18, v75);
    }

    else
    {
      v46 = grow_string_table(a1, v41, v45, v13, v18, v75);
    }

    v51 = v46;
    goto LABEL_103;
  }

  v47 = *(v9 + 8);
  if (v47 && v47 != v35)
  {
    v65 = __si_assert_copy_extra_3233(0, -1);
    v55 = v65;
    v66 = "";
    if (v65)
    {
      v66 = v65;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11432, "string_table->dirty_page == 0 ||string_table->dirty_page==dnt", v66);
    goto LABEL_114;
  }

  if (*v9 == -1)
  {
    *(v9 + 8) = v35;
    *v9 = v34;
  }

  v48 = v18;
  v49 = (v35 + v40);
  v50 = (v35 + v40 + 4);
  if (v41 > 1)
  {
    memcpy(&v50[v11], v45, v13);
  }

  else
  {
    strlcpy(&v50[v11], v45, v13 + 1);
  }

  memcpy(v50, v48, v11);
  v52 = v75;
  *v49 = v75;
  if (grow_string_table_ptrs(a1, v77))
  {
    os_unfair_lock_unlock((v9 + 64));
    return -1;
  }

  *(v35 + 8) += v43;
  ++*(v9 + 56);
  *(*(v9 + 32) + 8 * (v52 & 0x7FFFFFFF)) = v49;
  os_unfair_lock_assert_owner((v9 + 64));
  if (v77 > 1)
  {
    if (hash_field_insert(*(v9 + 16), v50, v49) != 17)
    {
      goto LABEL_102;
    }

    v71 = __si_assert_copy_extra_3233(0, -1);
    v55 = v71;
    v72 = "";
    if (v71)
    {
      v72 = v71;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11479, "this_ret!=17", v72);
LABEL_114:
    free(v55);
    if (__valid_fs(-1))
    {
      v62 = 2989;
    }

    else
    {
      v62 = 3072;
    }

    *v62 = -559038737;
    abort();
  }

  *(*(v9 + 40) + (v52 & 0x7FFFFFFF)) = v76;
  if (v48)
  {
    v53 = v50;
  }

  else
  {
    v53 = 0;
  }

  if (hash_insert_extended(*(v9 + 16), &v50[v11], v53, v49) == 17)
  {
    v54 = __si_assert_copy_extra_3233(0, -1);
    v55 = v54;
    v56 = "";
    if (v54)
    {
      v56 = v54;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11476, "this_ret!=17", v56);
    goto LABEL_114;
  }

LABEL_102:
  v51 = *v49;
LABEL_103:
  os_unfair_lock_unlock((v9 + 64));
  if (v77 == 4)
  {
    v57 = *(a1 + 968);
    if (v57)
    {
      (*(v57 + 16))(v57, v51);
    }
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v63 = *__error();
    v64 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v79 = v74;
      v80 = 1024;
      v81 = v51;
      v82 = 1024;
      v83 = v77;
      _os_log_impl(&dword_1C278D000, v64, OS_LOG_TYPE_DEFAULT, "Inserted field name %s with id %d for %d", buf, 0x18u);
    }

    *__error() = v63;
  }

  return v51;
}

uint64_t db_delete_field_weak(_DWORD *a1, uint64_t *a2, char *a3, int a4)
{
  if (*a1 != 1685287992)
  {
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 366, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v5 = *a2;
  v6 = a4 ^ 1;

  return _delete_field(a1, v5, a3, v6);
}

uint64_t data_map32_id_get_with_key(uint64_t a1, unsigned __int8 *a2, size_t a3, void *a4)
{
  v109 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1460) == 1)
  {
    v8 = LegacyHash(a2, a3);
  }

  else
  {
    v8 = commonHash(a3, a2);
  }

  v9 = v8;
  if (_data_map32_rdlock(a1))
  {
    v10 = 0;
    goto LABEL_52;
  }

  v67 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v12 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
  v65 = HIDWORD(v12);
  v66 = v12;
  v64 = __PAIR64__(v13, v14);
  v15 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
  v16 = *(v15 + 312);
  v17 = *(v15 + 224);
  if (v17)
  {
    v17(*(v15 + 288));
  }

  v63 = v66;
  v62 = v65;
  v61 = v64;
  if (_setjmp(v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v83) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v83, 2u);
    }

    *(v15 + 312) = v16;
    CIOnThreadCleanUpReset(v61);
    dropThreadId(v63, 1, add_explicit + 1);
    CICleanUpReset(v63, HIDWORD(v61));
    v10 = 0;
    goto LABEL_50;
  }

  __s1 = a2;
  __s2 = a4;
  v58 = add_explicit;
  v18 = *(a1 + 1392);
  v19 = v9 % v18;
  v20 = v9 % v18;
  v55 = *(a1 + 224);
  while (1)
  {
    v21 = v20;
    v22 = *(a1 + 1384);
    v23 = *(v22 + 4 * v20);
    v24 = v23;
    if (!v23)
    {
      break;
    }

    v25 = v21;
    if (*(a1 + 1448))
    {
      os_unfair_lock_lock((a1 + 1444));
      v51 = *(a1 + 1448);
      if (v51)
      {
        bit_vector_set_13535(v51, v24);
      }

      os_unfair_lock_unlock((a1 + 1444));
      v26 = *(v22 + 4 * v25);
    }

    else
    {
      v26 = v23;
    }

    if (*(a1 + 220) <= v26)
    {
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
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v38 = *__error();
      v39 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
LABEL_33:
        *__error() = v38;
        goto LABEL_34;
      }

      v47 = *(a1 + 220);
      v48 = fd_name(*(a1 + 1272), &v83, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_offset_entry";
      *&__s[12] = 1024;
      *&__s[14] = 422;
      *&__s[18] = 1024;
      *&__s[20] = v26;
      *&__s[24] = 1024;
      *&__s[26] = v47;
      *&__s[30] = 2048;
      *&__s[32] = a1;
      *&__s[40] = 2080;
      *&__s[42] = v48;
      v44 = v39;
      v45 = "%s:%d: invalid data id %d max %u %p %s";
      v46 = 50;
LABEL_42:
      _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, v45, __s, v46);
      goto LABEL_33;
    }

    v27 = *(a1 + 1352);
    if (v27)
    {
      v28 = *(v27 + 4 * v26);
      v29 = v28;
      if (v28 != 1)
      {
        v59 = 0;
        v60 = 0;
        v68 = 0;
        v30 = *(a1 + 1328);
        if (v30 > v28)
        {
          data_entry_restore_32(*(a1 + 1320), v28, v30, &v59, &v68);
          v31 = v68;
          if (v68 == 1)
          {
            v108 = 0;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v32 = 5;
            v33 = v29;
            memset(__s, 0, sizeof(__s));
            do
            {
              if (v33 >= *(a1 + 1328))
              {
                break;
              }

              v34 = strlen(__s);
              sprintf(&__s[v34], "%d ", *(*(a1 + 1320) + v33++));
              --v32;
            }

            while (v32);
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
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v35 = *__error();
            v36 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v49 = fd_name(*(a1 + 1272), &v83, 0x100uLL);
              v50 = *(a1 + 1328);
              *buf = 136316674;
              v70 = "_data_map32_get_data_entry";
              v71 = 1024;
              v72 = 442;
              v73 = 2080;
              v74 = v49;
              v75 = 2048;
              v76 = v29;
              v77 = 2048;
              v78 = v50;
              v79 = 2048;
              v80 = v59;
              v81 = 2080;
              v82 = __s;
              _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", buf, 0x44u);
            }

            *__error() = v35;
            v31 = 1;
          }

          if ((v31 & 1) == 0 && v55 + a3 == v59)
          {
            v37 = v60;
            if (!memcmp(__s1, &v60[v55], a3) && !memcmp(v37, __s2, v55))
            {
              v10 = *(v22 + 4 * v25);
              goto LABEL_47;
            }
          }

          goto LABEL_34;
        }

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
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v38 = *__error();
        v41 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        v42 = *(a1 + 1328);
        v43 = fd_name(*(a1 + 1272), &v83, 0x100uLL);
        *__s = 136316418;
        *&__s[4] = "_data_map32_get_data_entry";
        *&__s[12] = 1024;
        *&__s[14] = 446;
        *&__s[18] = 2048;
        *&__s[20] = v29;
        *&__s[28] = 2048;
        *&__s[30] = v42;
        *&__s[38] = 2048;
        *&__s[40] = a1;
        *&__s[48] = 2080;
        *&__s[50] = v43;
        v44 = v41;
        v45 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
        v46 = 58;
        goto LABEL_42;
      }
    }

LABEL_34:
    if (v25 + 1 == v18)
    {
      v40 = 0;
    }

    else
    {
      v40 = v25 + 1;
    }

    v20 = v40;
    if (v40 == v19)
    {
      v10 = 0;
      goto LABEL_47;
    }
  }

  v10 = 0;
LABEL_47:
  v67 = 1;
  v52 = threadData[9 * v63 + 1] + 320 * v62;
  *(v52 + 312) = v16;
  v53 = *(v52 + 232);
  if (v53)
  {
    v53(*(v52 + 288));
  }

  dropThreadId(v63, 0, v58 + 1);
LABEL_50:
  if ((v67 & 1) == 0)
  {
    v10 = 0;
    *(a1 + 1464) = 22;
  }

LABEL_52:
  _data_map32_unlock(a1);
  return v10;
}

uint64_t _delete_field(uint64_t a1, uint64_t a2, char *__s, int a4)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 804) & 8) != 0)
  {
    return 13;
  }

  v17[0] = 0;
  v17[1] = 0;
  v6 = internal_copy_field_ids(a1, __s, v17, 4uLL, 0);
  if (!v6)
  {
    return 2;
  }

  v7 = *(a2 + 12);
  if (v7 < 0x31)
  {
LABEL_13:
    if (v6 != v17)
    {
      free(v6);
    }

    return 2;
  }

  v8 = a2 + v7;
  v9 = a2 + 48;
  while (1)
  {
    v11 = *(v9 + 8);
    if (v9 + v11 > v8)
    {
      *(a2 + 12) = v9 - a2;
      return 2;
    }

    v12 = *v6;
    if (*v6)
    {
      break;
    }

LABEL_6:
    v9 += v11 + 13;
    if (v9 >= v8)
    {
      goto LABEL_13;
    }
  }

  v13 = 1;
  while (*(v9 + 4) != v12)
  {
    v12 = v6[v13++];
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  if (a4 && (*(v9 + 2) & 0x200) != 0)
  {
    if (v17 != v6)
    {
      free(v6);
    }

    return 1;
  }

  else
  {
    v14 = v9 + v11;
    v15 = v9 - (v14 + 13);
    v16 = v6;
    memmove(v9, (v14 + 13), v8 - (v14 + 13));
    *(a2 + 12) += v15;
    if (v17 != v16)
    {
      free(v16);
    }

    return 0;
  }
}

CFDictionaryRef _decodeSDBField(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3, char **a4, int a5, int a6, uint64_t a7, CFAllocatorRef allocator, __n128 a9)
{
  v103 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v9 = *a2;
  if ((v9 - 1) > 0xF)
  {
    return 0;
  }

  v11 = a7;
  v12 = a3;
  v14 = *(a2 + 2);
  v94 = *(a2 + 2);
  v15 = a2[1];
  if (v9 != 14)
  {
    if (a4 || (v15 & 0x80) == 0)
    {
      if ((v15 & 0x80) != 0)
      {
        keys[0] = a3;
        values = 0;
        if (db_get_localized_string(a1, a2, a4, keys, &values, a7))
        {
          result = CFStringCreateWithCString(allocator, "", 0x8000100u);
        }

        else
        {
          result = CFStringCreateWithBytes(allocator, keys[0], values - keys[0], 0x8000100u, 0);
        }

        if (dword_1EBF46ADC < 5)
        {
          return result;
        }

        v33 = result;
        v34 = *__error();
        v35 = _SILogForLogForCategory(4);
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_113;
        }

        LODWORD(keys[0]) = 138412290;
        *(keys + 4) = v33;
        v36 = "DB_FIELD_LOCALIZED_STR: %@. ";
      }

      else if ((v15 & 0x20) != 0)
      {
        if (v9 == 11)
        {
          result = createStringArray(a1, a2[1], a3, v14, a7, allocator);
          if (dword_1EBF46ADC < 5)
          {
            return result;
          }

          v33 = result;
          v34 = *__error();
          v35 = _SILogForLogForCategory(4);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_113;
          }

          LODWORD(keys[0]) = 138412290;
          *(keys + 4) = v33;
          v36 = "db_utf8str: %@. ";
        }

        else
        {
          result = createScalarArray(a1, v9, v15, a3, v14 / SDBTypeSizes[v9], a7, allocator);
          if (dword_1EBF46ADC < 5)
          {
            return result;
          }

          v33 = result;
          v34 = *__error();
          v35 = _SILogForLogForCategory(4);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_113;
          }

          LODWORD(keys[0]) = 138412290;
          *(keys + 4) = v33;
          v36 = "Scalar array: %@. ";
        }
      }

      else
      {
        result = createValue(a1, v9, v15, a3, a7, allocator);
        if (dword_1EBF46ADC < 5)
        {
          return result;
        }

        v33 = result;
        v34 = *__error();
        v35 = _SILogForLogForCategory(4);
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_113;
        }

        LODWORD(keys[0]) = 138412290;
        *(keys + 4) = v33;
        v36 = "DB_VAL: %@. ";
      }

      goto LABEL_111;
    }

    v26 = 0x1EBF46000uLL;
    if ((v15 & 0x110) == 0x10 && a5)
    {
      v27 = a2;
      UniquedDBFValue = getUniquedDBFValue(a1, 4u, a2, a9, a6);
      keys[0] = UniquedDBFValue;
      if (UniquedDBFValue != -2 && UniquedDBFValue)
      {
        result = CFNumberCreate(allocator, kCFNumberCFIndexType, keys);
        values = result;
        if (result)
        {
          v91 = &stru_1F4284FD0;
          v71 = CFDictionaryCreate(allocator, &v91, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFRelease(values);
          result = v71;
        }
      }

      else
      {
        v29 = *__error();
        v30 = _SILogForLogForCategory(4);
        v31 = dword_1EBF46ADC < 3;
        if (os_log_type_enabled(v30, (dword_1EBF46ADC < 3)))
        {
          v32 = *(v27 + 1);
          LODWORD(values) = 67109120;
          HIDWORD(values) = v32;
          _os_log_impl(&dword_1C278D000, v30, v31, "*warn* could not resolve unique dbf value for field %d", &values, 8u);
        }

        *__error() = v29;
        result = 0;
      }

LABEL_108:
      if (*(v26 + 2780) < 5)
      {
        return result;
      }

      v33 = result;
      v34 = *__error();
      v35 = _SILogForLogForCategory(4);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_113;
      }

      LODWORD(keys[0]) = 138412290;
      *(keys + 4) = v33;
      v36 = "DB_FIELD_LOCALIZED_STR: %@. ";
LABEL_111:
      v38 = v35;
      v39 = 12;
      goto LABEL_112;
    }

    result = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v14)
    {
      goto LABEL_108;
    }

    theArraya = result;
    v46 = &v12[v14];
    while (1)
    {
      if ((v15 & 0x10) != 0)
      {
        v51 = *v12;
        if (v11)
        {
          string_for_id_locked = db_get_string_for_id_locked(a1, v51);
        }

        else
        {
          string_for_id_locked = db_get_string_for_id(a1, v51);
        }

        v50 = string_for_id_locked;
        v49 = (v12 + 4);
        if (!string_for_id_locked)
        {
          v47 = &stru_1F4284FD0;
          goto LABEL_53;
        }

        v48 = strlen(string_for_id_locked);
        if (v48 >= 2)
        {
LABEL_62:
          v53 = 0;
          while (v50[v53] != 22 || v50[v53 + 1] != 2)
          {
            if (v48 - 1 == ++v53)
            {
              goto LABEL_72;
            }
          }

          v54 = CFStringCreateWithBytes(allocator, v50, v53, 0x8000100u, 0);
          v55 = (v53 + 2);
          if (v48 > v55)
          {
            v56 = CFStringCreateWithCString(allocator, &v50[v55], 0x8000100u);
            if (v56)
            {
              v47 = v56;
            }

            else
            {
              v47 = &stru_1F4284FD0;
            }

            if (!v54)
            {
              goto LABEL_53;
            }

LABEL_74:
            CFDictionarySetValue(theArraya, v47, v54);
            CFRelease(v54);
            goto LABEL_53;
          }

          goto LABEL_73;
        }
      }

      else
      {
        v48 = strlen(v12);
        v49 = &v12[v48 + 1];
        v50 = v12;
        if (v48 >= 2)
        {
          goto LABEL_62;
        }
      }

LABEL_72:
      v54 = CFStringCreateWithBytes(allocator, v50, v48, 0x8000100u, 0);
LABEL_73:
      v47 = &stru_1F4284FD0;
      if (v54)
      {
        goto LABEL_74;
      }

LABEL_53:
      CFRelease(v47);
      v12 = v49;
      if (v49 >= v46)
      {
        result = theArraya;
        v26 = 0x1EBF46000;
        goto LABEL_108;
      }
    }
  }

  if ((~v15 & 0x5020) != 0)
  {
    result = CFDataCreate(allocator, a3, v14);
    if (dword_1EBF46ADC < 5)
    {
      return result;
    }

    v33 = result;
    v34 = *__error();
    v37 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(keys[0]) = 0;
      v36 = "DB Raw";
      v38 = v37;
      v39 = 2;
LABEL_112:
      _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, v36, keys, v39);
    }

LABEL_113:
    *__error() = v34;
    return v33;
  }

  if ((v15 & 8) != 0)
  {
    if ((v15 & 0x10) != 0)
    {
      v40 = *(a2 + 13);
      if (v14 >= 8 && v40 && v40 != 4294967294)
      {
        v73 = a2;
        v74 = *(a1 + 920);
        v75 = *(a2 + 13);
        if (a7)
        {
          vector_for_id_locked = db2_get_vector_for_id_locked(v74, v75, &v94, keys);
        }

        else
        {
          vector_for_id_locked = db2_get_vector_for_id(v74, v75, &v94, keys);
        }

        LODWORD(v14) = v94;
        if (vector_for_id_locked)
        {
          v12 = (vector_for_id_locked - 2);
          LODWORD(v14) = v94 + 2;
          v94 += 2;
        }

        else
        {
          v12 = 0;
        }

        a2 = v73;
      }

      else
      {
        v41 = a2;
        si_analytics_log_2752("Malformed sdb entry for vector %llx %u", *(a2 + 13), v14);
        a2 = v41;
        v12 = 0;
      }
    }

    result = 0;
    if (!v12)
    {
      return result;
    }

    if (v14 < 3)
    {
      return result;
    }

    result = 0;
    LOBYTE(valuePtr) = *v12;
    v42 = v12[1];
    HIBYTE(v93) = v12[1];
    if (valuePtr > 2uLL || v42 > 2)
    {
      return result;
    }

    v43 = a2;
    v19 = (vector_dimension_vec_sizes_15424[v42] * vector_size_elem_sizes_15423[valuePtr]);
    v44 = v12 + 2;
    v91 = v12 + 2;
    cf = CFNumberCreate(allocator, kCFNumberCharType, &valuePtr);
    v21 = CFNumberCreate(allocator, kCFNumberCharType, &v93 + 1);
    v22 = &v12[v14];
    if (&v44[v19] <= v22)
    {
      if ((v43[1] & 0x20) != 0)
      {
        theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        do
        {
          v77 = CFDataCreate(allocator, v44, v19);
          *keys = xmmword_1E8198998;
          v101 = *off_1E81989A8;
          v102 = @"vec_version";
          values = cf;
          v96 = v21;
          v97 = v77;
          v98 = 0;
          v99 = 0;
          v78 = CFDictionaryCreate(allocator, keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFRelease(v77);
          if (v78)
          {
            CFArrayAppendValue(theArray, v78);
            CFRelease(v78);
          }

          if (&v44[v19] >= v22)
          {
            break;
          }

          v79 = &v44[2 * v19];
          v44 += v19;
        }

        while (v79 <= v22);
        goto LABEL_132;
      }

LABEL_124:
      v45 = decodeVector(allocator, v19, &v91, v22, cf, v21);
      goto LABEL_133;
    }

LABEL_49:
    v45 = 0;
    goto LABEL_133;
  }

  if ((v15 & 0x10) == 0)
  {
    if (v14 >= 3)
    {
      result = 0;
      LOBYTE(valuePtr) = *a3;
      v17 = a3[1];
      HIBYTE(v93) = a3[1];
      if (valuePtr > 2uLL || v17 > 2)
      {
        return result;
      }

      v18 = a2;
      v19 = (vector_dimension_vec_sizes_15424[v17] * vector_size_elem_sizes_15423[valuePtr]);
      v20 = a3 + 2;
      v91 = a3 + 2;
      cf = CFNumberCreate(allocator, kCFNumberCharType, &valuePtr);
      v21 = CFNumberCreate(allocator, kCFNumberCharType, &v93 + 1);
      v22 = &v12[v14];
      if (&v20[v19] <= v22)
      {
        if ((v18[1] & 0x20) != 0)
        {
          theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
          do
          {
            v23 = CFDataCreate(allocator, v20, v19);
            *keys = xmmword_1E8198998;
            v101 = *off_1E81989A8;
            v102 = @"vec_version";
            values = cf;
            v96 = v21;
            v97 = v23;
            v98 = 0;
            v99 = 0;
            v24 = CFDictionaryCreate(allocator, keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CFRelease(v23);
            if (v24)
            {
              CFArrayAppendValue(theArray, v24);
              CFRelease(v24);
            }

            if (&v20[v19] >= v22)
            {
              break;
            }

            v25 = &v20[2 * v19];
            v20 += v19;
          }

          while (v25 <= v22);
LABEL_132:
          v45 = theArray;
LABEL_133:
          CFRelease(cf);
          v72 = v21;
LABEL_134:
          CFRelease(v72);
          return v45;
        }

        goto LABEL_124;
      }

      goto LABEL_49;
    }

    return 0;
  }

  v57 = a2;
  v93 = 0;
  valuePtr = 0;
  allocatora = *MEMORY[0x1E695E480];
  result = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v14 < 8)
  {
    return result;
  }

  cfa = 0;
  theArrayb = result;
  v58 = 0;
  v85 = 0;
  v59 = (v57 + 13);
  v60 = v14 >> 3;
  do
  {
    v62 = *v59++;
    v61 = v62;
    v91 = v62;
    if (v62 == 4294967294)
    {
      v80 = __si_assert_copy_extra_2708(0);
      v81 = v80;
      v82 = "";
      if (v80)
      {
        v82 = v80;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.c", 2613, "((db_uint32_t)-2) != chunk", v82);
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

    LOBYTE(values) = 0;
    keys[0] = 0;
    keys[1] = 0;
    *&v101 = 0;
    data_map_get_data_entry(keys, *(a1 + 920), v61, &values, v11 != 0);
    if (values == 1)
    {
      v63 = LODWORD(keys[1]);
      v64 = keys[0];
      if (keys[0])
      {
        v65 = BYTE2(v101) | (BYTE3(v101) << 8);
        if (v58)
        {
          if (v101 != HIBYTE(v93) || BYTE1(v101) != v93 || v65 != valuePtr)
          {
            goto LABEL_82;
          }
        }

        else
        {
          LOBYTE(v93) = BYTE1(v101);
          HIBYTE(v93) = v101;
          valuePtr = BYTE2(v101) | (BYTE3(v101) << 8);
          v58 = CFNumberCreate(allocator, kCFNumberCharType, &v93 + 1);
          cfa = CFNumberCreate(allocator, kCFNumberCharType, &v93);
          if (v65)
          {
            v85 = CFNumberCreate(allocator, kCFNumberSInt16Type, &valuePtr);
          }
        }

        v66 = CFNumberCreate(allocatora, kCFNumberSInt64Type, &v91);
        v67 = CFDataCreate(allocator, v64, v63);
        *keys = xmmword_1E8198998;
        v101 = *off_1E81989A8;
        v102 = @"vec_version";
        values = v58;
        v96 = cfa;
        v97 = v67;
        v98 = v66;
        v68 = 4;
        if (v85)
        {
          v68 = 5;
        }

        if (v66)
        {
          v69 = v68;
        }

        else
        {
          v69 = 3;
        }

        v99 = v85;
        v70 = CFDictionaryCreate(allocator, keys, &values, v69, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRelease(v67);
        CFRelease(v66);
        if (v70)
        {
          CFArrayAppendValue(theArrayb, v70);
          CFRelease(v70);
        }
      }
    }

LABEL_82:
    --v60;
  }

  while (v60);
  if (v58)
  {
    CFRelease(v58);
  }

  result = theArrayb;
  if (cfa)
  {
    CFRelease(cfa);
    result = theArrayb;
  }

  if (v85)
  {
    v45 = result;
    v72 = v85;
    goto LABEL_134;
  }

  return result;
}

int *_checkIndexSetValidity(int *result)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = result[4];
  if (v1 != -1)
  {
    v2 = result;
    v3 = result[2];
    if (v1 >= v3)
    {
      v4 = *__error();
      v5 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v15 = v2[2];
        v16 = v2[4];
        *buf = 136316162;
        v27 = "_checkIndexSetValidity";
        v28 = 1024;
        v29 = 136;
        v30 = 2048;
        *v31 = v2;
        *&v31[8] = 1024;
        *v32 = v15;
        *&v32[4] = 1024;
        v33[0] = v16;
        _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: indexSet:%p count:%d current:%d", buf, 0x28u);
      }

      result = __error();
      *result = v4;
      v1 = v2[4];
      v3 = v2[2];
    }

    if (v1 >= v3)
    {
      v17 = __si_assert_copy_extra_661(-1);
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Expected current index (%d) less than count (%d)", "SIStoring.c", 142, "(uint32_t)indexSet->currentIndex<(uint32_t)indexSet->indexCount", v19, v2[4], v2[2]);
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

    v6 = *(*v2 + 8 * v1);
    v7 = atomic_load((v6 + 36));
    if ((v7 & 3) != 0 || *(v6 + 15203) == 1)
    {
      v8 = *__error();
      v9 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = atomic_load((v6 + 36));
        v12 = *(v6 + 15203);
        v13 = v2[2];
        v14 = v2[4];
        *buf = 136316418;
        v27 = "_checkIndexSetValidity";
        v28 = 1024;
        v29 = 147;
        v30 = 1024;
        *v31 = v11;
        *&v31[4] = 1024;
        *&v31[6] = v12;
        *v32 = 1024;
        *&v32[2] = v13;
        LOWORD(v33[0]) = 1024;
        *(v33 + 2) = v14;
        _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: Expected current index is writable. flags: %08x, readOnly:%d, count:%d, current:%d", buf, 0x2Au);
      }

      result = __error();
      *result = v8;
    }

    v10 = atomic_load((v6 + 36));
    if ((v10 & 3) != 0 || *(v6 + 15203) == 1)
    {
      v21 = __si_assert_copy_extra_661(-1);
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      v24 = atomic_load((v6 + 36));
      __message_assert("%s:%u: failed assertion '%s' %s Expected current index is writable. flags: %08x, readOnly:%d, count:%d, current:%d", "SIStoring.c", 154, "ContentIndexWritable(ref)", v23, v24, *(v6 + 15203), v2[2], v2[4]);
      free(v22);
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
  }

  return result;
}

__CFArray *createScalarArray(int *a1, int a2, __int16 a3, const char *a4, int a5, int a6, CFAllocatorRef allocator)
{
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (a5)
  {
    v15 = SDBTypeSizes[a2];
    do
    {
      Value = createValue(a1, a2, a3, a4, a6, allocator);
      CFArrayAppendValue(Mutable, Value);
      if (Value)
      {
        CFRelease(Value);
      }

      a4 += v15;
      --a5;
    }

    while (a5);
  }

  return Mutable;
}

CFDateRef createValue(int *a1, int a2, __int16 a3, const char *a4, int a5, CFAllocatorRef alloc)
{
  v25 = a4;
  if (dword_1EBF46ADC >= 5)
  {
    v10 = a1;
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = alloc;
    v15 = *__error();
    v16 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, &unk_1C2C3BEBB, buf, 2u);
    }

    *__error() = v15;
    alloc = v14;
    a3 = v13;
    a4 = v12;
    a5 = v11;
    a1 = v10;
    if (a2 <= 6)
    {
      goto LABEL_3;
    }
  }

  else if (a2 <= 6)
  {
LABEL_3:
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        *&v7 = *a4;
        *buf = v7;
        if ((a3 & 0x400) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      if (a2 != 2)
      {
        if (a2 == 3)
        {
          *&v7 = *a4;
          *buf = v7;
          if ((a3 & 0x400) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_19;
        }

LABEL_44:
        v21 = __si_assert_copy_extra_2708(0);
        v22 = v21;
        v23 = "";
        if (v21)
        {
          v23 = v21;
        }

        __message_assert("%s:%u: failed assertion '%s' %s Unexpected type %d", "ldb.c", 2427, "0", v23, a2);
        free(v22);
        if (__valid_fsp(0))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      *&v7 = *a4;
      *buf = v7;
      if ((a3 & 0x400) != 0)
      {
LABEL_19:
        if (v7 == 0.0)
        {
          v8 = MEMORY[0x1E695E4C0];
        }

        else
        {
          v8 = MEMORY[0x1E695E4D0];
        }

        return *v8;
      }

LABEL_29:
      v17 = alloc;
      v18 = kCFNumberSInt64Type;
      return CFNumberCreate(v17, v18, buf);
    }

    if (a2 == 4)
    {
      *&v7 = *a4;
      *buf = v7;
      if ((a3 & 0x400) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    if (a2 != 5)
    {
      if (a2 != 6)
      {
        goto LABEL_44;
      }

      *&v7 = *a4;
      *buf = v7;
      if ((a3 & 0x400) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

LABEL_28:
    v7 = *a4;
    *buf = *a4;
    if ((a3 & 0x400) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

  if (a2 > 9)
  {
    if (a2 != 10)
    {
      if (a2 == 11)
      {
        return createString(a1, a3, &v25, a5, alloc);
      }

      if (a2 == 12)
      {
        return CFDateCreate(alloc, *a4);
      }

      goto LABEL_44;
    }

    v19 = *a4;
    *buf = *a4;
    if ((a3 & 0x400) != 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    v17 = alloc;
    v18 = kCFNumberFloat64Type;
    return CFNumberCreate(v17, v18, buf);
  }

  if ((a2 - 7) < 2)
  {
    goto LABEL_28;
  }

  if (a2 != 9)
  {
    goto LABEL_44;
  }

  v19 = *a4;
  *buf = v19;
  if ((a3 & 0x400) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  v20 = MEMORY[0x1E695E4C0];
  if (v19 != 0.0)
  {
    v20 = MEMORY[0x1E695E4D0];
  }

  return *v20;
}

int *updateItemRecentOutOfSpotlightEngagementData(int *a1, char **a2, double a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v29 = a3;
  db_validate_obj(a1);
  v6 = *a2;
  if (!**a2)
  {
    return db_validate_obj(a1);
  }

  if (a3 != 0.0)
  {
    v27 = 0;
    __src = 0;
    memset(__dst, 0, sizeof(__dst));
    if (!db_get_field(a1, v6, "_kMDItemRecentOutOfSpotlightEngagementDates", &v27, &__src))
    {
      if (*v27 == 12 && (*(v27 + 2) & 0x20) != 0)
      {
        v18 = *(v27 + 8);
        memcpy(__dst, __src, v18);
        if (v18)
        {
          v19 = v18 - 1;
          if (v18 - 1 >= 0x98)
          {
            v20 = 0;
            v21 = v19 >> 3;
            v22 = 1;
            do
            {
              v7.n128_u64[0] = *(__dst + v22);
              if (v7.n128_f64[0] < *(__dst + v20))
              {
                v20 = v22;
              }

              ++v22;
              --v21;
            }

            while (v21);
            if (v20 != -1)
            {
              *(__dst + v20) = a3;
              v23 = db_add_field(a1, a2, 5u, "_kMDItemRecentOutOfSpotlightEngagementDates", 0, 0x20u, 12, __dst, v7, (v19 & 0xFFFFFFF8) + 8);
              v10 = *__error();
              v24 = _SILogForLogForCategory(7);
              v25 = v24;
              if (v23)
              {
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v31 = COERCE_DOUBLE("updateRecentEngagementDates");
                  v32 = 1024;
                  *v33 = 315;
                  *&v33[4] = 2080;
                  *&v33[6] = "_kMDItemRecentOutOfSpotlightEngagementDates";
                  _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: Failed to replace Out-of-Spotlight engagement date to %s", buf, 0x1Cu);
                }

                *__error() = v10;
                db_delete_field(a1, a2, "_kMDItemRecentOutOfSpotlightEngagementDates");
                return db_validate_obj(a1);
              }

              if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_17;
              }

              v26 = **a2;
              *buf = 134218754;
              v31 = a3;
              v32 = 2048;
              *v33 = v20;
              *&v33[8] = 2080;
              *&v33[10] = "_kMDItemRecentOutOfSpotlightEngagementDates";
              v34 = 2048;
              v35 = v26;
              v15 = "[Engagement Data] Inserted Out-of-Spotlight engagement date: %f into position %ld of %s for oid: %lld";
              v16 = v25;
              v17 = 42;
              goto LABEL_16;
            }
          }

          v8 = 2;
LABEL_8:
          v9 = db_add_field(a1, a2, v8, "_kMDItemRecentOutOfSpotlightEngagementDates", 0, 0x20u, 12, &v29, v7, 8);
          v10 = *__error();
          v11 = _SILogForLogForCategory(7);
          v12 = v11;
          if (v9)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v31 = COERCE_DOUBLE("updateRecentEngagementDates");
              v32 = 1024;
              *v33 = 300;
              *&v33[4] = 2080;
              *&v33[6] = "_kMDItemRecentOutOfSpotlightEngagementDates";
              _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Failed adding Out-of-Spotlight engagement date to %s", buf, 0x1Cu);
            }

            goto LABEL_17;
          }

          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
LABEL_17:
            *__error() = v10;
            return db_validate_obj(a1);
          }

          v14 = **a2;
          *buf = 134218498;
          v31 = v29;
          v32 = 2080;
          *v33 = "_kMDItemRecentOutOfSpotlightEngagementDates";
          *&v33[8] = 2048;
          *&v33[10] = v14;
          v15 = "[Engagement Data] Adding Out-of-Spotlight engagement date: %f to %s for oid: %lld";
          v16 = v12;
          v17 = 32;
LABEL_16:
          _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
          goto LABEL_17;
        }
      }

      else
      {
        db_delete_field(a1, a2, "_kMDItemRecentOutOfSpotlightEngagementDates");
        v27 = 0;
        __src = 0;
      }
    }

    v8 = 1;
    goto LABEL_8;
  }

  db_delete_field(a1, a2, "_kMDItemRecentOutOfSpotlightEngagementDates");

  return db_validate_obj(a1);
}

CFDateRef SICopyRoundedDate()
{
  v0 = MEMORY[0x1C691E960]();
  v1 = *MEMORY[0x1E695E480];
  v2 = (86400 * (v0 / 0x15180));

  return CFDateCreate(v1, v2);
}

uint64_t si_writeBackAndIndexWithLiveQueryToggle(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12, unsigned __int8 a13, unsigned int a14, int a15, NSObject *a16)
{
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v259 = v24;
  v25 = v16;
  buf[3] = *MEMORY[0x1E69E9840];
  v26 = *(v16 + 1192);
  v27 = **v20;
  v284 = 0;
  v263 = v26;
  if ((*(v26 + 4) & 0x40) != 0)
  {
    v41 = 89;
    si_makeUnavailable(v16, 89, 2, 18, "si_writeBackAndIndex detected corrupted sdb on entry");
    return v41;
  }

  v28 = v22;
  TypeID = v21;
  v30 = v20;
  v31 = v19;
  v32 = v18;
  v33 = v23.n128_f32[0];
  v34 = v17;
  v257 = v27;
  v35 = *(v18 + 8);
  v36 = v35 != 0;
  if (v35)
  {
    LODWORD(v290) = 1;
    db_add_field(v26, v20, 0, "_kMDItemContentIndexVersion", 0, 0x108u, 6, &v290, v23, 4);
  }

  v37 = atomic_load((v34 + 36));
  if ((v37 & 3) != 0 || *(v34 + 15203) == 1)
  {
    v209 = __si_assert_copy_extra_661(-1);
    v210 = v209;
    v211 = "";
    if (v209)
    {
      v211 = v209;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 1868, "ContentIndexWritable(content_index)", v211);
    goto LABEL_355;
  }

  v253 = v31;
  _checkIndexSetValidity(*(v25 + 1384));
  _checkIndexSetValidity(*(v25 + 1392));
  v38 = *(v25 + 1384);
  v290 = v25;
  __checkIndexSetDocIdOrder(v25, v38);
  v39 = *(v25 + 1392);
  v290 = v25;
  __checkIndexSetDocIdOrder(v25, v39);
  v262 = v32;
  theDict = *v32;
  if (*(v25 + 2072) == 1)
  {
    Value = CFDictionaryGetValue(*v32, @"_kMDItemBundleID");
  }

  else
  {
    Value = 0;
  }

  v283 = 0;
  v250 = Value;
  si_populategroup(v25, v30, Value, (v28 >> 2) & 1, (v28 >> 6) & 1, &v284 + 1, &v284, &v283);
  v261 = v30;
  v42 = *v30;
  v285 = *v30;
  v279 = 0;
  v280 = &v279;
  v281 = 0x2000000000;
  v282 = 0;
  bzero(&v290, 0x1000uLL);
  v278 = 0;
  bzero(v289, 0x1000uLL);
  v260 = TypeID;
  if (*(v25 + 6624))
  {
    if (*(v25 + 1416))
    {
      if (TypeID != 5 || (v28 & 0x20) != 0 || v35 || !*(v42 + 3) || (v44 = *(v42 + 4), v44 == -1) || !v259 || !v44)
      {
        if ((*(v25 + 2072) & 1) == 0)
        {
          v41 = computePath(v43);
          goto LABEL_31;
        }

        if (v253 != -1 && !*(v42 + 3))
        {
          goto LABEL_38;
        }

        v45 = CFDictionaryGetValue(theDict, @"kMDItemFileProviderID");
        if (!v45 || (v46 = v45, TypeID = CFStringGetTypeID(), v71 = TypeID == CFGetTypeID(v46), LODWORD(TypeID) = v260, !v71))
        {
          if ((v28 & 8) != 0)
          {
            Path = directoryStoreWriterGetPath(*(v25 + 6624), *(v42 + 3), &v291);
            v278 = Path;
            if (Path || *(v42 + 3) == 2)
            {
              v290 = *(v42 + 3);
              v278 = Path + 1;
            }
          }

          goto LABEL_38;
        }

        v47 = CFDictionaryGetValue(theDict, @"_kMDItemExternalID");
        if (v47)
        {
          v48 = v47;
          TypeID = CFStringGetTypeID();
          v71 = TypeID == CFGetTypeID(v48);
          LODWORD(TypeID) = v260;
          if (v71)
          {
            v49 = CFDictionaryGetValue(theDict, @"FPDomainIdentifier");
            if (v49)
            {
              v50 = v49;
              CFStringGetTypeID();
              CFGetTypeID(v50);
            }

            v196 = CFDictionaryGetValue(theDict, @"FPParentFileItemID");
            if (v196)
            {
              v198 = v196;
              CFStringGetTypeID();
              CFGetTypeID(v198);
            }

            LODWORD(TypeID) = v260;
            v199 = computePath(v197);
            if (v199)
            {
              v41 = v199;
              v200 = *__error();
              v201 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
              {
                v212 = *v42;
                v213 = *(v42 + 3);
                LODWORD(valuePtr[0].tv_sec) = 136316162;
                *(&valuePtr[0].tv_sec + 4) = "si_writeBackAndIndexWithLiveQueryToggle";
                *(&valuePtr[0].tv_usec + 2) = 1024;
                *(&valuePtr[0].tv_usec + 6) = 1928;
                WORD1(valuePtr[1].tv_sec) = 1024;
                HIDWORD(valuePtr[1].tv_sec) = v41;
                LOWORD(valuePtr[1].tv_usec) = 2048;
                *(&valuePtr[1].tv_usec + 2) = v212;
                WORD1(valuePtr[2].tv_sec) = 2048;
                *(&valuePtr[2].tv_sec + 4) = v213;
                _os_log_error_impl(&dword_1C278D000, v201, OS_LOG_TYPE_ERROR, "%s:%d: computePath error: %d oid: %lld parent: %lld", valuePtr, 0x2Cu);
              }

              *__error() = v200;
              LODWORD(TypeID) = v260;
LABEL_31:
              v51 = 0;
              cf = 0;
              if (v41 > 0x3C || ((1 << v41) & 0x1000000000000005) == 0)
              {
                v254 = v34;
LABEL_313:
                si_remove_text_content_cache_for_oid(v25, v257);
                v185 = *__error();
                v186 = _SILogForLogForCategory(8);
                v187 = 2 * (dword_1EBF46AEC < 4);
                if (os_log_type_enabled(v186, v187))
                {
                  LODWORD(valuePtr[0].tv_sec) = 134217984;
                  *(&valuePtr[0].tv_sec + 4) = v257;
                  _os_log_impl(&dword_1C278D000, v186, v187, "Deleted document %lld", valuePtr, 0xCu);
                }

                *__error() = v185;
                v188 = *(v25 + 1296);
                memset(valuePtr, 0, 512);
                snprintf(valuePtr, 0x200uLL, "doc_store_delete_document(%p, %lld)", v188, v257);
                v286[0] = 0;
                v286[1] = 0;
                ScopeLogger::ScopeLogger(v286, valuePtr);
                if (v188)
                {
                  buf[0] = v257;
                  DocStore::DeleteDocumentsBulk(v188, 1, buf);
                }

                ScopeLogger::~ScopeLogger(v286);
                v189 = *__error();
                v190 = _SILogForLogForCategory(8);
                if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(valuePtr[0].tv_sec) = 136315906;
                  *(&valuePtr[0].tv_sec + 4) = "si_writeBackAndIndexWithLiveQueryToggle";
                  *(&valuePtr[0].tv_usec + 2) = 1024;
                  *(&valuePtr[0].tv_usec + 6) = 2514;
                  WORD1(valuePtr[1].tv_sec) = 1024;
                  HIDWORD(valuePtr[1].tv_sec) = -14;
                  LOWORD(valuePtr[1].tv_usec) = 2048;
                  *(&valuePtr[1].tv_usec + 2) = v257;
                  _os_log_error_impl(&dword_1C278D000, v190, OS_LOG_TYPE_ERROR, "%s:%d: Doc store delete operation failed. Error code: %d, oid: %lld", valuePtr, 0x22u);
                }

                *__error() = v189;
                goto LABEL_320;
              }
            }
          }
        }
      }
    }
  }

LABEL_38:
  v53 = *v261;
  v285 = *v261;
  valuePtr[0].tv_sec = 0;
  *&valuePtr[0].tv_usec = 0;
  if (gettimeofday(valuePtr, 0))
  {
    tv_sec = time(0);
    tv_usec = 0;
  }

  else
  {
    tv_sec = valuePtr[0].tv_sec;
    tv_usec = valuePtr[0].tv_usec;
  }

  *(v53 + 2) = tv_usec + 1000000 * tv_sec;
  bzero(v288, 0x8001uLL);
  allocator = _SIStackAllocatorCreate(v288, 0x8000, indexingZone);
  v57 = decodeDBOToDictionary(v263, v53, 0, 0x2000, 2, *(v25 + 2028), *(v25 + 2060), (v28 >> 10) & 1, 1, allocator);
  v58 = v57;
  v277 = 0;
  cf = v57;
  if (v35 == *MEMORY[0x1E695E738])
  {
    CFDictionarySetValue(v57, 0, v35);
    v36 = 0;
  }

  else
  {
    if (v35)
    {
      CFDictionarySetValue(v57, 0, v35);
    }

    v59 = v262[5];
    if (v59)
    {
      CFDictionarySetValue(v58, 2, v59);
      v36 = 1;
    }

    v60 = v262[6];
    if (v60)
    {
      CFDictionarySetValue(v58, 3, v60);
      v36 = 1;
    }

    v61 = v262[7];
    if (v61)
    {
      CFDictionarySetValue(v58, 4, v61);
      v36 = 1;
    }

    v62 = v262[8];
    if (v62)
    {
      CFDictionarySetValue(v58, 5, v62);
      v63 = 0;
      v36 = 1;
      goto LABEL_72;
    }
  }

  v63 = 0;
  if (!v36 && !v35 && (*(v25 + 2072) & 1) == 0)
  {
    if ((v28 & 0x100) == 0 || !objectHasContent(*(v25 + 1192), v53))
    {
      v36 = 0;
      v63 = 0;
      v35 = 0;
      goto LABEL_72;
    }

    bzero(valuePtr, 0x400uLL);
    v64 = si_cache_relative_path_for_oid(*v53, "txt", valuePtr, *(v25 + 2072));
    if (!v64 || (v65 = openat(*(v25 + 32), v64, 0), v65 == -1))
    {
      LOBYTE(v69) = 0;
      v35 = 0;
LABEL_71:
      v36 = v69;
      v63 = v69;
      goto LABEL_72;
    }

    v66 = v65;
    fcntl(v65, 48, 1);
    fcntl(v66, 76, 1);
    v67 = lseek(v66, 0, 2);
    if (v67 >= 1)
    {
      v68 = v67;
      v69 = malloc_type_zone_malloc(indexingZone, v67, 0x20679B3EuLL);
      if (!v69)
      {
LABEL_69:
        v35 = 0;
LABEL_70:
        LODWORD(TypeID) = v260;
        close(v66);
        goto LABEL_71;
      }

      if (v68 == pread(v66, v69, v68, 0))
      {
        v35 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v69, v68, 0x8000100u, 1u, *MEMORY[0x1E695E488]);
        if (v35)
        {
          CFDictionarySetValue(cf, 0, v35);
          CFRelease(v35);
          LOBYTE(v69) = 1;
        }

        else
        {
          LOBYTE(v69) = 0;
        }

        goto LABEL_70;
      }

      free(v69);
    }

    LOBYTE(v69) = 0;
    goto LABEL_69;
  }

LABEL_72:
  v70 = *(v53 + 10);
  if (*(v25 + 2072))
  {
    v71 = (v28 & 0x200) != 0 && (v70 & 0x20 | v28 & 0x80) == 0;
    if (!v71)
    {
      v63 = 1;
    }

    if ((v63 & 1) == 0)
    {
      si_update_text_content_cache_for_oid(v25, *v53, v35, a16);
      v53 = v285;
      v70 = *(v285 + 10);
    }

    v72 = v36;
    if ((v70 & 0x20) == 0)
    {
      v73 = v262[2];
      if (v73)
      {
        v74 = *v53;
LABEL_90:
        si_update_icon_cache_for_oid(v25, v74, v73);
      }
    }
  }

  else
  {
    v72 = v36;
    if ((v28 & 0x200) != 0 && (v70 & 0x20) == 0)
    {
      if (HIBYTE(v284) == 1)
      {
        v63 = 1;
      }

      if ((v63 & 1) == 0)
      {
        si_update_text_content_cache_for_oid(v25, *v53, v35, a16);
        v53 = v285;
      }

      v74 = *v53;
      v73 = v262[2];
      goto LABEL_90;
    }
  }

  if ((*&v72 & (v35 != 0) & (v28 >> 15)) != 1)
  {
    goto LABEL_103;
  }

  v75 = SICreateStringByRemovingWhitespaceFromTextContent(*MEMORY[0x1E695E480], v35, 1000);
  if (v75)
  {
    v76 = v75;
    buf[0] = 0;
    v286[0] = 0;
    v77 = db_copy_field_ids_with_buffer(v263, "com_apple_mail_dateReceived", 0, 0);
    v53 = v285;
    if (!db_get_field_by_id(v263, v285, v77, v286, buf) && v286[0] && *v286[0] == 12)
    {
      v78.n128_f64[0] = CFAbsoluteTimeGetCurrent() - *buf[0];
      if (v78.n128_f64[0] <= 31536000.0)
      {
        v136 = si_text_store_put(v78);
        if (v136)
        {
          v137 = v136;
          v255 = *__error();
          v138 = _SILogForLogForCategory(8);
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            LODWORD(valuePtr[0].tv_sec) = 136315906;
            *(&valuePtr[0].tv_sec + 4) = "si_writeBackAndIndexWithLiveQueryToggle";
            *(&valuePtr[0].tv_usec + 2) = 1024;
            *(&valuePtr[0].tv_usec + 6) = 2074;
            WORD1(valuePtr[1].tv_sec) = 1024;
            HIDWORD(valuePtr[1].tv_sec) = v137;
            LOWORD(valuePtr[1].tv_usec) = 2048;
            *(&valuePtr[1].tv_usec + 2) = v257;
            _os_log_error_impl(&dword_1C278D000, v138, OS_LOG_TYPE_ERROR, "%s:%d: Doc store put operation failed. Error code: %d, oid: %lld", valuePtr, 0x22u);
          }

          goto LABEL_183;
        }
      }

      else if (dword_1EBF46AEC >= 5)
      {
        v255 = *__error();
        v79 = _SILogForLogForCategory(8);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v80 = *buf[0];
          LODWORD(valuePtr[0].tv_sec) = 134218240;
          *(&valuePtr[0].tv_sec + 4) = v80;
          *(&valuePtr[0].tv_usec + 2) = 2048;
          *(&valuePtr[0].tv_usec + 6) = v257;
          v81 = "Did not put into doc store because timestamp is too old, timestamp is %f, doc id %lld";
          v82 = v79;
          v83 = 22;
LABEL_368:
          _os_log_impl(&dword_1C278D000, v82, OS_LOG_TYPE_DEFAULT, v81, valuePtr, v83);
          goto LABEL_183;
        }

        goto LABEL_183;
      }
    }

    else if (dword_1EBF46AEC >= 5)
    {
      v255 = *__error();
      v229 = _SILogForLogForCategory(8);
      if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(valuePtr[0].tv_sec) = 134217984;
        *(&valuePtr[0].tv_sec + 4) = v257;
        v81 = "Get timestamp failed for id : %lld, won't be put in doc store";
        v82 = v229;
        v83 = 12;
        goto LABEL_368;
      }

LABEL_183:
      *__error() = v255;
    }

    free(v77);
    CFRelease(v76);
    LODWORD(TypeID) = v260;
    v72 = v36;
    goto LABEL_103;
  }

  v53 = v285;
LABEL_103:
  v249 = *(v53 + 4);
  v264[0] = MEMORY[0x1E69E9820];
  v264[1] = 0x40000000;
  v265 = __si_writeBackAndIndexWithLiveQueryToggle_block_invoke;
  v266 = &unk_1E8195EC8;
  v274 = v283;
  v275 = (v28 & 0x20) >> 5;
  v84 = v278;
  v269 = v278;
  v270 = &v290;
  v276 = v72;
  v271 = v25;
  v267 = &v279;
  v268 = v261;
  v272 = v28;
  v273 = a14;
  v85 = v284;
  v86 = v28 | 2;
  if (*(v25 + 2072) & 1 | (v284 != 8))
  {
    v28 = v28;
  }

  else
  {
    v28 = v86;
  }

  if (TypeID != 6 && TypeID)
  {
    if (TypeID == 4)
    {
      v28 = v86;
    }

    else
    {
      v28 = v28;
    }
  }

  else
  {
    if (si_getLiveIndex(*(v25 + 1384)) == v34)
    {
      goto LABEL_134;
    }

    v87 = *(v25 + 1384);
    v88 = *(v87 + 2);
    if (v88)
    {
      v89 = *v87;
      v90 = *(v89 + 8 * v88 - 8);
      if (v90 == v34)
      {
        goto LABEL_134;
      }

      v91 = v89 - 16;
      while (1)
      {
        v92 = v90;
        if (v88 < 2)
        {
          break;
        }

        v90 = *(v91 + 8 * v88--);
        if (v90 == v34)
        {
          goto LABEL_125;
        }
      }
    }

    else
    {
      v92 = 0;
    }

    if (v92 == v34)
    {
      goto LABEL_125;
    }

    v93 = *(v25 + 1392);
    v94 = *(v93 + 2);
    if (!v94)
    {
      goto LABEL_134;
    }

    v95 = *v93;
    v96 = *(*v93 + 8 * v94 - 8);
    if (v96 == v34)
    {
LABEL_125:
      if (v92)
      {
        v98 = *(v92 + 80);
        if (v98)
        {
          LODWORD(v99) = *(v34 + 68);
          v100 = *(v34 + 80);
          v99 = v99 >= 2 ? v99 : 0;
          v101 = v100 + v99;
          if (v100 + v99 + 1 >= v98)
          {
            v256 = *__error();
            v102 = _SILogForLogForCategory(0);
            v103 = 2 * (gSILogLevels[0] < 4);
            if (os_log_type_enabled(v102, v103))
            {
              LODWORD(valuePtr[0].tv_sec) = 134218240;
              *(&valuePtr[0].tv_sec + 4) = v98;
              *(&valuePtr[0].tv_usec + 2) = 2048;
              *(&valuePtr[0].tv_usec + 6) = v101;
              _os_log_impl(&dword_1C278D000, v102, v103, "limit:%llu, used:%lld - using live index", valuePtr, 0x16u);
            }

            *__error() = v256;
            v28 = v86;
            v72 = v36;
          }
        }
      }
    }

    else
    {
      v97 = v95 - 16;
      while (v94 >= 2)
      {
        v92 = v96;
        v96 = *(v97 + 8 * v94--);
        if (v96 == v34)
        {
          goto LABEL_125;
        }
      }
    }
  }

LABEL_134:
  if ((v28 & 2) != 0)
  {
    LiveIndex = si_getLiveIndex(*(v25 + 1384));
    if (!*(*(v25 + 1384) + 8))
    {
      v224 = __si_assert_copy_extra_661(-1);
      v225 = v224;
      v226 = "";
      if (v224)
      {
        v226 = v224;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 2163, "db->liveSet->indexCount", v226);
      free(v225);
      v227 = -1;
      goto LABEL_362;
    }
  }

  else
  {
    LiveIndex = si_getSyncIndex(v25, a11);
  }

  v105 = LiveIndex;
  v106 = *(v53 + 4);
  v107 = v260;
  v254 = LiveIndex;
  if (v106 == -1)
  {
    v106 = 0;
    *(v53 + 4) = 0;
    goto LABEL_187;
  }

  if (v259 && v106)
  {
    v108 = si_indexForDocId(v25, v106);
    if (v108)
    {
      v109 = v108;
    }

    else
    {
      v117 = si_indexIdForOID(v25, *v53);
      if (!v117)
      {
        v117 = *(v53 + 4);
      }

      *(v53 + 4) = v117;
      v109 = si_indexForDocId(v25, v117);
      v251 = *__error();
      v118 = _SILogForLogForCategory(0);
      v119 = 2 * (gSILogLevels[0] < 4);
      v248 = v118;
      v120 = os_log_type_enabled(v118, v119);
      if (v109)
      {
        if (v120)
        {
          v121 = *(v53 + 4);
          v122 = *v53;
          LODWORD(valuePtr[0].tv_sec) = 134218496;
          *(&valuePtr[0].tv_sec + 4) = v106;
          *(&valuePtr[0].tv_usec + 2) = 2048;
          *(&valuePtr[0].tv_usec + 6) = v121;
          HIWORD(valuePtr[1].tv_sec) = 2048;
          *&valuePtr[1].tv_usec = v122;
          _os_log_impl(&dword_1C278D000, v248, v119, "DocID<->OID mapping out of sync. Had to do a brute force search. (Expected docId:%lld. Actual docID: %lld. OID: %llu", valuePtr, 0x20u);
        }
      }

      else
      {
        if (v120)
        {
          v128 = *(v53 + 4);
          v129 = *v53;
          LODWORD(valuePtr[0].tv_sec) = 134218240;
          *(&valuePtr[0].tv_sec + 4) = v128;
          *(&valuePtr[0].tv_usec + 2) = 2048;
          *(&valuePtr[0].tv_usec + 6) = v129;
          _os_log_impl(&dword_1C278D000, v248, v119, "DocID<->OID mapping out of sync. Orphaned oid. (DocId:%lld. OID: %llu", valuePtr, 0x16u);
        }

        v109 = 0;
      }

      v107 = v260;
      *__error() = v251;
      v106 = *(v53 + 4);
    }

    db_fast_dirty_datastore_if_necessary(v263);
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v280[3] = Mutable;
    v131 = v264;
    if (((v28 >> 14) & 1 & *&v36) == 0)
    {
      v131 = 0;
    }

    v132 = _CIUpdateContent(v105, v84, &v290, 0, v289, v257, v85, v259, 0.0, cf, *(v53 + 4), &v277, v107, Mutable, (*(v25 + 6584) >> 25) & 3, lowDiskSpaceCallback, v25, a14, 0, *(v25 + 2464), (v28 & 0x4000) != 0, v131);
    if (v132)
    {
      v41 = v132;
      v133 = *__error();
      v134 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        LODWORD(valuePtr[0].tv_sec) = 136315650;
        *(&valuePtr[0].tv_sec + 4) = "si_writeBackAndIndexWithLiveQueryToggle";
        *(&valuePtr[0].tv_usec + 2) = 1024;
        *(&valuePtr[0].tv_usec + 6) = 2253;
        WORD1(valuePtr[1].tv_sec) = 1024;
        HIDWORD(valuePtr[1].tv_sec) = v41;
        _os_log_error_impl(&dword_1C278D000, v134, OS_LOG_TYPE_ERROR, "%s:%d: ContentIndexUpdateContent failed  (%d)", valuePtr, 0x18u);
      }

      v51 = 0;
      *__error() = v133;
      goto LABEL_313;
    }

    v135 = a13;
    if (!v277 || v106 == v277)
    {
      if (v109 && (a14 || v85))
      {
        if (gSILogLevels[0] >= 5)
        {
          v233 = *__error();
          v234 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
          {
            v235 = *v53;
            v236 = *(v53 + 4);
            LODWORD(valuePtr[0].tv_sec) = 67109632;
            HIDWORD(valuePtr[0].tv_sec) = a14;
            LOWORD(valuePtr[0].tv_usec) = 2048;
            *(&valuePtr[0].tv_usec + 2) = v235;
            WORD1(valuePtr[1].tv_sec) = 2048;
            *(&valuePtr[1].tv_sec + 4) = v236;
            _os_log_impl(&dword_1C278D000, v234, OS_LOG_TYPE_DEFAULT, "Update date to %d for oid %llx docId %llx", valuePtr, 0x1Cu);
          }

          *__error() = v233;
          v135 = a13;
        }

        _CIUpdateGroupAndDate(v109, *(v53 + 4), v85, a14);
      }

      v106 = 0;
    }

    goto LABEL_196;
  }

  if (v106)
  {
    if (!si_indexForDocId(v25, v106))
    {
      v110 = si_indexIdForOID(v25, *v53);
      if (!v110)
      {
        v110 = *(v53 + 4);
      }

      *(v53 + 4) = v110;
      v111 = si_indexForDocId(v25, v110);
      v247 = *__error();
      v112 = _SILogForLogForCategory(0);
      v113 = 2 * (gSILogLevels[0] < 4);
      log = v112;
      v114 = os_log_type_enabled(v112, v113);
      if (!v111)
      {
        if (v114)
        {
          v139 = *(v53 + 4);
          v140 = *v53;
          LODWORD(valuePtr[0].tv_sec) = 134218240;
          *(&valuePtr[0].tv_sec + 4) = v139;
          *(&valuePtr[0].tv_usec + 2) = 2048;
          *(&valuePtr[0].tv_usec + 6) = v140;
          _os_log_impl(&dword_1C278D000, log, v113, "DocID<->OID mapping out of sync. Orphaned oid. (DocId:%lld. OID: %llu", valuePtr, 0x16u);
        }

        v106 = 0;
        *__error() = v247;
        v107 = v260;
        v72 = v36;
        goto LABEL_187;
      }

      if (v114)
      {
        v115 = *(v53 + 4);
        v116 = *v53;
        LODWORD(valuePtr[0].tv_sec) = 134218496;
        *(&valuePtr[0].tv_sec + 4) = v106;
        *(&valuePtr[0].tv_usec + 2) = 2048;
        *(&valuePtr[0].tv_usec + 6) = v115;
        HIWORD(valuePtr[1].tv_sec) = 2048;
        *&valuePtr[1].tv_usec = v116;
        _os_log_impl(&dword_1C278D000, log, v113, "DocID<->OID mapping out of sync. Had to do a brute force search. (Expected docId:%lld. Actual docID: %lld. OID: %llu", valuePtr, 0x20u);
      }

      *__error() = v247;
      v107 = v260;
      v72 = v36;
    }

    if (v72 || v250 == 0 || (*(v25 + 2072) & 1) == 0)
    {
      v106 = *(v53 + 4);
    }

    else
    {
      v123 = _skipIndexForUpdate(theDict, v250);
      v106 = *(v53 + 4);
      if (v123)
      {
        v277 = *(v53 + 4);
        v124 = *__error();
        v125 = _SILogForLogForCategory(0);
        v126 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v125, v126))
        {
          v127 = *v53;
          LODWORD(valuePtr[0].tv_sec) = 134218240;
          *(&valuePtr[0].tv_sec + 4) = v277;
          *(&valuePtr[0].tv_usec + 2) = 2048;
          *(&valuePtr[0].tv_usec + 6) = v127;
          _os_log_impl(&dword_1C278D000, v125, v126, "sdb only update docId: %lld oid: %llu", valuePtr, 0x16u);
        }

        *__error() = v124;
        db_fast_dirty_datastore_if_necessary(v263);
        v106 = 0;
        goto LABEL_195;
      }
    }
  }

LABEL_187:
  db_fast_dirty_datastore_if_necessary(v263);
  v141 = v264;
  if (((v28 >> 14) & 1 & *&v72) == 0)
  {
    v141 = 0;
  }

  v142 = _CIUpdateContent(v105, v84, &v290, 0, 0, v257, v85, 0, v33, cf, *(v53 + 4), &v277, v107, 0, (*(v25 + 6584) >> 25) & 3, lowDiskSpaceCallback, v25, a14, a15, *(v25 + 2464), (v28 & 0x4000) != 0, v141);
  if (!v142)
  {
LABEL_195:
    v135 = a13;
LABEL_196:
    if (*(v25 + 2072) == 1 && (v53[40] & 0x20) == 0)
    {
      v144 = v262[2];
      if (v144)
      {
        si_update_icon_cache_for_oid(v25, *v53, v144);
      }
    }

    if (v105)
    {
      v145 = v277;
      if (v277)
      {
        *(v53 + 4) = v277;
      }

      db_validate_obj(v263);
      v146 = *(v25 + 1384);
      valuePtr[0].tv_sec = v25;
      __checkIndexSetDocIdOrder(v25, v146);
      v147 = *(v25 + 1392);
      valuePtr[0].tv_sec = v25;
      __checkIndexSetDocIdOrder(v25, v147);
      v149 = v285;
      v150 = v36;
      if (v285)
      {
        db_validate_obj(*(v25 + 1192));
        if (*(v149 + 3) <= 0x30u)
        {
          v157 = db_delete_obj(*(v25 + 1192), v149);
          if (v157 && dword_1EBF46AE8 >= 5)
          {
            v230 = v157;
            v231 = *__error();
            v232 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(valuePtr[0].tv_sec) = 67109120;
              HIDWORD(valuePtr[0].tv_sec) = v230;
              _os_log_impl(&dword_1C278D000, v232, OS_LOG_TYPE_DEFAULT, "Deleting empty object failed with error %d", valuePtr, 8u);
            }

            *__error() = v231;
            v135 = a13;
            v150 = v36;
          }
        }

        else
        {
          v151 = *v149;
          buf[0] = 0;
          v152 = *(v149 + 10);
          if ((v152 & 0x208) != 0)
          {
            goto LABEL_206;
          }

          if (db_get_obj_callback(*(v25 + 1192), v151, buf, 0x10000, si_docIdRewriteCallback, *(v25 + 2368), 0) == 9)
          {
            v41 = 9;
            goto LABEL_289;
          }

          if (!buf[0])
          {
            v152 = *(v149 + 10);
LABEL_206:
            if ((v152 & 0x200) != 0)
            {
              v153 = 9;
            }

            else
            {
              v153 = 11;
            }

            v154 = db_store_obj(*(v25 + 1192), v149, v153);
            v41 = v154;
            if (v154 <= 0x1C && ((1 << v154) & 0x10020081) != 0)
            {
              if (!v154)
              {
                goto LABEL_219;
              }
            }

            else
            {
              v179 = *__error();
              v180 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
              {
                v202 = *v149;
                v203 = *(v149 + 2);
                v204 = *(v149 + 3);
                v205 = *(v149 + 2);
                v206 = *(v149 + 3);
                v207 = *(v149 + 4);
                v208 = *(v149 + 10);
                LODWORD(valuePtr[0].tv_sec) = 136317442;
                *(&valuePtr[0].tv_sec + 4) = "si_writeBackDBO";
                *(&valuePtr[0].tv_usec + 2) = 1024;
                *(&valuePtr[0].tv_usec + 6) = 10338;
                WORD1(valuePtr[1].tv_sec) = 1024;
                HIDWORD(valuePtr[1].tv_sec) = v41;
                LOWORD(valuePtr[1].tv_usec) = 2048;
                *(&valuePtr[1].tv_usec + 2) = v202;
                WORD1(valuePtr[2].tv_sec) = 1024;
                HIDWORD(valuePtr[2].tv_sec) = v203;
                LOWORD(valuePtr[2].tv_usec) = 1024;
                *(&valuePtr[2].tv_usec + 2) = v204;
                *(&valuePtr[2].tv_usec + 3) = 2048;
                valuePtr[3].tv_sec = v205;
                LOWORD(valuePtr[3].tv_usec) = 2048;
                *(&valuePtr[3].tv_usec + 2) = v206;
                WORD1(valuePtr[4].tv_sec) = 2048;
                *(&valuePtr[4].tv_sec + 4) = v207;
                *(&valuePtr[4].tv_usec + 2) = 1024;
                *(&valuePtr[4].tv_usec + 6) = v208;
                _os_log_error_impl(&dword_1C278D000, v180, OS_LOG_TYPE_ERROR, "%s:%d: Error %d storing dbo(%llx,%x,%x,%llx,%llx,%llx,%x)", valuePtr, 0x52u);
              }

              *__error() = v179;
            }

            goto LABEL_289;
          }

          db_validate_obj(*(v25 + 1192));
          if (v145)
          {
            v175 = 9;
          }

          else
          {
            v175 = 11;
          }

          updated = db_update_obj(*(v25 + 1192), v149, v175);
          v41 = updated;
          if (updated > 0x1C || ((1 << updated) & 0x10000081) == 0)
          {
            v177 = *__error();
            v178 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
            {
              v214 = *v149;
              v215 = *(v149 + 2);
              v216 = *(v149 + 3);
              v217 = *(v149 + 2);
              v218 = *(v149 + 3);
              v219 = *(v149 + 4);
              v220 = *(v149 + 10);
              LODWORD(valuePtr[0].tv_sec) = 136317442;
              *(&valuePtr[0].tv_sec + 4) = "si_writeBackDBO";
              *(&valuePtr[0].tv_usec + 2) = 1024;
              *(&valuePtr[0].tv_usec + 6) = 10353;
              WORD1(valuePtr[1].tv_sec) = 1024;
              HIDWORD(valuePtr[1].tv_sec) = v41;
              LOWORD(valuePtr[1].tv_usec) = 2048;
              *(&valuePtr[1].tv_usec + 2) = v214;
              WORD1(valuePtr[2].tv_sec) = 1024;
              HIDWORD(valuePtr[2].tv_sec) = v215;
              LOWORD(valuePtr[2].tv_usec) = 1024;
              *(&valuePtr[2].tv_usec + 2) = v216;
              *(&valuePtr[2].tv_usec + 3) = 2048;
              valuePtr[3].tv_sec = v217;
              LOWORD(valuePtr[3].tv_usec) = 2048;
              *(&valuePtr[3].tv_usec + 2) = v218;
              WORD1(valuePtr[4].tv_sec) = 2048;
              *(&valuePtr[4].tv_sec + 4) = v219;
              *(&valuePtr[4].tv_usec + 2) = 1024;
              *(&valuePtr[4].tv_usec + 6) = v220;
              _os_log_error_impl(&dword_1C278D000, v178, OS_LOG_TYPE_ERROR, "%s:%d: Error %d updating dbo(%llx,%x,%x,%llx,%llx,%llx,%x)", valuePtr, 0x52u);
            }

            *__error() = v177;
            v135 = a13;
          }

          free(buf[0]);
          if (v41)
          {
LABEL_289:
            v181 = *__error();
            v182 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
            {
              v195 = *v149;
              LODWORD(valuePtr[0].tv_sec) = 136316162;
              *(&valuePtr[0].tv_sec + 4) = "si_writeBackAndIndexWithLiveQueryToggle";
              *(&valuePtr[0].tv_usec + 2) = 1024;
              *(&valuePtr[0].tv_usec + 6) = 2458;
              WORD1(valuePtr[1].tv_sec) = 2048;
              *(&valuePtr[1].tv_sec + 4) = v195;
              *(&valuePtr[1].tv_usec + 2) = 2048;
              *(&valuePtr[1].tv_usec + 6) = v195;
              HIWORD(valuePtr[2].tv_sec) = 1024;
              valuePtr[2].tv_usec = v41;
              _os_log_error_impl(&dword_1C278D000, v182, OS_LOG_TYPE_ERROR, "%s:%d: si_writeBackDBO failed, oid:0x%llx(%lld), rc:%d", valuePtr, 0x2Cu);
            }

            *__error() = v181;
            *(v149 + 4) = v249;
            if (v41 == 7)
            {
              if (shrinkLocalizedField(v25, &v285, "com_apple_system_prefs_keywords"))
              {
                v41 = 0;
                v51 = 1;
              }

              else
              {
                v51 = shrinkLocalizedField(v25, &v285, "kMDItemKeywords");
                v41 = 0;
              }

              goto LABEL_308;
            }

            v183 = *(v25 + 1192);
            if (*v183 != 1685287992)
            {
              v237 = *__error();
              v238 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
              {
                v239 = *v183;
                LODWORD(valuePtr[0].tv_sec) = 136315650;
                *(&valuePtr[0].tv_sec + 4) = "db_io_error";
                *(&valuePtr[0].tv_usec + 2) = 1024;
                *(&valuePtr[0].tv_usec + 6) = 246;
                WORD1(valuePtr[1].tv_sec) = 1024;
                HIDWORD(valuePtr[1].tv_sec) = v239;
                _os_log_error_impl(&dword_1C278D000, v238, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", valuePtr, 0x18u);
              }

              *__error() = v237;
              v240 = __si_assert_copy_extra_332();
              v241 = v240;
              if (v240)
              {
                v242 = v240;
              }

              else
              {
                v242 = "";
              }

              __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 246, v242);
              free(v241);
              goto LABEL_363;
            }

            if ((v183[201] & 0x14) != 0 && (!data_map_valid(*(v183 + 110)) || !data_map_valid(*(v183 + 111)) || !data_map_valid(*(v183 + 112)) || !data_map_valid(*(v183 + 113)) || !data_map_valid(*(v183 + 114))) || (data_map_valid(*(v183 + 115)) & 1) == 0 || (v183[1] & 6) != 0)
            {
              if (v41 == 28)
              {
                v184 = 1;
              }

              else
              {
                v184 = 2;
              }

              si_makeUnavailable(v25, v41, v184, 19, "set attributes err");
              v51 = 0;
LABEL_308:
              v106 = v277;
              if (!v277)
              {
                goto LABEL_312;
              }

              goto LABEL_309;
            }

            v243 = __si_assert_copy_extra_661(*(v25 + 32));
            v244 = v243;
            v245 = "";
            if (v243)
            {
              v245 = v243;
            }

            __message_assert("%s:%u: failed assertion '%s' %s si_writeBackDBO failed %d", "SIStoring.c", 2468, "0", v245, v41);
            free(v244);
            v227 = *(v25 + 32);
LABEL_362:
            if (!__valid_fs(v227))
            {
              v228 = 3072;
LABEL_365:
              *v228 = -559038737;
              abort();
            }

LABEL_363:
            v228 = 2989;
            goto LABEL_365;
          }
        }
      }

LABEL_219:
      v158 = HIBYTE(v284);
      if (HIBYTE(v284) | v135)
      {
        if (cf)
        {
          v159 = CFDictionaryGetValue(cf, *(v25 + 2012));
        }

        else
        {
          v159 = 0;
        }

        v160 = a13;
        if (*(v25 + 2072))
        {
          v161 = 0;
        }

        else
        {
          v161 = 22;
        }

        if (v158 != a13)
        {
          valuePtr[0].tv_sec = 0;
          if (v158)
          {
            if (v159)
            {
              v165 = CFGetTypeID(v159);
              v71 = v165 == CFNumberGetTypeID();
              v160 = a13;
              if (v71)
              {
                CFNumberGetValue(v159, kCFNumberLongLongType, valuePtr);
              }
            }
          }

          pthread_mutex_lock((v25 + 6976));
          if (v158 < v161)
          {
            *(v25 + 8 * v158 + 7040) += valuePtr[0].tv_sec;
            if (v158)
            {
              ++*(v25 + 4 * v158 + 9088);
            }
          }

          if (v161 > v160)
          {
            *(v25 + 8 * v160 + 7040) -= a12;
            if (v160)
            {
              --*(v25 + 4 * v160 + 9088);
            }
          }

          v150 = v36;
          if ((*(v25 + 8 * v158 + 7040) & 0x8000000000000000) == 0)
          {
            goto LABEL_245;
          }

LABEL_244:
          _SIRecomputeSizesWithCallback(v25, 0, &__block_literal_global_9005);
LABEL_245:
          pthread_mutex_unlock((v25 + 6976));
          goto LABEL_246;
        }

        v162 = v161 > a13;
        v150 = v36;
        if (v162)
        {
          if (v159 && (v163 = CFGetTypeID(v159), v163 == CFNumberGetTypeID()))
          {
            valuePtr[0].tv_sec = 0;
            CFNumberGetValue(v159, kCFNumberLongLongType, valuePtr);
            v164 = valuePtr[0].tv_sec;
          }

          else
          {
            v164 = 0;
          }

          v172 = v164 - a12;
          if (v164 != a12)
          {
            pthread_mutex_lock((v25 + 6976));
            v173 = v25 + 8 * a13;
            v174 = *(v173 + 7040) + v172;
            *(v173 + 7040) = v174;
            if (v174 >= 0)
            {
              goto LABEL_245;
            }

            goto LABEL_244;
          }
        }
      }

LABEL_246:
      if ((v28 & 0x20) == 0 || (*(v25 + 6584) & 0x10) != 0)
      {
        if ((v28 & 0x20000) != 0)
        {
          goto LABEL_267;
        }

        if ((v28 & 0x1000) != 0)
        {
          if (!v259 && theDict && CFDictionaryGetValue(theDict, @"_kMDItemUserTags"))
          {
            v167 = 4;
          }

          else
          {
            v167 = 2;
          }

          goto LABEL_264;
        }

        v166 = (v28 >> 12) & 1;
      }

      else
      {
        v166 = v145 == 0;
        if (v145 && v149)
        {
          if ((v28 & 0x1000) == 0)
          {
            goto LABEL_267;
          }

          goto LABEL_256;
        }
      }

      if (!v166)
      {
        goto LABEL_267;
      }

LABEL_256:
      v167 = 0;
LABEL_264:
      v168 = *__error();
      v169 = _SILogForLogForCategory(0);
      v170 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v169, v170))
      {
        v171 = *v149;
        LODWORD(valuePtr[0].tv_sec) = 134218240;
        *(&valuePtr[0].tv_sec + 4) = v171;
        *(&valuePtr[0].tv_usec + 2) = 1024;
        *(&valuePtr[0].tv_usec + 6) = v167;
        _os_log_impl(&dword_1C278D000, v169, v170, "bad data in dbo (%lld) reimporting flags:%d", valuePtr, 0x12u);
      }

      *__error() = v168;
      (*(*(v25 + 2360) + 16))(*(*(v25 + 2360) + 144), *v149, v167, a10);
      v150 = v36;
LABEL_267:
      if ((*&v150 & ((v28 & 0x4000) >> 14) & 1) == 0)
      {
        v265(v264, *(v149 + 4));
      }

      v51 = 0;
      v41 = 0;
      if (!v106)
      {
        goto LABEL_312;
      }

LABEL_309:
      if (v106 != *(*v261 + 32) && si_indexForDocId(v25, v106))
      {
        _CIDelete(v148);
      }

      goto LABEL_312;
    }

    v221 = __si_assert_copy_extra_661(-1);
    v210 = v221;
    v222 = "";
    if (v221)
    {
      v222 = v221;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 2278, "content_index", v222);
LABEL_355:
    free(v210);
    if (__valid_fs(-1))
    {
      v223 = 2989;
    }

    else
    {
      v223 = 3072;
    }

    *v223 = -559038737;
    abort();
  }

  v41 = v142;
  if (v142 == -3)
  {
    v135 = a13;
    if ((*(v25 + 2458) & 1) == 0)
    {
      *(v25 + 2458) = 1;
      if (*(v25 + 1192))
      {
        v143 = *(v25 + 1064);
        if (v143)
        {
          si_enqueue_work_with_qos(v143, 9, si_consistencyCheck, v25);
        }
      }
    }

    goto LABEL_196;
  }

  v155 = *__error();
  v156 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
  {
    LODWORD(valuePtr[0].tv_sec) = 136315650;
    *(&valuePtr[0].tv_sec + 4) = "si_writeBackAndIndexWithLiveQueryToggle";
    *(&valuePtr[0].tv_usec + 2) = 1024;
    *(&valuePtr[0].tv_usec + 6) = 2214;
    WORD1(valuePtr[1].tv_sec) = 1024;
    HIDWORD(valuePtr[1].tv_sec) = v41;
    _os_log_error_impl(&dword_1C278D000, v156, OS_LOG_TYPE_ERROR, "%s:%d: ContentIndexUpdateContent failed (%d)", valuePtr, 0x18u);
  }

  v51 = 0;
  *__error() = v155;
  if (v106)
  {
    goto LABEL_309;
  }

LABEL_312:
  if (v41)
  {
    goto LABEL_313;
  }

LABEL_320:
  v191 = v280;
  v192 = v280[3];
  if (v192)
  {
    CFRelease(v192);
    v191 = v280;
  }

  v191[3] = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v51)
  {
    if (v260 <= 0xB && ((0xECFu >> v260) & 1) != 0)
    {
      --*(*(v254 + 14392) + qword_1C2BFF158[v260]);
    }

    v148.n128_f32[0] = v33;
    v41 = si_writeBackAndIndexWithLiveQueryToggle(v148, v25, v254, v262, v259, v253, v261, v260, v28, a10, a11, a12, a13, a14, a15, a16);
  }

  else if ((*(v263 + 4) & 0x40) != 0)
  {
    if (v25 && (atomic_load_explicit((v25 + 2439), memory_order_acquire) & 1) == 0)
    {
      if (SIIsAppleInternal_onceToken != -1)
      {
        dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
      }

      if (SIIsAppleInternal_internal)
      {
        if (!atomic_fetch_add_explicit(si_writeBackAndIndexWithLiveQueryToggle__crashCount, 1u, memory_order_relaxed))
        {
          v193 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"si_writeBackAndIndex");
          getpid();
          SISimulateCrashForPid(0, v193);
          if (v193)
          {
            CFRelease(v193);
          }
        }
      }
    }

    v41 = 89;
    si_makeUnavailable(v25, 89, 2, 20, "si_writeBackAndIndex detected corrupted sdb on exit");
  }

  _Block_object_dispose(&v279, 8);
  return v41;
}

char *fastFieldFromCFType(const __CFString *cf, int a2, int *a3, _WORD *a4, CFIndex *a5, char *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  if (fastFieldFromCFType_onceToken[0] != -1)
  {
    dispatch_once(fastFieldFromCFType_onceToken, &__block_literal_global_9313);
  }

  *a4 = 0;
  v12 = CFGetTypeID(cf);
  if (v12 == fastFieldFromCFType_sStringTypeID)
  {
    *a3 = 11;

    return fastUTF8String(cf, a5, a6);
  }

  if (v12 == fastFieldFromCFType_sDictionaryTypeID)
  {
    value = 0;
    if (_os_feature_enabled_impl())
    {
      if (CFDictionaryGetValueIfPresent(cf, @"vec_data", &value))
      {
        v14 = CFGetTypeID(value);
        if (v14 == CFDataGetTypeID())
        {
          valuePtr = 0;
          v36 = 0;
          *cfa = 0;
          if (CFDictionaryGetValueIfPresent(cf, @"vec_dim", cfa))
          {
            v15 = CFGetTypeID(*cfa);
            if (v15 == CFNumberGetTypeID())
            {
              CFNumberGetValue(*cfa, kCFNumberSInt8Type, &valuePtr);
            }
          }

          if (CFDictionaryGetValueIfPresent(cf, @"vec_format", cfa))
          {
            v16 = CFGetTypeID(*cfa);
            if (v16 == CFNumberGetTypeID())
            {
              CFNumberGetValue(*cfa, kCFNumberSInt8Type, &valuePtr + 1);
            }
          }

          if (CFDictionaryGetValueIfPresent(cf, @"vec_version", cfa))
          {
            v17 = CFGetTypeID(*cfa);
            if (v17 == CFNumberGetTypeID())
            {
              CFNumberGetValue(*cfa, kCFNumberSInt16Type, &v36);
            }
          }

          *a4 |= 0x5038u;
          Length = CFDataGetLength(value);
          v19 = Length;
          v20 = HIBYTE(valuePtr);
          v21 = -1;
          if (valuePtr <= 2uLL && HIBYTE(valuePtr) <= 2u)
          {
            v21 = (vector_dimension_vec_sizes_15424[valuePtr] * vector_size_elem_sizes_15423[HIBYTE(valuePtr)]);
          }

          if (v21 <= Length)
          {
            *a3 = 14;
            v22 = Length + 4;
            *a5 = v19 + 4;
            if (v19 >= 1021)
            {
              a6 = malloc_type_malloc(v22, 0x7403C95AuLL);
              v20 = HIBYTE(valuePtr);
            }

            *a6 = v20;
            a6[1] = valuePtr;
            *(a6 + 1) = v36;
            BytePtr = CFDataGetBytePtr(value);
            memcpy(a6 + 4, BytePtr, v19);
            return a6;
          }

          return 0;
        }
      }
    }

    *a5 = 0;
    v27 = *__error();
    v28 = _SILogForLogForCategory(7);
    v29 = 2 * (dword_1EBF46AE8 < 4);
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_36;
    }

    *cfa = 138412290;
    *&cfa[4] = cf;
    goto LABEL_35;
  }

  if (v12 != fastFieldFromCFType_sDataTypeID)
  {
    if (v12 != fastFieldFromCFType_sNumberTypeID)
    {
      if (v12 == fastFieldFromCFType_sDateTypeID)
      {
        v31 = MEMORY[0x1C691E960](cf);
        *a3 = 12;
        *a5 = 8;
        *a6 = v31;
        return a6;
      }

      if (v12 == fastFieldFromCFType_sBoolTypeID)
      {
        if (cf)
        {
          v32 = CFBooleanGetValue(cf) != 0;
        }

        else
        {
          v32 = 0;
        }

        *a3 = 1;
        *a4 = 1024;
        *a5 = 1;
        *a6 = v32;
        return a6;
      }

      if (v12 != fastFieldFromCFType_sNullTypeID)
      {
        v27 = *__error();
        v28 = _SILogForLogForCategory(7);
        v29 = 2 * (dword_1EBF46AE8 < 4);
        if (!os_log_type_enabled(v28, v29))
        {
          goto LABEL_36;
        }

        *cfa = 138412290;
        *&cfa[4] = cf;
LABEL_35:
        _os_log_impl(&dword_1C278D000, v28, v29, "no type conversion for %@", cfa, 0xCu);
LABEL_36:
        a6 = 0;
        *__error() = v27;
        return a6;
      }

      if (dword_1EBF46AE8 >= 5)
      {
        v33 = *__error();
        v34 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *cfa = 0;
          _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "skipping CFNull", cfa, 2u);
        }

        a6 = 0;
        *__error() = v33;
        return a6;
      }

      return 0;
    }

    if ((a2 - 1) < 8)
    {
      goto LABEL_40;
    }

    if (a2 != 9)
    {
      if (a2 == 10)
      {
        goto LABEL_50;
      }

      Type = CFNumberGetType(cf);
      if (Type > kCFNumberLongLongType)
      {
        if (Type == kCFNumberDoubleType)
        {
          goto LABEL_50;
        }

        if (Type != kCFNumberFloatType)
        {
          goto LABEL_40;
        }
      }

      else if (Type != kCFNumberFloat32Type)
      {
        if (Type != kCFNumberFloat64Type)
        {
LABEL_40:
          *cfa = 0;
          if (CFNumberGetValue(cf, kCFNumberLongLongType, cfa))
          {
            v30 = 7;
LABEL_42:
            *a3 = v30;
            *a5 = 8;
            *a6 = *cfa;
            return a6;
          }

          return 0;
        }

LABEL_50:
        *cfa = 0;
        if (CFNumberGetValue(cf, kCFNumberDoubleType, cfa))
        {
          v30 = 10;
          goto LABEL_42;
        }

        return 0;
      }
    }

    *cfa = 0;
    if (CFNumberGetValue(cf, kCFNumberFloatType, cfa))
    {
      *a3 = 9;
      *a5 = 4;
      *a6 = *cfa;
      return a6;
    }

    return 0;
  }

  *a3 = 14;
  *a5 = CFDataGetLength(cf);
  v24 = CFDataGetBytePtr(cf);
  v25 = CFDataGetLength(cf);
  v26 = v25;
  if (v25 >= 1025)
  {
    a6 = malloc_type_malloc(v25, 0x7381A768uLL);
  }

  return memcpy(a6, v24, v26);
}