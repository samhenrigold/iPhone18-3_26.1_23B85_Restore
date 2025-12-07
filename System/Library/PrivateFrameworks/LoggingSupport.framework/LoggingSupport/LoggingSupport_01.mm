uint64_t _chunk_print_uuid(uint64_t a1, unsigned __int8 *uu)
{
  v6 = *MEMORY[0x277D85DE8];
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v3;
  *&out[16] = v3;
  uuid_unparse(uu, out);
  return printf("[%03llu] %s\n", a1, out);
}

__n128 __catalog_chunk_unparse_uuid_block_invoke(uint64_t a1, __n128 *a2, unsigned __int16 a3)
{
  result = *a2;
  *(**(a1 + 32) + 16 * a3) = *a2;
  return result;
}

char *__catalog_chunk_unparse_subsystem_block_invoke(uint64_t a1, const char *a2, unsigned __int16 a3)
{
  if (a3 >= *(*(a1 + 32) + 32))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v4 = (**(a1 + 40) + a3);

    return strcpy(v4, a2);
  }

  return result;
}

void __catalog_chunk_unparse_procinfo_block_invoke(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = _os_trace_uuid_map_lookup(*(a1[4] + 16), (a2 + 24));
  if (v4 >= 0x10000)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  if (uuid_is_null((a2 + 40)))
  {
    LOWORD(v6) = -1;
    goto LABEL_5;
  }

  v6 = _os_trace_uuid_map_lookup(*(a1[4] + 16), (a2 + 40));
  if (v6 >= 0x10000)
  {
LABEL_11:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

LABEL_5:
  v7 = a1[5];
  v8 = *v7;
  v9 = *(a2 + 8);
  v10 = *(a2 + 4);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  *v8 = *a2;
  *(v8 + 4) = v5;
  *(v8 + 6) = v6;
  *(v8 + 8) = v9;
  *(v8 + 16) = v11;
  *(v8 + 20) = v10;
  *(v8 + 24) = v12;
  *v7 = v8 + 32;
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[4];
  v16 = *v13;
  if ((v14 - *v13) >= 8)
  {
    *v16 = *(*(a2 + 56) + 4);
    *v13 = v16 + 1;
    v17 = *(a2 + 56);
    v21 = MEMORY[0x277D85DD0];
    v22 = 0x40000000;
    v23 = __catalog_chunk_unparse_procinfo_uuidinfo_block_invoke;
    v24 = &__block_descriptor_tmp_80;
    v25 = v15;
    v26 = v13;
    hashtable_iterate(v17, &v21);
    v13 = a1[5];
    v14 = a1[6];
    v15 = a1[4];
  }

  v18 = *v13;
  if ((v14 - *v13) >= 8)
  {
    *v18 = *(*(a2 + 64) + 4);
    *v13 = v18 + 1;
    v19 = *(a2 + 64);
    v21 = MEMORY[0x277D85DD0];
    v22 = 0x40000000;
    v23 = __catalog_chunk_unparse_procinfo_subsystem_block_invoke;
    v24 = &__block_descriptor_tmp_81;
    v25 = v13;
    v26 = v15;
    hashtable_iterate(v19, &v21);
    v13 = a1[5];
  }

  v20 = ((*v13 + 7) & 0xFFFFFFFFFFFFFFF8) - *v13;
  bzero(*v13, v20);
  *a1[5] += v20;
}

uint64_t __catalog_chunk_unparse_subchunk_procinfos_block_invoke(uint64_t result, _WORD *a2)
{
  v2 = *(result + 32);
  v3 = *v2;
  *v3 = *a2;
  *v2 = v3 + 1;
  return result;
}

uint64_t __catalog_chunk_unparse_subchunk_subcats_block_invoke(uint64_t result, _WORD *a2)
{
  v2 = *(result + 32);
  v3 = *v2;
  *v3 = *a2;
  *v2 = v3 + 1;
  return result;
}

unint64_t __catalog_chunk_unparse_procinfo_uuidinfo_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = _os_trace_uuid_map_lookup(*(*(a1 + 32) + 16), a3 + 2);
  v6 = result;
  if (result >= 0x10000)
  {
    result = _os_assumes_log();
  }

  v7 = **(a1 + 40);
  v8 = *a3;
  v7[1] = *(v7 + 4) | (*a3 << 16);
  *v7 = a3[1];
  if (v6 >= 0x10000)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v7[1] = (v8 << 16) | v6;
    **(a1 + 40) += 16;
  }

  return result;
}

unint64_t __catalog_chunk_unparse_procinfo_subsystem_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 32);
  *v5 = *a3;
  v6 = *(a3 + 8);
  if (!v6 || !*(a3 + 16))
  {
    _os_assumes_log();
    v6 = *(a3 + 8);
  }

  v7 = _os_trace_str_map_lookup(*(*(a1 + 40) + 24), v6);
  v8 = v7;
  if (v7 >= 0x10000)
  {
    _os_assumes_log();
  }

  v5[1] = v8;
  result = _os_trace_str_map_lookup(*(*(a1 + 40) + 24), *(a3 + 16));
  v10 = result;
  if (result >= 0x10000)
  {
    result = _os_assumes_log();
  }

  v5[2] = v10;
  **(a1 + 32) += 6;
  return result;
}

void _tracev3_chunk_decompress_and_enumerate_chunks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0xAAAAAAAAAAAAAAAALL;
  v8 = -1431655766;
  v4 = _tracev3_chunk_decompress(a1, a2, &v8, v9);
  if (v4)
  {
    v5 = 0;
    v6 = v9[0];
    do
    {
      if (v6 - v5 < 0x10)
      {
        break;
      }

      v7 = *&v4[v5 + 8];
      if (v6 - v5 - 16 < v7)
      {
        break;
      }

      if (!(*(a3 + 16))(a3))
      {
        break;
      }

      v5 = (v5 + v7 + 23) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v5 - 1 < v6);
  }

  if (v8)
  {
    free(v4);
  }
}

uint64_t _os_activity_map_destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    JUMPOUT(0x2318E1010);
  }

  return result;
}

void *_os_trace_str_map_lookup(void *result, char *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = result;
    std::string::basic_string[abi:nn200100]<0>(__p, a2);
    v3 = std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::find<std::string>(v2, __p);
    v4 = v3;
    if (v6 < 0)
    {
      operator delete(__p[0]);
      if (v4)
      {
        return v4[5];
      }
    }

    else if (v3)
    {
      return v4[5];
    }

    return 0;
  }

  return result;
}

uint64_t _os_trace_persistdir_path()
{
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  return _os_trace_persist_path;
}

void ___os_trace_shared_paths_init_block_invoke()
{
  _os_trace_persist_path = "/private/var/db/diagnostics";
  _os_trace_timesync_path = "/private/var/db/diagnostics/timesync";
  _os_trace_uuidtext_path = "/private/var/db/uuidtext";
}

uint64_t _os_trace_timesyncdir_path()
{
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  return _os_trace_timesync_path;
}

uint64_t _os_trace_uuiddb_path()
{
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  return _os_trace_uuidtext_path;
}

uint64_t _os_trace_get_path(int a1)
{
  result = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (_os_trace_shared_paths_init_once != -1)
      {
        dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
      }

      return _os_trace_uuidtext_path;
    }

    else if (a1 == 3)
    {

      return _os_trace_prefsdir_path();
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (_os_trace_shared_paths_init_once != -1)
      {
        dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
      }

      return _os_trace_timesync_path;
    }
  }

  else
  {
    if (_os_trace_shared_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
    }

    return _os_trace_persist_path;
  }

  return result;
}

uint64_t ___timesync_convert_tracev3_block_invoke(uint64_t a1, unsigned __int8 *src)
{
  if (*src == 4096 && *(src + 1) >= 0xA8uLL)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 4) != *(src + 9))
    {
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);
      v6 = *(v3 + 24);
      if (v4 >= v5)
      {
        v7 = 2 * v5;
        v6 = _os_trace_realloc_typed();
        *(v3 + 24) = v6;
        *(v3 + 40) = v7;
        v4 = *(v3 + 32);
      }

      *(v3 + 32) = v4 + 1;
      v8 = v6 + (v4 << 6);
      v9 = *(src + 4);
      v10 = *(src + 10);
      v11 = *(src + 2);
      v12 = *(src + 8);
      v13 = *(src + 44);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = v9;
      *(v8 + 32) = v10;
      *(v8 + 40) = v13;
      *(v8 + 48) = v11;
      *(v8 + 56) = v12;
      uuid_copy((*(v3 + 24) + (v4 << 6) + 8), src + 144);
    }
  }

  return 1;
}

uint64_t ___timesync_converter_close_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (*a2 == *a3)
  {
    v3 = a2[7];
    v4 = a3[7];
    v5 = v3 == v4;
    if (v3 < v4)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t ___timesync_converter_close_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  v4 = *(a3 + 24);
  if (v3 == v4)
  {
    v5 = *(a2 + 32);
    v6 = *(a3 + 32);
    v7 = v5 == v6;
    if (v5 < v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v7)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  else if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t _timesync_validate(uint64_t a1, uint64_t a2, size_t *a3, void *a4)
{
  v6 = _os_trace_mmap_at();
  if (!v6)
  {
    v7 = 0xFFFFFFFFLL;
    if (!*__error())
    {
      return v7;
    }

LABEL_28:
    _os_assumes_log();
    return v7;
  }

  for (i = 0; i <= 0xAAAAAAAAAAAAAAAALL; i = v9 + v12)
  {
    if (i >= 0xAAAAAAAAAAAAAAAALL)
    {
      v13 = munmap(v6, 0xAAAAAAAAAAAAAAAALL);
      v14 = 1;
      v7 = 1;
      goto LABEL_25;
    }

    v9 = i;
    v10 = &v6[i];
    v11 = *&v6[i];
    if (v11 > 48047)
    {
      if (v11 == 48048)
      {
        if (*(v10 + 1) != 48)
        {
          break;
        }

        v12 = 48;
      }

      else
      {
        if (v11 != 57005)
        {
          break;
        }

        v12 = *(v10 + 1);
      }

      continue;
    }

    if (v11 == 27986)
    {
      if (*(v10 + 1) != 88)
      {
        break;
      }

      v12 = 88;
      continue;
    }

    if (v11 != 29524 || *(v10 + 1) != 32)
    {
      break;
    }

    v12 = 32;
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = *v10;
  }

  v13 = munmap(v6, 0xAAAAAAAAAAAAAAAALL);
  v14 = 0;
  v7 = 0;
LABEL_25:
  if (v13 == -1)
  {
    __error();
    v7 = v14;
    goto LABEL_28;
  }

  return v7;
}

void *_timesync_for_each_boot(void *result, uint64_t a2)
{
  if (result[6])
  {
    v3 = result;
    do
    {
      (*(a2 + 16))(a2, v3 + 7);
      result = _timesync_advance_boot(v3);
    }

    while (v3[6]);
  }

  return result;
}

uint64_t _timesync_repair(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = openat(a1, a2, 16777478);
  if (v4 == -1)
  {
    __error();
    _os_assumes_log();
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = _os_trace_mmap_at();
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = &v7[v9];
      v11 = *&v7[v9];
      if (v11 > 0xBBAF)
      {
        if (v11 == 48048)
        {
          if (*(v10 + 1) != 48)
          {
            goto LABEL_22;
          }

          v12 = 48;
        }

        else
        {
          if (v11 != 57005)
          {
            goto LABEL_22;
          }

          v12 = *(v10 + 1);
        }
      }

      else if (v11 == 27986)
      {
        if (*(v10 + 1) != 88)
        {
          goto LABEL_22;
        }

        v12 = 88;
      }

      else
      {
        if (v11 != 29524 || *(v10 + 1) != 32)
        {
LABEL_22:
          v14 = *&v7[v9];
          v15 = &v7[v9];
          v16 = 0xAAAAAAAAAAAAAAAALL - v9;
          while (1)
          {
            if (v14 == 27986)
            {
              if (*(v15 + 1) == 88)
              {
                goto LABEL_34;
              }
            }

            else if (v14 == 29524)
            {
              if (*(v15 + 1) == 32)
              {
                goto LABEL_34;
              }
            }

            else if (v14 == 48048 && *(v15 + 1) == 48)
            {
LABEL_34:
              v13 = v15 - v10;
LABEL_35:
              if (v13 >= 0xFFFF)
              {
                LOWORD(v12) = -8;
              }

              else
              {
LABEL_36:
                LOWORD(v12) = v13;
                if (!v13)
                {
                  LOWORD(v12) = *(v10 + 1);
                  goto LABEL_43;
                }
              }

              (*(a3 + 16))(a3, v9);
              if (lseek(v5, v9, 0) == -1 || (v18 = _os_trace_write(), v18 == -1))
              {
                __error();
                _os_assumes_log();
              }

              else if ((v18 & 0x8000000000000000) == 0)
              {
                v8 = (v8 + 1);
                goto LABEL_43;
              }

              v8 = 0xFFFFFFFFLL;
LABEL_50:
              if (munmap(v7, 0xAAAAAAAAAAAAAAAALL) == -1)
              {
                __error();
                _os_assumes_log();
              }

              if (close(v5) != -1)
              {
                return v8;
              }

              v21 = *__error();
              result = *__error();
              if (v21 != 9)
              {
LABEL_55:
                _os_assumes_log();
                __error();
                _os_assumes_log();
                return v8;
              }

              qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
              qword_27DA527A8 = result;
              __break(1u);
              goto LABEL_57;
            }

            if (v16 <= 7)
            {
              v13 = (-21846 - v9);
              goto LABEL_35;
            }

            v16 -= 8;
            v17 = *(v15 + 4);
            v15 += 8;
            v14 = v17;
          }
        }

        v12 = 32;
      }

      if (v9 + v12 > 0xAAAAAAAAAAAAAAAALL)
      {
        LOWORD(v13) = -21846 - v9;
        goto LABEL_36;
      }

LABEL_43:
      v9 += v12;
      if (v9 >= 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_50;
      }
    }
  }

  if (*__error())
  {
    _os_assumes_log();
  }

  if (close(v5) != -1)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = *__error();
  result = *__error();
  if (v19 != 9)
  {
    v8 = 0xFFFFFFFFLL;
    goto LABEL_55;
  }

LABEL_57:
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

unint64_t _timesync_wall_time_to_continuous(uint64_t a1, unint64_t a2, unint64_t a3, _OWORD *a4)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  *a4 = *_timesync_range_find_startboot(a1, a2, a3, v5);
  return v5[0];
}

void _timesync_db_close(int *a1)
{
  _timesync_munmap_file(a1);
  if (close(*a1) == -1)
  {
    v2 = *__error();
    v3 = *__error();
    if (v2 == 9)
    {
      qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DA527A8 = v3;
      __break(1u);
      return;
    }

    _os_assumes_log();
  }

  free(a1);
}

void _timesync_range_create_since_last_boot(uint64_t a1, uint64_t a2)
{
  v2 = _os_trace_zalloc_typed();
  *v2 = 0;
  *(v2 + 8) = xmmword_22E081670;
  operator new();
}

uint64_t _timesync_range_count(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 24);
  }

  else
  {
    return 0;
  }
}

void _timesync_range_destroy(void ***a1)
{
  _os_trace_uuid_map_destroy(*a1);

  free(a1);
}

uint64_t _os_trace_device_formatted_for_content_protection()
{
  if (_os_trace_device_formatted_for_content_protection_once != -1)
  {
    dispatch_once(&_os_trace_device_formatted_for_content_protection_once, &__block_literal_global_80);
  }

  return _os_trace_device_formatted_for_content_protection_formatted;
}

uint64_t ___os_trace_device_formatted_for_content_protection_block_invoke()
{
  result = MKBDeviceFormattedForContentProtection();
  _os_trace_device_formatted_for_content_protection_formatted = result == 1;
  return result;
}

BOOL _os_trace_device_unlocked_since_boot()
{
  if (_os_trace_device_unlocked_since_boot_unlocked)
  {
    return 1;
  }

  if (_os_trace_device_formatted_for_content_protection_once != -1)
  {
    dispatch_once(&_os_trace_device_formatted_for_content_protection_once, &__block_literal_global_80);
  }

  result = _os_trace_device_formatted_for_content_protection_formatted != 1 || MKBDeviceUnlockedSinceBoot() == 1;
  _os_trace_device_unlocked_since_boot_unlocked = result;
  return result;
}

char *_os_trace_development_getenv(const char *a1)
{
  if (!os_variant_allows_internal_security_policies())
  {
    return 0;
  }

  return getenv(a1);
}

uint64_t _os_trace_is_kernel_64_bit()
{
  if (_os_trace_is_kernel_64_bit_k64_once != -1)
  {
    dispatch_once(&_os_trace_is_kernel_64_bit_k64_once, &__block_literal_global_4);
  }

  return _os_trace_is_kernel_64_bit_k64;
}

uint64_t ___os_trace_is_kernel_64_bit_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  *v3 = xmmword_22E081680;
  memset(__b, 170, sizeof(__b));
  v1 = 648;
  result = sysctl(v3, 4u, __b, &v1, 0, 0);
  if (result == -1)
  {
    __error();
    result = _os_assumes_log();
  }

  _os_trace_is_kernel_64_bit_k64 = (__b[32] & 4) != 0;
  return result;
}

uint64_t _os_trace_uuiddb_get_path(const char *a1, uint64_t a2, int a3, char *__str)
{
  if (!a1)
  {
    if (_os_trace_shared_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
    }

    a1 = _os_trace_uuidtext_path;
  }

  v7 = snprintf(__str, 0x400uLL, "%s/", a1);

  return _os_trace_uuiddb_get_pathsuffix(a2, a3, &__str[v7], 1024 - v7);
}

uint64_t ___os_trace_uuiddb_path_sandbox_can_read_data_block_invoke()
{
  getpid();
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  result = sandbox_check();
  _os_trace_uuiddb_path_sandbox_can_read_data_can_read = result == 0;
  return result;
}

BOOL _os_trace_uuiddb_path_exists(const char *a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    memset(__b, 170, sizeof(__b));
    v6 = snprintf(__b, 0x400uLL, "%s/", a1);
    _os_trace_uuiddb_get_pathsuffix(a2, a3, &__b[v6], 1024 - v6);
    return access(__b, 0) == 0;
  }

  if (_os_trace_uuiddb_path_sandbox_can_read_data_once != -1)
  {
    dispatch_once(&_os_trace_uuiddb_path_sandbox_can_read_data_once, &__block_literal_global_94);
  }

  if (_os_trace_uuiddb_path_sandbox_can_read_data_can_read == 1)
  {
    memset(__b, 170, sizeof(__b));
    _os_trace_uuiddb_get_path(0, a2, a3, __b);
    return access(__b, 0) == 0;
  }

  return 0;
}

FTS *_os_trace_uuiddb_foreach(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v41[0] = a1;
  v41[1] = 0;
  result = fts_open(v41, 84, 0);
  if (result)
  {
    v10 = result;
    (*(a2 + 16))(a2);
    v40[0] = 0xAAAAAAAAAAAAAAAALL;
    v40[1] = 0xAAAAAAAAAAAAAAAALL;
    v11 = fts_read(v10);
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      while (1)
      {
        fts_info = v12->fts_info;
        if (v12->fts_info > 6u)
        {
          break;
        }

        if (v12->fts_info > 2u)
        {
          if (fts_info != 3 && fts_info != 4)
          {
            if (fts_info != 6)
            {
              goto LABEL_79;
            }

            v13 &= v12->fts_level != 1;
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (fts_info != 1)
        {
          if (fts_info != 2)
          {
            goto LABEL_79;
          }

          v12->fts_errno = 62;
          goto LABEL_19;
        }

        if (v12->fts_level == 1)
        {
          if (!strcmp(v12->fts_name, "dsc"))
          {
            v13 = 1;
          }

          else
          {
            if (v12->fts_namelen != 2)
            {
              goto LABEL_74;
            }

            v30 = v12->fts_name[0];
            v31 = -1;
            v32 = v30 - 48;
            if ((v30 - 48) <= 0x36)
            {
              v33 = v30 - 48;
              v34 = v30 - 55;
              v35 = v30 - 87;
              if (((1 << v32) & 0x7E000000000000) != 0)
              {
                v31 = v35;
              }

              else
              {
                v31 = -1;
              }

              if (((1 << v32) & 0x7E0000) != 0)
              {
                v31 = v34;
              }

              if (((1 << v32) & 0x3FF) != 0)
              {
                v31 = v33;
              }
            }

            v36 = v12->fts_name[1];
            v37 = -1;
            v38 = v36 - 48;
            if ((v36 - 48) <= 0x36)
            {
              if (((1 << v38) & 0x3FF) != 0)
              {
                v37 = v36 - 48;
              }

              else if (((1 << v38) & 0x7E0000) != 0)
              {
                v37 = v36 - 55;
              }

              else if (((1 << v38) & 0x7E000000000000) != 0)
              {
                v37 = v36 - 87;
              }
            }

            v39 = v37 | (16 * v31);
            if (v39 < 0)
            {
LABEL_74:
              (*(a3 + 16))(a3, v12);
              fts_set(v10, v12, 4);
              goto LABEL_20;
            }

            LOBYTE(v40[0]) = v39;
          }
        }

        else if (v12->fts_level)
        {
          goto LABEL_74;
        }

LABEL_20:
        v12 = fts_read(v10);
        if (!v12)
        {
          goto LABEL_75;
        }
      }

      if (v12->fts_info > 0xBu)
      {
        if ((fts_info - 12) >= 2)
        {
LABEL_79:
          qword_27DA52778 = "BUG IN LIBTRACE: unexpected fts entry";
          qword_27DA527A8 = fts_info;
          __break(1u);
        }

        goto LABEL_19;
      }

      if (fts_info != 7)
      {
        if (fts_info != 8)
        {
          if (fts_info != 10)
          {
            goto LABEL_79;
          }

          goto LABEL_19;
        }

        fts_level = v12->fts_level;
        if (fts_level != 2)
        {
LABEL_66:
          if (fts_level == 1 && !strcmp(v12->fts_name, ".migrated"))
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (v13)
        {
          v16 = 32;
        }

        else
        {
          v16 = 30;
        }

        if (v16 == v12->fts_namelen)
        {
          v17 = 0;
          v18 = (v13 & 1) == 0;
          while (1)
          {
            v19 = v12->fts_name[v17];
            v20 = v19;
            v21 = v19 - 48;
            v22 = v20 - 48;
            v23 = v20 - 55;
            v24 = v20 - 87;
            if (((1 << v21) & 0x7E000000000000) == 0)
            {
              v24 = -1;
            }

            if (((1 << v21) & 0x7E0000) != 0)
            {
              v24 = v23;
            }

            if (((1 << v21) & 0x3FF) != 0)
            {
              v24 = v22;
            }

            if (v21 <= 0x36)
            {
              v25 = v24;
            }

            else
            {
              v25 = -1;
            }

            v26 = v12->fts_name[v17 + 1];
            v27 = -1;
            v28 = v26 - 48;
            if ((v26 - 48) <= 0x36)
            {
              if (((1 << v28) & 0x3FF) != 0)
              {
                v27 = v26 - 48;
              }

              else if (((1 << v28) & 0x7E0000) != 0)
              {
                v27 = v26 - 55;
              }

              else if (((1 << v28) & 0x7E000000000000) != 0)
              {
                v27 = v26 - 87;
              }
            }

            v29 = v27 | (16 * v25);
            if (v29 < 0)
            {
              break;
            }

            *(v40 + v18++) = v29;
            v17 += 2;
            if (v17 >= v16)
            {
              (*(a4 + 16))(a4, v12, v40, v13 & 1);
              goto LABEL_20;
            }
          }

          fts_level = v12->fts_level;
          goto LABEL_66;
        }
      }

LABEL_19:
      (*(a3 + 16))(a3, v12);
      goto LABEL_20;
    }

LABEL_75:
    if (fts_close(v10) == -1)
    {
      __error();
      _os_assumes_log();
    }

    return (*(a5 + 16))(a5);
  }

  return result;
}

void _os_trace_uuiddb_dsc_map_destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2[2] == 1)
  {
    free(*(a1 + 16));
    free(*(a1 + 24));
    v2 = *(a1 + 8);
  }

  if (munmap(v2, *(a1 + 48)) == -1)
  {
    __error();
    _os_assumes_log();
  }

  free(a1);
}

void *_os_trace_uuiddb_dsc_foreach_range_with_uuid(void *result, void *a2, uint64_t a3)
{
  v3 = result[1];
  if (*(v3 + 8))
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6[2];
      v10 = v6[3] + 32 * *(v9 + v7 + 16);
      v12 = *(v10 + 12);
      v11 = v10 + 12;
      if (v12 == *a2 && *(v11 + 8) == a2[1])
      {
        result = (*(a3 + 16))(a3, v3 + *(v9 + v7 + 8), *(v9 + v7 + 12));
        if (!result)
        {
          return result;
        }

        v3 = v6[1];
      }

      ++v8;
      v7 += 24;
    }

    while (v8 < *(v3 + 8));
  }

  return result;
}

