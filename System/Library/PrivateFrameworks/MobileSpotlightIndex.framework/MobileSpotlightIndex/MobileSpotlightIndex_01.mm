unint64_t si_get_cs_orphan_oid(unint64_t result)
{
  v6 = 0;
  if (result)
  {
    v1 = result;
    if (*(result + 2072) == 1)
    {
      result = atomic_load((result + 2080));
      v6 = result;
      if (!result)
      {
        v5 = 0;
        si_get_object_for_identifier_createParentDBO(v1, @"com.apple.searchd", @"com.apple.spotlight.missingparent", 0, 1, &v6, &v5, 1);
        v2 = v5;
        if (v5)
        {
          v3 = *(v5 + 10);
          if ((v3 & 1) == 0)
          {
            *(v5 + 10) = v3 | 1;
          }

          if (v2[3] != 2)
          {
            v2[3] = 2;
            db_update_obj(*(v1 + 1192), v2, 0);
            v2 = v5;
          }

          free(v2);
        }

        v4 = 0;
        atomic_compare_exchange_strong((v1 + 2080), &v4, v6);
        if (v4)
        {
          return v4;
        }

        else
        {
          return v6;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void stack_deallocate(void *ptr, void *a2)
{
  if (*a2 > ptr || a2[2] <= ptr)
  {
    v3 = a2[4];
    --a2[3];
    malloc_zone_free(v3, ptr);
  }
}

void *get_string_and_length_for_id(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3 & 0x7FFFFFFF;
  if (v4 > 0x7FFFFFFD)
  {
    return 0;
  }

  if ((*(a1 + 804) & 0x14) != 0)
  {
    v7 = *(a1 + 8 * a2 + 880);
    v24 = 0;
    if (a4)
    {
      result = data_map_get_data_locked(v7, v4, &v24);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = data_map_get_data(v7, v4, &v24);
      if (result)
      {
        return result;
      }
    }

    v11 = result;
    v12 = data_map_count(v7);
    result = v11;
    if (v12 < v4)
    {
      v23 = v12;
      v13 = *__error();
      v14 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 4);
        v20 = data_map_valid(v7);
        *buf = 136316930;
        v26 = "_get_string_and_length_for_id";
        v27 = 1024;
        v28 = 574;
        v21 = "y";
        if (!v20)
        {
          v21 = "n";
        }

        v29 = 2048;
        v30 = v4;
        v31 = 2048;
        v32 = v23;
        v33 = 1024;
        v34 = a2;
        v35 = 2080;
        v36 = a1 + 324;
        v37 = 1024;
        v38 = v19;
        v39 = 2080;
        v40 = v21;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
      }

      *__error() = v13;
      result = v11;
      if ((*(a1 + 4) & 0x20) != 0)
      {
        v15 = *__error();
        v16 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 4);
          *buf = 136315906;
          v26 = "_get_string_and_length_for_id";
          v27 = 1024;
          v28 = 576;
          v29 = 2080;
          v30 = a1 + 324;
          v31 = 1024;
          LODWORD(v32) = v22;
          _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
        }

        *__error() = v15;
        *(a1 + 4) |= 0x40u;
        return v11;
      }
    }
  }

  else
  {
    v9 = *(a1 + 8 * a2 + 880);
    if (*(v9 + 56) > v4 && (v10 = *(*(v9 + 32) + 8 * v4)) != 0)
    {
      return (v10 + table_extra_bytes_14628[a2] + 4);
    }

    else
    {
      v17 = *(a1 + 4);
      if ((v17 & 0x20) != 0)
      {
        result = 0;
        *(a1 + 4) = v17 | 0x40;
      }

      else
      {
        if (SIIsAppleInternal_onceToken != -1)
        {
          dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
        }

        return 0;
      }
    }
  }

  return result;
}

const void *data_map_get_data_locked(uint64_t a1, unint64_t a2, size_t *a3)
{
  v117 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  data_locked = 0;
  v7 = *(a1 + 216);
  if (v7 > 842150449)
  {
    if (v7 == 1684300900)
    {
      if (*(a1 + 224) <= a2)
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
        memset(buf, 0, sizeof(buf));
        v9 = *__error();
        v47 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v62 = *(a1 + 224);
          v63 = fd_name(*(a1 + 248), buf, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map64_get_offset_entry";
          *&__s[12] = 1024;
          *&__s[14] = 359;
          *&__s[18] = 2048;
          *&__s[20] = a2;
          *&__s[28] = 2048;
          *&__s[30] = v62;
          *&__s[38] = 2048;
          *&__s[40] = a1;
          *&__s[48] = 2080;
          *&__s[50] = v63;
          v14 = "%s:%d: invalid data id %lld max %lld %p %s";
          v15 = v47;
          v16 = 58;
          goto LABEL_76;
        }

        goto LABEL_49;
      }

      v31 = *(a1 + 4456);
      if (!v31)
      {
        return 0;
      }

      v32 = *(v31 + 16 * a2);
      if (v32 == 1)
      {
        return 0;
      }

      *v84 = 0;
      *&v84[8] = 0;
      LOBYTE(v81) = 0;
      v33 = *(a1 + 296);
      if (v33 <= v32)
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
        memset(buf, 0, sizeof(buf));
        v23 = *__error();
        v34 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v66 = *(a1 + 296);
          v67 = fd_name(*(a1 + 248), buf, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map64_get_data_entry";
          *&__s[12] = 1024;
          *&__s[14] = 376;
          *&__s[18] = 2048;
          *&__s[20] = v32;
          *&__s[28] = 2048;
          *&__s[30] = v66;
          *&__s[38] = 2048;
          *&__s[40] = a1;
          *&__s[48] = 2080;
          *&__s[50] = v67;
          v27 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
          goto LABEL_81;
        }
      }

      else
      {
        data_entry_restore_64(a1 + 280, v32, v33, v84, &v81);
        if (v81 != 1)
        {
          if (a3)
          {
            *a3 = (*v84 - *(a1 + 220));
          }

          if (*(a1 + 4560))
          {
            os_unfair_lock_lock((a1 + 4552));
            v77 = *(a1 + 4560);
            if (v77)
            {
              bit_vector_set_7166(v77, a2);
            }

            os_unfair_lock_unlock((a1 + 4552));
          }

          v57 = *&v84[8];
          v58 = *(a1 + 220);
          return (v57 + v58);
        }

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
        memset(buf, 0, sizeof(buf));
        v23 = *__error();
        v34 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = fd_name(*(a1 + 248), buf, 0x100uLL);
          v36 = *(a1 + 296);
          *__s = 136316418;
          *&__s[4] = "_data_map64_get_data_entry";
          *&__s[12] = 1024;
          *&__s[14] = 372;
          *&__s[18] = 2080;
          *&__s[20] = v35;
          *&__s[28] = 2048;
          *&__s[30] = v32;
          *&__s[38] = 2048;
          *&__s[40] = v36;
          *&__s[48] = 2048;
          *&__s[50] = *v84;
          v27 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_81:
          v28 = __s;
          v29 = v34;
          v30 = 58;
LABEL_82:
          _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, v27, v28, v30);
        }
      }
    }

    else
    {
      if (v7 != 842150450)
      {
        return data_locked;
      }

      if (*(a1 + 220) <= a2)
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
        memset(buf, 0, sizeof(buf));
        v9 = *__error();
        v37 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = *(a1 + 220);
          v39 = fd_name(*(a1 + 1272), buf, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map32_get_offset_entry";
          *&__s[12] = 1024;
          *&__s[14] = 422;
          *&__s[18] = 1024;
          *&__s[20] = a2;
          *&__s[24] = 1024;
          *&__s[26] = v38;
          *&__s[30] = 2048;
          *&__s[32] = a1;
          *&__s[40] = 2080;
          *&__s[42] = v39;
          v14 = "%s:%d: invalid data id %d max %u %p %s";
          v15 = v37;
          v16 = 50;
          goto LABEL_76;
        }

LABEL_49:
        data_locked = 0;
        *__error() = v9;
        return data_locked;
      }

      v17 = *(a1 + 1352);
      if (!v17)
      {
        return 0;
      }

      v18 = *(v17 + 4 * a2);
      if (v18 == 1)
      {
        return 0;
      }

      v81 = 0;
      v82 = 0;
      v83 = 0;
      v19 = *(a1 + 1328);
      if (v19 > v18)
      {
        data_entry_restore_32(*(a1 + 1320), v18, v19, &v81, &v83);
        if (v83 == 1)
        {
          v103 = 0;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v96 = 0u;
          v20 = 5;
          v21 = v18;
          memset(__s, 0, sizeof(__s));
          do
          {
            if (v21 >= *(a1 + 1328))
            {
              break;
            }

            v22 = strlen(__s);
            sprintf(&__s[v22], "%d ", *(*(a1 + 1320) + v21++));
            --v20;
          }

          while (v20);
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
          memset(buf, 0, sizeof(buf));
          v23 = *__error();
          v24 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_53;
          }

          v25 = fd_name(*(a1 + 1272), buf, 0x100uLL);
          v26 = *(a1 + 1328);
          *v84 = 136316674;
          *&v84[4] = "_data_map32_get_data_entry";
          *&v84[12] = 1024;
          *&v84[14] = 442;
          v85 = 2080;
          v86 = v25;
          v87 = 2048;
          v88 = v18;
          v89 = 2048;
          v90 = v26;
          v91 = 2048;
          v92 = v81;
          v93 = 2080;
          v94 = __s;
          v27 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
          v28 = v84;
          v29 = v24;
          v30 = 68;
          goto LABEL_82;
        }

        if (a3)
        {
          *a3 = (v81 - *(a1 + 224));
        }

        if (*(a1 + 1448))
        {
          os_unfair_lock_lock((a1 + 1444));
          v76 = *(a1 + 1448);
          if (v76)
          {
            bit_vector_set_13535(v76, a2);
          }

          os_unfair_lock_unlock((a1 + 1444));
        }

        v57 = v82;
        v58 = *(a1 + 224);
        return (v57 + v58);
      }

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
      memset(buf, 0, sizeof(buf));
      v23 = *__error();
      v34 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v48 = *(a1 + 1328);
        v49 = fd_name(*(a1 + 1272), buf, 0x100uLL);
        *__s = 136316418;
        *&__s[4] = "_data_map32_get_data_entry";
        *&__s[12] = 1024;
        *&__s[14] = 446;
        *&__s[18] = 2048;
        *&__s[20] = v18;
        *&__s[28] = 2048;
        *&__s[30] = v48;
        *&__s[38] = 2048;
        *&__s[40] = a1;
        *&__s[48] = 2080;
        *&__s[50] = v49;
        v27 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
        goto LABEL_81;
      }
    }

LABEL_53:
    data_locked = 0;
    *__error() = v23;
    return data_locked;
  }

  if (v7 != -572662307)
  {
    if (v7 != -270471200)
    {
      return data_locked;
    }

    if (*(a1 + 224) <= a2 || (v8 = *(a1 + 296), (v8 + 1) <= 1))
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
      memset(buf, 0, sizeof(buf));
      v9 = *__error();
      v10 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 224);
        v12 = *(a1 + 296);
        v13 = fd_name(*(a1 + 248), buf, 0x100uLL);
        *__s = 136316674;
        *&__s[4] = "_data_map_ext_get_offset_entry";
        *&__s[12] = 1024;
        *&__s[14] = 417;
        *&__s[18] = 2048;
        *&__s[20] = a2;
        *&__s[28] = 2048;
        *&__s[30] = v11;
        *&__s[38] = 2048;
        *&__s[40] = a1;
        *&__s[48] = 2048;
        *&__s[50] = v12;
        *&__s[58] = 2080;
        *&__s[60] = v13;
        v14 = "%s:%d: invalid data id %lld max %lld %p map: %p %s";
        v15 = v10;
        v16 = 68;
LABEL_76:
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, v14, __s, v16);
        goto LABEL_49;
      }

      goto LABEL_49;
    }

    v50 = (v8 + 24 * a2);
    v51 = *v50;
    if (*v50 != -2)
    {
      *v84 = 0;
      *&v84[8] = 0;
      if (v51 == -1)
      {
        v59 = *(a1 + 496);
        if (v59)
        {
          Value = CFDictionaryGetValue(v59, a2);
          if (Value)
          {
            v61 = Value;
            v56 = CFDataGetLength(Value) - *(a1 + 220);
            *v84 = v56;
            *&v84[8] = &CFDataGetBytePtr(v61)[*(a1 + 220)];
            CFDataGetBytePtr(v61);
            __memcpy_chk();
            goto LABEL_71;
          }

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
          memset(buf, 0, sizeof(buf));
          v68 = *__error();
          v69 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v72 = fd_name(*(a1 + 248), buf, 0x100uLL);
            *__s = 136316162;
            *&__s[4] = "_data_map_ext_get_data_entry";
            *&__s[12] = 1024;
            *&__s[14] = 451;
            *&__s[18] = 2048;
            *&__s[20] = -1;
            *&__s[28] = 2048;
            *&__s[30] = a1;
            *&__s[38] = 2080;
            *&__s[40] = v72;
            _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", __s, 0x30u);
          }

          *__error() = v68;
          fd_name(*(a1 + 248), buf, 0x100uLL);
          si_analytics_log_3138("(1)invalid data offset 0x%lx %p %s");
        }

        else
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
          memset(buf, 0, sizeof(buf));
          v64 = *__error();
          v65 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v71 = fd_name(*(a1 + 248), buf, 0x100uLL);
            *__s = 136316162;
            *&__s[4] = "_data_map_ext_get_data_entry";
            *&__s[12] = 1024;
            *&__s[14] = 457;
            *&__s[18] = 2048;
            *&__s[20] = -1;
            *&__s[28] = 2048;
            *&__s[30] = a1;
            *&__s[38] = 2080;
            *&__s[40] = v71;
            _os_log_error_impl(&dword_1C278D000, v65, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", __s, 0x30u);
          }

          *__error() = v64;
          fd_name(*(a1 + 248), buf, 0x100uLL);
          si_analytics_log_3138("(2)invalid data offset 0x%lx %p %s");
        }
      }

      else
      {
        v53 = *(v50 + 2);
        v52 = *(v50 + 3);
        *__s = 0;
        v54 = *(a1 + 488);
        if (v54)
        {
          v55 = (*(a1 + 432))(v54, v53);
          LODWORD(v81) = 0;
          if (v55)
          {
            *&v84[8] = (*(a1 + 440))(v55, v51, v52, &v81, __s);
            v56 = *__s;
            *v84 = *__s;
            *&v84[4] = v81;
LABEL_71:
            if (a3)
            {
              *a3 = v56;
            }

            if (*(a1 + 464))
            {
              os_unfair_lock_lock((a1 + 456));
              v78 = *(a1 + 464);
              if (v78)
              {
                bit_vector_set_7166(v78, a2);
              }

              os_unfair_lock_unlock((a1 + 456));
            }

            return *&v84[8];
          }

          if (data_entry_restore_ext__COUNT_ >= 1)
          {
            --data_entry_restore_ext__COUNT_;
LABEL_108:
            v79 = *__error();
            v80 = _SILogForLogForCategory(16);
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              *&buf[4] = "data_entry_restore_ext";
              *&buf[12] = 1024;
              *&buf[14] = 396;
              *&buf[18] = 2048;
              *&buf[20] = a2;
              *&buf[28] = 1024;
              *&buf[30] = v53;
              *&buf[34] = 2048;
              *&buf[36] = v51;
              *&buf[44] = 1024;
              *&buf[46] = v52;
              _os_log_error_impl(&dword_1C278D000, v80, OS_LOG_TYPE_ERROR, "%s:%d: data id %lld invalid indexId %u offset 0x%llx meta 0x%x", buf, 0x32u);
            }

            *__error() = v79;
            return 0;
          }

          if (++data_entry_restore_ext__COUNT2_ == 100)
          {
            data_entry_restore_ext__COUNT2_ = 0;
            goto LABEL_108;
          }
        }
      }
    }

    return 0;
  }

  if (*(a1 + 432))
  {
    pthread_rwlock_wrlock((a1 + 224));
  }

  else
  {
    pthread_rwlock_rdlock((a1 + 224));
  }

  data_locked = data_map_get_data_locked(*(a1 + 440), a2, a3);
  *__s = 0;
  v40 = (*(**(a1 + 448) + 120))(*(a1 + 448), a2, __s);
  pthread_rwlock_unlock((a1 + 224));
  v41 = *a3;
  v42 = *__s;
  if (*a3 != *__s)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
      *&buf[12] = 1024;
      *&buf[14] = 439;
      *&buf[18] = 2080;
      *&buf[20] = "data_map_double_get_data_locked";
      *&buf[28] = 2080;
      *&buf[30] = "*out_data_size == size_new";
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      v41 = *a3;
      v42 = *__s;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v41;
      *&buf[12] = 2048;
      *&buf[14] = v42;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      v41 = *a3;
      v42 = *__s;
    }

    v43 = v41 == v42;
    v41 = v42;
    if (!v43)
    {
      v73 = __si_assert_copy_extra_332();
      v45 = v73;
      v74 = "";
      if (v73)
      {
        v74 = v73;
      }

      __message_assert(v73, "data_map_double.m", 439, "*out_data_size == size_new", v74);
      goto LABEL_91;
    }
  }

  if (v41)
  {
    if (memcmp(data_locked, v40, v41) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "assertion failed", buf, 2u);
      v41 = *a3;
    }

    if (memcmp(data_locked, v40, v41))
    {
      v44 = __si_assert_copy_extra_332();
      v45 = v44;
      v46 = "";
      if (v44)
      {
        v46 = v44;
      }

      __message_assert(v44, "data_map_double.m", 441, "memcmp(output, output_new, *out_data_size) == 0", v46);
LABEL_91:
      free(v45);
      if (__valid_fs(-1))
      {
        v75 = 2989;
      }

      else
      {
        v75 = 3072;
      }

      *v75 = -559038737;
      abort();
    }
  }

  return data_locked;
}

uint64_t db2_get_field_tags_for_id_locked(uint64_t a1, int a2, char *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a2 & 0x7FFFFFFF;
  if (v4 <= 0x7FFFFFFD)
  {
    v5 = *(a1 + 880);
    if ((*(a1 + 804) & 0x14) != 0)
    {
      v24 = 0;
      data_locked = data_map_get_data_locked(v5, a2 & 0x7FFFFFFF, &v24);
      if (!data_locked)
      {
        v8 = data_map_count(v5);
        if (v8 < v4)
        {
          v23 = v8;
          v15 = *__error();
          v16 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v19 = *(a1 + 4);
            v20 = data_map_valid(v5);
            *buf = 136316930;
            v26 = "_get_string_and_length_for_id";
            v27 = 1024;
            v28 = 574;
            v21 = "y";
            if (!v20)
            {
              v21 = "n";
            }

            v29 = 2048;
            v30 = v4;
            v31 = 2048;
            v32 = v23;
            v33 = 1024;
            v34 = 0;
            v35 = 2080;
            v36 = a1 + 324;
            v37 = 1024;
            v38 = v19;
            v39 = 2080;
            v40 = v21;
            _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
          }

          *__error() = v15;
          if ((*(a1 + 4) & 0x20) != 0)
          {
            v17 = *__error();
            v18 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v22 = *(a1 + 4);
              *buf = 136315906;
              v26 = "_get_string_and_length_for_id";
              v27 = 1024;
              v28 = 576;
              v29 = 2080;
              v30 = a1 + 324;
              v31 = 1024;
              LODWORD(v32) = v22;
              _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
            }

            *__error() = v17;
            *(a1 + 4) |= 0x40u;
          }
        }

        goto LABEL_5;
      }
    }

    else
    {
      if (*(v5 + 56) <= v4 || (v12 = *(*(v5 + 32) + 8 * v4)) == 0)
      {
        v14 = *(a1 + 4);
        if ((v14 & 0x20) != 0)
        {
          v9 = 0;
          v10 = 0;
          *(a1 + 4) = v14 | 0x40;
          v11 = 1;
          goto LABEL_10;
        }

        if (SIIsAppleInternal_onceToken == -1)
        {
          v9 = 0;
          v10 = 0;
          v11 = 1;
          goto LABEL_10;
        }

        dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
        goto LABEL_5;
      }

      data_locked = (v12 + 6);
    }

    v11 = 0;
    v10 = *(data_locked - 2);
    v9 = *(data_locked - 1);
    goto LABEL_10;
  }

LABEL_5:
  v9 = 0;
  v10 = 0;
  v11 = 1;
LABEL_10:
  *a3 = v11;
  return v10 | (v9 << 8);
}

uint64_t db_get_obj_callback(int *a1, unint64_t a2, void **a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, _DWORD *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *a1;
      *buf = 136315650;
      v16 = "db_get_obj_callback";
      v17 = 1024;
      v18 = 316;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v9;
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 316, v14);
    free(v13);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return db2_get_obj_callback(a1, a2, a3, a4, a5, a6, a7);
}

BOOL db_rwlock_reader_excluded(uint64_t a1, unsigned int a2, char a3)
{
  if (*(a1 + 184) && ((a3 & 1) != 0 || *(a1 + 212) != 1) || *(a1 + 160) && *(a1 + 192) >= a2 && (a3 & 1) == 0 && !*(a1 + 200))
  {
    return 1;
  }

  if (!*(a1 + 196) && *(a1 + 212) != 1)
  {
    return 0;
  }

  v3 = a2 <= 5 ? 5 : a2;
  v4 = (a1 + 16 * a2 + 80);
  v5 = v3 - a2 + 1;
  while (--v5)
  {
    v6 = *v4;
    v4 += 2;
    if (v6)
    {
      return 1;
    }
  }

  return *(a1 + 64 + 16 * a2) && !*(a1 + 200);
}

void fd_assert_not_unlinked(uint64_t a1)
{
  os_unfair_lock_lock(&map_guard_lock);
  if (a1)
  {
    v2 = *(a1 + 60);
    os_unfair_lock_unlock(&map_guard_lock);
    if ((v2 & 0x200) != 0)
    {
      v3 = __si_assert_copy_extra_661(*(a1 + 44));
      v4 = v3;
      v5 = "";
      if (v3)
      {
        v5 = v3;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Unexpected delete of %s from %d", "fd_obj.c", 1823, "!unlinked", v5, *(a1 + 72), *(a1 + 64));
      free(v4);
      if (__valid_fs(*(a1 + 44)))
      {
        v6 = 2989;
      }

      else
      {
        v6 = 3072;
      }

      *v6 = -559038737;
      abort();
    }
  }

  else
  {

    os_unfair_lock_unlock(&map_guard_lock);
  }
}

uint64_t fd_guarded_mmap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = fd_mmap(a1, a2, 1, 1025, a3);
  if (v4 != -1)
  {
    os_unfair_lock_lock(&map_guard_lock);
    ++*(a1 + 60);
    os_unfair_lock_unlock(&map_guard_lock);
  }

  return v4;
}

void __setCSAttributes1_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __setCSAttributes1_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_2014;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v14 = *(a1 + 108);
  v6[4] = v4;
  v6[5] = v3;
  v7 = *(a1 + 64);
  v5 = *(a1 + 88);
  v8 = *(a1 + 80);
  v9 = v2;
  v10 = v5;
  v11 = v1;
  v13 = *(a1 + 104);
  v12 = *(a1 + 96);
  si_indexingWatchdogPerform(v2, v1, v3, 6u, v6);
}

void si_indexingWatchdogPerform(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 2072);
  if (v8 == 1)
  {
    v10 = *(a1 + 64);
    os_unfair_lock_lock((v10 + 64));
    if (a4 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = a4;
    }

    v12 = 2 * a3 * v11;
    if (v12 >= 0x1A4)
    {
      v12 = 420;
    }

    v13 = v12 + 60;
    Current = CFAbsoluteTimeGetCurrent();
    *(v10 + 48) = Current;
    v15 = Current;
    *(v10 + 40) = v13;
    *(v10 + 56) = 0;
    *(v10 + 72) = a3;
    *(v10 + 76) = a4;
    *(v10 + 96) = pthread_self();
    *(v10 + 16) = 0;
    *(v10 + 80) = 0;
    v16 = *(a1 + 60);
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = v16 >> 1;
    }

    *(v10 + 88) = v17;
    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    v20 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *v10;
      *buf = 134219010;
      v49 = v21;
      v50 = 2048;
      v51 = v13;
      v52 = 2048;
      v53 = v15;
      v54 = 2048;
      v55 = a3;
      v56 = 2112;
      v57 = a2;
      _os_log_impl(&dword_1C278D000, v19, v20, "Starting the indexing watchdog, timer:%p, delta:%llus, startTime:%.3f, itemCount:%lu, bundleID:%@", buf, 0x34u);
    }

    *__error() = v18;
    v22 = *v10;
    v23 = dispatch_time(0, 1000000000 * v13);
    dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (*(v10 + 68))
    {
      *(v10 + 56) = v15;
    }

    else
    {
      dispatch_resume(*v10);
    }

    os_unfair_lock_unlock((v10 + 64));
    v26 = v13;
    v24 = v15;
    v25 = v10;
  }

  else
  {
    v24 = 0.0;
    v25 = 0;
    v26 = 0;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v28 = setThreadIdAndInfo(*(a1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  *buf = v28;
  v29 = threadData[9 * v28 + 1] + 320 * HIDWORD(v28);
  v47 = HIDWORD(v28);
  v46 = __PAIR64__(v30, v31);
  *(v29 + 216) = 0;
  v32 = *(v29 + 312);
  v33 = *(v29 + 224);
  if (v33)
  {
    v33(*(v29 + 288));
  }

  v45 = *buf;
  v44 = v47;
  v43 = v46;
  if (_setjmp(v29))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v42 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v42, 2u);
    }

    *(v29 + 312) = v32;
    CIOnThreadCleanUpReset(v43);
    dropThreadId(v45, 1, add_explicit + 1);
    CICleanUpReset(v45, HIDWORD(v43));
    if (!v8)
    {
      return;
    }

LABEL_27:
    os_unfair_lock_lock((v25 + 64));
    if (!*(v25 + 68))
    {
      dispatch_suspend(*v25);
    }

    *(v25 + 16) = 1;
    v36 = CFAbsoluteTimeGetCurrent();
    v37 = *__error();
    v38 = _SILogForLogForCategory(0);
    v39 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v38, v39))
    {
      v40 = *v25;
      *buf = 134219010;
      v49 = v40;
      v50 = 2048;
      v51 = v26;
      v52 = 2048;
      v53 = v36 - v24;
      v54 = 2048;
      v55 = a3;
      v56 = 2112;
      v57 = a2;
      _os_log_impl(&dword_1C278D000, v38, v39, "Stopping the indexing watchdog, timer:%p, delta:%llus, time:%.3f, itemCount:%lu, bundleId:%@", buf, 0x34u);
    }

    *__error() = v37;
    dispatch_source_set_timer(*v25, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    *(v25 + 80) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 40) = 0;
    os_unfair_lock_unlock((v25 + 64));
    return;
  }

  (*(a5 + 16))(a5);
  v34 = threadData[9 * v45 + 1] + 320 * v44;
  *(v34 + 312) = v32;
  v35 = *(v34 + 232);
  if (v35)
  {
    v35(*(v34 + 288));
  }

  dropThreadId(v45, 0, add_explicit + 1);
  if (v8)
  {
    goto LABEL_27;
  }
}

uint64_t __setCSAttributes1_block_invoke_2(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(a1 + 32), 0x40000000, add_explicit + 1);
  v39 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v37 = v5;
  v38 = HIDWORD(v3);
  v36 = v6;
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v35 = v39;
  v34 = v38;
  v33 = v37;
  v32 = v36;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v32);
    dropThreadId(v35, 1, add_explicit + 1);
    return CICleanUpReset(v35, v33);
  }

  v10 = *(a1 + 32);
  if (v10[82] & 2) != 0 || (*(a1 + 108))
  {
    v11 = 1;
LABEL_10:
    v12 = v11;
    *buf = 0;
    v13 = *(a1 + 40);
    goto LABEL_11;
  }

  LODWORD(v21) = gCPUCount;
  if (gCPUCount <= 1)
  {
    LODWORD(v21) = 1;
  }

  if (v21 >= 0x10)
  {
    v21 = 16;
  }

  else
  {
    v21 = v21;
  }

  v22 = *(a1 + 40);
  v11 = v21;
  if (v22 > v21)
  {
    goto LABEL_10;
  }

  *buf = 0;
  v13 = v22;
  v12 = v22;
  if (!v22)
  {
    v15 = 0;
    v14 = -1;
    v16 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v14 = *(*v10 + 32);
  v15 = v13;
  v16 = v12;
LABEL_12:
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v17 = *(a1 + 64);
  v24 = *(a1 + 48);
  v23[2] = __setCSAttributes1_block_invoke_3;
  v23[3] = &__block_descriptor_tmp_2013;
  v23[4] = v10;
  v23[5] = buf;
  v23[6] = v15;
  v25 = v17;
  v26 = *(a1 + 80);
  v18 = *(a1 + 104);
  v28 = v14;
  v29 = v18;
  v30 = 0;
  v27 = *(a1 + 88);
  dispatch_apply(v16, 0, v23);
  v19 = threadData[9 * v35 + 1] + 320 * v34;
  *(v19 + 312) = v7;
  v20 = *(v19 + 232);
  if (v20)
  {
    v20(*(v19 + 288));
  }

  return dropThreadId(v35, 0, add_explicit + 1);
}

