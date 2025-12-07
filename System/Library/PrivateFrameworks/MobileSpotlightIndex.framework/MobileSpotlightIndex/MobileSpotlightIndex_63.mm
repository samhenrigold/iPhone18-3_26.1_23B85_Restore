BOOL _data_map_version_is_current(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  is_current = 0;
  v3 = *(a1 + 216);
  if (v3 > 842150449)
  {
    if (v3 == 1684300900)
    {
      return *(*(a1 + 272) + 8) == 14;
    }

    if (v3 == 842150450)
    {
      return *(*(a1 + 1296) + 8) > 0xAu;
    }
  }

  else
  {
    if (v3 != -572662307)
    {
      if (v3 != -270471200)
      {
        return is_current;
      }

      return *(*(a1 + 272) + 8) == 14;
    }

    if (*(a1 + 432))
    {
      pthread_rwlock_wrlock((a1 + 224));
    }

    else
    {
      pthread_rwlock_rdlock((a1 + 224));
    }

    is_current = _data_map_version_is_current(*(a1 + 440));
    v4 = (*(**(a1 + 448) + 248))(*(a1 + 448));
    if (is_current != v4)
    {
      v6 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
        v13 = 1024;
        *v14 = 491;
        *&v14[4] = 2080;
        *&v14[6] = "_data_map_double_version_is_current";
        v15 = 2080;
        v16 = "output == output_new";
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v12 = is_current;
        v13 = 2048;
        *v14 = v6;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      }

      v7 = __si_assert_copy_extra_332();
      v8 = v7;
      v9 = "";
      if (v7)
      {
        v9 = v7;
      }

      __message_assert(v7, "data_map_double.m", 491, "output == output_new", v9);
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

    pthread_rwlock_unlock((a1 + 224));
  }

  return is_current;
}

uint64_t _data_map_version_update(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 216);
    if (v2 > 842150449)
    {
      if (v2 != 1684300900)
      {
        if (v2 != 842150450)
        {
          goto LABEL_19;
        }

        v3 = *(result + 1296);
        if (*(v3 + 8) <= 0xAu)
        {
          *(v3 + 8) = 12;
          fd_pwrite(*(result + 1272), v3, 0x38uLL, 0);
          v4 = *(v1 + 1320);
          v5 = *(v1 + 1328);
          fd_system_status_stall_if_busy();

          return msync(v4, v5, 16);
        }
      }
    }

    else if (v2 == -572662307)
    {
      if (*(result + 432))
      {
        pthread_rwlock_wrlock((result + 224));
      }

      else
      {
        pthread_rwlock_rdlock((result + 224));
      }

      _data_map_version_update(*(v1 + 440));
      (*(**(v1 + 448) + 256))(*(v1 + 448));

      return pthread_rwlock_unlock((v1 + 224));
    }

    else if (v2 != -270471200)
    {
LABEL_19:
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

      __message_assert("%s:%u: Unexpected code path %s ", "data_map.c", 435, v8);
      free(v7);
      MEMORY[0xBAD] = -559038737;
      abort();
    }
  }

  return result;
}

uint64_t _data_map_match_address(uint64_t result, char *a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    v3 = *(v2 + 216);
    if (v3 > 842150449)
    {
      if (v3 == 1684300900)
      {

        return _data_map64_match_address(v2, a2);
      }

      else if (v3 == 842150450)
      {

        return _data_map32_match_address(v2, a2);
      }
    }

    else if (v3 == -572662307)
    {
      if (_data_map_match_address(*(v2 + 440), a2))
      {
        return 1;
      }

      else
      {
        v4 = *(**(v2 + 448) + 264);

        return v4();
      }
    }

    else if (v3 == -270471200)
    {

      return _data_map_ext_match_address(v2, a2);
    }
  }

  return result;
}

void _data_map_clear_seen(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 216);
  if (v2 > 842150449)
  {
    if (v2 == 1684300900)
    {
      v3 = (a1 + 4552);
      os_unfair_lock_lock((a1 + 4552));
      v4 = *(a1 + 4560);
      if (v4)
      {
        v5 = (a1 + 4560);
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    if (v2 == 842150450)
    {
      v3 = (a1 + 1444);
      os_unfair_lock_lock((a1 + 1444));
      v4 = *(a1 + 1448);
      if (v4)
      {
        v5 = (a1 + 1448);
        goto LABEL_16;
      }

LABEL_19:

      os_unfair_lock_unlock(v3);
      return;
    }

LABEL_26:
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "data_map.c", 470, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (v2 != -572662307)
  {
    if (v2 == -270471200)
    {
      v3 = (a1 + 456);
      os_unfair_lock_lock((a1 + 456));
      v4 = *(a1 + 464);
      if (v4)
      {
        v5 = (a1 + 464);
LABEL_16:
        v6 = v4[2];
        if (v6)
        {
          CFRelease(v6);
        }

        free(v4);
        *v5 = 0;
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    goto LABEL_26;
  }

  if (*(a1 + 432))
  {
    pthread_rwlock_wrlock((a1 + 224));
  }

  else
  {
    pthread_rwlock_rdlock((a1 + 224));
  }

  _data_map_clear_seen(*(a1 + 440));
  (*(**(a1 + 448) + 280))(*(a1 + 448));

  pthread_rwlock_unlock((a1 + 224));
}

uint64_t data_map_garbage_collect_setup(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 216);
  v3 = 0xFFFFFFFFLL;
  if (v2 > 842150449)
  {
    if (v2 == 1684300900)
    {
      if ((*(a1 + 4573) & 1) == 0)
      {
        v8 = _db_write_lock(a1);
        if (v8)
        {
          v26 = v8;
          v17 = *__error();
          v18 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            if (v26 == -1)
            {
              v26 = *__error();
            }

            *buf = 136315650;
            v28 = "_data_map64_wrlock";
            v29 = 1024;
            *v30 = 261;
            *&v30[4] = 1024;
            *&v30[6] = v26;
            _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: _data_map64_wrlock error %d", buf, 0x18u);
          }

          *__error() = v17;
        }
      }

      v9 = *(a1 + 224);
      os_unfair_lock_lock((a1 + 4552));
      if (*(a1 + 4560))
      {
        os_unfair_lock_unlock((a1 + 4552));
        _data_map64_unlock(a1);
        return 22;
      }

      *(a1 + 4560) = bit_vector_create(v9);
      v11 = (a1 + 4552);
      goto LABEL_29;
    }

    if (v2 == 842150450)
    {
      if ((*(a1 + 1461) & 1) == 0)
      {
        v6 = _db_write_lock(a1);
        if (v6)
        {
          v25 = v6;
          v15 = *__error();
          v16 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            if (v25 == -1)
            {
              v25 = *__error();
            }

            *buf = 136315650;
            v28 = "_data_map32_wrlock";
            v29 = 1024;
            *v30 = 290;
            *&v30[4] = 1024;
            *&v30[6] = v25;
            _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: _data_map32_wrlock error %d", buf, 0x18u);
          }

          *__error() = v15;
        }
      }

      v7 = *(a1 + 220);
      os_unfair_lock_lock((a1 + 1444));
      if (*(a1 + 1448))
      {
        os_unfair_lock_unlock((a1 + 1444));
        _data_map32_unlock(a1);
        return 22;
      }

      *(a1 + 1448) = bit_vector_create(v7);
      v11 = (a1 + 1444);
LABEL_29:
      os_unfair_lock_unlock(v11);
      return 0;
    }
  }

  else if (v2 == -572662307)
  {
    if (*(a1 + 432))
    {
      pthread_rwlock_wrlock((a1 + 224));
    }

    else
    {
      pthread_rwlock_rdlock((a1 + 224));
    }

    v3 = data_map_garbage_collect_setup(*(a1 + 440));
    v10 = (*(**(a1 + 448) + 304))(*(a1 + 448));
    if (v3 != v10)
    {
      v19 = v10;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v28 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
        v29 = 1024;
        *v30 = 641;
        *&v30[4] = 2080;
        *&v30[6] = "data_map_double_garbage_collect_setup";
        v31 = 2080;
        v32 = "output == output_new";
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v28 = v3;
        v29 = 2048;
        *v30 = v19;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      }

      v20 = __si_assert_copy_extra_332();
      v21 = v20;
      v22 = "";
      if (v20)
      {
        v22 = v20;
      }

      __message_assert(v20, "data_map_double.m", 641, "output == output_new", v22);
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

    pthread_rwlock_unlock((a1 + 224));
  }

  else if (v2 == -270471200)
  {
    if ((*(a1 + 477) & 1) == 0)
    {
      v4 = _db_write_lock(a1);
      if (v4)
      {
        v24 = v4;
        v13 = *__error();
        v14 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          if (v24 == -1)
          {
            v24 = *__error();
          }

          *buf = 136315650;
          v28 = "_data_map_ext_wrlock";
          v29 = 1024;
          *v30 = 288;
          *&v30[4] = 1024;
          *&v30[6] = v24;
          _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_wrlock error %d", buf, 0x18u);
        }

        *__error() = v13;
      }
    }

    v5 = *(a1 + 224);
    os_unfair_lock_lock((a1 + 456));
    if (*(a1 + 464))
    {
      os_unfair_lock_unlock((a1 + 456));
      _data_map_ext_unlock(a1);
      return 22;
    }

    *(a1 + 464) = bit_vector_create(v5);
    v11 = (a1 + 456);
    goto LABEL_29;
  }

  return v3;
}

uint64_t __data_maps_garbage_collect_setup_block_invoke(uint64_t a1, uint64_t a2)
{
  result = data_map_garbage_collect_setup(a2);
  if (!result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

uint64_t __data_maps_garbage_collect_setup_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    _data_map_clear_seen(a2);
  }

  _data_map_unlock(a2);
  return 0;
}

uint64_t data_map_garbage_collect(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v191 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a1 + 216);
  if (v9 <= 842150449)
  {
    if (v9 == -572662307)
    {
      *(a4 + 4216) = malloc_type_calloc(1uLL, 0x1080uLL, 0x10B204083C0B5B4uLL);
      v8 = data_map_garbage_collect(*(a1 + 440), a2, a3, a4);
      v17 = (*(**(a1 + 448) + 312))();
      if (v8 != v17)
      {
        v18 = v17;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          *&buf[12] = 1024;
          *&buf[14] = 595;
          *&buf[18] = 2080;
          *&buf[20] = "data_map_double_garbage_collect";
          *&buf[28] = 2080;
          *&buf[30] = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v8;
          *&buf[12] = 2048;
          *&buf[14] = v18;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v19 = __si_assert_copy_extra_332();
        v20 = v19;
        v21 = "";
        if (v19)
        {
          v21 = v19;
        }

        __message_assert(v19, "data_map_double.m", 595, "output == output_new", v21);
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

      return v8;
    }

    if (v9 != -270471200)
    {
      return v8;
    }

    if (*(a1 + 464))
    {
      if ((*(a1 + 477) & 1) == 0)
      {
        v10 = _db_write_lock(a1);
        if (v10)
        {
          v131 = v10;
          v132 = *__error();
          v133 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
          {
            if (v131 == -1)
            {
              v131 = *__error();
            }

            *buf = 136315650;
            *&buf[4] = "_data_map_ext_wrlock";
            *&buf[12] = 1024;
            *&buf[14] = 288;
            *&buf[18] = 1024;
            *&buf[20] = v131;
            _os_log_error_impl(&dword_1C278D000, v133, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_wrlock error %d", buf, 0x18u);
          }

          *__error() = v132;
        }
      }

      _data_map_ext_unlock(a1);
    }

    return 0;
  }

  if (v9 == 1684300900)
  {
    if (!*(a1 + 4560))
    {
      return 0;
    }

    v23 = a1 + 4096;
    if ((*(a1 + 4573) & 1) == 0)
    {
      v24 = _db_write_lock(a1);
      if (v24)
      {
        v137 = v24;
        v138 = *__error();
        v139 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
        {
          if (v137 == -1)
          {
            v137 = *__error();
          }

          *buf = 136315650;
          *&buf[4] = "_data_map64_wrlock";
          *&buf[12] = 1024;
          *&buf[14] = 261;
          *&buf[18] = 1024;
          *&buf[20] = v137;
          _os_log_error_impl(&dword_1C278D000, v139, OS_LOG_TYPE_ERROR, "%s:%d: _data_map64_wrlock error %d", buf, 0x18u);
        }

        *__error() = v138;
        v23 = a1 + 4096;
      }
    }

    v25 = *(a1 + 224);
    if (v25 - 1 <= a2 || (v152 = v23, v26 = *(a1 + 4560), v193.length = v25 - a2, v193.location = a2, FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(*(v26 + 16), v193, 0), FirstIndexOfBit < a2) || ((v28 = FirstIndexOfBit, FirstIndexOfBit <= v25 - 1) ? (v29 = FirstIndexOfBit >= *(a1 + 224)) : (v29 = 1), v29))
    {
LABEL_37:
      v8 = 0;
LABEL_38:
      _data_map64_unlock(a1);
      return v8;
    }

    v50 = 16 * FirstIndexOfBit;
    while (1)
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
LABEL_140:
        v99 = __si_assert_copy_extra_332();
        v100 = v99;
        v101 = "";
        if (v99)
        {
          v101 = v99;
        }

        __message_assert(v99, "bit_vector.h", 109, "bitIndex >= 0", v101);
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

      if (*v26 > v28 && CFBitVectorGetBitAtIndex(*(v26 + 16), v28))
      {
        goto LABEL_78;
      }

      if (*(a1 + 224) <= v28)
      {
        v189 = 0u;
        v190 = 0u;
        v187 = 0u;
        v188 = 0u;
        v185 = 0u;
        v186 = 0u;
        v183 = 0u;
        v184 = 0u;
        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v178 = 0u;
        memset(buf, 0, sizeof(buf));
        v60 = *__error();
        v61 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v148 = *(a1 + 224);
          v63 = fd_name(*(a1 + 248), buf, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map64_get_offset_entry";
          *&__s[12] = 1024;
          *&__s[14] = 359;
          *&__s[18] = 2048;
          *&__s[20] = v28;
          *&__s[28] = 2048;
          *&__s[30] = v148;
          *&__s[38] = 2048;
          *&__s[40] = a1;
          *&__s[48] = 2080;
          *&__s[50] = v63;
          _os_log_error_impl(&dword_1C278D000, v61, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", __s, 0x3Au);
        }

        *__error() = v60;
        goto LABEL_78;
      }

      v51 = *(a1 + 4456);
      if (v51)
      {
        v52 = *(v51 + v50);
        if (v52 >= 2)
        {
          break;
        }
      }

LABEL_78:
      ++v28;
      v50 += 16;
      if (v25 == v28)
      {
        goto LABEL_37;
      }
    }

    *v156 = 0;
    *&v156[8] = 0;
    LOBYTE(v153) = 0;
    v53 = *(a1 + 296);
    if (v53 <= v52)
    {
      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v178 = 0u;
      memset(buf, 0, sizeof(buf));
      v147 = *__error();
      v62 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
LABEL_77:
        *__error() = v147;
        goto LABEL_78;
      }

      v143 = *(a1 + 296);
      v64 = fd_name(*(a1 + 248), buf, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map64_get_data_entry";
      *&__s[12] = 1024;
      *&__s[14] = 376;
      *&__s[18] = 2048;
      *&__s[20] = v52;
      *&__s[28] = 2048;
      *&__s[30] = v143;
      *&__s[38] = 2048;
      *&__s[40] = a1;
      *&__s[48] = 2080;
      *&__s[50] = v64;
      v58 = v62;
      v59 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
    }

    else
    {
      data_entry_restore_64(a1 + 280, v52, v53, v156, &v153);
      if (v153 != 1)
      {
        if ((a3 & 4) == 0 && a4)
        {
          v8 = _data_map64_garbage_compact_collect(v54);
          goto LABEL_38;
        }

        v65 = *(a1 + 224);
        if (v65 - 1 < v28)
        {
          LODWORD(v66) = 0;
LABEL_91:
          if ((a3 & 2) != 0)
          {
            v67 = *__error();
            v68 = _SILogForLogForCategory(0);
            v69 = 2 * (gSILogLevels[0] < 4);
            if (os_log_type_enabled(v68, v69))
            {
              *buf = 67109376;
              *&buf[4] = v66;
              *&buf[8] = 2048;
              *&buf[10] = a1;
              _os_log_impl(&dword_1C278D000, v68, v69, "Found %d deleted strings from %p", buf, 0x12u);
            }

            v8 = 0;
            *__error() = v67;
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        v66 = 0;
        v144 = *(a1 + 220);
        while (2)
        {
          if ((v28 & 0x8000000000000000) != 0)
          {
            goto LABEL_140;
          }

          if (*v26 <= v28 || !CFBitVectorGetBitAtIndex(*(v26 + 16), v28))
          {
            if (*(a1 + 224) <= v28)
            {
              v189 = 0u;
              v190 = 0u;
              v187 = 0u;
              v188 = 0u;
              v185 = 0u;
              v186 = 0u;
              v183 = 0u;
              v184 = 0u;
              v181 = 0u;
              v182 = 0u;
              v179 = 0u;
              v180 = 0u;
              v178 = 0u;
              memset(buf, 0, sizeof(buf));
              v84 = *__error();
              v85 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
              {
                v151 = v66;
                v93 = *(a1 + 224);
                v94 = fd_name(*(a1 + 248), buf, 0x100uLL);
                *__s = 136316418;
                *&__s[4] = "_data_map64_get_offset_entry";
                *&__s[12] = 1024;
                *&__s[14] = 359;
                *&__s[18] = 2048;
                *&__s[20] = v28;
                *&__s[28] = 2048;
                *&__s[30] = v93;
                v66 = v151;
                *&__s[38] = 2048;
                *&__s[40] = a1;
                *&__s[48] = 2080;
                *&__s[50] = v94;
                _os_log_error_impl(&dword_1C278D000, v85, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", __s, 0x3Au);
              }

              *__error() = v84;
            }

            else
            {
              v75 = *(a1 + 4456);
              if (v75)
              {
                v76 = *(v75 + v50);
                if (v76 >= 2)
                {
                  *v156 = 0;
                  *&v156[8] = 0;
                  LOBYTE(v153) = 0;
                  v77 = *(a1 + 296);
                  if (v77 <= v76)
                  {
                    v149 = v66;
                    v189 = 0u;
                    v190 = 0u;
                    v187 = 0u;
                    v188 = 0u;
                    v185 = 0u;
                    v186 = 0u;
                    v183 = 0u;
                    v184 = 0u;
                    v181 = 0u;
                    v182 = 0u;
                    v179 = 0u;
                    v180 = 0u;
                    v178 = 0u;
                    memset(buf, 0, sizeof(buf));
                    v78 = *__error();
                    v86 = _SILogForLogForCategory(0);
                    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                    {
                      v140 = *(a1 + 296);
                      v95 = fd_name(*(a1 + 248), buf, 0x100uLL);
                      *__s = 136316418;
                      *&__s[4] = "_data_map64_get_data_entry";
                      *&__s[12] = 1024;
                      *&__s[14] = 376;
                      *&__s[18] = 2048;
                      *&__s[20] = v76;
                      *&__s[28] = 2048;
                      *&__s[30] = v140;
                      *&__s[38] = 2048;
                      *&__s[40] = a1;
                      *&__s[48] = 2080;
                      *&__s[50] = v95;
                      v82 = v86;
                      v83 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_135:
                      _os_log_error_impl(&dword_1C278D000, v82, OS_LOG_TYPE_ERROR, v83, __s, 0x3Au);
                    }

LABEL_116:
                    *__error() = v78;
                    v87 = v149;
                  }

                  else
                  {
                    data_entry_restore_64(a1 + 280, v76, v77, v156, &v153);
                    if (v153 == 1)
                    {
                      v149 = v66;
                      v189 = 0u;
                      v190 = 0u;
                      v187 = 0u;
                      v188 = 0u;
                      v185 = 0u;
                      v186 = 0u;
                      v183 = 0u;
                      v184 = 0u;
                      v181 = 0u;
                      v182 = 0u;
                      v179 = 0u;
                      v180 = 0u;
                      v178 = 0u;
                      memset(buf, 0, sizeof(buf));
                      v78 = *__error();
                      v79 = _SILogForLogForCategory(0);
                      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                      {
                        v80 = fd_name(*(a1 + 248), buf, 0x100uLL);
                        v81 = *(a1 + 296);
                        *__s = 136316418;
                        *&__s[4] = "_data_map64_get_data_entry";
                        *&__s[12] = 1024;
                        *&__s[14] = 372;
                        *&__s[18] = 2080;
                        *&__s[20] = v80;
                        *&__s[28] = 2048;
                        *&__s[30] = v76;
                        *&__s[38] = 2048;
                        *&__s[40] = v81;
                        *&__s[48] = 2048;
                        *&__s[50] = *v156;
                        v82 = v79;
                        v83 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
                        goto LABEL_135;
                      }

                      goto LABEL_116;
                    }

                    if ((a3 & 2) != 0)
                    {
                      v88 = v66;
                      if ((a3 & 8) != 0)
                      {
                        if (gSILogLevels[0] >= 5)
                        {
                          v150 = *__error();
                          v96 = _SILogForLogForCategory(0);
                          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                          {
                            v98 = *&v156[8] + *(a1 + 220);
                            *buf = 67109890;
                            *&buf[4] = v28;
                            *&buf[8] = 1024;
                            *&buf[10] = *v156;
                            *&buf[14] = 2080;
                            *&buf[16] = v98;
                            *&buf[24] = 2048;
                            *&buf[26] = a1;
                            v90 = v96;
                            v91 = "Delete data for id:%d size:%d %s from %p";
                            v92 = 34;
LABEL_138:
                            _os_log_impl(&dword_1C278D000, v90, OS_LOG_TYPE_DEFAULT, v91, buf, v92);
                          }

LABEL_139:
                          *__error() = v150;
                          v66 = v88;
                        }
                      }

                      else if (gSILogLevels[0] >= 5)
                      {
                        v150 = *__error();
                        v89 = _SILogForLogForCategory(0);
                        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 67109632;
                          *&buf[4] = v28;
                          *&buf[8] = 1024;
                          *&buf[10] = *v156;
                          *&buf[14] = 2048;
                          *&buf[16] = a1;
                          v90 = v89;
                          v91 = "Delete data for id:%d size:%d from %p";
                          v92 = 24;
                          goto LABEL_138;
                        }

                        goto LABEL_139;
                      }
                    }

                    v87 = v66 + 1;
                    if ((a3 & 4) == 0)
                    {
                      if (!v66)
                      {
                        if ((*(v152 + 473) & 1) == 0)
                        {
                          _data_map64_dirty(a1);
                          *(v152 + 473) = 1;
                        }

                        if ((*(v152 + 475) & 1) == 0)
                        {
                          _data_map64_dirty(a1);
                          *(v152 + 475) = 1;
                        }
                      }

                      *(v75 + v50) = xmmword_1C2BFA340;
                      bzero(*&v156[8], (*v156 + v144));
                    }
                  }

                  v66 = v87;
                }
              }
            }
          }

          ++v28;
          v50 += 16;
          if (v65 == v28)
          {
            goto LABEL_91;
          }

          continue;
        }
      }

      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v178 = 0u;
      memset(buf, 0, sizeof(buf));
      v147 = *__error();
      v55 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_77;
      }

      v56 = fd_name(*(a1 + 248), buf, 0x100uLL);
      v57 = *(a1 + 296);
      *__s = 136316418;
      *&__s[4] = "_data_map64_get_data_entry";
      *&__s[12] = 1024;
      *&__s[14] = 372;
      *&__s[18] = 2080;
      *&__s[20] = v56;
      *&__s[28] = 2048;
      *&__s[30] = v52;
      *&__s[38] = 2048;
      *&__s[40] = v57;
      *&__s[48] = 2048;
      *&__s[50] = *v156;
      v58 = v55;
      v59 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
    }

    _os_log_error_impl(&dword_1C278D000, v58, OS_LOG_TYPE_ERROR, v59, __s, 0x3Au);
    goto LABEL_77;
  }

  if (v9 != 842150450)
  {
    return v8;
  }

  if (!*(a1 + 1448))
  {
    return 0;
  }

  if ((*(a1 + 1461) & 1) == 0)
  {
    v11 = _db_write_lock(a1);
    if (v11)
    {
      v134 = v11;
      v135 = *__error();
      v136 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
      {
        if (v134 == -1)
        {
          v134 = *__error();
        }

        *buf = 136315650;
        *&buf[4] = "_data_map32_wrlock";
        *&buf[12] = 1024;
        *&buf[14] = 290;
        *&buf[18] = 1024;
        *&buf[20] = v134;
        _os_log_error_impl(&dword_1C278D000, v136, OS_LOG_TYPE_ERROR, "%s:%d: _data_map32_wrlock error %d", buf, 0x18u);
      }

      *__error() = v135;
    }
  }

  v12 = *(a1 + 220);
  v13 = v12 - 1;
  if (v12 - 1 <= a2 || (v14 = *(a1 + 1448), v192.location = a2, v192.length = (v12 - a2), v15 = CFBitVectorGetFirstIndexOfBit(*(v14 + 16), v192, 0), v16 = v15, v15 < a2))
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v8 = 0;
  if (v13 < v15 || *(a1 + 220) <= v15)
  {
    goto LABEL_17;
  }

  while (1)
  {
    if (*v14 > v16 && CFBitVectorGetBitAtIndex(*(v14 + 16), v16))
    {
      goto LABEL_57;
    }

    if (*(a1 + 220) > v16)
    {
      break;
    }

    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v178 = 0u;
    memset(buf, 0, sizeof(buf));
    v37 = *__error();
    v45 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v48 = *(a1 + 220);
      v49 = fd_name(*(a1 + 1272), buf, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_offset_entry";
      *&__s[12] = 1024;
      *&__s[14] = 422;
      *&__s[18] = 1024;
      *&__s[20] = v16;
      *&__s[24] = 1024;
      *&__s[26] = v48;
      *&__s[30] = 2048;
      *&__s[32] = a1;
      *&__s[40] = 2080;
      *&__s[42] = v49;
      v41 = __s;
      v42 = v45;
      v43 = "%s:%d: invalid data id %d max %u %p %s";
      v44 = 50;
      goto LABEL_62;
    }

LABEL_56:
    *__error() = v37;
LABEL_57:
    if (++v16 > v13)
    {
      goto LABEL_16;
    }
  }

  v31 = *(a1 + 1352);
  if (!v31)
  {
    goto LABEL_57;
  }

  v32 = *(v31 + 4 * v16);
  if (v32 < 2)
  {
    goto LABEL_57;
  }

  v153 = 0;
  v154 = 0;
  v155 = 0;
  v33 = *(a1 + 1328);
  if (v33 <= v32)
  {
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v178 = 0u;
    memset(buf, 0, sizeof(buf));
    v37 = *__error();
    v46 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v145 = *(a1 + 1328);
      v47 = fd_name(*(a1 + 1272), buf, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_data_entry";
      *&__s[12] = 1024;
      *&__s[14] = 446;
      *&__s[18] = 2048;
      *&__s[20] = v32;
      *&__s[28] = 2048;
      *&__s[30] = v145;
      *&__s[38] = 2048;
      *&__s[40] = a1;
      *&__s[48] = 2080;
      *&__s[50] = v47;
      v41 = __s;
      v42 = v46;
      v43 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      v44 = 58;
LABEL_62:
      _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, v43, v41, v44);
      goto LABEL_56;
    }

    goto LABEL_56;
  }

  data_entry_restore_32(*(a1 + 1320), v32, v33, &v153, &v155);
  if (v155 == 1)
  {
    v176 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v34 = v32;
    v35 = 5;
    memset(__s, 0, sizeof(__s));
    do
    {
      if (v34 >= *(a1 + 1328))
      {
        break;
      }

      v36 = strlen(__s);
      sprintf(&__s[v36], "%d ", *(*(a1 + 1320) + v34++));
      --v35;
    }

    while (v35);
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v178 = 0u;
    memset(buf, 0, sizeof(buf));
    v37 = *__error();
    v38 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    v39 = fd_name(*(a1 + 1272), buf, 0x100uLL);
    v40 = *(a1 + 1328);
    *v156 = 136316674;
    *&v156[4] = "_data_map32_get_data_entry";
    *&v156[12] = 1024;
    *&v156[14] = 442;
    v157 = 2080;
    v158 = v39;
    v159 = 2048;
    v160 = v32;
    v161 = 2048;
    v162 = v40;
    v163 = 2048;
    v164 = v153;
    v165 = 2080;
    v166 = __s;
    v41 = v156;
    v42 = v38;
    v43 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
    v44 = 68;
    goto LABEL_62;
  }

  if (!v16)
  {
    goto LABEL_16;
  }

  if ((a3 & 4) == 0 && a4)
  {
    v8 = _data_map32_garbage_compact_collect(a1, v14, v16, a3, a4);
    goto LABEL_17;
  }

  v70 = *(a1 + 220) - 1;
  if (v70 >= v16)
  {
    v71 = 0;
    v146 = *(a1 + 224);
    while (1)
    {
      if (*v14 <= v16 || !CFBitVectorGetBitAtIndex(*(v14 + 16), v16))
      {
        if (*(a1 + 220) <= v16)
        {
          v189 = 0u;
          v190 = 0u;
          v187 = 0u;
          v188 = 0u;
          v185 = 0u;
          v186 = 0u;
          v183 = 0u;
          v184 = 0u;
          v181 = 0u;
          v182 = 0u;
          v179 = 0u;
          v180 = 0u;
          v178 = 0u;
          memset(buf, 0, sizeof(buf));
          v117 = *__error();
          v118 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
          {
            v125 = *(a1 + 220);
            v126 = fd_name(*(a1 + 1272), buf, 0x100uLL);
            *__s = 136316418;
            *&__s[4] = "_data_map32_get_offset_entry";
            *&__s[12] = 1024;
            *&__s[14] = 422;
            *&__s[18] = 1024;
            *&__s[20] = v16;
            *&__s[24] = 1024;
            *&__s[26] = v125;
            *&__s[30] = 2048;
            *&__s[32] = a1;
            *&__s[40] = 2080;
            *&__s[42] = v126;
            _os_log_error_impl(&dword_1C278D000, v118, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
          }

          *__error() = v117;
          goto LABEL_163;
        }

        v103 = *(a1 + 1352);
        if (v103)
        {
          v104 = *(v103 + 4 * v16);
          if (v104 >= 2)
          {
            break;
          }
        }
      }

LABEL_163:
      if (++v16 > v70)
      {
        goto LABEL_97;
      }
    }

    v153 = 0;
    v154 = 0;
    v155 = 0;
    v105 = *(a1 + 1328);
    if (v105 <= v104)
    {
      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v178 = 0u;
      memset(buf, 0, sizeof(buf));
      v109 = *__error();
      v119 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
LABEL_161:
        *__error() = v109;
        v120 = v71;
LABEL_162:
        v71 = v120;
        goto LABEL_163;
      }

      v142 = *(a1 + 1328);
      v127 = fd_name(*(a1 + 1272), buf, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_data_entry";
      *&__s[12] = 1024;
      *&__s[14] = 446;
      *&__s[18] = 2048;
      *&__s[20] = v104;
      *&__s[28] = 2048;
      *&__s[30] = v142;
      *&__s[38] = 2048;
      *&__s[40] = a1;
      *&__s[48] = 2080;
      *&__s[50] = v127;
      v113 = __s;
      v114 = v119;
      v115 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      v116 = 58;
LABEL_180:
      _os_log_error_impl(&dword_1C278D000, v114, OS_LOG_TYPE_ERROR, v115, v113, v116);
      goto LABEL_161;
    }

    data_entry_restore_32(*(a1 + 1320), v104, v105, &v153, &v155);
    if (v155 == 1)
    {
      v176 = 0;
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      v168 = 0u;
      v169 = 0u;
      v106 = v104;
      v107 = 5;
      memset(__s, 0, sizeof(__s));
      do
      {
        if (v106 >= *(a1 + 1328))
        {
          break;
        }

        v108 = strlen(__s);
        sprintf(&__s[v108], "%d ", *(*(a1 + 1320) + v106++));
        --v107;
      }

      while (v107);
      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v178 = 0u;
      memset(buf, 0, sizeof(buf));
      v109 = *__error();
      v110 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_161;
      }

      v111 = fd_name(*(a1 + 1272), buf, 0x100uLL);
      v112 = *(a1 + 1328);
      *v156 = 136316674;
      *&v156[4] = "_data_map32_get_data_entry";
      *&v156[12] = 1024;
      *&v156[14] = 442;
      v157 = 2080;
      v158 = v111;
      v159 = 2048;
      v160 = v104;
      v161 = 2048;
      v162 = v112;
      v163 = 2048;
      v164 = v153;
      v165 = 2080;
      v166 = __s;
      v113 = v156;
      v114 = v110;
      v115 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
      v116 = 68;
      goto LABEL_180;
    }

    if ((a3 & 2) == 0)
    {
LABEL_172:
      v120 = v71 + 1;
      if ((a3 & 4) == 0)
      {
        if (!v71)
        {
          if ((*(a1 + 1457) & 1) == 0)
          {
            _data_map32_dirty(a1);
            *(a1 + 1457) = 1;
          }

          if ((*(a1 + 1459) & 1) == 0)
          {
            _data_map32_dirty(a1);
            *(a1 + 1459) = 1;
          }
        }

        *(v103 + 4 * v16) = 1;
        bzero(v154, (v153 + v146));
      }

      goto LABEL_162;
    }

    if ((a3 & 8) != 0)
    {
      if (gSILogLevels[0] < 5)
      {
        goto LABEL_172;
      }

      v141 = *__error();
      v128 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_184;
      }

      v130 = v154 + *(a1 + 224);
      *buf = 67109890;
      *&buf[4] = v16;
      *&buf[8] = 1024;
      *&buf[10] = v153;
      *&buf[14] = 2080;
      *&buf[16] = v130;
      *&buf[24] = 2048;
      *&buf[26] = a1;
      v122 = v128;
      v123 = "Delete data for id:%d size:%d %s from %p";
      v124 = 34;
    }

    else
    {
      if (gSILogLevels[0] < 5)
      {
        goto LABEL_172;
      }

      v141 = *__error();
      v121 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_184;
      }

      *buf = 67109632;
      *&buf[4] = v16;
      *&buf[8] = 1024;
      *&buf[10] = v153;
      *&buf[14] = 2048;
      *&buf[16] = a1;
      v122 = v121;
      v123 = "Delete data for id:%d size:%d from %p";
      v124 = 24;
    }

    _os_log_impl(&dword_1C278D000, v122, OS_LOG_TYPE_DEFAULT, v123, buf, v124);
LABEL_184:
    *__error() = v141;
    goto LABEL_172;
  }

  LODWORD(v71) = 0;