uint64_t _os_trace_uuiddb_dsc_foreach_uuid(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (*(v2 + 12))
  {
    v4 = result;
    v5 = 0;
    v6 = 28;
    do
    {
      result = (*(a2 + 16))(a2, *(v4 + 24) + v6 - 16, v2 + *(*(v4 + 24) + v6));
      if ((result & 1) == 0)
      {
        break;
      }

      ++v5;
      v2 = *(v4 + 8);
      v6 += 32;
    }

    while (v5 < *(v2 + 12));
  }

  return result;
}

uint64_t _os_trace_kic_mode()
{
  if (_os_trace_kic_mode_o != -1)
  {
    dispatch_once(&_os_trace_kic_mode_o, &__block_literal_global_12);
  }

  return _os_trace_kic_mode_kic;
}

char *___os_trace_kic_mode_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  v1 = 1024;
  _os_trace_kic_mode_kic = sysctlbyname("kern.filesetuuid", __b, &v1, 0, 0) != 0;
  result = sysctlbyname("kern.bootargs", __b, &v1, 0, 0);
  if (!result)
  {
    if (strstr(__b, "libtrace_kic=0"))
    {
      _os_trace_kic_mode_kic = 0;
    }

    result = strstr(__b, "libtrace_kic=1");
    if (result)
    {
      _os_trace_kic_mode_kic = 1;
    }
  }

  return result;
}

void _os_trace_uuiddb_make_kernel_cache_uuid(unsigned __int8 *a1, const unsigned __int8 *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *&v7[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *in = v4;
  *v7 = v4;
  v5 = 37;
  if (sysctlbyname("kern.kernelcacheuuid", in, &v5, 0, 0))
  {
    uuid_copy(a1, a2);
    a1[15] = ~a1[15];
  }

  else
  {
    uuid_parse(in, a1);
  }
}

uint64_t _internal_log_assumes(uint64_t a1)
{
  v3[5] = *MEMORY[0x277D85DE8];
  if (_internal_log_once != -1)
  {
    dispatch_once_f(&_internal_log_once, 0, _internal_log_queue_init);
  }

  if (!dispatch_get_specific(_internal_log_q_key))
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 0x40000000;
    v3[2] = ___internal_log_block_invoke;
    v3[3] = &__block_descriptor_tmp_108;
    v3[4] = a1;
    dispatch_sync(_internal_log_q, v3);
  }

  return 1;
}

uint64_t ___internal_log_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(_internal_log_q);
  memset(__b, 170, sizeof(__b));
  memset(v9, 170, 18);
  v7.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *v8 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v7.tm_mon = v2;
  *&v7.tm_isdst = v2;
  *&v7.tm_sec = v2;
  v6 = time(0);
  localtime_r(&v6, &v7);
  strftime(v8, 0x1AuLL, "%F %T%z", &v7);
  v3 = getprogname();
  v4 = getpid();
  result = snprintf(__b, 0x400uLL, "%s %s[%d]: %s\n", v8, v3, v4, v1);
  if (result >= 1)
  {
    if (result >= 0x400)
    {
      __b[1022] = 10;
    }

    dispatch_assert_queue_V2(_internal_log_q);
    dispatch_assert_queue_V2(_internal_log_q);
    if ((_internal_log_fd & 0x80000000) == 0 || (result = _internal_log_open(), (_internal_log_fd & 0x80000000) == 0) && (_internal_log_rotate_if_needed(), result = _internal_log_fd, (_internal_log_fd & 0x80000000) == 0))
    {
      _os_trace_write();
      return _internal_log_rotate_if_needed();
    }
  }

  return result;
}

uint64_t _internal_log_rotate_if_needed()
{
  dispatch_assert_queue_V2(_internal_log_q);
  v0 = lseek(_internal_log_fd, 0, 2);
  result = fsync(_internal_log_fd);
  if (v0 >= 0x100000)
  {
    if (close(_internal_log_fd) == -1)
    {
      v3 = *__error();
      result = *__error();
      if (v3 == 9)
      {
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = result;
        __break(1u);
        return result;
      }

      _os_assumes_log();
    }

    rename(_internal_log_file_0, _internal_log_file_1, v2);

    return _internal_log_open();
  }

  return result;
}

uint64_t _internal_log_open()
{
  result = open(_internal_log_file_0, 778, 420);
  _internal_log_fd = result;
  if ((result & 0x80000000) == 0)
  {

    return fchown(result, 0x110u, 0x110u);
  }

  return result;
}

int *_internal_log_queue_init()
{
  asprintf(&_internal_queue_target, "com.apple.%s.log", "logd");
  if (!_internal_queue_target)
  {
    v1 = *__error();
    qword_27DA52778 = "BUG IN LIBTRACE: failed to create queue target from subsystem";
    qword_27DA527A8 = v1;
    __break(1u);
LABEL_10:
    result = __error();
    v2 = *result;
    qword_27DA52778 = "BUG IN LIBTRACE: failed to create log file path";
    qword_27DA527A8 = v2;
    __break(1u);
    return result;
  }

  _internal_log_q = dispatch_queue_create_with_target_V2(_internal_queue_target, 0, 0);
  dispatch_queue_set_specific(_internal_log_q, _internal_log_q_key, _internal_log_q, 0);
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  asprintf(&_internal_log_file_0, "%s/%s.0.log", _os_trace_persist_path, "logd");
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  result = asprintf(&_internal_log_file_1, "%s/%s.1.log", _os_trace_persist_path, "logd");
  if (!_internal_log_file_0 || !_internal_log_file_1)
  {
    goto LABEL_10;
  }

  return result;
}

void os_trace_blob_add_base64(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a2 length:a3];
  v10 = [v9 base64EncodedStringWithOptions:0];
  v11 = [v10 UTF8String];
  v12 = &_CTF_NULLSTR;
  if (a4)
  {
    v12 = "…";
  }

  os_trace_blob_addf(a1, "'%s%s'", v11, v12);

  objc_autoreleasePoolPop(v8);
}

_BYTE *os_log_fmt_convert_trace(_BYTE *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v5 = &a2[a3 - 1];
  v4 = *v5;
  *a1 = 0;
  a1[1] = v4;
  if (v4)
  {
    v6 = -v4;
    v7 = &v5[-v4];
    v8 = a1 + 2;
    while (1)
    {
      v9 = v5[v6] & 0x3F;
      v10 = &a2[v9];
      if (&a2[v9] > v7)
      {
        break;
      }

      *v8 = 0;
      v8[1] = v9;
      v11 = v8 + 2;
      memcpy(v8 + 2, a2, v9);
      v8 = &v11[v9];
      a2 = v10;
      if (__CFADD__(v6++, 1))
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void _os_log_fmt_compose_masked_partial_redacted(uint64_t a1, unsigned __int8 *a2, unsigned int a3, int a4)
{
  v6 = a1;
  if (!a3 && (a4 & 1) == 0)
  {
    if ((*(a1 + 20) & 2) != 0)
    {
      return;
    }

    v7 = *(a1 + 8);
    if (*(a1 + 12) - v7 - (*(a1 + 22) ^ 1u) > 7)
    {
      *(*a1 + v7) = 0x3E296C6C756E283CLL;
      v8 = *(a1 + 8) + 8;
      goto LABEL_72;
    }

    v41 = "<(null)>";
    v42 = 8;
    goto LABEL_79;
  }

  if (a3 <= 3)
  {
    if ((*(a1 + 20) & 2) != 0)
    {
      return;
    }

    v9 = *(a1 + 8);
    if (*(a1 + 12) - v9 - (*(a1 + 22) ^ 1u) > 4)
    {
      v10 = *a1 + v9;
      *(v10 + 4) = 62;
      *v10 = -1501502916;
      v8 = *(a1 + 8) + 5;
      goto LABEL_72;
    }

    v41 = "<…>";
    v42 = 5;
    goto LABEL_79;
  }

  v11 = a3;
  v12 = *a2;
  v13 = a2[1];
  LOBYTE(v14) = a2[2];
  v15 = a2[3];
  if (v14)
  {
    v16 = v15 == 2;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  if (!a4 && !*a2 && v17)
  {
    v18 = a3 - 4;
    v19 = (a2 + 4);

    os_trace_blob_addns(a1, v19, v18);
    return;
  }

  v20 = v15 == 1;
  if ((*(a1 + 20) & 2) == 0)
  {
    v21 = *(a1 + 8);
    if (*(a1 + 12) == v21 + (*(a1 + 22) ^ 1))
    {
      os_trace_blob_add_slow(a1, "<", 1uLL);
    }

    else
    {
      *(*a1 + v21) = 60;
      v22 = *(a1 + 8) + 1;
      *(a1 + 8) = v22;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v22) = 0;
      }
    }
  }

  v23 = v12 + 4;
  if (v11 > v12 + 4)
  {
    if (v11 - (v12 + 4) >= v14)
    {
      v14 = v14;
    }

    else
    {
      v14 = v11 - (v12 + 4);
    }

    if (v15 == 2)
    {
      v24 = v14;
    }

    else
    {
      v24 = v11 - (v12 + 4);
    }

    if (v24)
    {
      if (v15 == 1 && (*(v6 + 20) & 2) == 0)
      {
        v25 = *(v6 + 8);
        if (*(v6 + 12) - v25 - (*(v6 + 22) ^ 1u) <= 2)
        {
          v43 = v24;
          os_trace_blob_add_slow(v6, "…", 3uLL);
          v24 = v43;
        }

        else
        {
          v26 = *v6 + v25;
          *(v26 + 2) = -90;
          *v26 = -32542;
          v27 = *(v6 + 8) + 3;
          *(v6 + 8) = v27;
          if ((*(v6 + 22) & 1) == 0)
          {
            *(*v6 + v27) = 0;
          }
        }
      }

      if (os_trace_blob_addns(v6, &a2[v23], v24))
      {
        if (((v15 | 2) == 2 || a4) && (*(v6 + 20) & 2) == 0)
        {
          v28 = *(v6 + 8);
          if (*(v6 + 12) - v28 - (*(v6 + 22) ^ 1u) <= 2)
          {
            os_trace_blob_add_slow(v6, "…", 3uLL);
          }

          else
          {
            v29 = *v6 + v28;
            *(v29 + 2) = -90;
            *v29 = -32542;
            v30 = *(v6 + 8) + 3;
            *(v6 + 8) = v30;
            if ((*(v6 + 22) & 1) == 0)
            {
              *(*v6 + v30) = 0;
            }
          }
        }

        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }

    if (v15 == 2 && v11 != v14 + v23 && os_trace_blob_addns(v6, &a2[v14 + v23], v11 - (v14 + v23)))
    {
      if ((*(v6 + 20) & 2) == 0)
      {
        v31 = *(v6 + 8);
        if (*(v6 + 12) - v31 - (*(v6 + 22) ^ 1u) <= 2)
        {
          os_trace_blob_add_slow(v6, "…", 3uLL);
        }

        else
        {
          v32 = *v6 + v31;
          *(v32 + 2) = -90;
          *v32 = -32542;
          v33 = *(v6 + 8) + 3;
          *(v6 + 8) = v33;
          if ((*(v6 + 22) & 1) == 0)
          {
            *(*v6 + v33) = 0;
          }
        }
      }
    }

    else if (!v20)
    {
      goto LABEL_60;
    }

    if ((*(v6 + 20) & 2) == 0)
    {
      v34 = *(v6 + 8);
      if (*(v6 + 12) - v34 - (*(v6 + 22) ^ 1u) <= 1)
      {
        os_trace_blob_add_slow(v6, ", ", 2uLL);
      }

      else
      {
        *(*v6 + v34) = 8236;
        v35 = *(v6 + 8) + 2;
        *(v6 + 8) = v35;
        if ((*(v6 + 22) & 1) == 0)
        {
          *(*v6 + v35) = 0;
        }
      }
    }
  }

LABEL_60:
  os_trace_blob_addf(v6, "length=%u", v13);
  v36 = v11 - 4;
  if (v36 >= v12)
  {
    v37 = v12;
  }

  else
  {
    v37 = v36;
  }

  if (v37)
  {
    if ((*(v6 + 20) & 2) == 0)
    {
      v38 = *(v6 + 8);
      if (*(v6 + 12) - v38 - (*(v6 + 22) ^ 1u) <= 1)
      {
        os_trace_blob_add_slow(v6, ", ", 2uLL);
      }

      else
      {
        *(*v6 + v38) = 8236;
        v39 = *(v6 + 8) + 2;
        *(v6 + 8) = v39;
        if ((*(v6 + 22) & 1) == 0)
        {
          *(*v6 + v39) = 0;
        }
      }
    }

    os_trace_blob_add_base64(v6, (a2 + 4), v37, v36 < v12);
  }

  if ((*(v6 + 20) & 2) == 0)
  {
    v40 = *(v6 + 8);
    if (*(v6 + 12) != v40 + (*(v6 + 22) ^ 1))
    {
      *(*v6 + v40) = 62;
      v8 = *(v6 + 8) + 1;
LABEL_72:
      *(v6 + 8) = v8;
      if ((*(v6 + 22) & 1) == 0)
      {
        *(*v6 + v8) = 0;
      }

      return;
    }

    v41 = ">";
    a1 = v6;
    v42 = 1;
LABEL_79:

    os_trace_blob_add_slow(a1, v41, v42);
  }
}

uint64_t _os_log_fmt_builtin_uuid_t(size_t a1, int a2, uint64_t a3, _BYTE *a4, unsigned __int8 *uu, uint64_t a6, int a7)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a3 + 10) == 19 && a6 <= 0x10 && (a6 == 16 || (a7 & 1) != 0))
  {
    if (a6 != 16 && a7)
    {
      _os_log_fmt_decode_error(a1);
    }

    else
    {
      memset(v13, 0, sizeof(v13));
      uuid_unparse_upper(uu, v13);
      v8 = strlen(v13);
      if ((*(a1 + 20) & 2) == 0)
      {
        v9 = v8;
        v10 = *(a1 + 8);
        if (v8 > *(a1 + 12) - v10 - (*(a1 + 22) ^ 1u))
        {
          os_trace_blob_add_slow(a1, v13, v8);
        }

        else
        {
          memcpy((*a1 + v10), v13, v8);
          v11 = *(a1 + 8) + v9;
          *(a1 + 8) = v11;
          if ((*(a1 + 22) & 1) == 0)
          {
            *(*a1 + v11) = 0;
          }
        }
      }
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_timeval(tm *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (*(a3 + 10) == 19 && a6 <= 0x10 && (a6 == 16 || (a7 & 1) != 0))
  {
    if (a6 != 16 && a7)
    {
      _os_log_fmt_decode_error(a1);
    }

    else
    {
      os_trace_blob_add_localtime(a1, *a5, *(a5 + 8), 1u);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_timespec(tm *a1, uint64_t a2, uint64_t a3, _BYTE *a4, time_t *a5, uint64_t a6, int a7)
{
  if (*(a3 + 10) == 19 && a6 <= 0x10 && (a6 == 16 || (a7 & 1) != 0))
  {
    if (a6 != 16 && a7)
    {
      _os_log_fmt_decode_error(a1);
    }

    else
    {
      os_trace_blob_add_localtime(a1, *a5, a5[1], 0);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_time(tm *a1, uint64_t a2, uint64_t a3, _BYTE *a4, int *a5, uint64_t a6)
{
  v6 = a6;
  if (!_os_log_fmt_spec_is_integer(*(a3 + 10), 0))
  {
    goto LABEL_8;
  }

  if (v6 == 4)
  {
    v11 = *a5;
    goto LABEL_6;
  }

  if (v6 != 8)
  {
LABEL_8:
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, v6);
    return 1;
  }

  v11 = *a5;
LABEL_6:
  os_trace_blob_add_localtime(a1, v11, 0, 3u);
  return 1;
}

uint64_t _os_log_fmt_builtin_trace_mode(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _DWORD *a5, uint64_t a6)
{
  v6 = a6;
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (v6 != 4 || (is_integer & 1) == 0)
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, v6);
    return 1;
  }

  v12 = *a5;
  os_trace_blob_addf(a1, "0x%X", *a5);
  v13 = 1;
  v14 = &off_2787ADB90;
  v15 = 7;
  do
  {
    if ((*(v14 - 1) & v12) == 0)
    {
      goto LABEL_20;
    }

    if (v13)
    {
      v16 = "(";
    }

    else
    {
      v16 = ", ";
    }

    if (v13)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    if ((*(a1 + 20) & 2) == 0)
    {
      v18 = *(a1 + 8);
      if (v17 > *(a1 + 12) - v18 - (*(a1 + 22) ^ 1u))
      {
        os_trace_blob_add_slow(a1, v16, v17);
      }

      else
      {
        memcpy((*a1 + v18), v16, v17);
        v19 = *(a1 + 8) + v17;
        *(a1 + 8) = v19;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + v19) = 0;
        }
      }
    }

    v20 = *v14;
    v21 = strlen(*v14);
    if ((*(a1 + 20) & 2) != 0)
    {
      goto LABEL_18;
    }

    v22 = v21;
    v23 = *(a1 + 8);
    if (v21 > *(a1 + 12) - v23 - (*(a1 + 22) ^ 1u))
    {
      os_trace_blob_add_slow(a1, v20, v21);
LABEL_18:
      v13 = 0;
      goto LABEL_20;
    }

    memcpy((*a1 + v23), v20, v21);
    v24 = *(a1 + 8) + v22;
    *(a1 + 8) = v24;
    if (*(a1 + 22))
    {
      goto LABEL_18;
    }

    v13 = 0;
    *(*a1 + v24) = 0;
LABEL_20:
    v14 += 2;
    --v15;
  }

  while (v15);
  if ((v13 & 1) == 0 && (*(a1 + 20) & 2) == 0)
  {
    v25 = *(a1 + 8);
    if (*(a1 + 12) - v25 - (*(a1 + 22) ^ 1u) <= 1)
    {
      os_trace_blob_add_slow(a1, ")", 2uLL);
    }

    else
    {
      *(*a1 + v25) = 10528;
      v26 = *(a1 + 8) + 2;
      *(a1 + 8) = v26;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v26) = 0;
      }
    }
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_mach_errno(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, kern_return_t *a5, uint64_t a6)
{
  v6 = a6;
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (v6 == 4 && (is_integer & 1) != 0)
  {
    v12 = *a5;
    if ((*a5 - 1100) > 6)
    {
      v13 = mach_error_string(v12 & 0xFFFFC1FF);
    }

    else
    {
      v13 = bootstrap_strerror(*a5);
    }

    os_trace_blob_addf(a1, "[%#x: %s]", v12, v13);
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, v6);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_scaled(uint64_t a1, unsigned int a2, uint64_t a3, _BYTE *a4, char *a5, uint64_t a6, void *a7)
{
  v8 = a6;
  if (_os_log_fmt_spec_is_integer(*(a3 + 10), 0))
  {
    scalar = os_log_fmt_read_scalar(a3, a5, v8);
    v15 = 0.0;
    if (*a7)
    {
      v16 = 1;
      if (a7[1] && scalar >= 0x3E8)
      {
        v17 = 0;
        do
        {
          v18 = scalar;
          v19 = a7[v17 + 2];
          ++v17;
          scalar /= a2;
        }

        while (v19 && scalar > 0x3E7);
        v15 = (v18 - scalar * a2) * 100.0;
        v16 = v17 == 0;
      }
    }

    else
    {
      v16 = 1;
    }

    v20 = vcvtad_u64_f64(v15 / a2);
    if (v20 == 100)
    {
      v21 = scalar + 1;
    }

    else
    {
      v21 = scalar;
    }

    if (v20 == 100)
    {
      v20 = 0;
    }

    if (v16)
    {
      return os_trace_blob_addf(a1, "%llu %s");
    }

    if (v21 > 9 || -10 * (v20 / 0xA) == -v20)
    {
      if (!v20 || v21 > 0x63)
      {
        return os_trace_blob_addf(a1, "%llu %s");
      }

      return os_trace_blob_addf(a1, "%llu.%01u %s");
    }

    else
    {
      return os_trace_blob_addf(a1, "%llu.%02u %s");
    }
  }

  else
  {
    v24 = *a3;
    v25 = *(a3 + 12);

    return _os_log_fmt_decode_cmd_mismatch(a1, v24, v25, a4, v8);
  }
}

uint64_t _os_log_fmt_builtin_darwin_signal(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _DWORD *a5, uint64_t a6)
{
  v6 = a6;
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (v6 == 4 && (is_integer & 1) != 0)
  {
    if (*a5 < 0x20u)
    {
      os_trace_blob_addf(a1, "[sig%s: %s]");
    }

    else
    {
      os_trace_blob_addf(a1, "[%d: Unknown signal]");
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, v6);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_darwin_mode(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int *a5, uint64_t a6)
{
  v6 = a6;
  v28 = *MEMORY[0x277D85DE8];
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (v6 == 4 && (is_integer & 1) != 0)
  {
    v12 = *a5;
    __src[0] = aPcDBLSW[*a5 >> 12];
    if ((v12 & 0x40) != 0)
    {
      v13 = 120;
    }

    else
    {
      v13 = 45;
    }

    if ((v12 & 0x40) != 0)
    {
      v14 = 115;
    }

    else
    {
      v14 = 83;
    }

    if ((v12 & 8) != 0)
    {
      v15 = 120;
    }

    else
    {
      v15 = 45;
    }

    if ((v12 & 8) != 0)
    {
      v16 = 115;
    }

    else
    {
      v16 = 83;
    }

    v17 = vdupq_n_s32(v12);
    v18.i16[0] = 11565;
    v18.i8[3] = 45;
    v18.i8[4] = 45;
    v18.i16[3] = 11565;
    v18.i8[2] = v13;
    v18.i8[5] = v15;
    v19.i16[0] = 30578;
    v19.i8[2] = v14;
    v19.i8[3] = 114;
    v19.i8[4] = 119;
    v19.i8[5] = v16;
    v19.i16[3] = 30578;
    *&__src[1] = vbsl_s8(vmovn_s16(vuzp1q_s16(vceqzq_s32(vandq_s8(v17, xmmword_22E081690)), vceqzq_s32(vandq_s8(v17, xmmword_22E0816A0)))), v18, v19);
    if (v12)
    {
      v20 = 120;
    }

    else
    {
      v20 = 45;
    }

    if (v12)
    {
      v21 = 116;
    }

    else
    {
      v21 = 84;
    }

    if ((v12 & 0x200) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    __src[9] = v22;
    if ((*(a1 + 20) & 2) == 0)
    {
      v23 = *(a1 + 8);
      if (*(a1 + 12) - v23 - (*(a1 + 22) ^ 1u) <= 9)
      {
        os_trace_blob_add_slow(a1, __src, 0xAuLL);
      }

      else
      {
        v24 = *a1 + v23;
        *v24 = *__src;
        *(v24 + 8) = *&__src[8];
        v25 = *(a1 + 8) + 10;
        *(a1 + 8) = v25;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + v25) = 0;
        }
      }
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, v6);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_darwin_errno(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, int *a5, uint64_t a6)
{
  v6 = a6;
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (v6 == 4 && (is_integer & 1) != 0)
  {
    v12 = *a5;
    if (*a5)
    {
      v14 = strerror(*a5);
      os_trace_blob_addf(a1, "[%d: %s]", v12, v14);
    }

    else
    {
      os_trace_blob_addf(a1, "[%d: %s]", 0, "Success");
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, v6);
  }

  return 1;
}

uint64_t _parse_metric_context_data(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 296) != 1)
  {
    return 0;
  }

  if (!*(a1 + 208))
  {
    *(a1 + 208) = os_log_fmt_extract_pubdata(*(a1 + 192), *(a1 + 200), (a1 + 216), (a1 + 224));
  }

  v6 = *(a1 + 216);
  if (!v6 || (*v6 & 2) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 224);
  *a2 = v6 + 1;
  *a3 = v8 - 2;
  return 1;
}

uint64_t _metric_serialize_basic(void *a1, uint64_t a2, double *a3)
{
  if (!*(a3 + 1))
  {
    goto LABEL_6;
  }

  v5 = *(a2 + 1);
  if (!*(a2 + 1))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:*a3];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 1)];
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a3 + 2)];
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a3 + 3)];
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a3 + 4)];
    v11 = *(a3 + 4);
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*a3];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 1)];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3[2]];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3[3]];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3[4]];
    v11 = a3[4];
    goto LABEL_9;
  }

  if (v5 != 2)
  {
LABEL_6:
    v6 = &unk_2841B8EB0;
    v7 = &unk_2841B8EB0;
    v8 = &unk_2841B8EB0;
    v9 = &unk_2841B8EB0;
    v10 = &unk_2841B8EB0;
    v12 = &unk_2841B8EB0;
    goto LABEL_10;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a3];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 1)];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 2)];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 3)];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 4)];
  v11 = *(a3 + 4);