uint64_t __setCSAttributes1_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x1E69E9840];
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(*(a1 + 112), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v55 = v5;
  v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v53 = v7;
  v54 = HIDWORD(v5);
  v52 = v8;
  *(v6 + 216) = 0;
  v9 = *(v6 + 312);
  v10 = *(v6 + 224);
  if (v10)
  {
    v10(*(v6 + 288));
  }

  v51 = v55;
  v50 = v54;
  v49 = v53;
  v48 = v52;
  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v6 + 312) = v9;
    CIOnThreadCleanUpReset(v48);
    dropThreadId(v51, 1, add_explicit + 1);
    return CICleanUpReset(v51, v49);
  }

  else
  {
    v12 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v13 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(a1 + 32), 0x40000000, v12 + 1);
    v47 = v13;
    v45 = v14;
    v46 = HIDWORD(v13);
    v44 = v15;
    v16 = threadData[9 * v13 + 1] + 320 * HIDWORD(v13);
    *(v16 + 216) = 0;
    v17 = *(v16 + 312);
    v18 = *(v16 + 224);
    if (v18)
    {
      v18(*(v16 + 288));
    }

    v43 = v47;
    v42 = v46;
    v41 = v45;
    v40 = v44;
    if (_setjmp(v16))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v16 + 312) = v17;
      CIOnThreadCleanUpReset(v40);
      dropThreadId(v43, 1, v12 + 1);
      CICleanUpReset(v43, v41);
    }

    else
    {
      v34 = v17;
      v35 = v12;
      MEMORY[0x1EEE9AC00](v19);
      bzero(v33, 0x1000uLL);
      v20 = _SIStackAllocatorCreate(v33, 4096, indexingZone);
      if (atomic_fetch_add_explicit(*(a1 + 40), 1uLL, memory_order_relaxed) < *(a1 + 48))
      {
        v21 = v20;
        do
        {
          if (!v33[3])
          {
            v33[1] = (v33[0] + 55) & 0xFFFFFFFFFFFFFFF0;
          }

          memset(buf, 0, sizeof(buf));
          v39 = 0;
          v36 = *(a1 + 56);
          v37 = *(a1 + 72);
          _MDPlistArrayGetPlistObjectAtIndex();
          v22 = *(a1 + 80);
          v23 = *(a1 + 88);
          v24 = *(a1 + 116);
          v25 = *(a1 + 120);
          v26 = *(a1 + 96);
          v27 = *(a1 + 104);
          v36 = *buf;
          v37 = v39;
          v28 = processOne(v22, v23, v26, 0, &v36, v24, v21, 1u, v25, v27);
        }

        while ((!a2 || !v28) && atomic_fetch_add_explicit(*(a1 + 40), 1uLL, memory_order_relaxed) < *(a1 + 48));
      }

      v29 = threadData[9 * v43 + 1] + 320 * v42;
      *(v29 + 312) = v34;
      v30 = *(v29 + 232);
      if (v30)
      {
        v30(*(v29 + 288));
      }

      dropThreadId(v43, 0, v35 + 1);
    }

    v31 = threadData[9 * v51 + 1] + 320 * v50;
    *(v31 + 312) = v9;
    v32 = *(v31 + 232);
    if (v32)
    {
      v32(*(v31 + 288));
    }

    return dropThreadId(v51, 0, add_explicit + 1);
  }
}

CFAllocatorRef _SIStackAllocatorCreate(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a1;
  a1[1] = (a1 + 55) & 0xFFFFFFFFFFFFFFF0;
  a1[2] = a1 + a2;
  a1[3] = 0;
  a1[4] = a3;
  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  context.allocate = stack_allocate;
  context.reallocate = stack_reallocate;
  context.deallocate = stack_deallocate;
  context.preferredSize = preferredSize;
  result = CFAllocatorCreate(*MEMORY[0x1E695E4B0], &context);
  v5 = (a1[1] + 15) & 0xFFFFFFFFFFFFFFF0;
  *a1 = v5;
  a1[1] = v5;
  return result;
}

void *stack_allocate(size_t size, uint64_t a2, uint64_t a3)
{
  result = *(a3 + 8);
  v6 = (result + size + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v6 >= *(a3 + 16))
  {
    result = malloc_type_zone_malloc(*(a3 + 32), size, 0x404A9EEFuLL);
    if (result)
    {
      ++*(a3 + 24);
    }
  }

  else
  {
    *(a3 + 8) = v6;
  }

  return result;
}

void __processOneCS_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  if (a3 >= 8)
  {
    v6 = *a2 == 1229213035 && *(a2 + 3) == 1835365449;
    v7 = !v6;
    if (a3 >= 0xE && !v7)
    {
      v8 = a2 + a3;
      if (*(a2 + a3 - 7) == 1936876880 && *(a2 + a3 - 4) == 1936617331)
      {
        return;
      }

      if (a3 >= 0x11)
      {
        if (*(v8 - 10) == 0x616E6F6974636944 && *(v8 - 2) == 31090)
        {
          return;
        }

        if (*(v8 - 10) == 0x69747265706F7250 && *(v8 - 2) == 29541)
        {
          return;
        }

        if (a3 != 17)
        {
          if (*(v8 - 11) == 0x746E6F434C4D5448 && *(v8 - 8) == 0x746E65746E6F434CLL)
          {
            return;
          }

          if (a3 >= 0x16)
          {
            v13 = *(v8 - 15);
            v14 = *(v8 - 8);
            if (v13 == 0x746E6F434C4D5448 && v14 == 0x61746144746E6574)
            {
              return;
            }
          }
        }
      }
    }
  }

  if (_MDPlistGetPlistObjectType() == 247)
  {
    v16 = _MDPlistContainerCopyObject();
    if (!v16)
    {
      return;
    }

    v17 = v16;
    v18 = CFURLCopyAbsoluteURL(v16);
    if (v18)
    {
      v19 = v18;
      v20 = CFURLGetString(v18);
      v21 = v20 ? CFRetain(v20) : 0;
      CFRelease(v19);
    }

    else
    {
      v21 = 0;
    }

    CFRelease(v17);
    if (!v21)
    {
      return;
    }
  }

  else
  {
    v21 = _MDPlistContainerCopyCSObject();
    if (!v21)
    {
      return;
    }
  }

  v22 = CFStringCreateWithCStringNoCopy(*(a1 + 40), a2, 0x8000100u, *MEMORY[0x1E695E498]);
  if (v22)
  {
    v23 = v22;
    v24 = *(a1 + 48);
    if (v24 == CFGetTypeID(v21))
    {
      *(*(*(a1 + 32) + 8) + 24) += CFStringGetLength(v21);
    }

    CFDictionaryAddValue(*(a1 + 56), v23, v21);
    CFRelease(v23);
  }

  CFRelease(v21);
}

uint64_t _page_fetch_with_fd(uint64_t a1, const void **value_out, uint64_t a3, unsigned int a4, uint64_t a5, _DWORD *a6, uint64_t __fd, unsigned int *a8)
{
  v11 = a5;
  v12 = a3;
  v154[3] = *MEMORY[0x1E69E9840];
  ptr = 0;
  if (a8)
  {
    v15 = *(a8 + 9);
    if ((a5 & 0x2000) != 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v15 = 0;
    if ((a5 & 0x2000) != 0)
    {
      goto LABEL_54;
    }
  }

  v16 = *(a1 + 928);
  if (a3 && (a5 & 0x10) != 0)
  {
    v142 = a5 & 3;
    v17 = (v16 + 8);
    if ((a5 & 3) != 0)
    {
      pthread_rwlock_rdlock(v17);
    }

    else
    {
      pthread_rwlock_wrlock(v17);
    }

    v19 = *(v16 + 220);
    if (v19 >= 1)
    {
      v20 = 0;
      while (*(v16 + 252 + 4 * v20) != v12)
      {
        if (v19 == ++v20)
        {
          goto LABEL_27;
        }
      }

      atomic_fetch_add((v16 + 216), 1u);
      v21 = v16 + 48 * v20;
      v22 = malloc_type_malloc(*(*(v21 + 272) + 8), 0xAC1EEBDFuLL);
      memcpy(v22, *(v21 + 272), *(*(v21 + 272) + 8));
      v22[1] = *(*(v21 + 272) + 8);
      *value_out = v22;
      if (!v142)
      {
LABEL_20:
        db_cache_mru(v16, v20);
      }

LABEL_21:
      pthread_rwlock_unlock((v16 + 8));
      result = 0;
      *a6 = 1;
      return result;
    }

LABEL_27:
    pthread_rwlock_unlock((v16 + 8));
    goto LABEL_28;
  }

  if (a3 && (a5 & 4) == 0)
  {
    v143 = a5 & 3;
    v18 = (v16 + 8);
    if ((a5 & 3) != 0)
    {
      pthread_rwlock_rdlock(v18);
    }

    else
    {
      pthread_rwlock_wrlock(v18);
    }

    v24 = *(v16 + 220);
    if (v24 >= 1)
    {
      v20 = 0;
      while (*(v16 + 252 + 4 * v20) != v12)
      {
        if (v24 == ++v20)
        {
          goto LABEL_27;
        }
      }

      atomic_fetch_add((v16 + 216), 1u);
      *value_out = *(v16 + 48 * v20 + 272);
      if (!v143)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_28:
  atomic_fetch_add((v16 + 228), 1u);
  if ((v11 & 2) != 0)
  {
    goto LABEL_54;
  }

  if ((v11 & 8) == 0)
  {
    v25 = *(a1 + 928);
    if (v11)
    {
      if (page_cache_copy_page(*(a1 + 928), value_out, v12, v11))
      {
        goto LABEL_54;
      }

      if ((*(*value_out + 12) & 0xF0) != 0)
      {
        v32 = __si_assert_copy_extra_3233(0, -1);
        v33 = v32;
        v34 = "";
        if (v32)
        {
          v34 = v32;
        }

        __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: tried to read attr name table data! pgnum 0x%x, flags 0x%x\n", "sdb2.c", 2408, "((*dbpp)->flags & DB_PAGE_STRING_DATA)==0", v34, v12, *(*value_out + 3));
        goto LABEL_225;
      }
    }

    else
    {
      v148[0] = MEMORY[0x1E69E9820];
      v148[1] = 0x40000000;
      v148[2] = ___page_fetch_with_fd_block_invoke;
      v148[3] = &__block_descriptor_tmp_193;
      v148[4] = a1;
      v149 = v11;
      *v152 = 0;
      if (page_cache_copy_page(v25, v152, v12, 4))
      {
        goto LABEL_54;
      }

      if (v25[13].n128_u32[3])
      {
        v26 = atomic_load(&v25[14].n128_u32[1]);
        v27 = 100 * v26;
        v28 = atomic_load(&v25[13].n128_u32[2]);
        v29 = v25[13].n128_i32[3];
        if (v27 > v28 && v29 <= 3)
        {
          if (v25[15].n128_u32[v29 + 2])
          {
            v31 = atomic_load(&v25[14].n128_u32[1]);
            v29 = v25[13].n128_i32[3];
            if (v31 > 10 * v29 && MEMORY[0xFFFFFC030] <= 0x32u)
            {
              v25[13].n128_u32[3] = ++v29;
              atomic_store(0, &v25[14].n128_u32[1]);
              atomic_store(0, &v25[13].n128_u32[2]);
            }
          }
        }
      }

      else
      {
        v29 = 2;
        v25[13].n128_u32[3] = 2;
      }

      v35 = v29 - 1;
      if (db_cache_flush_entry(v25, v29 - 1, v148))
      {
        goto LABEL_54;
      }

      v111 = &v25[3 * v35];
      free(v111[17].n128_u64[1]);
      v111[17].n128_u64[1] = 0;
      v112 = *v152;
      free(v111[17].n128_u64[0]);
      v111[17].n128_u64[0] = v112;
      v25[15].n128_u32[v35 + 3] = v12;
      v111[18].n128_u32[0] = 0;
      *value_out = v112;
      db_cache_mru(v25, v35);
      v25[18].n128_u64[1] = 0;
      v25[19].n128_u32[0] = 0;
      v25[19].n128_u64[1] = 0;
      if ((*(*value_out + 12) & 0xF0) != 0)
      {
        v133 = __si_assert_copy_extra_3233(0, -1);
        v131 = v133;
        v134 = "";
        if (v133)
        {
          v134 = v133;
        }

        __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: tried to read attr name table data! pgnum 0x%x, flags 0x%x\n", "sdb2.c", 2415, "((*dbpp)->flags & DB_PAGE_STRING_DATA)==0", v134, v12, *(*value_out + 3));
        goto LABEL_216;
      }
    }

    result = 0;
    *a6 = 2;
    return result;
  }

  if (!page_cache_fetch(*(a1 + 928), value_out, v12))
  {
    *a6 = 2;
    if ((*(*value_out + 12) & 0xF0) == 0)
    {
      return 0;
    }

    v130 = __si_assert_copy_extra_3233(0, -1);
    v131 = v130;
    v132 = "";
    if (v130)
    {
      v132 = v130;
    }

    __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: tried to read attr name table data! pgnum 0x%x, flags 0x%x\n", "sdb2.c", 2400, "((*dbpp)->flags & DB_PAGE_STRING_DATA)==0", v132, v12, *(*value_out + 3));
    goto LABEL_216;
  }

LABEL_54:
  *a6 = 0;
  v36 = (v11 & 4) == 0;
  if ((v11 & 4) != 0)
  {
    v55 = *value_out;
    ptr = *value_out;
    goto LABEL_99;
  }

  if (v11)
  {
    if (v15)
    {
      v36 = 0;
      ptr = v15;
      v55 = v15;
      goto LABEL_100;
    }

    v56 = a4;
    goto LABEL_98;
  }

  if (v12 && (db_cache_contains(*(a1 + 928), v12, 0) & 1) == 0)
  {
    v144 = v15;
    *v152 = v12 << *(a1 + 12);
    *&v152[8] = a4;
    v37 = *(a1 + 848);
    *buf = 0;
    v38 = _fd_acquire_fd(v37, buf);
    do
    {
      v39 = fcntl(v38, 44, v152);
      v40 = g_prot_error_callback;
      if (v39 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v42 = v37[10];
      v43 = __error();
    }

    while (((*(v40 + 16))(v40, v42, *v43, 12) & 1) != 0);
    _fd_release_fd(v37, v38, 0, *buf);
    v36 = (v11 & 4) == 0;
    v15 = v144;
  }

  ptr = 0;
  if ((*(a1 + 804) & 8) != 0)
  {
    goto LABEL_96;
  }

  v145 = v15;
  if (*(a1 + 1000) && *(a1 + 1008))
  {
    v140 = value_out;
    v44 = v36;
    v45 = *__error();
    v46 = _SILogForLogForCategory(7);
    v47 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v46, v47))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v46, v47, "db_flush_cache_lru: start callback", buf, 2u);
    }

    *__error() = v45;
    (*(a1 + 1008))(*(a1 + 1000), 0);
    v36 = v44;
    value_out = v140;
  }

  v48 = *(a1 + 928);
  *v152 = MEMORY[0x1E69E9820];
  *&v152[8] = 0x40000000;
  *&v152[16] = __db_flush_cache_lru_block_invoke;
  *&v152[24] = &__block_descriptor_tmp_215;
  *&v152[32] = a1;
  *&v152[40] = &ptr;
  *&v152[48] = v11 & 0x4000;
  if (v48[55])
  {
    v49 = atomic_load(v48 + 57);
    v50 = 100 * v49;
    v51 = atomic_load(v48 + 54);
    v52 = v48[55];
    if (v50 > v51 && v52 <= 3)
    {
      if (v48[v52 + 62])
      {
        v54 = atomic_load(v48 + 57);
        v52 = v48[55];
        if (v54 > 10 * v52 && MEMORY[0xFFFFFC030] <= 0x32u)
        {
          v48[55] = ++v52;
          atomic_store(0, v48 + 57);
          atomic_store(0, v48 + 54);
        }
      }
    }
  }

  else
  {
    v52 = 2;
    v48[55] = 2;
  }

  v57 = db_cache_flush_entry(v48, v52 - 1, v152);
  if (*(a1 + 1000) && *(a1 + 1008))
  {
    v141 = value_out;
    v58 = v36;
    v59 = v57;
    v60 = *__error();
    v61 = _SILogForLogForCategory(7);
    v62 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v61, v62))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v61, v62, "db_flush_cache_lru: end callback", buf, 2u);
    }

    *__error() = v60;
    (*(a1 + 1008))(*(a1 + 1000), 1);
    v57 = v59;
    v36 = v58;
    value_out = v141;
    v15 = v145;
  }

  if (v57)
  {
    v63 = v57;
    free(ptr);
    return v63;
  }

  if (!ptr)
  {
LABEL_96:
    v55 = 0;
    v64 = a4;
    goto LABEL_97;
  }

  v64 = a4;
  v65 = malloc_size(ptr);
  v55 = ptr;
  if (v65 < a4)
  {
LABEL_97:
    free(v55);
    v56 = v64;
LABEL_98:
    v55 = malloc_type_valloc(v56, 0x1000040A86A77D5uLL);
    ptr = v55;
  }

LABEL_99:
  if (!v55)
  {
    return 12;
  }

LABEL_100:
  if (!a8 || (v67 = *a8, v66 = a8[1], v66 >= *a8))
  {
LABEL_108:
    if (__fd == -1)
    {
      v74 = fd_pread(*(a1 + 848), v55, a4, v12 << *(a1 + 12));
      if (v74 == a4)
      {
        v75 = 0;
        goto LABEL_137;
      }

      v80 = v74;
      *(a1 + 4) |= 4u;
      v81 = *__error();
      v82 = *__error();
      v83 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        *v152 = 136316674;
        *&v152[4] = "_page_fetch_with_fd";
        *&v152[12] = 1024;
        *&v152[14] = 2485;
        *&v152[18] = 1024;
        *&v152[20] = v12;
        *&v152[24] = 1024;
        *&v152[26] = v81;
        *&v152[30] = 2080;
        *&v152[32] = a1 + 324;
        *&v152[40] = 2048;
        *&v152[42] = v80;
        *&v152[50] = 2048;
        *&v152[52] = a4;
        _os_log_error_impl(&dword_1C278D000, v83, OS_LOG_TYPE_ERROR, "%s:%d: Failed reading pgnum %d error:%d (%s) %zd != %zd", v152, 0x3Cu);
      }

      *__error() = v82;
      *__error() = v81;
      if (*__error())
      {
        if (!v36)
        {
          return *__error();
        }
      }

      else
      {
        *__error() = 22;
        if (!v36)
        {
          return *__error();
        }
      }
    }

    else
    {
      v146 = v15;
      v69 = v36;
      v70 = v12 << *(a1 + 12);
      while (1)
      {
        v71 = pread(__fd, v55, a4, v70);
        if (v71 != -1)
        {
          break;
        }

        v72 = g_prot_error_callback;
        if (!g_prot_error_callback)
        {
          break;
        }

        v73 = __error();
        if (((*(v72 + 16))(v72, __fd, *v73, 4) & 1) == 0)
        {
          v71 = -1;
          goto LABEL_119;
        }
      }

      if (v71 == a4)
      {
        v75 = 0;
        v36 = v69;
        v15 = v146;
        goto LABEL_137;
      }

LABEL_119:
      v76 = v71;
      *(a1 + 4) |= 4u;
      v77 = *__error();
      v78 = *__error();
      v79 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        *v152 = 136316674;
        *&v152[4] = "_page_fetch_with_fd";
        *&v152[12] = 1024;
        *&v152[14] = 2499;
        *&v152[18] = 1024;
        *&v152[20] = v12;
        *&v152[24] = 1024;
        *&v152[26] = v77;
        *&v152[30] = 2080;
        *&v152[32] = a1 + 324;
        *&v152[40] = 2048;
        *&v152[42] = v76;
        *&v152[50] = 2048;
        *&v152[52] = a4;
        _os_log_error_impl(&dword_1C278D000, v79, OS_LOG_TYPE_ERROR, "%s:%d: Failed reading pgnum %d error:%d (%s) %zd != %zd", v152, 0x3Cu);
      }

      *__error() = v78;
      *__error() = v77;
      if (!*__error())
      {
        *__error() = 22;
      }

      if (!v69)
      {
        return *__error();
      }
    }

    free(ptr);
    return *__error();
  }

  while (1)
  {
    v68 = a8[v66 + 10];
    if (v68 < v12)
    {
      a8[1] = ++v66;
      goto LABEL_104;
    }

    if (v68 == v12)
    {
      break;
    }

    a8[1] = ++v66;
    if (v68 > v12)
    {
      goto LABEL_108;
    }

LABEL_104:
    if (v66 >= v67)
    {
      goto LABEL_108;
    }
  }

  if (v36)
  {
    free(v55);
    v84 = a8[1];
    v66 = a8[1];
  }

  else
  {
    v84 = v66;
  }

  v36 = 0;
  a8[1] = v66 + 1;
  ptr = *&a8[2 * v84 + 2];
  v75 = 1;
LABEL_137:
  *buf = 0;
  if ((v11 & 1) == 0)
  {
    if ((*(ptr + 3) & 0x1000) != 0)
    {
      v85 = dst_malloc;
    }

    else
    {
      v85 = 0;
    }

    v86 = db2_page_uncompress_swap(a1, ptr, buf, v85);
    if (v86)
    {
      v87 = v86;
      v88 = *__error();
      v89 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        v118 = v12 << *(a1 + 12);
        v119 = *ptr;
        v120 = *(ptr + 1);
        v122 = *(ptr + 2);
        v121 = *(ptr + 3);
        *v152 = 136317442;
        *&v152[4] = "_page_fetch_with_fd";
        *&v152[12] = 1024;
        *&v152[14] = 2538;
        *&v152[18] = 1024;
        *&v152[20] = v87;
        *&v152[24] = 2048;
        *&v152[26] = v12;
        *&v152[34] = 2048;
        *&v152[36] = v118;
        *&v152[44] = 1024;
        *&v152[46] = v119;
        *&v152[50] = 1024;
        *&v152[52] = v120;
        *&v152[56] = 1024;
        *&v152[58] = v122;
        v153 = 1024;
        LODWORD(v154[0]) = v121;
        WORD2(v154[0]) = 2080;
        *(v154 + 6) = a1 + 324;
        _os_log_error_impl(&dword_1C278D000, v89, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap failed, error:%d, pgnum:%lu, pgoff:0x%llx, signature:0x%x, size:%d, used_bytes:%d, flags:0x%x, name:%s", v152, 0x4Eu);
      }

      *__error() = v88;
      if (SIIsAppleInternal_onceToken != -1)
      {
        dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
      }

      if (SIIsAppleInternal_internal)
      {
        v90 = &_page_fetch_with_fd__crashCount_197;
        goto LABEL_155;
      }

      goto LABEL_187;
    }

LABEL_157:
    v95 = *buf;
    if (*buf)
    {
      if (v36)
      {
        free(ptr);
        v95 = *buf;
      }

      ptr = v95;
    }

    else if (((ptr != v15) & ~v75) != 0)
    {
      v96 = malloc_size(ptr);
      v95 = ptr;
      *(ptr + 1) = v96;
    }

    else
    {
      *buf = malloc_type_valloc(a4, 0x717F5B51uLL);
      memcpy(*buf, ptr, a4);
      v95 = *buf;
      ptr = *buf;
      *(*buf + 4) = a4;
    }

    if (*v95 == 1684172850)
    {
      v97 = v95[3];
      v98 = 4;
      if ((v97 & 4) == 0)
      {
        v98 = 1;
      }

      if (v95[v98] == a4 && (v97 & 1) != 0 && v95[2] <= v95[1])
      {
        v99 = (v11 & 3) != 0;
        if ((v97 & 0xC) != 0)
        {
          v99 = 0;
        }

        if ((v97 & 0xF0) == 0 || v99)
        {
          if ((v11 & 4) == 0)
          {
            *value_out = v95;
            if ((v11 & 1) == 0)
            {
              if ((v97 & 0xC) != 0)
              {
                db_cache_add_page(*(a1 + 928), v95, v95, v12);
                return 0;
              }

              return 0;
            }
          }

          if ((v11 & 0x23) != 1)
          {
            return 0;
          }

          if ((*(*value_out + 12) & 0xF0) == 0)
          {
            page_cache_add(*(a1 + 928), value_out, v12, (v11 & 8) != 0);
            return 0;
          }

          v138 = __si_assert_copy_extra_3233(0, -1);
          v131 = v138;
          v139 = "";
          if (v138)
          {
            v139 = v138;
          }

          __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: tried to read attr name table data! pgnum 0x%x, flags 0x%x\n", "sdb2.c", 2606, "((*dbpp)->flags & 0x000000f0)==0", v139, v12, *(ptr + 3));
LABEL_216:
          free(v131);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v135 = __si_assert_copy_extra_3233(0, -1);
        v33 = v135;
        v136 = "";
        if (v135)
        {
          v136 = v135;
        }

        __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: tried to read attr name table data! pgnum 0x%x, flags 0x%x\n", "sdb2.c", 2588, "(dbp->flags & 0x000000f0)==0", v136, v12, *(ptr + 3));
LABEL_225:
        free(v33);
        if (__valid_fs(-1))
        {
          v137 = 2989;
        }

        else
        {
          v137 = 3072;
        }

        *v137 = -559038737;
        abort();
      }
    }

    v100 = *__error();
    v101 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      v113 = v12 << *(a1 + 12);
      v114 = *ptr;
      v115 = *(ptr + 1);
      v117 = *(ptr + 2);
      v116 = *(ptr + 3);
      *v152 = 136317186;
      *&v152[4] = "_page_fetch_with_fd";
      *&v152[12] = 1024;
      *&v152[14] = 2578;
      *&v152[18] = 2048;
      *&v152[20] = v12;
      *&v152[28] = 2048;
      *&v152[30] = v113;
      *&v152[38] = 1024;
      *&v152[40] = v114;
      *&v152[44] = 1024;
      *&v152[46] = v115;
      *&v152[50] = 1024;
      *&v152[52] = v117;
      *&v152[56] = 1024;
      *&v152[58] = v116;
      v153 = 2080;
      v154[0] = a1 + 324;
      _os_log_error_impl(&dword_1C278D000, v101, OS_LOG_TYPE_ERROR, "%s:%d: page_fetch found an invalid page, pgnum:%lu, pgoff:0x%llx, signature:0x%x, size:%d, used_bytes:%d, flags:0x%x, name:%s", v152, 0x48u);
    }

    *__error() = v100;
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (!SIIsAppleInternal_internal || atomic_fetch_add_explicit(&_page_fetch_with_fd__crashCount_198, 1u, memory_order_relaxed))
    {
      goto LABEL_187;
    }

    v94 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"page_fetch found an invalid page, pgnum:%lu, pgoff:0x%llx, signature:0x%x, size:%d, used_bytes:%d, flags:0x%x, name:%s", v12, v12 << *(a1 + 12), *ptr, *(ptr + 1), *(ptr + 2), *(ptr + 3), a1 + 324);
LABEL_185:
    v102 = v94;
    getpid();
    SISimulateCrashForPid(0, v102);
    if (v102)
    {
      CFRelease(v102);
    }

    goto LABEL_187;
  }

  v91 = db2_page_uncompress_swap(a1, ptr, buf, 0);
  if (!v91)
  {
    goto LABEL_157;
  }

  v87 = v91;
  v92 = *__error();
  v93 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
  {
    v123 = v12 << *(a1 + 12);
    v124 = *ptr;
    v125 = *(ptr + 1);
    v127 = *(ptr + 2);
    v126 = *(ptr + 3);
    *v152 = 136317442;
    *&v152[4] = "_page_fetch_with_fd";
    *&v152[12] = 1024;
    *&v152[14] = 2520;
    *&v152[18] = 1024;
    *&v152[20] = v87;
    *&v152[24] = 2048;
    *&v152[26] = v12;
    *&v152[34] = 2048;
    *&v152[36] = v123;
    *&v152[44] = 1024;
    *&v152[46] = v124;
    *&v152[50] = 1024;
    *&v152[52] = v125;
    *&v152[56] = 1024;
    *&v152[58] = v127;
    v153 = 1024;
    LODWORD(v154[0]) = v126;
    WORD2(v154[0]) = 2080;
    *(v154 + 6) = a1 + 324;
    _os_log_error_impl(&dword_1C278D000, v93, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap failed, error:%d, pgnum:%lu, pgoff:0x%llx, signature:0x%x, size:%d, used_bytes:%d, flags:0x%x, name:%s", v152, 0x4Eu);
  }

  *__error() = v92;
  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  if (SIIsAppleInternal_internal)
  {
    v90 = &_page_fetch_with_fd__crashCount;
LABEL_155:
    if (!atomic_fetch_add_explicit(v90, 1u, memory_order_relaxed))
    {
      v94 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"db2_page_uncompress_swap failed, error:%d, pgnum:%lu, pgoff:0x%llx, signature:0x%x, size:%d, used_bytes:%d, flags:0x%x, name:%s", v87, v12, v12 << *(a1 + 12), *ptr, *(ptr + 1), *(ptr + 2), *(ptr + 3), a1 + 324);
      goto LABEL_185;
    }
  }

LABEL_187:
  if ((v11 & 0x1000) == 0 && (*(a1 + 4) & 0x40) == 0)
  {
    analytics_send_event_lazy();
  }

  if ((v11 & 4) == 0)
  {
    if (v11)
    {
      if (v36)
      {
        v107 = ptr;
        goto LABEL_201;
      }
    }

    else
    {
      v103 = *(a1 + 928);
      v104 = *(v103 + 220);
      if (v104 >= 1)
      {
        v105 = 0;
        v106 = v103 + 272;
        while (*v106 != ptr)
        {
          ++v105;
          v106 += 48;
          if (v104 == v105)
          {
            goto LABEL_202;
          }
        }

        *(v103 + 4 * v105 + 252) = 0;
        *(v106 + 16) = 0;
        v108 = v103 + 272 + 48 * v105;
        *(v108 + 24) = 0;
        *(v108 + 32) = 0;
        *(v108 + 40) = 0;
        *v106 = 0;
        v107 = *(v106 + 8);
        if (v107)
        {
          free(v107);
          *(v106 + 8) = 0;
          v107 = *v106;
        }

LABEL_201:
        free(v107);
      }
    }
  }