LABEL_97:
  if ((a3 & 2) == 0)
  {
    goto LABEL_16;
  }

  v72 = *__error();
  v73 = _SILogForLogForCategory(0);
  v74 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v73, v74))
  {
    *buf = 67109376;
    *&buf[4] = v71;
    *&buf[8] = 2048;
    *&buf[10] = a1;
    _os_log_impl(&dword_1C278D000, v73, v74, "Found %d deleted strings from %p", buf, 0x12u);
  }

  v8 = 0;
  *__error() = v72;
LABEL_17:
  _data_map32_unlock(a1);
  return v8;
}

uint64_t data_map_garbage_compact_collect_commit(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a4;
  v8 = *(a1 + 216);
  v9 = 0xFFFFFFFFLL;
  if (v8 > 842150449)
  {
    if (v8 == 1684300900)
    {
      if ((*(a1 + 4573) & 1) == 0 && (v21 = _db_write_lock(a1)) != 0)
      {
        v34 = v21;
        v31 = *__error();
        v32 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          if (v34 == -1)
          {
            v34 = *__error();
          }

          *buf = 136315650;
          v36 = "_data_map64_wrlock";
          v37 = 1024;
          *v38 = 261;
          *&v38[4] = 1024;
          *&v38[6] = v34;
          _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: _data_map64_wrlock error %d", buf, 0x18u);
        }

        *__error() = v31;
        if (v4)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }

      if (*a3)
      {
        return 0;
      }

      if (!a2[1])
      {
        return 0;
      }

      v22 = a2[2];
      if (v22 == *(a1 + 224))
      {
        v23 = a2[3];
        v43.length = v22 - 1;
        v43.location = 0;
        if (v23 == CFBitVectorGetCountOfBit(*(*(a1 + 4560) + 16), v43, 1u))
        {
          return 0;
        }
      }
    }

    else
    {
      if (v8 != 842150450)
      {
        return v9;
      }

      if ((*(a1 + 1461) & 1) == 0 && (v12 = _db_write_lock(a1)) != 0)
      {
        v33 = v12;
        v25 = *__error();
        v26 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          if (v33 == -1)
          {
            v33 = *__error();
          }

          *buf = 136315650;
          v36 = "_data_map32_wrlock";
          v37 = 1024;
          *v38 = 290;
          *&v38[4] = 1024;
          *&v38[6] = v33;
          _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: _data_map32_wrlock error %d", buf, 0x18u);
        }

        *__error() = v25;
        if (v4)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }

      if (*a3)
      {
        return 0;
      }

      if (!a2[1])
      {
        return 0;
      }

      v13 = *(a1 + 220);
      if (a2[2] == v13)
      {
        v14 = a2[3];
        v42.length = (v13 - 1);
        v42.location = 0;
        if (v14 == CFBitVectorGetCountOfBit(*(*(a1 + 1448) + 16), v42, 1u))
        {
          return 0;
        }
      }
    }

    v9 = 0;
    *a3 = 1;
    return v9;
  }

  if (v8 != -572662307)
  {
    if (v8 != -270471200)
    {
      return v9;
    }

    if ((*(a1 + 477) & 1) == 0)
    {
      v9 = _db_write_lock(a1);
      if (v9)
      {
        v10 = *__error();
        v11 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          if (v9 == -1)
          {
            LODWORD(v9) = *__error();
          }

          *buf = 136315650;
          v36 = "_data_map_ext_wrlock";
          v37 = 1024;
          *v38 = 288;
          *&v38[4] = 1024;
          *&v38[6] = v9;
          _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_wrlock error %d", buf, 0x18u);
        }

        v9 = 0;
        *__error() = v10;
      }

      return v9;
    }

    return 0;
  }

  v9 = data_map_garbage_compact_collect_commit(*(a1 + 440), a2, a3, a4);
  v15 = (*(**(a1 + 448) + 296))();
  v16 = *a3;
  if (*a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
      v37 = 1024;
      *v38 = 648;
      *&v38[4] = 2080;
      *&v38[6] = "data_map_double_garbage_compact_collect_commit";
      v39 = 2080;
      v40 = "*modified == modified_new";
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      v16 = *a3;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v36 = v16;
      v37 = 2048;
      *v38 = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      v16 = *a3;
    }

    if (v16)
    {
      v27 = __si_assert_copy_extra_332();
      v28 = v27;
      v29 = "";
      if (v27)
      {
        v29 = v27;
      }

      __message_assert(v27, "data_map_double.m", 648, "*modified == modified_new", v29);
      free(v28);
      if (__valid_fs(-1))
      {
        v30 = 2989;
      }

      else
      {
        v30 = 3072;
      }

      *v30 = -559038737;
      abort();
    }
  }

  if (v9 != v15)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
      v37 = 1024;
      *v38 = 649;
      *&v38[4] = 2080;
      *&v38[6] = "data_map_double_garbage_compact_collect_commit";
      v39 = 2080;
      v40 = "output == output_new";
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v36 = v9;
      v37 = 2048;
      *v38 = v15;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
    }

    v17 = __si_assert_copy_extra_332();
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert(v17, "data_map_double.m", 649, "output == output_new", v19);
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

  return v9;
}

uint64_t data_map_garbage_collect_handle_deletes(uint64_t a1, int64x2_t *a2)
{
  v87 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 216);
  v5 = 0xFFFFFFFFLL;
  if (v4 > 842150449)
  {
    v6 = (a1 + 1396);
    if (v4 == 1684300900)
    {
      if (a2->i64[1])
      {
        bzero(buf, 0x400uLL);
        bzero(v80, 0x400uLL);
        storageWindowsUnmap(a1 + 280);
        munmap(*(a1 + 4456), *(a1 + 4440));
        *(a1 + 4456) = a2[262].i64[0];
        *(a1 + 4448) = a2[263].i64[0];
        a2[262].i64[0] = -1;
        v17 = fd_name(*(a1 + 280), buf, 0x400uLL);
        v18 = *__error();
        v19 = _SILogForLogForCategory(0);
        v20 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v19, v20))
        {
          v21 = fd_realpath(a2[2].i64[0], v80);
          *v57 = 134218498;
          v58 = a1;
          v59 = 2080;
          v60 = v21;
          v61 = 2080;
          v62 = v17;
          _os_log_impl(&dword_1C278D000, v19, v20, "rename %p %s to %s", v57, 0x20u);
        }

        *__error() = v18;
        fd_rename(a2[2].i64[0], v17);
        memcpy((a1 + 280), &a2[2], 0x1038uLL);
        bzero(&a2[2], 0x1038uLL);
        v22 = fd_name(*(a1 + 4432), buf, 0x400uLL);
        v23 = *__error();
        v24 = _SILogForLogForCategory(0);
        v25 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v24, v25))
        {
          v26 = fd_realpath(a2[261].i64[1], v80);
          *v57 = 134218498;
          v58 = a1;
          v59 = 2080;
          v60 = v26;
          v61 = 2080;
          v62 = v22;
          _os_log_impl(&dword_1C278D000, v24, v25, "rename %p %s to %s", v57, 0x20u);
        }

        *__error() = v23;
        fd_rename(a2[261].i64[1], v22);
        v27 = *(a1 + 4432);
        *(a1 + 4432) = a2[261].i64[1];
        fd_release(v27);
        a2[261].i64[1] = 0;
        v28 = &a2->i64[1];
        v29 = vld1q_dup_f64(v28);
        *(a1 + 4512) = vaddq_s64(*(a1 + 4512), v29);
        *(a1 + 4528) = 0;
        _data_map64_dirty(a1);
        _data_map64_sync_data(a1);
        _data_map64_sync_header(a1);
        if ((*(a1 + 4570) & 1) == 0)
        {
          _data_map64_dirty(a1);
          *(a1 + 4570) = 1;
        }

        _data_map64_rehash(a1);
        _data_map64_sync_data(a1);
        _data_map64_sync_header(a1);
      }
    }

    else
    {
      if (v4 != 842150450)
      {
        return v5;
      }

      if (a2->i64[1])
      {
        bzero(buf, 0x400uLL);
        bzero(v80, 0x400uLL);
        munmap(*(a1 + 1320), *(a1 + 1312));
        *(a1 + 1320) = a2[2].i64[1];
        *(a1 + 1312) = vmovn_s64(a2[5]);
        *(a1 + 1328) = a2[6].i64[0];
        a2[2].i64[1] = -1;
        fd_sync(a2[2].i64[0], 0);
        fd_sync(a2[3].i64[0], 1);
        munmap(*(a1 + 1352), *(a1 + 1344));
        *(a1 + 1352) = a2[3].i64[1];
        *(a1 + 1348) = a2[4].i64[1];
        a2[3].i64[1] = -1;
        memset(v79, 0, sizeof(v79));
        v78 = 0u;
        v77 = 0u;
        v76 = 0u;
        v75 = 0u;
        v74 = 0u;
        v73 = 0u;
        v72 = 0u;
        v71 = 0u;
        v70 = 0u;
        v69 = 0u;
        v68 = 0u;
        v67 = 0u;
        v66 = 0u;
        v65 = 0u;
        v64 = 0u;
        __buf[0] = 0x6D6F76650A00;
        __buf[1] = 0x3232323200000003;
        __strlcpy_chk(v79 + 12, (a1 + 228), 255, 255);
        v7 = &a2->i32[2];
        v8 = vld1_dup_f32(v7);
        *v6 = vadd_s32(*v6, v8);
        *(a1 + 1404) = 0;
        _data_map32_dirty(a1);
        _data_map32_sync_data(a1, 1);
        _data_map32_sync_header_to_tmp(a1);
        v9 = *(a1 + 1304);
        if (v9)
        {
          v10 = *(v9 + 44);
        }

        else
        {
          v10 = 0xFFFFFFFFLL;
        }

        v30 = si_openat_protected(v10, "tmp.movePlan", 1538, 3);
        pwrite(v30, __buf, 0x210uLL, 0);
        fcntl(v30, 85);
        bzero(v57, 0x400uLL);
        snprintf(v57, 0x400uLL, "tmp.%s.rehash", (a1 + 228));
        v31 = *(a1 + 1304);
        if (v31)
        {
          v32 = *(v31 + 44);
        }

        else
        {
          v32 = 0xFFFFFFFFLL;
        }

        v33 = si_openat_protected(v32, v57, 1538, 3);
        close(v33);
        v34 = fd_name(*(a1 + 1304), buf, 0x400uLL);
        v35 = *__error();
        v36 = _SILogForLogForCategory(0);
        v37 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v36, v37))
        {
          v38 = fd_realpath(a2[2].i64[0], v80);
          *v51 = 134218498;
          v52 = a1;
          v53 = 2080;
          v54 = v38;
          v55 = 2080;
          v56 = v34;
          _os_log_impl(&dword_1C278D000, v36, v37, "rename %p %s to %s", v51, 0x20u);
        }

        *__error() = v35;
        fd_rename(a2[2].i64[0], v34);
        v39 = *(a1 + 1304);
        *(a1 + 1304) = a2[2].i64[0];
        fd_release(v39);
        a2[2].i64[0] = 0;
        v40 = fd_name(*(a1 + 1336), buf, 0x400uLL);
        v41 = *__error();
        v42 = _SILogForLogForCategory(0);
        v43 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v42, v43))
        {
          v44 = fd_realpath(a2[3].i64[0], v80);
          *v51 = 134218498;
          v52 = a1;
          v53 = 2080;
          v54 = v44;
          v55 = 2080;
          v56 = v40;
          _os_log_impl(&dword_1C278D000, v42, v43, "rename %p %s to %s", v51, 0x20u);
        }

        *__error() = v41;
        fd_rename(a2[3].i64[0], v40);
        v45 = *(a1 + 1336);
        *(a1 + 1336) = a2[3].i64[0];
        fd_release(v45);
        a2[3].i64[0] = 0;
        _data_map32_sync_header(a1, 1);
        data_map32_commit_sync(a1);
        data_map32_shadow(a1);
        data_map32_commit_shadow(a1);
        data_map32_commit_shadow_complete(a1);
        v46 = *(a1 + 1304);
        if (v46)
        {
          v47 = *(v46 + 44);
        }

        else
        {
          v47 = -1;
        }

        unlinkat(v47, "tmp.movePlan", 2048);
        close(v30);
        if ((*(a1 + 1458) & 1) == 0)
        {
          _data_map32_dirty(a1);
          *(a1 + 1458) = 1;
        }

        _data_map32_rehash(a1);
        _data_map32_sync_data(a1, 1);
        _data_map32_sync_header(a1, 1);
        data_map32_shadow(a1);
        data_map32_commit_shadow(a1);
        data_map32_commit_shadow_complete(a1);
        v48 = *(a1 + 1304);
        if (v48)
        {
          v49 = *(v48 + 44);
        }

        else
        {
          v49 = -1;
        }

        unlinkat(v49, v57, 2048);
      }
    }

    return 0;
  }

  if (v4 == -572662307)
  {
    v5 = data_map_garbage_collect_handle_deletes(*(a1 + 440), a2);
    v11 = (*(**(a1 + 448) + 288))(*(a1 + 448), a2[263].i64[1]);
    if (v5 != v11)
    {
      v12 = v11;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v82 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
        v83 = 1024;
        *v84 = 662;
        *&v84[4] = 2080;
        *&v84[6] = "data_map_double_garbage_collect_handle_deletes";
        v85 = 2080;
        v86 = "output == output_new";
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v82 = v5;
        v83 = 2048;
        *v84 = v12;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      }

      v13 = __si_assert_copy_extra_332();
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      __message_assert(v13, "data_map_double.m", 662, "output == output_new", v15);
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
  }

  else if (v4 == -270471200)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return v5;
}

void data_map_cleanup_compact_ctx(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (*a1 > 842150449)
  {
    if (v2 != 1684300900)
    {
      if (v2 == 842150450)
      {
        v3 = *(a1 + 40);
        if (v3 != -1)
        {
          munmap(v3, *(a1 + 80));
        }

        v4 = *(a1 + 32);
        if (v4)
        {
          _fd_unlink_with_origin(v4, 0);
          fd_release(*(a1 + 32));
        }

        v5 = *(a1 + 56);
        if (v5 != -1)
        {
          munmap(v5, *(a1 + 64));
        }

        v8 = *(a1 + 48);
        v7 = (a1 + 48);
        v6 = v8;
        if (v8)
        {
          goto LABEL_28;
        }
      }

      return;
    }

    goto LABEL_16;
  }

  if (v2 != -572662307)
  {
    if (v2 != -270471200)
    {
      return;
    }

LABEL_16:
    storageWindowsUnmap(a1 + 32);
    v9 = *(a1 + 32);
    if (v9)
    {
      _fd_unlink_with_origin(*(a1 + 32), 0);
      fd_release(v9);
    }

    v10 = *(a1 + 4192);
    if (v10 != -1)
    {
      munmap(v10, *(a1 + 4200));
    }

    v6 = *(a1 + 4184);
    if (v6)
    {
      v7 = (a1 + 4184);
LABEL_28:
      _fd_unlink_with_origin(v6, 0);
      v14 = *v7;

      fd_release(v14);
      return;
    }

    return;
  }

  data_map_cleanup_compact_ctx(a1);
  v11 = *(a1 + 4216);
  storageWindowsUnmap((v11 + 4));
  v12 = v11[4];
  if (v12)
  {
    _fd_unlink_with_origin(v11[4], 0);
    fd_release(v12);
  }

  v13 = v11[524];
  if (v13 != -1)
  {
    munmap(v13, v11[525]);
  }

  v6 = v11[523];
  if (v6)
  {
    v7 = (v11 + 523);
    goto LABEL_28;
  }
}

void data_maps_garbage_compact_collect_commit(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v6 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v22 = __data_maps_garbage_compact_collect_commit_block_invoke;
  v23 = &unk_1E8195DF0;
  v24 = &v27;
  v25 = a2;
  v26 = a3;
  do
  {
    if (v22(v21, *(a1 + 8 * v6), v6))
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 3;
    }

    ++v6;
  }

  while (!v7);
  if (v28[3] & 1) != 0 || (a3)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(0);
    v12 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v11, (gSILogLevels[0] < 3)))
    {
      v16[0] = 0;
      _os_log_impl(&dword_1C278D000, v11, v12, "*warn* Delete strings canceled", v16, 2u);
    }

    *__error() = v10;
  }

  else
  {
    v8 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v18 = __data_maps_garbage_compact_collect_commit_block_invoke_2;
    v19 = &__block_descriptor_tmp_13_8875;
    v20 = v4;
    do
    {
      if (v18(v17, *(a1 + 8 * v8), v8))
      {
        v9 = 1;
      }

      else
      {
        v9 = v8 == 3;
      }

      ++v8;
    }

    while (!v9);
  }

  for (i = 0; i != 32; i += 8)
  {
    v14 = *(a1 + i);
    _data_map_clear_seen(v14);
    _data_map_unlock(v14);
  }

  v15 = 4;
  do
  {
    if (*(v4 + 8))
    {
      data_map_cleanup_compact_ctx(v4);
    }

    v4 += 4224;
    --v15;
  }

  while (v15);
  _Block_object_dispose(&v27, 8);
}