LABEL_9:
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11 / *(a3 + 1)];
LABEL_10:
  [a1 setObject:v6 forKeyedSubscript:@"value"];
  [a1 setObject:v7 forKeyedSubscript:@"events"];
  [a1 setObject:v8 forKeyedSubscript:@"min"];
  [a1 setObject:v9 forKeyedSubscript:@"max"];
  [a1 setObject:v10 forKeyedSubscript:@"total"];

  return [a1 setObject:v12 forKeyedSubscript:@"average"];
}

double _metric_get_percentile(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v4 = *(a1 + 5);
  if (!*(a1 + 5))
  {
    return 0.0;
  }

  v5 = 0;
  v6 = a2 * a4;
  while (1)
  {
    while (1)
    {
      v7 = *(a3 + 8 * v5);
      if (v7)
      {
        break;
      }

      if (v4 == ++v5)
      {
        return 0.0;
      }
    }

    v8 = v7;
    if (v6 <= v7)
    {
      break;
    }

    v6 = v6 - v8;
    if (++v5 == v4)
    {
      v5 = *(a1 + 5);
      break;
    }
  }

  v9 = *(a1 + 8);
  v10 = v5 * v9;
  v11 = v5 * v9 + v9;
  v12 = 2 * (1 << (v5 - 1));
  v13 = v5 == 0;
  if (v5)
  {
    v14 = 1 << (v5 - 1);
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v12 = 1;
  }

  if (v9)
  {
    v14 = v10;
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  return v14 + (v15 - v14) * (v6 / v8);
}

uint64_t _resolve_uuid_slow_single(uint64_t result, unint64_t a2, const char **a3)
{
  v6 = *(result + 112);
  if (v6)
  {
    v7 = *(result + 328);
    if (v7)
    {
      if ((*(*(v7 + 96) + 2) & 6 | 8) == 0xC)
      {
        return uuidpath_sharedcache_resolve_fd(*(result + 352), v6, a2, 0, 0, a3, 0, 0, 0, 0, 0);
      }

      else
      {
        v8 = *(result + 352);

        return uuidpath_resolve_fd(v8, v6, a2, 0, a3, 0, 0, 0);
      }
    }
  }

  return result;
}

char *_find_old_signpost_name_end(char *a1, const char *a2)
{
  result = strchr(a1, 32);
  if (!result)
  {
    v5 = strlen(a1);
    if (!strncmp(a1, a2, v5) && !a1[v5] && a2[v5] == 32)
    {
      if (a2[v5 + 1])
      {
        return 0;
      }

      else
      {
        return &a1[v5 - 1];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _parse_activity_swap(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 514;
  v4 = *(a2 + 2);
  if ((v4 & 1) == 0)
  {
    LODWORD(v5) = 0;
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = (v5 + 8);
    if (*(a2 + 22) < v5)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (!(*(a2 + 16) >> 51))
  {
    return 0;
  }

  v6 = *(a2 + 24);
  *(a1 + 56) = v6;
  *(a1 + 64) = _os_activity_map_find_parent(*(a1 + 320), v6);
  v4 = *(a2 + 2);
  LODWORD(v5) = 8;
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if ((v4 & 0x200) == 0)
  {
    return 1;
  }

  if (v5 + 8 <= *(a2 + 22))
  {
    *(a1 + 192) = *(a2 + v5 + 24);
    return 1;
  }

  return 0;
}

BOOL _parse_activity_useraction(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  *(a1 + 8) = 515;
  v4 = *(a2 + 2);
  if ((v4 & 1) == 0)
  {
    v5 = 8;
    if ((v4 & 0x10) == 0)
    {
      return _parse_location(a1, a2, &v8);
    }

    goto LABEL_6;
  }

  if (!(*(a2 + 16) >> 51))
  {
    return 0;
  }

  v8 = 8;
  v6 = *(a2 + 24);
  *(a1 + 56) = v6;
  *(a1 + 64) = _os_activity_map_find_parent(*(a1 + 320), v6);
  v5 = 16;
  if ((*(a2 + 2) & 0x10) != 0)
  {
LABEL_6:
    if (v5 <= *(a2 + 22))
    {
      v8 = v5;
      return _parse_location(a1, a2, &v8);
    }

    return 0;
  }

  return _parse_location(a1, a2, &v8);
}

BOOL _parse_trace(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  *(a1 + 8) = 768;
  v4 = *(a2 + 2);
  if (v4)
  {
    if (!(*(a2 + 16) >> 51))
    {
      return 0;
    }

    v9 = 8;
    v6 = *(a2 + 24);
    *(a1 + 56) = v6;
    *(a1 + 64) = _os_activity_map_find_parent(*(a1 + 320), v6);
    v5 = 16;
    if ((*(a2 + 2) & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (v5 <= *(a2 + 22))
    {
      v9 = v5;
      goto LABEL_8;
    }

    return 0;
  }

  v5 = 8;
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  result = _parse_location(a1, a2, &v9);
  if (result)
  {
    v8 = v9;
    *(a1 + 192) = a2 + v9 + 24;
    *(a1 + 200) = *(a2 + 22) - v8;
    return 1;
  }

  return result;
}

BOOL _parse_loss(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 1792;
  v2 = *(a2 + 16) >> 51;
  if (v2 >= 3)
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    *(a1 + 216) = 0;
    v7 = (a1 + 216);
    *(a1 + 192) = v4;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 224) = v5;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = v6;
    v8 = *(a1 + 328);
    v9 = *(v8 + 40);
    v10 = *(a1 + 344);
    if (v10)
    {
      v11 = _timesync_continuous_to_wall_time(v10, (v9 + 144), v4, v7);
      v12 = v11 / 0x3B9ACA00;
      v13 = v11 % 0x3B9ACA00 / 0x3E8;
      v14 = *(a1 + 328);
      v15 = *(a1 + 344);
      *(a1 + 200) = v12;
      *(a1 + 208) = v13;
      v16 = (a1 + 248);
      v17 = *(v14 + 40);
      if (v15)
      {
        v18 = _timesync_continuous_to_wall_time(v15, (v17 + 144), v5, v16);
        v19 = v18 / 0x3B9ACA00;
        v20 = v18 % 0x3B9ACA00 / 0x3E8;
LABEL_19:
        *(a1 + 232) = v19;
        *(a1 + 240) = v20;
        return v2 > 2;
      }

      v23 = *(a1 + 356);
    }

    else
    {
      v21 = *(v9 + 32);
      v22 = *(v9 + 40);
      v23 = *(a1 + 356);
      *(a1 + 216) = v23;
      v24 = *(v9 + 64);
      if (v24 != v4)
      {
        v26 = *(v9 + 16);
        v25 = *(v9 + 20);
        if (v24 >= v4)
        {
          v28 = (v24 - v4) * v26 / v25;
          v21 -= v28 / 0x3B9ACA00;
          v22 -= v28 % 0x3B9ACA00 / 0x3E8;
          if (v22 < 0)
          {
            --v21;
            v22 += 1000000;
          }
        }

        else
        {
          v27 = (v4 - v24) * v26 / v25;
          v21 += v27 / 0x3B9ACA00;
          v22 += v27 % 0x3B9ACA00 / 0x3E8;
          if (v22 > 999999)
          {
            ++v21;
            v22 -= 1000000;
          }
        }
      }

      *(a1 + 200) = v21;
      *(a1 + 208) = v22;
      v16 = (a1 + 248);
      v17 = *(v8 + 40);
    }

    v19 = *(v17 + 32);
    v20 = *(v17 + 40);
    *v16 = v23;
    v29 = *(v17 + 64);
    if (v29 != v5)
    {
      v31 = *(v17 + 16);
      v30 = *(v17 + 20);
      if (v29 >= v5)
      {
        v33 = (v29 - v5) * v31 / v30;
        v19 -= v33 / 0x3B9ACA00;
        v20 -= v33 % 0x3B9ACA00 / 0x3E8;
        if (v20 < 0)
        {
          --v19;
          v20 += 1000000;
        }
      }

      else
      {
        v32 = (v5 - v29) * v31 / v30;
        v19 += v32 / 0x3B9ACA00;
        v20 += v32 % 0x3B9ACA00 / 0x3E8;
        if (v20 > 999999)
        {
          ++v19;
          v20 -= 1000000;
        }
      }
    }

    goto LABEL_19;
  }

  return v2 > 2;
}

void logdev_notification_callback(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [OSLogDevice alloc];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v13 = [(OSLogDevice *)v8 initWithMobileDevice:a3 andUDID:v9];

  if (a1 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a1 == 1;
  }

  v11 = [v7 deviceDelegate];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  [v11 activityStream:v7 deviceUDID:v12 deviceID:v13 status:v10 error:0];
}

void __watchForSims_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"device"];
  _simDeviceUpdate(v3, *(a1 + 32));
}

void _simDeviceUpdate(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 deviceDelegate];
  os_unfair_lock_lock(&_knownSimulatorsLock);
  v6 = _knownSimulators;
  v7 = [v3 UDID];
  v8 = [v7 UUIDString];
  v9 = [v6 objectForKey:v8];

  if ([v3 state] == 3)
  {
    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = [v3 UDID];
        v11 = [v10 UUIDString];
        v20 = 138412546;
        v21 = v11;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "duplicate sim seen: %@, already have %@", &v20, 0x16u);
      }

      goto LABEL_12;
    }

    v9 = [[OSLogDevice alloc] initWithSimualatedDevice:v3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v9;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "sim added: %@", &v20, 0xCu);
    }

    v16 = _knownSimulators;
    v17 = [v3 UDID];
    v18 = [v17 UUIDString];
    [v16 setObject:v9 forKey:v18];

    v15 = 0;
LABEL_16:
    os_unfair_lock_unlock(&_knownSimulatorsLock);
    v19 = [(OSLogDevice *)v9 uid];
    [v5 activityStream:v4 deviceUDID:v19 deviceID:v9 status:v15 error:0];

    goto LABEL_17;
  }

  if ([v3 state] != 4)
  {
    if (v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = 134218242;
      v21 = [v3 state];
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "sim state %lu: %@", &v20, 0x16u);
    }

    goto LABEL_12;
  }

  if (v9)
  {
    v12 = _knownSimulators;
    v13 = [v3 UDID];
    v14 = [v13 UUIDString];
    [v12 removeObjectForKey:v14];

    v15 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v9;
      v15 = 1;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "sim removed: %@", &v20, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_12:
  os_unfair_lock_unlock(&_knownSimulatorsLock);
LABEL_17:
}

uint64_t __watchForSims_block_invoke()
{
  if (_coreSimulatorFrameworkPath_once != -1)
  {
    dispatch_once(&_coreSimulatorFrameworkPath_once, &__block_literal_global_190);
  }

  v0 = _coreSimulatorFrameworkPath_path;
  v1 = v0;
  if (v0)
  {
    v7 = v0;
    v2 = [MEMORY[0x277CCA8D8] bundleWithPath:v0];
    v3 = v2;
    if (v2)
    {
      watchForSims_SimServiceContextClass = [v2 classNamed:@"SimServiceContext"];
      if (watchForSims_SimServiceContextClass)
      {
        v4 = objc_opt_new();
        v5 = _knownSimulators;
        _knownSimulators = v4;

        _knownSimulatorsLock = 0;
      }
    }

    v1 = v7;
  }

  return MEMORY[0x2821F96F8](v0, v1);
}

void ___coreSimulatorFrameworkPath_block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [&unk_2841B9240 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(&unk_2841B9240);
        }

        v5 = *(*(&v6 + 1) + 8 * i);
        if ([v0 fileExistsAtPath:v5])
        {
          objc_storeStrong(&_coreSimulatorFrameworkPath_path, v5);
          goto LABEL_11;
        }
      }

      v2 = [&unk_2841B9240 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_22E0339A8(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x22E033924);
}

void logdev_message_callback(uint64_t a1, void *a2)
{
  v7 = a2;
  if (a1)
  {
    v3 = [OSActivityEvent activityEventFromStreamEntry:a1];
    if (v3)
    {
      v4 = [v7 predicate];

      if (!v4 || ([v7 predicate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "evaluateWithObject:", v3), v5, (v6 & 1) != 0))
      {
        [v7 streamEvent:v3 error:0];
      }
    }
  }

  else
  {
    [v7 streamEvent:0 error:0];
  }
}

void sub_22E034480(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x22E034440);
}

uint64_t ___catalog_lite_read_limits_block_invoke_2(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(result + 32);
  if (*a2 < *v3)
  {
    *v3 = *a2;
  }

  v4 = *(a2 + 8);
  v5 = *(result + 40);
  if (v4 < *v5)
  {
    *v5 = v4;
  }

  v6 = a2 + *(a2 + 24) + 26;
  if ((v6 & 7) != 0)
  {
    v6 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  *a3 = v6;
  return result;
}

void sub_22E0376F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E037DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va2, a15);
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  va_copy(va2, va1);
  v21 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void enumerateOldChunkTracepointLimits(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (*a1 == 24589)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __enumerateOldChunkTracepointLimits_block_invoke;
    v18[3] = &__block_descriptor_48_e767_B16__0__tracev3_chunk_s__tracev3_chunk_preamble_s_IIQ_____tracev3_chunk_header_s__mach_timebase_info_II_QqiiiI_tracev3_subchunk_preamble_s_II__tracev3_subchunk_continuous_s_Q__tracev3_subchunk_preamble_s_II__tracev3_subchunk_systeminfo_s_ii_16c__32c___tracev3_subchunk_preamble_s_II__tracev3_subchunk_generation_s__16C_ii__tracev3_subchunk_preamble_s_II__tracev3_subchunk_timezone_s__48c____tracev3_chunk_catalog_s_SSSS_0C___tracev3_chunk_catalog_v2_s_SSSSS_3S_Q_0C___tracev3_chunk_log_preamble_s_QIC_3C___tracev3_chunk_firehose_s_QICC_2C__0C___tracev3_chunk_firehose_old_s_QiCC_0C___tracev3_chunk_oversize_s_QIC_3C_QISS_0C___tracev3_chunk_oversize_old_s_QISS_0C___tracev3_chunk_statedump_s_QIC_3C_QQ_16C__0C___tracev3_chunk_simple_s_QICC_2C_QQQ_16C__16C__0C___0C___8l;
    v18[4] = a2;
    v18[5] = a3;
    _tracev3_chunk_decompress_and_enumerate_chunks(a1, 0, v18);
    return;
  }

  if (*a1 == 24588)
  {
    v3 = *(a1 + 8);
    v4 = v3 - 16;
    if (v3 >= 0x10)
    {
      v5 = (a1 + 30);
      if (v3 - 4113 > 0xFFFFFFFFFFFFF00ELL)
      {
        v6 = *v5;
        if (v4 < v6)
        {
          return;
        }
      }

      else
      {
        v6 = *v5;
      }

      v7 = (a1 + 46);
      v8 = v5 + v6;
      if (v6 > 0x1000)
      {
        v8 = a1 + 46;
      }

      while ((v7 + 3) < v8)
      {
        v9 = v7[2];
        v10 = HIWORD(v9);
        if (!HIWORD(v9) || v10 > (v8 - (v7 + 3)))
        {
          break;
        }

        v12 = v10 + 24;
        v13 = (HIWORD(v9) & 0xFFF8) + 32;
        if ((v9 & 0x7000000000000) == 0)
        {
          v13 = v12;
        }

        v14 = (v7 + v13);
        v15 = *v7;
        v7 = v14;
        if (v15)
        {
          v16 = (v9 & 0xFFFFFFFFFFFFLL) + *(a1 + 38);
          v17 = *a2;
          if (*a2 >= v16)
          {
            v17 = v16;
          }

          *a2 = v17;
          if (*a3 > v16)
          {
            v16 = *a3;
          }

          *a3 = v16;
          v7 = v14;
        }
      }
    }
  }
}