LABEL_202:
  if ((v11 & 0x1000) == 0 && (*(a1 + 4) & 0x40) == 0)
  {
    v109 = *__error();
    v110 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      v128 = *(a1 + 4);
      v129 = v12 << *(a1 + 12);
      *v152 = 136316418;
      *&v152[4] = "_page_fetch_with_fd";
      *&v152[12] = 1024;
      *&v152[14] = 2644;
      *&v152[18] = 2048;
      *&v152[20] = v12;
      *&v152[28] = 2048;
      *&v152[30] = v129;
      *&v152[38] = 1024;
      *&v152[40] = v128;
      *&v152[44] = 2080;
      *&v152[46] = a1 + 324;
      _os_log_error_impl(&dword_1C278D000, v110, OS_LOG_TYPE_ERROR, "%s:%d: page_fetch marking the dst as corrupted, pgnum:%lu, pgoff:0x%llx, flags:0x%x, name:%s", v152, 0x36u);
    }

    *__error() = v109;
    *(a1 + 4) |= 0x40u;
  }

  return 22;
}

const UInt8 *data_map_get_data(uint64_t a1, unint64_t a2, size_t *a3)
{
  v3 = *(a1 + 216);
  if (v3 <= 842150449)
  {
    if (v3 == -270471200)
    {

      return data_map_ext_get_data(a1, a2, a3);
    }

    else
    {
      if (v3 != -572662307)
      {
        goto LABEL_18;
      }

      return data_map_double_get_data(a1, a2, a3);
    }
  }

  else
  {
    if (v3 != 842150450)
    {
      if (v3 == 1684300900)
      {

        return data_map64_get_data(a1, a2, a3);
      }

LABEL_18:
      v5 = __si_assert_copy_extra_332();
      v6 = v5;
      v7 = "";
      if (v5)
      {
        v7 = v5;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "data_map.c", 402, "data_map_is_double(data_map)", v7);
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

    return data_map32_get_data(a1, a2, a3);
  }
}

char *db_get_string_for_id(int *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      *buf = 136315650;
      v11 = "db_get_string_for_id";
      v12 = 1024;
      v13 = 390;
      v14 = 1024;
      v15 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v4;
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 390, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return get_string_and_length_for_id_15021(a1, 1u, a2, 0, 0);
}

uint64_t page_release(uint64_t a1, unsigned int *value, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v117 = *MEMORY[0x1E69E9840];
  v113 = value;
  if (!value)
  {
    return 22;
  }

  LODWORD(v5) = a5;
  v7 = a3;
  if (!a5)
  {
    v10 = 4;
    if ((value[3] & 4) == 0)
    {
      v10 = 1;
    }

    LODWORD(v5) = value[v10];
  }

  v112 = 0;
  v11 = *(a1 + 928);
  if ((a4 & 0x10) != 0)
  {
    pthread_rwlock_rdlock((v11 + 8));
    v34 = *(v11 + 220);
    if (v34 >= 1)
    {
      v35 = (v11 + 252);
      v36 = (v11 + 272);
      while (*v36 != value || *v35 != v7)
      {
        ++v35;
        v36 += 6;
        if (!--v34)
        {
          goto LABEL_48;
        }
      }

      v37 = (v11 + 8);
      goto LABEL_132;
    }

LABEL_48:
    pthread_rwlock_unlock((v11 + 8));
    if ((a4 & 1) == 0)
    {
LABEL_12:
      v15 = atomic_load((*(a1 + 928) + 248));
      if (v15 > v7)
      {
        if (sdb_init_cache_onceToken != -1)
        {
          dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
        }

        if (sdb_init_cache_status != 1)
        {
          return 0;
        }

        result = cache_release_value(sdbLargeCacheArray, value);
        if (!result)
        {
          return result;
        }
      }

      if ((a4 & 8) == 0)
      {
        goto LABEL_118;
      }

      v17 = v113;
      if ((*(v113 + 13) & 0x10) != 0)
      {
        goto LABEL_118;
      }

      v18 = *(a1 + 928);
      pthread_rwlock_wrlock((v18 + 8));
      if (*(v18 + 232))
      {
        goto LABEL_117;
      }

      v19 = *(v18 + 220);
      if (v19 >= 1)
      {
        v20 = (v18 + 252);
        v21 = (v18 + 272);
        v22 = *(v18 + 220);
        while (1)
        {
          v23 = *v20++;
          if (v23 == v7)
          {
            goto LABEL_117;
          }

          if (*v21 == v113)
          {
            break;
          }

          v21 += 6;
          if (!--v22)
          {
            goto LABEL_25;
          }
        }

        v92 = __si_assert_copy_extra_332();
        v93 = v92;
        v94 = "";
        if (v92)
        {
          v94 = v92;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "page-cache.c", 1252, "dbp != cache->cache_entries[i].cache_dbps", v94);
        v95 = v93;
LABEL_144:
        free(v95);
        if (!__valid_fs(-1))
        {
          v99 = 3072;
LABEL_147:
          *v99 = -559038737;
          abort();
        }

LABEL_145:
        v99 = 2989;
        goto LABEL_147;
      }

LABEL_25:
      if (v19)
      {
        v24 = atomic_load((v18 + 228));
        v25 = 100 * v24;
        v26 = atomic_load((v18 + 216));
        v27 = *(v18 + 220);
        v28 = v25 > v26 && v27 <= 3;
        if (v28)
        {
          if (*(v18 + 4 * v27 + 248))
          {
            v29 = atomic_load((v18 + 228));
            v27 = *(v18 + 220);
            if (v29 > 10 * v27 && MEMORY[0xFFFFFC030] <= 0x32u)
            {
              *(v18 + 220) = ++v27;
              atomic_store(0, (v18 + 228));
              atomic_store(0, (v18 + 216));
            }
          }
        }

        v30 = v18 + 272;
        if (*(v18 + 272 + 48 * v27 - 32))
        {
          if (v27 >= 4)
          {
            v31 = v27;
            v32 = (v18 + 48 * v27 + 240);
            while (1)
            {
              v28 = v31-- < 1;
              if (v28)
              {
                break;
              }

              v33 = *v32;
              v32 -= 12;
              if (!v33)
              {
                v27 = v31;
                goto LABEL_116;
              }
            }

LABEL_117:
            pthread_rwlock_unlock((v18 + 8));
            goto LABEL_118;
          }

          goto LABEL_113;
        }

        --v27;
      }

      else
      {
        v27 = 2;
        *(v18 + 220) = 2;
        v30 = v18 + 272;
        if (*(v18 + 336))
        {
LABEL_113:
          *(v18 + 220) = v27 + 1;
          atomic_store(0, (v18 + 228));
          atomic_store(0, (v18 + 216));
          goto LABEL_116;
        }

        v27 = 1;
      }

LABEL_116:
      memset(buf, 0, 28);
      v76 = v30 + 48 * v27;
      v78 = *v76;
      v77 = *(v76 + 8);
      v79 = *(v76 + 16);
      v80 = *(v76 + 20);
      *&buf[12] = *(v76 + 32);
      *buf = v80;
      if (!v79)
      {
        v90 = v27;
        if (v77)
        {
          free(v77);
        }

        *(v18 + 4 * v90 + 252) = v7;
        *v76 = v17;
        *(v76 + 8) = 0;
        *(v76 + 16) = 0;
        v91 = *&buf[16];
        *(v76 + 20) = *buf;
        *(v76 + 24) = 0;
        *(v76 + 32) = 0;
        *(v76 + 36) = v91;
        *(v76 + 40) = 0;
        db_cache_mru(v18, v90);
        pthread_rwlock_unlock((v18 + 8));
        v89 = v78;
        goto LABEL_130;
      }

      goto LABEL_117;
    }
  }

  else
  {
    v108[0] = MEMORY[0x1E69E9820];
    v108[1] = 0x40000000;
    v109 = __page_release_block_invoke;
    v110 = &__block_descriptor_tmp_161_14804;
    v111 = a1;
    v12 = *(v11 + 220);
    if (v12 >= 1)
    {
      v13 = 0;
      v14 = v11 + 272;
      while (*v14 != value)
      {
        ++v13;
        v14 += 48;
        if (v12 == v13)
        {
          goto LABEL_11;
        }
      }

      v48 = v11 + 252;
      v49 = *(v11 + 252 + 4 * v13);
      if (v49 != a3 && (v49 | a4 & 1) != 0)
      {
        v96 = __si_assert_copy_extra_332();
        v97 = v96;
        v98 = "";
        if (v96)
        {
          v98 = v96;
        }

        __message_assert("%s:%u: failed assertion '%s' %s Pgnum: %u dbp:%p cached_pgnum::%u cached_dbp:%p index:%d size:%d", "page-cache.c", 950, "cache->cache_pgnum[i]==pgnum || (cache->cache_pgnum[i]==0 && (flags & PAGE_DIRTY)==0)", v98, v7, value, *(v48 + 4 * v13), *v14, v13, *(v11 + 220));
        v95 = v97;
        goto LABEL_144;
      }

      if (a4)
      {
        *(v14 + 16) = 1;
        free(*(v14 + 8));
        *(v14 + 8) = 0;
      }

      if ((a4 & 2) != 0)
      {
        *&buf[16] = 0u;
        v115 = 0u;
        *buf = 0u;
        *buf = v7;
        *&buf[8] = *v14;
        *&buf[24] = *(v14 + 16);
        *&v115 = *(v14 + 24);
        DWORD2(v115) = *(v14 + 32);
        v116 = *(v14 + 40);
        v109(v108, buf);
        result = 0;
        *v14 = *&buf[8];
        v51 = *buf;
        *(v14 + 16) = *&buf[24];
        *(v14 + 24) = v115;
        *(v14 + 32) = DWORD2(v115);
        *(v14 + 40) = v116;
        *(v48 + 4 * v13) = v51;
        return result;
      }

      return 0;
    }

LABEL_11:
    if ((a4 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  _add_dirty_chunk(a1, v7, v5, (a4 >> 14) & 1);
  v38 = *(a1 + 928);
  *buf = 0;
  *&buf[8] = 0;
  v39 = atomic_load((v38 + 248));
  if (v39 > v7)
  {
    *&buf[8] = 0;
    *buf = *v38;
    *&buf[8] = v7;
    _cache_remove(buf);
  }

  v40 = v113;
  v41 = v113[3];
  if ((v41 & 0xF0) == 0)
  {
    v42 = 4;
    if ((v41 & 4) == 0)
    {
      v42 = 1;
    }

    if (v5 == v113[v42])
    {
      page_cache_add(*(a1 + 928), &v113, v7, 0);
      v40 = v113;
      v41 = v113[3];
    }
  }

  if ((v41 & 0xC) == 0)
  {
    goto LABEL_78;
  }

  if ((*(a1 + 804) & 2) != 0)
  {
    v43 = 3;
  }

  else
  {
    v43 = 2;
  }

  v44 = page_compress(a1, v40, &v112, 0, v43);
  if (v44)
  {
    if (v44 == 7)
    {
      v100 = *__error();
      v101 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "page_release";
        *&buf[12] = 1024;
        *&buf[14] = 2826;
        _os_log_error_impl(&dword_1C278D000, v101, OS_LOG_TYPE_ERROR, "%s:%d: page_release: ERROR: page_fetch caller responsible for making sure compressed page fits after changes.\n", buf, 0x12u);
      }

      *__error() = v100;
      v102 = *__error();
      v103 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        v104 = v40[2];
        *buf = 136316162;
        *&buf[4] = "page_release";
        *&buf[12] = 1024;
        *&buf[14] = 2827;
        *&buf[18] = 1024;
        *&buf[20] = v7;
        *&buf[24] = 1024;
        *&buf[26] = v104;
        *&buf[30] = 1024;
        LODWORD(v115) = v5;
        _os_log_error_impl(&dword_1C278D000, v103, OS_LOG_TYPE_ERROR, "%s:%d: page_release: page %d used_bytes %d disk page size %d\n", buf, 0x24u);
      }

      *__error() = v102;
      v105 = __si_assert_copy_extra_3233(0, -1);
      v106 = v105;
      if (v105)
      {
        v107 = v105;
      }

      else
      {
        v107 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 2828, v107);
      free(v106);
      goto LABEL_145;
    }

    v45 = v44;
    v46 = *__error();
    v47 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v75 = v40[2];
      *buf = 136316418;
      *&buf[4] = "page_release";
      *&buf[12] = 1024;
      *&buf[14] = 2833;
      *&buf[18] = 1024;
      *&buf[20] = v45;
      *&buf[24] = 1024;
      *&buf[26] = v7;
      *&buf[30] = 1024;
      LODWORD(v115) = v75;
      WORD2(v115) = 1024;
      *(&v115 + 6) = v5;
      _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: page_release: ERR: compress error %d with page %d used_bytes %d disk page size %d\n", buf, 0x2Au);
    }

    *__error() = v46;
    *(a1 + 4) |= 2u;
    result = v45;
    *(a1 + 800) = v45;
    return result;
  }

  if (!v112)
  {
LABEL_78:
    if ((*(a1 + 4) & 0x80) == 0 || (v54 = *v40, *v40 != 1684172850) && v54 != 846226020)
    {
LABEL_91:
      v5 = v5;
      v53 = sdb_pwrite(*(a1 + 848), v40, v5, v7 << *(a1 + 12));
      if ((*(a1 + 4) & 0x80) == 0)
      {
        goto LABEL_106;
      }

      v63 = *v40;
      if (*v40 != 1684172850 && v63 != 846226020)
      {
        goto LABEL_106;
      }

      v64 = v40[3];
      if (v63 == 846226020)
      {
        if (v64 >> 28)
        {
          v65 = v40[2];
          v66 = bswap32(v65);
LABEL_99:
          if (v66 >= 0x21)
          {
            v67 = v53;
            v68 = v40 + 8;
            for (i = 32; i < v66; i += v70)
            {
              *v68 = bswap32(*v68);
              v70 = strlen(v68 + 4) + 4;
              v68 = (v68 + v70);
            }

            v63 = *v40;
            v65 = v40[2];
            v64 = v40[3];
            v53 = v67;
          }

          v40[5] = bswap32(v40[5]);
          v71 = bswap32(v63);
          v72 = v40[1];
          goto LABEL_105;
        }
      }

      else if ((v64 & 0xF0) != 0)
      {
        v65 = v40[2];
        v66 = v65;
        goto LABEL_99;
      }

      v71 = bswap32(v63);
      v72 = v40[1];
      v65 = v40[2];
LABEL_105:
      *v40 = v71;
      v40[1] = bswap32(v72);
      v40[2] = bswap32(v65);
      v40[3] = bswap32(v64);
      v40[4] = bswap32(v40[4]);
      goto LABEL_106;
    }

    v55 = v40[3];
    if (v54 == 846226020)
    {
      if (v55 >> 28)
      {
        v56 = v40[2];
        v57 = bswap32(v56);
LABEL_84:
        if (v57 >= 0x21)
        {
          v58 = v40 + 8;
          for (j = 32; j < v57; j += v60)
          {
            *v58 = bswap32(*v58);
            v60 = strlen(v58 + 4) + 4;
            v58 = (v58 + v60);
          }

          v54 = *v40;
          v56 = v40[2];
          v55 = v40[3];
        }

        v40[5] = bswap32(v40[5]);
        v61 = bswap32(v54);
        v62 = v40[1];
        goto LABEL_90;
      }
    }

    else if ((v55 & 0xF0) != 0)
    {
      v56 = v40[2];
      v57 = v56;
      goto LABEL_84;
    }

    v61 = bswap32(v54);
    v62 = v40[1];
    v56 = v40[2];
LABEL_90:
    *v40 = v61;
    v40[1] = bswap32(v62);
    v40[2] = bswap32(v56);
    v40[3] = bswap32(v55);
    v40[4] = bswap32(v40[4]);
    goto LABEL_91;
  }

  v5 = v5;
  v52 = sdb_pwrite(*(a1 + 848), v112, v5, v7 << *(a1 + 12));
  free(v112);
  v53 = v52;
LABEL_106:
  if (v53 == v5)
  {
LABEL_118:
    if ((a4 & 4) != 0)
    {
      return 0;
    }

    v81 = *(a1 + 928);
    v82 = v113;
    pthread_rwlock_rdlock((v81 + 8));
    v83 = *(v81 + 220);
    if (v83 >= 1)
    {
      v84 = (v81 + 252);
      v85 = (v81 + 272);
      while (*v85 != v82 || *v84 != v7)
      {
        ++v84;
        v85 += 6;
        if (!--v83)
        {
          goto LABEL_125;
        }
      }

      v37 = (v81 + 8);
      goto LABEL_132;
    }

LABEL_125:
    pthread_rwlock_unlock((v81 + 8));
    v86 = *(a1 + 928);
    pthread_rwlock_rdlock((v86 + 8));
    v87 = *(v86 + 220);
    if (v87 >= 1)
    {
      v88 = (v86 + 272);
      while (*v88 != v82)
      {
        v88 += 6;
        if (!--v87)
        {
          goto LABEL_129;
        }
      }

      v37 = (v86 + 8);
LABEL_132:
      pthread_rwlock_unlock(v37);
      return 0;
    }

LABEL_129:
    pthread_rwlock_unlock((v86 + 8));
    v89 = v82;
LABEL_130:
    free(v89);
    return 0;
  }

  *(a1 + 4) |= 2u;
  v73 = *__error();
  v74 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "page_release";
    *&buf[12] = 1024;
    *&buf[14] = 2870;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    _os_log_error_impl(&dword_1C278D000, v74, OS_LOG_TYPE_ERROR, "%s:%d: Failed writing pgnum %d", buf, 0x18u);
  }

  *__error() = v73;
  if (!*__error())
  {
    *__error() = 22;
  }

  *(a1 + 800) = *__error();
  return *__error();
}

uint64_t db_get_field_by_id(int *a1, uint64_t a2, int *a3, unint64_t *a4, unint64_t *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *a1;
      *buf = 136315650;
      v21 = "db_get_field_by_id";
      v22 = 1024;
      v23 = 371;
      v24 = 1024;
      v25 = v16;
      _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v14;
    v17 = __si_assert_copy_extra_332();
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 371, v19);
    free(v18);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (!a3)
  {
    return 2;
  }

  v5 = *(a2 + 12);
  if (v5 >= 0x31 && *a3)
  {
    v6 = a2 + v5;
    v7 = a2 + 48;
LABEL_6:
    v8 = a3 + 1;
    v9 = *a3;
    while (*(v7 + 4) != v9)
    {
      v10 = *v8++;
      v9 = v10;
      if (!v10)
      {
        v7 += *(v7 + 8) + 13;
        if (v7 < v6)
        {
          goto LABEL_6;
        }

        goto LABEL_10;
      }
    }

    if (a4)
    {
      *a4 = v7;
    }

    result = 0;
    if (a5)
    {
      v12 = v7 + 13;
      goto LABEL_19;
    }
  }

  else
  {
LABEL_10:
    if (a4)
    {
      *a4 = 0;
    }

    result = 2;
    if (a5)
    {
      v12 = 0;
LABEL_19:
      *a5 = v12;
    }
  }

  return result;
}

BOOL BOOLValueForDBOProperty(int *a1, uint64_t a2, char *a3)
{
  v4 = 0;
  v5 = 0;
  return !db_get_field(a1, a2, a3, &v4, &v5) && *v5 != 0;
}

uint64_t db_get_field(int *a1, uint64_t a2, char *__s, unint64_t *a4, void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_get_field";
      *&buf[12] = 1024;
      *&buf[14] = 368;
      v25 = 1024;
      v26 = v20;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v18;
    v21 = __si_assert_copy_extra_332();
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 368, v23);
    free(v22);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  *buf = 0;
  *&buf[8] = 0;
  v8 = internal_copy_field_ids(a1, __s, buf, 4uLL, 0);
  if (!v8)
  {
    return 2;
  }

  v9 = *(a2 + 12);
  if (v9 >= 0x31 && *v8)
  {
    v10 = a2 + v9;
    v11 = a2 + 48;
    while (2)
    {
      v12 = 1;
      v13 = *v8;
      do
      {
        if (*(v11 + 4) == v13)
        {
          if (a4)
          {
            *a4 = v11;
          }

          if (a5)
          {
            *a5 = v11 + 13;
          }

          v14 = 0;
          v15 = 0;
          goto LABEL_21;
        }

        v13 = v8[v12++];
      }

      while (v13);
      v11 += *(v11 + 8) + 13;
      if (v11 < v10)
      {
        continue;
      }

      break;
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v14 = 2;
  v15 = 2;
LABEL_21:
  if (buf != v8)
  {
    free(v8);
    return v14;
  }

  return v15;
}

uint64_t data_map32_get_data(uint64_t a1, unsigned int a2, void *a3)
{
  v86 = *MEMORY[0x1E69E9840];
  if (_data_map32_rdlock(a1))
  {
LABEL_2:
    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }

  v42 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
  v40 = HIDWORD(v8);
  v41 = v8;
  v38 = v10;
  v39 = v9;
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
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
    }

    *(v11 + 312) = v12;
    CIOnThreadCleanUpReset(v38);
    dropThreadId(v41, 1, add_explicit + 1);
    CICleanUpReset(v41, v39);
    v14 = 0;
    goto LABEL_37;
  }

  if (*(a1 + 220) <= a2)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    buf = 0u;
    v61 = 0u;
    v25 = *__error();
    v26 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 220);
      v32 = fd_name(*(a1 + 1272), &buf, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_offset_entry";
      *&__s[12] = 1024;
      *&__s[14] = 422;
      *&__s[18] = 1024;
      *&__s[20] = a2;
      *&__s[24] = 1024;
      *&__s[26] = v31;
      *&__s[30] = 2048;
      *&__s[32] = a1;
      *&__s[40] = 2080;
      *&__s[42] = v32;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
    }

    *__error() = v25;
  }

  else
  {
    v15 = *(a1 + 1352);
    if (v15)
    {
      v16 = *(v15 + 4 * a2);
      v17 = v16;
      if (v16 != 1)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v18 = *(a1 + 1328);
        if (v18 <= v16)
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          buf = 0u;
          v61 = 0u;
          v27 = *__error();
          v28 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v33 = *(a1 + 1328);
            v34 = fd_name(*(a1 + 1272), &buf, 0x100uLL);
            *__s = 136316418;
            *&__s[4] = "_data_map32_get_data_entry";
            *&__s[12] = 1024;
            *&__s[14] = 446;
            *&__s[18] = 2048;
            *&__s[20] = v17;
            *&__s[28] = 2048;
            *&__s[30] = v33;
            *&__s[38] = 2048;
            *&__s[40] = a1;
            *&__s[48] = 2080;
            *&__s[50] = v34;
            _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx 0x%lx %p %s", __s, 0x3Au);
          }

          *__error() = v27;
          v24 = 0;
        }

        else
        {
          data_entry_restore_32(*(a1 + 1320), v16, v18, &v43, &v45);
          if (v45 == 1)
          {
            v85 = 0;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            memset(__s, 0, sizeof(__s));
            v19 = v17;
            v20 = 5;
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
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            buf = 0u;
            v61 = 0u;
            v22 = *__error();
            v23 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v35 = fd_name(*(a1 + 1272), &buf, 0x100uLL);
              v36 = *(a1 + 1328);
              *v46 = 136316674;
              v47 = "_data_map32_get_data_entry";
              v48 = 1024;
              v49 = 442;
              v50 = 2080;
              v51 = v35;
              v52 = 2048;
              v53 = v17;
              v54 = 2048;
              v55 = v36;
              v56 = 2048;
              v57 = v43;
              v58 = 2080;
              v59 = __s;
              _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", v46, 0x44u);
            }

            *__error() = v22;
            v24 = 0;
          }

          else
          {
            if (a3)
            {
              *a3 = (v43 - *(a1 + 224));
            }

            if (*(a1 + 1448))
            {
              os_unfair_lock_lock((a1 + 1444));
              v37 = *(a1 + 1448);
              if (v37)
              {
                bit_vector_set_13535(v37, a2);
              }

              os_unfair_lock_unlock((a1 + 1444));
            }

            v24 = v44 + *(a1 + 224);
          }
        }

        v14 = v24;
        goto LABEL_34;
      }
    }
  }

  v14 = 0;
LABEL_34:
  v42 = 1;
  v29 = threadData[9 * v41 + 1] + 320 * v40;
  *(v29 + 312) = v12;
  v30 = *(v29 + 232);
  if (v30)
  {
    v30(*(v29 + 288));
  }

  dropThreadId(v41, 0, add_explicit + 1);
LABEL_37:
  if ((v42 & 1) == 0)
  {
    *(a1 + 1464) = 22;
  }

  _data_map32_unlock(a1);
  result = v14;
  if (!v14)
  {
    goto LABEL_2;
  }

  return result;
}

void __si_set_error_str(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v3[0] = 0;
  va_copy(&v3[1], va);
  vasprintf(v3, a2, va);
  _si_set_error_str(v3[0], a1);
  free(v3[0]);
}

void _si_set_error_str(const char *result, uint64_t a2)
{
  v2 = a2;
  if (!result && !a2)
  {
    return;
  }

  if (!__si_error_str_key)
  {
    if (!result)
    {
      return;
    }

    pthread_key_create(&__si_error_str_key, MEMORY[0x1E69E9B38]);
    v5 = 0;
    v6 = __si_error_str_key;
LABEL_10:
    v7 = strdup(result);
    goto LABEL_11;
  }

  v4 = pthread_getspecific(__si_error_str_key);
  v5 = v4;
  if (!v2 && v4)
  {
    return;
  }

  v6 = __si_error_str_key;
  if (result)
  {
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:
  if (pthread_setspecific(v6, v7) != -1)
  {
    free(v5);
  }

  _si_set_rebuild_reason(result, 0, v2);
}

void _si_set_rebuild_reason(const char *a1, int a2, int a3)
{
  v5 = a3 | a2;
  if (!a1 && !v5)
  {
    return;
  }

  if (!__si_index_rebuild_reason_key)
  {
    if (!a1)
    {
      return;
    }

    pthread_key_create(&__si_index_rebuild_reason_key, MEMORY[0x1E69E9B38]);
    v7 = 0;
LABEL_10:
    v9 = strlen(a1);
    if (a2)
    {
      v8 = malloc_type_malloc(v9 + 15, 0x43C0DE80uLL);
      strcpy(v8, "Intentional: ");
    }

    else
    {
      v8 = malloc_type_malloc(v9 + 9, 0xC43B03D8uLL);
      *v8 = 0x203A726F727245;
    }

    strcat(v8, a1);
    goto LABEL_14;
  }

  v6 = pthread_getspecific(__si_index_rebuild_reason_key);
  v7 = v6;
  if (!v5 && v6)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_10;
  }

  v8 = 0;
LABEL_14:
  if (pthread_setspecific(__si_index_rebuild_reason_key, v8) == -1)
  {
    if (!v8)
    {
      return;
    }

    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  free(v10);
}

_DWORD *si_getLiveIndex(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    v3 = __si_assert_copy_extra_661(-1);
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10525, "indexSet->indexCount", v5);
LABEL_15:
    free(v4);
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

  result = *(*a1 + 8 * (v1 - 1));
  if (!result)
  {
    v6 = __si_assert_copy_extra_661(-1);
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10526, "indexSet->index[indexSet->indexCount-1]", v8);
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

  if (*result != -1163003219)
  {
    v10 = __si_assert_copy_extra_661(-1);
    v4 = v10;
    v11 = "";
    if (v10)
    {
      v11 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10527, "ContentIndexValidIndex(indexSet->index[indexSet->indexCount-1])", v11);
    goto LABEL_15;
  }

  return result;
}