uint64_t __data_maps_garbage_compact_collect_commit_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = (*(a1 + 32) + 4224 * a3);
  v6 = data_map_garbage_collect_handle_deletes(a2, v5);
  if (!v6)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(0);
    v9 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v5->i64[1];
      v12[0] = 67109632;
      v12[1] = v10;
      v13 = 2048;
      v14 = a2;
      v15 = 1024;
      v16 = a3;
      _os_log_impl(&dword_1C278D000, v8, v9, "Deleted %d items from %p[%d]", v12, 0x18u);
    }

    *__error() = v7;
  }

  return v6;
}

uint64_t data_map_copy_deleted_ids(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = *(a1 + 216);
  if (v3 > 842150449)
  {
    if (v3 != 1684300900)
    {
      if (v3 != 842150450)
      {
        return v2;
      }

      if (!*(a1 + 1396))
      {
        return 0;
      }

      v13 = *(a1 + 220);
      v2 = bit_vector_create(v13);
      if (v13 < 2)
      {
        return v2;
      }

      v14 = 1;
      while (1)
      {
        if (v14 >= *(a1 + 220))
        {
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
          v61 = 0u;
          v62 = 0u;
          v60 = 0u;
          memset(v59, 0, sizeof(v59));
          v15 = *__error();
          v16 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *(a1 + 220);
            v18 = fd_name(*(a1 + 1272), v59, 0x100uLL);
            *buf = 136316418;
            v49 = "_data_map32_get_offset_entry";
            v50 = 1024;
            v51 = 422;
            v52 = 1024;
            *v53 = v14;
            *&v53[4] = 1024;
            *&v53[6] = v17;
            *v54 = 2048;
            *&v54[2] = a1;
            *v55 = 2080;
            *&v55[2] = v18;
            _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", buf, 0x32u);
          }

          *__error() = v15;
        }

        else if (*(*(a1 + 1352) + 4 * v14) != 1)
        {
          goto LABEL_30;
        }

        bit_vector_set_13535(v2, v14);
LABEL_30:
        if (v13 == ++v14)
        {
          return v2;
        }
      }
    }

    if (!*(a1 + 4512))
    {
      return 0;
    }

    v30 = *(a1 + 224);
    v2 = bit_vector_create(v30);
    if (v30 < 2)
    {
      return v2;
    }

    v31 = 1;
    v32 = 16;
    v33 = &dword_1C278D000;
    while (1)
    {
      if (*(a1 + 224) <= v31)
      {
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
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        memset(v59, 0, sizeof(v59));
        v34 = *__error();
        v35 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = v33;
          v37 = *(a1 + 224);
          v38 = fd_name(*(a1 + 248), v59, 0x100uLL);
          *buf = 136316418;
          v49 = "_data_map64_get_offset_entry";
          v50 = 1024;
          v51 = 359;
          v52 = 2048;
          *v53 = v31;
          *&v53[8] = 2048;
          *v54 = v37;
          v33 = v36;
          *&v54[8] = 2048;
          *v55 = a1;
          *&v55[8] = 2080;
          v56 = v38;
          _os_log_error_impl(v36, v35, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
        }

        *__error() = v34;
      }

      else if (*(*(a1 + 4456) + v32) != 1)
      {
        goto LABEL_69;
      }

      bit_vector_set_7166(v2, v31);
LABEL_69:
      ++v31;
      v32 += 16;
      if (v30 == v31)
      {
        return v2;
      }
    }
  }

  if (v3 == -572662307)
  {
    v2 = data_map_copy_deleted_ids(*(a1 + 440));
    v19 = (*(**(a1 + 448) + 328))(*(a1 + 448));
    if (!(v2 | v19))
    {
      return 0;
    }

    v20 = v19;
    v21 = *v2;
    v22 = *v19;
    if (*v2 != *v19)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v59 = 136315906;
        *&v59[4] = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
        *&v59[12] = 1024;
        *&v59[14] = 620;
        *&v59[18] = 2080;
        *&v59[20] = "data_map_double_copy_deleted_ids";
        *&v59[28] = 2080;
        *&v59[30] = "output->count == output_new->count";
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", v59, 0x26u);
        v21 = *v2;
        v22 = *v20;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v59 = 134218240;
        *&v59[4] = v21;
        *&v59[12] = 2048;
        *&v59[14] = v22;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", v59, 0x16u);
        v21 = *v2;
        v22 = *v20;
      }

      v23 = v21 == v22;
      v21 = v22;
      if (!v23)
      {
        v44 = __si_assert_copy_extra_332();
        v45 = v44;
        v46 = "";
        if (v44)
        {
          v46 = v44;
        }

        __message_assert(v44, "data_map_double.m", 620, "output->count == output_new->count", v46);
        free(v45);
        if (__valid_fs(-1))
        {
          v47 = 2989;
        }

        else
        {
          v47 = 3072;
        }

        *v47 = -559038737;
        abort();
      }
    }

    if (v21 < 1)
    {
LABEL_56:
      v29 = v20[2];
      if (v29)
      {
        CFRelease(v29);
      }

      free(v20);
      return v2;
    }

    v24 = 0;
    v25 = MEMORY[0x1E69E9C10];
    while (1)
    {
      BitAtIndex = CFBitVectorGetBitAtIndex(*(v2 + 16), v24);
      if (*v20 <= v24)
      {
        if (!BitAtIndex)
        {
          goto LABEL_48;
        }
      }

      else if ((BitAtIndex != 0) == (CFBitVectorGetBitAtIndex(v20[2], v24) != 0))
      {
        goto LABEL_48;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v59 = 0;
        _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "assertion failed", v59, 2u);
      }

LABEL_48:
      if (*v2 <= v24)
      {
        if (*v20 > v24)
        {
          v28 = 0;
LABEL_54:
          if (v28 != (CFBitVectorGetBitAtIndex(v20[2], v24) != 0))
          {
LABEL_73:
            v40 = __si_assert_copy_extra_332();
            v41 = v40;
            v42 = "";
            if (v40)
            {
              v42 = v40;
            }

            __message_assert(v40, "data_map_double.m", 622, "bit_vector_get(output, i) == bit_vector_get(output_new, i)", v42);
            free(v41);
            if (__valid_fs(-1))
            {
              v43 = 2989;
            }

            else
            {
              v43 = 3072;
            }

            *v43 = -559038737;
            abort();
          }
        }
      }

      else
      {
        v27 = CFBitVectorGetBitAtIndex(*(v2 + 16), v24);
        v28 = v27 != 0;
        if (*v20 > v24)
        {
          goto LABEL_54;
        }

        if (v27)
        {
          goto LABEL_73;
        }
      }

      if (++v24 >= *v2)
      {
        goto LABEL_56;
      }
    }
  }

  if (v3 != -270471200)
  {
    return v2;
  }

  if (!*(a1 + 384))
  {
    return 0;
  }

  v4 = *(a1 + 224);
  v2 = bit_vector_create(v4);
  if (v4 >= 2)
  {
    v5 = 1;
    v6 = 24;
    do
    {
      if (*(a1 + 224) > v5 && (v7 = *(a1 + 296), (v7 + 1) > 1))
      {
        if (*(v7 + v6) != -2)
        {
          goto LABEL_14;
        }
      }

      else
      {
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
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        memset(v59, 0, sizeof(v59));
        v8 = *__error();
        v9 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 224);
          v11 = *(a1 + 296);
          v12 = fd_name(*(a1 + 248), v59, 0x100uLL);
          *buf = 136316674;
          v49 = "_data_map_ext_get_offset_entry";
          v50 = 1024;
          v51 = 417;
          v52 = 2048;
          *v53 = v5;
          *&v53[8] = 2048;
          *v54 = v10;
          *&v54[8] = 2048;
          *v55 = a1;
          *&v55[8] = 2048;
          v56 = v11;
          v57 = 2080;
          v58 = v12;
          _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", buf, 0x44u);
        }

        *__error() = v8;
      }

      bit_vector_set_7166(v2, v5);
LABEL_14:
      ++v5;
      v6 += 24;
    }

    while (v4 != v5);
  }

  return v2;
}

void data_map_clone_files(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    while (1)
    {
      v6 = *(v5 + 216);
      if (v6 != -572662307)
      {
        break;
      }

      v5 = *(v5 + 440);
      if (!v5)
      {
        return;
      }
    }

    switch(v6)
    {
      case -270471200:
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v23 = 0;
        asprintf(&v23, "%s%s", a2, ".buckets");
        sibling_protected = fd_create_sibling_protected(*(v5 + 344), v23, 514, 0);
        *a3 = sibling_protected;
        if (sibling_protected)
        {
          fd_copyfile(*(v5 + 344), sibling_protected, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".header");
        v16 = fd_create_sibling_protected(*(v5 + 248), v23, 514, 0);
        *(a3 + 24) = v16;
        if (v16)
        {
          fd_copyfile(*(v5 + 248), v16, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".offsets");
        v17 = fd_create_sibling_protected(*(v5 + 280), v23, 514, 0);
        *(a3 + 8) = v17;
        if (!v17)
        {
          goto LABEL_37;
        }

        break;
      case 1684300900:
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v23 = 0;
        v18 = *(v5 + 4572);
        asprintf(&v23, "%s%s", a2, ".buckets");
        if (v18)
        {
          v19 = 3;
        }

        else
        {
          v19 = 0;
        }

        v20 = fd_create_sibling_protected(*(v5 + 4472), v23, 514, v19);
        *a3 = v20;
        if (v20)
        {
          fd_copyfile(*(v5 + 4472), v20, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".header");
        v21 = fd_create_sibling_protected(*(v5 + 248), v23, 514, v19);
        *(a3 + 24) = v21;
        if (v21)
        {
          fd_copyfile(*(v5 + 248), v21, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".offsets");
        v22 = fd_create_sibling_protected(*(v5 + 4432), v23, 514, v19);
        *(a3 + 8) = v22;
        if (v22)
        {
          fd_copyfile(*(v5 + 4432), v22, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".data");
        v17 = fd_create_sibling_protected(*(v5 + 280), v23, 514, v19);
        *(a3 + 16) = v17;
        if (!v17)
        {
          goto LABEL_37;
        }

        break;
      case 842150450:
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v23 = 0;
        v7 = *(v5 + 1462);
        asprintf(&v23, "%s%s", a2, ".buckets");
        if (v7)
        {
          v8 = 3;
        }

        else
        {
          v8 = 0;
        }

        v9 = fd_create_sibling_protected(*(v5 + 1368), v23, 514, v8);
        *a3 = v9;
        if (v9)
        {
          fd_copyfile(*(v5 + 1368), v9, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".header");
        v10 = fd_create_sibling_protected(*(v5 + 1272), v23, 514, v8);
        *(a3 + 24) = v10;
        if (v10)
        {
          fd_copyfile(*(v5 + 1272), v10, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".offsets");
        v11 = fd_create_sibling_protected(*(v5 + 1336), v23, 514, v8);
        *(a3 + 8) = v11;
        if (v11)
        {
          fd_copyfile(*(v5 + 1336), v11, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".data");
        v12 = fd_create_sibling_protected(*(v5 + 1304), v23, 514, v8);
        *(a3 + 16) = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        v13 = v12;
        v14 = *(v5 + 1304);
        goto LABEL_36;
      default:
        return;
    }

    v13 = v17;
    v14 = *(v5 + 280);
LABEL_36:
    fd_copyfile(v14, v13, 1);
LABEL_37:
    free(v23);
  }
}

void data_map_delete_files(int a1, const char *a2, int a3)
{
  v28[128] = *MEMORY[0x1E69E9840];
  v28[0] = 0;
  v5 = a3 << 23 >> 31;
  asprintf(v28, "%s%s", a2, ".buckets");
  v6 = fd_create_protected(a1, v28[0], 2, v5 & 3);
  if (v6)
  {
    v7 = v6;
    _fd_unlink_with_origin(v6, 0);
    fd_release(v7);
  }

  free(v28[0]);
  asprintf(v28, "%s%s", a2, ".header");
  v8 = fd_create_protected(a1, v28[0], 514, v5 & 3);
  if (v8)
  {
    v9 = v8;
    _fd_unlink_with_origin(v8, 0);
    fd_release(v9);
  }

  free(v28[0]);
  asprintf(v28, "%s%s", a2, ".offsets");
  v10 = fd_create_protected(a1, v28[0], 514, v5 & 3);
  if (v10)
  {
    v11 = v10;
    _fd_unlink_with_origin(v10, 0);
    fd_release(v11);
  }

  free(v28[0]);
  asprintf(v28, "%s%s", a2, ".data");
  v12 = fd_create_protected(a1, v28[0], 514, v5 & 3);
  if (v12)
  {
    v13 = v12;
    _fd_unlink_with_origin(v12, 0);
    fd_release(v13);
  }

  free(v28[0]);
  bzero(v28, 0x400uLL);
  snprintf(v28, 0x400uLL, "%s%s", a2, ".buckets");
  v14 = fd_create_protected(a1, v28, 2, v5 & 3);
  if (v14)
  {
    v15 = v14;
    _fd_unlink_with_origin(v14, 0);
    fd_release(v15);
  }

  snprintf(v28, 0x400uLL, "%s%s", a2, ".header");
  v16 = fd_create_protected(a1, v28, 514, v5 & 3);
  if (v16)
  {
    v17 = v16;
    _fd_unlink_with_origin(v16, 0);
    fd_release(v17);
  }

  snprintf(v28, 0x400uLL, "%s%s", a2, ".offsets");
  v18 = fd_create_protected(a1, v28, 514, v5 & 3);
  if (v18)
  {
    v19 = v18;
    _fd_unlink_with_origin(v18, 0);
    fd_release(v19);
  }

  snprintf(v28, 0x400uLL, "%s%s", a2, ".data");
  v20 = fd_create_protected(a1, v28, 514, v5 & 3);
  if (v20)
  {
    v21 = v20;
    _fd_unlink_with_origin(v20, 0);
    fd_release(v21);
  }

  v28[0] = 0;
  asprintf(v28, "%s%s", a2, ".buckets");
  v22 = fd_create_protected(a1, v28[0], 2, v5 & 3);
  if (v22)
  {
    v23 = v22;
    _fd_unlink_with_origin(v22, 0);
    fd_release(v23);
  }

  free(v28[0]);
  asprintf(v28, "%s%s", a2, ".header");
  v24 = fd_create_protected(a1, v28[0], 514, v5 & 3);
  if (v24)
  {
    v25 = v24;
    _fd_unlink_with_origin(v24, 0);
    fd_release(v25);
  }

  free(v28[0]);
  asprintf(v28, "%s%s", a2, ".offsets");
  v26 = fd_create_protected(a1, v28[0], 514, v5 & 3);
  if (v26)
  {
    v27 = v26;
    _fd_unlink_with_origin(v26, 0);
    fd_release(v27);
  }

  free(v28[0]);
}

uint64_t flatPageSearchFuzzyBucketCompare(float **a1, float **a2)
{
  v2 = **a1;
  if ((v2 & 3) != 0 && (*a1)[2] < 0.0)
  {
    if ((**a2 & 3) != 0)
    {
      return (*a2)[2] >= 0.0;
    }

    return 1;
  }

  v4 = **a2;
  if ((v4 & 3) == 0 || (*a2)[2] >= 0.0)
  {
    v5 = v2 >> 3;
    v6 = v4 >> 3;
    if (v5 > v6)
    {
      return 1;
    }

    if (v5 >= v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = __si_assert_copy_extra(0);
      v10 = v9;
      v11 = "";
      if (v9)
      {
        v11 = v9;
      }

      __message_assert("%s:%u: failed assertion '%s' %s duplicate pages %ld %ld", "FindTermIDs.c", 617, "false", v11, v7, v8);
      free(v10);
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
  }

  return 0xFFFFFFFFLL;
}

uint64_t _floatCompare(float *a1, float *a2)
{
  if (*a2 <= *a1)
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

char *si_cache_relative_path_for_oid(unint64_t a1, const char *a2, char *__str, int a4)
{
  v4 = __str;
  if (a4)
  {
    if (snprintf(__str, 0x400uLL, "Cache/%x/%llx.%s", HIDWORD(a1), a1, a2) > 0x3FF)
    {
      return 0;
    }
  }

  else
  {
    snprintf(__str, 0x400uLL, "Cache/%4.4x/%4.4x/%4.4x/%lld.%s", HIWORD(a1), WORD2(a1), WORD1(a1), a1, a2);
  }

  return v4;
}

uint64_t si_textcache_fds_for_oids(uint64_t a1, uint64_t a2, unint64_t *a3, _DWORD *a4, __n128 a5)
{
  v21 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a5);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 4;
  bzero(v10, v9);
  do
  {
    if (*v10++)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      bzero(v20, 0x400uLL);
      v13 = si_cache_relative_path_for_oid(*a3, "txt", v20, *(a1 + 2072));
      result = x_openat(*(a1 + 32), v13, 0, v14, v15, v16, v17, v18, v19);
    }

    *a4++ = result;
    ++a3;
    --a2;
  }

  while (a2);
  return result;
}

void si_remove_text_content_cache_for_oid(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 6624) && (*(a1 + 6584) & 0x300010) == 0x300000)
  {
    if (get_compressor_queue_onceToken != -1)
    {
      dispatch_once(&get_compressor_queue_onceToken, &__block_literal_global_125_8957);
    }

    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x2000000000;
    v6 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __si_remove_text_content_cache_for_oid_block_invoke;
    block[3] = &unk_1E8195E38;
    block[5] = a2;
    block[6] = a1;
    block[4] = v5;
    dispatch_barrier_sync(get_compressor_queue_compressor_queue, block);
    _Block_object_dispose(v5, 8);
  }
}

uint64_t __si_remove_text_content_cache_for_oid_block_invoke(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  v2 = si_cache_relative_path_for_oid(a1[5], "txt", __str, *(a1[6] + 2072));
  if (v2)
  {
    result = x_unlinkat(*(a1[6] + 32), v2, 2048);
  }

  else
  {
    v4 = *__error();
    if (v4)
    {
      result = v4;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void __get_compressor_queue_block_invoke()
{
  initially_inactive = dispatch_queue_attr_make_initially_inactive(MEMORY[0x1E69E96A8]);
  v1 = dispatch_queue_attr_make_with_qos_class(initially_inactive, 5u, 0);
  get_compressor_queue_compressor_queue = dispatch_queue_create("compressor queue", v1);
  dispatch_queue_set_width();
  v2 = get_compressor_queue_compressor_queue;

  dispatch_activate(v2);
}

void si_update_text_content_cache_for_oid(uint64_t a1, uint64_t a2, const __CFString *a3, NSObject *a4)
{
  if (*(a1 + 6624))
  {
    v6 = (~*(a1 + 6584) & 0x300000) != 0 || a3 == 0;
    if (!v6 && (*(a1 + 6584) & 0x10) == 0)
    {
      TypeID = CFStringGetTypeID();
      v11 = CFGetTypeID(a3);
      if (a4)
      {
        if (TypeID == v11)
        {
          if (get_compressor_queue_onceToken != -1)
          {
            dispatch_once(&get_compressor_queue_onceToken, &__block_literal_global_125_8957);
          }

          v12 = get_compressor_queue_compressor_queue;
          Length = CFStringGetLength(a3);
          if (Length)
          {
            v14 = Length;
            CFRetain(a3);
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 0x40000000;
            v16[2] = __si_update_text_content_cache_for_oid_block_invoke;
            v16[3] = &__block_descriptor_tmp_13_8963;
            v16[4] = a3;
            v16[5] = v14;
            v16[6] = a2;
            v16[7] = a1;
            v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v16);
            dispatch_group_async(a4, v12, v15);
            _Block_release(v15);
          }
        }
      }
    }
  }
}

void __si_update_text_content_cache_for_oid_block_invoke(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v24 = *MEMORY[0x1E69E9840];
  usedBufLen = 0;
  bzero(v23, 0x10000uLL);
  CStringPtr = CFStringGetCStringPtr(*(v2 + 32), 0x8000100u);
  if (CStringPtr || (CStringPtr = CFStringGetCStringPtr(*(v2 + 32), 0x600u)) != 0)
  {
    v4 = CStringPtr;
    v5 = 0;
    usedBufLen = strlen(CStringPtr);
  }

  else
  {
    v16.length = *(v2 + 40);
    v17 = 3 * v16.length;
    v5 = ((3 * v16.length) & 0xFFFFFFFFFFFF0000) != 0;
    if ((3 * v16.length) < 0x10000)
    {
      v4 = v23;
    }

    else
    {
      v18 = malloc_type_zone_malloc(indexingZone, 3 * v16.length, 0xBF1CA4A4uLL);
      if (!v18)
      {
        goto LABEL_16;
      }

      v4 = v18;
      v16.length = *(v2 + 40);
    }

    v16.location = 0;
    CFStringGetBytes(*(v2 + 32), v16, 0x8000100u, 0, 0, v4, v17, &usedBufLen);
  }

  bzero(__str, 0x400uLL);
  *v21 = 0x4400000001;
  *v20 = 2;
  sysctl(v21, 2u, 0, 0, v20, 4uLL);
  v6 = si_cache_relative_path_for_oid(*(v2 + 48), "tmp", __str, *(*(v2 + 56) + 2072));
  v7 = si_cache_open_for_relative_path(*(v2 + 56), v6, *(v2 + 48));
  if (v7 != -1)
  {
    v8 = v7;
    bzero(v21, 0x400uLL);
    v9 = fcntl(v8, 50, v21);
    if (LOBYTE(v21[0]))
    {
      v10 = v9 < 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v21;
    }

    if (compress_data_to_file(v4, usedBufLen, v11, v8, 0))
    {
      goto LABEL_12;
    }

    bzero(v20, 0x400uLL);
    v12 = si_cache_relative_path_for_oid(*(v2 + 48), "txt", v20, *(*(v2 + 56) + 2072));
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = v12;
    v14 = *(*(v2 + 56) + 32);
    if (!renameatx_np(v14, v6, v14, v12, 0x10u))
    {
      close(v8);
      goto LABEL_14;
    }

    if (*__error() == 22)
    {
      v15 = renameatx_np(v14, v6, v14, v13, 0);
      close(v8);
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_12:
      close(v8);
    }

    x_unlinkat(*(*(v2 + 56) + 32), v6, 2048);
  }

LABEL_14:
  *v21 = 0x4400000001;
  *v20 = 4;
  sysctl(v21, 2u, 0, 0, v20, 4uLL);
  if (v5)
  {
    free(v4);
  }

LABEL_16:
  CFRelease(*(v2 + 32));
}

uint64_t si_cache_open_for_relative_path(uint64_t a1, const char *a2, unint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      x_unlinkat(*(a1 + 32), a2, 0x20000000);
      result = openat(*(a1 + 32), a2, 536872449, 384);
      if (result == -1)
      {
        bzero(&v13[6], 0x3FAuLL);
        v11 = 0;
        if ((fd_setDir(*(a1 + 32), &v11) & 1) == 0)
        {
          return openat(*(a1 + 32), a2, 536872449, 384);
        }

        bzero(__str, 0x400uLL);
        strcpy(v13, "Cache");
        if (mkdir(v13, 0x1C0u) != -1 || *__error() == 17)
        {
          if (*(a1 + 2072))
          {
            snprintf(__str, 0x400uLL, "/%x", HIDWORD(a3));
            __strlcat_chk();
            if (mkdir(v13, 0x1C0u) != -1 || *__error() == 17)
            {
              v7 = v11;
              MEMORY[0x1C6921200](v11);
              if ((v7 & 0x80000000) == 0)
              {
                close(v7);
              }

              return openat(*(a1 + 32), a2, 536872449, 384);
            }
          }

          else
          {
            snprintf(__str, 0x400uLL, "/%4.4x", HIWORD(a3));
            __strlcat_chk();
            if (mkdir(v13, 0x1C0u) != -1 || *__error() == 17)
            {
              snprintf(__str, 0x400uLL, "/%4.4x", WORD2(a3));
              __strlcat_chk();
              if (mkdir(v13, 0x1C0u) != -1 || *__error() == 17)
              {
                snprintf(__str, 0x400uLL, "/%4.4x", WORD1(a3));
                __strlcat_chk();
                v8 = mkdir(v13, 0x1C0u);
                v9 = v11;
                MEMORY[0x1C6921200](v11);
                if ((v9 & 0x80000000) == 0)
                {
                  close(v9);
                }

                if (v8 != -1)
                {
                  return openat(*(a1 + 32), a2, 536872449, 384);
                }

LABEL_22:
                if (*__error() != 17)
                {
                  return 0xFFFFFFFFLL;
                }

                return openat(*(a1 + 32), a2, 536872449, 384);
              }
            }
          }
        }

        v10 = v11;
        MEMORY[0x1C6921200](v11);
        if ((v10 & 0x80000000) == 0)
        {
          close(v10);
        }

        goto LABEL_22;
      }
    }
  }

  return result;
}

int *si_remove_icon_cache_for_oid(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  v4 = si_cache_relative_path_for_oid(a2, "img", __str, *(a1 + 2072));
  if (v4)
  {
    return unlinkat(*(a1 + 32), v4, 0);
  }

  else
  {
    return __error();
  }
}

CFTypeID si_update_icon_cache_for_oid(CFTypeID result, unint64_t a2, const void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = result;
    TypeID = CFDataGetTypeID();
    result = CFGetTypeID(a3);
    if (TypeID == result)
    {
      result = CFDataGetLength(a3);
      if (result)
      {
        v7 = result;
        bzero(__str, 0x400uLL);
        v8 = si_cache_relative_path_for_oid(a2, "img", __str, *(v5 + 2072));
        result = si_cache_open_for_relative_path(v5, v8, a2);
        if (result != -1)
        {
          v9 = result;
          BytePtr = CFDataGetBytePtr(a3);
          prot_write(v9, BytePtr, v7);
          return close(v9);
        }
      }
    }
  }

  return result;
}

void si_analytics_log_8973(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v13 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  va_copy(&string[1], va);
  vasprintf(string, "no field name for id %d of localize id %d", va);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v8 = xpc_string_create(string[0]);
  values = v8;
  v9 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v9);
  xpc_release(v8);
  free(string[0]);
}

BOOL si_getGroupFromDBO(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 6584);
  if ((v6 & 0x800) != 0)
  {
    v7 = 139;
  }

  else
  {
    v7 = 137;
  }

  if ((v6 & 0x200) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 136;
  }

  if ((v6 & 0x80) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 131;
  }

  if ((v6 & 0x20) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 120;
  }

  v24 = 0;
  v25 = 0;
  memset(v27, 0, sizeof(v27));
  v11 = db_copy_field_ids_with_buffer(*(a1 + 1192), "kMDItemContentTypeTree", v27, 8uLL);
  field_by_id = db_get_field_by_id(*(a1 + 1192), a2, v11, &v25, &v24);
  if (!field_by_id && (*(v25 + 2) & 0x10) != 0)
  {
    v13 = *(v25 + 8);
    if (v13 >= 4)
    {
      v15 = 0;
      v14 = v13 >> 2;
      while (1)
      {
        v16 = *(v24 + 4 * v15) & 0x7FFFFFFF;
        if (v16 < v10)
        {
          break;
        }

        if (v14 == ++v15)
        {
          goto LABEL_20;
        }
      }

      v17 = si_getGroupFromDBO_memberShipList[v16];
      *a3 = v17;
      LODWORD(v14) = v15;
    }

    else
    {
      LODWORD(v14) = 0;
LABEL_20:
      v17 = 0;
    }

    if ((*(a1 + 2072) & 1) == 0)
    {
      v18 = ((v17 >> 1) | (v17 << 7));
      if (v18 <= 9 && ((1 << v18) & 0x2A1) != 0 && v14)
      {
        v19 = 0;
        v20 = 4 * v14;
        while (1)
        {
          v21 = *(a1 + 6608);
          if (v21)
          {
            v22 = *(v24 + v19);
            value = 0;
            if (CFDictionaryGetValueIfPresent(v21, (v22 & 0x7FFFFFFF), &value))
            {
              if (value <= 0x8A)
              {
                break;
              }
            }
          }

          v19 += 4;
          if (v20 == v19)
          {
            goto LABEL_33;
          }
        }

        *a3 = si_getGroupFromDBO_memberShipList[value];
      }
    }
  }

LABEL_33:
  if (v11 != v27)
  {
    free(v11);
  }

  return field_by_id == 0;
}

void __si_addRecoveryAttributes_block_invoke(uint64_t a1, char *a2, unsigned __int16 *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (strcmp("_kMDItemGroupId", a2))
  {
    v7 = a3[1];
    if ((v7 & 0x10) == 0)
    {
      v8 = db_add_field(*(*(a1 + 40) + 1192), *(a1 + 48), 5u, a2, 0, v7, *a3, a3 + 13, v6, *(a3 + 2));
      goto LABEL_4;
    }

    if ((v7 & 0x80) != 0)
    {
      v11 = *(a3 + 2);
      v12 = v18 - ((v11 + 15) & 0x1FFFFFFF0);
      bzero(v12, v11);
      if (v11)
      {
        v14 = (a3 + v11 + 13);
        v15 = (a3 + 13);
        v16 = v12;
        while (1)
        {
          string_for_id = db_get_string_for_id(*(*(a1 + 40) + 6880), *v15);
          if (!string_for_id)
          {
            break;
          }

          *v16++ = db_create_id_for_value(*(*(a1 + 40) + 1192), string_for_id);
          if (++v15 >= v14)
          {
            goto LABEL_17;
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = 0;
      }

LABEL_17:
      if (*(*(*(a1 + 32) + 8) + 24) == 1)
      {
        v8 = db_add_field(*(*(a1 + 40) + 1192), *(a1 + 48), 5u, a2, 0, a3[1], *a3, v12, v13, *(a3 + 2));
LABEL_4:
        if (v8)
        {
          *(*(*(a1 + 32) + 8) + 24) = 0;
        }
      }
    }

    else
    {
      v9 = _decodeSDBField(*(*(a1 + 40) + 6880), a3, a3 + 13, 0, 0, 0, 0, *MEMORY[0x1E695E480], v6);
      if (v9)
      {
        v10 = v9;
        setOneFieldLocked(0, a2, v9, *(*(a1 + 40) + 1192), *(a1 + 48), a3[1], 0, 0);

        CFRelease(v10);
      }
    }
  }
}

void _SIRecomputeSizesWithCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1192) && *(a1 + 1064))
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    v5 = 0;
    v6 = 22;
    if (*(a1 + 2072))
    {
      v6 = 256;
    }

    v7 = (a1 + 7040);
    do
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 < 0)
      {
        v5 = a2 + 1;
      }

      v5 += v8;
      --v6;
    }

    while (v6);
    if (v5 > a2)
    {
LABEL_11:
      v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B0040EF6A6668uLL);
      v11 = *__error();
      v12 = _SILogForLogForCategory(0);
      v13 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 134218240;
        v22 = v10;
        v23 = 2048;
        v24 = a1;
        _os_log_impl(&dword_1C278D000, v12, v13, "ctx:%p idx:%p", buf, 0x16u);
      }

      *__error() = v11;
      *v10 = 0xBEEFC0DEBEEFC0DELL;
      v10[1] = a1;
      v14 = _Block_copy(a3);
      *(v10 + 4) = 0;
      v10[5] = 0;
      v10[6] = v14;
      v10[3] = 0;
      v10[4] = 0;
      v15 = *(a1 + 2360);
      if (v15)
      {
        v16 = *(v15 + 64);
        if (v16)
        {
          *(v10 + 4) = v16(*(v15 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SIStoring.c", 862, "void _SIRecomputeSizesWithCallback(SIRef, off_t, dispatch_block_t)");
        }
      }

      if (*v10 != 0xBEEFC0DEBEEFC0DELL)
      {
        v17 = __si_assert_copy_extra_661(-1);
        v18 = v17;
        v19 = "";
        if (v17)
        {
          v19 = v17;
        }

        __message_assert("%s:%u: failed assertion '%s' %s magic:%llx", "SIStoring.c", 864, "ctx->magic==RECOMPUTE_SIZE_MAGIC", v19, *v10);
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

      si_enqueue_work_with_qos(*(a1 + 1064), 9, si_recompute_sizes, v10);
    }
  }
}