void sub_22E039324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, ...)
{
  va_start(va, a45);
  _Block_object_dispose((v45 - 224), 8);
  _Block_object_dispose((v45 - 176), 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E03A354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _OSLogError(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (a1 > 10)
  {
    if (a1 > 14)
    {
      if ((a1 - 16) < 3)
      {
        v7[0] = @"_OSLogErrorInternalCode";
        v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
        v8[0] = v1;
        v2 = @"The log archive contains partial or missing metadata";
        v3 = 7;
        goto LABEL_21;
      }

      if (a1 == 15)
      {
        v7[0] = @"_OSLogErrorInternalCode";
        v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        v8[0] = v1;
        v2 = @"Connection to logd failed";
        v3 = 10;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if ((a1 - 11) >= 3)
    {
      if (a1 == 14)
      {
        v7[0] = @"_OSLogErrorInternalCode";
        v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        v8[0] = v1;
        v2 = @"Client lacks entitlement to perform operation";
        v3 = 9;
        goto LABEL_21;
      }

LABEL_20:
      v7[0] = @"_OSLogErrorInternalCode";
      v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
      v8[0] = v1;
      v2 = @"The specified URL did not refer to a valid log archive";
      v3 = 1;
      goto LABEL_21;
    }

LABEL_8:
    v7[0] = @"_OSLogErrorInternalCode";
    v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
    v8[0] = v1;
    v2 = @"The log archive is corrupt or incomplete and cannot be read";
    v3 = 2;
    goto LABEL_21;
  }

  if (a1 <= 7)
  {
    if ((a1 - 4) >= 2)
    {
      if (a1 == 7)
      {
        v7[0] = @"_OSLogErrorInternalCode";
        v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        v8[0] = v1;
        v2 = @"A system resource shortage prevented the operation from completing successfully";
        v3 = 6;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_8;
  }

  if (a1 == 8)
  {
    v7[0] = @"_OSLogErrorInternalCode";
    v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v8[0] = v1;
    v2 = @"The log archive format requires upgrading in order to be opened";
    v3 = 4;
  }

  else
  {
    v7[0] = @"_OSLogErrorInternalCode";
    if (a1 == 9)
    {
      v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      v8[0] = v1;
      v2 = @"The log archive upgrade process failed";
      v3 = 5;
    }

    else
    {
      v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      v8[0] = v1;
      v2 = @"The log archive version is unsupported by this library";
      v3 = 3;
    }
  }

LABEL_21:
  v7[1] = *MEMORY[0x277CCA450];
  v8[1] = v2;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OSLogErrorDomain" code:v3 userInfo:v4];

  return v5;
}

id _OSLogPOSIXError(uint64_t a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  if ((a1 - 4) > 0xE)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_22E081868[a1 - 4];
  }

  v11[0] = @"_OSLogErrorInternalCode";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v12[0] = v4;
  v11[1] = @"_OSLogErrorPOSIXErrno";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v12[1] = v5;
  v11[2] = *MEMORY[0x277CCA450];
  v6 = v3 - 1;
  if ((v3 - 1) >= 0xA || ((0x37Fu >> v6) & 1) == 0)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: unimplemented log error case";
    qword_27DA527A8 = v3;
    __break(1u);
  }

  v7 = v5;
  v12[2] = off_2787ADFE0[v6];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OSLogErrorDomain" code:v3 userInfo:v8];

  return v9;
}

id _OSLogInternalError(uint64_t a1, void *a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = qword_22E081868[a1 - 4];
  v11[0] = @"_OSLogErrorInternalCode";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v12[0] = v5;
  v11[1] = @"_OSLogErrorInternalError";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v11[2] = *MEMORY[0x277CCA450];
  v7 = off_2787AE030[v4 - 1];
  v12[1] = v6;
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (!v3)
  {
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OSLogErrorDomain" code:v4 userInfo:v8];

  return v9;
}

void sub_22E03F8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E03FD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__958(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E0402B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _uuidpath_error_message(uint64_t a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (_uuidpath_error_message_onceToken != -1)
  {
    dispatch_once(&_uuidpath_error_message_onceToken, &__block_literal_global_18);
  }

  v11 = pthread_getspecific(_uuidpath_error_message_threadKey);
  v12 = v11;
  if (v11 && *v11 == a1 && *(v11 + 2) < 5u)
  {
    v13 = v11;
  }

  else
  {
    v13 = malloc_type_calloc(1uLL, 0x38uLL, 0x1010040662321C7uLL);
    *v13 = a1;
    pthread_setspecific(_uuidpath_error_message_threadKey, v13);
    if (v12)
    {
      _uuidpath_error_message_free(v12);
    }
  }

  result = vasprintf(&v13[2 * v13[2] + 4], a3, va);
  v15 = v13[2];
  *a2 = *&v13[2 * v15 + 4];
  v13[2] = v15 + 1;
  return result;
}

void _uuidpath_error_message_free(void *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = a1[i + 2];
      if (v4)
      {
        free(v4);
        v2 = *(a1 + 2);
      }
    }
  }

  free(a1);
}

_DWORD *uuidpath_map_header(const char *a1, uint64_t a2, size_t *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (!a2)
  {
    return 0;
  }

  if (!a1)
  {
    if (_os_trace_uuiddb_path_sandbox_can_read_data_once != -1)
    {
      dispatch_once(&_os_trace_uuiddb_path_sandbox_can_read_data_once, &__block_literal_global_94);
    }

    if (_os_trace_uuiddb_path_sandbox_can_read_data_can_read == 1)
    {
      _os_trace_uuiddb_get_path(0, a2, 1, __str);
      goto LABEL_8;
    }

    return 0;
  }

  v5 = snprintf(__str, 0x400uLL, "%s/", a1);
  _os_trace_uuiddb_get_pathsuffix(a2, 1, &__str[v5], 1024 - v5);
LABEL_8:
  result = _os_trace_mmap_at();
  if (result && (*a3 < 0x10 || *result != 1719109785 || result[1] != 2))
  {
    munmap(result, *a3);
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t uuidpath_resolve(char *a1, const void *a2, unint64_t a3, unint64_t a4, const char **a5, const char **a6, void *a7, void *a8)
{
  v15 = a1;
  if (!a1)
  {
    if (_os_trace_shared_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
    }

    v15 = _os_trace_uuidtext_path;
  }

  v16 = open(v15, 0);
  if (v16 == -1)
  {
    if (a8)
    {
      v20 = __error();
      _uuidpath_error_message(a3, a8, "Unable to open source path <%s> (%d)", v21, v22, v23, v24, v25, v15, *v20);
      return 0;
    }

    return a8;
  }

  v17 = v16;
  a8 = uuidpath_resolve_fd(v16, a2, a3, a4, a5, a6, a7, a8);
  if (close(v17) != -1)
  {
    return a8;
  }

  v18 = *__error();
  result = *__error();
  if (v18 != 9)
  {
    _os_assumes_log();
    return a8;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

const char *_os_log_resolve_format(__n128 *a1, int a2, unint64_t a3, const char **a4)
{
  v11 = 0;
  v5 = BYTE2(a2) & 0xE;
  if (v5 > 0xC)
  {
    goto LABEL_10;
  }

  v6 = 1 << v5;
  if ((v6 & 0x504) != 0)
  {
    v7 = uuidpath_resolve(0, a1, a3, 0, &v11, 0, 0, 0);
    if (!a4 || (v7 & 1) != 0)
    {
      return v11;
    }

    goto LABEL_11;
  }

  if ((v6 & 0x1010) == 0)
  {
LABEL_10:
    if (!a4)
    {
      return v11;
    }

LABEL_11:
    v9 = "<compose failure [UUID]>";
    goto LABEL_12;
  }

  v8 = uuidpath_sharedcache_resolve_fd(0xFFFFFFFFLL, a1, a3, 0, 0, &v11, 0, 0, 0, 0, 0);
  if (a4 && (v8 & 1) == 0)
  {
    v9 = "<compose failure [shared UUID]>";
LABEL_12:
    *a4 = v9;
  }

  return v11;
}

void sub_22E041B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E041DDC(void *a1)
{
  objc_begin_catch(a1);
  v1[10] = 8;
  [v1 invalidate];
  objc_end_catch();
  JUMPOUT(0x22E041DB0);
}

unint64_t _os_trace_utf8_len(char *a1, unint64_t a2)
{
  v2 = *a1;
  if ((*a1 & 0xF8) == 0xF0)
  {
    v3 = 4;
  }

  else if ((v2 & 0xF0) == 0xE0)
  {
    v3 = 3;
  }

  else
  {
    if ((v2 & 0xE0) != 0xC0)
    {
      return -1;
    }

    v3 = 2;
  }

  if (v3 <= a2)
  {
    v4 = 1;
    while ((a1[v4] & 0xC0) == 0x80)
    {
      if (v3 == ++v4)
      {
        return v3;
      }
    }

    return -1;
  }

  return -2;
}

size_t os_trace_blob_addns(uint64_t *a1, char *__src, unint64_t a3)
{
  if ((*(a1 + 10) & 2) == 0)
  {
    v3 = a3;
    v4 = __src;
    v6 = *(a1 + 2) + (*(a1 + 22) ^ 1);
    v7 = *(a1 + 4);
    if (v7)
    {
      v8 = (v7 - v6);
    }

    else
    {
      v9 = *(a1 + 3);
      LODWORD(v8) = v9 - v6;
      if (v9)
      {
        v8 = v8;
      }

      else
      {
        v8 = 0;
      }
    }

    if (v8 < a3)
    {
      v3 = v8;
    }

    if (*__src)
    {
      v10 = 0;
      v11 = MEMORY[0x277D85DE0];
      while (1)
      {
        v12 = 0;
        v13 = v3 - v10;
        if (v3 != v10)
        {
          while (1)
          {
            v14 = v4[v12];
            if (v14 < 1 || (*(v11 + 4 * v14 + 60) & 0x4200) == 0x200)
            {
              break;
            }

            if (v13 == ++v12)
            {
              v12 = v3 - v10;
              break;
            }
          }
        }

        if (v12 >= v13)
        {
          v15 = v3 - v10;
        }

        else
        {
          v15 = v12;
        }

        if ((*(a1 + 10) & 2) == 0)
        {
          v16 = *(a1 + 2);
          if (v15 > *(a1 + 3) - v16 - (*(a1 + 22) ^ 1u))
          {
            os_trace_blob_add_slow(a1, v4, v15);
          }

          else
          {
            memcpy((*a1 + v16), v4, v15);
            v17 = *(a1 + 2) + v15;
            *(a1 + 2) = v17;
            if ((*(a1 + 22) & 1) == 0)
            {
              *(*a1 + v17) = 0;
            }
          }
        }

        v18 = v15 + v10;
        if (v3 == v15 + v10)
        {
          return v3;
        }

        v19 = &v4[v15];
        v20 = *v19;
        if (!*v19)
        {
          return v18;
        }

        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v25 = _os_trace_utf8_len(v19, v3 - (v15 + v10));
        if (v25 == -1)
        {
          v10 = v18 + 4;
          if (v18 + 4 > v3)
          {
            return v18;
          }

          v29 = v20 & 0x7F;
          if ((*(v11 + 4 * (v20 & 0x7F) + 60) & 0x200) == 0)
          {
            qmemcpy(&v38, "\\M-", 3);
            HIBYTE(v38) = v20 & 0x7F;
            if ((*(a1 + 20) & 2) == 0)
            {
              v30 = *(a1 + 2);
              if (*(a1 + 3) - v30 - (*(a1 + 22) ^ 1u) > 3)
              {
                v31 = *a1;
                v32 = v38;
                goto LABEL_51;
              }

              p_srca = &v38;
LABEL_62:
              v35 = a1;
              v36 = 4;
LABEL_63:
              os_trace_blob_add_slow(v35, p_srca, v36);
            }

LABEL_54:
            v4 = v19 + 1;
            goto LABEL_55;
          }

          if (v29 == 127)
          {
            v33 = 63;
          }

          else
          {
            v33 = v29 + 64;
          }

          qmemcpy(&__srca, "\\M^", 3);
          HIBYTE(__srca) = v33;
          if ((*(a1 + 20) & 2) != 0)
          {
            goto LABEL_54;
          }

          v30 = *(a1 + 2);
          if (*(a1 + 3) - v30 - (*(a1 + 22) ^ 1u) <= 3)
          {
            p_srca = &__srca;
            goto LABEL_62;
          }

          v31 = *a1;
          v32 = __srca;
LABEL_51:
          *(v31 + v30) = v32;
          v24 = *(a1 + 2) + 4;
LABEL_52:
          *(a1 + 2) = v24;
          if ((*(a1 + 22) & 1) == 0)
          {
            *(*a1 + v24) = 0;
          }

          goto LABEL_54;
        }

        v26 = v25;
        if (v25 == -2)
        {
          return v18;
        }

        if ((*(a1 + 10) & 2) == 0)
        {
          v27 = *(a1 + 2);
          if (v25 > *(a1 + 3) - v27 - (*(a1 + 22) ^ 1u))
          {
            os_trace_blob_add_slow(a1, v19, v25);
          }

          else
          {
            memcpy((*a1 + v27), v19, v25);
            v28 = *(a1 + 2) + v26;
            *(a1 + 2) = v28;
            if ((*(a1 + 22) & 1) == 0)
            {
              *(*a1 + v28) = 0;
            }
          }
        }

        v10 = v26 + v18;
        if (v26 + v18 == v3)
        {
          return v3;
        }

        v4 = &v19[v26];
LABEL_55:
        v18 = v10;
        if (!*v4)
        {
          return v18;
        }
      }

      v10 = v18 + 3;
      if (v18 + 3 > v3)
      {
        return v18;
      }

      v21 = v20 + 64;
      if (v20 == 127)
      {
        v21 = 63;
      }

      v40 = 24156;
      v41 = v21;
      if ((*(a1 + 20) & 2) != 0)
      {
        goto LABEL_54;
      }

      v22 = *(a1 + 2);
      if (*(a1 + 3) - v22 - (*(a1 + 22) ^ 1u) <= 2)
      {
        p_srca = &v40;
        v35 = a1;
        v36 = 3;
        goto LABEL_63;
      }

      v23 = *a1 + v22;
      *v23 = v40;
      *(v23 + 2) = v41;
      v24 = *(a1 + 2) + 3;
      goto LABEL_52;
    }
  }

  return 0;
}

tm *os_trace_blob_add_localtime(tm *result, time_t a2, uint64_t a3, unsigned int a4)
{
  v8 = a2;
  if (BYTE2(result->tm_year) == 1)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: Can't use addf() in binary blobs";
    __break(1u);
  }

  else
  {
    v4 = result;
    if ((result->tm_year & 2) == 0)
    {
      memset(&v7, 0, sizeof(v7));
      result = localtime_r(&v8, &v7);
      if (result)
      {
        os_trace_blob_addf(v4, "%04d-%02d-%02d %02d:%02d:%02d", v7.tm_year + 1900, v7.tm_mon + 1, v7.tm_mday, v7.tm_hour, v7.tm_min, v7.tm_sec);
        if (a4 <= 2)
        {
          os_trace_blob_addf(v4, off_2787AE350[a4], a3);
        }

        return os_trace_blob_addf(v4, "%+05ld", v7.tm_gmtoff / 60 % 60 + 100 * (v7.tm_gmtoff / 3600));
      }
    }
  }

  return result;
}

BOOL ctf_is_type(const char *a1, size_t a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    if (strlen(BUILTIN_LIBRARY[v4]) == a2 && !strncmp(a1, BUILTIN_LIBRARY[v4], a2))
    {
      break;
    }

    v5 = v4++ < 3;
  }

  while (v4 != 4);
  return v5;
}

uint64_t ctf_type_parse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = ctf_type_resolve(a1, a2);
  if (v10 == -1)
  {
    v19 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v15 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v20 = 134217984;
    v21 = 0;
    _os_log_send_and_compose_impl(v16, &v19, &v22, 80, &dword_22E01A000, v15, 16, "assertion failure: nested_type != (-1L) -> %llu", &v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  if (ctf_type_size(a1, a2) > a5)
  {
    return 0;
  }

  v12 = ctf_type_kind(a1, v11);
  if (v12 >= 31)
  {
LABEL_13:
    v19 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v17 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v20 = 134217984;
    v21 = 0;
    _os_log_send_and_compose_impl(v18, &v19, &v22, 80, &dword_22E01A000, v17, 16, "assertion failure: kind < 31 -> %llu", &v20);
    _os_crash_msg();
    __break(1u);
  }

  v13 = ctf_formatters[v12];
  if (!v13)
  {
    return 0;
  }

  return v13(a1, a2, a3, a4, a5);
}

uint64_t ctf_enum(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = ctf_type_size(a1, a2);
  if (v10 > a5)
  {
    v16[0] = 0;
    memset(v19, 0, 80);
    v14 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    LODWORD(v17) = 134217984;
    *(&v17 + 4) = 0;
    _os_log_send_and_compose_impl(v15, v16, v19, 80, &dword_22E01A000, v14, 16, "assertion failure: enum_size <= size -> %llu", &v17);
    _os_crash_msg();
    __break(1u);
  }

  if (v10 > 3)
  {
    if (v10 == 4)
    {
      v11 = *a4;
      goto LABEL_12;
    }

    if (v10 == 8)
    {
      v11 = *a4;
      if (HIDWORD(v11))
      {
        _os_assumes_log();
        goto LABEL_18;
      }

LABEL_12:
      if (ctf_enum_name(a1, a2, v11))
      {
        os_trace_blob_addf(a3, "[%#llx %s]");
        return 1;
      }

      if (v11)
      {
        v18 = 0;
        v16[2] = 1;
        *&v17 = v19;
        *(&v17 + 1) = 0x40000000000;
        v16[1] = &v17;
        v16[0] = v11;
        if (ctf_enum_iter(a1, a2, ctf_enum_flag_parse, v16) == 1)
        {
          os_trace_blob_addf(a3, "[%#llx %s]");
        }

        else
        {
          os_trace_blob_addf(a3, "%#llx");
        }

        if ((v18 & 0x100000000) != 0)
        {
          v13 = v17;
          *&v17 = 3954044928;
          WORD2(v18) = 0;
          free(v13);
        }

        return 1;
      }

LABEL_18:
      os_trace_blob_addf(a3, "%#llx");
      return 1;
    }
  }

  else
  {
    if (v10 == 1)
    {
      v11 = *a4;
      goto LABEL_12;
    }

    if (v10 == 2)
    {
      v11 = *a4;
      goto LABEL_12;
    }
  }

  _os_assumes_log();
  return 0;
}

BOOL ctf_enum_flag_parse(char *__s, int a2, uint64_t a3)
{
  v5 = *a3;
  if ((*a3 & a2) != 0)
  {
    v19 = v3;
    v20 = v4;
    if ((*(a3 + 16) & 1) == 0)
    {
      v9 = *(a3 + 8);
      __src = 124;
      if ((*(v9 + 20) & 2) == 0)
      {
        v10 = *(v9 + 8);
        if (*(v9 + 12) == v10 + (*(v9 + 22) ^ 1))
        {
          os_trace_blob_add_slow(v9, &__src, 1uLL);
        }

        else
        {
          *(*v9 + v10) = 124;
          v11 = *(v9 + 8) + 1;
          *(v9 + 8) = v11;
          if ((*(v9 + 22) & 1) == 0)
          {
            *(*v9 + v11) = 0;
          }
        }
      }
    }

    *(a3 + 16) = 0;
    v12 = *(a3 + 8);
    v13 = strlen(__s);
    if ((*(v12 + 20) & 2) == 0)
    {
      v14 = v13;
      v15 = *(v12 + 8);
      if (v13 > *(v12 + 12) - v15 - (*(v12 + 22) ^ 1u))
      {
        os_trace_blob_add_slow(v12, __s, v13);
      }

      else
      {
        memcpy((*v12 + v15), __s, v13);
        v16 = *(v12 + 8) + v14;
        *(v12 + 8) = v16;
        if ((*(v12 + 22) & 1) == 0)
        {
          *(*v12 + v16) = 0;
        }
      }
    }

    v5 = *a3 ^ a2;
    *a3 = v5;
  }

  return v5 == 0;
}

BOOL ctf_recursive(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v14[0] = a1;
  v14[1] = a3;
  v14[2] = a4;
  v15 = 0x10000;
  LOWORD(v15) = a5;
  __src = 123;
  if ((*(a3 + 20) & 2) == 0)
  {
    v8 = *(a3 + 8);
    if (*(a3 + 12) == v8 + (*(a3 + 22) ^ 1))
    {
      os_trace_blob_add_slow(a3, &__src, 1uLL);
    }

    else
    {
      *(*a3 + v8) = 123;
      v9 = *(a3 + 8) + 1;
      *(a3 + 8) = v9;
      if ((*(a3 + 22) & 1) == 0)
      {
        *(*a3 + v9) = 0;
      }
    }
  }

  v10 = ctf_member_iter(a1, a2, ctf_member_parse, v14);
  __src = 125;
  if ((*(a3 + 20) & 2) == 0)
  {
    v11 = *(a3 + 8);
    if (*(a3 + 12) == v11 + (*(a3 + 22) ^ 1))
    {
      os_trace_blob_add_slow(a3, &__src, 1uLL);
    }

    else
    {
      *(*a3 + v11) = 125;
      v12 = *(a3 + 8) + 1;
      *(a3 + 8) = v12;
      if ((*(a3 + 22) & 1) == 0)
      {
        *(*a3 + v12) = 0;
      }
    }
  }

  return v10 == 0;
}

uint64_t ctf_member_parse(const char *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v7 = a2;
  v27 = *MEMORY[0x277D85DE8];
  v9 = ctf_type_size(*a4, a2);
  if ((v9 - 1) >= 0xFFFF)
  {
    v19 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v16 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v20 = 134217984;
    v21 = 0;
    _os_log_send_and_compose_impl(v17, &v19, &v22, 80, &dword_22E01A000, v16, 16, "assertion failure: 0 < member_size && member_size <= 65535 -> %llu", &v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v4 = v9;
  if ((*(a4 + 26) & 1) == 0)
  {
    v10 = a4[1];
    if ((*(v10 + 20) & 2) == 0)
    {
      v11 = *(v10 + 8);
      if (*(v10 + 12) - v11 - (*(v10 + 22) ^ 1u) <= 1)
      {
        goto LABEL_17;
      }

      *(*v10 + v11) = 8236;
      v12 = *(v10 + 8) + 2;
      *(v10 + 8) = v12;
      if ((*(v10 + 22) & 1) == 0)
      {
        *(*v10 + v12) = 0;
      }
    }
  }

  while (1)
  {
    *(a4 + 26) = 0;
    os_trace_blob_addf(a4[1], "%s = ", a1);
    v13 = a4[2];
    v14 = v13 + (a3 >> 3);
    if (v14 + v4 <= v13 + *(a4 + 12))
    {
      break;
    }

LABEL_13:
    v19 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v20 = 134217984;
    v21 = 0;
    _os_log_send_and_compose_impl(v18, &v19, &v22, 80, &dword_22E01A000, v7, 16, "assertion failure: ((char *)field_pointer + member_size) <= ((char *)arg->data + arg->size) -> %llu", &v20);
    v10 = _os_crash_msg();
    __break(1u);
LABEL_17:
    os_trace_blob_add_slow(v10, ", ", 2uLL);
  }

  return ctf_type_parse(*a4, v7, a4[1], v14, v4) - 1;
}

uint64_t ctf_array(uint64_t (***a1)(uint64_t), uint64_t a2, uint64_t a3, const char *a4, unsigned int a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  if (ctf_array_info(a1, a2, v40))
  {
    *v42 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    __src = 0u;
    v28 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    LODWORD(v43[0]) = 134217984;
    *(v43 + 4) = 0;
    _os_log_send_and_compose_impl(v29, v42, &__src, 80, &dword_22E01A000, v28, 16, "assertion failure: error == 0 -> %llu", v43);
    _os_crash_msg();
    __break(1u);
    goto LABEL_43;
  }

  v5 = v40[0];
  if (ctf_type_kind(a1, v40[0]) != 1)
  {
    goto LABEL_16;
  }

  memset(v43, 0, 12);
  if (ctf_type_encoding(a1, v5, v43))
  {
    v39 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    __src = 0u;
    a3 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    *v42 = 134217984;
    *&v42[4] = 0;
    _os_log_send_and_compose_impl(v36, &v39, &__src, 80, &dword_22E01A000, a3, 16, "assertion failure: error == 0 -> %llu", v42);
    _os_crash_msg();
    __break(1u);
    goto LABEL_63;
  }

  if ((v43[0] & 2) == 0)
  {
    goto LABEL_16;
  }

  v6 = v41;
  if (v41 > a5)
  {
    v39 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    __src = 0u;
    v37 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    *v42 = 134217984;
    *&v42[4] = 0;
    _os_log_send_and_compose_impl(v38, &v39, &__src, 80, &dword_22E01A000, v37, 16, "assertion failure: array_info.ctr_nelems <= size -> %llu", v42);
    _os_crash_msg();
    __break(1u);
  }

  if (!v41)
  {
LABEL_16:
    v17 = ctf_type_size(a1, v5);
    if ((v17 - 1) < 0xFFFF)
    {
      v6 = v17;
      v7 = v41;
      if (v41 * v17 <= a5)
      {
        LOBYTE(__src) = 91;
        if ((*(a3 + 20) & 2) != 0)
        {
          goto LABEL_22;
        }

        v18 = *(a3 + 8);
        if (*(a3 + 12) != v18 + (*(a3 + 22) ^ 1))
        {
          *(*a3 + v18) = 91;
          v19 = *(a3 + 8) + 1;
          *(a3 + 8) = v19;
          if ((*(a3 + 22) & 1) == 0)
          {
            *(*a3 + v19) = 0;
          }

LABEL_22:
          if (v7)
          {
LABEL_23:
            v20 = 0;
            v21 = 0;
            while ((ctf_type_parse(a1, v5, a3, &a4[v20], v6) & 1) != 0)
            {
              if (v21 < (v7 - 1) && (*(a3 + 20) & 2) == 0)
              {
                v22 = *(a3 + 8);
                if (*(a3 + 12) - v22 - (*(a3 + 22) ^ 1u) <= 1)
                {
                  os_trace_blob_add_slow(a3, ", ", 2uLL);
                }

                else
                {
                  *(*a3 + v22) = 8236;
                  v23 = *(a3 + 8) + 2;
                  *(a3 + 8) = v23;
                  if ((*(a3 + 22) & 1) == 0)
                  {
                    *(*a3 + v23) = 0;
                  }
                }
              }

              ++v21;
              v20 += v6;
              if (v7 == v21)
              {
                goto LABEL_52;
              }
            }

            if ((*(a3 + 20) & 2) != 0)
            {
              goto LABEL_36;
            }

            v24 = *(a3 + 8);
            if (*(a3 + 12) - v24 - (*(a3 + 22) ^ 1u) > 6)
            {
              v25 = (*a3 + v24);
              *(v25 + 3) = 1047687026;
              *v25 = 1920099644;
              v26 = *(a3 + 8) + 7;
              *(a3 + 8) = v26;
              if (*(a3 + 22))
              {
LABEL_36:
                v27 = 0;
                goto LABEL_53;
              }

              v27 = 0;
              *(*a3 + v26) = 0;
LABEL_53:
              LOBYTE(__src) = 93;
              if ((*(a3 + 20) & 2) == 0)
              {
                v33 = *(a3 + 8);
                if (*(a3 + 12) == v33 + (*(a3 + 22) ^ 1))
                {
                  os_trace_blob_add_slow(a3, &__src, 1uLL);
                }

                else
                {
                  *(*a3 + v33) = 93;
                  v34 = *(a3 + 8) + 1;
                  *(a3 + 8) = v34;
                  if ((*(a3 + 22) & 1) == 0)
                  {
                    *(*a3 + v34) = 0;
                  }
                }
              }

              return v27;
            }

LABEL_63:
            os_trace_blob_add_slow(a3, "<error>", 7uLL);
            goto LABEL_36;
          }

LABEL_52:
          v27 = 1;
          goto LABEL_53;
        }

LABEL_51:
        os_trace_blob_add_slow(a3, &__src, 1uLL);
        if (v7)
        {
          goto LABEL_23;
        }

        goto LABEL_52;
      }

LABEL_47:
      *v42 = 0;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      __src = 0u;
      a3 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      LODWORD(v43[0]) = 134217984;
      *(v43 + 4) = 0;
      _os_log_send_and_compose_impl(v32, v42, &__src, 80, &dword_22E01A000, a3, 16, "assertion failure: array_info.ctr_nelems * (uint16_t)element_size <= size -> %llu", v43);
      _os_crash_msg();
      __break(1u);
      goto LABEL_51;
    }

LABEL_43:
    *v42 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    __src = 0u;
    v30 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    LODWORD(v43[0]) = 134217984;
    *(v43 + 4) = 0;
    _os_log_send_and_compose_impl(v31, v42, &__src, 80, &dword_22E01A000, v30, 16, "assertion failure: 0 < element_size && element_size <= 65535 -> %llu", v43);
    _os_crash_msg();
    __break(1u);
    goto LABEL_47;
  }

  v12 = 0;
  LODWORD(v7) = 0;
  v13 = MEMORY[0x277D85DE0];
  while (1)
  {
    v14 = a4[v12];
    if (!a4[v12])
    {
      break;
    }

    if ((v14 & 0x80000000) != 0)
    {
      v15 = __maskrune(v14, 0x40000uLL);
    }

    else
    {
      v15 = *(v13 + 4 * v14 + 60) & 0x40000;
    }

    v7 = (v7 + 1);
    v12 = v7;
    if (v15)
    {
      v16 = v6 > v7;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      goto LABEL_16;
    }
  }

  os_trace_blob_addf(a3, "%.*s", v6, a4);
  return 1;
}

uint64_t ctf_pointer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = ctf_type_size(a1, a2);
  if (v7 > a5)
  {
    v11 = 0;
    memset(v14, 0, sizeof(v14));
    v9 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v12 = 134217984;
    v13 = 0;
    _os_log_send_and_compose_impl(v10, &v11, v14, 80, &dword_22E01A000, v9, 16, "assertion failure: type_size <= size -> %llu", &v12);
    _os_crash_msg();
    __break(1u);
  }

  if (v7 == 8)
  {
    os_trace_blob_addf(a3, "0x%llx");
    return 1;
  }

  if (v7 == 4)
  {
    os_trace_blob_addf(a3, "0x%x");
    return 1;
  }

  return 0;
}

uint64_t ctf_float(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, unsigned int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = ctf_type_size(a1, a2);
  if (v8 > a5)
  {
    v13 = 0;
    memset(v16, 0, sizeof(v16));
    v11 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v14 = 134217984;
    v15 = 0;
    _os_log_send_and_compose_impl(v12, &v13, v16, 80, &dword_22E01A000, v11, 16, "assertion failure: type_size <= size -> %llu", &v14);
    _os_crash_msg();
    __break(1u);
  }

  if (v8 == 8)
  {
    v9 = *a4;
    goto LABEL_6;
  }

  if (v8 == 4)
  {
    v9 = *a4;
LABEL_6:
    os_trace_blob_addf(a3, "%.20g", v9);
    return 1;
  }

  return 0;
}

uint64_t ctf_integer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = ctf_type_size(a1, a2);
  if (v7 > a5)
  {
    v12 = 0;
    memset(v15, 0, sizeof(v15));
    v10 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v13 = 134217984;
    v14 = 0;
    _os_log_send_and_compose_impl(v11, &v12, v15, 80, &dword_22E01A000, v10, 16, "assertion failure: type_size <= size -> %llu", &v13);
    _os_crash_msg();
    __break(1u);
  }

  v8 = v7;
  result = 0;
  if (v8 > 3)
  {
    if (v8 != 4)
    {
      if (v8 != 8)
      {
        return result;
      }

      os_trace_blob_addf(a3, "%#llx");
      return 1;
    }

LABEL_9:
    os_trace_blob_addf(a3, "%#x");
    return 1;
  }

  if (v8 == 1 || v8 == 2)
  {
    goto LABEL_9;
  }

  return result;
}

void _invalidate(void *a1, uint64_t a2, void *a3)
{
  v8 = a1;
  v5 = a3;
  [v8 setInvalidated:1];
  v6 = [v8 invalidationHandler];

  if (v6)
  {
    v7 = [v8 invalidationHandler];
    (v7)[2](v7, a2, v5);

    [v8 setInvalidationHandler:0];
  }
}

void sub_22E047F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 144), 8);
  _Unwind_Resume(a1);
}

void logging_support_test_oslog(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = a1;
    _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LoggingSupportTest: %s", &v2, 0xCu);
  }
}

void sub_22E04B2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id os_log_fmt_object_for_data(uint64_t a1, int a2, char *a3, int a4, uint64_t a5)
{
  if (os_log_fmt_object_for_data_onceToken != -1)
  {
    dispatch_once(&os_log_fmt_object_for_data_onceToken, &__block_literal_global_2210);
  }

  if ((*(a1 + 8) & 0x10) != 0)
  {
    scalar = os_log_fmt_read_scalar(a1, a3, a4);
  }

  else
  {
    scalar = 0;
  }

  switch(*(a1 + 10))
  {
    case 1:
      v23 = [os_log_fmt_object_for_data__NSNumber alloc];

      return [v23 initWithChar:scalar];
    case 2:
      v24 = [os_log_fmt_object_for_data__NSNumber alloc];

      return [v24 initWithUnsignedChar:scalar];
    case 3:
      v21 = [os_log_fmt_object_for_data__NSNumber alloc];

      return [v21 initWithShort:scalar];
    case 4:
      v22 = [os_log_fmt_object_for_data__NSNumber alloc];

      return [v22 initWithUnsignedShort:scalar];
    case 5:
    case 7:
    case 8:
      goto LABEL_31;
    case 6:
      goto LABEL_23;
    case 9:
      if (a5 == 4)
      {
LABEL_31:
        v19 = [os_log_fmt_object_for_data__NSNumber alloc];

        result = [v19 initWithInt:scalar];
      }

      else
      {
        if (a5 == 8)
        {
          goto LABEL_28;
        }

LABEL_34:
        v20 = [os_log_fmt_object_for_data__NSNumber alloc];

        result = [v20 initWithLongLong:scalar];
      }

      break;
    case 0xA:
    case 0xD:
      if (a5 == 4)
      {
LABEL_23:
        v17 = [os_log_fmt_object_for_data__NSNumber alloc];

        result = [v17 initWithUnsignedInt:scalar];
      }

      else if (a5 == 8)
      {
LABEL_28:
        v18 = [os_log_fmt_object_for_data__NSNumber alloc];

        result = [v18 initWithLong:scalar];
      }

      else
      {
LABEL_17:
        v15 = [os_log_fmt_object_for_data__NSNumber alloc];

        result = [v15 initWithUnsignedLongLong:scalar];
      }

      break;
    case 0xB:
      goto LABEL_34;
    case 0xC:
      goto LABEL_17;
    case 0xE:
    case 0xF:
      v16 = [os_log_fmt_object_for_data__NSNumber alloc];

      return [v16 initWithDouble:*&scalar];
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
      if (a2 == 3)
      {
        v11 = [os_log_fmt_object_for_data__NSData alloc];

        return [v11 initWithBytes:a3 length:a4];
      }

      else
      {
        v13 = os_log_fmt_object_for_data__NSString;
        if (a4)
        {
          v14 = [os_log_fmt_object_for_data__NSString alloc];

          return [v14 initWithBytes:a3 length:(a4 - 1) encoding:4];
        }

        else
        {

          return objc_alloc_init(v13);
        }
      }

    default:
      return 0;
  }

  return result;
}

Class __os_log_fmt_object_for_data_block_invoke()
{
  os_log_fmt_object_for_data__NSString = objc_getClass("NSString");
  os_log_fmt_object_for_data__NSNumber = objc_getClass("NSNumber");
  result = objc_getClass("NSData");
  os_log_fmt_object_for_data__NSData = result;
  return result;
}

unint64_t _os_log_fmt_plugin_annotated(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char *a5, int a6, char a7)
{
  v29[256] = *MEMORY[0x277D85DE8];
  plugin = os_log_fmt_get_plugin(*(a3 + 32), *(a3 + 14));
  v15 = plugin;
  if (plugin)
  {
    if (plugin[3] && (v16 = os_log_fmt_object_for_data(a3, *a4 >> 4, a5, a6, a2)) != 0)
    {
      v17 = v16;
      v28 = 1;
      BYTE4(v28) = a7;
      __strlcpy_chk();
      v18 = (*(v15 + 24))(v29, v17, &v28);
      v19 = [v18 string];
      v15 = v19 != 0;
      if (v19)
      {
        v20 = v19;
        v21 = v20;
        v22 = [v20 _fastCStringContents:1];
        if (v22)
        {
          os_trace_blob_addns(a1, v22, 0xFFFFFFFFFFFFFFFFLL);
        }

        else
        {
          v23 = [v20 lengthOfBytesUsingEncoding:4];
          v29[0] = v23;
          v24 = *(a1 + 8);
          v25 = *(a1 + 12) - v24 - (*(a1 + 22) ^ 1);
          if (v23 > v25)
          {
            os_trace_blob_grow(a1, v23);
            v24 = *(a1 + 8);
            v25 = *(a1 + 12) - v24 - (*(a1 + 22) ^ 1);
            if (v23 > v25)
            {
              *(a1 + 20) |= 2u;
            }
          }

          [v20 getBytes:*a1 + v24 maxLength:v25 usedLength:v29 encoding:4 options:1 range:0 remainingRange:{objc_msgSend(v20, "length"), 0}];
          v26 = *(a1 + 8) + LODWORD(v29[0]);
          *(a1 + 8) = v26;
          if ((*(a1 + 22) & 1) == 0)
          {
            *(*a1 + v26) = 0;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v15;
}

void *os_log_fmt_get_plugin(const char *a1, size_t a2)
{
  if (_dyld_dlsym_blocked())
  {
    return 0;
  }

  if (qword_280B575A8 != -1)
  {
    dispatch_once_f(&qword_280B575A8, 0, _os_trace_formatters_list);
  }

  v4 = qword_280B575A0;
  if (!qword_280B575A0)
  {
    return 0;
  }

  v5 = 0;
  v6 = _formatters;
  while (1)
  {
    v7 = (v5 + v4) >> 1;
    v8 = (v6 + 40 * v7);
    v9 = v8[1];
    v10 = strncasecmp(a1, v9, a2);
    if (!v10)
    {
      break;
    }

LABEL_9:
    if (v10 >= 0)
    {
      v5 = v7 + 1;
    }

    else
    {
      v4 = (v5 + v4) >> 1;
    }

    if (v5 >= v4)
    {
      return 0;
    }
  }

  if (v9[a2])
  {
    v10 = -v9[a2];
    goto LABEL_9;
  }

  if (*v8 != -1)
  {
    dispatch_once_f((v6 + 40 * v7), (v6 + 40 * v7), _os_trace_load_formatter);
  }

  return v8;
}

void *_os_trace_load_formatter(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x400uLL, "%sliblog_%s.dylib", (&plugin_dirs)[2 * *(a1 + 16)], *(a1 + 8));
  result = dlopen(__str, 6);
  *(a1 + 16) = result;
  if (result)
  {
    *(a1 + 24) = dlsym(result, "OSLogCopyFormattedString");
    result = dlsym(*(a1 + 16), "OSStateCreateStringWithData");
    *(a1 + 32) = result;
  }

  return result;
}

void _os_trace_formatters_list()
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v0 = getenv("OS_ACTIVITY_FORMATTER");
  if (!v0 || strcmp(v0, "disable"))
  {
    v1 = 0;
    v2 = 1;
    do
    {
      v3 = v2;
      v4 = opendir((&plugin_dirs)[2 * v1]);
      v5 = v4;
      if (v4)
      {
        for (i = readdir(v4); i; i = readdir(v5))
        {
          if (i->d_type == 8)
          {
            v7 = _os_trace_formatter_record(v18[3], i->d_name, v1, v14 + 3, v10 + 3);
            v18[3] = v7;
          }
        }

        closedir(v5);
      }

      v2 = 0;
      v1 = 1;
    }

    while ((v3 & 1) != 0);
    v21 = 0;
    v22 = 0;
    if (_dyld_get_shared_cache_uuid())
    {
      dyld_shared_cache_iterate_text();
    }

    qsort_b(v18[3], v14[3], 0x28uLL, &__block_literal_global_63);
    v8 = v14[3];
    _formatters = v18[3];
    qword_280B575A0 = v8;
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void sub_22E04C08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v17 - 88), 8);
  _Unwind_Resume(a1);
}

uint64_t _os_trace_formatter_record(uint64_t a1, char *__s1, uint64_t a3, uint64_t *a4, void *a5)
{
  if (!strncmp(__s1, "liblog_", 7uLL) && !strchr(__s1, 47))
  {
    v11 = strrchr(__s1, 46);
    if (v11)
    {
      v12 = v11;
      if (!strcmp(v11, ".dylib"))
      {
        v13 = strndup(__s1 + 7, v12 - (__s1 + 7));
        v14 = *a4;
        if (*a4)
        {
          v15 = 8;
          v16 = *a4;
          while (strcasecmp(*(a1 + v15), v13))
          {
            v15 += 40;
            if (!--v16)
            {
              goto LABEL_10;
            }
          }

          free(v13);
        }

        else
        {
LABEL_10:
          if (v14 == *a5)
          {
            *a5 = v14 + 8;
            a1 = _os_trace_realloc_typed();
            v14 = *a4;
          }

          *a4 = v14 + 1;
          v17 = (a1 + 40 * v14);
          *v17 = 0;
          v17[1] = v13;
          v17[3] = 0;
          v17[4] = 0;
          v17[2] = a3;
        }
      }
    }
  }

  return a1;
}

uint64_t ___os_trace_formatters_list_block_invoke(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = &(&plugin_dirs)[2 * v4];
    if (*(v7 + 8) != 1 || (*(v3 + 56) & 1) == 0)
    {
      v8 = *v7;
      v9 = strlen(*v7);
      v10 = *(a2 + 40);
      result = strncmp(v10, v8, v9);
      if (!result)
      {
        result = _os_trace_formatter_record(*(*(*(v3 + 32) + 8) + 24), &v10[v9], v4, (*(*(v3 + 40) + 8) + 24), (*(*(v3 + 48) + 8) + 24));
        *(*(*(v3 + 32) + 8) + 24) = result;
      }
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return result;
}

uint64_t requiresLogicalExpression(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if ([v2 compoundPredicateType] == 2)
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v3 = [v2 subpredicates];
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        v5 = *v9;
        while (2)
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v9 != v5)
            {
              objc_enumerationMutation(v3);
            }

            if (requiresLogicalExpression(*(*(&v8 + 1) + 8 * i)))
            {
              v4 = 1;
              goto LABEL_15;
            }
          }

          v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

char *_ctf_open_buffer(unsigned __int16 *a1, uint64_t a2)
{
  if (*a1 != 53233 || *(a1 + 2) != 4)
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  v6 = ".SUNW_ctf";
  v7 = xmmword_22E0816F0;
  v8 = a1;
  v9 = a2;
  v10 = xmmword_22E081700;
  v5 = 0;
  return ctf_bufopen(&v6, 0, 0, &v5);
}

void sub_22E05024C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _logHandle()
{
  if (_logHandle_onceToken != -1)
  {
    dispatch_once(&_logHandle_onceToken, &__block_literal_global_246);
  }

  v1 = _logHandle_handle;

  return v1;
}

uint64_t ___logHandle_block_invoke()
{
  v0 = os_log_create("com.apple.loggingsupport", "os_log_statistics");
  v1 = _logHandle_handle;
  _logHandle_handle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_22E0508C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2699(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _state_support_decode_data(uint64_t a1)
{
  if ((*a1 - 2) >= 2)
  {
    if (*a1 == 1 && *(a1 + 4))
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a1 + 200 length:*(a1 + 4) freeWhenDone:0];
      v8 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:0];
      v5 = [v8 description];

      objc_autoreleasePoolPop(v6);
      return v5;
    }

    return 0;
  }

  v2 = strlen((a1 + 8));
  plugin = os_log_fmt_get_plugin((a1 + 8), v2);
  if (!plugin)
  {
    return 0;
  }

  v4 = plugin[4];
  if (!v4)
  {
    return 0;
  }

  return v4(a1 + 72, *(a1 + 4), a1 + 200);
}

uint64_t _state_support_validate_payload(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 - 48) < 0xC8)
  {
    return 0;
  }

  if (v1 - 248 >= *(a1 + 68))
  {
    return a1 + 64;
  }

  return 0;
}

_BYTE *_state_support_create_message(uint64_t a1, void *a2)
{
  if (*a1 != 24579)
  {
    return 0;
  }

  if (*(a1 + 4))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 0xF8;
  v5 = v3 - 248;
  if (!v4 || v5 < *(a1 + 68))
  {
    return 0;
  }

  v9 = _state_support_decode_data(a1 + 64);
  v10 = strnlen((a1 + 200), 0x3FuLL);
  v11 = [v9 lengthOfBytesUsingEncoding:4];
  if (v10 | v11)
  {
    v12 = v10 + 1;
    v13 = _os_trace_malloc_typed();
    v6 = v13;
    if (v10)
    {
      memcpy(v13, (a1 + 200), v10);
      v6[v10] = 10;
      v6[v12] = 0;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      [v9 getCString:&v6[v12] maxLength:v11 + 1 encoding:4];
    }
  }

  else
  {
    v12 = 0;
    v6 = 0;
  }

  if (a2)
  {
    *a2 = v12 + v11;
  }

  return v6;
}

uint64_t enumerate_boots(void *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    if (_os_trace_shared_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
    }

    v11 = _timesync_db_openat(-2, _os_trace_timesync_path);
    if (!v11)
    {
      v30 = __error();
      v31 = *v30;
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open timesync database: %s (%d)", strerror(*v30), v31];
      v22 = create_timesync_error(v31, v32);

      v23 = 0;
      goto LABEL_28;
    }

    v10 = v11;
    v35 = a2;
    v36 = 0;
    v8 = -1;
    goto LABEL_9;
  }

  snprintf(__str, 0x400uLL, "%s/timesync", [v5 fileSystemRepresentation]);
  v7 = open(__str, 0);
  v8 = v7;
  if (v7 == -1)
  {
    v24 = __error();
    v25 = *v24;
    [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open archive at path: %@: %s (%d)", v5, strerror(*v24), v25];
    goto LABEL_23;
  }

  v9 = _timesync_db_openat(v7, ".");
  if (!v9)
  {
    v26 = __error();
    v25 = *v26;
    [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open timesync database: %s (%d)", strerror(*v26), v25, v34];
    v27 = LABEL_23:;
    v22 = create_timesync_error(v25, v27);

    v23 = 0;
    if (v8 < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v10 = v9;
  v35 = a2;
  v36 = v5;
LABEL_9:
  v12 = v6;
  v13 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v38 = ___enumerate_boots_impl_block_invoke;
  v39 = &unk_2787AE7D0;
  v14 = v13;
  v40 = v14;
  while (*(v10 + 6))
  {
    v38(v37, (v10 + 14));
    _timesync_advance_boot(v10);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v42 objects:__str count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v43;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v42 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v12[2](v12, v20);
        objc_autoreleasePoolPop(v21);
      }

      v17 = [v15 countByEnumeratingWithState:&v42 objects:__str count:16];
    }

    while (v17);
  }

  _timesync_db_close(v10);
  v22 = 0;
  v23 = 1;
  a2 = v35;
  v5 = v36;
  if (v8 < 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (close(v8) == -1)
  {
    v28 = *__error();
    result = *__error();
    if (v28 == 9)
    {
      qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DA527A8 = result;
      __break(1u);
      return result;
    }

    _os_assumes_log();
  }

LABEL_28:
  if (a2)
  {
    if ((v23 & 1) == 0)
    {
      v33 = v22;
      *a2 = v22;
    }
  }

  return v23;
}

id create_timesync_error(int a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OSLogTimesyncErrorDomain" code:a1 userInfo:v5];

  return v6;
}

void ___enumerate_boots_impl_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[OSLogBootEntry alloc] init:a2];
  [*(a1 + 32) addObject:v3];
}

void __OSLogLogdAdminConnection_block_invoke()
{
  mach_service = xpc_connection_create_mach_service("com.apple.logd.admin", 0, 2uLL);
  v1 = OSLogLogdAdminConnection_xconn;
  OSLogLogdAdminConnection_xconn = mach_service;

  if (OSLogLogdAdminConnection_xconn)
  {
    xpc_connection_set_event_handler(OSLogLogdAdminConnection_xconn, &__block_literal_global_62);
    v2 = OSLogLogdAdminConnection_xconn;

    xpc_connection_activate(v2);
  }
}

uint64_t _OSLogUUIDMapAddFromCatalog(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___OSLogUUIDMapAddFromCatalog_block_invoke;
  v8[3] = &__block_descriptor_40_e69_v16__0__catalog_procinfo_s_SSiQII_16C__16C___hashtable___hashtable__8l;
  v4 = *(a1 + 40);
  v8[4] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v10 = ___catalog_for_each_procinfo_block_invoke;
  v11 = &unk_2787AD738;
  v12 = v8;
  if (v4)
  {
    for (i = *(v4 + 16); i; i = *i)
    {
      (v10)(v9, i[4]);
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___OSLogUUIDMapAddFromCatalog_block_invoke_3;
  v7[3] = &__block_descriptor_40_e15_v24__0Q8_16C_16l;
  v7[4] = a2;
  return _catalog_for_each_uuid(a1, v7);
}

void _OSLogGenerateXattrs(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v9 = ___OSLogGenerateXattrs_block_invoke;
  v10 = &__block_descriptor_40_e767_B16__0__tracev3_chunk_s__tracev3_chunk_preamble_s_IIQ_____tracev3_chunk_header_s__mach_timebase_info_II_QqiiiI_tracev3_subchunk_preamble_s_II__tracev3_subchunk_continuous_s_Q__tracev3_subchunk_preamble_s_II__tracev3_subchunk_systeminfo_s_ii_16c__32c___tracev3_subchunk_preamble_s_II__tracev3_subchunk_generation_s__16C_ii__tracev3_subchunk_preamble_s_II__tracev3_subchunk_timezone_s__48c____tracev3_chunk_catalog_s_SSSS_0C___tracev3_chunk_catalog_v2_s_SSSSS_3S_Q_0C___tracev3_chunk_log_preamble_s_QIC_3C___tracev3_chunk_firehose_s_QICC_2C__0C___tracev3_chunk_firehose_old_s_QiCC_0C___tracev3_chunk_oversize_s_QIC_3C_QISS_0C___tracev3_chunk_oversize_old_s_QISS_0C___tracev3_chunk_statedump_s_QIC_3C_QQ_16C__0C___tracev3_chunk_simple_s_QICC_2C_QQQ_16C__16C__0C___0C___8l;
  v11 = a3;
  v5 = v8;
  v6 = 0;
  do
  {
    if (a2 - v6 < 0x10)
    {
      break;
    }

    v7 = *(a1 + v6 + 8);
    if (a2 - v6 - 16 < v7)
    {
      break;
    }

    if (!(v9)(v5))
    {
      break;
    }

    v6 = (v6 + v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  }

  while (v6 - 1 < a2);
}

void _OSLogWarningMessage(void *a1, const char *a2, ...)
{
  va_start(va, a2);
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1;
    vsnprintf(__str, 0x100uLL, a2, va);
    v3[2](v3, __str);
  }
}

uint64_t OSLogCreateArchive(const char *a1, uint64_t a2, int64_t a3, uint64_t a4, void *a5)
{
  v5 = a4;
  v9 = a5;
  v10 = _InitArchiveDictionary(a1, a2, a3, v5);
  ArchiveWithDictionary = OSLogCreateArchiveWithDictionary(v10, v9);

  return ArchiveWithDictionary;
}

id _InitArchiveDictionary(const char *a1, uint64_t a2, int64_t a3, BOOL a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "path", a1);
  if (a2)
  {
    xpc_dictionary_set_uint64(v8, "base_size", a2);
  }

  xpc_dictionary_set_int64(v8, "base_time", a3);
  xpc_dictionary_set_BOOL(v8, "livedata", a4);

  return v8;
}

uint64_t OSLogCreateArchiveWithDictionary(void *a1, void *a2)
{
  v57[5] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  string = xpc_dictionary_get_string(v3, "path");
  if (string)
  {
    v6 = string;
  }

  else
  {
    v6 = ".";
  }

  v55 = 0;
  if (strcasestr(v6, ".logarchive"))
  {
    v7 = strdup(v6);
    v55 = v7;
  }

  else
  {
    asprintf(&v55, "%s/system_logs.logarchive", v6);
    v7 = v55;
  }

  if (!mkdir(v7, 0x1FFu))
  {
    v10 = open(v55, 0);
    if (v10 == -1)
    {
      v13 = __error();
      strerror(*v13);
      __error();
      _OSLogWarningMessage(v4, "failed to open directory: %s: %s (%d)");
      goto LABEL_9;
    }

    v11 = v10;
    if (xpc_dictionary_get_int64(v3, "base_time") < 1)
    {
      int64 = 0;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(v3, "base_time");
    }

    if (xpc_dictionary_get_uint64(v3, "ttl_time") < 1)
    {
      uint64 = 0;
    }

    else
    {
      uint64 = xpc_dictionary_get_uint64(v3, "ttl_time");
    }

    if (xpc_dictionary_get_uint64(v3, "sp_time") < 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = xpc_dictionary_get_uint64(v3, "sp_time");
    }

    if (xpc_dictionary_get_uint64(v3, "hv_time") <= 0)
    {
      if (uint64)
      {
        v18 = uint64;
      }

      else
      {
        v18 = int64;
      }

      if (v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = int64;
      }
    }

    else
    {
      v16 = xpc_dictionary_get_uint64(v3, "hv_time");
      v17 = v16;
      if (uint64)
      {
        v18 = uint64;
      }

      else
      {
        v18 = int64;
      }

      if (v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = int64;
      }

      if (v16)
      {
        if (int64)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }
    }

    v17 = int64;
    if (int64)
    {
      goto LABEL_41;
    }

LABEL_38:
    if (xpc_dictionary_get_uint64(v3, "base_time") < 1)
    {
      int64 = 0;
    }

    else
    {
      int64 = xpc_dictionary_get_uint64(v3, "base_time");
    }

LABEL_41:
    v20 = xpc_dictionary_get_value(v3, "livedata");
    v21 = &unk_2841B91E0;
    if (v20 && !xpc_dictionary_get_BOOL(v3, "livedata"))
    {
      v21 = &unk_2841B91F8;
    }

    v56[0] = _OSLogConstructPersistStart;
    v22 = [MEMORY[0x277CCABB0] numberWithLong:int64];
    v57[0] = v22;
    v56[1] = _OSLogConstructSpecialStart;
    v23 = [MEMORY[0x277CCABB0] numberWithLong:v18];
    v57[1] = v23;
    v56[2] = _OSLogConstructSignpostStart;
    v24 = [MEMORY[0x277CCABB0] numberWithLong:v19];
    v57[2] = v24;
    v56[3] = _OSLogConstructHighVolumeStart;
    v25 = [MEMORY[0x277CCABB0] numberWithLong:v17];
    v56[4] = @"_OSLogConstructSkipMemoryStores";
    v57[3] = v25;
    v57[4] = v21;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:5];
    v27 = [v26 mutableCopy];

    v28 = xpc_dictionary_get_value(v3, "base_size");

    if (v28)
    {
      v29 = xpc_dictionary_get_uint64(v3, "base_size");
      v30 = [MEMORY[0x277CCABB0] numberWithLong:v29];
      [v27 setObject:v30 forKeyedSubscript:OSLogConstructPersistSizeLimit];
    }

    else
    {
      v29 = -1;
    }

    v31 = xpc_dictionary_get_value(v3, "ttl_size");

    if (v31)
    {
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{xpc_dictionary_get_uint64(v3, "ttl_size")}];
    }

    else
    {
      if (v29 == -1)
      {
        goto LABEL_52;
      }

      v32 = [MEMORY[0x277CCABB0] numberWithLong:v29];
    }

    v33 = v32;
    [v27 setObject:v32 forKeyedSubscript:OSLogConstructSpecialSizeLimit];

LABEL_52:
    v34 = xpc_dictionary_get_value(v3, "sp_size");

    if (v34)
    {
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{xpc_dictionary_get_uint64(v3, "sp_size")}];
    }

    else
    {
      if (v29 == -1)
      {
        goto LABEL_57;
      }

      v35 = [MEMORY[0x277CCABB0] numberWithLong:v29];
    }

    v36 = v35;
    [v27 setObject:v35 forKeyedSubscript:OSLogConstructSignpostSizeLimit];

LABEL_57:
    v37 = xpc_dictionary_get_value(v3, "hv_size");

    if (v37)
    {
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{xpc_dictionary_get_uint64(v3, "hv_size")}];
    }

    else
    {
      if (v29 == -1)
      {
        goto LABEL_62;
      }

      v38 = [MEMORY[0x277CCABB0] numberWithLong:v29];
    }

    v39 = v38;
    [v27 setObject:v38 forKeyedSubscript:OSLogConstructHighVolumeSizeLimit];

LABEL_62:
    v40 = xpc_dictionary_get_string(v3, "predicate");
    if (v40)
    {
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:v40];
      [v27 setObject:v41 forKeyedSubscript:@"OSLogConstructPredicate"];

      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:v55];
      [v27 setObject:v42 forKeyedSubscript:@"OSLogConstructTargetDir"];
    }

    free(v55);
    v43 = getenv("SUDO_UID");
    v44 = getenv("SUDO_GID");
    v45 = 0;
    if (v43)
    {
      v46 = v44;
      v47 = 0;
      if (v44)
      {
        v45 = strtoul(v43, 0, 10);
        v47 = strtoul(v46, 0, 10);
      }
    }

    else
    {
      v47 = 0;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __OSLogCreateArchiveWithDictionary_block_invoke;
    aBlock[3] = &unk_2787AE908;
    v48 = v4;
    aBlock[4] = v48;
    v52 = v11;
    v53 = v45;
    v54 = v47;
    v49 = _Block_copy(aBlock);
    OSLogConstructArchive(v27, v48, v49);
  }

  v8 = __error();
  strerror(*v8);
  __error();
  _OSLogWarningMessage(v4, "failed to create directory: %s: %s (%d)");