void inflateDBFData(uint64_t a1, unsigned int **a2, uint64_t a3, int a4, gid_t a5, unint64_t *a6, uint64_t a7, unint64_t a8, __n128 q0_0, __int16 a9, uint64_t a10)
{
  v11 = a6;
  v13 = a4;
  v15 = a10;
  v267 = *MEMORY[0x1E69E9840];
  v16 = *a2;
  v17 = *a2 + a3;
  *(v17 + 2) = 0;
  if (!a4)
  {
    LOWORD(v18) = *(v17 + 1) | 0x400;
    *(v17 + 1) = v18;
    v33 = 1;
    goto LABEL_41;
  }

  if (a4 == 15)
  {
    v27 = *(v17 + 1);
    *(v17 + 1) = v27 | 0x10;
    *v17 = 11;
    if ((a5 & 3) == 2)
    {
      if (a9 < 0)
      {
        *(v17 + 1) = v27 | 0x8030;
        v61 = *a6;
        v62 = *a6 + 1;
        v63 = (a7 + *a6);
        v64 = *v63;
        if (*v63 < 0)
        {
          if (v64 > 0xBF)
          {
            if (v64 > 0xDF)
            {
              if (v64 > 0xEF)
              {
                v64 = *(a7 + v62);
                v62 = v61 + 5;
              }

              else
              {
                v64 = ((v64 & 0xF) << 24) | (*(a7 + v62) << 16) | (v63[2] << 8) | v63[3];
                v62 = v61 + 4;
              }
            }

            else
            {
              v64 = ((v64 & 0x1F) << 16) | (*(a7 + v62) << 8) | v63[2];
              v62 = v61 + 3;
            }
          }

          else
          {
            v65 = *(a7 + v62) | ((v64 & 0x3F) << 8);
            v62 = v61 + 2;
            v64 = v65;
          }
        }

        *a6 = v62;
        if (v62 <= a8)
        {
          v165 = v16[2];
          v166 = v16[3];
          v167 = v166 + 4;
          if (v166 + 4 >= v165)
          {
            v168 = (2 * v165);
            do
            {
              v169 = v168;
              v168 *= 2;
            }

            while (v169 <= v167);
            v170 = a2;
            v171 = a1;
            if (a10)
            {
              v172 = (*(a10 + 16))(a10, v16);
            }

            else
            {
              v172 = malloc_type_realloc(v16, v169, 0x96D6F8AuLL);
            }

            v16 = v172;
            v172[2] = v169;
            *v170 = v172;
            v17 = v172 + a3;
            v167 = v172[3] + 4;
            v165 = v169 & 0xFFFFFFFE;
            a1 = v171;
          }

          if (v167 <= v165)
          {
            *(v17 + 13) = v64;
            *v17 = 11;
            *(v17 + 2) = 4;
            LODWORD(v105) = v16[3] + 4;
            goto LABEL_428;
          }

          v218 = a1;
          si_analytics_log_2752("%s:%u: failed assertion '%s' Buffer overflow %ld + %ld > %ld extras:%d type:%d", "ldb.c");
LABEL_437:
          memset(&__src, 0, sizeof(__src));
          v215 = -2;
          v216 = *(v218 + 848);
          if (v216)
          {
            goto LABEL_387;
          }

          goto LABEL_390;
        }

        goto LABEL_436;
      }

      v28 = *a6;
      v29 = *a6 + 1;
      v30 = (a7 + *a6);
      v31 = *v30;
      if (*v30 < 0)
      {
        if (v31 > 0xBF)
        {
          if (v31 > 0xDF)
          {
            if (v31 > 0xEF)
            {
              v31 = *(a7 + v29);
              v29 = v28 + 5;
            }

            else
            {
              v31 = ((v31 & 0xF) << 24) | (*(a7 + v29) << 16) | (v30[2] << 8) | v30[3];
              v29 = v28 + 4;
            }
          }

          else
          {
            v31 = ((v31 & 0x1F) << 16) | (*(a7 + v29) << 8) | v30[2];
            v29 = v28 + 3;
          }
        }

        else
        {
          v32 = *(a7 + v29) | ((v31 & 0x3F) << 8);
          v29 = v28 + 2;
          v31 = v32;
        }
      }

      *a6 = v29;
      if (v29 > a8)
      {
        v218 = a1;
        si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld");
        goto LABEL_437;
      }

      v146 = a2;
      v147 = a1;
      string_and_length_for_id = get_string_and_length_for_id(a1, 3u, v31, 1);
      if (!string_and_length_for_id)
      {
        goto LABEL_291;
      }

      v149 = *string_and_length_for_id;
      if ((*string_and_length_for_id & 0x80000000) == 0)
      {
        if (*string_and_length_for_id)
        {
          v150 = *string_and_length_for_id;
          v151 = 1;
          LODWORD(v80) = *string_and_length_for_id;
          goto LABEL_284;
        }

        goto LABEL_291;
      }

      if (v149 < 0xC0)
      {
        LODWORD(v80) = string_and_length_for_id[1] | ((v149 & 0x3F) << 8);
        if (v80)
        {
          v151 = 2;
          v150 = string_and_length_for_id[1] | ((v149 & 0x3F) << 8);
          goto LABEL_284;
        }

LABEL_291:
        v161 = *__error();
        v162 = _SILogForLogForCategory(7);
        if (!os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_292;
        }

        v179 = *(v17 + 1);
        v180 = *(v147 + 4);
        __src.st_dev = 136317442;
        *&__src.st_mode = "inflateDBFData";
        WORD2(__src.st_ino) = 1024;
        *(&__src.st_ino + 6) = 1410;
        HIWORD(__src.st_uid) = 1024;
        __src.st_gid = 3;
        LOWORD(__src.st_rdev) = 2048;
        *(&__src.st_rdev + 2) = v31;
        WORD1(__src.st_atimespec.tv_sec) = 1024;
        HIDWORD(__src.st_atimespec.tv_sec) = a5;
        __src.st_atimespec.tv_nsec = 0x8000000000F0400;
        __src.st_mtimespec.tv_sec = v179;
        LOWORD(__src.st_mtimespec.tv_nsec) = 2048;
        *(&__src.st_mtimespec.tv_nsec + 2) = a5;
        WORD1(__src.st_ctimespec.tv_sec) = 2048;
        *(&__src.st_ctimespec.tv_sec + 4) = v180;
        WORD2(__src.st_ctimespec.tv_nsec) = 2080;
        *(&__src.st_ctimespec.tv_nsec + 6) = v147 + 324;
        goto LABEL_298;
      }

      if (v149 >= 0xE0)
      {
        if (v149 > 0xEF)
        {
          LODWORD(v150) = *(string_and_length_for_id + 1);
          if (!v150)
          {
            goto LABEL_291;
          }

          v153 = v150 >> 8;
          v152 = *(string_and_length_for_id + 1);
        }

        else
        {
          v152 = string_and_length_for_id[1];
          v153 = string_and_length_for_id[2];
          LODWORD(v150) = ((v149 & 0xF) << 24) | (v152 << 16) | (v153 << 8) | string_and_length_for_id[3];
          if (!v150)
          {
            goto LABEL_291;
          }
        }

        if (v149 > 0xEF)
        {
          LODWORD(v80) = *(string_and_length_for_id + 1);
          v151 = 5;
        }

        else
        {
          LODWORD(v80) = ((v149 & 0xF) << 24) | (v152 << 16) | (v153 << 8) | string_and_length_for_id[3];
          v151 = 4;
        }
      }

      else
      {
        LODWORD(v150) = ((v149 & 0x1F) << 16) | (string_and_length_for_id[1] << 8) | string_and_length_for_id[2];
        if (!v150)
        {
          goto LABEL_291;
        }

        LODWORD(v80) = ((v149 & 0x1F) << 16) | (string_and_length_for_id[1] << 8) | string_and_length_for_id[2];
        v151 = 3;
      }

      if (!v80)
      {
        v161 = *__error();
        v162 = _SILogForLogForCategory(7);
        if (!os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_292;
        }

        v186 = *(v17 + 1);
        v187 = *(v147 + 4);
        __src.st_dev = 136317442;
        *&__src.st_mode = "inflateDBFData";
        WORD2(__src.st_ino) = 1024;
        *(&__src.st_ino + 6) = 1419;
        HIWORD(__src.st_uid) = 1024;
        __src.st_gid = 3;
        LOWORD(__src.st_rdev) = 2048;
        *(&__src.st_rdev + 2) = v31;
        WORD1(__src.st_atimespec.tv_sec) = 1024;
        HIDWORD(__src.st_atimespec.tv_sec) = a5;
        __src.st_atimespec.tv_nsec = 0x8000000000F0400;
        __src.st_mtimespec.tv_sec = v186;
        LOWORD(__src.st_mtimespec.tv_nsec) = 2048;
        *(&__src.st_mtimespec.tv_nsec + 2) = a5;
        WORD1(__src.st_ctimespec.tv_sec) = 2048;
        *(&__src.st_ctimespec.tv_sec + 4) = v187;
        WORD2(__src.st_ctimespec.tv_nsec) = 2080;
        *(&__src.st_ctimespec.tv_nsec + 6) = v147 + 324;
        goto LABEL_298;
      }

      v150 = v150;
LABEL_284:
      if (v151 > v150)
      {
        si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld extras:%d type:%d");
      }

      else
      {
        *(v17 + 2) = v80;
        v173 = v16[3];
        v174 = v80;
        v175 = v173 + v80;
        if (v175 >= 0xFFFFFFFF)
        {
          si_analytics_log_2752("%s:%u: failed assertion '%s' Overflow %ld + %ld extras:%d type:%d", "ldb.c", 1425, "(size_t)dbo->used_bytes+(size_t)dbf->data_len < (size_t)UINT32_MAX", v173, v80, a5, 15);
          memset(&__src, 0, sizeof(__src));
          v215 = -2;
          v216 = *(v147 + 848);
          if (v216)
          {
            goto LABEL_387;
          }

          goto LABEL_390;
        }

        v176 = v16[2];
        if (v175 >= v176)
        {
          v177 = (2 * v176);
          do
          {
            v80 = v177;
            v177 *= 2;
          }

          while (v80 <= v175);
          if (a10)
          {
            v178 = (*(a10 + 16))(a10, v16, v16[2], v80);
          }

          else
          {
            v178 = malloc_type_realloc(v16, v80, 0x96D6F8AuLL);
          }

          v16 = v178;
          v178[2] = v80;
          *v146 = v178;
          v174 = *(v178 + a3 + 8);
          v175 = v174 + v178[3];
          v176 = v80 & 0xFFFFFFFE;
          LODWORD(v80) = *(v178 + a3 + 8);
        }

        if (v175 <= v176)
        {
          memcpy(v16 + a3 + 13, &string_and_length_for_id[v151], v174);
LABEL_366:
          LODWORD(v105) = v16[3] + v80;
          goto LABEL_428;
        }

        si_analytics_log_2752("%s:%u: failed assertion '%s' Buffer overflow %ld + %ld > %ld extras:%d type:%d", "ldb.c");
      }

      memset(&__src, 0, sizeof(__src));
      v210 = -2;
      v211 = *(v147 + 848);
      if (!v211)
      {
        goto LABEL_378;
      }

      goto LABEL_375;
    }

    if ((a5 & 1) == 0)
    {
LABEL_46:
      v44 = v16[2];
      v45 = v16[3] + 8;
      if (v45 >= v44)
      {
        v47 = (2 * v44);
        do
        {
          v48 = v47;
          v47 *= 2;
        }

        while (v48 <= v45);
        v50 = a7;
        v51 = a2;
        v52 = a8;
        v53 = a1;
        if (a10)
        {
          v54 = a10;
          v55 = (*(a10 + 16))(a10, v16);
        }

        else
        {
          v54 = 0;
          v55 = malloc_type_realloc(v16, v48, 0x96D6F8AuLL);
        }

        v16 = v55;
        v55[2] = v48;
        a2 = v51;
        *v51 = v55;
        v17 = v55 + a3;
        LODWORD(v44) = v48;
        a1 = v53;
        a8 = v52;
        v11 = a6;
        a7 = v50;
        v15 = v54;
        v13 = a4;
      }

      if (v13 <= 6)
      {
        if (v13 < 3)
        {
          v17[13] = *(a7 + *v11);
          if (v16[3] >= v16[2])
          {
            v218 = a1;
            si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld <= %ld, extras:%d type:%d");
            goto LABEL_437;
          }

          v86 = *v11 + 1;
          *v11 = v86;
          if (v86 <= a8)
          {
            LODWORD(v80) = 1;
LABEL_365:
            *(v17 + 2) = v80;
            goto LABEL_366;
          }
        }

        else
        {
          if ((v13 - 3) >= 2)
          {
            if ((v13 - 5) >= 2)
            {
              goto LABEL_104;
            }

            goto LABEL_80;
          }

          if (v16[3] + 2 > v44)
          {
            goto LABEL_432;
          }

          v87 = *v11;
          v88 = *v11 + 1;
          v89 = (a7 + *v11);
          v90 = *v89;
          if (*v89 < 0)
          {
            if (v90 > 0xBF)
            {
              if (v90 >= 0xE0)
              {
LABEL_412:
                v238 = __si_assert_copy_extra_2708(0);
                v239 = v238;
                v240 = "";
                if (v238)
                {
                  v240 = v238;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v240);
                free(v239);
                if (__valid_fs(-1))
                {
                  goto LABEL_380;
                }

                v214 = 3072;
                goto LABEL_382;
              }

              LOWORD(v90) = v89[2] | (*(a7 + v88) << 8);
              v88 = v87 + 3;
            }

            else
            {
              v91 = *(a7 + v88) | ((v90 & 0x3F) << 8);
              v88 = v87 + 2;
              LOWORD(v90) = v91;
            }
          }

          *v11 = v88;
          *(v17 + 13) = v90;
          if (v88 <= a8)
          {
            LODWORD(v80) = 2;
            goto LABEL_365;
          }
        }

        v219 = a1;
        si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld extras:%d type:%d");
        goto LABEL_440;
      }

      if (v13 > 9)
      {
        v80 = 8;
        if (v13 == 10 || v13 == 12)
        {
          goto LABEL_326;
        }

        if (v13 != 15)
        {
LABEL_104:
          v100 = *v11;
          v101 = *v11 + 1;
          v102 = (a7 + *v11);
          v103 = *v102;
          if (*v102 < 0)
          {
            if (v103 > 0xBF)
            {
              if (v103 > 0xDF)
              {
                if (v103 > 0xEF)
                {
                  v103 = *(a7 + v101);
                  v101 = v100 + 5;
                }

                else
                {
                  v103 = ((v103 & 0xF) << 24) | (*(a7 + v101) << 16) | (v102[2] << 8) | v102[3];
                  v101 = v100 + 4;
                }
              }

              else
              {
                v103 = ((v103 & 0x1F) << 16) | (*(a7 + v101) << 8) | v102[2];
                v101 = v100 + 3;
              }
            }

            else
            {
              v104 = *(a7 + v101) | ((v103 & 0x3F) << 8);
              v101 = v100 + 2;
              v103 = v104;
            }
          }

          *v11 = v101;
          v80 = v103;
LABEL_326:
          v188 = v80 + v16[3];
          if (v188 >= v44)
          {
            v256 = v11;
            v189 = a3;
            v190 = (2 * v44);
            do
            {
              v191 = v190;
              v190 *= 2;
            }

            while (v191 <= v188);
            v192 = a7;
            v193 = a2;
            v194 = a8;
            v195 = a1;
            if (v15)
            {
              v196 = v15;
              v197 = (*(v15 + 16))(v15, v16, v44, v191);
            }

            else
            {
              v196 = 0;
              v197 = malloc_type_realloc(v16, v191, 0x96D6F8AuLL);
            }

            v16 = v197;
            v197[2] = v191;
            a2 = v193;
            *v193 = v197;
            v17 = v197 + v189;
            a1 = v195;
            a8 = v194;
            a7 = v192;
            v15 = v196;
            v11 = v256;
          }

          v198 = *v11;
          if (*v11 + v80 > a8)
          {
            v223 = a1;
            v224 = a2;
            v225 = a8;
            v226 = a7;
            v227 = v15;
            hexdumpDBOBuffer(a7, a8, q0_0);
            v228 = v11;
            v229 = v223;
            v230 = v223;
            v231 = v226;
            v232 = v226;
            v233 = v225;
            v234 = v225;
            v235 = v228;
            if (matchingCorruptObjMissingParentSysObj(v230, v16, v232, v234, v228, v80, v224, v227))
            {
              v236 = *__error();
              v237 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(__src.st_dev) = 0;
                _os_log_impl(&dword_1C278D000, v237, OS_LOG_TYPE_DEFAULT, "##matchingCorruptObjMissingParentSysObj : fixed in-memory object!", &__src, 2u);
              }

              *__error() = v236;
              *v235 = v233;
              return;
            }

            v198 = *v235;
            a1 = v229;
            v11 = v235;
            a7 = v231;
            if (*v235 + v80 > v233)
            {
              v218 = a1;
              si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld plus len %ld to fit in size %ld extras:%d type:%d", "ldb.c");
              goto LABEL_437;
            }
          }

          if (v80 + v16[3] > v16[2])
          {
            v219 = a1;
            si_analytics_log_2752("%s:%u: failed assertion '%s' Expected len %ld plus used_bytes %ld to fit in dbo %ld extras:%d type:%d", "ldb.c");
            goto LABEL_440;
          }

          memcpy(v17 + 13, (a7 + v198), v80);
          *v11 += v80;
          goto LABEL_365;
        }

LABEL_80:
        if (v16[3] + 4 <= v44)
        {
          v81 = *v11;
          v82 = *v11 + 1;
          v83 = (a7 + *v11);
          v84 = *v83;
          if (*v83 < 0)
          {
            if (v84 > 0xBF)
            {
              if (v84 > 0xDF)
              {
                if (v84 > 0xEF)
                {
                  v84 = *(a7 + v82);
                  v82 = v81 + 5;
                }

                else
                {
                  v84 = ((v84 & 0xF) << 24) | (*(a7 + v82) << 16) | (v83[2] << 8) | v83[3];
                  v82 = v81 + 4;
                }
              }

              else
              {
                v84 = ((v84 & 0x1F) << 16) | (*(a7 + v82) << 8) | v83[2];
                v82 = v81 + 3;
              }
            }

            else
            {
              v85 = *(a7 + v82) | ((v84 & 0x3F) << 8);
              v82 = v81 + 2;
              v84 = v85;
            }
          }

          *v11 = v82;
          *(v17 + 13) = v84;
          if (v82 <= a8)
          {
            LODWORD(v80) = 4;
            goto LABEL_365;
          }

          goto LABEL_436;
        }

LABEL_432:
        v219 = a1;
        si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld <= %ld extras:%d type:%d");
        goto LABEL_440;
      }

      if ((v13 - 7) >= 2)
      {
        if (v13 == 9)
        {
          v80 = 4;
          goto LABEL_326;
        }

        goto LABEL_104;
      }

      if (v16[3] + 8 > v44)
      {
        v218 = a1;
        si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld <= %ld extras:%d type:%d");
        goto LABEL_437;
      }

      v74 = *v11;
      v75 = *v11 + 1;
      v76 = (a7 + *v11);
      v77 = *v76;
      if (*v76 < 0)
      {
        v78 = *v76;
        if (v78 > 0xBF)
        {
          if (v78 > 0xDF)
          {
            if (v78 > 0xEF)
            {
              if (v78 > 0xF7)
              {
                if (v78 > 0xFB)
                {
                  if (v78 > 0xFD)
                  {
                    if (v78 == 255)
                    {
                      v77 = *(a7 + v75);
                      v75 = v74 + 9;
                    }

                    else
                    {
                      v77 = (*(a7 + v75) << 48) | (v76[2] << 40) | (v76[3] << 32) | (v76[4] << 24) | (v76[5] << 16) | (v76[6] << 8) | v76[7];
                      v75 = v74 + 8;
                    }
                  }

                  else
                  {
                    v77 = ((v77 & 1) << 48) | (*(a7 + v75) << 40) | (v76[2] << 32) | (v76[3] << 24) | (v76[4] << 16) | (v76[5] << 8) | v76[6];
                    v75 = v74 + 7;
                  }
                }

                else
                {
                  v77 = ((v77 & 3) << 40) | (*(a7 + v75) << 32) | (v76[2] << 24) | (v76[3] << 16) | (v76[4] << 8) | v76[5];
                  v75 = v74 + 6;
                }
              }

              else
              {
                v77 = ((v77 & 7) << 32) | (*(a7 + v75) << 24) | (v76[2] << 16) | (v76[3] << 8) | v76[4];
                v75 = v74 + 5;
              }
            }

            else
            {
              v77 = ((v77 & 0xF) << 24) | (*(a7 + v75) << 16) | (v76[2] << 8) | v76[3];
              v75 = v74 + 4;
            }
          }

          else
          {
            v77 = ((v77 & 0x1F) << 16) | (*(a7 + v75) << 8) | v76[2];
            v75 = v74 + 3;
          }
        }

        else
        {
          v79 = *(a7 + v75) | ((v77 & 0x3F) << 8);
          v75 = v74 + 2;
          v77 = v79;
        }
      }

      *v11 = v75;
      *(v17 + 13) = v77;
      if (v75 <= a8)
      {
        LODWORD(v80) = 8;
        goto LABEL_365;
      }

LABEL_436:
      v218 = a1;
      si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld extras:%d type:%d");
      goto LABEL_437;
    }

    v34 = *a6;
    v35 = *a6 + 1;
    v36 = (a7 + *a6);
    v37 = *v36;
    if (*v36 < 0)
    {
      if (v37 > 0xBF)
      {
        if (v37 > 0xDF)
        {
          if (v37 > 0xEF)
          {
            v37 = *(a7 + v35);
            v35 = v34 + 5;
          }

          else
          {
            v37 = ((v37 & 0xF) << 24) | (*(a7 + v35) << 16) | (v36[2] << 8) | v36[3];
            v35 = v34 + 4;
          }
        }

        else
        {
          v37 = ((v37 & 0x1F) << 16) | (*(a7 + v35) << 8) | v36[2];
          v35 = v34 + 3;
        }
      }

      else
      {
        v38 = *(a7 + v35) | ((v37 & 0x3F) << 8);
        v35 = v34 + 2;
        v37 = v38;
      }
    }

    v255 = a2;
    *a6 = v35;
    if (v35 > a8)
    {
      goto LABEL_436;
    }

    *&v258[0] = 0;
    if ((a5 & 8) != 0)
    {
      v154 = 2;
    }

    else
    {
      v154 = 4;
    }

    v155 = a1;
    DBFForUniquedValue = getDBFForUniquedValue(a1, v154, v37, v258);
    if (!DBFForUniquedValue)
    {
      v161 = *__error();
      v162 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
LABEL_292:
        *__error() = v161;
        return;
      }

      v163 = *(v17 + 1);
      v164 = *(v155 + 4);
      __src.st_dev = 136317442;
      *&__src.st_mode = "inflateDBFData";
      WORD2(__src.st_ino) = 1024;
      *(&__src.st_ino + 6) = 1560;
      HIWORD(__src.st_uid) = 1024;
      __src.st_gid = v154;
      LOWORD(__src.st_rdev) = 2048;
      *(&__src.st_rdev + 2) = v37;
      WORD1(__src.st_atimespec.tv_sec) = 1024;
      HIDWORD(__src.st_atimespec.tv_sec) = a5;
      __src.st_atimespec.tv_nsec = 0x8000000000F0400;
      __src.st_mtimespec.tv_sec = v163;
      LOWORD(__src.st_mtimespec.tv_nsec) = 2048;
      *(&__src.st_mtimespec.tv_nsec + 2) = a5;
      WORD1(__src.st_ctimespec.tv_sec) = 2048;
      *(&__src.st_ctimespec.tv_sec + 4) = v164;
      WORD2(__src.st_ctimespec.tv_nsec) = 2080;
      *(&__src.st_ctimespec.tv_nsec + 6) = v155 + 324;
LABEL_298:
      _os_log_error_impl(&dword_1C278D000, v162, OS_LOG_TYPE_ERROR, "%s:%d: Failed to fetch the field for index:%d, nameId:%lu, extras:%d, type:%d, flags:0x%lx(0x%lx), dst->flags:0x%lx, dst->name:%s", &__src, 0x56u);
      goto LABEL_292;
    }

    v157 = DBFForUniquedValue;
    v251 = v37;
    LODWORD(v59) = *DBFForUniquedValue;
    v257 = a5;
    if (*DBFForUniquedValue < 0)
    {
      v159 = v155;
      v160 = a10;
      if (v59 > 0xBF)
      {
        if (v59 > 0xDF)
        {
          if (v59 > 0xEF)
          {
            LODWORD(v59) = *(v157 + 1);
            v158 = 5;
          }

          else
          {
            LODWORD(v59) = ((v59 & 0xF) << 24) | (v157[1] << 16) | (v157[2] << 8) | v157[3];
            v158 = 4;
          }
        }

        else
        {
          LODWORD(v59) = ((v59 & 0x1F) << 16) | (v157[1] << 8) | v157[2];
          v158 = 3;
        }
      }

      else
      {
        v158 = 2;
        LODWORD(v59) = v157[1] | ((v59 & 0x3F) << 8);
      }
    }

    else
    {
      v158 = 1;
      v159 = v155;
      v160 = a10;
    }

    v181 = *&v258[0];
    if (*&v258[0] < v158)
    {
      si_analytics_log_2752("Expected offset %ld to fit in size %ld pc:%d extras:%d type:%d", v158, *&v258[0], *(v159 + 984), v257, 15);
      v160 = a10;
      v159 = v155;
      if ((v257 & 8) == 0)
      {
        goto LABEL_302;
      }
    }

    else if ((v257 & 8) == 0)
    {
LABEL_302:
      v182 = v158 + 1;
      v183 = &v157[v158];
      v184 = v157[v158];
      if (v157[v158] < 0)
      {
        if (v184 > 0xBF)
        {
          if (v184 > 0xDF)
          {
            if (v184 > 0xEF)
            {
              v184 = *&v157[v182];
              v182 = v158 + 5;
            }

            else
            {
              v184 = ((v184 & 0xF) << 24) | (v157[v182] << 16) | (v183[2] << 8) | v183[3];
              v182 = v158 + 4;
            }
          }

          else
          {
            v184 = ((v184 & 0x1F) << 16) | (v157[v182] << 8) | v183[2];
            v182 = v158 + 3;
          }
        }

        else
        {
          v185 = v157[v182] | ((v184 & 0x3F) << 8);
          v182 = v158 + 2;
          v184 = v185;
        }
      }

      if (v181 < v182)
      {
        si_analytics_log_2752("Expected offset %ld to fit in size %ld pc:%d, extras:%d type:%d", v182, v181, *(v159 + 984), v257, 15);
        return;
      }

      if (v184 != *(v17 + 1))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          v247 = *(v17 + 1);
          v248 = *(v159 + 4);
          *&__src.st_dev = 0x404000802;
          LOWORD(__src.st_ino) = 2048;
          *(&__src.st_ino + 2) = v251;
          HIWORD(__src.st_uid) = 1024;
          __src.st_gid = v257;
          LOWORD(__src.st_rdev) = 1024;
          *(&__src.st_rdev + 2) = 15;
          *(&__src.st_rdev + 3) = 2048;
          __src.st_atimespec.tv_sec = v247;
          LOWORD(__src.st_atimespec.tv_nsec) = 2048;
          *(&__src.st_atimespec.tv_nsec + 2) = v257;
          WORD1(__src.st_mtimespec.tv_sec) = 2048;
          *(&__src.st_mtimespec.tv_sec + 4) = v248;
          WORD2(__src.st_mtimespec.tv_nsec) = 2080;
          *(&__src.st_mtimespec.tv_nsec + 6) = v159 + 324;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Got the wrong field for index:%d, nameId:%lu, extras:%d, type:%d, flags:0x%lx(0x%lx), dst->flags:0x%lx, dst->name:%s", &__src, 0x46u);
        }

        return;
      }

      if (v182 - v158 > v59)
      {
        si_analytics_log_2752("Expected len %ld to contain new data size %ld - %ld pc:%d extras:%d type:%d", v59, v158, v182, *(v159 + 984), v257, 15);
        return;
      }

      LODWORD(v59) = v59 - (v182 - v158);