void si_recompute_sizes(void *a1, int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  v6 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = "canceled";
    if (!a2)
    {
      v7 = "";
    }

    *buf = 134218242;
    v32 = a1;
    v33 = 2080;
    v34 = v7;
    _os_log_impl(&dword_1C278D000, v5, v6, "ctx:%p %s", buf, 0x16u);
  }

  *__error() = v4;
  if (*a1 != 0xBEEFC0DEBEEFC0DELL)
  {
    v19 = __si_assert_copy_extra_661(-1);
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s magic:%llx ctx:%p ref:%p", "SIStoring.c", 807, "ctx->magic==RECOMPUTE_SIZE_MAGIC", v21, *a1, a1, a1[1]);
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

  if (!a2)
  {
    v8 = a1[1];
    if (*(v8 + 1192))
    {
      if (*(v8 + 872))
      {
        if (*v8 != 0xC0DE10DE10DEC0DELL)
        {
          v23 = __si_assert_copy_extra_661(-1);
          v24 = v23;
          v25 = "";
          if (v23)
          {
            v25 = v23;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 810, "ref->magic == (0xc0de10de10dec0de)", v25);
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

        v9 = malloc_type_calloc(1uLL, 0xC08uLL, 0x1000040DB61F97BuLL);
        *v9 = vrev64_s32(*(v8 + 2008));
        atomic_fetch_add((v8 + 1452), 1u);
        v10 = _si_scheduler_suspend(*(v8 + 872), "SpotlightIndex.c", 2139);
        atomic_fetch_add((v8 + 1452), 0xFFFFFFFF);
        v11 = *(v8 + 1192);
        v12 = *v11;
        v13 = v11[1];
        v14 = *__error();
        v15 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "si_recompute_sizes start", buf, 2u);
        }

        *__error() = v14;
        v16 = db_apply(*(v8 + 1192), recompute_sizes_callback, v9);
        v17 = *__error();
        v18 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v32) = v16;
          _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "si_recompute_sizes end (%d)", buf, 8u);
        }

        *__error() = v17;
        if (v12 != **(v8 + 1192))
        {
          v27 = __si_assert_copy_extra_661(-1);
          v28 = v27;
          v29 = "";
          if (v27)
          {
            v29 = v27;
          }

          __message_assert("%s:%u: failed assertion '%s' %s sig 0x%x (0x%x) != 0x%x (0x%x)", "SIStoring.c", 824, "in_store.signature==ref->store->signature", v29, v12, v13, **(v8 + 1192), *(*(v8 + 1192) + 4));
          free(v28);
          if (__valid_fs(-1))
          {
            v30 = 2989;
          }

          else
          {
            v30 = 3072;
          }

          *v30 = -559038737;
          abort();
        }

        if (v16)
        {
          si_scheduler_resume(*(v8 + 872), v10, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SIStoring.c", 834);
          free(v9);
        }

        else
        {
          pthread_mutex_lock((v8 + 6976));
          memcpy((v8 + 7040), &v9[1], 0x800uLL);
          memcpy((v8 + 9088), &v9[257], 0x400uLL);
          pthread_mutex_unlock((v8 + 6976));
          db_dirty_datastore(*(v8 + 1192));
          si_scheduler_resume(*(v8 + 872), v10, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SIStoring.c", 834);
          free(v9);
          (*(a1[6] + 16))();
        }
      }
    }
  }

  si_power_info_cleanup((a1 + 2), a1[1], a2 != 0);
  _Block_release(a1[6]);
  free(a1);
}

uint64_t recompute_sizes_callback(int *a1, uint64_t a2, _DWORD *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13[0] = 0;
  LODWORD(v13[0]) = a3[1];
  v11 = 0;
  if (!db_get_field_by_id(a1, a2, v13, &v12, &v11))
  {
    v6 = *v11;
    if ((db_corespotlight_store(a1) & 1) != 0 || v6 <= 0x15)
    {
      v10 = 0;
      LODWORD(v13[0]) = *a3;
      field_by_id = db_get_field_by_id(a1, a2, v13, &v12, &v10);
      v8 = v11;
      if (!field_by_id)
      {
        *&a3[2 * *v11 + 2] += *v10;
      }

      ++a3[*v8 + 514];
    }
  }

  return 1;
}

void fixupOrphanItems(unint64_t *a1, int a2)
{
  if (!a2)
  {
    fixupOrphanArray(*a1, a1[1], 0);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

unint64_t fixupOrphanArray(unint64_t a1, uint64_t a2, char a3)
{
  result = si_get_cs_orphan_oid(a1);
  if (result)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __fixupOrphanArray_block_invoke;
    v7[3] = &__block_descriptor_tmp_137;
    v7[4] = a1;
    v8 = a3;
    return SIValueSet<unsigned long long>::_SIValueSetInnerIterate(a2 + 256, *(a2 + 216), *(a2 + 224), runBlock, v7, 1024);
  }

  return result;
}

void __fixupOrphanArray_block_invoke(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v89 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = v1;
    v7 = 0;
    alloc = *MEMORY[0x1E695E480];
    v8 = 0x1EBF46000uLL;
    v71 = v2;
    while (1)
    {
      v9 = *(v6 + 32);
      if (*(v9 + 2432) == 1)
      {
        return;
      }

      v10 = *(v5 + 8 * v7);
      v11 = *(v6 + 40);
      v82[0] = *(v9 + 2060);
      v82[1] = 0;
      v81[0] = *(v9 + 2064);
      v81[1] = 0;
      v80 = *(v9 + 2068);
      v77 = 0;
      bzero(&v78, 0x1000uLL);
      cs_orphan_oid = si_get_cs_orphan_oid(v9);
      if (*(v8 + 2764) >= 5)
      {
        v45 = *__error();
        v46 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v47 = " ";
          if (v11)
          {
            v47 = " inflight";
          }

          *&buf[4] = v47;
          v84 = 2048;
          *v85 = v10;
          *&v85[8] = 2048;
          *v86 = cs_orphan_oid;
          _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "repair%s oid: %lld orphan parent: %lld", buf, 0x20u);
        }

        *__error() = v45;
        v8 = 0x1EBF46000;
      }

      if (db_get_obj(*(v9 + 1192), v10, &v77, 0))
      {
        if (*(v8 + 2764) >= 5)
        {
          v13 = *__error();
          v14 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v10;
            _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "repair oid: %lld skipped", buf, 0xCu);
          }

          *__error() = v13;
          v8 = 0x1EBF46000;
        }

        goto LABEL_47;
      }

      v15 = *(v77 + 3);
      if (!v15 || v15 == cs_orphan_oid)
      {
        break;
      }

      if (*(v8 + 2764) >= 5)
      {
        v16 = *__error();
        v17 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(v77 + 3);
          *buf = 134218240;
          *&buf[4] = v10;
          v84 = 2048;
          *v85 = v18;
          _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "repair oid: %lld parent oid: %lld skipped", buf, 0x16u);
        }

        *__error() = v16;
LABEL_37:
        v8 = 0x1EBF46000;
      }

LABEL_38:
      free(v77);
      v5 = v71;
LABEL_47:
      if (++v7 == v4)
      {
        return;
      }
    }

    if (*v77 == cs_orphan_oid)
    {
      v19 = 0;
      v20 = 0;
      v78 = 2;
      v21 = 1;
      v22 = 1;
LABEL_18:
      if (v20)
      {
        v23 = 1;
      }

      else
      {
        v23 = v78 == cs_orphan_oid;
      }

      v24 = v23 || v21 == 0;
      v8 = 0x1EBF46000;
      if (v24 && !v22)
      {
        goto LABEL_38;
      }

      v25 = v19;
      v69 = _si_scheduler_suspend(*(v9 + 864), "SIStoring.c", 1216);
      atomic_fetch_add((v9 + 1452), 1u);
      v67 = _si_scheduler_suspend(*(v9 + 872), "SpotlightIndex.c", 2139);
      atomic_fetch_add((v9 + 1452), 0xFFFFFFFF);
      if (v21 > 1)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0;
      }

      if (v27 == 1)
      {
        v28 = (v21 - 2);
        v29 = v28 + 1;
        v30 = &v79[v28];
        v31 = 1;
        do
        {
          *buf = 0;
          if (!db_get_obj(*(v9 + 1192), *(v30 - 1), buf, 0))
          {
            updateWithNewPath(v26);
            free(*buf);
          }

          --v30;
          ++v31;
        }

        while (v29-- > 1);
      }

      updateWithNewPath(v26);
      si_scheduler_resume(*(v9 + 872), v67, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SIStoring.c", 1228);
      si_scheduler_resume(*(v9 + 864), v69, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SIStoring.c", 1229);
      goto LABEL_37;
    }

    *buf = 0;
    cStr = 0;
    if (db_get_field_by_id(*(v9 + 1192), v77, v82, buf, &cStr) || **buf != 11 || (v74 = 0, *v75 = 0, db_get_field_by_id(*(v9 + 1192), v77, v81, v75, &v74)) || **v75 != 11)
    {
      free(v77);
      goto LABEL_47;
    }

    v70 = CFStringCreateWithCString(alloc, cStr, 0x8000100u);
    v34 = _decodeSDBField(*(v9 + 1192), *v75, (*v75 + 13), 0, 0, 0, 0, alloc, v33);
    if (v34)
    {
      v35 = v34;
      v36 = CFGetTypeID(v34);
      if (v36 == CFStringGetTypeID())
      {
        cf = CFRetain(v35);
      }

      else
      {
        cf = 0;
      }

      CFRelease(v35);
    }

    else
    {
      cf = 0;
    }

    v72 = 0;
    v73 = 0;
    if (db_get_field_by_id(*(v9 + 1192), v77, &v80, &v73, &v72) || *v73 != 11)
    {
      v64 = 0;
    }

    else
    {
      v64 = CFStringCreateWithCString(alloc, v72, 0x8000100u);
    }

    v37 = v70;
    v38 = cf;
    v19 = 0;
    v68 = -1;
    v20 = 0;
    v22 = 0;
    if (!cf || !v70)
    {
LABEL_86:
      if (!v38)
      {
LABEL_88:
        if (v37)
        {
          v54 = v19;
          CFRelease(v37);
          v19 = v54;
        }

        if (v64)
        {
          v55 = v19;
          CFRelease(v64);
          v19 = v55;
        }

        v21 = v68;
        goto LABEL_18;
      }

LABEL_87:
      v53 = v19;
      CFRelease(v38);
      v19 = v53;
      v37 = v70;
      goto LABEL_88;
    }

    v39 = v77;
    if (*v77 == 2)
    {
      v22 = 0;
      v19 = 0;
      v78 = 0;
      v68 = -1;
      v20 = 1;
      goto LABEL_87;
    }

    v40 = dispatch_time(0, 10000000000);
    v41 = *(*(v9 + 1416) + 128);
    if (v41)
    {
      v42 = v41();
      v43 = v42;
      if (v42 > 0)
      {
        v78 = v42;
        if (v42 == 2)
        {
          v44 = 1;
          goto LABEL_75;
        }

LABEL_72:
        Path = directoryStoreWriterGetPath(*(v9 + 6624), v43, v79);
        LODWORD(cStr) = Path;
        if (!Path || (v44 = Path + 1, LODWORD(cStr) = Path + 1, Path == -1))
        {
          v20 = psid_lookupPath(v9, v39, cf, v64, v70, &cStr, &v78, v40);
          v19 = 1;
          v44 = cStr;
LABEL_82:
          v22 = 0;
          v68 = v44;
          if (!v20 && v44)
          {
            v20 = 0;
            v22 = *(v77 + 3) != v78;
          }

          v37 = v70;
          v38 = cf;
          goto LABEL_86;
        }

LABEL_75:
        v49 = 0;
        do
        {
          if (v79[v49 - 1] <= 0)
          {
            v59 = v44;
            v60 = __si_assert_copy_extra_661(-1);
            v61 = v60;
            v62 = "";
            if (v60)
            {
              v62 = v60;
            }

            __message_assert("%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", "SIStoring.c", 1124, "newpath[i] > 0", v62, v49, v79[v49 - 1], v59);
            free(v61);
            if (__valid_fs(-1))
            {
              v63 = 2989;
            }

            else
            {
              v63 = 3072;
            }

            *v63 = -559038737;
            abort();
          }

          ++v49;
        }

        while (v44 != v49);
        v19 = 0;
        v20 = 0;
        goto LABEL_82;
      }
    }

    else
    {
      v43 = -1;
    }

    if (*v39 != 2)
    {
      v20 = *__error();
      v50 = *__error();
      v51 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v56 = *__error();
        v57 = *v39;
        v58 = v39[3];
        *buf = 136316162;
        *&buf[4] = "repair_lookupPath";
        v84 = 1024;
        *v85 = 1111;
        *&v85[4] = 1024;
        *&v85[6] = v56;
        *v86 = 2048;
        *&v86[2] = v57;
        v87 = 2048;
        v88 = v58;
        _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: error: %d oid: %lld parent: %lld", buf, 0x2Cu);
      }

      v52 = __error();
      v19 = 0;
      *v52 = v50;
      v44 = -1;
      goto LABEL_82;
    }

    v78 = v43;
    goto LABEL_72;
  }
}

uint64_t psid_lookupPath(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v25 = 0;
  if (SIPersistentIDStoreGetOidPathForOid(*(a1 + 1416), *a2, a7, 0, &v25))
  {
    v13 = *__error();
    if (v13 != 22 && v13 != 60)
    {
      v14 = *__error();
      v15 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = *a2;
        v20 = a2[3];
        *buf = 136316418;
        v27 = "psid_lookupPath";
        v28 = 1024;
        v29 = 944;
        v30 = 1024;
        v31 = v13;
        v32 = 1024;
        v33 = 944;
        v34 = 2048;
        v35 = v19;
        v36 = 2048;
        v37 = v20;
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: SIPersistentIDStoreGetOidPathForOid error:%d at:%d oid:%lld parent:%lld", buf, 0x32u);
      }

      *__error() = v14;
    }

    if (v13 == 60)
    {
      return 60;
    }

    else
    {
      return 22;
    }
  }

  else if (*(a1 + 2072) == 1)
  {
    result = 0;
    *a6 = v25;
  }

  else if (v25 < 2)
  {
    result = 0;
    *a6 = 0;
  }

  else
  {
    v17 = si_directoryStoreEnsurePath(v12) + 1;
    *a6 = v17;
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*(a7 + 8 * i) <= 0)
        {
          v21 = __si_assert_copy_extra_661(-1);
          v22 = v21;
          v23 = "";
          if (v21)
          {
            v23 = v21;
          }

          __message_assert("%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", "SIStoring.c", 961, "newpath[i] > 0", v23, i, *(a7 + 8 * i), *a6);
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
      }
    }

    return 0;
  }

  return result;
}