LABEL_9:
  free(v55);
  v9 = *__error();

  return v9;
}

uint64_t __OSLogCreateArchiveWithDictionary_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  v36 = *MEMORY[0x277D85DE8];
  memset(&v34, 0, sizeof(v34));
  if (fstat(a2, &v34))
  {
    v6 = *__error();
    if (fcntl(v4, 50, v35) == -1)
    {
      __error();
      _os_assumes_log();
    }

    v7 = *(a1 + 32);
    v8 = strerror(v6);
    _OSLogWarningMessage(v7, "unable to stat temp fd: %s: %s (%d)", v35, v8, v6);
    return v6;
  }

  if (*a3 == 46 && !*(a3 + 1))
  {
    goto LABEL_15;
  }

  v9 = *(a1 + 40);
  if ((v34.st_mode & 0xF000) != 0x4000)
  {
    v13 = openat(v9, a3, 2562, 420);
    if (v13 == -1)
    {
      goto LABEL_22;
    }

    v14 = v13;
    if (!fcopyfile(v4, v13, 0, 0xEu))
    {
      if (*(a1 + 44) && fchown(v14, *(a1 + 44), *(a1 + 48)) == -1)
      {
        __error();
        _os_assumes_log();
      }

      if (close(v14) != -1)
      {
        return 0;
      }

      v28 = *__error();
      v29 = *__error();
      if (v28 != 9)
      {
        goto LABEL_39;
      }

      qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DA527A8 = v29;
      __break(1u);
LABEL_31:
      if (!*(a1 + 44) || fchown(*(a1 + 40), *(a1 + 44), *(a1 + 48)) != -1)
      {
        return 0;
      }

      __error();
LABEL_39:
      _os_assumes_log();
      return 0;
    }

    v4 = *__error();
    v6 = v4;
    a1 = *(a1 + 32);
    v15 = strerror(v4);
    _OSLogWarningMessage(a1, "failed to copyfile: %s: %s (%d)", a3, v15, v4);
    if (close(v14) != -1)
    {
      return v6;
    }

    v16 = *__error();
    v17 = *__error();
    if (v16 != 9)
    {
LABEL_21:
      _os_assumes_log();
      return v6;
    }

    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_27DA527A8 = v17;
    __break(1u);
LABEL_15:
    if (fcopyfile(v4, *(a1 + 40), 0, 4u))
    {
      v18 = *(a1 + 32);
      v19 = __error();
      strerror(*v19);
      __error();
      _OSLogWarningMessage(v18, "failed to copyfile on root node: %s (%d)");
      return *__error();
    }

    goto LABEL_31;
  }

  if (mkdirat(v9, a3, 0x1FFu))
  {
    v10 = *(a1 + 32);
    v11 = __error();
    v32 = strerror(*v11);
    v33 = *__error();
    v31 = a3;
    v12 = "failed to mkdir: %s: %s (%d)";
LABEL_23:
    _OSLogWarningMessage(v10, v12, v31, v32, v33);
    return *__error();
  }

  v20 = openat(*(a1 + 40), a3, 0);
  if (v20 == -1)
  {
LABEL_22:
    v10 = *(a1 + 32);
    v27 = __error();
    v32 = strerror(*v27);
    v33 = *__error();
    v31 = a3;
    v12 = "failed to open: %s: %s (%d)";
    goto LABEL_23;
  }

  v21 = v20;
  if (!fcopyfile(v4, v20, 0, 4u))
  {
    if (*(a1 + 44) && fchown(v21, *(a1 + 44), *(a1 + 48)) == -1)
    {
      __error();
      _os_assumes_log();
    }

    if (close(v21) != -1)
    {
      return 0;
    }

    v30 = *__error();
    result = *__error();
    if (v30 == 9)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  v22 = *__error();
  v6 = v22;
  v23 = *(a1 + 32);
  v24 = strerror(v22);
  _OSLogWarningMessage(v23, "failed to copyfile: %s: %s (%d)", a3, v24, v22);
  if (close(v21) != -1)
  {
    return v6;
  }

  v25 = *__error();
  result = *__error();
  if (v25 != 9)
  {
    goto LABEL_21;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
LABEL_43:
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

void OSLogConstructArchive(void *a1, void *a2, void *a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v38 = a2;
  a3;
  v6 = [v5 objectForKey:@"OSLogConstructPredicate"];
  [v5 objectForKey:@"OSLogConstructTargetDir"];
  objc_claimAutoreleasedReturnValue();
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = 0x277CCA000;
  if (v6)
  {
    goto LABEL_44;
  }

  v44 = v38;
  is_development_build = _os_trace_is_development_build();
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_prefsdir_path()];
  v66 = v9;
  if (is_development_build)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_intprefsdir_path()];
    v67 = v10;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_sysprefsdir_path()];
    v68 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:3];
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_sysprefsdir_path()];
    v67 = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:2];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v12;
  v46 = [obj countByEnumeratingWithState:&v62 objects:v61 count:16];
  if (!v46)
  {
LABEL_41:
    v6 = 0;
    goto LABEL_43;
  }

  v45 = *v63;
  v41 = *MEMORY[0x277CCA050];
  key = *MEMORY[0x277CBEC70];