LABEL_418:
      *(v17 + 2) = v59;
      v241 = v16[2];
      v242 = v16[3];
      v243 = v242 + v59;
      if (v243 >= v241)
      {
        v244 = (2 * v241);
        do
        {
          v245 = v244;
          v244 *= 2;
        }

        while (v245 <= v243);
        if (v160)
        {
          v246 = (*(v160 + 16))(v160, v16);
        }

        else
        {
          v246 = malloc_type_realloc(v16, v245, 0x96D6F8AuLL);
        }

        v16 = v246;
        v246[2] = v245;
        *v255 = v246;
        LODWORD(v59) = *(v246 + a3 + 8);
        v242 = v246[3];
        v241 = v245 & 0xFFFFFFFE;
      }

      if (v242 + v59 > v241)
      {
        si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld + %ld <= %ld extras:%d type:%d", "ldb.c", 1600, "(size_t)dbf->data_len + (size_t)dbo->used_bytes <= (size_t)dbo->size", v59, v242, v241, v257, 15);
        memset(&__src, 0, sizeof(__src));
        v215 = -2;
        v216 = *(v159 + 848);
        if (v216)
        {
          goto LABEL_387;
        }

        goto LABEL_390;
      }

      memcpy(v16 + a3 + 13, &v157[v182], v59);
      goto LABEL_427;
    }

    v182 = v158;
    goto LABEL_418;
  }

  if (a4 != 14)
  {
    *v17 = a4;
    if ((a5 & 3) == 2)
    {
      LOWORD(v18) = *(v17 + 1);
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v18 = *(v17 + 1);
  if ((~v18 & 0x5020) == 0)
  {
    *(v17 + 1) = v18 | 0x10;
    if ((v18 & 8) == 0)
    {
      v265 = 0u;
      v266 = 0u;
      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v260 = 0u;
      memset(&__src, 0, sizeof(__src));
      v19 = *a6;
      v20 = *a6 + 1;
      *a6 = v20;
      v21 = v19 + *(a7 + v19);
      if (v20 >= v21)
      {
        v59 = 0;
      }

      else
      {
        v22 = 0;
        do
        {
          v23 = v20 + 1;
          v24 = (a7 + v20);
          v25 = *(a7 + v20);
          if (*(a7 + v20) < 0)
          {
            v26 = *(a7 + v20);
            if (v26 > 0xBF)
            {
              if (v26 > 0xDF)
              {
                if (v26 > 0xEF)
                {
                  if (v26 > 0xF7)
                  {
                    if (v26 > 0xFB)
                    {
                      if (v26 > 0xFD)
                      {
                        if (v26 == 255)
                        {
                          v25 = *(a7 + v23);
                          v20 += 9;
                        }

                        else
                        {
                          v25 = (*(a7 + v23) << 48) | (v24[2] << 40) | (v24[3] << 32) | (v24[4] << 24) | (v24[5] << 16) | (v24[6] << 8) | v24[7];
                          v20 += 8;
                        }
                      }

                      else
                      {
                        v25 = ((v25 & 1) << 48) | (*(a7 + v23) << 40) | (v24[2] << 32) | (v24[3] << 24) | (v24[4] << 16) | (v24[5] << 8) | v24[6];
                        v20 += 7;
                      }
                    }

                    else
                    {
                      v25 = ((v25 & 3) << 40) | (*(a7 + v23) << 32) | (v24[2] << 24) | (v24[3] << 16) | (v24[4] << 8) | v24[5];
                      v20 += 6;
                    }
                  }

                  else
                  {
                    v25 = ((v25 & 7) << 32) | (*(a7 + v23) << 24) | (v24[2] << 16) | (v24[3] << 8) | v24[4];
                    v20 += 5;
                  }
                }

                else
                {
                  v25 = ((v25 & 0xF) << 24) | (*(a7 + v23) << 16) | (v24[2] << 8) | v24[3];
                  v20 += 4;
                }
              }

              else
              {
                v25 = ((v25 & 0x1F) << 16) | (*(a7 + v23) << 8) | v24[2];
                v20 += 3;
              }
            }

            else
            {
              v20 += 2;
              v25 = *(a7 + v23) | ((v25 & 0x3F) << 8);
            }
          }

          else
          {
            ++v20;
          }

          if (v22 <= 0x1F)
          {
            *(&__src.st_dev + v22++) = v25;
          }
        }

        while (v20 < v21);
        *a6 = v20;
        v59 = 8 * v22;
      }

      v92 = v16[2];
      v93 = v16[3];
      v94 = v59 + v93;
      if (v59 + v93 >= v92)
      {
        v95 = (2 * v92);
        do
        {
          v96 = v95;
          v95 *= 2;
        }

        while (v96 <= v94);
        v97 = a2;
        v98 = a1;
        if (a10)
        {
          v99 = (*(a10 + 16))(a10, v16);
        }

        else
        {
          v99 = malloc_type_realloc(v16, v96, 0x96D6F8AuLL);
        }

        v16 = v99;
        v99[2] = v96;
        *v97 = v99;
        v17 = v99 + a3;
        v93 = v99[3];
        v94 = v59 + v93;
        v92 = v96 & 0xFFFFFFFE;
        a1 = v98;
      }

      if (v94 <= v92)
      {
        *(v17 + 2) = v59;
        memcpy(v17 + 13, &__src, v59 & 0xFFFFFFF8);
        *v17 = 14;
LABEL_427:
        LODWORD(v105) = v16[3] + v59;
        goto LABEL_428;
      }

      v220 = a1;
      si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld + %ld <= %ld type:%d", "ldb.c", 1350, "sizeof(uint64_t)*vi + (size_t)dbo->used_bytes <= (size_t)dbo->size", 8, v93, v92, 14);
      memset(v258, 0, sizeof(v258));
      v210 = -2;
      v221 = *(v220 + 848);
      if (v221)
      {
        v222 = *(v221 + 44);
        if (v222 >= 0xFFFFFFFE)
        {
          v210 = -2;
        }

        else
        {
          v210 = v222;
        }
      }

      p_src = v258;
      goto LABEL_379;
    }

    v66 = v16[2];
    v67 = v16[3] + 8;
    if (v67 >= v66)
    {
      v68 = (2 * v66);
      do
      {
        v69 = v68;
        v68 *= 2;
      }

      while (v69 <= v67);
      v70 = a7;
      v71 = a2;
      v72 = a1;
      if (a10)
      {
        v73 = (*(a10 + 16))(a10, v16);
      }

      else
      {
        v73 = malloc_type_realloc(v16, v69, 0x96D6F8AuLL);
      }

      v16 = v73;
      v73[2] = v69;
      *v71 = v73;
      v17 = v73 + a3;
      v67 = v73[3] + 8;
      v66 = v69 & 0xFFFFFFFE;
      a1 = v72;
      a7 = v70;
    }

    if (v67 <= v66)
    {
      v131 = *v11;
      v132 = *v11 + 1;
      v133 = (a7 + *v11);
      v134 = *v133;
      if (*v133 < 0)
      {
        v135 = *v133;
        if (v135 > 0xBF)
        {
          if (v135 > 0xDF)
          {
            if (v135 > 0xEF)
            {
              if (v135 > 0xF7)
              {
                if (v135 > 0xFB)
                {
                  if (v135 > 0xFD)
                  {
                    if (v135 == 255)
                    {
                      v134 = *(a7 + v132);
                      v132 = v131 + 9;
                    }

                    else
                    {
                      v134 = (*(a7 + v132) << 48) | (v133[2] << 40) | (v133[3] << 32) | (v133[4] << 24) | (v133[5] << 16) | (v133[6] << 8) | v133[7];
                      v132 = v131 + 8;
                    }
                  }

                  else
                  {
                    v134 = ((v134 & 1) << 48) | (*(a7 + v132) << 40) | (v133[2] << 32) | (v133[3] << 24) | (v133[4] << 16) | (v133[5] << 8) | v133[6];
                    v132 = v131 + 7;
                  }
                }

                else
                {
                  v134 = ((v134 & 3) << 40) | (*(a7 + v132) << 32) | (v133[2] << 24) | (v133[3] << 16) | (v133[4] << 8) | v133[5];
                  v132 = v131 + 6;
                }
              }

              else
              {
                v134 = ((v134 & 7) << 32) | (*(a7 + v132) << 24) | (v133[2] << 16) | (v133[3] << 8) | v133[4];
                v132 = v131 + 5;
              }
            }

            else
            {
              v134 = ((v134 & 0xF) << 24) | (*(a7 + v132) << 16) | (v133[2] << 8) | v133[3];
              v132 = v131 + 4;
            }
          }

          else
          {
            v134 = ((v134 & 0x1F) << 16) | (*(a7 + v132) << 8) | v133[2];
            v132 = v131 + 3;
          }
        }

        else
        {
          v136 = *(a7 + v132) | ((v134 & 0x3F) << 8);
          v132 = v131 + 2;
          v134 = v136;
        }
      }

      *v11 = v132;
      *(v17 + 13) = v134;
      *(v17 + 2) = 8;
      *v17 = 14;
      LODWORD(v105) = v16[3] + 8;
      goto LABEL_428;
    }

    v219 = a1;
    si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld + %ld <= %ld");
LABEL_440:
    memset(&__src, 0, sizeof(__src));
    v210 = -2;
    v211 = *(v219 + 848);
    if (!v211)
    {
      goto LABEL_378;
    }

    goto LABEL_375;
  }

  v33 = 14;
LABEL_41:
  *v17 = v33;
  if ((a5 & 3) != 2)
  {
LABEL_45:
    if (a5)
    {
      v56 = *a6;
      v57 = *a6 + 1;
      v58 = (a7 + *a6);
      LODWORD(v59) = *v58;
      v252 = a1;
      if (*v58 < 0)
      {
        if (v59 > 0xBF)
        {
          if (v59 > 0xDF)
          {
            if (v59 > 0xEF)
            {
              LODWORD(v59) = *(a7 + v57);
              v57 = v56 + 5;
            }

            else
            {
              LODWORD(v59) = ((v59 & 0xF) << 24) | (*(a7 + v57) << 16) | (v58[2] << 8) | v58[3];
              v57 = v56 + 4;
            }
          }

          else
          {
            LODWORD(v59) = ((v59 & 0x1F) << 16) | (*(a7 + v57) << 8) | v58[2];
            v57 = v56 + 3;
          }
        }

        else
        {
          v60 = *(a7 + v57) | ((v59 & 0x3F) << 8);
          v57 = v56 + 2;
          LODWORD(v59) = v60;
        }
      }

      *a6 = v57;
      v137 = a3 + 13;
      if (a3 + 13 > v16[2])
      {
        v209 = __si_assert_copy_extra_2708(0);
        __message_assert("%s:%u: failed assertion '%s' %s Field outside allocated object (%lu + %lu) > %u extras:%d type:%d", "ldb.c");
      }

      else
      {
        *(v17 + 2) = v59;
        v138 = v16[2];
        v139 = v16[3] + v59;
        if (v139 >= v138)
        {
          v141 = (2 * v138);
          do
          {
            v59 = v141;
            v141 *= 2;
          }

          while (v59 <= v139);
          v142 = a7;
          v143 = a2;
          v144 = a8;
          if (a10)
          {
            v145 = (*(a10 + 16))(a10, v16);
          }

          else
          {
            v145 = malloc_type_realloc(v16, v59, 0x96D6F8AuLL);
          }

          v16 = v145;
          v145[2] = v59;
          *v143 = v145;
          v17 = v145 + a3;
          v140 = *(v145 + a3 + 8);
          v138 = v59 & 0xFFFFFFFE;
          LODWORD(v59) = *(v145 + a3 + 8);
          a8 = v144;
          v11 = a6;
          a7 = v142;
        }

        else
        {
          v140 = v59;
        }

        if (v137 + v140 <= v138)
        {
          if (v57 + v140 > a8)
          {
            si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld plus len %ld to fit in size %ld extras:%d type:%d", a2, "ldb.c");
            goto LABEL_386;
          }

          if (v140 + v16[3] <= v138)
          {
            memcpy(v17 + 13, (a7 + v57), v140);
            *v11 += v140;
            goto LABEL_427;
          }

LABEL_373:
          si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld + %ld <= %ld extras:%d type:%d", "ldb.c");
          goto LABEL_374;
        }

        v209 = __si_assert_copy_extra_2708(0);
        __message_assert("%s:%u: failed assertion '%s' %s Field outside allocated object (%lu + %lu + %u) > %u extras:%d type:%d", "ldb.c", 1610);
      }

      free(v209);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    goto LABEL_46;
  }

LABEL_42:
  v252 = a1;
  *(v17 + 1) = v18 | 0x20;
  v39 = *a6;
  v40 = *a6 + 1;
  v41 = (a7 + *a6);
  v42 = *v41;
  if (*v41 < 0)
  {
    if (v42 > 0xBF)
    {
      if (v42 > 0xDF)
      {
        if (v42 > 0xEF)
        {
          v42 = *(a7 + v40);
          v40 = v39 + 5;
        }

        else
        {
          v42 = ((v42 & 0xF) << 24) | (*(a7 + v40) << 16) | (v41[2] << 8) | v41[3];
          v40 = v39 + 4;
        }
      }

      else
      {
        v42 = ((v42 & 0x1F) << 16) | (*(a7 + v40) << 8) | v41[2];
        v40 = v39 + 3;
      }
    }

    else
    {
      v43 = *(a7 + v40) | ((v42 & 0x3F) << 8);
      v40 = v39 + 2;
      v42 = v43;
    }
  }

  *a6 = v40;
  if (v40 > a8)
  {
LABEL_354:
    si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld extras:%d type:%d");
    goto LABEL_374;
  }

  *(v17 + 2) = v42;
  v105 = v16[3];
  v106 = v105 + v42;
  if (v106 >= 0xFFFFFFFF)
  {
    si_analytics_log_2752("%s:%u: failed assertion '%s' Overflow %ld + %ld extras:%d type:%d");
    goto LABEL_374;
  }

  v107 = v16[2];
  if (v106 >= v107)
  {
    v249 = a7;
    v109 = a3;
    v110 = (2 * v107);
    do
    {
      v111 = v110;
      v110 *= 2;
    }

    while (v111 <= v106);
    v113 = a2;
    v114 = a8;
    if (a10)
    {
      v115 = a10;
      v116 = (*(a10 + 16))(a10, v16);
    }

    else
    {
      v115 = 0;
      v116 = malloc_type_realloc(v16, v111, 0x96D6F8AuLL);
    }

    v16 = v116;
    v116[2] = v111;
    a2 = v113;
    *v113 = v116;
    v17 = v116 + v109;
    v105 = v116[3];
    v106 = *(v17 + 2) + v105;
    v107 = v111 & 0xFFFFFFFE;
    v108 = *(v17 + 2);
    a8 = v114;
    v11 = a6;
    a7 = v249;
    v15 = v115;
    v13 = a4;
  }

  else
  {
    v108 = v42;
  }

  if (v106 > v107)
  {
    si_analytics_log_2752("%s:%u: failed assertion '%s' Buffer overflow %ld + %ld > %ld extras:%d type:%d", a2, "ldb.c");
    goto LABEL_386;
  }

  if ((v13 - 9) < 4 || v13 == 14)
  {
    if (v40 + v42 <= a8)
    {
LABEL_124:
      if (v16[3] + v42 <= v16[2])
      {
        memcpy(v17 + 13, (a7 + v40), v42);
        *v11 += v42;
        *(v17 + 2) = v42;
        LODWORD(v105) = v16[3] + v42;
LABEL_428:
        v16[3] = v105;
        return;
      }

      si_analytics_log_2752("%s:%u: failed assertion '%s' dbo overflow: %ld + %ld > %ld extras:%d type:%d", "ldb.c");
LABEL_374:
      memset(&__src, 0, sizeof(__src));
      v210 = -2;
      v211 = *(v252 + 848);
      if (!v211)
      {
LABEL_378:
        p_src = &__src;
LABEL_379:
        if (!fstatat(v210, "CrystalGlow.created", p_src, 0))
        {
LABEL_380:
          v214 = 2989;
          goto LABEL_382;
        }

        v214 = 2816;
LABEL_382:
        *v214 = -559038737;
        abort();
      }

LABEL_375:
      v212 = *(v211 + 44);
      if (v212 >= 0xFFFFFFFE)
      {
        v210 = -2;
      }

      else
      {
        v210 = v212;
      }

      goto LABEL_378;
    }

    v199 = a2;
    v200 = a8;
    v201 = a7;
    v202 = v15;
    hexdumpDBOBuffer(a7, a8, q0_0);
    v203 = v201;
    v204 = v201;
    v205 = v200;
    if ((matchingCorruptObjMissingParentSysObj(v252, v16, v204, v200, v11, v42, v199, v202) & 1) == 0)
    {
      v40 = *v11;
      a7 = v203;
      if (*v11 + v42 > v205)
      {
        si_analytics_log_2752("%s:%u: failed assertion '%s' Buffer overflow: %ld + %ld > %ld extras:%d type:%d", v206, "ldb.c");
        goto LABEL_386;
      }

      goto LABEL_124;
    }

    v207 = *__error();
    v208 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__src.st_dev) = 0;
      _os_log_impl(&dword_1C278D000, v208, OS_LOG_TYPE_DEFAULT, "##matchingCorruptObjMissingParentSysObj : fixed in-memory object!", &__src, 2u);
    }

    *__error() = v207;
    *v11 = v200;
  }

  else
  {
    if (!v108)
    {
      goto LABEL_428;
    }

    if (v13 < 9 || v13 == 15)
    {
      v117 = 0;
      v118 = v17 + 13;
      v119 = 1 << v13;
      do
      {
        if ((v119 & 7) != 0)
        {
          if (v16[3] >= v16[2])
          {
            goto LABEL_373;
          }

          v118[v117] = *(a7 + v40);
          v121 = *v11 + 1;
          *v11 = v121;
          if (v121 > a8)
          {
            goto LABEL_354;
          }

          ++v117;
        }

        else if ((v119 & 0x8060) != 0)
        {
          if (v16[3] + 4 > v16[2])
          {
            goto LABEL_373;
          }

          v121 = v40 + 1;
          v124 = a7 + v40;
          v125 = *(a7 + v40);
          if (*(a7 + v40) < 0)
          {
            if (v125 > 0xBF)
            {
              if (v125 > 0xDF)
              {
                if (v125 > 0xEF)
                {
                  v125 = *(a7 + v121);
                  v121 = v40 + 5;
                }

                else
                {
                  v125 = ((v125 & 0xF) << 24) | (*(a7 + v121) << 16) | (*(v124 + 2) << 8) | *(v124 + 3);
                  v121 = v40 + 4;
                }
              }

              else
              {
                v125 = ((v125 & 0x1F) << 16) | (*(a7 + v121) << 8) | *(v124 + 2);
                v121 = v40 + 3;
              }
            }

            else
            {
              v126 = *(a7 + v121) | ((v125 & 0x3F) << 8);
              v121 = v40 + 2;
              v125 = v126;
            }
          }

          *v11 = v121;
          *&v118[v117] = v125;
          if (v121 > a8)
          {
            goto LABEL_354;
          }

          v117 += 4;
        }

        else if ((v119 & 0x18) != 0)
        {
          if (v16[3] + 2 > v16[2])
          {
            goto LABEL_385;
          }

          v121 = v40 + 1;
          v127 = *(a7 + v40);
          if (*(a7 + v40) < 0)
          {
            if (v127 > 0xBF)
            {
              if (v127 >= 0xE0)
              {
                goto LABEL_412;
              }

              LOWORD(v127) = *(a7 + v40 + 2) | (*(a7 + v121) << 8);
              v121 = v40 + 3;
            }

            else
            {
              v128 = *(a7 + v121) | ((v127 & 0x3F) << 8);
              v121 = v40 + 2;
              LOWORD(v127) = v128;
            }
          }

          *v11 = v121;
          *&v118[v117] = v127;
          if (v121 > a8)
          {
            si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld extras:%d type:%d", a2);
            goto LABEL_386;
          }

          v117 += 2;
        }

        else
        {
          if (v16[3] + 8 > v16[2])
          {
LABEL_385:
            si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld + %ld <= %ld extras:%d type:%d", a2, "ldb.c");
LABEL_386:
            memset(&__src, 0, sizeof(__src));
            v215 = -2;
            v216 = *(v252 + 848);
            if (v216)
            {
LABEL_387:
              v217 = *(v216 + 44);
              if (v217 >= 0xFFFFFFFE)
              {
                v215 = -2;
              }

              else
              {
                v215 = v217;
              }
            }

LABEL_390:
            if (!fstatat(v215, "CrystalGlow.created", &__src, 0))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xB00] = -559038737;
            abort();
          }

          v121 = v40 + 1;
          v129 = (a7 + v40);
          v122 = *(a7 + v40);
          if (*(a7 + v40) < 0)
          {
            v130 = *(a7 + v40);
            if (v130 <= 0xBF)
            {
              v120 = *(a7 + v121) | ((v122 & 0x3F) << 8);
              v121 = v40 + 2;
              v122 = v120;
            }

            else if (v130 > 0xDF)
            {
              if (v130 > 0xEF)
              {
                if (v130 > 0xF7)
                {
                  if (v130 > 0xFB)
                  {
                    if (v130 > 0xFD)
                    {
                      if (v130 == 255)
                      {
                        v122 = *(a7 + v121);
                        v121 = v40 + 9;
                      }

                      else
                      {
                        v122 = (*(a7 + v121) << 48) | (v129[2] << 40) | (v129[3] << 32) | (v129[4] << 24) | (v129[5] << 16) | (v129[6] << 8) | v129[7];
                        v121 = v40 + 8;
                      }
                    }

                    else
                    {
                      v122 = ((v122 & 1) << 48) | (*(a7 + v121) << 40) | (v129[2] << 32) | (v129[3] << 24) | (v129[4] << 16) | (v129[5] << 8) | v129[6];
                      v121 = v40 + 7;
                    }
                  }

                  else
                  {
                    v122 = ((v122 & 3) << 40) | (*(a7 + v121) << 32) | (v129[2] << 24) | (v129[3] << 16) | (v129[4] << 8) | v129[5];
                    v121 = v40 + 6;
                  }
                }

                else
                {
                  v122 = ((v122 & 7) << 32) | (*(a7 + v121) << 24) | (v129[2] << 16) | (v129[3] << 8) | v129[4];
                  v121 = v40 + 5;
                }
              }

              else
              {
                v122 = ((v122 & 0xF) << 24) | (*(a7 + v121) << 16) | (v129[2] << 8) | v129[3];
                v121 = v40 + 4;
              }
            }

            else
            {
              v122 = ((v122 & 0x1F) << 16) | (*(a7 + v121) << 8) | v129[2];
              v121 = v40 + 3;
            }
          }

          *v11 = v121;
          *&v118[v117] = v122;
          v117 += 8;
        }

        v123 = *(v17 + 2);
        v40 = v121;
      }

      while (v117 < v123);
      LODWORD(v105) = v16[3] + v123;
      goto LABEL_428;
    }
  }
}

uint64_t _inflateDBO(uint64_t a1, unsigned int *a2, void **a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = 4 * *a2 + 48;
  if (a6)
  {
    v11 = (*(a6 + 16))(a6, 0, 0, v10);
  }

  else
  {
    v11 = malloc_type_malloc(v10, 0xE577F81BuLL);
  }

  v12 = v11;
  *a3 = v11;
  if (*a1 != 1685287992)
  {
    v155 = __si_assert_copy_extra_332();
    v153 = v155;
    v156 = "";
    if (v155)
    {
      v156 = v155;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 464, v156);
    goto LABEL_261;
  }

  v13 = *(a1 + 804);
  v11[2] = v10;
  v11[3] = 48;
  v11[11] = 0;
  v14 = a2 + 1;
  v15 = *(a2 + 4);
  if (a2[1] < 0)
  {
    v23 = *(a2 + 4);
    if (v23 > 0xBF)
    {
      if (v23 > 0xDF)
      {
        if (v23 > 0xEF)
        {
          if (v23 > 0xF7)
          {
            if (v23 > 0xFB)
            {
              if (v23 > 0xFD)
              {
                if (v23 == 255)
                {
                  v15 = *(a2 + 5);
                  v16 = 9;
                }

                else
                {
                  v15 = (*(a2 + 5) << 48) | (*(a2 + 6) << 40) | (*(a2 + 7) << 32) | (*(a2 + 8) << 24) | (*(a2 + 9) << 16) | (*(a2 + 10) << 8) | *(a2 + 11);
                  v16 = 8;
                }
              }

              else
              {
                v15 = ((v15 & 1) << 48) | (*(a2 + 5) << 40) | (*(a2 + 6) << 32) | (*(a2 + 7) << 24) | (*(a2 + 8) << 16) | (*(a2 + 9) << 8) | *(a2 + 10);
                v16 = 7;
              }
            }

            else
            {
              v15 = ((v15 & 3) << 40) | (*(a2 + 5) << 32) | (*(a2 + 6) << 24) | (*(a2 + 7) << 16) | (*(a2 + 8) << 8) | *(a2 + 9);
              v16 = 6;
            }
          }

          else
          {
            v15 = ((v15 & 7) << 32) | (*(a2 + 5) << 24) | (*(a2 + 6) << 16) | (*(a2 + 7) << 8) | *(a2 + 8);
            v16 = 5;
          }
        }

        else
        {
          v15 = ((v15 & 0xF) << 24) | (*(a2 + 5) << 16) | (*(a2 + 6) << 8) | *(a2 + 7);
          v16 = 4;
        }
      }

      else
      {
        v15 = ((v15 & 0x1F) << 16) | (*(a2 + 5) << 8) | *(a2 + 6);
        v16 = 3;
      }
    }

    else
    {
      v15 = *(a2 + 5) | ((v15 & 0x3F) << 8);
      v16 = 2;
    }
  }

  else
  {
    v16 = 1;
  }

  v17 = v15;
  v18 = *a2;
  v162 = a2 + 1;
  *v11 = v17;
  v19 = v16 + 1;
  v20 = v14 + v16;
  v21 = *(v14 + v16);
  if (*(v14 + v16) < 0)
  {
    if (v21 > 0xBF)
    {
      if (v21 > 0xDF)
      {
        if (v21 > 0xEF)
        {
          v24 = *(v162 + v19);
          v19 = v16 + 5;
        }

        else
        {
          v24 = ((v21 & 0xF) << 24) | (*(v162 + v19) << 16) | (v20[2] << 8) | v20[3];
          v19 = v16 + 4;
        }
      }

      else
      {
        v24 = ((v21 & 0x1F) << 16) | (*(v162 + v19) << 8) | v20[2];
        v19 = v16 + 3;
      }
    }

    else
    {
      v24 = *(v162 + v19) | ((v21 & 0x3F) << 8);
      v19 = v16 + 2;
    }

    v22 = v24;
  }

  else
  {
    v22 = *(v14 + v16);
  }

  v12[10] = v22;
  v25 = v19 + 1;
  v26 = v14 + v19;
  v27 = *(v14 + v19);
  if (*(v14 + v19) < 0)
  {
    v30 = *(v14 + v19);
    if (v30 > 0xBF)
    {
      if (v30 > 0xDF)
      {
        if (v30 > 0xEF)
        {
          if (v30 > 0xF7)
          {
            if (v30 > 0xFB)
            {
              if (v30 > 0xFD)
              {
                if (v30 == 255)
                {
                  v29 = *(v162 + v25);
                  v28 = v19 + 9;
                }

                else
                {
                  v29 = (*(v162 + v25) << 48) | (v26[2] << 40) | (v26[3] << 32) | (v26[4] << 24) | (v26[5] << 16) | (v26[6] << 8) | v26[7];
                  v28 = v19 + 8;
                }
              }

              else
              {
                v29 = ((v27 & 1) << 48) | (*(v162 + v25) << 40) | (v26[2] << 32) | (v26[3] << 24) | (v26[4] << 16) | (v26[5] << 8) | v26[6];
                v28 = v19 + 7;
              }
            }

            else
            {
              v29 = ((v27 & 3) << 40) | (*(v162 + v25) << 32) | (v26[2] << 24) | (v26[3] << 16) | (v26[4] << 8) | v26[5];
              v28 = v19 + 6;
            }
          }

          else
          {
            v29 = ((v27 & 7) << 32) | (*(v162 + v25) << 24) | (v26[2] << 16) | (v26[3] << 8) | v26[4];
            v28 = v19 + 5;
          }
        }

        else
        {
          v29 = ((v27 & 0xF) << 24) | (*(v162 + v25) << 16) | (v26[2] << 8) | v26[3];
          v28 = v19 + 4;
        }
      }

      else
      {
        v29 = ((v27 & 0x1F) << 16) | (*(v162 + v25) << 8) | v26[2];
        v28 = v19 + 3;
      }
    }

    else
    {
      v29 = *(v162 + v25) | ((v27 & 0x3F) << 8);
      v28 = v19 + 2;
    }
  }

  else
  {
    v28 = v19 + 1;
    v29 = v27;
  }

  *(v12 + 4) = v29;
  v31 = v28 + 1;
  v32 = v14 + v28;
  v33 = *(v14 + v28);
  if (*(v14 + v28) < 0)
  {
    v36 = *(v14 + v28);
    if (v36 > 0xBF)
    {
      if (v36 > 0xDF)
      {
        if (v36 > 0xEF)
        {
          if (v36 > 0xF7)
          {
            if (v36 > 0xFB)
            {
              if (v36 > 0xFD)
              {
                if (v36 == 255)
                {
                  v35 = *(v162 + v31);
                  v34 = v28 + 9;
                }

                else
                {
                  v35 = (*(v162 + v31) << 48) | (v32[2] << 40) | (v32[3] << 32) | (v32[4] << 24) | (v32[5] << 16) | (v32[6] << 8) | v32[7];
                  v34 = v28 + 8;
                }
              }

              else
              {
                v35 = ((v33 & 1) << 48) | (*(v162 + v31) << 40) | (v32[2] << 32) | (v32[3] << 24) | (v32[4] << 16) | (v32[5] << 8) | v32[6];
                v34 = v28 + 7;
              }
            }

            else
            {
              v35 = ((v33 & 3) << 40) | (*(v162 + v31) << 32) | (v32[2] << 24) | (v32[3] << 16) | (v32[4] << 8) | v32[5];
              v34 = v28 + 6;
            }
          }

          else
          {
            v35 = ((v33 & 7) << 32) | (*(v162 + v31) << 24) | (v32[2] << 16) | (v32[3] << 8) | v32[4];
            v34 = v28 + 5;
          }
        }

        else
        {
          v35 = ((v33 & 0xF) << 24) | (*(v162 + v31) << 16) | (v32[2] << 8) | v32[3];
          v34 = v28 + 4;
        }
      }

      else
      {
        v35 = ((v33 & 0x1F) << 16) | (*(v162 + v31) << 8) | v32[2];
        v34 = v28 + 3;
      }
    }

    else
    {
      v35 = *(v162 + v31) | ((v33 & 0x3F) << 8);
      v34 = v28 + 2;
    }
  }

  else
  {
    v34 = v28 + 1;
    v35 = v33;
  }

  v174 = v34;
  *(v12 + 3) = v35;
  v37 = v34 + 1;
  v38 = v14 + v34;
  v39 = *(v14 + v34);
  if (*(v14 + v34) < 0)
  {
    v42 = *(v14 + v34);
    if (v42 > 0xBF)
    {
      if (v42 > 0xDF)
      {
        if (v42 > 0xEF)
        {
          if (v42 > 0xF7)
          {
            if (v42 > 0xFB)
            {
              if (v42 > 0xFD)
              {
                if (v42 == 255)
                {
                  v41 = *(v162 + v37);
                  v40 = v34 + 9;
                }

                else
                {
                  v41 = (*(v162 + v37) << 48) | (v38[2] << 40) | (v38[3] << 32) | (v38[4] << 24) | (v38[5] << 16) | (v38[6] << 8) | v38[7];
                  v40 = v34 + 8;
                }
              }

              else
              {
                v41 = ((v39 & 1) << 48) | (*(v162 + v37) << 40) | (v38[2] << 32) | (v38[3] << 24) | (v38[4] << 16) | (v38[5] << 8) | v38[6];
                v40 = v34 + 7;
              }
            }

            else
            {
              v41 = ((v39 & 3) << 40) | (*(v162 + v37) << 32) | (v38[2] << 24) | (v38[3] << 16) | (v38[4] << 8) | v38[5];
              v40 = v34 + 6;
            }
          }

          else
          {
            v41 = ((v39 & 7) << 32) | (*(v162 + v37) << 24) | (v38[2] << 16) | (v38[3] << 8) | v38[4];
            v40 = v34 + 5;
          }
        }

        else
        {
          v41 = ((v39 & 0xF) << 24) | (*(v162 + v37) << 16) | (v38[2] << 8) | v38[3];
          v40 = v34 + 4;
        }
      }

      else
      {
        v41 = ((v39 & 0x1F) << 16) | (*(v162 + v37) << 8) | v38[2];
        v40 = v34 + 3;
      }
    }

    else
    {
      v41 = *(v162 + v37) | ((v39 & 0x3F) << 8);
      v40 = v34 + 2;
    }
  }

  else
  {
    v40 = v34 + 1;
    v41 = v39;
  }

  *(v12 + 2) = v41;
  if ((v22 & 0x80) != 0)
  {
    v44 = v40 + 1;
    v45 = v14 + v40;
    v46 = *(v14 + v40);
    if (*(v14 + v40) < 0)
    {
      if (v46 > 0xBF)
      {
        if (v46 > 0xDF)
        {
          if (v46 > 0xEF)
          {
            v48 = *(v162 + v44);
            v44 = v40 + 5;
          }

          else
          {
            v48 = ((v46 & 0xF) << 24) | (*(v162 + v44) << 16) | (v45[2] << 8) | v45[3];
            v44 = v40 + 4;
          }
        }

        else
        {
          v48 = ((v46 & 0x1F) << 16) | (*(v162 + v44) << 8) | v45[2];
          v44 = v40 + 3;
        }
      }

      else
      {
        v48 = *(v162 + v44) | ((v46 & 0x3F) << 8);
        v44 = v40 + 2;
      }

      v47 = v48;
    }

    else
    {
      v47 = *(v14 + v40);
    }

    v174 = v44;
    v12[11] = v47;
    v43 = v44;
  }

  else
  {
    v43 = v40;
  }

  v160 = v13;
  v161 = v18;
  v159 = (v13 >> 2) & 1;
  v163 = v14;
  v164 = a4;
  if ((a5 & 0x10000) == 0)
  {
    goto LABEL_112;
  }

  if (*a1 != 1685287992)
  {
LABEL_255:
    v152 = __si_assert_copy_extra_332();
    v153 = v152;
    v154 = "";
    if (v152)
    {
      v154 = v152;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 470, v154);
LABEL_261:
    free(v153);
    goto LABEL_238;
  }

  if ((*(a1 + 804) & 0x14) == 0)
  {
LABEL_112:
    if (v43 >= v18)
    {
      goto LABEL_227;
    }

    v62 = 0;
    v63 = a4 + 4;
    v64 = v43;
    v65 = 0;
    v167 = a1;
    while (1)
    {
      if (a4 && !*(a4 + 4 * v65))
      {
        goto LABEL_227;
      }

      v68 = v64 + 1;
      v69 = v14 + v64;
      v70 = *(v14 + v64);
      if (*(v14 + v64) < 0)
      {
        if (v70 > 0xBF)
        {
          if (v70 > 0xDF)
          {
            if (v70 > 0xEF)
            {
              v72 = *(v162 + v68);
              v68 = v64 + 5;
            }

            else
            {
              v72 = ((v70 & 0xF) << 24) | (*(v162 + v68) << 16) | (v69[2] << 8) | v69[3];
              v68 = v64 + 4;
            }
          }

          else
          {
            v72 = ((v70 & 0x1F) << 16) | (*(v162 + v68) << 8) | v69[2];
            v68 = v64 + 3;
          }
        }

        else
        {
          v72 = *(v162 + v68) | ((v70 & 0x3F) << 8);
          v68 = v64 + 2;
        }

        v71 = v72;
      }

      else
      {
        v71 = *(v14 + v64);
      }

      v74 = *a3;
      v174 = v68;
      if (!v71)
      {
        goto LABEL_227;
      }

      v75 = v71 + v62;
      if (!(v71 + v62))
      {
        v139 = __si_assert_copy_extra_2708(0);
        v140 = v139;
        v141 = "";
        if (v139)
        {
          v141 = v139;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.c", 1908, "field_id!=0", v141);
        free(v140);
        if (__valid_fs(-1))
        {
LABEL_238:
          v142 = 2989;
        }

        else
        {
          v142 = 3072;
        }

LABEL_240:
        *v142 = -559038737;
        abort();
      }

      v62 += v71;
      LOBYTE(v172) = 0;
      field_tags_for_id_locked = db2_get_field_tags_for_id_locked(a1, v75, &v172);
      if (v172)
      {
        goto LABEL_227;
      }

      if (*a1 != 1685287992)
      {
        goto LABEL_255;
      }

      v78 = field_tags_for_id_locked;
      if ((*(a1 + 804) & 0x14) != 0 && !data_map_valid(*(a1 + 880)))
      {
        goto LABEL_227;
      }

      v79 = a3;
      v80 = v78;
      v81 = HIBYTE(v78);
      if (!v164)
      {
        v84 = v65;
        goto LABEL_146;
      }

      if (!*(v164 + 4 * v65))
      {
        goto LABEL_152;
      }

      v82 = *(v164 + 4 * v65);
      v83 = v65;
      while (1)
      {
        if (v82 == v75)
        {
          v84 = v83 + 1;
LABEL_146:
          v85 = v74;
          v86 = *(v74 + 2);
          v87 = *(v74 + 3);
          v88 = (v87 + 13);
          *(v74 + 3) = v88;
          if (v88 >= v86)
          {
            v89 = 2 * v86;
            do
            {
              v90 = v89;
              v89 *= 2;
            }

            while (v90 <= v88);
            if (a6)
            {
              v91 = (*(a6 + 16))();
            }

            else
            {
              v91 = malloc_type_realloc(v85, v90, 0x96D6F8AuLL);
            }

            v91[2] = v90;
            *v79 = v91;
            v85 = v91;
          }

          v92 = HIBYTE(v78);
          v93 = &v85[v87];
          *(v93 + 1) = v75 & 0xFFFFF;
          *(v93 + 1) = 0;
          v93[12] = 0;
          v94 = &v85[v87];
          v95 = (16 * HIBYTE(v78)) & 0x20 | (8 * ((HIBYTE(v78) >> 2) & 1)) & 0xFFFFFC7F | (((HIBYTE(v78) >> 3) & 1) << 8) & 0xFFFFFDFF | ((HIBYTE(v78) & 1) << 7) | (((HIBYTE(v78) >> 6) & 1) << 9);
          v96 = v95;
          if ((v78 & 0x4F00) != 0)
          {
            *(v94 + 1) = v95;
          }

          a4 = v164;
          if ((v160 & 4) != 0)
          {
            if ((v92 & 0x20) != 0)
            {
              v97 = 12288;
            }

            else
            {
              v97 = 4096;
            }

            v98 = v95 | v97;
            *(v94 + 1) = v98;
            if (v80 < 0)
            {
              v73 = v98 | 0x4000;
LABEL_165:
              *(v94 + 1) = v73;
            }
          }

          else
          {
            if ((v92 & 0x20) != 0)
            {
              *(v94 + 1) = v95 | 0x800;
              v96 = v95 | 0x800;
            }

            if (v80 < 0)
            {
              *(v94 + 1) = v96 | 0x1000;
              if ((v80 & 0xFFFF80FF) == 0xFFFF800E)
              {
                v73 = v96 | 0x5000;
                goto LABEL_165;
              }
            }
          }

          v66 = v80;
          a3 = v79;
          inflateDBFData(v167, v79, v87, v66, v81, &v174, v162, v161, v77, a5, a6);
          v67 = v174;
          v65 = v84;
          a1 = v167;
          v14 = v163;
          goto LABEL_116;
        }

        if (v82 > v75)
        {
          break;
        }

        v82 = *(v63 + 4 * v83);
        v65 = ++v83;
        if (!v82)
        {
          goto LABEL_152;
        }
      }

      v65 = v83;
LABEL_152:
      skipDBFData(v78, HIBYTE(v78), &v174, v162, v159);
      v67 = v174;
      if (v174 > v161)
      {
        si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld", "ldb.c", 1946, "*offset <= buffer_size", v174, v161);
        memset(&buf, 0, sizeof(buf));
        v143 = -2;
        v144 = *(a1 + 848);
        if (v144)
        {
          v145 = *(v144 + 44);
          if (v145 >= 0xFFFFFFFE)
          {
            v143 = -2;
          }

          else
          {
            v143 = v145;
          }
        }

        if (!fstatat(v143, "CrystalGlow.created", &buf, 0))
        {
          goto LABEL_238;
        }

        v142 = 2816;
        goto LABEL_240;
      }

      a4 = v164;
      a3 = v79;
      v14 = v163;
      if (!*(v164 + 4 * v65))
      {
        goto LABEL_227;
      }

LABEL_116:
      v64 = v67;
      if (v67 >= v161)
      {
        goto LABEL_227;
      }
    }
  }

  v173 = 0;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v50 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, a1, 0x40000000, add_explicit + 1);
  v171 = HIDWORD(v50);
  v172 = v50;
  v169 = v52;
  v170 = v51;
  v53 = threadData[9 * v50 + 1] + 320 * HIDWORD(v50);
  *(v53 + 216) = 0;
  v54 = *(v53 + 312);
  v55 = *(v53 + 224);
  if (v55)
  {
    v55(*(v53 + 288));
  }

  v168 = v172;
  if (_setjmp(v53))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.st_dev) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
    }

    *(v53 + 312) = v54;
    if (__THREAD_SLOT_KEY[0])
    {
      v56 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (v56)
      {
        goto LABEL_106;
      }
    }

    else
    {
      makeThreadId();
      v56 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (v56)
      {
LABEL_106:
        v57 = v56;
        if (v56 < 0x801)
        {
          goto LABEL_107;
        }
      }
    }

    makeThreadId();
    v57 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