void updateWithNewPath(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v134[1] = *MEMORY[0x1E69E9840];
  v13 = malloc_type_malloc(v3[3], 0x1000040EED21634uLL);
  v14 = v13;
  if (v13)
  {
    memcpy(v13, v4, v4[3]);
    *(v14 + 2) = v4[3];
  }

  v16 = v6 != 2 && v6 != v2;
  if (v10)
  {
    v17 = *v8;
    if (*v8 != v6)
    {
LABEL_13:
      *(v14 + 3) = v17;
      goto LABEL_14;
    }

    ++v8;
    if (--v10)
    {
      v17 = *v8;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (*v8 != v2)
  {
    v18 = !v16;
    if (v10 < 2)
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      v19 = v8 + 1;
      v20 = 2;
      do
      {
        v22 = *v19++;
        v21 = v22;
        v16 = v22 != v6 && *v8 != v21;
        v24 = !v16 || v20++ >= v10;
      }

      while (!v24);
    }

    if ((v10 & 0x80000000) == 0 && v16)
    {
      v25 = *(v12 + 1192);
      if (*v25 != 1685287992)
      {
        v116 = __si_assert_copy_extra_332();
        v117 = v116;
        if (v116)
        {
          v118 = v116;
        }

        else
        {
          v118 = "";
        }

        __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 321, v118);
        free(v117);
        goto LABEL_182;
      }

      if ((*(v25 + 804) & 8) != 0)
      {
        inserted = 13;
        goto LABEL_38;
      }

      v26 = *(v14 + 3);
      if (v26 < 0x30 || (v27 = *(v14 + 2), v27 < 0x30))
      {
        inserted = 22;
        goto LABEL_38;
      }

      inserted = 7;
      if (v26 > 0xFFEB || v27 > 0x10000)
      {
        goto LABEL_38;
      }

      *(v14 + 10) &= ~8u;
      v31 = __THREAD_SLOT_KEY[0];
      if (!__THREAD_SLOT_KEY[0])
      {
        makeThreadId();
        v31 = __THREAD_SLOT_KEY[0];
      }

      v123 = pthread_getspecific(v31);
      HIDWORD(v33) = qos_class_self() - 9;
      LODWORD(v33) = HIDWORD(v33);
      v32 = v33 >> 2;
      if (v32 > 6)
      {
        v34 = 0;
      }

      else
      {
        v34 = dword_1C2BFF8F0[v32];
      }

      v35 = pthread_mutex_lock((v25 + 584));
      if (!*(v25 + 768) && !*(v25 + 780) && (*(v25 + 796) & 1) == 0)
      {
        if (v34 > 5)
        {
LABEL_82:
          *(v25 + 768) = pthread_self();
LABEL_53:
          pthread_mutex_unlock((v25 + 584));
          if (v35)
          {
            v119 = *__error();
            v120 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "db2_cas_obj";
              v126 = 1024;
              v127 = 11741;
              v128 = 1024;
              v129 = v35;
              _os_log_error_impl(&dword_1C278D000, v120, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
            }

            *__error() = v119;
            sdb2_die(v25, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11741);
          }

          if (v123)
          {
            v121 = CIOnThreadCleanUpPush(v123 - 1, db_write_unlock, v25 + 584);
          }

          else
          {
            v121 = -1;
          }

          v122 = v123 - 1;
          if ((*(v25 + 4) & 2) != 0)
          {
            inserted = 22;
            goto LABEL_130;
          }

          if (*(v14 + 3) > 0x2Fu)
          {
            v36 = *(v25 + 992);
            v37 = *v14;
            v38 = v36[1];
            if (v38)
            {
              v39 = vcnt_s8(v38);
              v39.i16[0] = vaddlv_u8(v39);
              if (v39.u32[0] > 1uLL)
              {
                v40 = *v14;
                if (v37 >= *&v38)
                {
                  v40 = v37 % *&v38;
                }
              }

              else
              {
                v40 = (*&v38 - 1) & v37;
              }

              v41 = *(*v36 + 8 * v40);
              if (v41)
              {
                for (i = *v41; i; i = *i)
                {
                  v43 = i[1];
                  if (v43 == v37)
                  {
                    if (i[2] == v37)
                    {
                      if (*(i + 6) == 3)
                      {
                        goto LABEL_129;
                      }

                      break;
                    }
                  }

                  else
                  {
                    if (v39.u32[0] > 1uLL)
                    {
                      if (v43 >= *&v38)
                      {
                        v43 %= *&v38;
                      }
                    }

                    else
                    {
                      v43 &= *&v38 - 1;
                    }

                    if (v43 != v40)
                    {
                      break;
                    }
                  }
                }
              }
            }

            v132 = 0;
            *buf = 0;
            v46 = std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(v36, v37);
            if (v46)
            {
              if (*(v46 + 6) != 3)
              {
                *buf = v46[4];
                goto LABEL_128;
              }

              goto LABEL_129;
            }

            v47 = *(v25 + 856);
            v48 = *(v47 + 8);
            if (!v48)
            {
LABEL_129:
              inserted = 2;
              goto LABEL_130;
            }

            v49 = *(v47 + 16);
            if (v49 < v48)
            {
              v50 = v47 + 16 * v49;
              v52 = *(v50 + 20);
              v51 = v50 + 20;
              if (v52 == v37)
              {
                v53 = *(v51 + 12);
                if (!(v53 >> 28))
                {
                  goto LABEL_106;
                }
              }
            }

            v54 = v48;
            if (v48 < 1)
            {
              v59 = 0;
              v56 = 0;
              goto LABEL_102;
            }

            v55 = 0;
            while (1)
            {
              v56 = (v48 + v55) >> 1;
              v57 = v47 + 20 + 16 * v56;
              if (*(v57 + 12) >> 28 || (v58 = *v57, v58 > v37))
              {
                v59 = 0;
                v48 = (v48 + v55) >> 1;
              }

              else
              {
                if (v58 == v37)
                {
                  v59 = 0;
LABEL_102:
                  if (v54 - 1 > v56)
                  {
                    v60 = v59;
                  }

                  else
                  {
                    v60 = 0;
                  }

                  v61 = v56 + v60;
                  v62 = v47 + 16 * v61;
                  *(v47 + 16) = v61;
                  v51 = v62 + 20;
                  v53 = *(v62 + 32);
LABEL_106:
                  if (!page_find_oid_with_flags(v25, *(v51 + 8), v53 & 0xFFFFFFF, v37, 0, buf, 0, 0))
                  {
                    goto LABEL_128;
                  }

                  v63 = *(v25 + 856);
                  v64 = *(v63 + 8);
                  if (!v64)
                  {
                    goto LABEL_129;
                  }

                  v65 = *(v63 + 16);
                  if (v65 < v64)
                  {
                    v66 = v63 + 16 * v65;
                    v68 = *(v66 + 20);
                    v67 = v66 + 20;
                    if (v68 == v37)
                    {
                      v69 = *(v67 + 12);
                      if (v69 >> 28 == 1)
                      {
                        goto LABEL_127;
                      }
                    }
                  }

                  v70 = v64;
                  if (v64 < 1)
                  {
                    v77 = 0;
                    v72 = 0;
                    goto LABEL_123;
                  }

                  v71 = 0;
                  while (1)
                  {
                    v72 = (v64 + v71) >> 1;
                    v73 = v63 + 20 + 16 * v72;
                    v74 = *(v73 + 12) >> 28;
                    if (v74 == 1)
                    {
                      v75 = v37 - *v73;
                    }

                    else
                    {
                      v75 = 1 - v74;
                    }

                    v76 = (v64 + v71) >> 1;
                    if ((v75 & 0x8000000000000000) == 0)
                    {
                      if (!v75)
                      {
                        v77 = 0;
LABEL_123:
                        v78 = v70 - 1 > v72 && v77;
                        v79 = v72 + v78;
                        v80 = v63 + 16 * v79;
                        *(v63 + 16) = v79;
                        v67 = v80 + 20;
                        v69 = *(v80 + 32);
LABEL_127:
                        if (!page_find_oid_with_flags(v25, *(v67 + 8), v69 & 0xFFFFFFF, v37, 1u, buf, 0, 0))
                        {
LABEL_128:
                          if (!_inflateDBO(v25, *buf, &v132, 0, 0x10000, 0))
                          {
                            v105 = v132;
                            v106 = equalDBO(v81);
                            free(v105);
                            if (v106)
                            {
                              serializeDBO(v107);
                              if ((MEMORY[0] - 16360) <= 0xFFFFC013)
                              {
                                v108 = test_compress_obj(v25, 0x4000, 0);
                                if (v108)
                                {
                                  inserted = v108;
                                  free(0);
                                  goto LABEL_130;
                                }
                              }

                              inserted = db_updateset_insert_object(*(v25 + 992), 0, 1, 0);
                              free(0);
                              if (inserted)
                              {
                                v109 = *__error();
                                v110 = _SILogForLogForCategory(7);
                                if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_171;
                                }

                                *buf = 136315650;
                                *&buf[4] = "cas_obj";
                                v126 = 1024;
                                v127 = 5346;
                                v128 = 1024;
                                v129 = inserted;
                                v111 = "%s:%d: Error %d from db_updateset_insert_object";
LABEL_178:
                                _os_log_error_impl(&dword_1C278D000, v110, OS_LOG_TYPE_ERROR, v111, buf, 0x18u);
                                goto LABEL_171;
                              }

                              if ((*(*(v25 + 992) + 56) + 16 * *(*(v25 + 992) + 48)) < 0x80000)
                              {
                                inserted = 0;
                              }

                              else
                              {
                                inserted = flush_updateset_locked(v25, 0);
                                if (inserted)
                                {
                                  v109 = *__error();
                                  v110 = _SILogForLogForCategory(7);
                                  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 136315650;
                                    *&buf[4] = "cas_obj";
                                    v126 = 1024;
                                    v127 = 5350;
                                    v128 = 1024;
                                    v129 = inserted;
                                    v111 = "%s:%d: Error %d from flush_updateset_locked";
                                    goto LABEL_178;
                                  }

LABEL_171:
                                  *__error() = v109;
                                }
                              }

LABEL_130:
                              v82 = pthread_mutex_lock((v25 + 584));
                              *(v25 + 788) = 0;
                              v83 = *(v25 + 760);
                              *(v25 + 760) = 0u;
                              v84 = *(v25 + 780) != 0;
                              *(v25 + 796) = 0;
                              db_rwlock_wakeup(v25 + 584, v84, 0);
                              pthread_mutex_unlock((v25 + 584));
                              if (v83)
                              {
                                pthread_override_qos_class_end_np(v83);
                              }

                              if (v82)
                              {
                                sdb2_die(v25, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11749);
                              }

                              if (v123)
                              {
                                CIOnThreadCleanUpClearItem(v122, v121);
                                v85 = &threadData[9 * v122];
                                v88 = *(v85 + 14);
                                v86 = v85 + 7;
                                v87 = v88;
                                if (v121 + 1 == v88)
                                {
                                  *v86 = v87 - 1;
                                }
                              }

                              if (!inserted)
                              {
                                v132 = *v14;
                                v133 = v2;
                                v134[0] = 2;
                                v89 = *(v14 + 3);
                                if (v132 == v2)
                                {
                                  v90 = 2;
                                }

                                else
                                {
                                  v90 = 3;
                                }

                                v124 = v132;
                                if (v132 == v2)
                                {
                                  v91 = &v133;
                                }

                                else
                                {
                                  v91 = &v132;
                                }

                                if (v89 == 2)
                                {
                                  v92 = 1;
                                }

                                else
                                {
                                  v92 = v10;
                                }

                                directoryStoreSetParentForMove(*(v12 + 6624), v132, v89);
                                v93 = *(v12 + 6632);
                                if (v93)
                                {
                                  directoryOverlayMoveDirectory(v93, v90, v91, v92, v8);
                                }

                                v94 = *(v12 + 1384);
                                v95 = *(v12 + 1392);
                                if (*(v95 + 8))
                                {
                                  v96 = 0;
                                  do
                                  {
                                    v97 = *(v12 + 6640);
                                    if (!v97 || !CFSetContainsValue(v97, *(*(*v95 + 8 * v96) + 56)))
                                    {
                                      _CIMoveDirectory(*(*v95 + 8 * v96), v90, v91, v92, v8);
                                    }

                                    ++v96;
                                  }

                                  while (v96 < *(v95 + 8));
                                }

                                if (*(v94 + 8))
                                {
                                  v98 = 0;
                                  do
                                  {
                                    v99 = *(v12 + 6640);
                                    if (!v99 || !CFSetContainsValue(v99, *(*(*v94 + 8 * v98) + 56)))
                                    {
                                      _CIMoveDirectory(*(*v94 + 8 * v98), v90, v91, v92, v8);
                                    }

                                    ++v98;
                                  }

                                  while (v98 < *(v94 + 8));
                                }

                                if (*(v14 + 4))
                                {
                                  bzero(buf, 0x8001uLL);
                                  allocator = _SIStackAllocatorCreate(buf, 0x8000, indexingZone);
                                  obj = db_create_obj(*(v12 + 1192), 256, 0);
                                  obj[2] = 0;
                                  v102 = decodeDBOToDictionary(*(v12 + 1192), obj, 0, 0x2000, 2, *(v12 + 2028), *(v12 + 2060), 0, 1, allocator);
                                  LiveIndex = si_getLiveIndex(*(v12 + 1384));
                                  if (v124 == v2)
                                  {
                                    v104 = v134;
                                  }

                                  else
                                  {
                                    v104 = &v133;
                                  }

                                  _CIUpdateContent(LiveIndex, v92, v8, v90 - 1, v104, *v14, 0, v102, 0.0, 0, *(v14 + 4), v14 + 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                                  free(obj);
                                  CFRelease(v102);
                                }

                                goto LABEL_41;
                              }

LABEL_38:
                              v29 = *__error();
                              v30 = _SILogForLogForCategory(4);
                              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136315906;
                                *&buf[4] = "updateWithNewPath";
                                v126 = 1024;
                                v127 = 994;
                                v128 = 1024;
                                v129 = inserted;
                                v130 = 2048;
                                v131 = v6;
                                _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: db_cas_obj error: %d oid: %lld", buf, 0x22u);
                              }

                              *__error() = v29;
                              goto LABEL_41;
                            }
                          }
                        }

                        goto LABEL_129;
                      }

                      v71 = v72 + 1;
                      v76 = v64;
                    }

                    v64 = v76;
                    if (v71 >= v76)
                    {
                      v77 = v75 > 0;
                      goto LABEL_123;
                    }
                  }
                }

                v55 = v56 + 1;
                v59 = 1;
              }

              if (v55 >= v48)
              {
                goto LABEL_102;
              }
            }
          }

          v112 = __si_assert_copy_extra_3233(0, -1);
          v113 = v112;
          v114 = "";
          if (v112)
          {
            v114 = v112;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v114);
          free(v113);
          if (!__valid_fs(-1))
          {
            v115 = 3072;
LABEL_184:
            *v115 = -559038737;
            abort();
          }

LABEL_182:
          v115 = 2989;
          goto LABEL_184;
        }

        v44 = v34 - 6;
        v45 = (v25 + 16 * v34 + 648);
        while (!*v45)
        {
          v45 += 2;
          v24 = __CFADD__(v44++, 1);
          if (v24)
          {
            goto LABEL_82;
          }
        }
      }

      db_rwlock_wait(v25 + 584, v34, 2);
      goto LABEL_53;
    }
  }

LABEL_41:
  free(v14);
}

void *stack_reallocate(void *ptr, size_t size, uint64_t a3, uint64_t a4)
{
  if (*a4 > ptr || *(a4 + 16) <= ptr)
  {
    v11 = *(a4 + 32);

    return malloc_type_zone_realloc(v11, ptr, size, 0x6A106D85uLL);
  }

  else
  {
    v7 = malloc_type_zone_malloc(*(a4 + 32), size, 0x57CA2FD2uLL);
    v8 = v7;
    if (v7)
    {
      if (*(a4 + 16) - ptr >= size)
      {
        v9 = size;
      }

      else
      {
        v9 = *(a4 + 16) - ptr;
      }

      memcpy(v7, ptr, v9);
      ++*(a4 + 24);
    }

    return v8;
  }
}

uint64_t computePathFS(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  Path = directoryStoreWriterGetPath(*(a1 + 6624), *a2, a3);
  if (Path)
  {
LABEL_2:
    v9 = 0;
    *a4 = Path;
    return v9;
  }

  v11 = a2[3];
  if (!v11)
  {
    v14 = *(*(a1 + 1416) + 128);
    if (v14)
    {
      v15 = v14();
      v16 = *a2;
      if (v15 > 0)
      {
        if (v16 != 2)
        {
          *a3 = v15;
          if (v15 == 2)
          {
            Path = 1;
          }

          else
          {
            Path = directoryStoreWriterGetPath(*(a1 + 6624), v15, (a3 + 1)) + 1;
            if (Path < 2)
            {
              goto LABEL_26;
            }
          }

          for (i = 0; i != Path; ++i)
          {
            if (a3[i] <= 0)
            {
              v28 = __si_assert_copy_extra_661(-1);
              v29 = v28;
              v30 = "";
              if (v28)
              {
                v30 = v28;
              }

              __message_assert("%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", "SIStoring.c", 1544, "newpath[i] > 0", v30, i, a3[i], Path);
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
          }

          goto LABEL_2;
        }

LABEL_27:
        v9 = 0;
        *a3 = 0;
        return v9;
      }

      if (v16 == 2)
      {
        goto LABEL_27;
      }
    }

    else if (*a2 == 2)
    {
      goto LABEL_27;
    }

    v9 = *__error();
    v18 = *__error();
    v19 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = *__error();
      v22 = *a2;
      v23 = a2[3];
      *buf = 136316418;
      v33 = "computePathFS";
      v34 = 1024;
      v35 = 1529;
      v36 = 1024;
      v37 = v21;
      v38 = 1024;
      v39 = 1529;
      v40 = 2048;
      v41 = v22;
      v42 = 2048;
      v43 = v23;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: SIPersistentIDStoreGetParentForOid error:%d at:%d oid:%lld parent:%lld", buf, 0x32u);
    }

    *__error() = v18;
    return v9;
  }

  v12 = directoryStoreWriterGetPath(*(a1 + 6624), v11, (a3 + 1));
  v13 = a2[3];
  if (!v12)
  {
    if (v13 != 2)
    {
      goto LABEL_26;
    }

    *a3 = 2;
    Path = 1;
LABEL_15:
    v17 = 0;
    do
    {
      if (a3[v17] <= 0)
      {
        v24 = __si_assert_copy_extra_661(-1);
        v25 = v24;
        v26 = "";
        if (v24)
        {
          v26 = v24;
        }

        __message_assert("%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", "SIStoring.c", 1522, "newpath[i] > 0", v26, v17, a3[v17], Path);
        free(v25);
        if (__valid_fs(-1))
        {
          v27 = 2989;
        }

        else
        {
          v27 = 3072;
        }

        *v27 = -559038737;
        abort();
      }

      ++v17;
    }

    while (Path != v17);
    goto LABEL_2;
  }

  *a3 = v13;
  Path = v12 + 1;
  if (v12 != -1)
  {
    goto LABEL_15;
  }

LABEL_26:
  if (*a2 == 2)
  {
    goto LABEL_27;
  }

  return psid_lookupPath(a1, a2, 0, 0, 0, a4, a3, -1);
}

uint64_t groupForBundleId(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock(&group_assignment_lock);
  Value = CFDictionaryGetValue(*(a1 + 2088), a2);
  os_unfair_lock_unlock(&group_assignment_lock);
  if (!Value)
  {
    return 0;
  }

  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberCharType, &valuePtr);
  return valuePtr;
}

void SIUpdateKnownBundles(uint64_t a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v5 = Count;
      if (Count >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          _si_updateCSGroupAssignments(a1, ValueAtIndex);
        }
      }

      os_unfair_lock_lock(&group_assignment_lock);
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a1 + 2088));
      os_unfair_lock_unlock(&group_assignment_lock);
      SISetProperty(a1, @"GroupAssignments", Copy);

      CFRelease(Copy);
    }
  }
}

uint64_t computePath(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v92 = *MEMORY[0x1E69E9840];
  bzero(&v86, 0x1008uLL);
  v82 = 0;
  v17 = *v14;
  if (!v8 || !v6 || !v4)
  {
    v21 = computePathFS(v16, *v14, v12, &v82);
    Path = 0;
    if (v21)
    {
      return v21;
    }

LABEL_85:
    v47 = v82;
    *v10 = v82;
    v48 = *v14;
    if (v47)
    {
      v49 = *v12;
      v48[3] = *v12;
      if (!v49 && *v48 != 2)
      {
        v72 = __si_assert_copy_extra_661(-1);
        v73 = v72;
        v74 = "";
        if (v72)
        {
          v74 = v72;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 883, "dbo->parent_oid||dbo->oid==2", v74);
        v66 = v73;
        goto LABEL_120;
      }

      if (Path && v87[0] != *v12)
      {
        v86 = *v48;
        directoryStoreSetParentForMove(*(v16 + 6624), *v48, v49);
        v50 = *(v16 + 6632);
        if (v50)
        {
          directoryOverlayMoveDirectory(v50, Path + 1, &v86, v47, v12);
        }

        v51 = *(v16 + 1384);
        v52 = *(v16 + 1392);
        if (*(v52 + 8))
        {
          v53 = 0;
          do
          {
            v54 = *(v16 + 6640);
            if (!v54 || !CFSetContainsValue(v54, *(*(*v52 + 8 * v53) + 56)))
            {
              _CIMoveDirectory(*(*v52 + 8 * v53), (Path + 1), &v86, v47, v12);
            }

            ++v53;
          }

          while (v53 < *(v52 + 8));
        }

        if (*(v51 + 8))
        {
          v55 = 0;
          do
          {
            v56 = *(v16 + 6640);
            if (!v56 || !CFSetContainsValue(v56, *(*(*v51 + 8 * v55) + 56)))
            {
              _CIMoveDirectory(*(*v51 + 8 * v55), (Path + 1), &v86, v47, v12);
            }

            ++v55;
          }

          while (v55 < *(v51 + 8));
        }
      }
    }

    if (v48[3] || !**(v16 + 6592))
    {
      v21 = 0;
      *v10 = v47;
      return v21;
    }

    return 89;
  }

  v18 = *v17;
  if (v2 && CFStringHasSuffix(v2, @"NSFileProviderRootContainerItemIdentifier"))
  {
    *v12 = 2;
    Path = directoryStoreWriterGetPath(*(v16 + 6624), v18, v87);
    LODWORD(v18) = 1;
  }

  else
  {
    v22 = directoryStoreWriterGetPath(*(v16 + 6624), v18, v12);
    if (!v22)
    {
      Path = 0;
      v24 = v17 + 3;
      v25 = v17[3];
      if (!v25)
      {
        LODWORD(v18) = 0;
        v21 = 0;
        goto LABEL_73;
      }

      goto LABEL_15;
    }

    LODWORD(v18) = v22;
    Path = 0;
  }

  v24 = v17 + 3;
  v23 = v17[3];
  if (v23 == *v12)
  {
LABEL_78:
    if (v23 == 2)
    {
      v21 = 0;
      goto LABEL_83;
    }

    LODWORD(v85) = 0;
    v45 = si_directoryStoreEnsurePath(v20);
    v46 = v85;
    if (v85 != 22)
    {
      if (!v85)
      {
        v21 = 0;
        LODWORD(v18) = v45 + 1;
        goto LABEL_83;
      }

      v57 = *__error();
      v58 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v60 = *__error();
        v61 = *v17;
        v62 = v17[3];
        *buf = 136316162;
        *v89 = "computePathFP";
        *&v89[8] = 1024;
        *&v89[10] = 1478;
        *&v89[14] = 1024;
        *&v89[16] = v60;
        *&v89[20] = 2048;
        *&v89[22] = v61;
        v90 = 2048;
        v91 = v62;
        _os_log_error_impl(&dword_1C278D000, v58, OS_LOG_TYPE_ERROR, "%s:%d: error: %d oid: %lld parent: %lld", buf, 0x2Cu);
      }

      *__error() = v57;
    }

    if (v46 == 60)
    {
      return 60;
    }

    else
    {
      return 22;
    }
  }

  if (!v23)
  {
    goto LABEL_77;
  }

  __memcpy_chk();
  v25 = *v24;
  Path = v18;
LABEL_15:
  v26 = directoryStoreWriterGetPath(*(v16 + 6624), v25, (v12 + 1));
  v27 = *v24;
  if (v26)
  {
    *v12 = v27;
    LODWORD(v18) = v26 + 1;
    if (v26 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (!v27)
  {
LABEL_25:
    LODWORD(v18) = 0;
    v21 = 0;
    goto LABEL_73;
  }

  if (v27 == 2)
  {
    *v12 = 2;
    LODWORD(v18) = 1;
LABEL_21:
    v28 = 0;
    while (v12[v28] > 0)
    {
      if (v18 == ++v28)
      {
        goto LABEL_77;
      }
    }

    v63 = __si_assert_copy_extra_661(-1);
    v64 = v63;
    v65 = "";
    if (v63)
    {
      v65 = v63;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", "SIStoring.c", 1462, "newpath[i] > 0", v65, v28, v12[v28], v18);
    v66 = v64;
LABEL_120:
    free(v66);
    if (__valid_fs(-1))
    {
      v67 = 2989;
    }

    else
    {
      v67 = 3072;
    }

    *v67 = -559038737;
    abort();
  }

  v29 = **v14;
  v81 = *v14;
  v30 = (*v14)[3];
  v84 = v30;
  v85 = v81;
  if (dword_1EBF46ADC >= 5)
  {
    v75 = *__error();
    v76 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v89 = v29;
      *&v89[8] = 2048;
      *&v89[10] = v30;
      _os_log_impl(&dword_1C278D000, v76, OS_LOG_TYPE_DEFAULT, "lookupPathByDBO enter oid: %lld  parent: %lld", buf, 0x16u);
    }

    *__error() = v75;
  }

  if (v29 < 3)
  {
    LODWORD(v18) = 0;
    v21 = 0;
    goto LABEL_67;
  }

  v80 = v29;
  cs_orphan_oid = si_get_cs_orphan_oid(v16);
  v18 = 0;
  v20.n128_u64[0] = 134218496;
  while (1)
  {
    v32 = v84;
    if (v84 == 2)
    {
      v21 = 0;
      v12[v18] = 2;
      LODWORD(v18) = v18 + 1;
      goto LABEL_66;
    }

    if (v84 >= 1 && v84 != cs_orphan_oid)
    {
      break;
    }

    v12[v18] = cs_orphan_oid;
    v84 = 2;
    v18 = (v18 + 1);
LABEL_58:
    if (v18 > 511)
    {
      v21 = 22;
      goto LABEL_66;
    }
  }

  v83 = 0;
  if (db_get_obj(*(v16 + 1192), v84, &v83, 0))
  {
    v35 = forceToOrphanParent(v16, &v85, &v84, v8, v85 == v81);
    if (v35)
    {
      v21 = v35;
      LODWORD(v44) = v18;
LABEL_65:
      LODWORD(v18) = v44;
      goto LABEL_66;
    }

    goto LABEL_51;
  }

  if (dword_1EBF46ADC >= 5)
  {
    v79 = *__error();
    v42 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v83[3];
      *buf = 134218496;
      *v89 = v80;
      *&v89[8] = 2048;
      *&v89[10] = v32;
      *&v89[18] = 2048;
      *&v89[20] = v43;
      _os_log_impl(&dword_1C278D000, v42, OS_LOG_TYPE_DEFAULT, "lookupPathByDBO oid: %lld p1: %lld p2: %lld", buf, 0x20u);
    }

    *__error() = v79;
  }

  if (v85 != v81)
  {
    free(v85);
  }

  v36 = v83;
  v44 = v18 + 1;
  v12[v18] = v32;
  v37 = v36[3];
  v84 = v37;
  v85 = v36;
  if (v37 <= 0)
  {
    v38 = forceToOrphanParent(v16, &v85, &v84, v8, 0);
    if (v38)
    {
      v21 = v38;
      goto LABEL_65;
    }

    v37 = v84;
  }

  if (v37 == 2 || v37 == cs_orphan_oid)
  {
    goto LABEL_57;
  }

  v40 = directoryStoreWriterGetPath(*(v16 + 6624), v37, &v12[v44]);
  v18 = (v40 + v44);
  if (!v40)
  {
LABEL_51:
    if (v18)
    {
      v41 = 0;
      do
      {
        if (v12[v41] <= 0)
        {
          v68 = __si_assert_copy_extra_661(-1);
          v69 = v68;
          v70 = "";
          if (v68)
          {
            v70 = v68;
          }

          __message_assert("%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", "SIStoring.c", 1407, "newpath[i] > 0", v70, v41, v12[v41], v18);
          free(v69);
          if (__valid_fs(-1))
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

        ++v41;
      }

      while (v18 != v41);
      v44 = v18;
    }

    else
    {
      v44 = 0;
    }

LABEL_57:
    v18 = v44;
    goto LABEL_58;
  }

  v21 = 0;
LABEL_66:
  v29 = v80;
LABEL_67:
  if (v85 != v81)
  {
    free(v85);
  }

  if (v21)
  {
    if (dword_1EBF46ADC >= 5)
    {
      v77 = *__error();
      v78 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v89 = v21;
        *&v89[4] = 2048;
        *&v89[6] = v29;
        *&v89[14] = 2048;
        *&v89[16] = v84;
        _os_log_impl(&dword_1C278D000, v78, OS_LOG_TYPE_DEFAULT, "lookupPathByDBO error: %d oid: %lld  parent: %lld", buf, 0x1Cu);
      }

      LODWORD(v18) = 0;
      *__error() = v77;
    }

    else
    {
      LODWORD(v18) = 0;
    }
  }

  v17 = *v14;
LABEL_73:
  if (v21 | v18)
  {
    if (v21)
    {
      goto LABEL_83;
    }

    goto LABEL_77;
  }

  LODWORD(v18) = 0;
  if (v17[3] == 2)
  {
LABEL_77:
    v23 = *v12;
    goto LABEL_78;
  }

  v21 = 2;
LABEL_83:
  if (!v17[3] && **(v16 + 6592))
  {
    return 89;
  }

  v82 = v18;
  if (!v21)
  {
    goto LABEL_85;
  }

  return v21;
}