LABEL_7:
  v50 = 0;
  while (1)
  {
    if (*v63 != v45)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v62 + 1) + 8 * v50);
    v14 = MEMORY[0x277CBEBC0];
    v60[0] = v13;
    v60[1] = @"com.apple.LoggingSupport.collect_override.plist";
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
    v49 = [v14 fileURLWithPathComponents:v15];

    v53 = 0;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v49 error:&v53];
    v16 = v53;
    v48 = v16;
    if (!v16)
    {
      break;
    }

    v17 = [v16 domain];
    v18 = v17;
    if (v17 != v41)
    {

LABEL_34:
      v34 = v13;
      v35 = [v13 UTF8String];
      v36 = [v48 description];
      v37 = v36;
      _OSLogWarningMessage(v44, "Unable to read plist %s: %s", v35, [v36 UTF8String]);

      goto LABEL_39;
    }

    v33 = [v48 code] == 260;

    if (!v33)
    {
      goto LABEL_34;
    }

LABEL_39:

    if (++v50 == v46)
    {
      v46 = [obj countByEnumeratingWithState:&v62 objects:v61 count:16];
      if (!v46)
      {
        goto LABEL_41;
      }

      goto LABEL_7;
    }
  }

  v52 = v44;
  v43 = v47;
  v19 = [v43 valueForKeyPath:@"Events"];
  v42 = v19;
  if (v19)
  {
    v20 = _CFCopySupplementalVersionDictionary();
    v21 = v20;
    if (v20)
    {
      v51 = CFDictionaryGetValue(v20, key);
      CFRelease(v21);
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v22 = v19;
      v23 = 0;
      v24 = [v22 countByEnumeratingWithState:&v69 objects:&buf count:16];
      if (v24)
      {
        v25 = *v70;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v70 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v69 + 1) + 8 * i);
            v28 = [v27 valueForKeyPath:@"Predicates"];
            if (v28)
            {
              v29 = [v27 valueForKeyPath:@"Builds"];
              if (v29)
              {
                v30 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", v51];
                v31 = [v29 filteredArrayUsingPredicate:v30];
                if ([v31 count])
                {
                  if (v23)
                  {
                    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ && %@", v23, v28];

                    v23 = v32;
                  }

                  else
                  {
                    v23 = v28;
                  }
                }
              }

              else
              {
              }
            }

            else
            {
              _OSLogWarningMessage(v52, "Unable to find local predicates. Please make sure you use the 'Predicates' key.");
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v69 objects:&buf count:16];
        }

        while (v24);
      }

LABEL_38:
      v6 = v23;

      if (v6)
      {

LABEL_43:
        v7 = 0x277CCA000uLL;
        if (v6)
        {
LABEL_44:
          [*(v7 + 3120) predicateWithFormat:v6 argumentArray:MEMORY[0x277CBEBF8]];
          objc_claimAutoreleasedReturnValue();
        }

        operator new();
      }

      goto LABEL_39;
    }

    _OSLogWarningMessage(v52, "Unable to identify build version. Quitting");
  }

  else
  {
    _OSLogWarningMessage(v52, "Unable to find local events. Please make sure you use the 'Events' key");
  }

  v51 = 0;
  v23 = 0;
  goto LABEL_38;
}