LABEL_107:
    v58 = &threadData[9 * v57];
    v60 = *(v58 - 4);
    v59 = (v58 - 2);
    if (v60 > v169)
    {
      v61 = v57 - 1;
      do
      {
        CIOnThreadCleanUpPop(v61);
      }

      while (*v59 > v169);
    }

    dropThreadId(v168, 1, add_explicit + 1);
    CICleanUpReset(v168, v170);
    if (v173)
    {
      goto LABEL_227;
    }

    goto LABEL_228;
  }

  v157 = v54;
  v158 = add_explicit;
  if (v43 >= v161)
  {
    goto LABEL_224;
  }

  v99 = 0;
  v100 = a4 + 4;
  v101 = v43;
  v102 = 0;
  do
  {
    if (a4 && !*(a4 + 4 * v102))
    {
      break;
    }

    v106 = v101 + 1;
    v107 = v14 + v101;
    v108 = *(v14 + v101);
    if (*(v14 + v101) < 0)
    {
      if (v108 > 0xBF)
      {
        if (v108 > 0xDF)
        {
          if (v108 > 0xEF)
          {
            v110 = *(v162 + v106);
            v106 = v101 + 5;
          }

          else
          {
            v110 = ((v108 & 0xF) << 24) | (*(v162 + v106) << 16) | (v107[2] << 8) | v107[3];
            v106 = v101 + 4;
          }
        }

        else
        {
          v110 = ((v108 & 0x1F) << 16) | (*(v162 + v106) << 8) | v107[2];
          v106 = v101 + 3;
        }
      }

      else
      {
        v110 = *(v162 + v106) | ((v108 & 0x3F) << 8);
        v106 = v101 + 2;
      }

      v109 = v110;
    }

    else
    {
      v109 = *(v14 + v101);
    }

    v112 = *a3;
    v174 = v106;
    if (!v109)
    {
      break;
    }

    v113 = v109 + v99;
    if (!(v109 + v99))
    {
      v146 = __si_assert_copy_extra_2708(0);
      v147 = v146;
      v148 = "";
      if (v146)
      {
        v148 = v146;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.c", 1908, "field_id!=0", v148);
      free(v147);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v99 += v109;
    v176[0] = 0;
    v114 = db2_get_field_tags_for_id_locked(a1, v113, v176);
    if (v176[0])
    {
      break;
    }

    if (*a1 != 1685287992)
    {
      goto LABEL_255;
    }

    v116 = v114;
    if ((*(a1 + 804) & 0x14) != 0 && !data_map_valid(*(a1 + 880)))
    {
      break;
    }

    v117 = a3;
    v118 = v116;
    if (!v164)
    {
      v121 = a1;
      v122 = v102;
LABEL_202:
      v123 = v112;
      v124 = v112[2];
      v125 = v112[3];
      v126 = (v125 + 13);
      v112[3] = v126;
      if (v126 >= v124)
      {
        v127 = 2 * v124;
        do
        {
          v128 = v127;
          v127 *= 2;
        }

        while (v128 <= v126);
        if (a6)
        {
          v129 = (*(a6 + 16))();
        }

        else
        {
          v129 = malloc_type_realloc(v123, v128, 0x96D6F8AuLL);
        }

        v129[2] = v128;
        *v117 = v129;
        v123 = v129;
      }

      v130 = HIBYTE(v116);
      v131 = v123 + v125;
      *(v131 + 1) = v113 & 0xFFFFF;
      *(v131 + 1) = 0;
      v131[12] = 0;
      v132 = (16 * HIBYTE(v116)) & 0x20 | (8 * ((HIBYTE(v116) >> 2) & 1)) & 0xFFFFFC7F | (((HIBYTE(v116) >> 3) & 1) << 8) & 0xFFFFFDFF | ((HIBYTE(v116) & 1) << 7) | (((HIBYTE(v116) >> 6) & 1) << 9);
      v133 = v132;
      if ((v116 & 0x4F00) != 0)
      {
        *(v131 + 1) = v132;
      }

      a4 = v164;
      if ((v160 & 4) != 0)
      {
        if ((v130 & 0x20) != 0)
        {
          v134 = 12288;
        }

        else
        {
          v134 = 4096;
        }

        v135 = v132 | v134;
        *(v131 + 1) = v135;
        if ((v118 & 0x80000000) == 0)
        {
          goto LABEL_171;
        }

        v111 = v135 | 0x4000;
      }

      else
      {
        if ((v130 & 0x20) != 0)
        {
          *(v131 + 1) = v132 | 0x800;
          v133 = v132 | 0x800;
        }

        if ((v118 & 0x80000000) == 0)
        {
          goto LABEL_171;
        }

        *(v131 + 1) = v133 | 0x1000;
        if ((v118 & 0xFFFF80FF) != 0xFFFF800E)
        {
          goto LABEL_171;
        }

        v111 = v133 | 0x5000;
      }

      *(v131 + 1) = v111;
LABEL_171:
      v103 = BYTE1(v118);
      v104 = v118;
      a3 = v117;
      inflateDBFData(v121, v117, v125, v104, v103, &v174, v162, v161, v115, a5, a6);
      v105 = v174;
      v102 = v122;
      a1 = v121;
      v14 = v163;
      goto LABEL_172;
    }

    if (!*(v164 + 4 * v102))
    {
      goto LABEL_208;
    }

    v119 = *(v164 + 4 * v102);
    v120 = v102;
    while (1)
    {
      if (v119 == v113)
      {
        v121 = a1;
        v122 = v120 + 1;
        goto LABEL_202;
      }

      if (v119 > v113)
      {
        break;
      }

      v119 = *(v100 + 4 * v120);
      v102 = ++v120;
      if (!v119)
      {
        goto LABEL_208;
      }
    }

    v102 = v120;
LABEL_208:
    skipDBFData(v116, HIBYTE(v116), &v174, v162, v159);
    v105 = v174;
    if (v174 > v161)
    {
      si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld", "ldb.c", 1946, "*offset <= buffer_size", v174, v161);
      memset(&buf, 0, sizeof(buf));
      v149 = -2;
      v150 = *(a1 + 848);
      if (v150)
      {
        v151 = *(v150 + 44);
        if (v151 >= 0xFFFFFFFE)
        {
          v149 = -2;
        }

        else
        {
          v149 = v151;
        }
      }

      if (!fstatat(v149, "CrystalGlow.created", &buf, 0))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xB00] = -559038737;
      abort();
    }

    a4 = v164;
    a3 = v117;
    v14 = v163;
    if (!*(v164 + 4 * v102))
    {
      break;
    }

LABEL_172:
    v101 = v105;
  }

  while (v105 < v161);
LABEL_224:
  v173 = 1;
  v136 = threadData[9 * v168 + 1] + 320 * v171;
  *(v136 + 312) = v157;
  v137 = *(v136 + 232);
  if (v137)
  {
    v137(*(v136 + 288));
  }

  dropThreadId(v168, 0, v158 + 1);
  if (v173)
  {
LABEL_227:
    result = 0;
    *(*a3 + 10) |= 0x100u;
    return result;
  }

LABEL_228:
  free(*a3);
  *a3 = 0;
  return 9;
}

unsigned __int8 *getDBFForUniquedValue(uint64_t a1, unsigned int a2, int a3, void *a4)
{
  result = get_string_and_length_for_id(a1, a2, a3, 1);
  if (result)
  {
    v8 = *result;
    if (*result < 0)
    {
      if (v8 > 0xBF)
      {
        if (v8 > 0xDF)
        {
          if (v8 > 0xEF)
          {
            v8 = *(result + 1);
            v9 = 5;
          }

          else
          {
            v8 = ((v8 & 0xF) << 24) | (result[1] << 16) | (result[2] << 8) | result[3];
            v9 = 4;
          }
        }

        else
        {
          v8 = ((v8 & 0x1F) << 16) | (result[1] << 8) | result[2];
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
        v8 = result[1] | ((v8 & 0x3F) << 8);
      }
    }

    else
    {
      v9 = 1;
    }

    *a4 = v8;
    if (a2 == 4)
    {
      v10 = v9 + 1;
      v11 = &result[v9];
      v12 = result[v9];
      if (result[v9] < 0)
      {
        if (v12 > 0xBF)
        {
          if (v12 > 0xDF)
          {
            if (v12 > 0xEF)
            {
              v12 = *&result[v10];
              v10 = v9 + 5;
            }

            else
            {
              v12 = ((v12 & 0xF) << 24) | (result[v10] << 16) | (v11[2] << 8) | v11[3];
              v10 = v9 + 4;
            }
          }

          else
          {
            v12 = ((v12 & 0x1F) << 16) | (result[v10] << 8) | v11[2];
            v10 = v9 + 3;
          }
        }

        else
        {
          v13 = result[v10] | ((v12 & 0x3F) << 8);
          v10 = v9 + 2;
          v12 = v13;
        }
      }

      if (!v12)
      {
        v14 = __si_assert_copy_extra_2708(*(a1 + 848));
        v15 = v14;
        v16 = "";
        if (v14)
        {
          v16 = v14;
        }

        si_analytics_log_2752("%s:%u: failure log '%s' %s Unexpected field 0 at %ld, dst->flags:0x%lx, dst->name:%s", "ldb.c", 369, "field", v16, v10, *(a1 + 4), (a1 + 324));
        free(v15);
        return 0;
      }
    }
  }

  return result;
}

uint64_t find_slot_for_oid_and_type(uint64_t a1, uint64_t a2, int64_t a3, unsigned int a4, unint64_t *a5, unint64_t *a6, int a7)
{
  v14 = *(a1 + 928);
  pthread_rwlock_wrlock((v14 + 8));
  v15 = *(v14 + 220);
  v73 = a6;
  if (v15 < 1)
  {
LABEL_9:
    v19 = 0;
    ++*(v14 + 244);
  }

  else
  {
    v16 = v14 + 272;
    v17 = (v14 + 252);
    while (*v16 != a2 || !*v17)
    {
      ++v17;
      v16 += 48;
      if (!--v15)
      {
        goto LABEL_9;
      }
    }

    v18 = *(v16 + 32) - a4;
    if (v18)
    {
      if (v18 <= 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v16 + 24) - a3 <= 0)
    {
LABEL_8:
      ++*(v14 + 236);
      v19 = *(v16 + 40);
      goto LABEL_10;
    }

    v19 = 0;
    ++*(v14 + 240);
  }

LABEL_10:
  pthread_rwlock_unlock((v14 + 8));
  v20 = (a2 + 20);
  v21 = a2 + 20 + v19;
  v22 = *(a2 + 8);
  v23 = *(v21 + 4);
  if ((*(v21 + 4) & 0x80) != 0)
  {
    if (v23 > 0xBF)
    {
      if (v23 > 0xDF)
      {
        if (v23 > 0xEF)
        {
          if (v23 > 0xF7)
          {
            if (v23 > 0xFB)
            {
              if (v23 > 0xFD)
              {
                if (v23 == 255)
                {
                  v23 = *(v21 + 5);
                  v24 = 9;
                }

                else
                {
                  v23 = (*(v21 + 5) << 48) | (*(v21 + 6) << 40) | (*(v21 + 7) << 32) | (*(v21 + 8) << 24) | (*(v21 + 9) << 16) | (*(v21 + 10) << 8) | *(v21 + 11);
                  v24 = 8;
                }
              }

              else
              {
                v23 = ((v23 & 1) << 48) | (*(v21 + 5) << 40) | (*(v21 + 6) << 32) | (*(v21 + 7) << 24) | (*(v21 + 8) << 16) | (*(v21 + 9) << 8) | *(v21 + 10);
                v24 = 7;
              }
            }

            else
            {
              v23 = ((v23 & 3) << 40) | (*(v21 + 5) << 32) | (*(v21 + 6) << 24) | (*(v21 + 7) << 16) | (*(v21 + 8) << 8) | *(v21 + 9);
              v24 = 6;
            }
          }

          else
          {
            v23 = ((v23 & 7) << 32) | (*(v21 + 5) << 24) | (*(v21 + 6) << 16) | (*(v21 + 7) << 8) | *(v21 + 8);
            v24 = 5;
          }
        }

        else
        {
          v23 = ((v23 & 0xF) << 24) | (*(v21 + 5) << 16) | (*(v21 + 6) << 8) | *(v21 + 7);
          v24 = 4;
        }
      }

      else
      {
        v23 = ((v23 & 0x1F) << 16) | (*(v21 + 5) << 8) | *(v21 + 6);
        v24 = 3;
      }
    }

    else
    {
      v24 = 2;
      v23 = *(v21 + 5) | ((v23 & 0x3F) << 8);
    }
  }

  else
  {
    v24 = 1;
  }

  v25 = (v21 + 4 + v24);
  v26 = *v25;
  if (*v25 < 0)
  {
    if (v26 >= 0xC0)
    {
      if (v26 >= 0xE0)
      {
        goto LABEL_182;
      }

      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    v26 = v25[v27];
  }

  v28 = *(a1 + 804);
  v29 = v28 & (v26 >> 5) & 1;
  if (v19 && v29 > a4)
  {
    v23 = *(a2 + 24);
    if (*(a2 + 24) < 0)
    {
      v31 = *(a2 + 24);
      if (v31 > 0xBF)
      {
        if (v31 > 0xDF)
        {
          if (v31 > 0xEF)
          {
            if (v31 > 0xF7)
            {
              if (v31 > 0xFB)
              {
                if (v31 > 0xFD)
                {
                  if (v31 == 255)
                  {
                    v23 = *(a2 + 25);
                    v30 = 9;
                  }

                  else
                  {
                    v23 = (*(a2 + 25) << 48) | (*(a2 + 26) << 40) | (*(a2 + 27) << 32) | (*(a2 + 28) << 24) | (*(a2 + 29) << 16) | (*(a2 + 30) << 8) | *(a2 + 31);
                    v30 = 8;
                  }
                }

                else
                {
                  v23 = ((v23 & 1) << 48) | (*(a2 + 25) << 40) | (*(a2 + 26) << 32) | (*(a2 + 27) << 24) | (*(a2 + 28) << 16) | (*(a2 + 29) << 8) | *(a2 + 30);
                  v30 = 7;
                }
              }

              else
              {
                v23 = ((v23 & 3) << 40) | (*(a2 + 25) << 32) | (*(a2 + 26) << 24) | (*(a2 + 27) << 16) | (*(a2 + 28) << 8) | *(a2 + 29);
                v30 = 6;
              }
            }

            else
            {
              v23 = ((v23 & 7) << 32) | (*(a2 + 25) << 24) | (*(a2 + 26) << 16) | (*(a2 + 27) << 8) | *(a2 + 28);
              v30 = 5;
            }
          }

          else
          {
            v23 = ((v23 & 0xF) << 24) | (*(a2 + 25) << 16) | (*(a2 + 26) << 8) | *(a2 + 27);
            v30 = 4;
          }
        }

        else
        {
          v23 = ((v23 & 0x1F) << 16) | (*(a2 + 25) << 8) | *(a2 + 26);
          v30 = 3;
        }
      }

      else
      {
        v30 = 2;
        v23 = *(a2 + 25) | ((v23 & 0x3F) << 8);
      }
    }

    else
    {
      v30 = 1;
    }

    v32 = (a2 + 24 + v30);
    v33 = *v32;
    if (*v32 < 0)
    {
      if (v33 >= 0xC0)
      {
        if (v33 >= 0xE0)
        {
LABEL_129:
          v55 = __si_assert_copy_extra_3233(0, -1);
          v56 = v55;
          v57 = "";
          if (v55)
          {
            v57 = v55;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v57);
          free(v56);
          if (__valid_fs(-1))
          {
            v58 = 2989;
          }

          else
          {
            v58 = 3072;
          }

          *v58 = -559038737;
          abort();
        }

        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      v33 = v32[v34];
    }

    v29 = v28 & (v33 >> 5) & 1;
    v21 = a2 + 20;
  }

  v35 = a5;
  v36 = (a2 + v22);
  if (v21 >= a2 + v22)
  {
    i = 0;
    *v35 = v21;
  }

  else
  {
    for (i = 0; ; i = v40)
    {
      v40 = v21;
      if (v29 >= a4 && (v29 != a4 || v23 >= a3))
      {
        break;
      }

      v21 += (*v21 + 4);
      if (v21 >= v36)
      {
        i = v40;
        if (v21 <= v36)
        {
          goto LABEL_93;
        }

LABEL_115:
        if (__valid_fs(-1))
        {
          v51 = __si_assert_copy_extra_3233(0, -1);
          v52 = v51;
          v53 = "";
          if (v51)
          {
            v53 = v51;
          }

          si_analytics_log_2752("%s:%u: failed assertion '%s' %s dbo ends past end of page ([%p, %p] > [%p, %p])", "sdb2.c", 4992, "dbo<=end", v53, i, v21, v20, v36);
          free(v52);
          MEMORY[0xB00] = -559038737;
          abort();
        }

LABEL_186:
        MEMORY[0xC00] = -559038737;
        abort();
      }

      v23 = *(v21 + 4);
      if (*(v21 + 4) < 0)
      {
        v42 = *(v21 + 4);
        if (v42 > 0xBF)
        {
          if (v42 > 0xDF)
          {
            if (v42 > 0xEF)
            {
              if (v42 > 0xF7)
              {
                if (v42 > 0xFB)
                {
                  if (v42 > 0xFD)
                  {
                    if (v42 == 255)
                    {
                      v23 = *(v21 + 5);
                      v41 = 9;
                    }

                    else
                    {
                      v23 = (*(v21 + 5) << 48) | (*(v21 + 6) << 40) | (*(v21 + 7) << 32) | (*(v21 + 8) << 24) | (*(v21 + 9) << 16) | (*(v21 + 10) << 8) | *(v21 + 11);
                      v41 = 8;
                    }
                  }

                  else
                  {
                    v23 = ((v23 & 1) << 48) | (*(v21 + 5) << 40) | (*(v21 + 6) << 32) | (*(v21 + 7) << 24) | (*(v21 + 8) << 16) | (*(v21 + 9) << 8) | *(v21 + 10);
                    v41 = 7;
                  }
                }

                else
                {
                  v23 = ((v23 & 3) << 40) | (*(v21 + 5) << 32) | (*(v21 + 6) << 24) | (*(v21 + 7) << 16) | (*(v21 + 8) << 8) | *(v21 + 9);
                  v41 = 6;
                }
              }

              else
              {
                v23 = ((v23 & 7) << 32) | (*(v21 + 5) << 24) | (*(v21 + 6) << 16) | (*(v21 + 7) << 8) | *(v21 + 8);
                v41 = 5;
              }
            }

            else
            {
              v23 = ((v23 & 0xF) << 24) | (*(v21 + 5) << 16) | (*(v21 + 6) << 8) | *(v21 + 7);
              v41 = 4;
            }
          }

          else
          {
            v23 = ((v23 & 0x1F) << 16) | (*(v21 + 5) << 8) | *(v21 + 6);
            v41 = 3;
          }
        }

        else
        {
          v41 = 2;
          v23 = *(v21 + 5) | ((v23 & 0x3F) << 8);
        }
      }

      else
      {
        v41 = 1;
      }

      v43 = (v21 + 4 + v41);
      v39 = *v43;
      if (*v43 < 0)
      {
        if (v39 < 0xC0)
        {
          v38 = 1;
        }

        else
        {
          if (v39 >= 0xE0)
          {
            goto LABEL_129;
          }

          v38 = 2;
        }

        v39 = v43[v38];
      }

      v29 = v28 & (v39 >> 5) & 1;
    }

    if (v21 > v36)
    {
      goto LABEL_115;
    }

LABEL_93:
    *v35 = v21;
    if (i)
    {
      set_offset_hint(a1, a2, i);
      v44 = 0;
      if (a7 != 2)
      {
        goto LABEL_100;
      }

      goto LABEL_97;
    }
  }

  v44 = 1;
  if (a7 != 2)
  {
    goto LABEL_100;
  }

LABEL_97:
  if (v21 < v36 && v23 == a3)
  {
    return 17;
  }

LABEL_100:
  v47 = v21 < v36 && v23 == a3;
  if (a7 == 1 && !v47)
  {
    return 2;
  }

  if (!v73)
  {
    return 0;
  }

  if (v44)
  {
    v48 = *(a2 + 8);
    if (v48 >= 21)
    {
      v49 = *(a2 + 24);
      if (*(a2 + 24) < 0)
      {
        v54 = *(a2 + 24);
        if (v54 > 0xBF)
        {
          if (v54 > 0xDF)
          {
            if (v54 > 0xEF)
            {
              if (v54 > 0xF7)
              {
                if (v54 > 0xFB)
                {
                  if (v54 > 0xFD)
                  {
                    if (v54 == 255)
                    {
                      v49 = *(a2 + 25);
                      v50 = 9;
                    }

                    else
                    {
                      v49 = (*(a2 + 25) << 48) | (*(a2 + 26) << 40) | (*(a2 + 27) << 32) | (*(a2 + 28) << 24) | (*(a2 + 29) << 16) | (*(a2 + 30) << 8) | *(a2 + 31);
                      v50 = 8;
                    }
                  }

                  else
                  {
                    v49 = ((v49 & 1) << 48) | (*(a2 + 25) << 40) | (*(a2 + 26) << 32) | (*(a2 + 27) << 24) | (*(a2 + 28) << 16) | (*(a2 + 29) << 8) | *(a2 + 30);
                    v50 = 7;
                  }
                }

                else
                {
                  v49 = ((v49 & 3) << 40) | (*(a2 + 25) << 32) | (*(a2 + 26) << 24) | (*(a2 + 27) << 16) | (*(a2 + 28) << 8) | *(a2 + 29);
                  v50 = 6;
                }
              }

              else
              {
                v49 = ((v49 & 7) << 32) | (*(a2 + 25) << 24) | (*(a2 + 26) << 16) | (*(a2 + 27) << 8) | *(a2 + 28);
                v50 = 5;
              }
            }

            else
            {
              v49 = ((v49 & 0xF) << 24) | (*(a2 + 25) << 16) | (*(a2 + 26) << 8) | *(a2 + 27);
              v50 = 4;
            }
          }

          else
          {
            v49 = ((v49 & 0x1F) << 16) | (*(a2 + 25) << 8) | *(a2 + 26);
            v50 = 3;
          }
        }

        else
        {
          v50 = 2;
          v49 = *(a2 + 25) | ((v49 & 0x3F) << 8);
        }
      }

      else
      {
        v50 = 1;
      }

      v59 = (a2 + 24 + v50);
      v60 = *v59;
      if ((*v59 & 0x80000000) == 0)
      {
LABEL_148:
        v62 = 0;
        v63 = a2 + v48;
        while (1)
        {
          i = v62;
          v62 = v20;
          v64 = *(a1 + 804) & (v60 >> 5) & 1;
          if (v64 >= a4 && (v64 != a4 || v49 >= a3))
          {
            break;
          }

          v66 = (*v20 + 4);
          v20 = (v20 + v66);
          if (v62 + v66 >= v63)
          {
            i = v62;
            goto LABEL_180;
          }

          v49 = *(v20 + 4);
          if (v20[1] < 0)
          {
            v68 = *(v20 + 4);
            if (v68 > 0xBF)
            {
              if (v68 > 0xDF)
              {
                if (v68 > 0xEF)
                {
                  if (v68 > 0xF7)
                  {
                    if (v68 > 0xFB)
                    {
                      if (v68 > 0xFD)
                      {
                        if (v68 == 255)
                        {
                          v49 = *(v20 + 5);
                          v67 = 9;
                        }

                        else
                        {
                          v49 = (*(v20 + 5) << 48) | (*(v20 + 6) << 40) | (*(v20 + 7) << 32) | (*(v20 + 8) << 24) | (*(v20 + 9) << 16) | (*(v20 + 10) << 8) | *(v20 + 11);
                          v67 = 8;
                        }
                      }

                      else
                      {
                        v49 = ((v49 & 1) << 48) | (*(v20 + 5) << 40) | (*(v20 + 6) << 32) | (*(v20 + 7) << 24) | (*(v20 + 8) << 16) | (*(v20 + 9) << 8) | *(v20 + 10);
                        v67 = 7;
                      }
                    }

                    else
                    {
                      v49 = ((v49 & 3) << 40) | (*(v20 + 5) << 32) | (*(v20 + 6) << 24) | (*(v20 + 7) << 16) | (*(v20 + 8) << 8) | *(v20 + 9);
                      v67 = 6;
                    }
                  }

                  else
                  {
                    v49 = ((v49 & 7) << 32) | (*(v20 + 5) << 24) | (*(v20 + 6) << 16) | (*(v20 + 7) << 8) | *(v20 + 8);
                    v67 = 5;
                  }
                }

                else
                {
                  v49 = ((v49 & 0xF) << 24) | (*(v20 + 5) << 16) | (*(v20 + 6) << 8) | *(v20 + 7);
                  v67 = 4;
                }
              }

              else
              {
                v49 = ((v49 & 0x1F) << 16) | (*(v20 + 5) << 8) | *(v20 + 6);
                v67 = 3;
              }
            }

            else
            {
              v67 = 2;
              v49 = *(v20 + 5) | ((v49 & 0x3F) << 8);
            }
          }

          else
          {
            v67 = 1;
          }

          v69 = v20 + v67 + 4;
          v60 = *v69;
          if (*v69 < 0)
          {
            if (v60 < 0xC0)
            {
              v60 = v69[1];
            }

            else
            {
              if (v60 >= 0xE0)
              {
                goto LABEL_182;
              }

              v60 = v69[2];
            }
          }
        }

        if (!i)
        {
          goto LABEL_181;
        }

LABEL_180:
        set_offset_hint(a1, a2, i);
        goto LABEL_181;
      }

      if (v60 < 0xC0)
      {
        v61 = 1;
LABEL_147:
        v60 = v59[v61];
        goto LABEL_148;
      }

      if (v60 < 0xE0)
      {
        v61 = 2;
        goto LABEL_147;
      }

LABEL_182:
      v70 = __si_assert_copy_extra_3233(0, -1);
      v71 = v70;
      v72 = "";
      if (v70)
      {
        v72 = v70;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v72);
      free(v71);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      goto LABEL_186;
    }

    i = 0;
  }

LABEL_181:
  result = 0;
  *v73 = i;
  return result;
}

uint64_t page_find_oid_with_flags(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, unsigned int a5, void *a6, uint64_t a7, uint64_t a8)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v14 = 16;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 992);
  v16 = v15[1];
  if (!*&v16)
  {
    goto LABEL_20;
  }

  v17 = vcnt_s8(v16);
  v17.i16[0] = vaddlv_u8(v17);
  if (v17.u32[0] > 1uLL)
  {
    v18 = a4;
    if (*&v16 <= a4)
    {
      v18 = a4 % *&v16;
    }
  }

  else
  {
    v18 = (*&v16 - 1) & a4;
  }

  v19 = *(*v15 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_20:
    value_out = 0;
    result = _page_fetch_with_fd(a1, &value_out, a2, a3, a7, buf, 0xFFFFFFFFLL, 0);
    if (result)
    {
      return result;
    }

    v23 = *(value_out + 3);
    if ((v23 & 0xF0) != 0)
    {
      v27 = *__error();
      v28 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "page_find_oid_with_flags";
        v38 = 1024;
        v39 = 5913;
        v40 = 1024;
        v41 = a2;
        _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: page_find_oid: ERR: tried to read attr name table data! pgnum 0x%x\n", buf, 0x18u);
      }

      *__error() = v27;
      v29 = __si_assert_copy_extra_3233(0, -1);
      v30 = v29;
      v31 = "";
      if (v29)
      {
        v31 = v29;
      }

      __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5914, v31);
    }

    else
    {
      if ((v23 & 8) == 0)
      {
        *buf = 0;
        slot_for_oid_and_type = find_slot_for_oid_and_type(a1, value_out, a4, a5, buf, 0, 1);
        v25 = value_out;
        if (slot_for_oid_and_type)
        {
          v26 = slot_for_oid_and_type;
          page_release(a1, value_out, a2, v14, 0);
          return v26;
        }

        else
        {
          *a6 = *buf;
          if (a8)
          {
            result = 0;
            *(a8 + 8) = v14;
            *(a8 + 12) = a2;
            *a8 = v25;
          }

          else
          {
            page_release(a1, v25, a2, v14, 0);
            return 0;
          }
        }

        return result;
      }

      v32 = *__error();
      v33 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "page_find_oid_with_flags";
        v38 = 1024;
        v39 = 5919;
        v40 = 1024;
        v41 = a2;
        _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: page_find_oid: ERR: page is still compressed! pgnum 0x%x\n", buf, 0x18u);
      }

      *__error() = v32;
      v34 = __si_assert_copy_extra_3233(0, -1);
      v30 = v34;
      v35 = "";
      if (v34)
      {
        v35 = v34;
      }

      __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5920, v35);
    }

    free(v30);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == a4)
    {
      break;
    }

    if (v17.u32[0] > 1uLL)
    {
      if (v21 >= *&v16)
      {
        v21 %= *&v16;
      }
    }

    else
    {
      v21 &= *&v16 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_20;
    }