uint64_t si_text_store_put(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v34 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(v1);
  if (!Length)
  {
    v17 = *__error();
    v18 = _SILogForLogForCategory(8);
    v19 = 2 * (dword_1EBF46AEC < 4);
    if (!os_log_type_enabled(v18, v19))
    {
LABEL_15:
      *__error() = v17;
      return 4294967274;
    }

    *buf = 0;
    v20 = "Could not get string length";
    v21 = buf;
LABEL_14:
    _os_log_impl(&dword_1C278D000, v18, v19, v20, v21, 2u);
    goto LABEL_15;
  }

  v8 = Length;
  usedBufLen = 0;
  bzero(buf, 0x10000uLL);
  CStringPtr = CFStringGetCStringPtr(v2, 0x8000100u);
  if (!CStringPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v2, 0x600u);
    if (!CStringPtr)
    {
      v11 = ((3 * v8) & 0xFFFFFFFFFFFF0000) != 0;
      if ((3 * v8) < 0x10000)
      {
        v10 = buf;
      }

      else
      {
        v10 = malloc_type_zone_malloc(indexingZone, 3 * v8, 0x99011990uLL);
        if (!v10)
        {
          v17 = *__error();
          v18 = _SILogForLogForCategory(8);
          v19 = 2 * (dword_1EBF46AEC < 4);
          if (!os_log_type_enabled(v18, v19))
          {
            goto LABEL_15;
          }

          LOWORD(v33[0]) = 0;
          v20 = "Could not get string bytes";
          v21 = v33;
          goto LABEL_14;
        }
      }

      v35.location = 0;
      v35.length = v8;
      CFStringGetBytes(v2, v35, 0x8000100u, 0, 0, v10, 3 * v8, &usedBufLen);
      goto LABEL_5;
    }
  }

  v10 = CStringPtr;
  v11 = 0;
  usedBufLen = strlen(CStringPtr);
LABEL_5:
  if (dword_1EBF46AEC >= 5)
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v33[0]) = 68157954;
      DWORD1(v33[0]) = usedBufLen;
      WORD4(v33[0]) = 2080;
      *(v33 + 10) = v10;
      _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "Put document: %.*s", v33, 0x12u);
    }

    *__error() = v24;
  }

  v12 = *(v6 + 1296);
  v13 = usedBufLen;
  memset(v33, 0, sizeof(v33));
  snprintf(v33, 0x200uLL, "doc_store_put_document(%p, %lld)", v12, v4);
  v27[0] = 0;
  v27[1] = 0;
  ScopeLogger::ScopeLogger(v27, v33);
  if (v12)
  {
    if (v13 >= 0x3E9)
    {
      v14 = *__error();
      v15 = _SILogForLogForCategory(8);
      v16 = 2 * (dword_1EBF46AEC < 4);
      if (os_log_type_enabled(v15, v16))
      {
        v29 = 134218240;
        v30 = v13;
        v31 = 2048;
        v32 = 1000;
        _os_log_impl(&dword_1C278D000, v15, v16, "Input doc store string length is %zu, trim down to %zu limit", &v29, 0x16u);
      }

      *__error() = v14;
      v13 = 1000;
    }

    DocStore::PutDocument(v12, v4, v10, v13);
  }

  v22 = 4294967282;
  ScopeLogger::~ScopeLogger(v27);
  if (v11)
  {
    free(v10);
  }

  return v22;
}

BOOL shrinkLocalizedField(uint64_t a1, uint64_t *a2, char *a3)
{
  *v13 = 0;
  *v14 = 0;
  if (db_get_field(*(a1 + 1192), *a2, a3, v14, v13))
  {
    return 0;
  }

  if (*(*v14 + 8) <= 0x1000u || **v14 != 11 || (*(*v14 + 2) & 0x90) != 0x80)
  {
    return db_delete_field(*(a1 + 1192), a2, a3) == 0;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = _decodeSDBField(*(a1 + 1192), *v14, *v13, 0, 0, 0, 0, *MEMORY[0x1E695E480], v6);
  v10 = CFStringCreateWithCString(v8, a3, 0x8000100u);
  v7 = 1;
  setOneLocalizedFieldWithFlags(v11);
  CFRelease(v9);
  CFRelease(v10);
  return v7;
}

uint64_t forceToOrphanParent(unint64_t a1, char **a2, unint64_t *a3, const __CFString *a4, int a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3 - 1 < 2)
  {
    return 22;
  }

  v11 = **a2;
  v12 = *(*a2 + 3);
  cs_orphan_oid = si_get_cs_orphan_oid(a1);
  if (!cs_orphan_oid)
  {
    return 2;
  }

  if (v11 == cs_orphan_oid)
  {
    return 22;
  }

  *a3 = cs_orphan_oid;
  if (v12 != cs_orphan_oid)
  {
    *(*a2 + 3) = cs_orphan_oid;
    v22 = *__error();
    v15 = _SILogForLogForCategory(4);
    v16 = dword_1EBF46ADC < 3;
    if (os_log_type_enabled(v15, (dword_1EBF46ADC < 3)))
    {
      *v26 = 134218752;
      *&v26[4] = v11;
      *&v26[12] = 2048;
      *&v26[14] = v12;
      v27 = 2048;
      v28 = v5;
      v29 = 1024;
      v30 = a5;
      _os_log_impl(&dword_1C278D000, v15, v16, "*warn* forceToOrphanParent oid: %lld dbo parent oid: %lld parent: %lld original: %d", v26, 0x26u);
    }

    *__error() = v22;
    if ((a5 & 1) == 0)
    {
      v17 = *a2;
      v23 = 0;
      si_populategroup(a1, a2, a4, 0, 1, &v24, &v23, &v25);
      cf = decodeDBOToDictionary(*(a1 + 1192), v17, 0, 0x2000, 2, *(a1 + 2028), *(a1 + 2060), 1, 1, *MEMORY[0x1E695E480]);
      *v26 = *a3;
      *&v26[8] = 2;
      LiveIndex = si_getLiveIndex(*(a1 + 1384));
      _CIUpdateContent(LiveIndex, 2, v26, 0, 0, *v17, v23, 0, 0.0, cf, 0, v17 + 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);
      CFRelease(cf);
    }

    db_update_obj(*(a1 + 1192), *a2, 0);
    os_unfair_lock_lock((a1 + 304));
    v20 = *(a1 + 312);
    if (v20)
    {
      pthread_rwlock_wrlock((v20 + 16));
      SIValueSet<unsigned long long>::SIValueSetInsert((v20 + 216), v11);
      pthread_rwlock_unlock((v20 + 16));
    }

    else
    {
      Mutable = RLEOIDArrayCreateMutable(*MEMORY[0x1E695E480]);
      *(a1 + 312) = Mutable;
      pthread_rwlock_wrlock((Mutable + 16));
      SIValueSet<unsigned long long>::SIValueSetInsert((Mutable + 216), v11);
      pthread_rwlock_unlock((Mutable + 16));
      si_enqueue_work(*(a1 + 1064), fixupInflightOrphanItems, a1);
    }

    os_unfair_lock_unlock((a1 + 304));
  }

  return 0;
}

void fixupInflightOrphanItems(unint64_t a1, int a2)
{
  if (!a2)
  {
    os_unfair_lock_lock((a1 + 304));
    v3 = *(a1 + 312);
    if (v3)
    {
      *(a1 + 312) = 0;
      os_unfair_lock_unlock((a1 + 304));
      fixupOrphanArray(a1, v3, 1);

      CFRelease(v3);
    }

    else
    {

      os_unfair_lock_unlock((a1 + 304));
    }
  }
}

int *si_updateIndexForPathRepair(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  if (si_updateIndexForPathRepair_onceToken != -1)
  {
    dispatch_once(&si_updateIndexForPathRepair_onceToken, &__block_literal_global_67_9138);
  }

  result = ContentIndexUpdatePath(a2, *(a3 + 32), v5, a4, 0, 0);
  v11 = atomic_load((a2 + 36));
  if ((v11 & 2) == 0 && (*(a2 + 15203) & 1) == 0 && *(a2 + 15664))
  {

    return _CIFlushCache(a2, 0, lowDiskSpaceCallback, a1, &__block_literal_global_70);
  }

  return result;
}

CFDictionaryRef __si_updateIndexForPathRepair_block_invoke()
{
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  si_updateIndexForPathRepair_emptyDict = result;
  return result;
}

void si_flush_index_ctx_free(uint64_t a1, char a2)
{
  if (a1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      dispatch_resume(v4);
      dispatch_release(*(a1 + 40));
      *(a1 + 40) = 0;
    }

    si_power_info_cleanup(a1 + 48, *a1, a2);
    v5 = *(a1 + 88);
    if (v5)
    {
      si_scheduler_resume_with_token(v5);
    }

    free(a1);
  }
}

uint64_t _si_next_index_id(os_unfair_lock_s *a1, uint64_t a2, int a3, char a4)
{
  v25 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if ((a4 & 1) == 0)
  {
    os_unfair_lock_lock(a1 + 365);
  }

  os_unfair_lock_opaque = a1[364]._os_unfair_lock_opaque;
  if (!a2)
  {
    a1[364]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
    v9 = 1;
    if (!a3)
    {
      goto LABEL_10;
    }

    valuePtr = 1;
LABEL_9:
    v9 = 0;
LABEL_10:
    if (a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (os_unfair_lock_opaque < a2)
  {
    a1[364]._os_unfair_lock_opaque = a2 + 1;
    v9 = 1;
    os_unfair_lock_opaque = a2;
    if (!a3)
    {
      goto LABEL_10;
    }

    valuePtr = 1;
    os_unfair_lock_opaque = a2;
    goto LABEL_9;
  }

  v9 = 1;
  os_unfair_lock_opaque = 1;
  if ((a4 & 1) == 0)
  {
LABEL_11:
    os_unfair_lock_unlock(a1 + 365);
  }

LABEL_12:
  v10 = *__error();
  v11 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[15]._os_unfair_lock_opaque;
    v13 = "yes";
    *buf = 67109890;
    if (v9)
    {
      v13 = "no";
    }

    v18 = v12;
    v19 = 1024;
    v20 = os_unfair_lock_opaque;
    v21 = 1024;
    v22 = a2;
    v23 = 2080;
    v24 = v13;
    _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "index[%u] indexID: %u for %u update: %s", buf, 0x1Eu);
  }

  *__error() = v10;
  if ((v9 & 1) == 0)
  {
    v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    SISetProperty(a1, @"kSINextIndexId", v14);
    CFRelease(v14);
  }

  return os_unfair_lock_opaque;
}

void _swapIndex(uint64_t *a1, int a2)
{
  *&v126[268] = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(10);
  v6 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_1C278D000, v5, v6, "_swapIndex %p\n", buf, 0xCu);
  }

  *__error() = v4;
  if (a2 || (v7 = *a1, (*(*a1 + 6944) & 1) != 0) || *(v7 + 6960) > 0)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(10);
    v10 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(*a1 + 6944);
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&dword_1C278D000, v9, v10, "Skipped swapindex %d\n", buf, 8u);
    }

    *__error() = v8;
LABEL_9:
    v12 = a2 != 0;
    v13 = a1;
    goto LABEL_10;
  }

  v14 = *(v7 + 1392);
  _checkIndexSetValidity(*(v7 + 1384));
  _checkIndexSetValidity(*(v7 + 1392));
  *(a1 + 80) = 0;
  v15 = *(v14 + 8);
  if (v15 <= 0x2D)
  {
    v20 = (v7 + 1384);
    if (!v15)
    {
      goto LABEL_28;
    }

    v21 = 0;
    v22 = a1[1];
    while (1)
    {
      v23 = *(*v14 + 8 * v21);
      if (v22 == v23)
      {
        break;
      }

      if (v15 == ++v21)
      {
        goto LABEL_28;
      }
    }

    if (*(v23 + 56) == *(a1 + 5) && (v24 = atomic_load((v22 + 36)), (v24 & 3) == 0) && (*(v22 + 15203) & 1) == 0)
    {
      v29 = "%d.";
      v98 = 1;
      v30 = (v7 + 1392);
    }

    else
    {
LABEL_28:
      v14 = *v20;
      v25 = (*v20)[2];
      if (!v25)
      {
        goto LABEL_36;
      }

      v21 = 0;
      v26 = a1[1];
      while (1)
      {
        v27 = *(*v14 + 8 * v21);
        if (v26 == v27)
        {
          break;
        }

        if (v25 == ++v21)
        {
          goto LABEL_36;
        }
      }

      if (*(v27 + 56) != *(a1 + 5) || (v28 = atomic_load((v26 + 36)), (v28 & 3) != 0) || (*(v26 + 15203) & 1) != 0)
      {
LABEL_36:
        v13 = a1;
        v12 = 0;
        goto LABEL_10;
      }

      v98 = 0;
      *(a1 + 80) = 1;
      v29 = "live.%d.";
      v30 = (v7 + 1384);
    }

    v106 = 0;
    v99 = 0;
    if (fd_setDir(*(*a1 + 32), &v106))
    {
      v101 = v29;
      v95 = v30;
      v31 = ((*(v7 + 828) & 1) << 6) ^ 0x50;
      if (*(v7 + 2072))
      {
        v31 |= 0x100u;
      }

      if (*(v7 + 2073))
      {
        v31 |= 0x400u;
      }

      v100 = (*(v7 + 6584) >> 7) & 0x8000 | (*(v7 + 6584) >> 13) & 0x800 | v31;
      v32 = *MEMORY[0x1E695E480];
      v33 = *(v7 + 2400);
      *(v7 + 2400) = v33 + 1;
      v96 = CFStringCreateWithFormat(v32, 0, @"tmp.%ld.", v33);
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 0x40000000;
      v105[2] = ___swapIndex_block_invoke;
      v105[3] = &__block_descriptor_tmp_82;
      v105[4] = v7;
      v34 = *(v7 + 32);
      v35 = *(*v14 + 8 * v21);
      v36 = *(v35 + 68);
      v37 = *(v35 + 80);
      if (v36 >= 2)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0;
      }

      v39 = *(v35 + 40);
      v40 = *(a1 + 80);
      v41 = *(v7 + 1284);
      v42 = *(v7 + 1192);
      if (v42)
      {
        v92 = *(v7 + 1284);
        v93 = *(v35 + 40);
        v43 = *(a1 + 80);
        v90 = v38;
        v91 = *(v35 + 80);
        vector_store = db_get_vector_store(v42);
        v38 = v90;
        v37 = v91;
        v41 = v92;
        v39 = v93;
        v40 = v43;
        v45 = vector_store;
      }

      else
      {
        v45 = 0;
      }

      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 0x40000000;
      v104[2] = ___swapIndex_block_invoke_2;
      v104[3] = &__block_descriptor_tmp_84_9158;
      v104[4] = a1;
      New = ContentIndexCreateNew(v34, v96, v37 + v38, v39, v100 ^ 0x8000u, v40, v41, v45, v104, v105, *(v7 + 60));
      CFRelease(v96);
      v47 = a1[1];
      *(a1 + 82) = v47 != si_getLiveIndex(*(*a1 + 1384));
      v99 = New != 0;
      if (New)
      {
        SIActivityJournalNewLiveIndex((v7 + 2192), *(New + 56), *(New + 80));
        v48 = *(*v14 + 8 * v21);
        v49 = v48[17];
        if (v49 < 2)
        {
          v49 = 0;
        }

        _ContentIndexSetPayloadMaxCount(v48, v48[20] + v49, 3027);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 0x40000000;
        aBlock[2] = ___swapIndex_block_invoke_3;
        aBlock[3] = &__block_descriptor_tmp_86;
        aBlock[4] = v7;
        aBlock[5] = New;
        ContentIndexSetDirtyCallback(New, aBlock);
        *(New + 15201) = 4;
        v125 = 0;
        v123 = 0u;
        v124 = 0u;
        memset(buf, 0, sizeof(buf));
        v102 = 0;
        ContentIndexSyncIndex(New, buf, &v102);
        v94 = v21;
        v97 = New;
        ContentIndexSetEmergency(New, *(*(*v14 + 8 * v21) + 44));
        v50 = ContentIndexListClone(v14);
        v51 = v50;
        v52 = v50[3];
        if (v52 <= v50[2])
        {
          v53 = 2 * v52;
          v50[3] = v53;
          *v50 = malloc_type_realloc(*v50, 8 * v53, 0x2004093837F09uLL);
        }

        v54 = v98 ^ 1;
        if (!v21)
        {
          v54 = 1;
        }

        if ((v54 & 1) == 0)
        {
          v55 = 0;
          while (1)
          {
            v56 = *(*v51 + v55);
            v57 = atomic_load((v56 + 36));
            if ((v57 & 3) == 0 && (*(v56 + 15203) & 1) == 0)
            {
              break;
            }

            v55 += 8;
            if (8 * v21 == v55)
            {
              goto LABEL_62;
            }
          }

          v80 = __si_assert_copy_extra_661(-1);
          v81 = v80;
          v82 = "";
          if (v80)
          {
            v82 = v80;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3043, "!ContentIndexWritable(indexSet->index[i])", v82);
LABEL_88:
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

LABEL_62:
        v58 = (v21 + 1);
        bzero(&buf[8], 0x208uLL);
        *buf = 0x6D6F76650A00;
        *&buf[8] = 2;
        buf[12] = *(a1 + 80);
        *&buf[16] = v58;
        v60 = v51[2];
        *&buf[20] = v60;
        *&buf[24] = v60;
        if (v58 < v60)
        {
          v61 = v60;
          do
          {
            *(*v51 + 8 * v61) = *(*v51 + 8 * v61 - 8);
            --v61;
          }

          while (v61 > v58);
        }

        *(*v51 + 8 * v58) = v97;
        v51[2] = v60 + 1;
        v62 = v51[4];
        if (v62 != -1 && v62 >= v21)
        {
          v51[4] = v62 + 1;
        }

        si_clone_index_metadata_to_inflight(v59);
        __strlcpy_chk(v126, (v97 + 15208), 255, 255);
        v64 = si_openat_protected(*(v7 + 32), "tmp.movePlan", 1538, 3);
        pwrite(v64, buf, 0x210uLL, 0);
        fcntl(v64, 85);
        v65 = v51[2];
        if (v58 < v65)
        {
          v66 = v65 - 1;
          if (v66 > v58)
          {
            v67 = 8 * (v65 - 1);
            do
            {
              *&buf[24] = v66;
              pwrite(v64, buf, 0x210uLL, 0);
              fcntl(v64, 85);
              v120 = 0u;
              memset(v121, 0, sizeof(v121));
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
              __str = 0u;
              v68 = fmtcheck(v101, "%i");
              snprintf(&__str, 0xFFuLL, v68, v66);
              ContentIndexChangePrefix(v69);
              v66 = (v66 - 1);
              v67 -= 8;
            }

            while (v58 < v66);
          }
        }

        *&buf[28] = 1;
        pwrite(v64, buf, 0x210uLL, 0);
        fcntl(v64, 85);
        v120 = 0u;
        memset(v121, 0, sizeof(v121));
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
        __str = 0u;
        v70 = fmtcheck(v101, "%i");
        snprintf(&__str, 0xFFuLL, v70, v58);
        ContentIndexChangePrefix(v71);
        unlinkat(*(v7 + 32), "tmp.movePlan", 2048);
        close(v64);
        if (*(*v51 + 8 * v94) != a1[1])
        {
          v84 = __si_assert_copy_extra_661(-1);
          v81 = v84;
          v85 = "";
          if (v84)
          {
            v85 = v84;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3111, "indexSet->index[spot-1]==ctx->idx", v85);
          goto LABEL_88;
        }

        _checkIndexSetValidity(v51);
        v72 = v14;
        atomic_compare_exchange_strong(v95, &v72, v51);
        if (v72 != v14)
        {
          v86 = __si_assert_copy_extra_661(*(v7 + 32));
          v87 = v86;
          v88 = "";
          if (v86)
          {
            v88 = v86;
          }

          __message_assert("%s:%u: failed assertion '%s' %s This should be impossible; this thread is supposed to be  suspended when the other thread changes index sets.", "SIStoring.c", 3114, "OSAtomicCompareAndSwapPtrBarrier(oldIndexSet,indexSet,(void* volatile*)indexSetPtr)", v88);
          free(v87);
          if (__valid_fs(*(v7 + 32)))
          {
            v89 = 2989;
          }

          else
          {
            v89 = 3072;
          }

          *v89 = -559038737;
          abort();
        }

        si_cleanup(v7, v14);
        atomic_fetch_add_explicit((v7 + 1400), 1u, memory_order_relaxed);
        _CIDisableUpdates(v73);
        _checkIndexSetValidity(*(v7 + 1384));
        _checkIndexSetValidity(*(v7 + 1392));
        si_write_index_state(v7, 1, 0, v74, v75, v76, v77, v78);
      }

      else
      {
        _checkIndexSetValidity(*v20);
        _checkIndexSetValidity(*(v7 + 1392));
      }

      fd_resetDir(v106);
    }

    si_indexDeleteDeferredItems(v7);
    v79 = a1[11];
    if (v79)
    {
      si_scheduler_resume_with_token(v79);
    }

    a1[11] = 0;
    if (v99)
    {
      _swapIndex1(a1);
      a1 = 0;
    }

    goto LABEL_9;
  }

  v16 = *__error();
  v17 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "_swapIndex";
    *&buf[12] = 1024;
    *&buf[14] = 2961;
    _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Index count too high; ignore split", buf, 0x12u);
  }

  *__error() = v16;
  if (*(v14 + 8) >= 0x30u && (*(v7 + 2434) & 1) == 0)
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "_swapIndex";
      *&buf[12] = 1024;
      *&buf[14] = 2963;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: Index count too high; start merge", buf, 0x12u);
    }

    *__error() = v18;
    _SIIssueMerge(v7, *(a1 + 80));
  }

  v13 = a1;
  v12 = 0;
LABEL_10:
  si_flush_index_ctx_free(v13, v12);
}

void _swapIndex1(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  if ((*(*a1 + 6944) & 1) != 0 || *(v2 + 6960) > 0)
  {
    if (dword_1EBF46AF4 >= 5)
    {
      v13 = *__error();
      v14 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "Skipped flushing\n", v15, 2u);
      }

      *__error() = v13;
    }
  }

  else
  {
    v3 = malloc_type_calloc(1uLL, 0x90uLL, 0x10B00402663C8FFuLL);
    v4 = v3;
    v5 = *(v2 + 2360);
    if (v5)
    {
      v3[2].i64[0] = v5[9].i64[0];
      v3[1] = vextq_s8(*v5, *v5, 8uLL);
    }

    si_indexDeleteDeferredItems(v2);
    *v4 = v2;
    *(v4 + 96) = 1;
    syncIndex(v4, 0);
    if (*(v1 + 82) == 1)
    {
      si_perform_livequeries_bulk_updates(v6);
    }

    if (*(v2 + 2440) != 1 || (v1[10] & 1) == 0)
    {
      if (gSISystemOnBattery == 1 && (v7 = *(v2 + 2360), (v8 = *(v7 + 80)) != 0) && (*(v1 + 83) & 1) == 0)
      {
        v9 = *(v1 + 80);
        v11 = *(v1 + 4);
        v10 = *(v1 + 5);
        v12 = *(v7 + 144);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v16[2] = ___swapIndex1_block_invoke;
        v16[3] = &__block_descriptor_tmp_165;
        v20 = v9;
        v18 = v10;
        v19 = v11;
        v17 = *(v1 + 3);
        v8(v12, 0, @"swapIndex", v16);
      }

      else
      {
        si_enqueue_work_with_qos(*(v2 + 1064), 9, _swapIndex2, v1);
        v1 = 0;
      }
    }
  }

  si_flush_index_ctx_free(v1, 0);
}

void ___swapIndex1_block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSObject *a5)
{
  if (a2)
  {
    v10 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
    v10[5] = *(a1 + 48);
    *(v10 + 80) = *(a1 + 56);
    v10[4] = *(a1 + 52);
    *v10 = a2;
    *(v10 + 3) = *(a1 + 32);
    *(v10 + 4) = *(a1 + 40);
    *(v10 + 81) = 0;
    si_power_info_init((v10 + 12), a3, a4, a5);
    v11 = *(a2 + 1064);

    si_enqueue_work_with_qos(v11, 9, _swapIndex2, v10);
  }
}