uint64_t _OSLogCreateTempDirectory(void *a1, mode_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (issetugid())
  {
    v4 = 0;
  }

  else
  {
    v4 = getenv("TMPDIR");
  }

  v5 = "/tmp";
  if (v4)
  {
    v5 = v4;
  }

  snprintf(__str, 0x400uLL, "%s/oslogarchive.XXXXXX", v5);
  if (!mkdtemp(__str))
  {
    __error();
    v13 = __error();
    strerror(*v13);
    _OSLogWarningMessage(v3, "failed to create temporary directory: %d (%s)");
    goto LABEL_16;
  }

  v6 = open(__str, 2048);
  if (v6 == -1)
  {
    __error();
    v14 = __error();
    strerror(*v14);
    _OSLogWarningMessage(v3, "failed to open temporary directory: %s (%d - %s)");
    goto LABEL_16;
  }

  v7 = v6;
  if (rmdir(__str) == -1)
  {
    __error();
    _os_assumes_log();
  }

  if (!fchmod(v7, a2))
  {
    goto LABEL_17;
  }

  v8 = __error();
  v9 = strerror(*v8);
  v10 = __error();
  _OSLogWarningMessage(v3, "failed to set permissions: %s: %s (%d)", __str, v9, *v10);
  if (close(v7) != -1)
  {
LABEL_16:
    v7 = 0xFFFFFFFFLL;
LABEL_17:

    return v7;
  }

  v11 = *__error();
  result = *__error();
  if (v11 != 9)
  {
    _os_assumes_log();
    __error();
    _os_assumes_log();
    goto LABEL_16;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

uint64_t OSLogStateCaptureForAllPIDs(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  *v14 = xmmword_22E081720;
  v13 = 0;
  v2 = sysctl(v14, 4u, 0, &v13, 0, 0);
  if (v2)
  {
    v3 = v2;
    _OSLogWarningMessage(v1, "Failed to get process list length");
  }

  else
  {
    v4 = _os_trace_malloc_typed();
    v3 = sysctl(v14, 4u, v4, &v13, 0, 0);
    if (v3)
    {
      _OSLogWarningMessage(v1, "Failed to get process list");
      v5 = 0;
    }

    else
    {
      v6 = v13;
      v7 = v13 / 0x288;
      v8 = _os_trace_calloc_typed();
      v5 = v8;
      if (v6 >= 0x288)
      {
        v9 = v4 + 10;
        v10 = v8;
        v11 = v7;
        do
        {
          *v10++ = *v9;
          v9 += 162;
          --v11;
        }

        while (v11);
      }

      _os_state_request_for_pidlist();
      usleep(0x16E360u);
    }

    free(v4);
    free(v5);
  }

  return v3;
}

uint64_t _OSLogCopyTraceFile(uint64_t a1, const char *a2, void **a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10)
{
  v109 = *MEMORY[0x277D85DE8];
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = _os_trace_mmap();
  v19 = v18;
  if (v18)
  {
    if (*v18 == 4096 && *(v18 + 8) > 0x27uLL)
    {
      v20 = _os_trace_uuid_map_lookup(*a3, (v18 + 144));
      if (!v20)
      {
        v31 = 0;
LABEL_14:
        if (munmap(v19, 0) == -1)
        {
          __error();
          _os_assumes_log();
        }

        goto LABEL_21;
      }

      v21 = v20;
      v22 = tmpfile();
      if (v22)
      {
        v23 = v22;
        fd = fileno(v22);
        if (v16)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
          v25 = [v24 lastPathComponent];

          v64 = v25;
          v61 = v15;
          v26 = v16;
          v59 = v17;
          v89 = 0;
          v90 = &v89;
          v91 = 0x3032000000;
          v92 = __Block_byref_object_copy__2986;
          v93 = __Block_byref_object_dispose__2987;
          v94 = 0;
          v87[0] = 0;
          v87[1] = v87;
          v87[2] = 0x3032000000;
          v87[3] = __Block_byref_object_copy__2986;
          v87[4] = __Block_byref_object_dispose__2987;
          v58 = v26;
          v88 = v58;
          v85[0] = 0;
          v85[1] = v85;
          v85[2] = 0x2020000000;
          v86 = 0;
          v107 = 0;
          v106 = 0;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          *&value = 0;
          v108 = a10;
          *(&value + 1) = -1;
          DWORD1(v103) = 0x10000;
          *(&v102 + 1) = _os_trace_malloc_typed();
          *(&v104 + 1) = 0;
          *&v105 = v19;
          LODWORD(v106) = fd;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = ___OSLogCopyTraceFile_implWithRepack_block_invoke;
          aBlock[3] = &unk_2787AE980;
          aBlock[4] = v87;
          aBlock[5] = &value;
          v27 = _Block_copy(aBlock);
          v28 = *(&v103 + 1);
          *(&v103 + 1) = v27;

          v72 = MEMORY[0x277D85DD0];
          v73 = 3221225472;
          v74 = ___OSLogCopyTraceFile_implWithRepack_block_invoke_2;
          v75 = &unk_2787AE9A8;
          v81 = v19;
          p_value = &value;
          v79 = &v89;
          v62 = v61;
          v78 = v62;
          v80 = v85;
          v60 = v59;
          v76 = v60;
          v65 = v64;
          v77 = v65;
          v83 = a3;

          if (*(&v96 + 1) && (v29 = (v90 + 5), obj = v90[5], v30 = _repack_ttl_compact_close_catalog(&value, &obj), objc_storeStrong(v29, obj), (v30 & 1) == 0))
          {
            v46 = [v90[5] userInfo];
            v47 = [v46 description];
            v48 = v47;
            _OSLogWarningMessage(v62, "failed to close catalog: %s", [v47 UTF8String]);

            v31 = 0;
          }

          else
          {
            v31 = v107;
          }

          _repack_context_cleanup(&value);

          _Block_object_dispose(v85, 8);
          _Block_object_dispose(v87, 8);

          _Block_object_dispose(&v89, 8);
        }

        else
        {
          v63 = *(a10 + 16);
          v38 = v14;
          v39 = v15;
          v72 = 0;
          v73 = &v72;
          v74 = 0x2020000000;
          v75 = 0;
          v66 = v39;
          if (v21 <= 1 && v19[1] > 0x10u)
          {
            *&value = MEMORY[0x277D85DD0];
            *(&value + 1) = 3221225472;
            *&v96 = ___OSLogCopyTraceFile_impl_block_invoke;
            *(&v96 + 1) = &unk_2787AE958;
            v98 = a3;
            *&v99 = v19;
            *(&v99 + 1) = v19;
            *&v100 = v63;
            v49 = v39;
            *(&v100 + 1) = a2;
            *&v101 = __PAIR64__(fd, a1);
            *&v97 = v49;
            *(&v97 + 1) = &v72;

            v31 = *(v73 + 24);
          }

          else
          {
            v40 = _OSLogUUIDMapAddFromFile(v19, 0, v63, v39);
            if (v40)
            {
              if (fcntl(a1, 50, &value) == -1)
              {
                __error();
                _os_assumes_log();
              }

              v41 = strerror(v40);
              _OSLogWarningMessage(v66, "failed to index uuids: '%s' to '%s': %s (%d)", &value, a2, v41, v40);
            }

            *(v73 + 24) = 0;
            if (_OSLogFileFindExhaustivePoint(a1, a4, a5) && *__error() != 2)
            {
              v42 = *__error();
              if (fcntl(a1, 50, &value) == -1)
              {
                __error();
                _os_assumes_log();
              }

              v43 = strerror(v42);
              _OSLogWarningMessage(v66, "failed to find sparse boundary: %s: %s (%d)", &value, v43, v42);
              *(v73 + 24) = 0;
            }

            if (*(v73 + 24))
            {
              if (lseek(a1, 0, 0) == -1)
              {
                __error();
                _os_assumes_log();
              }

              v44 = v38[2](v38, a1, a2);
              if (v44)
              {
                if (fcntl(a1, 50, &value) == -1)
                {
                  __error();
                  _os_assumes_log();
                }

                v45 = strerror(v44);
                _OSLogWarningMessage(v66, "failed copy: '%s' to '%s': %s (%d)", &value, a2, v45, v44);
                v31 = -1;
                *(v73 + 24) = -1;
              }

              else
              {
                v31 = *(v73 + 24);
              }
            }

            else
            {
              v31 = 0;
            }
          }

          _Block_object_dispose(&v72, 8);
        }

        if ((v31 & 0x8000000000000000) == 0 && lseek(fd, 0, 2) >= 1)
        {
          if (_OSLogFileFindExhaustivePoint(fd, a4, a5) && *__error() != 2)
          {
            v50 = *__error();
            if (fcntl(a1, 50, &value) == -1)
            {
              __error();
              _os_assumes_log();
            }

            v51 = strerror(v50);
            _OSLogWarningMessage(v15, "failed to find sparse boundary: %s: %s (%d)", &value, v51, v50);
            v31 = -1;
          }

          v89 = 0;
          v52 = _os_trace_mmap();
          v53 = v52;
          if (v52)
          {
            value = 0u;
            *&v96 = 0;
            LODWORD(value) = 1;
            *(&v96 + 1) = -1;
            *&v97 = 0;
            _OSLogGenerateXattrs(v52, v89, &value);
            if (munmap(v53, v89) == -1)
            {
              __error();
              _os_assumes_log();
            }

            if (fsetxattr(fd, "com.apple.logd.metadata", &value, 0x28uLL, 0, 0) == -1)
            {
              __error();
              _os_assumes_log();
            }
          }

          if (fcopyfile(a1, fd, 0, 2u))
          {
            v54 = *__error();
            if (fcntl(a1, 50, &value) == -1)
            {
              __error();
              _os_assumes_log();
            }

            v55 = strerror(v54);
            _OSLogWarningMessage(v15, "fcopyfile (stat only): '%s' to '%s': %s (%d)", &value, a2, v55, v54);
            v31 = -1;
          }

          if (lseek(fd, 0, 0) == -1)
          {
            __error();
            _os_assumes_log();
          }

          v56 = (*(v14 + 2))(v14, fd, a2);
          if (v56)
          {
            if (fcntl(a1, 50, &value) == -1)
            {
              __error();
              _os_assumes_log();
            }

            v57 = strerror(v56);
            _OSLogWarningMessage(v15, "copy handler failed: '%s' to '%s': %s (%d)", &value, a2, v57, v56);
            v31 = -1;
          }
        }

        if (fclose(v23) == -1)
        {
          __error();
          _os_assumes_log();
        }

        goto LABEL_14;
      }

      v35 = __error();
      v36 = strerror(*v35);
      v37 = __error();
      _OSLogWarningMessage(v15, "failed to create tmpfile: %s (%d)", v36, *v37);
    }

    else
    {
      if (fcntl(a1, 50, &value) == -1)
      {
        __error();
        _os_assumes_log();
      }

      _OSLogWarningMessage(v15, "File started with invalid header: '%s'", &value);
    }

    v31 = -1;
    goto LABEL_14;
  }

  v32 = *__error();
  if (v32 == 34)
  {
    v31 = 0;
  }

  else
  {
    if (fcntl(a1, 50, &value) == -1)
    {
      __error();
      _os_assumes_log();
    }

    v33 = strerror(v32);
    _OSLogWarningMessage(v15, "could not mmap(): %s: %s (%d)", &value, v33, v32);
    v31 = -1;
  }

LABEL_21:

  return v31;
}

int *_OSLogCopyBook(int a1, const char *a2, uint64_t a3, char *a4, void *a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v59 = *MEMORY[0x277D85DE8];
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

  v20 = openat(a1, a2, 0);
  if (v20 == -1)
  {
    v24 = *__error();
    *(v51 + 6) = v24;
    if (v24 != 2)
    {
      v26 = strerror(v24);
      _OSLogWarningMessage(v19, "failed to open '%s': %s", a2, v26);
      goto LABEL_19;
    }

LABEL_14:
    v25 = 0;
LABEL_20:
    _Block_object_dispose(&v50, 8);

    return v25;
  }

  TempDirectory = _OSLogCreateTempDirectory(v19, 0x1FFu);
  if (TempDirectory == -1)
  {
    *(v51 + 6) = *__error();
    if (close(v20) != -1)
    {
      goto LABEL_19;
    }

    if (*__error() != 9)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

  v22 = (*(v18 + 2))(v18, TempDirectory, a2);
  *(v51 + 6) = v22;
  if (v22)
  {
    if (fcntl(TempDirectory, 50, &v55) == -1)
    {
      __error();
      _os_assumes_log();
    }

    v23 = strerror(*(v51 + 6));
    _OSLogWarningMessage(v19, "copy handler failed for directory fd: '%s' to '%s': %s (%d)", &v55, a2, v23, *(v51 + 6));
    if (close(v20) == -1)
    {
      if (*__error() == 9)
      {
        v28 = *__error();
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = v28;
        __break(1u);
LABEL_31:
        v29 = *__error();
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = v29;
        __break(1u);
LABEL_32:
        v30 = *__error();
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = v30;
        __break(1u);
        goto LABEL_33;
      }

      __error();
      _os_assumes_log();
    }

    if (close(TempDirectory) != -1)
    {
LABEL_19:
      v25 = *(v51 + 6);
      goto LABEL_20;
    }

    if (*__error() != 9)
    {
LABEL_12:
      __error();
      _os_assumes_log();
      goto LABEL_19;
    }

    goto LABEL_31;
  }

  v54[0] = 0;
  v54[1] = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = ___OSLogCopyBook_block_invoke;
  v33[3] = &unk_2787AE9D0;
  v42 = a4;
  v43 = v54;
  v41 = a2;
  v38 = &v55;
  v36 = v18;
  v37 = v19;
  v34 = v16;
  v35 = v17;
  v39 = &v46;
  v44 = a7;
  v45 = a3;
  v40 = &v50;
  _OSLogEnumerateFiles(v37, v20, v33);
  if (close(TempDirectory) == -1)
  {
    if (*__error() == 9)
    {
LABEL_33:
      v31 = *__error();
      qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DA527A8 = v31;
      __break(1u);
      goto LABEL_34;
    }

    __error();
    _os_assumes_log();
  }

  if (close(v20) != -1)
  {
LABEL_27:
    if (v47[3] >= 1)
    {
      _timesync_range_intersect(a4, v54, v56[3], 0, 0);
    }

    v25 = *(v51 + 6);

    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&v55, 8);
    goto LABEL_20;
  }

  if (*__error() != 9)
  {
    __error();
    _os_assumes_log();
    goto LABEL_27;
  }

LABEL_34:
  result = __error();
  v32 = *result;
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v32;
  __break(1u);
  return result;
}

void sub_22E055A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

int *_OSLogCopyDirectory(uint64_t a1, const char *a2, void *a3, void *a4, char a5)
{
  v32[128] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  TempDirectory = _OSLogCreateTempDirectory(v10, 0x1FFu);
  if (TempDirectory == -1)
  {
    v15 = *__error();
    *(v29 + 6) = v15;
    goto LABEL_14;
  }

  v12 = v9[2](v9, TempDirectory, a2);
  v13 = v29;
  *(v29 + 6) = v12;
  if (!v12)
  {
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    *(v13 + 6) = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___OSLogCopyDirectory_block_invoke;
    v19[3] = &unk_2787AE9F8;
    v27 = a5;
    v24 = a2;
    v22 = &v28;
    v20 = v9;
    v26 = TempDirectory;
    v21 = v10;
    v23 = v32;
    v25 = 0;
    _OSLogEnumerateFiles(v21, a1, v19);
    if (close(TempDirectory) == -1)
    {
      if (*__error() == 9)
      {
        goto LABEL_16;
      }

      __error();
      _os_assumes_log();
    }

    v15 = *(v29 + 6);

    _Block_object_dispose(v32, 8);
    goto LABEL_14;
  }

  if (fcntl(TempDirectory, 50, v32) == -1)
  {
    __error();
    _os_assumes_log();
  }

  v14 = strerror(*(v29 + 6));
  _OSLogWarningMessage(v10, "copy handler failed for directory fd: '%s' to '%s': %s (%d)", v32, a2, v14, *(v29 + 6));
  if (close(TempDirectory) != -1)
  {
    goto LABEL_8;
  }

  if (*__error() != 9)
  {
    __error();
    _os_assumes_log();
LABEL_8:
    v15 = *(v29 + 6);
LABEL_14:
    _Block_object_dispose(&v28, 8);

    return v15;
  }

  v17 = *__error();
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v17;
  __break(1u);
LABEL_16:
  result = __error();
  v18 = *result;
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v18;
  __break(1u);
  return result;
}

void sub_22E055D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

uint64_t _OSLogUUIDMapCopySet(int a1, uint64_t a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v16 = ___OSLogUUIDMapCopySet_block_invoke;
  v17 = &unk_2787AEA20;
  v22 = a1;
  v20 = &v27;
  v21 = &v23;
  v9 = v7;
  v18 = v9;
  v10 = v8;
  v19 = v10;
  v11 = *(a2 + 16);
  if (v11)
  {
    do
    {
      v16(v15, v11 + 16, *(v11 + 4));
      v11 = *v11;
    }

    while (v11);
    v12 = v24[3];
  }

  else
  {
    v12 = 0;
  }

  _os_trace_str_map_destroy(v12);
  v13 = *(v28 + 6);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

uint64_t _OSLogArchiveCreateInfoPlist(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v138 = *MEMORY[0x277D85DE8];
  v14 = a1;
  v99 = a8;
  v98 = a9;
  v96 = a2;
  if (*a2)
  {
    v15 = *(*a2 + 24) - 1;
  }

  else
  {
    v15 = -1;
  }

  v94 = v15;
  memset(out, 0, 37);
  memset(v136, 0, 37);
  uuid_unparse_upper((a3 + 24), out);
  v16 = [MEMORY[0x277CBEB38] dictionary];
  v17 = [v14 objectForKeyedSubscript:@"ttl01"];

  if (v17)
  {
    v18 = [v14 objectForKeyedSubscript:@"ttl01"];
    [v16 setObject:v18 forKeyedSubscript:@"ttl01"];
  }

  v19 = [v14 objectForKeyedSubscript:@"ttl03"];

  if (v19)
  {
    v20 = [v14 objectForKeyedSubscript:@"ttl03"];
    [v16 setObject:v20 forKeyedSubscript:@"ttl03"];
  }

  v21 = [v14 objectForKeyedSubscript:@"ttl07"];

  if (v21)
  {
    v22 = [v14 objectForKeyedSubscript:@"ttl07"];
    [v16 setObject:v22 forKeyedSubscript:@"ttl07"];
  }

  v23 = [v14 objectForKeyedSubscript:@"ttl14"];

  if (v23)
  {
    v24 = [v14 objectForKeyedSubscript:@"ttl14"];
    [v16 setObject:v24 forKeyedSubscript:@"ttl14"];
  }

  v25 = [v14 objectForKeyedSubscript:@"ttl30"];

  if (v25)
  {
    v26 = [v14 objectForKeyedSubscript:@"ttl30"];
    [v16 setObject:v26 forKeyedSubscript:@"ttl30"];
  }

  v108 = v16;
  v100 = v14;
  v109 = [v14 objectForKeyedSubscript:@"Identifier"];
  if (!v109)
  {
    v27 = [MEMORY[0x277CCAD78] UUID];
    v109 = [v27 UUIDString];
  }

  v134[0] = @"OldestTimeRef";
  v132[0] = @"UUID";
  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:out];
  v133[0] = v28;
  v132[1] = @"ContinuousTime";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 8)];
  v133[1] = v29;
  v132[2] = @"WallTime";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{_timesync_continuous_to_wall_time(a10, (a3 + 24), *(a3 + 8), 0)}];
  v133[2] = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:3];
  v134[1] = @"TTL";
  v135[0] = v31;
  v135[1] = v16;
  v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:2];

  uuid_unparse_upper((a4 + 24), out);
  v130 = @"OldestTimeRef";
  v128[0] = @"UUID";
  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:out];
  v129[0] = v32;
  v128[1] = @"ContinuousTime";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a4 + 8)];
  v129[1] = v33;
  v128[2] = @"WallTime";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{_timesync_continuous_to_wall_time(a10, (a4 + 24), *(a4 + 8), 0)}];
  v129[2] = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:3];
  v131 = v35;
  v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v131 forKeys:&v130 count:1];

  uuid_unparse_upper((a5 + 24), out);
  v126 = @"OldestTimeRef";
  v124[0] = @"UUID";
  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:out];
  v125[0] = v36;
  v124[1] = @"ContinuousTime";
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a5 + 8)];
  v125[1] = v37;
  v124[2] = @"WallTime";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{_timesync_continuous_to_wall_time(a10, (a5 + 24), *(a5 + 8), 0)}];
  v125[2] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:3];
  v127 = v39;
  v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v127 forKeys:&v126 count:1];

  if (a6)
  {
    uuid_unparse_upper((a6 + 24), out);
    v122 = @"OldestTimeRef";
    v120[0] = @"UUID";
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:out];
    v121[0] = v40;
    v120[1] = @"ContinuousTime";
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a6 + 8)];
    v121[1] = v41;
    v120[2] = @"WallTime";
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{_timesync_continuous_to_wall_time(a10, (a6 + 24), *(a6 + 8), 0)}];
    v121[2] = v42;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:3];
    v123 = v43;
    v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
  }

  else
  {
    v102 = [MEMORY[0x277CBEAC0] dictionary];
  }

  uuid_unparse_upper((v96 + 24), out);
  v44 = (v96 + 24 + 16 * v94);
  uuid_unparse_upper(v44, v136);
  v119[0] = &unk_2841B9210;
  v118[0] = @"OSArchiveVersion";
  v118[1] = @"OSLoggingSupportProject";
  v45 = strdup("libtrace-1815.40.20\n");
  if (v45)
  {
    v46 = v45;
    v47 = a10;
    v48 = strchr(v45, 10);
    if (v48)
    {
      *v48 = 0;
    }

    v49 = objc_alloc(MEMORY[0x277CCACA8]);
    v50 = strlen(v46);
    v51 = v49;
    v52 = 0x277CCA000;
    v45 = [v51 initWithBytesNoCopy:v46 length:v50 encoding:4 freeWhenDone:1];
  }

  else
  {
    v47 = a10;
    v52 = 0x277CCA000uLL;
  }

  v95 = v45;
  v119[1] = v45;
  v118[2] = @"OSLoggingSupportVersion";
  v93 = [MEMORY[0x277CCABB0] numberWithDouble:1815.4];
  v119[2] = v93;
  v118[3] = @"ArchiveIdentifier";
  v92 = [MEMORY[0x277CCAD78] UUID];
  v91 = [v92 UUIDString];
  v119[3] = v91;
  v119[4] = v109;
  v118[4] = @"SourceIdentifier";
  v118[5] = @"EndTimeRef";
  v116[0] = @"UUID";
  v90 = [*(v52 + 3240) stringWithUTF8String:v136];
  v117[0] = v90;
  v116[1] = @"ContinuousTime";
  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v96 + 16)];
  v117[1] = v89;
  v116[2] = @"WallTime";
  v88 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{_timesync_continuous_to_wall_time(v47, v44, *(v96 + 16), 0)}];
  v117[2] = v88;
  v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:3];
  v119[5] = v87;
  v118[6] = @"PersistMetadata";
  v114 = @"OldestTimeRef";
  v112[0] = @"UUID";
  v86 = [*(v52 + 3240) stringWithUTF8String:out];
  v113[0] = v86;
  v112[1] = @"ContinuousTime";
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v96 + 8)];
  v113[1] = v53;
  v112[2] = @"WallTime";
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{_timesync_continuous_to_wall_time(v47, (v96 + 24), *(v96 + 8), 0)}];
  v113[2] = v54;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:3];
  v115 = v55;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
  v119[6] = v56;
  v119[7] = v107;
  v118[7] = @"SpecialMetadata";
  v118[8] = @"SignpostMetadata";
  v119[8] = v106;
  v119[9] = v104;
  v118[9] = @"HighVolumeMetadata";
  v118[10] = @"LiveMetadata";
  v119[10] = v102;
  v118[11] = @"PersistSizeLimit";
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a7];
  v119[11] = v57;
  v118[12] = @"SpecialSizeLimit";
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a7[3]];
  v119[12] = v58;
  v118[13] = @"SignpostSizeLimit";
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a7[6]];
  v119[13] = v59;
  v118[14] = @"HighVolumeSizeLimit";
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a7[9]];
  v119[14] = v60;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:15];
  v62 = [v61 mutableCopy];

  if (a11)
  {
    [v62 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CollectedWithPredicate"];
  }

  v110 = 0;
  v63 = v62;
  v64 = [MEMORY[0x277CCAC58] dataWithPropertyList:v62 format:100 options:0 error:&v110];
  v65 = tmpfile();
  if (!v65)
  {
    v77 = __error();
    v78 = strerror(*v77);
    v79 = __error();
    v75 = v98;
    _OSLogWarningMessage(v98, "unable to create Info.plist tempfile: %s (%d)", v78, *v79);
    v76 = 0xFFFFFFFFLL;
    v69 = v104;
    goto LABEL_43;
  }

  v66 = v65;
  fileno(v65);
  [v64 bytes];
  [v64 length];
  if (_os_trace_write() < 0)
  {
    v80 = __error();
    v81 = strerror(*v80);
    v82 = __error();
    v84 = v81;
    v75 = v98;
    _OSLogWarningMessage(v98, "failed to write to tempfile: %s (%d)", v84, *v82);
    v69 = v104;
    if (fclose(v66) != -1)
    {
LABEL_36:
      v76 = 0xFFFFFFFFLL;
      goto LABEL_43;
    }

LABEL_39:
    __error();
    _os_assumes_log();
    goto LABEL_36;
  }

  v67 = fileno(v66);
  if (fchmod(v67, 0x1A4u) == -1)
  {
    __error();
    _os_assumes_log();
  }

  v68 = fileno(v66);
  v69 = v104;
  if (lseek(v68, 0, 0) == -1)
  {
    __error();
    _os_assumes_log();
  }

  v70 = fileno(v66);
  v71 = v99[2](v99, v70, "Info.plist");
  if (v71)
  {
    v72 = v71;
    v73 = fileno(v66);
    if (fcntl(v73, 50, v111) == -1)
    {
      __error();
      _os_assumes_log();
    }

    v74 = strerror(v72);
    v85 = v72;
    v75 = v98;
    _OSLogWarningMessage(v98, "failed copy handler: '%s' to 'Info.plist': %s (%d)", v111, v74, v85);
    if (fclose(v66) != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  if (fclose(v66) == -1)
  {
    __error();
    _os_assumes_log();
  }

  v76 = 0;
  v75 = v98;
LABEL_43:

  return v76;
}

uint64_t _OSLogUUIDMapCopyUUID(int a1, const unsigned __int8 *a2, int a3, uint64_t *a4, void *a5, void *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  if (uuid_is_null(a2))
  {
    goto LABEL_4;
  }

  _os_trace_uuiddb_get_pathsuffix(a2, a3, __str, 0x400uLL);
  _os_trace_uuiddb_get_pathsuffix(a2, a3 | 0x10, __s, 0x400uLL);
  if (_os_trace_str_map_lookup(*a4, __s))
  {
LABEL_3:
    if (_os_trace_str_map_lookup(*a4, __str))
    {
LABEL_4:
      v13 = 0;
LABEL_5:

      return v13;
    }

    goto LABEL_13;
  }

  TempDirectory = _OSLogCreateTempDirectory(v12, 0x1EDu);
  if (TempDirectory == -1)
  {
    v13 = *__error();
    goto LABEL_5;
  }

  v16 = TempDirectory;
  v17 = (*(v11 + 2))(v11, TempDirectory, __s);
  if (!v17)
  {
    _os_trace_str_map_insert(a4, __s, 1);
    if (close(v16) == -1)
    {
      v26 = *__error();
      result = *__error();
      if (v26 == 9)
      {
LABEL_31:
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = result;
        __break(1u);
        goto LABEL_32;
      }

      _os_assumes_log();
    }

    goto LABEL_3;
  }

  v13 = v17;
  if (fcntl(v16, 50, v28) == -1)
  {
    __error();
    _os_assumes_log();
  }

  v18 = strerror(v13);
  _OSLogWarningMessage(v12, "failed copy handler: '%s' to '%s': %s (%d)", v28, __s, v18, v13);
  if (close(v16) != -1)
  {
    goto LABEL_5;
  }

  a4 = *__error();
  v19 = *__error();
  if (a4 != 9)
  {
LABEL_19:
    _os_assumes_log();
    goto LABEL_5;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v19;
  __break(1u);
LABEL_13:
  v20 = openat(a1, __str, 0);
  if (v20 == -1)
  {
    v13 = *__error();
    if (fcntl(a1, 50, v28) == -1)
    {
      __error();
      _os_assumes_log();
    }

    v25 = strerror(v13);
    _OSLogWarningMessage(v12, "uuid text missing: %s/%s: %s (%d)", v28, __str, v25, v13);
    goto LABEL_5;
  }

  v21 = v20;
  v22 = (*(v11 + 2))(v11, v20, __str);
  if (v22)
  {
    v13 = v22;
    if (fcntl(v21, 50, v28) == -1)
    {
      __error();
      _os_assumes_log();
    }

    v23 = strerror(v13);
    _OSLogWarningMessage(v12, "failed copy handler: '%s' to '%s': %s (%d)", v28, __str, v23, v13);
    if (close(v21) != -1)
    {
      goto LABEL_5;
    }

    v24 = *__error();
    result = *__error();
    if (v24 != 9)
    {
      goto LABEL_19;
    }

    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_27DA527A8 = result;
    __break(1u);
    goto LABEL_31;
  }

  _os_trace_str_map_insert(a4, __str, 1);
  if (close(v21) != -1)
  {
    goto LABEL_4;
  }

  v27 = *__error();
  result = *__error();
  if (v27 != 9)
  {
    _os_assumes_log();
    goto LABEL_4;
  }

LABEL_32:
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

void _OSLogEnumerateFiles(void *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a3;
  v7 = _os_trace_fdscandir_b();
  if (v7 < 1)
  {
LABEL_16:
    _os_trace_scandir_free_namelist();

    return;
  }

  for (i = v7; ; --i)
  {
    v9 = i - 1;
    v10 = openat(v4, (*(8 * (i - 1)) + 21), 0);
    if (v10 != -1)
    {
      break;
    }

    if (*__error() != 2)
    {
      v15 = (*(8 * v9) + 21);
      v16 = __error();
      v17 = strerror(*v16);
      v18 = __error();
      _OSLogWarningMessage(v5, "failed to open: '%s': %s (%d)", v15, v17, *v18);
    }

    if (i < 2)
    {
      goto LABEL_16;
    }

LABEL_13:
    ;
  }

  v11 = v10;
  v12 = objc_autoreleasePoolPush();
  v13 = (*(v6 + 2))(v6, v11, *(8 * v9) + 21);
  objc_autoreleasePoolPop(v12);
  if (close(v11) != -1)
  {
LABEL_5:
    if (i > 1)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v19 = *__error();
  v20 = *__error();
  if (v19 != 9)
  {
    _os_assumes_log();
    goto LABEL_5;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v20;
  __break(1u);
}

uint64_t _OSLogUUIDMapAddFromFile(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v15 = ___OSLogUUIDMapAddFromFile_block_invoke;
  v16 = &unk_2787AE930;
  v8 = v7;
  v17 = v8;
  v18 = &v20;
  v19 = a3;
  v9 = v14;
  v10 = 0;
  do
  {
    if (a2 - v10 < 0x10)
    {
      break;
    }

    v11 = *(a1 + v10 + 8);
    if (a2 - v10 - 16 < v11)
    {
      break;
    }

    if (!v15(v9))
    {
      break;
    }

    v10 = (v10 + v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  }

  while (v10 - 1 < a2);

  v12 = *(v21 + 6);
  _Block_object_dispose(&v20, 8);

  return v12;
}

void sub_22E05790C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2986(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OSLogCreateArchiveWithPredicate(const char *a1, uint64_t a2, int64_t a3, BOOL a4, const char *a5, void *a6)
{
  v11 = a6;
  v12 = _InitArchiveDictionary(a1, a2, a3, a4);
  xpc_dictionary_set_string(v12, "predicate", a5);
  ArchiveWithDictionary = OSLogCreateArchiveWithDictionary(v12, v11);

  return ArchiveWithDictionary;
}

int64_t OSLogFlushBuffers()
{
  v0 = OSLogLogdAdminConnection();
  if (v0)
  {
    v1 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v1, "operation", 0xBuLL);
    v2 = xpc_connection_send_message_with_reply_sync(v0, v1);
    v3 = v2;
    if (v2)
    {
      if (MEMORY[0x2318E23F0](v2) == MEMORY[0x277D86480])
      {
        int64 = 22;
      }

      else if (xpc_dictionary_get_uint64(v3, "errorcode"))
      {
        int64 = 1;
      }

      else
      {
        int64 = xpc_dictionary_get_int64(v3, "st");
      }
    }

    else
    {
      int64 = 96;
    }
  }

  else
  {
    int64 = 53;
  }

  return int64;
}

char *os_trace_copy_formatted_message(uint64_t a1)
{
  v25[128] = *MEMORY[0x277D85DE8];
  v24 = 0x10000;
  v23[0] = v25;
  v23[1] = 0x40000000000;
  v2 = *(a1 + 96);
  if (!v2)
  {
    v21 = *(a1 + 88);
    if (!v21)
    {
      v21 = "<compose failure [missing precomposed trace]>";
    }

    return strdup(v21);
  }

  v3 = *(a1 + 104);
  if ((v3 - 1733) < 0xFFFFFFFFFFFFF93CLL)
  {
    goto LABEL_17;
  }

  v4 = &v2[v3];
  v6 = &v2[v3 - 1];
  v5 = *v6;
  if (v3 + ~v5 + 2 * v5 == -2)
  {
    goto LABEL_17;
  }

  MEMORY[0x28223BE20](a1);
  v8 = &v23[-1] - v7;
  bzero(&v23[-1] - v7, v9);
  *v8 = 0;
  v8[1] = v5;
  if (v5)
  {
    v10 = -v5;
    v11 = &v4[~v5];
    v12 = v8 + 2;
    while (1)
    {
      v13 = v6[v10] & 0x3F;
      if (&v2[v13] > v11)
      {
        break;
      }

      *v12 = 0;
      v12[1] = v13;
      v14 = v12 + 2;
      memcpy(v12 + 2, v2, v13);
      v12 = &v14[v13];
      v2 += v13;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_9;
      }
    }

LABEL_17:
    v21 = "<compose failure [corrupt trace]>";
    return strdup(v21);
  }

LABEL_9:
  v22 = 0;
  v16 = *(a1 + 88);
  if (!v16)
  {
    v17 = _os_log_resolve_format(*(a1 + 24), *a1, *(a1 + 72), &v22);
    if (!v17)
    {
      v21 = v22;
      return strdup(v21);
    }

    v16 = v17;
    *(a1 + 88) = v17;
  }

  if (*(a1 + 80))
  {
    v18 = 4;
  }

  else
  {
    v18 = 8;
  }

  os_log_fmt_compose(v23, v16, 1, 3u, v18, v8, 0, 0, 0, 0, 0);
  v19 = BYTE4(v24);
  result = v23[0];
  v23[0] = 3954044928;
  WORD2(v24) = 0;
  if ((v19 & 1) == 0)
  {
    return _os_trace_memdup();
  }

  return result;
}

char *os_log_copy_formatted_message(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0x10000;
  v15[0] = &v17;
  v15[1] = 0x40000000000;
  v2 = *(a1 + 96);
  if (!v2)
  {
    v5 = *(a1 + 88);
    if (!v5)
    {
      v5 = "<compose failure [missing precomposed log]>";
    }

    return strdup(v5);
  }

  v3 = *(a1 + 104);
  if (v3 >> 16)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 120);
  if (v4 >> 16)
  {
    goto LABEL_6;
  }

  if (*(a1 + 104))
  {
    if (*(a1 + 104) == 1)
    {
LABEL_6:
      v5 = "<compose failure [corrupt log]>";
      return strdup(v5);
    }

    v7 = (v2 + 2);
    LOWORD(v3) = v3 - 2;
    if (v2[1])
    {
      v8 = 0;
      while (v3 >= 2u)
      {
        v9 = *(v7 + 1) + 2;
        if (v9 > v3)
        {
          break;
        }

        v7 += v9;
        LOWORD(v3) = v3 - v9;
        if (v2[1] <= ++v8)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v2 = &os_log_fmt_extract_pubdata_empty_hdr;
  }

LABEL_17:
  v14 = 0;
  v10 = *(a1 + 88);
  if (!v10)
  {
    v11 = _os_log_resolve_format(*(a1 + 24), *a1, *(a1 + 72), &v14);
    if (!v11)
    {
      v5 = v14;
      return strdup(v5);
    }

    v10 = v11;
    *(a1 + 88) = v11;
    v4 = *(a1 + 120);
  }

  if (*(a1 + 80))
  {
    v12 = 4;
  }

  else
  {
    v12 = 8;
  }

  os_log_fmt_compose(v15, v10, 2, 3u, v12, v2, v7, v3, *(a1 + 112), v4, 0);
  v13 = BYTE4(v16);
  result = v15[0];
  v15[0] = 3954044928;
  WORD2(v16) = 0;
  if ((v13 & 1) == 0)
  {
    return _os_trace_memdup();
  }

  return result;
}

uint64_t _chunk_support_convert_tracepoint(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 60);
  *(a2 + 52) = 0u;
  v7 = a2 + 52;
  *(a2 + 4) = 0u;
  *(a2 + 20) = 0u;
  *(a2 + 36) = 0u;
  *(a2 + 68) = 0u;
  *(a2 + 84) = 0u;
  *(a2 + 100) = 0u;
  *(a2 + 116) = 0u;
  *(a2 + 132) = 0u;
  *(a2 + 148) = 0u;
  *(a2 + 164) = 0u;
  *(a2 + 180) = 0u;
  *(a2 + 196) = 0u;
  *(a2 + 212) = 0u;
  *(a2 + 228) = 0;
  *a2 = 1024;
  v8 = *(a3 + 56);
  if (v8)
  {
    *(a2 + 4) = *(v8 + 4);
    *(a2 + 8) = *(v8 + 8);
    *(a2 + 20) = v8 + 24;
    uuidpath_lookup_fd(*(a3 + 4), (v8 + 24), (a2 + 28));
    if (*(v8 + 2))
    {
      *(a2 + 132) = 1;
    }
  }

  v9 = *(a3 + 32);
  if (*v9 == 24580)
  {
    return 0;
  }

  if (*v9 == 24579)
  {
    if (!*(v9 + 4) && *(v9 + 8) >= 0x31uLL)
    {
      *a2 = 2560;
      v10 = *(v9 + 32);
      *(a2 + 36) = *(v9 + 40);
      v11 = *(a3 + 24);
      *(a2 + 60) = v10;
      v12 = *(a3 + 88);
      if (v12)
      {
        v13 = _timesync_continuous_to_wall_time(v12, (*(a3 + 24) + 128), v10, (a2 + 108));
        *(a2 + 92) = v13 / 0x3B9ACA00;
        *(a2 + 100) = v13 % 0x3B9ACA00 / 0x3E8;
      }

      else
      {
        v31 = *(v11 + 2);
        v32 = v11[6];
        v33 = *(v11 + 6);
        if (v33 != v10)
        {
          v35 = *v11;
          v34 = v11[1];
          if (v33 >= v10)
          {
            v49 = (v33 - v10) * v35 / v34;
            v31 -= v49 / 0x3B9ACA00;
            v32 -= v49 % 0x3B9ACA00 / 0x3E8;
            if (v32 < 0)
            {
              --v31;
              v32 += 1000000;
            }
          }

          else
          {
            v36 = (v10 - v33) * v35 / v34;
            v31 += v36 / 0x3B9ACA00;
            v32 += v36 % 0x3B9ACA00 / 0x3E8;
            if (v32 > 999999)
            {
              ++v31;
              v32 -= 1000000;
            }
          }
        }

        *(a2 + 92) = v31;
        *(a2 + 100) = v32;
        *(a2 + 108) = *(a3 + 16);
      }

      v50 = v9 + 48;
      if (!uuidpath_lookup_fd(*(a3 + 4), (v9 + 48), (a2 + 84)))
      {
        v50 = *(a2 + 20);
        *(a2 + 84) = *(a2 + 28);
      }

      *(a2 + 76) = v50;
      result = _state_support_create_message(*(a3 + 32), (a2 + 148));
      *(a2 + 140) = result;
      if (result)
      {
        return *(a3 + 56) != 0;
      }

      return result;
    }

    return 0;
  }

  v14 = *(a3 + 64);
  if (v14)
  {
    if (v14 == -1)
    {
      v15 = *(a3 + 24);
      *(a2 + 60) = v6;
      v16 = *(a3 + 88);
      if (v16)
      {
        v17 = (*(a3 + 24) + 128);
        v18 = (a2 + 108);
        v19 = v6;
LABEL_16:
        v21 = _timesync_continuous_to_wall_time(v16, v17, v19, v18);
        *(a2 + 92) = v21 / 0x3B9ACA00;
        *(a2 + 100) = v21 % 0x3B9ACA00 / 0x3E8;
        goto LABEL_32;
      }

      v22 = *(v15 + 2);
      v23 = v15[6];
      v24 = *(v15 + 6);
      if (v24 != v6)
      {
        v26 = *v15;
        v25 = v15[1];
        v27 = v24 - v6;
        if (v24 < v6)
        {
          v28 = v6 - v24;
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v19 = (*(a1 + 2) & 0xFFFFFFFFFFFFLL) + *(v14 + 8);
      v20 = *(a3 + 24);
      *(a2 + 60) = v19;
      v16 = *(a3 + 88);
      if (v16)
      {
        v17 = (*(a3 + 24) + 128);
        v18 = (a2 + 108);
        goto LABEL_16;
      }

      v22 = *(v20 + 2);
      v23 = v20[6];
      v29 = *(v20 + 6);
      if (v29 != v19)
      {
        v26 = *v20;
        v25 = v20[1];
        v27 = v29 - v19;
        if (v29 < v19)
        {
          v28 = v19 - v29;
LABEL_23:
          v30 = v28 * v26 / v25;
          v22 += v30 / 0x3B9ACA00;
          v23 += v30 % 0x3B9ACA00 / 0x3E8;
          if (v23 > 999999)
          {
            ++v22;
            v23 -= 1000000;
          }

          goto LABEL_31;
        }

LABEL_29:
        v37 = v27 * v26 / v25;
        v22 -= v37 / 0x3B9ACA00;
        v23 -= v37 % 0x3B9ACA00 / 0x3E8;
        if (v23 < 0)
        {
          --v22;
          v23 += 1000000;
        }
      }
    }

LABEL_31:
    *(a2 + 92) = v22;
    *(a2 + 100) = v23;
    *(a2 + 108) = *(a3 + 16);
  }

LABEL_32:
  *(a2 + 52) = *a1;
  *(a2 + 68) = *(a1 + 1);
  v38 = *a1;
  if (v38 <= 8 && ((1 << v38) & 0x158) != 0)
  {
    v39 = *a1 << 8;
  }

  else
  {
    v39 = bswap32(*a1) >> 16;
  }

  *a2 = v39;
  if (!v8)
  {
    return 0;
  }

  result = 0;
  v41 = *a1;
  if (v41 > 5)
  {
    switch(v41)
    {
      case 6u:
        v42 = 1536;
        break;
      case 7u:
        *a2 = 1792;
        if (*(a1 + 2) >> 51 < 3uLL)
        {
          return 0;
        }

        v46 = *(a1 + 10);
        *(a2 + 140) = *(a1 + 24);
        *(a2 + 156) = v46;
        return 1;
      case 8u:
        v42 = 2048;
        break;
      default:
        return result;
    }

    *a2 = v42;
LABEL_54:

    return _chunk_support_parse_log(a2, a1, a3);
  }

  if (v41 != 2)
  {
    if (v41 != 3)
    {
      if (v41 != 4)
      {
        return result;
      }

      goto LABEL_54;
    }

    v51 = 0;
    *a2 = 768;
    v44 = *(a1 + 1);
    if (v44)
    {
      if (!(*(a1 + 2) >> 51))
      {
        return 0;
      }

      v51 = 8;
      v47 = *(a1 + 3);
      *(a2 + 36) = v47;
      *(a2 + 44) = _os_activity_map_find_parent(*(a3 + 8), v47);
      v44 = *(a1 + 1);
      v45 = 16;
    }

    else
    {
      v45 = 8;
    }

    if ((v44 & 0x10) != 0)
    {
      if (v45 > *(a1 + 11))
      {
        return 0;
      }

      v51 = v45;
    }

    result = _chunk_support_parse_location(a1, &v51, v7, a3);
    if (!result)
    {
      return result;
    }

    v48 = v51;
    *(a2 + 148) = &a1[v51 + 24];
    *(a2 + 156) = *(a1 + 11) - v48;
    return 1;
  }

  v43 = a1[1];
  switch(v43)
  {
    case 1:

      return _chunk_support_parse_activity_create(a2, a1, a3);
    case 3:

      return _chunk_support_parse_useraction(a2, a1, a3);
    case 2:

      return _chunk_support_parse_activity_swap(a2, a1, a3);
    default:
      return 0;
  }
}

uint64_t _chunk_support_parse_activity_swap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 514;
  v5 = *(a2 + 2);
  if ((v5 & 1) == 0)
  {
    LODWORD(v6) = 0;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v6 = (v6 + 8);
    if (*(a2 + 22) < v6)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (!(*(a2 + 16) >> 51))
  {
    return 0;
  }

  v7 = *(a2 + 24);
  *(a1 + 36) = v7;
  *(a1 + 44) = _os_activity_map_find_parent(*(a3 + 8), v7);
  v5 = *(a2 + 2);
  LODWORD(v6) = 8;
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if ((v5 & 0x200) == 0)
  {
    return 1;
  }

  if (v6 + 8 <= *(a2 + 22))
  {
    *(a1 + 140) = *(a2 + v6 + 24);
    return 1;
  }

  return 0;
}

uint64_t _chunk_support_parse_activity_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 513;
  v5 = *(a2 + 2);
  if ((v5 & 1) == 0)
  {
    LODWORD(v6) = 0;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = v6;
    v6 = v6 + 8;
    if (v6 > *(a2 + 22))
    {
      return 0;
    }

    *(a1 + 156) = *(a2 + v7 + 24);
    if ((*(a2 + 2) & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (!(*(a2 + 16) >> 51))
  {
    return 0;
  }

  *(a1 + 148) = *(a2 + 24);
  v5 = *(a2 + 2);
  LODWORD(v6) = 8;
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v5 & 0x200) != 0)
  {
LABEL_9:
    v8 = v6;
    v6 = v6 + 8;
    if (v6 <= *(a2 + 22))
    {
      *(a1 + 44) = *(a2 + v8 + 24);
      goto LABEL_11;
    }

    return 0;
  }

LABEL_11:
  if (v6 + 8 > *(a2 + 22))
  {
    return 0;
  }

  v12 = v6 + 8;
  *(a1 + 36) = *(a2 + v6 + 24);
  result = _chunk_support_parse_location(a2, &v12, a1 + 52, a3);
  if (result)
  {
    v10 = *(a1 + 36);
    if (v10)
    {
      v11 = *(a1 + 44);
      if (v11)
      {
        _os_activity_map_insert((a3 + 8), v10, v11);
      }
    }

    else
    {
      *(a1 + 140) = "Default/remote activity";
    }

    return 1;
  }

  return result;
}

uint64_t _chunk_support_parse_useraction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  *a1 = 515;
  v6 = *(a2 + 2);
  if ((v6 & 1) == 0)
  {
    v7 = 8;
    if ((v6 & 0x10) == 0)
    {
      return _chunk_support_parse_location(a2, &v10, a1 + 52, a3);
    }

    goto LABEL_6;
  }

  if (!(*(a2 + 16) >> 51))
  {
    return 0;
  }

  v10 = 8;
  v8 = *(a2 + 24);
  *(a1 + 36) = v8;
  *(a1 + 44) = _os_activity_map_find_parent(*(a3 + 8), v8);
  v7 = 16;
  if ((*(a2 + 2) & 0x10) != 0)
  {
LABEL_6:
    if (v7 <= *(a2 + 22))
    {
      v10 = v7;
      return _chunk_support_parse_location(a2, &v10, a1 + 52, a3);
    }

    return 0;
  }

  return _chunk_support_parse_location(a2, &v10, a1 + 52, a3);
}

uint64_t _chunk_support_parse_log(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v6 = *(a2 + 1);
  if (v6)
  {
    if (!(*(a2 + 2) >> 51))
    {
      return 0;
    }

    LODWORD(v7) = 8;
    v24 = 8;
    v8 = *(a2 + 3);
    *(a1 + 36) = v8;
    *(a1 + 44) = _os_activity_map_find_parent(*(a3 + 8), v8);
    v6 = *(a2 + 1);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  else
  {
    LODWORD(v7) = 0;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_3;
    }
  }

  v7 = (v7 + 8);
  if (*(a2 + 11) < v7)
  {
    return 0;
  }

  v24 = v7;
  if ((v6 & 0x100) != 0)
  {
LABEL_9:
    if (v7 + 4 > *(a2 + 11))
    {
      return 0;
    }

    v24 = v7 + 4;
    v9 = &a2[v7];
    v10 = *(v9 + 12);
    v11 = *(v9 + 13);
    if ((v11 + v10) <= 0x1000)
    {
      v12 = *(a3 + 80);
      if (4096 - v12 <= v10 && (*a3 & 0x80) == 0)
      {
        *(a1 + 164) = *(a3 + 72) + v12 + v10 - 4096;
        *(a1 + 172) = v11;
      }
    }
  }

LABEL_14:
  result = _chunk_support_parse_location(a2, &v24, a1 + 52, a3);
  if (!result)
  {
    return result;
  }

  LOWORD(v14) = v24;
  if ((*(a2 + 1) & 0x200) != 0)
  {
    LOWORD(v14) = v24 + 2;
    if (v24 + 2 > *(a2 + 11))
    {
      return 0;
    }

    v15 = *(a3 + 56);
    v25 = *&a2[v24 + 24];
    v16 = hashtable_lookup(*(v15 + 64), &v25);
    if (v16)
    {
      *(a1 + 180) = *(v16 + 8);
      *(a1 + 188) = *(v16 + 16);
    }
  }

  v17 = *(a2 + 1);
  if ((v17 & 0x400) != 0)
  {
    if (*(a2 + 11) <= v14)
    {
      return 0;
    }

    LOWORD(v14) = v14 + 1;
  }

  v18 = *a2;
  if (v18 == 6)
  {
    v19 = v14;
    v14 = v14 + 8;
    if (v14 > *(a2 + 11))
    {
      return 0;
    }

    *(a1 + 204) = *&a2[v19 + 24];
    *(a1 + 220) = a2[1] & 0x3F;
    *(a1 + 221) = a2[1] & 0xC0;
    v17 = *(a2 + 1);
    if (v17 < 0)
    {
      LOWORD(v14) = v19 + 12;
      v20 = *(a2 + 2);
      if ((v19 + 12) > HIWORD(v20))
      {
        return 0;
      }

      if ((v17 & 0x20) != 0)
      {
        LOWORD(v14) = v19 + 14;
        if ((v19 + 14) > HIWORD(v20))
        {
          return 0;
        }
      }
    }

    v18 = *a2;
  }

  if (v18 == 8)
  {
    v21 = v14;
    v14 = v14 + 8;
    if (v14 > *(a2 + 11))
    {
      return 0;
    }

    v22 = *&a2[v21 + 24];
    *(a1 + 220) = a2[1];
    *(a1 + 204) = v22;
    v17 = *(a2 + 1);
  }

  if ((v17 & 0x800) != 0)
  {
    v23 = v14;
    v14 = v14 + 4;
    if (v14 <= *(a2 + 11))
    {
      *(a1 + 196) = *&a2[v23 + 24];
      goto LABEL_35;
    }

    return 0;
  }

LABEL_35:
  *(a1 + 148) = &a2[v14 + 24];
  *(a1 + 156) = *(a2 + 11) - v14;
  return 1;
}

uint64_t _chunk_support_parse_location(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 56);
  if (*(v7 + 2))
  {
    v8 = 4;
  }

  else
  {
    v8 = 6;
  }

  v9 = *(a1 + 2) & 0xE;
  if (v9 <= 7)
  {
    if (v9 == 2 || v9 == 4 || v9 == 6)
    {
      v8 = 4;
      goto LABEL_20;
    }

LABEL_18:
    v8 = 0;
    goto LABEL_20;
  }

  if (v9 == 8)
  {
    goto LABEL_20;
  }

  if (v9 != 10)
  {
    if (v9 == 12)
    {
      v8 = 6;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v8 = 20;
LABEL_20:
  v12 = *a2;
  v13 = v12 + v8;
  v14 = *(a1 + 16);
  if (v13 > HIWORD(v14))
  {
    v26 = 0;
    v31 = HIWORD(v14);
LABEL_54:
    *a2 = v31;
    return v26;
  }

  v15 = *(a1 + 4);
  *a2 = v13;
  if (!v8)
  {
    return 0;
  }

  v16 = (a1 + 24 + v12);
  if (v8 == 6)
  {
    v17 = 0;
    v18 = *(v16 + 2) << 32;
  }

  else
  {
    v18 = 0;
    if (v8 == 4)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16 + 1;
    }
  }

  v19 = *v16;
  if ((*(a1 + 2) & 0x20) == 0)
  {
    v20 = 0;
    goto LABEL_31;
  }

  v21 = *(a1 + 16);
  if (v13 + 2 > HIWORD(v21))
  {
    v26 = 0;
    v31 = HIWORD(v21);
    goto LABEL_54;
  }

  *a2 = v13 + 2;
  v20 = *(a1 + 24 + v13) << 31;
LABEL_31:
  v22 = v20 | v15 & 0x7FFFFFFF;
  if (v15 >= 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 | 0x8000000000000000;
  }

  *(a3 + 72) = v23;
  if (!v23)
  {
    return 0;
  }

  v24 = v18 | v19;
  v25 = *(a1 + 2) & 0xE;
  v26 = 1;
  if (v25 <= 7)
  {
    if (v25 == 2)
    {
      *(a3 + 64) = v24;
      v17 = (v7 + 24);
      goto LABEL_48;
    }

    if (v25 != 4)
    {
      return v26;
    }

LABEL_43:
    *(a3 + 24) = v7 + 40;
    v28 = a3 + 24;
    *(v28 + 40) = v24;
    return uuidpath_sharedcache_resolve_fd(*(a4 + 4), (v7 + 40), v23, v18 | v19, 0, (v28 + 64), 0, v28, v28 + 8, 0, 0);
  }

  if (v25 == 12)
  {
    goto LABEL_43;
  }

  if (v25 != 10)
  {
    if (v25 == 8)
    {
      v27 = _catalog_procinfo_lookup_pc(v7, v18 | v19);
      if (v27)
      {
        v17 = v27 + 2;
        *(a3 + 64) = v24 - *v27;
        v23 = *(a3 + 72);
LABEL_48:
        *(a3 + 24) = v17;
        goto LABEL_49;
      }

      return 0;
    }

    return v26;
  }

  *(a3 + 64) = v24;
  *(a3 + 24) = v17;
  if (!v17)
  {
    return 0;
  }

LABEL_49:
  v30 = *(a4 + 4);

  return uuidpath_resolve_fd(v30, v17, v23, 0, (a3 + 88), 0, (a3 + 32), 0);
}

tm *_chunk_support_context_init(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 4) = -1;
  v6 = time(0);
  memset(&v5, 0, sizeof(v5));
  result = localtime_r(&v6, &v5);
  tm_isdst = v5.tm_isdst;
  v4 = ((v5.tm_gmtoff * 0x7777777777777777) >> 64) - v5.tm_gmtoff;
  *(a1 + 16) = (v4 >> 5) + (v4 >> 63) + 60 * v5.tm_isdst;
  *(a1 + 20) = tm_isdst;
  return result;
}

uint64_t _chunk_support_context_clear(uint64_t a1)
{
  _os_activity_map_destroy(*(a1 + 8));
  v2 = *(a1 + 40);
  if (v2)
  {
    _catalog_destroy(v2);
  }

  result = *(a1 + 4);
  if (result != -1)
  {
    result = close(result);
    if (result == -1)
    {
      v4 = *__error();
      result = *__error();
      if (v4 == 9)
      {
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = result;
        __break(1u);
      }

      else
      {
        return _os_assumes_log();
      }
    }
  }

  return result;
}

void *_chunk_support_context_update(void *result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  result[4] = a2;
  v4 = *a2;
  if (*a2 <= 24579)
  {
    switch(v4)
    {
      case 24577:
        v10 = *(a2 + 8);
        v6 = v10 - 16;
        if (v10 < 0x10)
        {
          goto LABEL_17;
        }

        v3 = (a2 + 32);
        v7 = *(a2 + 29) != 0;
        break;
      case 24578:
        v12 = *(a2 + 8);
        v6 = v12 - 32;
        if (v12 < 0x20)
        {
          goto LABEL_17;
        }

        v7 = 0;
        v3 = (a2 + 48);
        break;
      case 24579:
        v5 = *(a2 + 8);
        v6 = v5 - 48;
        if (v5 >= 0x30)
        {
          v7 = 0;
          v3 = (a2 + 64);
          break;
        }

LABEL_17:
        result[8] = 0;
        goto LABEL_27;
      default:
        goto LABEL_25;
    }

LABEL_24:
    if (v6 - 4097 >= 0xFFFFFFFFFFFFF00FLL)
    {
      v14 = *v3;
      if (v6 < v14)
      {
        v3 = 0;
        goto LABEL_26;
      }

      v15 = v3[1];
      if (v15 <= 0xFFF)
      {
        if (v7)
        {
          if (v6 <= v14 + (4096 - v15))
          {
            result[9] = v3 + v14;
            result[10] = (4096 - v15);
            goto LABEL_26;
          }
        }

        else if (v6 == 4096)
        {
          result[9] = v3 + v15;
          result[10] = (4096 - v15);
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    result[9] = 0;
    result[10] = 0;
LABEL_26:
    result[8] = v3;
    if ((v4 - 24577) < 4)
    {
LABEL_27:
      v13 = result[5];
      if (v13)
      {
        result = _os_procinfo_map_lookup(*(v13 + 40), *(a2 + 16), *(a2 + 24));
        v2[7] = result;
        return result;
      }

      goto LABEL_51;
    }

    if (v4 == 24592)
    {
      v9 = 0;
      goto LABEL_39;
    }

    if (v4 != 24588)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (v4 == 24580)
  {
    v11 = *(a2 + 8);
    v6 = v11 - 72;
    if (v11 < 0x48)
    {
      goto LABEL_17;
    }

    v7 = 0;
    v3 = (a2 + 88);
    goto LABEL_24;
  }

  if (v4 == 24588)
  {
    v8 = *(a2 + 8);
    if (v8 <= 0xF)
    {
      result[8] = 0;
LABEL_31:
      v9 = *(a2 + 29);
      goto LABEL_39;
    }

    v7 = 0;
    v3 = (a2 + 30);
    goto LABEL_23;
  }

  if (v4 != 24592)
  {
    goto LABEL_25;
  }

  v8 = *(a2 + 8);
  if (v8 > 0xF)
  {
    v7 = 0;
    v3 = (a2 + 32);
LABEL_23:
    v6 = v8 - 16;
    goto LABEL_24;
  }

  v9 = 0;
  result[8] = 0;
LABEL_39:
  v16 = result[5];
  if (v16)
  {
    v17 = *(v16 + 40);
    if (v17)
    {
      v18 = (v17 + 16);
      while (1)
      {
        v18 = *v18;
        if (!v18)
        {
          break;
        }

        if (v18[2] == *(a2 + 16))
        {
          v19 = v18[4];
          result[7] = v19;
          if (v19)
          {
            v20 = v9 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            v21 = *(v19 + 2);
            if (v21 < 0)
            {
              v22 = v21 & 0x7FFF;
              *(v19 + 2) = v22;
              if (v9 == 4)
              {
                *(v19 + 2) = v22 | 1;
              }
            }
          }

          return result;
        }
      }
    }
  }

LABEL_51:
  result[7] = 0;
  return result;
}

uint64_t ___os_activity_stream_mapped_file_block_invoke(void *a1, uint64_t a2)
{
  v3 = *a2;
  if (a1[5] != a2)
  {
    if (v3 <= 24577)
    {
      if (v3 <= 7423)
      {
        if (v3 != 4096 && v3 != 6912 && v3 != 7168)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v3 < 0x2000)
      {
        if (v3 != 7424 && v3 != 7680)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v3 != 0x2000)
      {
        v8 = 24577;
        goto LABEL_28;
      }

LABEL_35:
      *(*(a1[4] + 8) + 24) = _chunk_support_stream(a2, a1[6]);
      goto LABEL_36;
    }

    if (v3 <= 24586)
    {
      if (v3 == 24578 || v3 == 24579)
      {
LABEL_29:
        if (!*(a2 + 4))
        {
          goto LABEL_35;
        }

LABEL_36:
        v4 = *(*(a1[4] + 8) + 24);
        return v4 & 1;
      }

      v8 = 24580;
LABEL_28:
      if (v3 != v8)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    }

    if (v3 > 24588)
    {
      if (v3 == 24589)
      {
        goto LABEL_35;
      }

      v5 = 24592;
    }

    else
    {
      if (v3 == 24587)
      {
        if ((*(a2 + 4) - 14) > 3)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v5 = 24588;
    }

    if (v3 != v5 || (*(a2 + 4) - 14) >= 4)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v3 == 4096 && *(a2 + 8) > 0x27uLL)
  {
    goto LABEL_35;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t _chunk_support_stream(int *a1, uint64_t a2)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 1;
  *(a2 + 32) = a1;
  v4 = *a1;
  if (*a1 <= 24586)
  {
    if ((v4 - 24578) >= 3)
    {
      if (v4 != 4096)
      {
        v5 = 24577;
        goto LABEL_8;
      }

      *(a2 + 24) = a1 + 4;
LABEL_15:
      v8 = *(a2 + 104);
      if (v8)
      {
        v9 = (*(v8 + 16))(v8, a2);
        *(v36 + 24) = v9;
      }

      goto LABEL_17;
    }

LABEL_14:
    _chunk_support_context_update(a2, a1);
    goto LABEL_15;
  }

  if (v4 > 24588)
  {
    if (v4 == 24589)
    {
      v15 = *(a2 + 104);
      if (v15)
      {
        v16 = (*(v15 + 16))(v15, a2);
        *(v36 + 24) = v16;
      }

      v17 = *(a2 + 48);
      if (!v17)
      {
        v10 = 1;
        goto LABEL_18;
      }

      if ((*(a2 + 1) & 8) == 0)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 0x40000000;
        v34[2] = ___chunk_support_stream_block_invoke;
        v34[3] = &unk_2787AEAB0;
        v34[4] = &v35;
        v34[5] = a2;
        _tracev3_chunk_decompress_and_enumerate_chunks(a1, v17, v34);
        v17 = *(a2 + 48);
      }

      if (*v17)
      {
        *(a2 + 48) = *v17;
      }

      goto LABEL_17;
    }

    if (v4 != 24592)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v4 == 24587)
  {
    v12 = *(a2 + 40);
    if (v12)
    {
      _catalog_destroy(v12);
    }

    v13 = _catalog_create_with_chunk(a1, 0);
    *(a2 + 40) = v13;
    if (v13)
    {
      v14 = *(v13 + 64);
    }

    else
    {
      v14 = 0;
    }

    *(a2 + 48) = v14;
    goto LABEL_15;
  }

  v5 = 24588;
LABEL_8:
  if (v4 == v5)
  {
    _chunk_support_context_update(a2, a1);
    v6 = *(a2 + 104);
    if (v6)
    {
      v7 = (*(v6 + 16))(v6, a2);
      *(v36 + 24) = v7;
      if (v7)
      {
        goto LABEL_32;
      }
    }

    else if (v36[3])
    {
LABEL_32:
      if (*(a2 + 96))
      {
        v18 = *(a2 + 64);
        if (v18)
        {
          memset(v33, 0, 236);
          v20 = v18 + 8;
          v19 = *v18;
          v21 = v18 + v19;
          if (v19 > 0x1000)
          {
            v22 = v20;
          }

          else
          {
            v22 = v21;
          }

          while ((v20 + 12) < v22)
          {
            v23 = v20;
            v24 = *(v20 + 2);
            v25 = HIWORD(v24);
            if (!HIWORD(v24) || v25 > (v22 - (v20 + 12)))
            {
              break;
            }

            if ((v24 & 0x7000000000000) != 0)
            {
              v27 = (HIWORD(v24) & 0xFFF8) + 32;
            }

            else
            {
              v27 = v25 + 24;
            }

            v20 = (v20 + v27);
            if (*v23 && _chunk_support_convert_tracepoint(v23, v33, a2) && ((*(*(a2 + 96) + 16))(*(a2 + 96), v33, 0, v28, v29, v30, v31, v32) & 1) == 0)
            {
              *(v36 + 24) = 0;
              break;
            }
          }
        }
      }
    }
  }

LABEL_17:
  v10 = *(v36 + 24);
LABEL_18:
  _Block_object_dispose(&v35, 8);
  return v10 & 1;
}