LABEL_13:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_20;
    }
  }

  if (v20[2] != a4)
  {
    goto LABEL_13;
  }

  if (*(v20 + 6) == 3)
  {
    result = 2;
  }

  else
  {
    result = 0;
    *a6 = v20[4];
  }

  if (a8)
  {
    *a8 = 0;
    *(a8 + 8) = 0;
  }

  return result;
}

uint64_t si_docIdRewriteCallback(uint64_t result, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = result;
    result = CFArrayGetCount(theArray);
    if (result >= 1)
    {
      v4 = result;
      v5 = 0;
      while (1)
      {
        v6 = *(v3 + 32);
        result = CFArrayGetValueAtIndex(theArray, v5);
        if (v6 >= *(result + 24))
        {
          v7 = *(result + 16);
          v8 = *v7;
          if (*v7 >= 1)
          {
            break;
          }
        }

LABEL_10:
        if (++v5 == v4)
        {
          return result;
        }
      }

      v9 = v7[1];
      while (1)
      {
        v10 = *v9;
        if (v6 > *v9 && v10 + *(v9 + 8) > v6)
        {
          break;
        }

        v9 += 32;
        if (!--v8)
        {
          goto LABEL_10;
        }
      }

      v11 = *(*(v9 + 16) + 4 * (v6 - v10));
      if (v6 != v10 || (v12 = *(result + 32)) == 0)
      {
        if (!v11)
        {
          v13 = -1;
          goto LABEL_18;
        }

        v12 = *(result + 32);
      }

      v13 = v12 + v11;
LABEL_18:
      *(v3 + 32) = v13;
    }
  }

  return result;
}

int *db_validate_obj(int *result)
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
      v9 = "db_validate_obj";
      v10 = 1024;
      v11 = 327;
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 327, v7);
    free(v6);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return result;
}

uint64_t commonHash(unsigned int a1, const unsigned __int8 *a2)
{
  v2 = -1759636613;
  if ((a1 & 0x80000000) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 + 3;
  }

  v4 = &a2[v3 & 0xFFFFFFFC];
  if (a1 + 3 >= 7)
  {
    v7 = -(v3 >> 2);
    v8 = -1789642873;
    v9 = 718793509;
    do
    {
      v8 = 5 * v8 + 2071795100;
      v9 = 5 * v9 + 1808688022;
      HIDWORD(v10) = v8 * *&v4[4 * v7];
      LODWORD(v10) = HIDWORD(v10);
      v11 = (v10 >> 21) * v9;
      HIDWORD(v10) = v2;
      LODWORD(v10) = v2;
      v2 = v11 ^ (5 * (v10 >> 19) + 1390208809);
    }

    while (!__CFADD__(v7++, 1));
    v6 = 5 * v8 + 2071795100;
    v5 = 5 * v9 + 1808688022;
  }

  else
  {
    v5 = 1107688271;
    v6 = 1713515327;
  }

  v13 = 0;
  if ((a1 & 3) > 1)
  {
    if ((a1 & 3) != 2)
    {
      v13 = v4[2] << 16;
    }

    v13 |= v4[1] << 8;
  }

  else if ((a1 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v14) = (v13 ^ *v4) * v6;
  LODWORD(v14) = HIDWORD(v14);
  v15 = (v14 >> 21) * v5;
  HIDWORD(v14) = v2;
  LODWORD(v14) = v2;
  v2 = v15 ^ (5 * (v14 >> 19) + 1390208809);
LABEL_17:
  v16 = -1028477387 * ((-2048144789 * (v2 ^ a1)) ^ ((-2048144789 * (v2 ^ a1)) >> 13));
  return v16 ^ HIWORD(v16);
}

uint64_t db_rwlock_wakeup(uint64_t result, char a2, char a3)
{
  v5 = result;
  v6 = result + 64;
  v7 = 6;
  while (1)
  {
    if ((v7 - 1) <= *(v5 + 192))
    {
      result = *(v5 + 160);
      if (result)
      {
        if ((a2 & 1) == 0)
        {
          *(result + 52) = 1;
          *(v5 + 160) = 0;
          *(v5 + 192) = 0;
          *(v5 + 212) = 0;

          return pthread_cond_signal(result);
        }

        return result;
      }
    }

    v8 = (a2 & 1) != 0 ? 1 : *(v5 + 212);
    v23 = 0uLL;
    v9 = (v6 + 16 * (v7 - 1));
    v10 = *v9;
    if (*v9)
    {
      break;
    }

LABEL_38:
    if (v7-- <= 1)
    {
      return result;
    }
  }

  while (1)
  {
    v11 = *(v10 + 48);
    if (v11 < 3)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 5 && ((a3 & 1) != 0 || *(v5 + 200)))
      {
        goto LABEL_20;
      }

      result = pthread_cond_signal(v10);
      v12 = *v9;
      if (*v9 != v9[1])
      {
        *v9 = *(v12 + 64);
        goto LABEL_25;
      }

      *v9 = 0;
      v9[1] = 0;
      if (v12)
      {
LABEL_25:
        *(v12 + 52) = 1;
        --*(v5 + 208);
      }

      ++*(v5 + 196);
      if (*(v10 + 48) == 5)
      {
        ++*(v5 + 200);
      }

      v8 = 1;
      goto LABEL_34;
    }

    if (*(v5 + 184))
    {
      if (!*(v10 + 56))
      {
        v19 = __si_assert_copy_extra_332();
        v20 = v19;
        v21 = "";
        if (v19)
        {
          v21 = v19;
        }

        __message_assert(v19, "sdb2_rwlock.c", 470, "waiter->threadid", v21);
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

      goto LABEL_20;
    }

    result = pthread_cond_signal(v10);
    v14 = *v9;
    if (*v9 != v9[1])
    {
      *v9 = *(v14 + 64);
LABEL_32:
      *(v14 + 52) = 1;
      --*(v5 + 208);
      goto LABEL_33;
    }

    *v9 = 0;
    v9[1] = 0;
    if (v14)
    {
      goto LABEL_32;
    }

LABEL_33:
    *(v5 + 184) = *(v10 + 56);
    v8 = 1;
    *(v5 + 212) = 1;
    a3 = 1;
LABEL_34:
    a2 = 1;
LABEL_35:
    v10 = *v9;
    if (!*v9)
    {
      if (v23)
      {
        *v9 = v23;
      }

      goto LABEL_38;
    }
  }

  if (*(v5 + 200) || *(v5 + 212) == 1)
  {
LABEL_20:
    if (v10 == v9[1])
    {
      v13 = 0;
      v9[1] = 0;
    }

    else
    {
      v13 = *(v10 + 64);
    }

    *v9 = v13;
    result = db_rwlock_waiter_list_enqueue_inner(&v23, v10);
    goto LABEL_35;
  }

  if ((v8 & 1) == 0)
  {
    pthread_cond_signal(v10);
    v16 = *v9;
    if (*v9 != v9[1])
    {
      v17 = *(v16 + 64);
      *v9 = v17;
      goto LABEL_44;
    }

    v17 = 0;
    result = 0;
    *v9 = 0;
    v9[1] = 0;
    if (v16)
    {
LABEL_44:
      *(v16 + 52) = 1;
      --*(v5 + 208);
      result = v17;
    }

    *(v5 + 184) = *(v10 + 56);
    v10 = result;
  }

  if (v23)
  {
    if (v10)
    {
      v18 = v9[1];
      *v9 = v23;
      *(v9[1] + 64) = v10;
      v9[1] = v18;
    }

    else
    {
      *v9 = v23;
    }
  }

  return result;
}

uint64_t _data_map32_rdlock(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1461))
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
      v7 = "_data_map32_rdlock";
      v8 = 1024;
      v9 = 300;
      v10 = 1024;
      v11 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: _data_map32_rdlock error %d", &v6, 0x18u);
    }

    *__error() = v3;
  }

  return lock;
}

void *internal_copy_field_ids(uint64_t a1, char *__s, void *a3, unint64_t a4, int a5)
{
  v60 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 804) & 0x14) != 0)
  {
    v9 = *(a1 + 880);
    v10 = strlen(__s);
    v11 = v10 + 1;
    if (a5)
    {
      locked = data_map_ids_get_locked(v9, __s, v11, a3, a4);
      v13 = locked != 0;
      v14 = locked + 1;
      if (locked)
      {
        v15 = v14 > a4;
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
LABEL_24:
        v17 = a3;
        goto LABEL_25;
      }

      v16 = locked + 1;
      v17 = a3;
      do
      {
        if (v17 == a3)
        {
          v18 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
        }

        else
        {
          v18 = malloc_type_realloc(v17, 4 * v14, 0x100004052888210uLL);
        }

        v17 = v18;
        locked = data_map_ids_get_locked(v9, __s, v10 + 1, v18, v16);
        v13 = locked != 0;
        if (!locked)
        {
          break;
        }

        v16 = locked + 1;
        v19 = v14 >= v16;
        v14 = v16;
      }

      while (!v19);
    }

    else
    {
      locked = data_map_ids_get(v9, __s, v11, a3, a4);
      v13 = locked != 0;
      v27 = locked + 1;
      if (locked)
      {
        v28 = v27 > a4;
      }

      else
      {
        v28 = 0;
      }

      if (!v28)
      {
        goto LABEL_24;
      }

      v29 = locked + 1;
      v17 = a3;
      do
      {
        if (v17 == a3)
        {
          v30 = malloc_type_malloc(4 * v27, 0x100004052888210uLL);
        }

        else
        {
          v30 = malloc_type_realloc(v17, 4 * v27, 0x100004052888210uLL);
        }

        v17 = v30;
        locked = data_map_ids_get(v9, __s, v10 + 1, v30, v29);
        v13 = locked != 0;
        if (!locked)
        {
          break;
        }

        v29 = locked + 1;
        v19 = v27 >= v29;
        v27 = v29;
      }

      while (!v19);
    }

LABEL_25:
    if (v13)
    {
      *(v17 + locked) = 0;
      return v17;
    }

    return 0;
  }

  memset(__src, 0, sizeof(__src));
  v20 = *(*(a1 + 880) + 16);
  v21 = strlen(__s);
  v22 = commonHash(v21, __s);
  if ((a5 & 1) == 0)
  {
    pthread_rwlock_rdlock(v20);
  }

  v23 = v20 + 208 + 16 * (v22 & 0x7F);
  v24 = *(v23 + 8);
  v56 = a3;
  v54 = a4;
  v55 = a5;
  if (v24 < 0)
  {
    v57 = v22 & 0x7FFFFFFF;
    if ((v24 & 0x7FFFFFFF) == (v22 & 0x7FFFFFFF) && (v31 = *v23, !strcmp(__s, *v23)))
    {
      *&__src[0] = &v31[-*(v20 + 200) - 4];
      v26 = __src;
      v33 = 1;
      v32 = 8;
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v26 = 0;
    }

    v34 = *(v20 + 2272);
    v35 = v57 % v34;
    v36 = v57 % v34;
    while (1)
    {
      v38 = *(v20 + 2264);
      v39 = v38 + 16 * v36;
      v40 = *(v39 + 8);
      if (v40 < 0)
      {
        break;
      }

LABEL_52:
      if (v36 >= v34)
      {
        goto LABEL_75;
      }

      if ((*(v39 + 8) & 0x80000000) == 0)
      {
        v25 = v33;
        goto LABEL_61;
      }

      if (v32 <= v33)
      {
        if (v32)
        {
          v32 *= 2;
        }

        else
        {
          v32 = 1;
        }

        if (v26 == __src)
        {
          v42 = malloc_type_malloc(8 * v32, 0x80040B8603338uLL);
          memcpy(v42, __src, 8 * v33);
          v26 = v42;
        }

        else
        {
          v26 = malloc_type_realloc(v26, 8 * v32, 0x80040B8603338uLL);
        }
      }

      v37 = *v39 - *(v20 + 200) - 4;
      v25 = v33 + 1;
      *(v26 + v33) = v37;
      v34 = *(v20 + 2272);
      v36 = (v36 + 1) % v34;
      ++v33;
      if (v35 == v36)
      {
        goto LABEL_61;
      }
    }

    ptr = v26;
    v41 = v36;
    do
    {
      if ((v40 & 0x7FFFFFFF) == v57 && !strcmp(__s, *v39))
      {
        v36 = v41;
        v26 = ptr;
        goto LABEL_52;
      }

      if (v41 + 1 < v34)
      {
        ++v41;
      }

      else
      {
        v41 = v41 + 1 - v34;
      }

      if (v41 == v36)
      {
        break;
      }

      v39 = v38 + 16 * v41;
      v40 = *(v39 + 8);
    }

    while (v40 < 0);
    v25 = v33;
    v26 = ptr;
    if (v41 >= v34)
    {
LABEL_75:
      v50 = __si_assert_copy_extra_332();
      v51 = v50;
      v52 = "";
      if (v50)
      {
        v52 = v50;
      }

      __message_assert(v50, "db-common.c", 248, "slot < table->size", v52);
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
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

LABEL_61:
  if ((v55 & 1) == 0)
  {
    v43 = v26;
    pthread_rwlock_unlock(v20);
    v26 = v43;
  }

  v17 = v56;
  if (!v26)
  {
    return 0;
  }

  if (v25 + 1 > v54)
  {
    v44 = v26;
    v17 = malloc_type_malloc(4 * (v25 + 1), 0x100004052888210uLL);
    v26 = v44;
  }

  if (v25)
  {
    v45 = v26;
    v46 = v17;
    v47 = v25;
    do
    {
      v48 = *v45++;
      *v46++ = *v48;
      --v47;
    }

    while (v47);
  }

  *(v17 + v25) = 0;
  if (v26 != __src)
  {
    free(v26);
  }

  return v17;
}

uint64_t _data_map32_unlock(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1461))
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
      v7 = "_data_map32_unlock";
      v8 = 1024;
      v9 = 310;
      v10 = 1024;
      v11 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: _data_map32_unlock error %d", &v6, 0x18u);
    }

    *__error() = v3;
  }

  return v1;
}

uint64_t data_map32_ids_get_locked_with_hash(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const void *a5, size_t a6)
{
  v110 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 224);
  v56 = *(a2 + 1392);
  v68 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v14 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a2, 0, add_explicit + 1);
  v66 = HIDWORD(v14);
  v67 = v14;
  v65 = __PAIR64__(v15, v16);
  v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
  v18 = *(v17 + 312);
  v19 = *(v17 + 224);
  if (v19)
  {
    v19(*(v17 + 288));
  }

  v64 = v67;
  v63 = v66;
  v62 = v65;
  if (_setjmp(v17))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v84) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v84, 2u);
    }

    *(v17 + 312) = v18;
    CIOnThreadCleanUpReset(v62);
    dropThreadId(v64, 1, add_explicit + 1);
    CICleanUpReset(v64, HIDWORD(v62));
    v20 = 0;
    goto LABEL_41;
  }

  v55 = v18;
  v57 = a1;
  v58 = a6;
  v21 = 0;
  v22 = a3 % v56;
  v23 = a3 % v56;
  v54 = v12;
  v53 = v12 + a6;
  while (1)
  {
    v24 = *(a2 + 1384);
    v25 = *(v24 + 4 * v23);
    if (!v25)
    {
      break;
    }

    v26 = v23;
    if (*(a2 + 220) <= v25)
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
      v84 = 0u;
      v85 = 0u;
      v35 = *__error();
      v36 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        log = v36;
        v40 = v26;
        v41 = *(a2 + 220);
        v42 = fd_name(*(a2 + 1272), &v84, 0x100uLL);
        *__s = 136316418;
        *&__s[4] = "_data_map32_get_offset_entry";
        *&__s[12] = 1024;
        *&__s[14] = 422;
        *&__s[18] = 1024;
        *&__s[20] = v25;
        *&__s[24] = 1024;
        *&__s[26] = v41;
        v26 = v40;
        *&__s[30] = 2048;
        *&__s[32] = a2;
        *&__s[40] = 2080;
        *&__s[42] = v42;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
      }

      *__error() = v35;
      goto LABEL_32;
    }

    v51 = v23;
    v27 = *(*(a2 + 1352) + 4 * v25);
    if (v27 != 1)
    {
      v60 = 0;
      v61 = 0;
      v69 = 0;
      v28 = *(a2 + 1328);
      if (v28 <= v27)
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
        v84 = 0u;
        v85 = 0u;
        v37 = *__error();
        v38 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v43 = *(a2 + 1328);
          v44 = fd_name(*(a2 + 1272), &v84, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map32_get_data_entry";
          *&__s[12] = 1024;
          *&__s[14] = 446;
          *&__s[18] = 2048;
          *&__s[20] = v27;
          *&__s[28] = 2048;
          *&__s[30] = v43;
          *&__s[38] = 2048;
          *&__s[40] = a2;
          *&__s[48] = 2080;
          *&__s[50] = v44;
          _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx 0x%lx %p %s", __s, 0x3Au);
        }

        *__error() = v37;
      }

      else
      {
        data_entry_restore_32(*(a2 + 1320), v27, v28, &v60, &v69);
        v29 = v69;
        if (v69 == 1)
        {
          v52 = v22;
          v59 = add_explicit;
          v109 = 0;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v30 = 5;
          v31 = v27;
          memset(__s, 0, sizeof(__s));
          do
          {
            if (v31 >= *(a2 + 1328))
            {
              break;
            }

            v32 = strlen(__s);
            sprintf(&__s[v32], "%d ", *(*(a2 + 1320) + v31++));
            --v30;
          }

          while (v30);
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
          v84 = 0u;
          v85 = 0u;
          v33 = *__error();
          v34 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v45 = fd_name(*(a2 + 1272), &v84, 0x100uLL);
            v46 = *(a2 + 1328);
            *buf = 136316674;
            v71 = "_data_map32_get_data_entry";
            v72 = 1024;
            v73 = 442;
            v74 = 2080;
            v75 = v45;
            v76 = 2048;
            v77 = v27;
            v78 = 2048;
            v79 = v46;
            v80 = 2048;
            v81 = v60;
            v82 = 2080;
            v83 = __s;
            _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", buf, 0x44u);
          }

          *__error() = v33;
          add_explicit = v59;
          v22 = v52;
        }

        if ((v29 & 1) == 0)
        {
          v26 = v51;
          if (v53 == v60 && !memcmp(a5, (v61 + v54), v58))
          {
            if (v21 < a4)
            {
              *(v57 + 4 * v21) = *(v24 + 4 * v51);
            }

            v21 = (v21 + 1);
          }

          goto LABEL_32;
        }
      }
    }

    v26 = v51;
LABEL_32:
    if (v26 + 1 == v56)
    {
      v39 = 0;
    }

    else
    {
      v39 = v26 + 1;
    }

    v23 = v39;
    v20 = v21;
    if (v39 == v22)
    {
      goto LABEL_38;
    }
  }

  v20 = v21;
LABEL_38:
  v68 = 1;
  v47 = threadData[9 * v64 + 1] + 320 * v63;
  *(v47 + 312) = v55;
  v48 = *(v47 + 232);
  if (v48)
  {
    v48(*(v47 + 288));
  }

  dropThreadId(v64, 0, add_explicit + 1);
LABEL_41:
  result = v20;
  if ((v68 & 1) == 0)
  {
    result = 0;
    *(a2 + 1464) = 22;
  }

  return result;
}

uint64_t db_rwlock_unlock_unknown(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  v3 = *(a1 + 184);
  if (v3 == pthread_self() || *(a1 + 184) && exc_pthread_key && ((v4 = pthread_getspecific(exc_pthread_key), v4 == -1) || v4 == *(a1 + 184)))
  {
    *(a1 + 204) = 0;
    v6 = *(a1 + 176);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    v7 = *(a1 + 196) != 0;
    *(a1 + 212) = 0;
    db_rwlock_wakeup(a1, v7, 0);
    pthread_mutex_unlock(a1);
    if (v6)
    {
      pthread_override_qos_class_end_np(v6);
    }
  }

  else
  {
    v5 = *(a1 + 196) - 1;
    *(a1 + 196) = v5;
    if (!v5)
    {
      db_rwlock_wakeup(a1, 0, 0);
    }

    pthread_mutex_unlock(a1);
  }

  return v2;
}