void _swapIndex2(_DWORD *a1, int a2)
{
  if (a2 || (v4 = *a1, (*(*a1 + 6944) & 1) != 0) || *(v4 + 6960) > 0)
  {
    if (dword_1EBF46AF4 >= 5)
    {
      v26 = *__error();
      v27 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "Skipped compacting\n", &buf, 2u);
      }

      *__error() = v26;
    }

    goto LABEL_5;
  }

  v7 = time(0);
  v8 = a1[5];
  if (v8)
  {
    v9 = *a1;
    v10 = *(*a1 + 1392);
    v11 = *(v10 + 8);
    if (v11)
    {
      v12 = v7;
      v13 = 0;
      v14 = (v9 + 1392);
      v15 = *v10;
      v16 = "%d.";
      do
      {
        if (*(*(v15 + 8 * v13) + 56) == v8)
        {
          v17 = 1;
          goto LABEL_18;
        }

        ++v13;
      }

      while (v11 != v13);
      v13 = 0;
      v14 = (v9 + 1384);
      v15 = *v10;
      v16 = "live.%d.";
      while (*(*(v15 + 8 * v13) + 56) != v8)
      {
        if (v11 == ++v13)
        {
          goto LABEL_32;
        }
      }

      v17 = 0;
LABEL_18:
      v18 = *(a1 + 1);
      if (v18 == *(v15 + 8 * v13) && *(v18 + 56) == v8)
      {
        v52 = 0;
        if ((fd_setDir(*(v9 + 32), &v52) & 1) == 0)
        {
LABEL_5:
          v5 = a2 != 0;
          v6 = a1;
LABEL_6:
          si_flush_index_ctx_free(v6, v5);
          return;
        }

        values = *(*(a1 + 1) + 56);
        v19 = CFSetCreate(*MEMORY[0x1E695E480], &values, 1, 0);
        setUpOverlay(*a1, v19);
        CFRelease(v19);
        v50 = 0;
        if (gSISystemOnBattery == 1 && (*(v4 + 6587) & 1) != 0)
        {
          goto LABEL_45;
        }

        disableProcMon();
        v20 = *(a1 + 1);
        v21 = (*(*a1 + 6584) >> 4) & 1;
        *&buf = si_compact_lock;
        *(&buf + 1) = si_compact_unlock;
        v54 = si_compact_should_cancel;
        v55 = v4;
        v22 = _CICompact(v20, &buf, v21, &v50);
        enableProcMon();
        v23 = a1[5];
        if (!v23)
        {
          goto LABEL_44;
        }

        v10 = *v14;
        v24 = *(*v14 + 8);
        if (!v24)
        {
          goto LABEL_44;
        }

        v13 = 0;
        v25 = *v10;
        v16 = "%d.";
        do
        {
          if (*(*(v25 + 8 * v13) + 56) == v23)
          {
            v17 = 1;
            goto LABEL_39;
          }

          ++v13;
        }

        while (v24 != v13);
        v13 = 0;
        v25 = *v10;
        v16 = "live.%d.";
        while (*(*(v25 + 8 * v13) + 56) != v23)
        {
          if (v24 == ++v13)
          {
            goto LABEL_44;
          }
        }

LABEL_39:
        v28 = *(a1 + 1);
        if (v28 != *(v25 + 8 * v13) || *(v28 + 56) != v23)
        {
LABEL_44:
          v6 = a1;
          v5 = 0;
          goto LABEL_6;
        }

        if (!v22)
        {
LABEL_45:
          v29 = 0;
        }

        else
        {
          if (v50 == 1)
          {
            si_recycleForBadIndex(*a1, v28, "compact err");
LABEL_70:
            fd_resetDir(v52);
            goto LABEL_5;
          }

          v29 = 1;
        }

        disableProcMon();
        mergeOverlay(*a1, 0);
        enableProcMon();
        v30 = count_IndexSet(v10, v13, *(*(a1 + 1) + 52));
        v31 = v30;
        if (v30 <= 5 && (v30 < 3 || (gSISystemOnBattery & 1) != 0))
        {
          if (((v29 | v17) & 1) == 0)
          {
            v47 = *(a1 + 1);
            v48 = atomic_load((v47 + 16));
            if (*(v47 + 68) / 0xAu < v48)
            {
              v49 = si_mergeOneIndex(*a1, *(a1 + 1));
              *(a1 + 1) = v49;
              if (v49)
              {
                a1[5] = *(v49 + 56);
              }
            }
          }
        }

        else
        {
          v32 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
          v33 = *a1;
          *v32 = *a1;
          v34 = (v13 - v31 + 1);
          v32[2] = *(*(*v10 + 8 * v34) + 56);
          v32[3] = v31;
          *(v32 + 1042) = 0;
          v32[274] = 3;
          *(v32 + 1100) = *(a1 + 81);
          *(v32 + 138) = v12;
          v35 = v32;
          *(v32 + 131) = "void _swapIndex2(struct flush_index_ctx *, Boolean)";
          if (v31 > 0xA || *(v10 + 8) > 0x14u || *(a1 + 5))
          {
            v36 = *(a1 + 5);
            if (!v36)
            {
              v36 = copyHoldQueue(v33);
            }

            *(v35 + 1056) = v36;
            *(a1 + 5) = 0;
          }

          v37 = 0;
          v38 = 0;
          v39 = *(a1 + 4);
          *(v35 + 1064) = *(a1 + 3);
          *(v35 + 1080) = v39;
          a1[12] = 0;
          v40 = v13;
          *(a1 + 8) = 0;
          *(a1 + 9) = 0;
          *(a1 + 7) = 0;
          v41 = *v10;
          if (v13 <= v34)
          {
            v40 = (v13 - v31 + 1);
          }

          v42 = v40 + 1;
          do
          {
            v43 = *(v41 + 8 * v34);
            v44 = atomic_load((v43 + 16));
            v37 += v44;
            LODWORD(v44) = *(v43 + 68);
            v45 = *(v43 + 80);
            if (v44 >= 2)
            {
              v44 = v44;
            }

            else
            {
              v44 = 0;
            }

            v41 = *v10;
            v38 = v45 + v38 + v44 - *(*(*v10 + 8 * v34++) + 80);
          }

          while (v42 != v34);
          *(v35 + 16) = v17 ^ 1;
          if (v38 < 4 * v37)
          {
            v46 = v17 ^ 1;
          }

          else
          {
            v46 = 0;
          }

          *(v35 + 1041) = v46;
          __strlcpy_chk(v35 + 17, v16, 1024, 1024);
          si_power_info_assert_power(v35 + 1064, v4);
          si_enqueue_work_with_qos(*(*a1 + 1064), 9, si_mergeIndex, v35);
        }

        goto LABEL_70;
      }
    }
  }

LABEL_32:

  si_flush_index_ctx_free(a1, 0);
}

uint64_t count_IndexSet(uint64_t a1, unsigned int a2, int a3)
{
  if (*(a1 + 8) <= a2)
  {
    v8 = __si_assert_copy_extra_661(-1);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3372, "startIndex < indexSet->indexCount", v10);
LABEL_18:
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

  v3 = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v4 = a2;
    while (v4 != *(a1 + 16))
    {
      v5 = *(*a1 + 8 * v4);
      if (*(v5 + 52) > a3)
      {
        break;
      }

      v6 = atomic_load((v5 + 36));
      if ((v6 & 3) == 0 && *(v5 + 15203) != 1)
      {
        break;
      }

      v3 = (v3 + 1);
      --v4;
      if (a2 + 1 == v3)
      {
        v3 = a2 + 1;
        break;
      }
    }

    if (*(a1 + 8) < v3)
    {
      v11 = __si_assert_copy_extra_661(-1);
      v9 = v11;
      v12 = "";
      if (v11)
      {
        v12 = v11;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3378, "indexSet->indexCount >= j", v12);
      goto LABEL_18;
    }
  }

  return v3;
}

void si_forceSplitIndex(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 1384);
  v4 = *(v3 + 8);
  if (v4 < 0x1F)
  {
    if (v4 >= 0xB)
    {
      v5 = *v3;
      v6 = *(v3 + 8);
      while (*(a1 + 8) != *v5)
      {
        ++v5;
        if (!--v6)
        {
          goto LABEL_32;
        }
      }

      v7 = 0;
      v8 = 8 * v4 - 8;
      while (1)
      {
        v9 = atomic_load((*(*v3 + v8) + 36));
        if ((v9 & 4) != 0)
        {
          break;
        }

        ++v7;
        v8 -= 8;
        if (v4 == v7)
        {
          v7 = *(v3 + 8);
          break;
        }
      }

      v10 = *(v3 + 8);
      if (v10 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = *v3 + 8 * v10 - 8;
        while (*(*v12 + 52) <= 2)
        {
          ++v11;
          v12 -= 8;
          if (v10 == v11)
          {
            v11 = v10;
            break;
          }
        }
      }

      if ((v7 > 0xA || v11 >= 0xB) && (*(*a1 + 2440) & 1) == 0)
      {
        *(a1 + 83) = 1;
      }

      if ((v7 > 9 || v11 >= 0xB) && (v13 = *a1, (*(*a1 + 2440) & 1) == 0) && gSISystemOnBattery != 1 || (v7 > 0x13 || v11 >= 0x15) && (v13 = *a1, (*(*a1 + 2440) & 1) == 0))
      {
        *(a1 + 40) = copyHoldQueue(v13);
      }
    }

LABEL_32:
    *(*(a1 + 8) + 15200) |= 4u;
    if (!*(a1 + 72) && !*(a1 + 48))
    {
      v16 = v2[295];
      if (v16)
      {
        v17 = *(v16 + 64);
        if (v17)
        {
          *(a1 + 48) = v17(*(v16 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SIStoring.c", 3213, "void si_forceSplitIndex(struct flush_index_ctx *)");
        }
      }
    }

    if (*(a1 + 88))
    {
      v18 = __si_assert_copy_extra_661(-1);
      v19 = v18;
      v20 = "";
      if (v18)
      {
        v20 = v18;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3215, "ctx->suspend_token == 0", v20);
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

    v14 = v2[109];
    v15 = v2[130];

    si_scheduler_async_suspend_and_enqueue(v14, v15, _swapIndex, a1, (a1 + 88));
  }

  else
  {

    si_flush_index_ctx_free(a1, 0);
  }
}

void _flushCache(uint64_t *a1, int a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  if (v4)
  {
    dispatch_resume(v4);
    dispatch_release(a1[5]);
    a1[5] = 0;
  }

  v60 = MEMORY[0x1E69E9820];
  v61 = 0x40000000;
  v62 = ___flushCache_block_invoke;
  v63 = &__block_descriptor_tmp_94;
  v64 = a1;
  if (a2)
  {
    if (dword_1EBF46ADC >= 5)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "Skipped flushing", &buf, 2u);
      }

      *__error() = v5;
    }

    goto LABEL_61;
  }

  v7 = os_transaction_create();
  v8 = *a1;
  v9 = atomic_load((*a1 + 1448));
  if ((v9 & 2) == 0)
  {
    if (dword_1EBF46ADC >= 5)
    {
      v10 = *__error();
      v11 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        v12 = "Skipped flush";
LABEL_94:
        _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, v12, &buf, 2u);
        goto LABEL_95;
      }

      goto LABEL_95;
    }

    goto LABEL_60;
  }

  if (dword_1EBF46ADC >= 5)
  {
    v55 = *__error();
    v56 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "Starting flush", &buf, 2u);
    }

    *__error() = v55;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v14 = a1[1];
  v15 = atomic_load((v14 + 36));
  if ((v15 & 3) != 0 || (*(v14 + 15203) & 1) != 0 || *(a1[1] + 56) != *(a1 + 5))
  {
    v62(&v60);
    v21 = 0;
    goto LABEL_24;
  }

  buf.f_bsize = 0;
  if ((fd_setDir(*(*a1 + 32), &buf) & 1) == 0)
  {
    v19 = 0xFFFFFFFFLL;
LABEL_63:
    if ((atomic_load_explicit((v8 + 2439), memory_order_acquire) & 1) == 0)
    {
      if (SIIsAppleInternal_onceToken != -1)
      {
        dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
      }

      if (SIIsAppleInternal_internal)
      {
        if (!atomic_fetch_add_explicit(&_flushCache__crashCount, 1u, memory_order_relaxed))
        {
          v48 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"_flushCache, error:%d", v19, v60, v61);
          getpid();
          SISimulateCrashForPid(0, v48);
          if (v48)
          {
            CFRelease(v48);
          }
        }
      }
    }

    v49 = 2;
    goto LABEL_71;
  }

  v16 = *a1;
  v17 = *(*a1 + 2360);
  if (v17)
  {
    v18 = v17[6];
    if (v18)
    {
      v18(v17[18]);
      v16 = *a1;
    }

    v19 = _CIFlushCache(a1[1], 0, lowDiskSpaceCallback, v16, &v60);
    v20 = v17[7];
    if (v20)
    {
      v20(v17[18]);
    }
  }

  else
  {
    v19 = _CIFlushCache(a1[1], 0, lowDiskSpaceCallback, v16, &v60);
  }

  f_bsize = buf.f_bsize;
  MEMORY[0x1C6921200](buf.f_bsize);
  if ((f_bsize & 0x80000000) == 0)
  {
    close(f_bsize);
  }

  if (v19 < 2)
  {
    v21 = *(a1[1] + 15200);
LABEL_24:
    if (dword_1EBF46ADC >= 5)
    {
      v58 = *__error();
      v59 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&dword_1C278D000, v59, OS_LOG_TYPE_DEFAULT, "Completed index flush", &buf, 2u);
      }

      *__error() = v58;
      if ((v21 & 4) == 0)
      {
LABEL_26:
        v22 = CFAbsoluteTimeGetCurrent() - Current;
        if (*(v8 + 6587))
        {
          v23 = v22 > 4.0;
        }

        else
        {
          v23 = v22 > 10.0;
        }

        if (v23)
        {
          v24 = *__error();
          v25 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 134217984;
            *&buf.f_iosize = v22;
            _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "Merge slow at %f", &buf, 0xCu);
          }

          *__error() = v24;
        }

        if ((v21 & 2) != 0)
        {
          goto LABEL_55;
        }

        v26 = ContentIndexCalculateSize(a1[1], 0);
        v27 = v26;
        if (v26 >= 0x4000001)
        {
          v28 = *__error();
          v29 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 134217984;
            *&buf.f_iosize = v27;
            _os_log_impl(&dword_1C278D000, v29, OS_LOG_TYPE_DEFAULT, "force split; index size %lld", &buf, 0xCu);
          }

          *__error() = v28;
          goto LABEL_54;
        }

        if (v26 <= 0x80000)
        {
          goto LABEL_47;
        }

        v30 = a1[1];
        v31 = atomic_load((v30 + 16));
        v32 = 5 * v31;
        v33 = *(v30 + 68);
        if (v33 < 2)
        {
          v33 = 0;
        }

        if (v32 <= 4 * v33)
        {
LABEL_47:
          v44 = *a1;
          if (v26 <= 0x80000uLL >> *(*a1 + 2464))
          {
            goto LABEL_55;
          }

          bzero(&buf, 0x878uLL);
          if (fstatfs(*(v44 + 32), &buf) || buf.f_bfree * buf.f_bsize >= v27)
          {
            goto LABEL_55;
          }

          v34 = *__error();
          v45 = _SILogForLogForCategory(4);
          v46 = 2 * (dword_1EBF46ADC < 4);
          if (!os_log_type_enabled(v45, v46))
          {
            goto LABEL_53;
          }

          *v65 = 134218240;
          v66 = buf.f_bfree * buf.f_bsize;
          v67 = 2048;
          v68 = v27;
          v39 = "force split; disk free %lld less than index size %lld";
          p_buf = v65;
          v41 = v45;
          v42 = v46;
          v43 = 22;
        }

        else
        {
          v34 = *__error();
          v35 = _SILogForLogForCategory(4);
          v36 = 2 * (dword_1EBF46ADC < 4);
          if (!os_log_type_enabled(v35, v36))
          {
LABEL_53:
            *__error() = v34;
LABEL_54:
            v21 = 2;
LABEL_55:
            v47 = atomic_load((*a1 + 6888));
            if (v47 || (v21 & 2) == 0 || (*(v8 + 6944) & 1) != 0 || *(v8 + 6960) > 0)
            {
              if (dword_1EBF46ADC >= 5)
              {
                v10 = *__error();
                v11 = _SILogForLogForCategory(4);
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.f_bsize) = 0;
                  v12 = "Finished flush";
                  goto LABEL_94;
                }

LABEL_95:
                *__error() = v10;
              }

LABEL_60:
              os_release(v7);
LABEL_61:
              si_flush_index_ctx_free(a1, a2 != 0);
              return;
            }

            v52 = *__error();
            v53 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              buf.f_bsize = 134218240;
              *&buf.f_iosize = v22;
              WORD2(buf.f_blocks) = 1024;
              *(&buf.f_blocks + 6) = v21;
              _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "Flush took %f seconds, split state %d\n", &buf, 0x12u);
            }

            *__error() = v52;
            si_forceSplitIndex(a1);
            goto LABEL_91;
          }

          v38 = a1[1];
          v37 = atomic_load((v38 + 16));
          LODWORD(v38) = *(v38 + 68);
          if (v38 >= 2)
          {
            v38 = v38;
          }

          else
          {
            v38 = 0;
          }

          buf.f_bsize = 134218496;
          *&buf.f_iosize = v27;
          WORD2(buf.f_blocks) = 1024;
          *(&buf.f_blocks + 6) = v37;
          WORD1(buf.f_bfree) = 2048;
          *(&buf.f_bfree + 4) = v38;
          v39 = "force split used:%lld, count:%d, deletes: %ld";
          p_buf = &buf;
          v41 = v35;
          v42 = v36;
          v43 = 28;
        }

        _os_log_impl(&dword_1C278D000, v41, v42, v39, p_buf, v43);
        goto LABEL_53;
      }
    }

    else if ((v21 & 4) == 0)
    {
      goto LABEL_26;
    }

    si_flush_index_ctx_free(a1, 0);
LABEL_91:
    os_release(v7);
    return;
  }

  if (v19 != 28)
  {
    goto LABEL_63;
  }

  v19 = 28;
  v49 = 1;
LABEL_71:
  si_makeUnavailable(v8, v19, v49, 21, "flush cache err");
  si_flush_index_ctx_free(a1, 0);
  os_release(v7);
  v50 = *__error();
  v51 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.f_bsize) = 0;
    _os_log_impl(&dword_1C278D000, v51, OS_LOG_TYPE_DEFAULT, "Failed index flush", &buf, 2u);
  }

  *__error() = v50;
}

void ___flushCache_block_invoke(uint64_t a1)
{
  atomic_fetch_and((**(a1 + 32) + 1448), ~*(*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    si_scheduler_resume_with_token(v2);
    *(*(a1 + 32) + 88) = 0;
  }
}

uint64_t count_IndexSetForWriting(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (v2 <= a2)
  {
    v9 = __si_assert_copy_extra_661(-1);
    v7 = v9;
    v10 = "";
    if (v9)
    {
      v10 = v9;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3360, "startIndex < indexSet->indexCount", v10);
LABEL_16:
    free(v7);
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

  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  result = 0;
  v5 = *a1 + 8 * a2;
  while (!*(*v5 + 52))
  {
    result = (result + 1);
    v5 -= 8;
    if (a2 + 1 == result)
    {
      result = a2 + 1;
      break;
    }
  }

  if (v2 < result)
  {
    v6 = __si_assert_copy_extra_661(-1);
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3365, "indexSet->indexCount >= j", v8);
    goto LABEL_16;
  }

  return result;
}

void transferAttributes(uint64_t *a1, int a2)
{
  v85[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *a1;
    v6 = a1[1];
    v7 = *(*a1 + 1192);
    v82 = 0;
    v83 = 0;
    v8 = a1[2];
    v9 = *__error();
    v10 = _SILogForLogForCategory(4);
    v11 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 134218240;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      _os_log_impl(&dword_1C278D000, v10, v11, "Transfer from %lld to %lld", buf, 0x16u);
    }

    *__error() = v9;
    v12 = *(v5 + 1416);
    v13 = *(v12 + 104);
    if (v13 && !*(v12 + 240))
    {
      v13();
    }

    if (db_get_obj_callback(v7, v6, &v83, 0, si_docIdRewriteCallback, *(v5 + 2368), 0))
    {
      if (dword_1EBF46ADC >= 5)
      {
        v55 = *__error();
        v56 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v6;
          *&buf[12] = 2048;
          *&buf[14] = v8;
          _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "No origin dbo exists for %lld to %lld", buf, 0x16u);
        }

        *__error() = v55;
      }

      v81 = 0;
      if (db_get_obj_callback(v7, v8, &v81, 0, si_docIdRewriteCallback, *(v5 + 2368), 0) == 2)
      {
        if (dword_1EBF46ADC >= 5)
        {
          v15 = *__error();
          v16 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v6;
            *&buf[12] = 2048;
            *&buf[14] = v8;
            _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "No target dbo exists for %lld to %lld", buf, 0x16u);
          }

          *__error() = v15;
        }
      }

      else
      {
        if (dword_1EBF46ADC >= 5)
        {
          v59 = *__error();
          v60 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v6;
            *&buf[12] = 2048;
            *&buf[14] = v8;
            _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, "Target dbo exists for %lld to %lld", buf, 0x16u);
          }

          *__error() = v59;
        }

        si_perform_livequeries_reassignments(v14);
      }

      if (v81)
      {
        free(v81);
      }

      goto LABEL_86;
    }

    db_validate_obj(v7);
    if (dword_1EBF46ADC >= 5)
    {
      v57 = *__error();
      v58 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v6;
        *&buf[12] = 2048;
        *&buf[14] = v8;
        _os_log_impl(&dword_1C278D000, v58, OS_LOG_TYPE_DEFAULT, "Origin exists for %lld to %lld", buf, 0x16u);
      }

      *__error() = v57;
    }

    v77 = v6;
    obj_callback = db_get_obj_callback(v7, v8, &v82, 0, si_docIdRewriteCallback, *(v5 + 2368), 0);
    v18 = MEMORY[0x1E695E480];
    if (obj_callback == 2)
    {
      if (dword_1EBF46ADC >= 5)
      {
        v61 = *__error();
        v62 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v77;
          *&buf[12] = 2048;
          *&buf[14] = v8;
          _os_log_impl(&dword_1C278D000, v62, OS_LOG_TYPE_DEFAULT, "Target does not exists for %lld to %lld", buf, 0x16u);
        }

        *__error() = v61;
      }

      db_delete_obj(v7, v83);
      reassignIndexDocument(v5, *(v83 + 4), *v83, v8);
      v19 = v83;
      *v83 = v8;
      if (db_store_obj(v7, v19, 0))
      {
        deleteIndexDocument(v5, *(v83 + 4));
      }

      v20 = decodeDBOToDictionary(v7, v83, 2048, 4, 0, 0, 0, 0, 0, *v18);
      if (dword_1EBF46ADC >= 5)
      {
        v63 = *__error();
        v64 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v77;
          *&buf[12] = 2048;
          *&buf[14] = v8;
          _os_log_impl(&dword_1C278D000, v64, OS_LOG_TYPE_DEFAULT, "Reassigning %lld to %lld", buf, 0x16u);
        }

        *__error() = v63;
      }

      si_perform_livequeries_reassignments(v21);
      if (CFDictionaryGetCount(v20))
      {
        v22 = a1[4];
        if (v22)
        {
          (a1[3])(v22, v20, v20, 0);
          a1[3] = 0;
        }
      }

      v23 = v20;
LABEL_85:
      CFRelease(v23);