uint64_t cStringHashCallback(const char *a1)
{
  v1 = a1;
  v2 = -1640531527;
  v3 = strlen(a1);
  if (v3 < 0xC)
  {
    v6 = -1640531527;
    v5 = -1640531527;
    v4 = v3;
  }

  else
  {
    v4 = v3;
    v5 = -1640531527;
    v6 = -1640531527;
    do
    {
      v7 = *(v1 + 1) + v5;
      v8 = *(v1 + 2) + v2;
      v9 = (*v1 + v6 - (v7 + v8)) ^ (v8 >> 13);
      v10 = (v7 - v8 - v9) ^ (v9 << 8);
      v11 = (v8 - v9 - v10) ^ (v10 >> 13);
      v12 = (v9 - v10 - v11) ^ (v11 >> 12);
      v13 = (v10 - v11 - v12) ^ (v12 << 16);
      v14 = (v11 - v12 - v13) ^ (v13 >> 5);
      v6 = (v12 - v13 - v14) ^ (v14 >> 3);
      v5 = (v13 - v14 - v6) ^ (v6 << 10);
      v2 = (v14 - v6 - v5) ^ (v5 >> 15);
      v1 += 12;
      v4 -= 12;
    }

    while (v4 > 0xB);
  }

  v15 = v2 + v3;
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 != 9)
      {
        if (v4 != 10)
        {
          v15 += *(v1 + 10) << 24;
        }

        v15 += *(v1 + 9) << 16;
      }

      v15 += *(v1 + 8) << 8;
    }

    else
    {
      if (v4 == 6)
      {
LABEL_22:
        v5 += *(v1 + 5) << 8;
        goto LABEL_23;
      }

      if (v4 == 7)
      {
LABEL_21:
        v5 += *(v1 + 6) << 16;
        goto LABEL_22;
      }
    }

    v5 += *(v1 + 7) << 24;
    goto LABEL_21;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
LABEL_25:
      v6 += *(v1 + 2) << 16;
      goto LABEL_26;
    }

    if (v4 == 4)
    {
LABEL_24:
      v6 += *(v1 + 3) << 24;
      goto LABEL_25;
    }

LABEL_23:
    v5 += *(v1 + 4);
    goto LABEL_24;
  }

  if (v4 == 1)
  {
    goto LABEL_27;
  }

  if (v4 != 2)
  {
    goto LABEL_28;
  }

LABEL_26:
  v6 += *(v1 + 1) << 8;
LABEL_27:
  v6 += *v1;
LABEL_28:
  v16 = (v6 - v5 - v15) ^ (v15 >> 13);
  v17 = (v5 - v15 - v16) ^ (v16 << 8);
  v18 = (v15 - v16 - v17) ^ (v17 >> 13);
  v19 = (v16 - v17 - v18) ^ (v18 >> 12);
  v20 = (v17 - v18 - v19) ^ (v19 << 16);
  v21 = (v18 - v19 - v20) ^ (v20 >> 5);
  v22 = (v19 - v20 - v21) ^ (v21 >> 3);
  return (v21 - v22 - ((v20 - v21 - v22) ^ (v22 << 10))) ^ (((v20 - v21 - v22) ^ (v22 << 10)) >> 15);
}

uint64_t initQuery(void *a1, uint64_t a2)
{
  v209 = *MEMORY[0x1E69E9840];
  v205 = 0u;
  v206 = 0u;
  pushSkipCrashState();
  v4 = *(a2 + 336);
  if (v4)
  {
    CFRetain(*(a2 + 336));
  }

  a1[82] = v4;
  v5 = 0x1EBF46000;
  if (*(a2 + 273) == 1 && ((*(a2 + 272) & 1) != 0 || (v6 = *(a2 + 280)) != 0 && CFArrayGetCount(v6) > 0 || *(a2 + 288)) && *(a2 + 272) == 1)
  {
    v7 = *(a2 + 312);
    v208 = 0u;
    memset(v207, 0, sizeof(v207));
    configureContext(v207, *(a2 + 112), 0, 0, "x", 0, 0, *(a2 + 336), *(a2 + 280));
    if (!LOWORD(v207[3]) || !processContext(v7, v207))
    {
      v50 = *__error();
      v51 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = *(a2 + 112);
        if (*(a2 + 272))
        {
          v53 = "MDS";
        }

        else
        {
          v53 = "CoreSpotlight";
        }

        LODWORD(v207[0]) = 134218498;
        *(v207 + 4) = v52;
        WORD2(v207[1]) = 2080;
        *(&v207[1] + 6) = "x";
        HIWORD(v207[2]) = 2080;
        v207[3] = v53;
        v54 = "[qid=%lld][%s][POMMES][%s] isValidPommesQuery failed";
        v55 = v51;
        v56 = OS_LOG_TYPE_ERROR;
        v57 = 32;
        goto LABEL_173;
      }

      goto LABEL_164;
    }
  }

  *(a1 + 696) = *(a2 + 296);
  *(a1 + 38) = *(a2 + 112);
  v199 = *(a2 + 128);
  *(a1 + 208) = (v199 & 0x40) != 0;
  v8 = *(a2 + 184);
  if (v8 < 0.0 || v8 > 0.0)
  {
    *(a1 + 45) = v8;
  }

  else
  {
    *(a2 + 184) = CFAbsoluteTimeGetCurrent();
  }

  *(a1 + 46) = CFAbsoluteTimeGetCurrent();
  a1[48] = 0;
  v10 = *(a2 + 8);
  v11 = MEMORY[0x1E695E480];
  if (v10)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v10);
  }

  else
  {
    Copy = 0;
  }

  a1[1] = Copy;
  v13 = *(a2 + 176);
  if (v13)
  {
    CFRetain(*(a2 + 176));
  }

  a1[30] = v13;
  v14 = *(a2 + 104);
  if (v14)
  {
    CFRetain(*(a2 + 104));
  }

  *a1 = v14;
  v15 = *(a2 + 192);
  if (v15)
  {
    CFRetain(*(a2 + 192));
  }

  a1[4] = v15;
  *(a1 + 760) = *(a2 + 354);
  v16 = *(a2 + 32);
  if (v16)
  {
    MutableCopy = RLEOIDArrayCreateMutableCopy(*v11, v10, v16);
  }

  else
  {
    MutableCopy = 0;
  }

  a1[72] = MutableCopy;
  if (*a1)
  {
    v18 = *(*a1 + 168);
    v204 = 0;
    if (v18)
    {
      Value = CFDictionaryGetValue(v18, @"_showAllExtensions");
      if (Value)
      {
        v20 = Value;
        v21 = CFGetTypeID(Value);
        if (v21 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v20, kCFNumberIntType, &v204);
        }
      }
    }

    if (*a1)
    {
      v22 = *(*a1 + 176);
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v204 = 0;
  }

  if (*(a2 + 96))
  {
    Mutable = CFArrayCreateMutable(*v11, 0, MEMORY[0x1E695E9C0]);
    for (i = 0; CFArrayGetCount(*(a2 + 96)) > i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 96), i);
      v26 = ValueAtIndex;
      if (v204 && CFEqual(ValueAtIndex, @"kMDItemDisplayName"))
      {
        v26 = @"_kMDItemDisplayNameWithExtensionsSynth";
      }

      bzero(v207, 0x400uLL);
      CFStringGetCString(v26, v207, 1024, 0x8000100u);
      if (isEntitledForAttribute(v22, v207))
      {
        v27 = v26;
      }

      else
      {
        v27 = @"__DENIED__";
      }

      CFArrayAppendValue(Mutable, v27);
    }

    a1[2] = Mutable;
    v5 = 0x1EBF46000uLL;
    v11 = MEMORY[0x1E695E480];
  }

  v28 = *(a2 + 224);
  if (v28)
  {
    CFRetain(*(a2 + 224));
  }

  a1[3] = v28;
  v29 = *(a2 + 64);
  if (v29)
  {
    CFRetain(*(a2 + 64));
  }

  a1[5] = v29;
  v30 = *(a2 + 344);
  if (v30)
  {
    CFRetain(*(a2 + 344));
  }

  a1[94] = v30;
  if (query_needsWhatFieldsMatched_once != -1)
  {
    dispatch_once(&query_needsWhatFieldsMatched_once, &__block_literal_global_488);
  }

  v31 = a1[2];
  if (v31 && (Count = CFArrayGetCount(v31), Count >= 1))
  {
    v33 = Count;
    v34 = 0;
    v35 = 1;
    do
    {
      v36 = CFArrayGetValueAtIndex(a1[2], v34);
      if (CFSetContainsValue(query_needsWhatFieldsMatched_dict, v36))
      {
        break;
      }

      v35 = ++v34 < v33;
    }

    while (v33 != v34);
  }

  else
  {
    v35 = 0;
  }

  *(a1 + 60) = v35;
  v37 = *(a2 + 80);
  if (v37)
  {
    v38 = CFArrayCreateCopy(*v11, v37);
  }

  else
  {
    v38 = 0;
  }

  a1[22] = v38;
  v39 = *(a2 + 88);
  if (v39)
  {
    v40 = CFArrayCreateCopy(*v11, v39);
  }

  else
  {
    v40 = 0;
  }

  a1[23] = v40;
  if (*(v5 + 2768) >= 5)
  {
    v185 = *__error();
    v186 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
    {
      v187 = a1[1];
      v188 = *(a2 + 96);
      v189 = *(a2 + 80);
      LODWORD(v207[0]) = 138412802;
      *(v207 + 4) = v187;
      WORD2(v207[1]) = 2112;
      *(&v207[1] + 6) = v188;
      HIWORD(v207[2]) = 2112;
      v207[3] = v189;
      _os_log_impl(&dword_1C278D000, v186, OS_LOG_TYPE_DEFAULT, "initWithQuery %@ for fields:%@ and scopes:%@", v207, 0x20u);
    }

    *__error() = v185;
  }

  v41 = v199 & 0x40;
  v42 = *(a2 + 80);
  v43 = *(a2 + 88);
  if (v42)
  {
    if (v43)
    {
      v44 = *v11;
      v45 = CFArrayGetCount(v42);
      v46 = CFArrayGetCount(*(a2 + 88));
      v47 = CFArrayCreateMutableCopy(v44, v46 + v45, a1[22]);
      a1[24] = v47;
      v48 = *(a2 + 88);
      v211.length = CFArrayGetCount(v48);
      v211.location = 0;
      CFArrayAppendArray(v47, v48, v211);
      goto LABEL_82;
    }

    v49 = a1[22];
    goto LABEL_75;
  }

  if (v43)
  {
    v49 = a1[23];
LABEL_75:
    a1[24] = CFRetain(v49);
    goto LABEL_82;
  }

  a1[24] = 0;
LABEL_82:
  v203 = 0;
  v9.n128_u64[0] = a1[45];
  queryFromCFString(v9);
  a1[8] = v59;
  if (!v59)
  {
    v50 = *__error();
    v61 = _SILogForLogForCategory(1);
    v62 = *(v5 + 2768) < 3;
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_164;
    }

    v63 = a1[1];
    LODWORD(v207[0]) = 138412290;
    *(v207 + 4) = v63;
    v54 = "*warn* queryFromCFString failed for %@";
    v55 = v61;
    goto LABEL_171;
  }

  if (v203 == 35)
  {
    if ((v199 & 0x800) != 0)
    {
      v60 = 6;
    }

    else
    {
      v60 = 5;
    }

    goto LABEL_91;
  }

  if (v203 != 64)
  {
    v118 = *(a2 + 40);
    if (v118)
    {
      v119 = CFGetTypeID(v118);
      if (v119 != CFStringGetTypeID())
      {
        v190 = __si_assert_copy_extra_661(-1);
        v191 = v190;
        v192 = "";
        if (v190)
        {
          v192 = v190;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 4990, "CFGetTypeID(parameters->completionQuery) == CFStringGetTypeID()", v192);
        free(v191);
        if (__valid_fs(-1))
        {
          v193 = 2989;
        }

        else
        {
          v193 = 3072;
        }

        *v193 = -559038737;
        abort();
      }

      *(a1 + 38) = 3;
      a1[6] = CFRetain(*(a2 + 40));
      a1[21] = *(a2 + 48);
      *(a1 + 14) = *(a2 + 56);
      v120 = *(a2 + 72);
      if (v120)
      {
        SISetCompletionRankingWeights(v120);
      }

      v64 = *(a2 + 144);
      if (v64 && v64 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v64 = *(a2 + 144);
      if (v64 && v64 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v151 = *(a2 + 136);
        if (!v151 || v151 >= v64)
        {
          if ((v199 & 0x800) != 0)
          {
            v154 = 1;
          }

          else
          {
            v154 = 2;
          }

          *(a1 + 38) = v154;
          goto LABEL_92;
        }

        *(a1 + 38) = 0;
        a1[20] = v151;
LABEL_193:
        a1[27] = v64;
        goto LABEL_93;
      }

      *(a1 + 38) = 0;
    }

    v139 = *(a2 + 136);
    if (!v139)
    {
      goto LABEL_93;
    }

    a1[20] = v139;
    v64 = -1;
    goto LABEL_193;
  }

  v60 = 4;
LABEL_91:
  *(a1 + 38) = v60;
  v64 = *(a2 + 144);
LABEL_92:
  a1[20] = v64;
LABEL_93:
  v65 = *(a2 + 152);
  if (v65)
  {
    v66 = CFArrayGetCount(v65);
    a1[31] = malloc_type_calloc(v66, 8uLL, 0x2004093837F09uLL);
    if (v66 >= 1)
    {
      v67 = 0;
      while (1)
      {
        LOBYTE(v201) = 0;
        v68 = CFArrayGetValueAtIndex(*(a2 + 152), v67);
        v69.n128_u64[0] = a1[45];
        queryFromCFString(v69);
        if (!v70)
        {
          break;
        }

        v71 = a1[31];
        v72 = a1[32];
        a1[32] = v72 + 1;
        *(v71 + 8 * v72) = v70;
        if (v66 == ++v67)
        {
          goto LABEL_98;
        }
      }

      v50 = *__error();
      v124 = _SILogForLogForCategory(1);
      v125 = *(v5 + 2768) < 3;
      if (os_log_type_enabled(v124, v125))
      {
        LODWORD(v207[0]) = 138412290;
        *(v207 + 4) = v68;
        v54 = "*warn* grouping queryFromCFString failed for %@";
        v55 = v124;
        v56 = v125;
LABEL_172:
        v57 = 12;
LABEL_173:
        _os_log_impl(&dword_1C278D000, v55, v56, v54, v207, v57);
      }

LABEL_164:
      *__error() = v50;
      goto LABEL_199;
    }
  }

LABEL_98:
  v73 = *(a2 + 160);
  if (v73)
  {
    v200 = v41;
    v74 = CFArrayGetCount(v73);
    a1[33] = malloc_type_calloc(v74, 0x18uLL, 0x1080040468F112EuLL);
    if (v74 >= 1)
    {
      v75 = 0;
      v194[1] = &v207[2];
      v58.n128_u64[0] = 138412290;
      v195 = v58;
      v196 = v74;
      do
      {
        v202 = 0;
        v76 = CFArrayGetValueAtIndex(*(a2 + 160), v75);
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(v76))
        {
          v78.n128_u64[0] = a1[45];
          queryFromCFString(v78);
          v80 = v79;
          if (v79 && v202 == 36)
          {
            *(v79 + 56) |= 1u;
          }

          else
          {
            if (v79)
            {
              v96 = v202 == 0;
            }

            else
            {
              v96 = 0;
            }

            if (!v96)
            {
              if (v79)
              {
                v207[0] = MEMORY[0x1E69E9820];
                v207[1] = 0x40000000;
                v207[2] = __db_query_tree_apply_block_block_invoke;
                v207[3] = &unk_1E8198ED0;
                *&v208 = &__block_literal_global_174;
                db_query_tree_apply_block_with_meta(v79, v207, 0);
              }

              v97 = *__error();
              v98 = _SILogForLogForCategory(1);
              v99 = *(v5 + 2768) < 3;
              if (os_log_type_enabled(v98, v99))
              {
                LODWORD(v207[0]) = v195.n128_u32[0];
                *(v207 + 4) = v76;
                _os_log_impl(&dword_1C278D000, v98, v99, "*warn* Error creating ranking query for %@", v207, 0xCu);
              }

              *__error() = v97;
              v100.n128_u64[0] = a1[45];
              queryFromCFString(v100);
              v80 = v101;
              v74 = v196;
              if (!v101)
              {
                goto LABEL_199;
              }
            }
          }

          decorateExpandingFunctions(v80, *a1, a1[82], *(a1 + 45));
          *(a1[33] + 24 * a1[36] + 8) = vdupq_n_s64(1uLL);
          v102 = malloc_type_malloc(0x18uLL, 0x1080040468F112EuLL);
          v103 = a1[36];
          *(a1[33] + 24 * v103) = v102;
          *v102 = v80;
          a1[36] = v103 + 1;
        }

        else
        {
          v81 = CFDictionaryGetTypeID();
          if (v81 == CFGetTypeID(v76))
          {
            v82 = CFDictionaryGetValue(v76, @"kCIMatchArray");
            v83 = CFDictionaryGetValue(v76, @"kCIBitCount");
            v201 = 0;
            CFNumberGetValue(v83, kCFNumberLongType, &v201);
            v84 = CFArrayGetCount(v82);
            if (v84 > 64 || v201 >= 7)
            {
              v135 = *__error();
              v152 = _SILogForLogForCategory(1);
              v153 = *(v5 + 2768) < 3;
              if (!os_log_type_enabled(v152, v153))
              {
                goto LABEL_198;
              }

              LODWORD(v207[0]) = 134218240;
              *(v207 + 4) = v84;
              WORD2(v207[1]) = 2048;
              *(&v207[1] + 6) = v201;
              v138 = "*warn* rulecount %ld bitCount: %ld error";
              v140 = v152;
              v141 = v153;
              v142 = 22;
LABEL_197:
              _os_log_impl(&dword_1C278D000, v140, v141, v138, v207, v142);
LABEL_198:
              *__error() = v135;
LABEL_199:
              if (*(v5 + 2768) >= 5)
              {
                v183 = *__error();
                v184 = _SILogForLogForCategory(1);
                if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v207[0]) = 0;
                  _os_log_impl(&dword_1C278D000, v184, OS_LOG_TYPE_DEFAULT, "Failed creating query", v207, 2u);
                }

                v143 = 0;
                *__error() = v183;
              }

              else
              {
                v143 = 0;
              }

              goto LABEL_201;
            }

            v198 = v194;
            MEMORY[0x1EEE9AC00](v85);
            v87 = v194 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
            v197 = v86;
            bzero(v87, v86);
            if (v84 >= 1)
            {
              v88 = 0;
              while (1)
              {
                v89 = CFArrayGetValueAtIndex(v82, v88);
                v90.n128_u64[0] = a1[45];
                queryFromCFString(v90);
                v92 = v91;
                if (!v91 || v202 != 0)
                {
                  break;
                }

                *&v87[8 * v88] = v91;
                decorateExpandingFunctions(v91, *a1, a1[82], *(a1 + 45));
                if (v84 == ++v88)
                {
                  goto LABEL_116;
                }
              }

              if (v88)
              {
                for (j = 0; j != v88; ++j)
                {
                  db_free_query_node(*&v87[8 * j]);
                }
              }

              if (v92)
              {
                v207[0] = MEMORY[0x1E69E9820];
                v207[1] = 0x40000000;
                v207[2] = __db_query_tree_apply_block_block_invoke;
                v207[3] = &unk_1E8198ED0;
                *&v208 = &__block_literal_global_174;
                db_query_tree_apply_block_with_meta(v92, v207, 0);
              }

              v50 = *__error();
              v122 = _SILogForLogForCategory(1);
              v5 = 0x1EBF46000uLL;
              v123 = dword_1EBF46AD0 < 3;
              if (os_log_type_enabled(v122, (dword_1EBF46AD0 < 3)))
              {
                LODWORD(v207[0]) = v195.n128_u32[0];
                *(v207 + 4) = v89;
                _os_log_impl(&dword_1C278D000, v122, v123, "*warn* lifting queryFromCFString failed for %@", v207, 0xCu);
              }

              goto LABEL_164;
            }

LABEL_116:
            v94 = a1[33] + 24 * a1[36];
            *(v94 + 8) = v84;
            *(v94 + 16) = v201;
            v95 = malloc_type_malloc(24 * v84, 0x1080040468F112EuLL);
            *(a1[33] + 24 * a1[36]) = v95;
            memcpy(v95, v87, v197);
            ++a1[36];
            v5 = 0x1EBF46000;
            v11 = MEMORY[0x1E695E480];
            v74 = v196;
          }
        }

        ++v75;
      }

      while (v75 != v74);
    }

    if (!a1[12] && (a1[84] & 1) == 0 && !a1[85] && !a1[86] && a1[36] == 1)
    {
      v104 = a1[33];
      if (*(v104 + 8) == 1)
      {
        if (db_node_has_ranking_weights(**v104))
        {
          si_query_set_weighted_rank_node(a1, **a1[33]);
          clear_lifting_rules(a1);
        }
      }
    }
  }

  if (*(a2 + 168))
  {
    LOBYTE(v201) = 0;
    v58.n128_u64[0] = a1[45];
    queryFromCFString(v58);
    if (v105 && !v201)
    {
      a1[35] = v105;
      goto LABEL_140;
    }

    if (v105)
    {
      v207[0] = MEMORY[0x1E69E9820];
      v207[1] = 0x40000000;
      v207[2] = __db_query_tree_apply_block_block_invoke;
      v207[3] = &unk_1E8198ED0;
      *&v208 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v105, v207, 0);
    }

    v50 = *__error();
    v126 = _SILogForLogForCategory(1);
    v62 = *(v5 + 2768) < 3;
    if (!os_log_type_enabled(v126, v62))
    {
      goto LABEL_164;
    }

    v127 = *(a2 + 168);
    LODWORD(v207[0]) = 138412290;
    *(v207 + 4) = v127;
    v54 = "*warn* dboFilter queryFromCFString failed for %@";
    v55 = v126;
LABEL_171:
    v56 = v62;
    goto LABEL_172;
  }

LABEL_140:
  a1[25] = v199;
  if (*(a1 + 38) == 4)
  {
    v106 = *(a2 + 96);
    if (!v106 || !CFArrayGetCount(v106))
    {
      v135 = *__error();
      v136 = _SILogForLogForCategory(1);
      v137 = *(v5 + 2768) < 3;
      if (!os_log_type_enabled(v136, v137))
      {
        goto LABEL_198;
      }

      LOWORD(v207[0]) = 0;
      v138 = "*warn* no fields for CoalescingCollectingQuery";
LABEL_196:
      v140 = v136;
      v141 = v137;
      v142 = 2;
      goto LABEL_197;
    }
  }

  v107 = a1[8];
  v207[0] = MEMORY[0x1E69E9820];
  v207[1] = 0x40000000;
  v207[2] = __db_query_tree_apply_block_block_invoke;
  v207[3] = &unk_1E8198ED0;
  *&v208 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v107, v207, &__block_literal_global_25_15416);
  a1[9] = v108;
  v109 = a1 + 9;
  if (*(a1 + 38) == 4)
  {
    v110 = a1[2];
    if (v110)
    {
      v111 = CFArrayGetCount(v110);
      if (v111)
      {
        v112 = v111;
        v113 = CFArrayGetValueAtIndex(a1[2], 0);
        NodeForAttribute = makeNodeForAttribute(v113);
        if (v112 >= 2)
        {
          for (k = 1; k != v112; ++k)
          {
            v116 = CFArrayGetValueAtIndex(a1[2], k);
            v117 = makeNodeForAttribute(v116);
            NodeForAttribute = makeORNode(NodeForAttribute, v117, 1);
          }
        }

        *v109 = makeAndNode(*v109, NodeForAttribute, 1, 1);
      }
    }
  }

  else if ((v199 & 0x800) != 0)
  {
    if (initQuery_once[0] != -1)
    {
      dispatch_once(initQuery_once, &__block_literal_global_476);
    }

    v128 = *v109;
    v207[0] = MEMORY[0x1E69E9820];
    v207[1] = 0x40000000;
    v207[2] = __db_query_tree_apply_block_block_invoke;
    v207[3] = &unk_1E8198ED0;
    *&v208 = &__block_literal_global_479;
    db_query_tree_apply_block_with_meta(v128, v207, &__block_literal_global_485);
    if (v129)
    {
      v199 &= ~0x800uLL;
      v130 = *__error();
      v131 = _SILogForLogForCategory(1);
      v132 = 2 * (*(v5 + 2768) < 4);
      if (os_log_type_enabled(v131, v132))
      {
        LOWORD(v207[0]) = 0;
        _os_log_impl(&dword_1C278D000, v131, v132, "Query is limited to one group; turn off server side grouping", v207, 2u);
      }

      *__error() = v130;
      a1[25] = v199;
    }
  }

  decorateExpandingFunctions(a1[9], *a1, a1[82], *(a1 + 45));
  db_optimize_query_tree(a1 + 9);
  v133 = a1[9];
  if (!v133 || (v134 = *(v133 + 16)) != 0 && *(v134 + 24) == 9 || *(v133 + 48) == 16)
  {
    v135 = *__error();
    v136 = _SILogForLogForCategory(1);
    v137 = *(v5 + 2768) < 3;
    if (!os_log_type_enabled(v136, v137))
    {
      goto LABEL_198;
    }

    LOWORD(v207[0]) = 0;
    v138 = "*warn* no or false _completeQuery";
    goto LABEL_196;
  }

  *(a1 + 300) = 0xBB83F000000;
  *(a1 + 308) = 0xBB83F800000;
  *(a1 + 316) = 0xBB83F800000;
  v145 = v206;
  *(a1 + 324) = v205;
  *(a1 + 340) = v145;
  *(a1 + 357) = (v199 & 0x20000000) != 0;
  v146 = a1[2];
  if (v146)
  {
    v210.length = CFArrayGetCount(a1[2]);
    v210.location = 0;
    if (CFArrayContainsValue(v146, v210, @"_kMDItemSDBInfo"))
    {
      *(a1 + 78) = 100;
      *(a1 + 80) = 100;
      *(a1 + 76) = 100;
    }
  }

  v147 = 0uLL;
  *(a1 + 85) = 0u;
  if (*(a2 + 273) == 1)
  {
    v147.n128_u64[0] = a1[45];
    queryFromCFString(v147);
    a1[12] = v148;
    if (v148)
    {
      decorateExpandingFunctions(v148, *a1, a1[82], *(a1 + 45));
      db_optimize_query_tree(a1 + 12);
      *(a1 + 672) = 1;
      v149 = *(a2 + 304);
      if (v149)
      {
        v150 = CFArrayCreateCopy(*v11, v149);
      }

      else
      {
        v150 = 0;
      }

      a1[88] = v150;
      v155 = *(a2 + 312);
      if (v155)
      {
        v156 = CFDictionaryCreateCopy(*v11, v155);
      }

      else
      {
        v156 = 0;
      }

      a1[89] = v156;
      v157 = *(a2 + 320);
      if (v157)
      {
        v158 = CFDictionaryCreateCopy(*v11, v157);
      }

      else
      {
        v158 = 0;
      }

      a1[90] = v158;
      v159 = *(a2 + 328);
      if (v159)
      {
        v160 = CFAttributedStringCreateCopy(*v11, v159);
      }

      else
      {
        v160 = 0;
      }

      a1[93] = v160;
      *(a1 + 761) = *(a2 + 352);
    }

    v161 = *(a2 + 280);
    if (v161)
    {
      a1[85] = CFArrayCreateCopy(*v11, v161);
    }

    v162 = *(a2 + 288);
    if (v162)
    {
      a1[86] = CFArrayCreateCopy(*v11, v162);
    }
  }

  *(a1 + 762) = *(a2 + 353);
  v163 = *(a2 + 200);
  if (v163)
  {
    v164 = CFArrayGetCount(v163);
    if (v164 >= 1)
    {
      v165 = v164;
      v166 = 0;
      do
      {
        v167 = CFArrayGetValueAtIndex(*(a2 + 200), v166);
        if (!SIQueryAddResultFilter(a1, v167, v168))
        {
          goto LABEL_199;
        }
      }

      while (v165 != ++v166);
    }
  }

  v169 = *(a2 + 16);
  if (v169)
  {
    SIQueryAddResultGenerator(a1, v169, v147);
  }

  v170 = *(a2 + 24);
  if (v170)
  {
    SIQueryAddResultGenerator(a1, v170, v147);
  }

  *(a1 + 324) = vmovl_s16(*(a2 + 208));
  *(a1 + 340) = vmovl_s16(*(a2 + 216));
  *(a1 + 39) = *(a2 + 240);
  v171 = *(a2 + 256);
  a1[81] = *(a2 + 264);
  a1[80] = v171;
  v172 = a1[82];
  v173 = a1[1];
  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  if (SIIsAppleInternal_internal)
  {
    os_unfair_lock_lock(&analytics_query_lock);
    if (!analytics_query_client_dict)
    {
      analytics_query_client_dict = CFDictionaryCreateMutable(*v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    if (!analytics_query_string_dict)
    {
      analytics_query_string_dict = CFDictionaryCreateMutable(*v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v174 = shortened_client_key(v172);
    v175 = CFDictionaryGetValue(analytics_query_client_dict, v174);
    LODWORD(v207[0]) = 0;
    if (v175)
    {
      CFNumberGetValue(v175, kCFNumberIntType, v207);
      v176 = LODWORD(v207[0]) + 1;
    }

    else
    {
      v176 = 1;
    }

    LODWORD(v207[0]) = v176;
    v177 = *v11;
    v178 = CFNumberCreate(*v11, kCFNumberIntType, v207);
    CFDictionarySetValue(analytics_query_client_dict, v174, v178);
    CFRelease(v178);
    CFRelease(v174);
    if (v173)
    {
      v179 = v173;
    }

    else
    {
      v179 = @"<null>";
    }

    v180 = CFDictionaryGetValue(analytics_query_string_dict, v179);
    LODWORD(v207[0]) = 0;
    if (v180)
    {
      CFNumberGetValue(v180, kCFNumberIntType, v207);
      v181 = LODWORD(v207[0]) + 1;
    }

    else
    {
      v181 = 1;
    }

    LODWORD(v207[0]) = v181;
    v182 = CFNumberCreate(v177, kCFNumberIntType, v207);
    CFDictionarySetValue(analytics_query_string_dict, v179, v182);
    CFRelease(v182);
    os_unfair_lock_unlock(&analytics_query_lock);
  }

  v143 = 1;
LABEL_201:
  popSkipCrashState();
  return v143;
}