LABEL_86:
      free(v83);
      bumpWorkTime(v5, Current);
      goto LABEL_87;
    }

    if (dword_1EBF46ADC >= 5)
    {
      v65 = *__error();
      v66 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v77;
        *&buf[12] = 2048;
        *&buf[14] = v8;
        _os_log_impl(&dword_1C278D000, v66, OS_LOG_TYPE_DEFAULT, "Target exists for %lld to %lld", buf, 0x16u);
      }

      *__error() = v65;
    }

    v24 = *(v83 + 4);
    v75 = candidateForReimport(v5, &v82);
    if (v75)
    {
      if (dword_1EBF46ADC >= 5)
      {
        v67 = *__error();
        v68 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v77;
          *&buf[12] = 2048;
          *&buf[14] = v8;
          _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "Target needs reimport for %lld to %lld", buf, 0x16u);
        }

        *__error() = v67;
      }

      v24 = *(v82 + 4);
      reassignIndexDocument(v5, *(v83 + 4), *v83, v8);
      v25 = v83;
      *v83 = v8;
      v26 = v82;
      v82 = v25;
      v83 = v26;
      *v26 = v77;
      db_delete_obj(v7, v25);
    }

    else if (dword_1EBF46ADC >= 5)
    {
      v70 = *__error();
      v71 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v77;
        *&buf[12] = 2048;
        *&buf[14] = v8;
        _os_log_impl(&dword_1C278D000, v71, OS_LOG_TYPE_DEFAULT, "Target good for %lld to %lld", buf, 0x16u);
      }

      *__error() = v70;
    }

    v80 = 0;
    v81 = 0;
    field = db_get_field(*(v5 + 1192), v83, "kMDItemLastUsedDate", &v80, &v81);
    v76 = 0;
    allocator = *v18;
    if (!field)
    {
      v76 = _decodeSDBField(*(v5 + 1192), v80, v81, 0, 0, 0, 0, *v18, v28);
    }

    v30 = decodeDBOToDictionary(v7, v83, 2048, 4, 0, 0, 0, 0, 0, allocator);
    Count = CFDictionaryGetCount(v30);
    if ((a1[5] & 1) == 0)
    {
      deleteIndexDocument(v5, v24);
      if (!db_delete_obj(v7, v83))
      {
        *buf = 0;
        v79 = 0;
        v85[0] = *(v5 + 2008);
        if (!db_get_field_by_id(*(v5 + 1192), v83, v85, buf, &v79) && ((*(v5 + 2072) & 1) != 0 || *v79 <= 0x15u))
        {
          v78 = 0;
          LODWORD(v85[0]) = *(v5 + 2012);
          if (!db_get_field_by_id(*(v5 + 1192), v83, v85, buf, &v78))
          {
            pthread_mutex_lock((v5 + 6976));
            *(v5 + 8 * *v79 + 7040) -= *v78;
            pthread_mutex_unlock((v5 + 6976));
          }
        }
      }
    }

    v74 = allocator;
    if (Count || v76)
    {
      v33 = decodeDBOToDictionary(v7, v82, 2048, 4, 0, 0, 0, 0, 0, allocator);
      v34 = v75;
      if ((a1[5] & 1) == 0)
      {
        v36 = v82;
        v82 = db_copy_obj(v82, 1024);
        free(v36);
      }

      *buf = v82;
      *&buf[8] = v33;
      *&buf[16] = v7;
      v35 = v75;
      if (!CFEqual(v33, v30))
      {
        CFDictionaryApplyFunction(v30, attr_tfr_callback, buf);
        v37 = a1[3];
        if (v37)
        {
          v37(a1[4], v33, v30, 0);
          a1[3] = 0;
        }

        v35 = 1;
      }

      v82 = *buf;
    }

    else
    {
      v33 = 0;
      v34 = v75;
      v35 = v75;
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    v38 = v76;
    if (v76)
    {
      if (db_get_field(*(v5 + 1192), v82, "kMDItemLastUsedDate", &v80, &v81))
      {
        v73 = 0;
        v40 = v74;
      }

      else
      {
        v40 = v74;
        v73 = _decodeSDBField(*(v5 + 1192), v80, v81, 0, 0, 0, 0, v74, v39);
      }

      if (!db_get_field(*(v5 + 1192), v83, "kMDItemUsedDates", &v80, &v81))
      {
        v42 = _decodeSDBField(*(v5 + 1192), v80, v81, 0, 0, 0, 0, v40, v41);
        if (v42)
        {
          v43 = v42;
          for (i = 0; CFArrayGetCount(v43) > i; ++i)
          {
            v45 = *(v5 + 1192);
            ValueAtIndex = CFArrayGetValueAtIndex(v43, i);
            markItemAsUsedForField(v45, &v82, "kMDItemLastUsedDate", "kMDItemUsedDates", ValueAtIndex, 1, 1, 0, 0.0);
          }

          CFRelease(v43);
          v38 = v76;
          v34 = v75;
        }
      }

      v47.n128_f64[0] = markItemAsUsedForField(*(v5 + 1192), &v82, "kMDItemLastUsedDate", "kMDItemUsedDates", v38, 1, 1, 0, 0.0);
      if (v73)
      {
        markItemAsUsedForField(*(v5 + 1192), &v82, "kMDItemLastUsedDate", "kMDItemUsedDates", v73, 1, 1, 0, 0.0);
        CFRelease(v73);
      }

      si_perform_livequeries_reassignments(v47);
    }

    else
    {
      si_perform_livequeries_reassignments(v32);
      if ((v35 & 1) == 0)
      {
LABEL_81:
        if (v82)
        {
          free(v82);
        }

        if (!v38)
        {
          goto LABEL_86;
        }

        v23 = v38;
        goto LABEL_85;
      }
    }

    v48 = v82;
    if ((v34 & 1) == 0)
    {
      if ((*(v82 + 4) + 1) >= 2)
      {
        deleteIndexDocument(v5, *(v82 + 4));
        v48 = v82;
      }

      v48[4] = -1;
    }

    v49 = db_store_obj(v7, v48, 8);
    if (v49)
    {
      v50 = v49;
      v51 = *__error();
      v52 = _SILogForLogForCategory(7);
      v53 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v52, v53))
      {
        *buf = 67109120;
        *&buf[4] = v50;
        _os_log_impl(&dword_1C278D000, v52, v53, "Store failed during attribute transfer on safe-save (%d)", buf, 8u);
      }

      *__error() = v51;
    }

    goto LABEL_81;
  }

LABEL_87:
  v54 = a1[3];
  if (v54)
  {
    v54(a1[4], 0, 0, a2 != 0);
  }

  free(a1);
}

uint64_t reassignIndexDocument(uint64_t a1, unint64_t a2, const char *a3, const char *a4)
{
  result = si_indexForDocId(a1, a2);
  if (result)
  {
    v9 = result;
    db_fast_dirty_datastore_if_necessary(*(a1 + 1192));
    v11 = 0;
    result = fd_setDir(*(a1 + 32), &v11);
    if (result)
    {
      _CIReassign(v9, a2, a3, a4);
      v10 = v11;
      result = MEMORY[0x1C6921200](v11);
      if ((v10 & 0x80000000) == 0)
      {
        return close(v10);
      }
    }
  }

  return result;
}

uint64_t deleteIndexDocument(uint64_t a1, unint64_t a2)
{
  result = si_indexForDocId(a1, a2);
  if (result)
  {
    db_fast_dirty_datastore_if_necessary(*(a1 + 1192));
    v6 = 0;
    result = fd_setDir(*(a1 + 32), &v6);
    if (result)
    {
      _CIDelete(v4);
      v5 = v6;
      result = MEMORY[0x1C6921200](v6);
      if ((v5 & 0x80000000) == 0)
      {
        return close(v5);
      }
    }
  }

  return result;
}

void attr_tfr_callback(const __CFString *key, const __CFArray *a2, uint64_t a3)
{
  if (!CFDictionaryContainsKey(*(a3 + 8), key))
  {
    setOneFieldLocked(key, 0, a2, *(a3 + 16), a3, 0x800u, 0, 0);
    v6 = *(a3 + 8);

    CFDictionarySetValue(v6, key, a2);
  }
}

uint64_t si_text_store_delete_by_predicate(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = *__error();
  v4 = _SILogForLogForCategory(8);
  v5 = 2 * (dword_1EBF46AEC < 4);
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v4, v5, "Deleting by predicate", buf, 2u);
  }

  *__error() = v3;
  v6 = *(a1 + 1296);
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
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
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
  *buf = 0u;
  v17 = 0u;
  snprintf(buf, 0x200uLL, "doc_store_delete_documents_by_predicate(%p)", v6);
  v14[0] = 0;
  v14[1] = 0;
  ScopeLogger::ScopeLogger(v14, buf);
  if (v6)
  {
    std::mutex::lock((v6 + 40));
    memset(v15, 0, sizeof(v15));
    v7 = *(v6 + 168);
    *v48 = *(v6 + 160);
    *&v48[8] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      analytics::ScopedLogger<analytics::DeleteEvent>::ScopedLogger(v15, v48);
    }

    analytics::ScopedLogger<analytics::DeleteEvent>::ScopedLogger(v15, v48);
  }

  ScopeLogger::~ScopeLogger(v14);
  v8 = *__error();
  v9 = _SILogForLogForCategory(8);
  v10 = dword_1EBF46AEC < 3;
  if (os_log_type_enabled(v9, (dword_1EBF46AEC < 3)))
  {
    v12 = strerror(14);
    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&dword_1C278D000, v9, v10, "*warn* doc_store_delete_documents_by_predicate(): %s", buf, 0xCu);
  }

  *__error() = v8;
  return 4294967282;
}

void si_text_store_bulk_delete(uint64_t a1, const uint64_t *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  v7 = _SILogForLogForCategory(8);
  v8 = 2 * (dword_1EBF46AEC < 4);
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(&dword_1C278D000, v7, v8, "Deleted %zd documents", buf, 0xCu);
  }

  *__error() = v6;
  v9 = *(a1 + 1296);
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
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
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
  v16 = 0u;
  v17 = 0u;
  memset(buf, 0, sizeof(buf));
  snprintf(buf, 0x200uLL, "doc_store_delete_documents_bulk(%p, %d, ...)", v9, a3);
  v14[0] = 0;
  v14[1] = 0;
  ScopeLogger::ScopeLogger(v14, buf);
  if (v9)
  {
    DocStore::DeleteDocumentsBulk(v9, a3, a2);
  }

  ScopeLogger::~ScopeLogger(v14);
  v10 = *__error();
  v11 = _SILogForLogForCategory(8);
  v12 = dword_1EBF46AEC < 3;
  if (os_log_type_enabled(v11, (dword_1EBF46AEC < 3)))
  {
    v13 = strerror(14);
    *buf = 134218242;
    *&buf[4] = a3;
    *&buf[12] = 2080;
    *&buf[14] = v13;
    _os_log_impl(&dword_1C278D000, v11, v12, "*warn* doc_store_delete_documents_bulk(%zd): %s", buf, 0x16u);
  }

  *__error() = v10;
}

void si_setCacheEntry(void *a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a2 && dword_1EBF46B00 >= 5)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "si_setCacheEntry at qos 0x%x", v6, 8u);
    }

    *__error() = v4;
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

void si_deleteCacheEntry(void *a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a2 && dword_1EBF46B00 >= 5)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "si_deleteCacheEntry at qos 0x%x", v6, 8u);
    }

    *__error() = v4;
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

void si_closeCache(void *a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a2 && dword_1EBF46B00 >= 5)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "si_closeCache at qos 0x%x", v5, 8u);
    }

    *__error() = v3;
  }

  free(a1);
}

int *hot_shard_update_logical_size(uint64_t a1)
{
  v2 = lseek(a1, 0, 2);
  if (v2 < 0)
  {

    return __error();
  }

  else
  {
    v4[0] = &v5;
    v4[1] = 8;
    v5 = v2;
    return pwritevall(a1, v4, 1, 0);
  }
}

uint64_t hot_shard_for_each_region(int a1, uint64_t a2)
{
  if ((lseek(a1, 8, 0) & 0x8000000000000000) == 0)
  {
    operator new[]();
  }

  return -*__error();
}

uint64_t hot_shard_trim(uint64_t a1, off_t *a2, void *a3)
{
  v12 = &v14;
  v13 = 8;
  v14 = 0;
  result = preadvall(a1, &v12, 0);
  if ((result & 0x80000000) == 0)
  {
    memset(&v11, 0, sizeof(v11));
    if (fstat(a1, &v11))
    {
      return -*__error();
    }

    v7 = v14;
    if (v14 >= v11.st_size)
    {
      st_size = v11.st_size;
    }

    else
    {
      st_size = v14;
    }

    v10 = st_size;
    if (v14 < v11.st_size)
    {
      if (ftruncate(a1, st_size))
      {
        return -*__error();
      }

      v7 = v14;
    }

    if (v7 > st_size)
    {
      v12 = &v10;
      v13 = 8;
      if (pwritevall(a1, &v12, 1, 0))
      {
        return -*__error();
      }

      st_size = v10;
    }

    *a2 = st_size;
    *a3 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __hot_shard_trim_block_invoke;
    v9[3] = &__block_descriptor_tmp_2_9282;
    v9[4] = a3;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __hot_shard_iterate_block_invoke;
    v15[3] = &unk_1E8196030;
    v15[4] = v9;
    return hot_shard_for_each_region(a1, v15);
  }

  return result;
}

uint64_t __hot_shard_delete_docs_block_invoke(uint64_t a1, unint64_t a2, int a3, int a4, int a5, off_t a6, unint64_t a7)
{
  v7 = *(a1 + 40);
  if (!*&v7)
  {
    return 0;
  }

  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = a2;
    if (*&v7 <= a2)
    {
      v10 = a2 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & a2;
  }

  v12 = *(*(a1 + 32) + 8 * v10);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (!v13)
  {
    return 0;
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == a2)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v10)
    {
      return 0;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      return 0;
    }
  }

  if (v13[2] != a2)
  {
    goto LABEL_17;
  }

  result = wipe_region(*(a1 + 80), a6, a7);
  if (!result)
  {
    ++**(a1 + 72);
  }

  return result;
}

uint64_t std::unordered_set<long long>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(a1, i[2], i + 2);
  }

  return a1;
}

void std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = a1[1];
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

uint64_t wipe_region(uint64_t __fd, off_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  while (a3)
  {
    v6 = 0;
    v7 = 0;
    v8 = v13 + 1;
    memset(v13, 0, sizeof(v13));
    do
    {
      if (a3 >= 0x100)
      {
        v9 = 256;
      }

      else
      {
        v9 = a3;
      }

      *(v8 - 1) = v14;
      *v8 = v9;
      v7 += v9;
      v10 = v6 + 1;
      a3 -= v9;
      if (!a3)
      {
        break;
      }

      v8 += 2;
    }

    while (v6++ < 0xF);
    result = pwritevall(__fd, v13, v10, a2);
    a2 += v7;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t __hot_shard_delete_docs_by_predicate_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, off_t a6, unint64_t a7)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    result = wipe_region(*(a1 + 48), a6, a7);
    if (!result)
    {
      ++**(a1 + 40);
    }
  }

  return result;
}

CFTypeID __fastFieldFromCFType_block_invoke()
{
  fastFieldFromCFType_sStringTypeID = CFStringGetTypeID();
  fastFieldFromCFType_sNumberTypeID = CFNumberGetTypeID();
  fastFieldFromCFType_sDateTypeID = CFDateGetTypeID();
  fastFieldFromCFType_sBoolTypeID = CFBooleanGetTypeID();
  fastFieldFromCFType_sDataTypeID = CFDataGetTypeID();
  fastFieldFromCFType_sNullTypeID = CFNullGetTypeID();
  result = CFDictionaryGetTypeID();
  fastFieldFromCFType_sDictionaryTypeID = result;
  return result;
}

void si_getCacheFileDescriptors(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2 && *(a1 + 16))
  {
    goto LABEL_19;
  }

  if (dword_1EBF46B00 >= 5)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 67109120;
      LODWORD(v32) = qos_class_self();
      _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "si_getCacheFileDescriptors at qos 0x%x", &v31, 8u);
    }

    *__error() = v29;
  }

  v3 = CFGetTypeID(*(a1 + 16));
  if (v3 == CFArrayGetTypeID() && *(a1 + 8) && (Count = CFArrayGetCount(*(a1 + 16))) != 0)
  {
    v5 = Count;
    v6 = malloc_type_malloc(8 * Count, 0x100004000313F17uLL);
    v7 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
    v8 = 0;
    *v6 = 0;
    do
    {
      v9 = *(a1 + 8);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v8);
      v6[v8++] = si_compute_oid_for_identifier(v9, ValueAtIndex);
    }

    while (v5 != v8);
    v11 = *__error();
    v12 = _SILogForLogForCategory(5);
    v13 = 2 * (dword_1EBF46AE0 < 4);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = CFAbsoluteTimeGetCurrent() - *(a1 + 24);
      v31 = 134217984;
      v32 = v14;
      _os_log_impl(&dword_1C278D000, v12, v13, "Waited %f seconds on scheduler", &v31, 0xCu);
    }

    *__error() = v11;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v5, 0);
    si_textcache_fds_for_oids(*a1, v5, v6, v7, v16);
    v17 = xpc_null_create();
    if (v5 >= 1)
    {
      v18 = v17;
      v19 = v7;
      do
      {
        v21 = *v19++;
        v20 = v21;
        if (v21 < 0 || (v22 = xpc_fd_create(v20), close(v20), !v22))
        {
          v23 = Mutable;
          v24 = v18;
        }

        else
        {
          v23 = Mutable;
          v24 = v22;
        }

        CFArrayAppendValue(v23, v24);
        --v5;
      }

      while (v5);
    }

    (*(*(a1 + 48) + 16))();
    v34.length = CFArrayGetCount(Mutable);
    v34.location = 0;
    CFArrayApplyFunction(Mutable, v34, _fdArrayApplier, 0);
    CFRelease(Mutable);
    free(v6);
    free(v7);
  }

  else
  {
LABEL_19:
    (*(*(a1 + 48) + 16))();
  }

  v25 = *(a1 + 8);
  if (v25)
  {
    CFRelease(v25);
  }

  *(a1 + 8) = 0;
  v26 = *(a1 + 16);
  if (v26)
  {
    CFRelease(v26);
  }

  *(a1 + 16) = 0;
  v27 = *(a1 + 48);
  if (v27)
  {
    CFRelease(v27);
  }

  *(a1 + 48) = 0;
  v28 = *(a1 + 32);
  if (v28)
  {
    CFRelease(v28);
  }

  free(a1);
}

BOOL isContact(int *a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = 0;
  v8[0] = a3;
  v8[1] = 0;
  if (db_get_field_by_id(a1, a2, v8, &v7, &v6))
  {
    return 0;
  }

  if (getFieldAsUInt32(*v7, v6) != 2)
  {
    return 0;
  }

  v8[0] = db_get_id_for_field_locked(a1, "_kMDItemFinderExcluded");
  return !db_get_field_by_id(a1, a2, v8, &v7, &v6) && getFieldAsUInt32(*v7, v6) != 0;
}

uint64_t isReminder(int *a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  v9[0] = a3;
  v9[1] = 0;
  if (db_get_field_by_id(a1, a2, v9, &v8, &v7))
  {
    return 0;
  }

  if (getFieldAsUInt32(*v8, v7) != 6)
  {
    return 0;
  }

  v9[0] = db_get_id_for_field_locked(a1, "_kMDItemFinderExcluded");
  if (db_get_field_by_id(a1, a2, v9, &v8, &v7))
  {
    return 0;
  }

  result = getFieldAsUInt32(*v8, v7);
  if (result)
  {
    v9[0] = db_get_id_for_field_locked(a1, "kMDItemContentType");
    if (db_get_field_by_id(a1, a2, v9, &v8, &v7) || *v8 != 11)
    {
      return 0;
    }

    string_for_id_locked = v7;
    if ((v8[1] & 0x10) != 0)
    {
      string_for_id_locked = db_get_string_for_id_locked(a1, *v7);
    }

    return strcmp("com.apple.ical.ics.todo", string_for_id_locked) == 0;
  }

  return result;
}

BOOL isCalendar(int *a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  v9[0] = a3;
  v9[1] = 0;
  if (db_get_field_by_id(a1, a2, v9, &v8, &v7))
  {
    return 0;
  }

  if (getFieldAsUInt32(*v8, v7) != 6)
  {
    return 0;
  }

  v9[0] = db_get_id_for_field_locked(a1, "_kMDItemFinderExcluded");
  if (db_get_field_by_id(a1, a2, v9, &v8, &v7))
  {
    return 0;
  }

  if (!getFieldAsUInt32(*v8, v7))
  {
    return 1;
  }

  v9[0] = db_get_id_for_field_locked(a1, "kMDItemContentType");
  if (db_get_field_by_id(a1, a2, v9, &v8, &v7) || *v8 != 11)
  {
    return 1;
  }

  string_for_id_locked = v7;
  if ((v8[1] & 0x10) != 0)
  {
    string_for_id_locked = db_get_string_for_id_locked(a1, *v7);
  }

  return strcmp("com.apple.ical.ics.todo", string_for_id_locked) != 0;
}

uint64_t getFieldAsUInt32(unsigned __int16 a1, unsigned __int16 *a2)
{
  if (a1 <= 8u)
  {
    if (((1 << a1) & 0x18) != 0)
    {
      return *a2;
    }

    if (((1 << a1) & 0x60) != 0 || ((1 << a1) & 0x180) != 0)
    {
      return *a2;
    }
  }

  if (a1 - 1 >= 2)
  {
    return 0;
  }

  else
  {
    return *a2;
  }
}

void si_getAttrNamesBulk(uint64_t *a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  if (a2)
  {
    SIResultQueueRelease(a1[3]);
  }

  else
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = _MDPlistBytesCreateMutable();
    v36 = &v34;
    MEMORY[0x1EEE9AC00](v6);
    v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v8, v7);
    bzero(v8, a1[2]);
    _MDPlistBytesBeginPlist();
    _MDPlistBytesBeginArray();
    v10 = *a1;
    v9 = a1[1];
    v11 = a1[2];
    v12 = *(a1 + 48);
    v13 = *(*a1 + 1192);
    v14 = CFSetCreateMutable(v4, 0, 0);
    if (v13)
    {
      v15 = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
      if (v11 < 2)
      {
        v28 = v15;
        v21 = db_obj_iter_create_with_filter(v13, 0, v15, 0, 0, 0, 0, 0, 0);
      }

      else
      {
        v35 = v3;
        v16 = 0;
        v17 = v11 - 1;
        v18 = (v9 + 8);
        v19 = v8 + 1;
        do
        {
          if (!*v19++)
          {
            *(v15 + v16++) = *v18;
          }

          ++v18;
          --v17;
        }

        while (v17);
        v34 = v15;
        v21 = db_obj_iter_create_with_filter(v13, v16, v15, 0, 0, 0, 0, 0, 0);
        if (v16)
        {
          for (i = 0; i != v16; ++i)
          {
            v40 = 0;
            v38 = 0;
            v39 = 0;
            v26 = db_obj_iter_next(v21, &v37, 1, v22, v23, v24);
            if (v26)
            {
              v27 = v26;
              if (((v12 & 4) == 0 || !isContact(v13, v26, *(v10 + 2008))) && ((v12 & 2) == 0 || (isReminder(v13, v27, *(v10 + 2008)) & 1) == 0) && ((v12 & 1) == 0 || !isCalendar(v13, v27, *(v10 + 2008))))
              {
                while (db_next_field(v13, v27, 1, &v40, &v39, &v38) == 35)
                {
                  if ((*(v38 + 2) & 8) == 0 && !CFSetContainsValue(v14, v39))
                  {
                    _MDPlistBytesAddInternedCString();
                    CFSetAddValue(v14, v39);
                  }
                }
              }
            }
          }
        }

        v28 = v34;
        v3 = v35;
      }

      db_obj_iter_release(v21);
      free(v28);
    }

    v29 = 8u;
    do
    {
      _MDPlistBytesAddInternedCString();
      v29 += 8;
    }

    while (v29 != 128);
    if (v14)
    {
      CFRelease(v14);
    }

    _MDPlistBytesEndArray();
    _MDPlistBytesEndPlist();
    v30 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
    v31 = *a1;
    if (!*(*a1 + 1440))
    {
      si_storecookieRef(*a1);
    }

    v30[1] = *(v31 + 1424);
    v32 = a1[4];
    *(v30 + 1) = v32;
    atomic_fetch_add(v32, 1u);
    *v30 = 3;
    *(v30 + 4) = Mutable;
    if (!si_resultqueue_enqueue(v3, v30))
    {
      SIResultBatchFree(v30);
    }

    SIResultQueueRelease(v3);
  }

  v33 = a1[5];
  if (v33)
  {
    CFRelease(v33);
  }

  a1[5] = 0;
  si_release_qid(a1[4]);
  free(a1);
}

void si_getAttrBulk(uint64_t a1, int a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    si_resultqueue_enqueue(*(a1 + 32), -1);
    SIResultQueueRelease(*(a1 + 32));
    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 8) = 0;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v45 = 0;
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(v4 + 120);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 32);
    Mutable = _MDPlistBytesCreateMutable();
    SIFlattenArrayToCStringVector(*(a1 + 8), &v47, &v46, &v45);
    v8 = *(a1 + 8);
    if (v8)
    {
      CFRelease(v8);
    }

    *(a1 + 8) = 0;
    v9 = *__error();
    v10 = _SILogForLogForCategory(5);
    v11 = 2 * (dword_1EBF46AE0 < 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
      *buf = 134217984;
      v49 = v12;
      _os_log_impl(&dword_1C278D000, v10, v11, "Waited %f seconds on scheduler", buf, 0xCu);
    }

    *__error() = v9;
    MEMORY[0x1EEE9AC00](v13);
    v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v15, v14);
    if (*(a1 + 48))
    {
      v16 = geteuid();
      if (v16)
      {
        if (v16 != 308)
        {
          v17 = __si_assert_copy_extra_332();
          v25 = v17;
          v26 = "";
          if (v17)
          {
            v26 = v17;
          }

          __message_assert_336(v17, v18, v19, v20, v21, v22, v23, v24, "SIFetching.c", 1705, "uid != (uid_t)-1 && (uid == 0 || uid == 308)", v26);
          free(v25);
          if (__valid_fs(-1))
          {
            v27 = 2989;
          }

          else
          {
            v27 = 3072;
          }

          *v27 = -559038737;
          abort();
        }
      }
    }

    bzero(v15, *(a1 + 24));
    _MDPlistBytesBeginPlist();
    _MDPlistBytesBeginArray();
    _fillPlistBytes(*a1, Mutable, v47, v45, *(a1 + 16), *(a1 + 24), v15, v5, *(a1 + 48), *(a1 + 64), 0, 0);
    _MDPlistBytesEndArray();
    _MDPlistBytesEndPlist();
    v28 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
    v29 = *a1;
    if (!*(*a1 + 1440))
    {
      si_storecookieRef(*a1);
    }

    v28[1] = *(v29 + 1424);
    v30 = *(a1 + 40);
    *(v28 + 1) = v30;
    atomic_fetch_add(v30, 1u);
    *v28 = 2;
    *(v28 + 4) = Mutable;
    if (!si_resultqueue_enqueue(v6, v28))
    {
      SIResultBatchFree(v28);
    }

    SIResultQueueRelease(v6);
    free(v47);
  }

  if (*(a1 + 48))
  {
    v31 = geteuid();
    if (v31 && v31 != 308)
    {
      v32 = __si_assert_copy_extra_332();
      v40 = v32;
      v41 = "";
      if (v32)
      {
        v41 = v32;
      }

      __message_assert_336(v32, v33, v34, v35, v36, v37, v38, v39, "SIFetching.c", 1754, "uid != (uid_t)-1 && (uid == 0 || uid == 308)", v41);
      free(v40);
      if (__valid_fs(-1))
      {
        v42 = 2989;
      }

      else
      {
        v42 = 3072;
      }

      *v42 = -559038737;
      abort();
    }

    v43 = *(a1 + 48);
    if (v43)
    {
      CFRelease(v43);
      *(a1 + 48) = 0;
    }
  }

  si_release_qid(*(a1 + 40));
  free(a1);
}

void si_getCacheEntry(void *a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a2 && dword_1EBF46B00 >= 5)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "si_getCacheEntry at qos 0x%x", v8, 8u);
    }

    *__error() = v6;
  }

  (*(a1[3] + 16))();
  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[1] = 0;
  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[2] = 0;
  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}