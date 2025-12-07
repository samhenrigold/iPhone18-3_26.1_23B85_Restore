uint64_t nw_frame_cache_create_frame(uint64_t *a1, uint64_t size)
{
  v82 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v41 = __nwlog_obj();
    buf = 136446210;
    v73 = "nw_frame_cache_create_frame";
    v42 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null frame_cache", &buf, 12);
    v68[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v64) = 0;
    if (__nwlog_fault(v42, v68, &v64))
    {
      if (v68[0] == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = v68[0];
        if (os_log_type_enabled(v43, v68[0]))
        {
          buf = 136446210;
          v73 = "nw_frame_cache_create_frame";
          v45 = "%{public}s called with null frame_cache";
LABEL_87:
          _os_log_impl(&dword_181A37000, v43, v44, v45, &buf, 0xCu);
        }
      }

      else if (v64 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v43 = __nwlog_obj();
        v44 = v68[0];
        v50 = os_log_type_enabled(v43, v68[0]);
        if (backtrace_string)
        {
          if (v50)
          {
            buf = 136446466;
            v73 = "nw_frame_cache_create_frame";
            v74 = 2082;
            v75 = backtrace_string;
            _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null frame_cache, dumping backtrace:%{public}s", &buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_88;
        }

        if (v50)
        {
          buf = 136446210;
          v73 = "nw_frame_cache_create_frame";
          v45 = "%{public}s called with null frame_cache, no backtrace";
          goto LABEL_87;
        }
      }

      else
      {
        v43 = __nwlog_obj();
        v44 = v68[0];
        if (os_log_type_enabled(v43, v68[0]))
        {
          buf = 136446210;
          v73 = "nw_frame_cache_create_frame";
          v45 = "%{public}s called with null frame_cache, backtrace limit exceeded";
          goto LABEL_87;
        }
      }
    }

LABEL_88:
    if (v42)
    {
      free(v42);
    }

    return 0;
  }

  *v68 = 0;
  v69 = v68;
  v70 = 0x2000000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2000000000;
  v67 = 0;
  if (gLogDatapath == 1)
  {
    v46 = __nwlog_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      buf = 136446466;
      v73 = "nw_frame_cache_create_frame";
      v74 = 1024;
      LODWORD(v75) = size;
      _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s requested frame of length %u", &buf, 0x12u);
    }
  }

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 0x40000000;
  v58 = __nw_frame_cache_create_frame_block_invoke;
  v59 = &unk_1E6A2F478;
  v61 = &v64;
  v62 = a1;
  v63 = size;
  v60 = v68;
  v4 = *a1;
  do
  {
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 16);
    v6 = (v58)(v57);
    v4 = v5;
  }

  while ((v6 & 1) != 0);
  if (*(v69 + 3))
  {
    goto LABEL_53;
  }

  if (!size)
  {
    goto LABEL_14;
  }

  v7 = malloc_type_calloc(1uLL, size, 0x1C2CE808uLL);
  if (v7)
  {
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  v9 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  buf = 136446722;
  v73 = "nw_frame_cache_create_frame";
  if (v9)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  v74 = 2048;
  v75 = 1;
  v76 = 2048;
  v77 = size;
  v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_calloc(%zu, %zu) failed", &buf, 32);
  result = __nwlog_should_abort(v11);
  if (!result)
  {
    free(v11);
LABEL_14:
    v7 = 0;
LABEL_15:
    v13 = v65[3];
    if (v13)
    {
      v14 = a1 + 1;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v15)
      {
        v14 = (v15 + 24);
      }

      *v14 = v16;
      *v16 = v15;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      v17 = *(a1 + 6);
      *(a1 + 6) = v17 - 1;
      if (v17)
      {
        goto LABEL_52;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = *(a1 + 6);
      buf = 136446978;
      v73 = "nw_frame_cache_create_frame";
      v74 = 2082;
      v75 = "frame_cache->empty_frames_count";
      v76 = 2048;
      v77 = 1;
      v78 = 2048;
      v79 = v18;
      LODWORD(v54) = 42;
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", &buf, v54);
      type = OS_LOG_TYPE_ERROR;
      v55 = 0;
      if (__nwlog_fault(v19, &type, &v55))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          v21 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v22 = *(a1 + 6);
            buf = 136446978;
            v73 = "nw_frame_cache_create_frame";
            v74 = 2082;
            v75 = "frame_cache->empty_frames_count";
            v76 = 2048;
            v77 = 1;
            v78 = 2048;
            v79 = v22;
            v23 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_48:
            _os_log_impl(&dword_181A37000, v20, v21, v23, &buf, 0x2Au);
          }
        }

        else if (v55 == 1)
        {
          v33 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          v21 = type;
          v34 = os_log_type_enabled(gLogObj, type);
          if (v33)
          {
            if (v34)
            {
              v35 = *(a1 + 6);
              buf = 136447234;
              v73 = "nw_frame_cache_create_frame";
              v74 = 2082;
              v75 = "frame_cache->empty_frames_count";
              v76 = 2048;
              v77 = 1;
              v78 = 2048;
              v79 = v35;
              v80 = 2082;
              v81 = v33;
              _os_log_impl(&dword_181A37000, v20, v21, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", &buf, 0x34u);
            }

            free(v33);
            goto LABEL_49;
          }

          if (v34)
          {
            v39 = *(a1 + 6);
            buf = 136446978;
            v73 = "nw_frame_cache_create_frame";
            v74 = 2082;
            v75 = "frame_cache->empty_frames_count";
            v76 = 2048;
            v77 = 1;
            v78 = 2048;
            v79 = v39;
            v23 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_48;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          v21 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v38 = *(a1 + 6);
            buf = 136446978;
            v73 = "nw_frame_cache_create_frame";
            v74 = 2082;
            v75 = "frame_cache->empty_frames_count";
            v76 = 2048;
            v77 = 1;
            v78 = 2048;
            v79 = v38;
            v23 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_48;
          }
        }
      }

LABEL_49:
      if (v19)
      {
        free(v19);
      }

      *(a1 + 6) = 0;
LABEL_52:
      nw_frame_reset(v65[3], v7, size, 0, 0);
      nw_frame_set_buffer_used_malloc(v65[3], 1);
      *(v69 + 3) = v65[3];
      if (gLogDatapath != 1)
      {
        goto LABEL_53;
      }

      v51 = __nwlog_obj();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_53;
      }

      v52 = *(v69 + 3);
      buf = 136446722;
      v73 = "nw_frame_cache_create_frame";
      v74 = 2048;
      v75 = v52;
      v76 = 1024;
      LODWORD(v77) = size;
      v26 = "%{public}s reused bufferless frame %p, allocated buffer of length %u";
      v27 = v51;
      v28 = 28;
LABEL_82:
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, v26, &buf, v28);
LABEL_53:
      if (gLogDatapath == 1)
      {
        v47 = __nwlog_obj();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v48 = *(v69 + 3);
          buf = 136446722;
          v73 = "nw_frame_cache_create_frame";
          v74 = 2048;
          v75 = v48;
          v76 = 1024;
          LODWORD(v77) = size;
          _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s returning frame %p for requested length %u", &buf, 0x1Cu);
        }
      }

      v40 = *(v69 + 3);
LABEL_55:
      _Block_object_dispose(&v64, 8);
      _Block_object_dispose(v68, 8);
      return v40;
    }

    if (gLogDatapath == 1)
    {
      v53 = __nwlog_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        buf = 136446466;
        v73 = "nw_frame_cache_create_frame";
        v74 = 1024;
        LODWORD(v75) = size;
        _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s no frame to reuse for length %u", &buf, 0x12u);
      }
    }

    v24 = nw_frame_create(*(a1 + 9), v7, size, 0, 0);
    *(v69 + 3) = v24;
    if (v24)
    {
      *(v24 + 204) |= 1u;
      if (gLogDatapath != 1)
      {
        goto LABEL_53;
      }

      v25 = __nwlog_obj();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_53;
      }

      buf = 136446466;
      v73 = "nw_frame_cache_create_frame";
      v74 = 1024;
      LODWORD(v75) = size;
      v26 = "%{public}s allocated new frame of length %u";
      v27 = v25;
      v28 = 18;
      goto LABEL_82;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    buf = 136446210;
    v73 = "nw_frame_cache_create_frame";
    LODWORD(v54) = 12;
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_frame_create new frame failed", &buf, v54);
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v29, &type, &v55))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v31 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          buf = 136446210;
          v73 = "nw_frame_cache_create_frame";
          v32 = "%{public}s nw_frame_create new frame failed";
LABEL_59:
          _os_log_impl(&dword_181A37000, v30, v31, v32, &buf, 0xCu);
        }
      }

      else if (v55 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v30 = __nwlog_obj();
        v31 = type;
        v37 = os_log_type_enabled(v30, type);
        if (v36)
        {
          if (v37)
          {
            buf = 136446466;
            v73 = "nw_frame_cache_create_frame";
            v74 = 2082;
            v75 = v36;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s nw_frame_create new frame failed, dumping backtrace:%{public}s", &buf, 0x16u);
          }

          free(v36);
          goto LABEL_60;
        }

        if (v37)
        {
          buf = 136446210;
          v73 = "nw_frame_cache_create_frame";
          v32 = "%{public}s nw_frame_create new frame failed, no backtrace";
          goto LABEL_59;
        }
      }

      else
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          buf = 136446210;
          v73 = "nw_frame_cache_create_frame";
          v32 = "%{public}s nw_frame_create new frame failed, backtrace limit exceeded";
          goto LABEL_59;
        }
      }
    }

LABEL_60:
    if (v29)
    {
      free(v29);
    }

    if (v7)
    {
      free(v7);
    }

    v40 = 0;
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

BOOL __nw_frame_cache_create_frame_block_invoke(uint64_t a1, uint64_t a2)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v66 = "nw_frame_cache_create_frame_block_invoke";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s foreach gave null candidate_frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (!__nwlog_fault(v12, &type, &v63))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v66 = "nw_frame_cache_create_frame_block_invoke";
      v15 = "%{public}s foreach gave null candidate_frame";
    }

    else
    {
      if (v63 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = type;
        v19 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v66 = "nw_frame_cache_create_frame_block_invoke";
            v67 = 2082;
            *v68 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s foreach gave null candidate_frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_44;
        }

        if (!v19)
        {
LABEL_44:
          if (v12)
          {
            free(v12);
          }

          return 0;
        }

        *buf = 136446210;
        v66 = "nw_frame_cache_create_frame_block_invoke";
        v15 = "%{public}s foreach gave null candidate_frame, no backtrace";
        v26 = v17;
        v27 = v18;
LABEL_43:
        _os_log_impl(&dword_181A37000, v26, v27, v15, buf, 0xCu);
        goto LABEL_44;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v66 = "nw_frame_cache_create_frame_block_invoke";
      v15 = "%{public}s foreach gave null candidate_frame, backtrace limit exceeded";
    }

    v26 = v13;
    v27 = v14;
    goto LABEL_43;
  }

  if ((*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a2, *(a2 + 88)))
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *(a2 + 48);
    v5 = *(a2 + 112);
  }

  if (gLogDatapath == 1)
  {
    v57 = __nwlog_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v66 = "nw_frame_cache_create_frame_block_invoke";
      v67 = 2048;
      *v68 = a2;
      *&v68[8] = 2048;
      v69 = v5;
      v70 = 1024;
      LODWORD(v71) = v4;
      _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s existing frame %p found, buffer %p, length %u", buf, 0x26u);
    }
  }

  v6 = *(a2 + 52);
  if (v6)
  {
    v6 -= *(a2 + 56) + *(a2 + 60);
  }

  if (v6 != v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v66 = "nw_frame_cache_create_frame_block_invoke";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s candidate frame is not fully unclaimed, destroying", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (!__nwlog_fault(v8, &type, &v63))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      v66 = "nw_frame_cache_create_frame_block_invoke";
      v11 = "%{public}s candidate frame is not fully unclaimed, destroying";
      goto LABEL_70;
    }

    if (v63 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      v66 = "nw_frame_cache_create_frame_block_invoke";
      v11 = "%{public}s candidate frame is not fully unclaimed, destroying, backtrace limit exceeded";
      goto LABEL_70;
    }

    v22 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v24 = type;
    v25 = os_log_type_enabled(gLogObj, type);
    if (v22)
    {
      if (v25)
      {
        *buf = 136446466;
        v66 = "nw_frame_cache_create_frame_block_invoke";
        v67 = 2082;
        *v68 = v22;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s candidate frame is not fully unclaimed, destroying, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v22);
    }

    else if (v25)
    {
      *buf = 136446210;
      v66 = "nw_frame_cache_create_frame_block_invoke";
      v11 = "%{public}s candidate frame is not fully unclaimed, destroying, no backtrace";
LABEL_83:
      v45 = v23;
      v46 = v24;
      goto LABEL_71;
    }

LABEL_72:
    if (!v8)
    {
LABEL_74:
      frame_cache_remove_from_cache(*(a1 + 48), a2);
      return 1;
    }

LABEL_73:
    free(v8);
    goto LABEL_74;
  }

  if (!v5 && v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v66 = "nw_frame_cache_create_frame_block_invoke";
      v67 = 2048;
      *v68 = a2;
      *&v68[8] = 1024;
      LODWORD(v69) = v4;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s candidate frame %p has length %u, but buffer is NULL, removing", buf, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v66 = "nw_frame_cache_create_frame_block_invoke";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s candidate frame has length > 0, but buffer is NULL", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (__nwlog_fault(v8, &type, &v63))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_72;
        }

        *buf = 136446210;
        v66 = "nw_frame_cache_create_frame_block_invoke";
        v11 = "%{public}s candidate frame has length > 0, but buffer is NULL";
LABEL_70:
        v45 = v9;
        v46 = v10;
LABEL_71:
        _os_log_impl(&dword_181A37000, v45, v46, v11, buf, 0xCu);
        goto LABEL_72;
      }

      if (v63 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_72;
        }

        *buf = 136446210;
        v66 = "nw_frame_cache_create_frame_block_invoke";
        v11 = "%{public}s candidate frame has length > 0, but buffer is NULL, backtrace limit exceeded";
        goto LABEL_70;
      }

      v31 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      v32 = os_log_type_enabled(gLogObj, type);
      if (v31)
      {
        if (v32)
        {
          *buf = 136446466;
          v66 = "nw_frame_cache_create_frame_block_invoke";
          v67 = 2082;
          *v68 = v31;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s candidate frame has length > 0, but buffer is NULL, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        if (!v8)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      if (v32)
      {
        *buf = 136446210;
        v66 = "nw_frame_cache_create_frame_block_invoke";
        v11 = "%{public}s candidate frame has length > 0, but buffer is NULL, no backtrace";
        goto LABEL_83;
      }
    }

    goto LABEL_72;
  }

  v20 = *(a1 + 56);
  if (*MEMORY[0x1E69E9AC8] + v20 < v4)
  {
    if (gLogDatapath == 1)
    {
      v21 = __nwlog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v66 = "frame_cache_candidate_frame_length_is_match";
        v67 = 1024;
        *v68 = v4;
        *&v68[4] = 1024;
        *&v68[6] = v20;
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s candidate frame (%u bytes) is too much larger than requested (%u bytes), skipping", buf, 0x18u);
      }
    }

    goto LABEL_48;
  }

  if (v4 < v20)
  {
LABEL_48:
    if (!v5)
    {
      v29 = *(*(a1 + 40) + 8);
      if (!*(v29 + 24))
      {
        *(v29 + 24) = a2;
        if (gLogDatapath == 1)
        {
          v30 = __nwlog_obj();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v66 = "nw_frame_cache_create_frame_block_invoke";
            v67 = 2048;
            *v68 = a2;
            _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s reserving bufferless frame %p if better candidate not found", buf, 0x16u);
          }
        }
      }
    }

    return 1;
  }

  v33 = (*(a1 + 48) + 8);
  v34 = *(a2 + 16);
  v35 = *(a2 + 24);
  if (v34)
  {
    v33 = (v34 + 24);
  }

  *v33 = v35;
  *v35 = v34;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v36 = *(a1 + 48);
  v37 = *(v36 + 24);
  *(v36 + 24) = v37 - 1;
  if (!v37)
  {
    v38 = __nwlog_obj();
    v39 = *(*(a1 + 48) + 24);
    *buf = 136446978;
    v66 = "nw_frame_cache_create_frame_block_invoke";
    v67 = 2082;
    *v68 = "frame_cache->empty_frames_count";
    *&v68[8] = 2048;
    v69 = 1;
    v70 = 2048;
    v71 = v39;
    v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (__nwlog_fault(v40, &type, &v63))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v41, type))
        {
          v43 = *(*(a1 + 48) + 24);
          *buf = 136446978;
          v66 = "nw_frame_cache_create_frame_block_invoke";
          v67 = 2082;
          *v68 = "frame_cache->empty_frames_count";
          *&v68[8] = 2048;
          v69 = 1;
          v70 = 2048;
          v71 = v43;
          v44 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_93:
          _os_log_impl(&dword_181A37000, v41, v42, v44, buf, 0x2Au);
        }
      }

      else if (v63 == 1)
      {
        v47 = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v42 = type;
        v48 = os_log_type_enabled(v41, type);
        if (v47)
        {
          if (v48)
          {
            v49 = *(*(a1 + 48) + 24);
            *buf = 136447234;
            v66 = "nw_frame_cache_create_frame_block_invoke";
            v67 = 2082;
            *v68 = "frame_cache->empty_frames_count";
            *&v68[8] = 2048;
            v69 = 1;
            v70 = 2048;
            v71 = v49;
            v72 = 2082;
            v73 = v47;
            _os_log_impl(&dword_181A37000, v41, v42, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v47);
          goto LABEL_94;
        }

        if (v48)
        {
          v51 = *(*(a1 + 48) + 24);
          *buf = 136446978;
          v66 = "nw_frame_cache_create_frame_block_invoke";
          v67 = 2082;
          *v68 = "frame_cache->empty_frames_count";
          *&v68[8] = 2048;
          v69 = 1;
          v70 = 2048;
          v71 = v51;
          v44 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_93;
        }
      }

      else
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v41, type))
        {
          v50 = *(*(a1 + 48) + 24);
          *buf = 136446978;
          v66 = "nw_frame_cache_create_frame_block_invoke";
          v67 = 2082;
          *v68 = "frame_cache->empty_frames_count";
          *&v68[8] = 2048;
          v69 = 1;
          v70 = 2048;
          v71 = v50;
          v44 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_93;
        }
      }
    }

LABEL_94:
    if (v40)
    {
      free(v40);
    }

    *(*(a1 + 48) + 24) = 0;
  }

  if (gLogDatapath == 1)
  {
    v58 = __nwlog_obj();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      v59 = *(a1 + 56);
      *buf = 136446722;
      v66 = "nw_frame_cache_create_frame_block_invoke";
      v67 = 1024;
      *v68 = v4;
      *&v68[4] = 1024;
      *&v68[6] = v59;
      _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, "%{public}s reusing frame of length %u, adjusting to %u", buf, 0x18u);
    }
  }

  v52 = *(a1 + 56);
  v53 = v4 - v52;
  if (v4 == v52)
  {
    if (gLogDatapath)
    {
      v54 = __nwlog_obj();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v66 = "nw_frame_cache_create_frame_block_invoke";
        _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s frame was exact match, not modifying", buf, 0xCu);
      }
    }
  }

  else
  {
    if (gLogDatapath)
    {
      v60 = v4 - v52;
      v61 = __nwlog_obj();
      v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG);
      v53 = v60;
      if (v62)
      {
        *buf = 136446466;
        v66 = "nw_frame_cache_create_frame_block_invoke";
        v67 = 1024;
        *v68 = v60;
        _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEBUG, "%{public}s claiming %u bytes off end of frame", buf, 0x12u);
        v53 = v60;
      }
    }

    nw_frame_claim(a2, a2, 0, v53);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (gLogDatapath != 1)
  {
    return 0;
  }

  v55 = __nwlog_obj();
  result = os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v56 = nw_frame_unclaimed_length(*(*(*(a1 + 32) + 8) + 24));
    *buf = 136446466;
    v66 = "nw_frame_cache_create_frame_block_invoke";
    v67 = 1024;
    *v68 = v56;
    _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, "%{public}s returning frame with unclaimed bytes %u", buf, 0x12u);
    return 0;
  }

  return result;
}

void nw_frame_cache_return_frame(uint64_t a1, uint64_t a2)
{
  v82 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v55 = __nwlog_obj();
    *buf = 136446210;
    v78 = "nw_frame_cache_return_frame";
    v56 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s called with null frame_cache", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v75 = 0;
    if (!__nwlog_fault(v56, &type, &v75))
    {
      goto LABEL_120;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v57 = __nwlog_obj();
      v58 = type;
      if (!os_log_type_enabled(v57, type))
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      v78 = "nw_frame_cache_return_frame";
      v59 = "%{public}s called with null frame_cache";
    }

    else if (v75 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v57 = __nwlog_obj();
      v58 = type;
      v70 = os_log_type_enabled(v57, type);
      if (backtrace_string)
      {
        if (v70)
        {
          *buf = 136446466;
          v78 = "nw_frame_cache_return_frame";
          v79 = 2082;
          *v80 = backtrace_string;
          _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null frame_cache, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_120:
        if (!v56)
        {
          return;
        }

LABEL_121:
        free(v56);
        return;
      }

      if (!v70)
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      v78 = "nw_frame_cache_return_frame";
      v59 = "%{public}s called with null frame_cache, no backtrace";
    }

    else
    {
      v57 = __nwlog_obj();
      v58 = type;
      if (!os_log_type_enabled(v57, type))
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      v78 = "nw_frame_cache_return_frame";
      v59 = "%{public}s called with null frame_cache, backtrace limit exceeded";
    }

LABEL_119:
    _os_log_impl(&dword_181A37000, v57, v58, v59, buf, 0xCu);
    goto LABEL_120;
  }

  if (a2)
  {
    if (gLogDatapath == 1)
    {
      v61 = __nwlog_obj();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v78 = "nw_frame_cache_return_frame";
        v79 = 2048;
        *v80 = a2;
        _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEBUG, "%{public}s caching frame %p", buf, 0x16u);
      }
    }

    if ((*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a2, *(a2 + 88)) || (v4 = *(a2 + 112)) == 0)
    {
      if (gLogDatapath == 1)
      {
        v73 = __nwlog_obj();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v78 = "nw_frame_cache_return_frame";
          v79 = 2048;
          *v80 = a2;
          _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_DEBUG, "%{public}s frame %p no longer has buffer, setting length to 0", buf, 0x16u);
        }
      }

      v5 = 0;
      v4 = 0;
    }

    else
    {
      v5 = *(a2 + 48);
    }

    v6 = *(a2 + 88);
    if (gLogDatapath == 1)
    {
      v62 = v4;
      v63 = *(a2 + 88);
      v64 = __nwlog_obj();
      v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG);
      v6 = v63;
      v4 = v62;
      if (v65)
      {
        *buf = 136447234;
        v78 = "nw_frame_cache_return_frame";
        v79 = 2048;
        *v80 = a2;
        *&v80[8] = 2048;
        *&v80[10] = v62;
        *&v80[18] = 1024;
        *v81 = v5;
        *&v81[4] = 2048;
        *&v81[6] = v63;
        _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s resetting frame %p to buffer %p, length %u, context %p", buf, 0x30u);
        v6 = v63;
        v4 = v62;
      }
    }

    nw_frame_reset(a2, v4, v5, 0, v6);
    nw_frame_array_prepend(a1, 0, a2);
    v7 = *(a1 + 24) + 1;
    *(a1 + 24) = v7;
    if (v7 == v7 << 31 >> 31)
    {
LABEL_30:
      if (gLogDatapath == 1)
      {
        v66 = __nwlog_obj();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v78 = "nw_frame_cache_return_frame";
          v79 = 1024;
          *v80 = v5;
          _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEBUG, "%{public}s reset frame of length %u, eligible for reuse", buf, 0x12u);
        }
      }

      if (gLogDatapath == 1)
      {
        v67 = __nwlog_obj();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          v68 = *(a1 + 24);
          *buf = 136446466;
          v78 = "frame_cache_purge_if_necessary";
          v79 = 1024;
          *v80 = v68;
          _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_DEBUG, "%{public}s total %u empty frames in cache (initial)", buf, 0x12u);
        }
      }

      if (*(a1 + 24) > *(a1 + 28))
      {
        while (1)
        {
          if (gLogDatapath == 1)
          {
            v20 = __nwlog_obj();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = *(a1 + 24);
              v22 = *(a1 + 28);
              *buf = 136446722;
              v78 = "frame_cache_purge_if_necessary";
              v79 = 1024;
              *v80 = v21;
              *&v80[4] = 1024;
              *&v80[6] = v22;
              _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s too many frames in frame cache (%u > %u), pruning", buf, 0x18u);
            }
          }

          v19 = **(*(a1 + 8) + 8);
          if (!v19)
          {
            break;
          }

          frame_cache_remove_from_cache(a1, v19);
          if (*(a1 + 24) <= *(a1 + 28))
          {
            goto LABEL_39;
          }
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = *(a1 + 24);
        *buf = 136446466;
        v78 = "frame_cache_purge_if_necessary";
        v79 = 1024;
        *v80 = v29;
        LODWORD(v74) = 18;
        v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s no more frames in frame cache, we thought we had %u frames", buf, v74);
        type = OS_LOG_TYPE_ERROR;
        v75 = 0;
        if (!__nwlog_fault(v30, &type, &v75))
        {
          goto LABEL_78;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v32 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v33 = *(a1 + 24);
            *buf = 136446466;
            v78 = "frame_cache_purge_if_necessary";
            v79 = 1024;
            *v80 = v33;
            v34 = "%{public}s no more frames in frame cache, we thought we had %u frames";
LABEL_73:
            v51 = v31;
            v52 = v32;
            v53 = 18;
LABEL_77:
            _os_log_impl(&dword_181A37000, v51, v52, v34, buf, v53);
            goto LABEL_78;
          }

          goto LABEL_78;
        }

        if (v75 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v32 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v48 = *(a1 + 24);
            *buf = 136446466;
            v78 = "frame_cache_purge_if_necessary";
            v79 = 1024;
            *v80 = v48;
            v34 = "%{public}s no more frames in frame cache, we thought we had %u frames, backtrace limit exceeded";
            goto LABEL_73;
          }

LABEL_78:
          if (v30)
          {
            free(v30);
          }

          *(a1 + 24) = 0;
          return;
        }

        v39 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v32 = type;
        v40 = os_log_type_enabled(gLogObj, type);
        if (!v39)
        {
          if (v40)
          {
            v50 = *(a1 + 24);
            *buf = 136446466;
            v78 = "frame_cache_purge_if_necessary";
            v79 = 1024;
            *v80 = v50;
            v34 = "%{public}s no more frames in frame cache, we thought we had %u frames, no backtrace";
            goto LABEL_73;
          }

          goto LABEL_78;
        }

        if (v40)
        {
          v41 = *(a1 + 24);
          *buf = 136446722;
          v78 = "frame_cache_purge_if_necessary";
          v79 = 1024;
          *v80 = v41;
          *&v80[4] = 2082;
          *&v80[6] = v39;
          v42 = "%{public}s no more frames in frame cache, we thought we had %u frames, dumping backtrace:%{public}s";
          v43 = v31;
          v44 = v32;
          v45 = 28;
LABEL_65:
          _os_log_impl(&dword_181A37000, v43, v44, v42, buf, v45);
          goto LABEL_66;
        }

        goto LABEL_66;
      }

LABEL_39:
      *buf = 0;
      nw_frame_array_get_frame_count(a1, 0, buf);
      v23 = *buf;
      if (*buf <= *(a1 + 32))
      {
LABEL_46:
        if (gLogDatapath == 1)
        {
          v27 = __nwlog_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = *(a1 + 24);
            *buf = 136446466;
            v78 = "frame_cache_purge_if_necessary";
            v79 = 1024;
            *v80 = v28;
            _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s total %u empty frames in cache (final)", buf, 0x12u);
          }
        }

        return;
      }

      while (1)
      {
        if (gLogDatapath == 1)
        {
          v25 = __nwlog_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = *(a1 + 32);
            *buf = 136446722;
            v78 = "frame_cache_purge_if_necessary";
            v79 = 1024;
            *v80 = v23;
            *&v80[4] = 1024;
            *&v80[6] = v26;
            _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s too many bytes in frame cache (%u > %u), pruning", buf, 0x18u);
          }
        }

        v24 = **(*(a1 + 8) + 8);
        if (!v24)
        {
          break;
        }

        frame_cache_remove_from_cache(a1, v24);
        *buf = 0;
        nw_frame_array_get_frame_count(a1, 0, buf);
        v23 = *buf;
        if (*buf <= *(a1 + 32))
        {
          goto LABEL_46;
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v35 = *(a1 + 24);
      *buf = 136446722;
      v78 = "frame_cache_purge_if_necessary";
      v79 = 1024;
      *v80 = v23;
      *&v80[4] = 1024;
      *&v80[6] = v35;
      LODWORD(v74) = 24;
      v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s no more frames in frame cache, we thought we had %u bytes in %u frames", buf, v74);
      type = OS_LOG_TYPE_ERROR;
      v75 = 0;
      if (!__nwlog_fault(v30, &type, &v75))
      {
        goto LABEL_78;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_78;
        }

        v38 = *(a1 + 24);
        *buf = 136446722;
        v78 = "frame_cache_purge_if_necessary";
        v79 = 1024;
        *v80 = v23;
        *&v80[4] = 1024;
        *&v80[6] = v38;
        v34 = "%{public}s no more frames in frame cache, we thought we had %u bytes in %u frames";
      }

      else if (v75 == 1)
      {
        v39 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        v46 = os_log_type_enabled(gLogObj, type);
        if (v39)
        {
          if (v46)
          {
            v47 = *(a1 + 24);
            *buf = 136446978;
            v78 = "frame_cache_purge_if_necessary";
            v79 = 1024;
            *v80 = v23;
            *&v80[4] = 1024;
            *&v80[6] = v47;
            *&v80[10] = 2082;
            *&v80[12] = v39;
            v42 = "%{public}s no more frames in frame cache, we thought we had %u bytes in %u frames, dumping backtrace:%{public}s";
            v43 = v36;
            v44 = v37;
            v45 = 34;
            goto LABEL_65;
          }

LABEL_66:
          free(v39);
          goto LABEL_78;
        }

        if (!v46)
        {
          goto LABEL_78;
        }

        v54 = *(a1 + 24);
        *buf = 136446722;
        v78 = "frame_cache_purge_if_necessary";
        v79 = 1024;
        *v80 = v23;
        *&v80[4] = 1024;
        *&v80[6] = v54;
        v34 = "%{public}s no more frames in frame cache, we thought we had %u bytes in %u frames, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_78;
        }

        v49 = *(a1 + 24);
        *buf = 136446722;
        v78 = "frame_cache_purge_if_necessary";
        v79 = 1024;
        *v80 = v23;
        *&v80[4] = 1024;
        *&v80[6] = v49;
        v34 = "%{public}s no more frames in frame cache, we thought we had %u bytes in %u frames, backtrace limit exceeded";
      }

      v51 = v36;
      v52 = v37;
      v53 = 24;
      goto LABEL_77;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = *(a1 + 24);
    *buf = 136446978;
    v78 = "frame_cache_add_to_cache";
    v79 = 2082;
    *v80 = "frame_cache->empty_frames_count";
    *&v80[8] = 2048;
    *&v80[10] = 1;
    *&v80[18] = 2048;
    *v81 = v8;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v75 = 0;
    if (__nwlog_fault(v9, &type, &v75))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v12 = *(a1 + 24);
          *buf = 136446978;
          v78 = "frame_cache_add_to_cache";
          v79 = 2082;
          *v80 = "frame_cache->empty_frames_count";
          *&v80[8] = 2048;
          *&v80[10] = 1;
          *&v80[18] = 2048;
          *v81 = v12;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_26:
          _os_log_impl(&dword_181A37000, v10, v11, v13, buf, 0x2Au);
        }
      }

      else if (v75 == 1)
      {
        v14 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        v15 = os_log_type_enabled(gLogObj, type);
        if (v14)
        {
          if (v15)
          {
            v16 = *(a1 + 24);
            *buf = 136447234;
            v78 = "frame_cache_add_to_cache";
            v79 = 2082;
            *v80 = "frame_cache->empty_frames_count";
            *&v80[8] = 2048;
            *&v80[10] = 1;
            *&v80[18] = 2048;
            *v81 = v16;
            *&v81[8] = 2082;
            *&v81[10] = v14;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v14);
          goto LABEL_27;
        }

        if (v15)
        {
          v18 = *(a1 + 24);
          *buf = 136446978;
          v78 = "frame_cache_add_to_cache";
          v79 = 2082;
          *v80 = "frame_cache->empty_frames_count";
          *&v80[8] = 2048;
          *&v80[10] = 1;
          *&v80[18] = 2048;
          *v81 = v18;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_26;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v17 = *(a1 + 24);
          *buf = 136446978;
          v78 = "frame_cache_add_to_cache";
          v79 = 2082;
          *v80 = "frame_cache->empty_frames_count";
          *&v80[8] = 2048;
          *&v80[10] = 1;
          *&v80[18] = 2048;
          *v81 = v17;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_26;
        }
      }
    }

LABEL_27:
    if (v9)
    {
      free(v9);
    }

    *(a1 + 24) = -1;
    goto LABEL_30;
  }

  v60 = __nwlog_obj();
  *buf = 136446210;
  v78 = "nw_frame_cache_return_frame";
  v56 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s called with null frame", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v75 = 0;
  if (!__nwlog_fault(v56, &type, &v75))
  {
    goto LABEL_120;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v57 = __nwlog_obj();
    v58 = type;
    if (!os_log_type_enabled(v57, type))
    {
      goto LABEL_120;
    }

    *buf = 136446210;
    v78 = "nw_frame_cache_return_frame";
    v59 = "%{public}s called with null frame";
    goto LABEL_119;
  }

  if (v75 != 1)
  {
    v57 = __nwlog_obj();
    v58 = type;
    if (!os_log_type_enabled(v57, type))
    {
      goto LABEL_120;
    }

    *buf = 136446210;
    v78 = "nw_frame_cache_return_frame";
    v59 = "%{public}s called with null frame, backtrace limit exceeded";
    goto LABEL_119;
  }

  v71 = __nw_create_backtrace_string();
  v57 = __nwlog_obj();
  v58 = type;
  v72 = os_log_type_enabled(v57, type);
  if (!v71)
  {
    if (!v72)
    {
      goto LABEL_120;
    }

    *buf = 136446210;
    v78 = "nw_frame_cache_return_frame";
    v59 = "%{public}s called with null frame, no backtrace";
    goto LABEL_119;
  }

  if (v72)
  {
    *buf = 136446466;
    v78 = "nw_frame_cache_return_frame";
    v79 = 2082;
    *v80 = v71;
    _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v71);
  if (v56)
  {
    goto LABEL_121;
  }
}

uint64_t nw_masque_listener_add_client_demux_pattern(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((nw_protocol_metadata_is_masque_listener(a1) & 1) == 0)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_listener_add_client_demux_pattern";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata)", buf, 12);
    out[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v23) = 0;
    if (!__nwlog_fault(v9, out, &v23))
    {
      goto LABEL_27;
    }

    if (out[0] == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = out[0];
      if (!os_log_type_enabled(v10, out[0]))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_listener_add_client_demux_pattern";
      v12 = "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata)";
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = out[0];
      v14 = os_log_type_enabled(v10, out[0]);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_listener_add_client_demux_pattern";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (!v14)
      {
LABEL_27:
        if (v9)
        {
          free(v9);
        }

        return 0;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_listener_add_client_demux_pattern";
      v12 = "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata), no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = out[0];
      if (!os_log_type_enabled(v10, out[0]))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_listener_add_client_demux_pattern";
      v12 = "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_27;
  }

  if (a2 && !uuid_is_null(a3))
  {
    memset(out, 0, 37);
    uuid_unparse(a3, out);
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = __nw_masque_listener_add_client_demux_pattern_block_invoke;
    v22[3] = &unk_1E6A2F4A0;
    v22[4] = &v23;
    v22[5] = out;
    nw_protocol_metadata_access_handle(a1, v22);
    v6 = v24[3];
    if (!v6)
    {
LABEL_7:
      _Block_object_dispose(&v23, 8);
      return 0;
    }

    if (nw_protocol_metadata_is_masque_listener(a1))
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL49nw_masque_listener_add_demux_pattern_for_endpointP20nw_protocol_metadataP19nw_protocol_optionsP11nw_endpoint_block_invoke;
      v31 = &__block_descriptor_tmp_33_27434;
      v32 = a2;
      v33 = v6;
      nw_protocol_metadata_access_handle(a1, buf);
      goto LABEL_7;
    }

    v15 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_listener_add_demux_pattern_for_endpoint";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata)", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v16, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_add_demux_pattern_for_endpoint";
        v19 = "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata)";
        goto LABEL_38;
      }

      if (v27 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_add_demux_pattern_for_endpoint";
        v19 = "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata), backtrace limit exceeded";
        goto LABEL_38;
      }

      v20 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v21 = os_log_type_enabled(v17, type);
      if (v20)
      {
        if (v21)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_listener_add_demux_pattern_for_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v20;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        goto LABEL_39;
      }

      if (v21)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_add_demux_pattern_for_endpoint";
        v19 = "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata), no backtrace";
LABEL_38:
        _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
      }
    }

LABEL_39:
    if (v16)
    {
      free(v16);
    }

    goto LABEL_7;
  }

  return 0;
}

uint64_t nw_protocol_metadata_is_masque_listener(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_masque_listener_get_definition(void)::onceToken != -1)
    {
      v9 = a1;
      dispatch_once(&nw_protocol_masque_listener_get_definition(void)::onceToken, &__block_literal_global_192);
      a1 = v9;
    }

    if (nw_protocol_masque_listener_get_definition(void)::definition)
    {
      v1 = a1;
      v2 = os_retain(nw_protocol_masque_listener_get_definition(void)::definition);
      a1 = v1;
    }

    else
    {
      v2 = 0;
    }

    return nw_protocol_metadata_matches_definition(a1, v2);
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_metadata_is_masque_listener";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null metadata", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_metadata_is_masque_listener";
        v8 = "%{public}s called with null metadata";
LABEL_23:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v15 = "nw_protocol_metadata_is_masque_listener";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446210;
        v15 = "nw_protocol_metadata_is_masque_listener";
        v8 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_23;
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_metadata_is_masque_listener";
        v8 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t __nw_masque_listener_add_client_demux_pattern_block_invoke(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 2);
  v4 = *(*&a2->_os_unfair_lock_opaque + 472);
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = nw_dictionary_copy_value(v4, *(a1 + 40));
  }

  os_unfair_lock_unlock(a2 + 2);
  return 1;
}

uint64_t ___ZL49nw_masque_listener_add_demux_pattern_for_endpointP20nw_protocol_metadataP19nw_protocol_optionsP11nw_endpoint_block_invoke(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a2 + 8));
  v4 = *a2;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2000000000;
  v69 = 0;
  v5 = *(a1 + 32);
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 0x40000000;
  v65[2] = ___ZL49nw_masque_listener_add_demux_pattern_for_endpointP20nw_protocol_metadataP19nw_protocol_optionsP11nw_endpoint_block_invoke_2;
  v65[3] = &unk_1E6A2F678;
  v65[4] = &v66;
  nw_demux_options_enumerate_patterns(v5, v65);
  v6 = v67[3];
  if (!v6)
  {
    v7 = 1;
LABEL_42:
    _Block_object_dispose(&v66, 8);
    return v7;
  }

  memset(__src, 0, sizeof(__src));
  v64 = 0;
  v7 = nw_endpoint_fillout_v4v6_address(*(a1 + 40), __src);
  if ((v7 & 1) == 0)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    v73 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null success_masque", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v71 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v37, type, &v71))
    {
      goto LABEL_79;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      v73 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
      v40 = "%{public}s called with null success_masque";
    }

    else if (v71 == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type[0];
      v50 = os_log_type_enabled(v38, type[0]);
      if (backtrace_string)
      {
        if (v50)
        {
          *buf = 136446466;
          v73 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
          v74 = 2082;
          v75 = backtrace_string;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null success_masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_79;
      }

      if (!v50)
      {
LABEL_79:
        if (v37)
        {
          free(v37);
        }

        goto LABEL_42;
      }

      *buf = 136446210;
      v73 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
      v40 = "%{public}s called with null success_masque, no backtrace";
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      v73 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
      v40 = "%{public}s called with null success_masque, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
    goto LABEL_79;
  }

  v8 = 28;
  if (BYTE1(__src[0]) != 30)
  {
    v8 = 0;
  }

  if (BYTE1(__src[0]) == 2)
  {
    v9 = 16;
  }

  else
  {
    v9 = v8;
  }

  v10 = v6 + v9;
  v11 = v6 + v9 + 8;
  if (v6 + v9 == -8)
  {
    v41 = __nwlog_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    *buf = 136446210;
    v73 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
    v43 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s strict_calloc called with size 0", buf, 12);
    result = __nwlog_should_abort(v43);
    if (result)
    {
      goto LABEL_83;
    }

    free(v43);
  }

  v12 = malloc_type_calloc(1uLL, v11, 0x39E4D7DBuLL);
  if (v12)
  {
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v14 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v73 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
  if (v14)
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  v74 = 2048;
  v75 = 1;
  v76 = 2048;
  v77 = v11;
  LODWORD(v56) = 32;
  v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v56);
  result = __nwlog_should_abort(v16);
  if (!result)
  {
    free(v16);
LABEL_15:
    *type = 0;
    v60 = type;
    v61 = 0x2000000000;
    *v12 = bswap32(v10 + 6) >> 16;
    v12[2] = 2;
    *(v12 + 3) = v9 << 8;
    memcpy(v12 + 5, __src, v9);
    v18 = &v12[v9 + 5];
    *v18 = 1;
    *(v18 + 1) = bswap32(*(v67 + 12)) >> 16;
    v62 = v18 + 3;
    v19 = *(a1 + 32);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 0x40000000;
    v58[2] = ___ZL49nw_masque_listener_add_demux_pattern_for_endpointP20nw_protocol_metadataP19nw_protocol_optionsP11nw_endpoint_block_invoke_31;
    v58[3] = &unk_1E6A2F6A0;
    v58[4] = type;
    nw_demux_options_enumerate_patterns(v19, v58);
    v20 = dispatch_data_create(v12, v11, 0, 0);
    metadata_for_capsule = nw_http_create_metadata_for_capsule(16770306, v20);
    if (v4)
    {
      v22 = nw_masque_send_metadata(v4, metadata_for_capsule, *(v4 - 64));
      v23 = *(v4 + 503);
      if (v22)
      {
        if ((v23 & 0x10000) == 0)
        {
LABEL_18:
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v24 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_37;
          }

          v25 = " ";
          v26 = *(a1 + 40);
          v73 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
          v74 = 2082;
          v27 = (v4 + 507);
          *buf = 136446978;
          if (!v4)
          {
            v27 = "";
          }

          v75 = v27;
          if (!v4)
          {
            v25 = "";
          }

          v76 = 2080;
          v77 = v25;
          v78 = 2112;
          v79 = v26;
          v28 = "%{public}s %{public}s%sSent REGISTER_LISTENER_DEMUX_PATTERN capsule for endpoint %@";
          v29 = v24;
          v30 = OS_LOG_TYPE_DEBUG;
          v31 = 42;
          goto LABEL_36;
        }

LABEL_37:
        free(v12);
        if (v20)
        {
          dispatch_release(v20);
        }

        if (metadata_for_capsule)
        {
          os_release(metadata_for_capsule);
        }

        os_unfair_lock_unlock((a2 + 8));
        _Block_object_dispose(type, 8);
        goto LABEL_42;
      }

      if ((v23 & 0x10000) != 0)
      {
        goto LABEL_37;
      }

LABEL_28:
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v32 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      v33 = (v4 + 507);
      if (!v4)
      {
        v33 = "";
      }

      v34 = *(a1 + 40);
      *buf = 136446722;
      v73 = v33;
      v35 = " ";
      if (!v4)
      {
        v35 = "";
      }

      v74 = 2080;
      v75 = v35;
      v76 = 2112;
      v77 = v34;
      v28 = "%{public}s%sFailed to send REGISTER_LISTENER_DEMUX_PATTERN capsule for endpoint %@";
      v29 = v32;
      v30 = OS_LOG_TYPE_ERROR;
      v31 = 32;
LABEL_36:
      _os_log_impl(&dword_181A37000, v29, v30, v28, buf, v31);
      goto LABEL_37;
    }

    v44 = __nwlog_obj();
    *buf = 136446210;
    v73 = "__nw_protocol_get_output_handler";
    LODWORD(v56) = 12;
    v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null protocol", buf, v56);
    v71 = OS_LOG_TYPE_ERROR;
    v70 = 0;
    if (__nwlog_fault(v45, &v71, &v70))
    {
      if (v71 == OS_LOG_TYPE_FAULT)
      {
        v46 = __nwlog_obj();
        v47 = v71;
        if (!os_log_type_enabled(v46, v71))
        {
          goto LABEL_72;
        }

        *buf = 136446210;
        v73 = "__nw_protocol_get_output_handler";
        v48 = "%{public}s called with null protocol";
LABEL_70:
        v54 = v46;
        v55 = v47;
LABEL_71:
        _os_log_impl(&dword_181A37000, v54, v55, v48, buf, 0xCu);
        goto LABEL_72;
      }

      if (v70 != 1)
      {
        v46 = __nwlog_obj();
        v47 = v71;
        if (!os_log_type_enabled(v46, v71))
        {
          goto LABEL_72;
        }

        *buf = 136446210;
        v73 = "__nw_protocol_get_output_handler";
        v48 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_70;
      }

      v51 = __nw_create_backtrace_string();
      v52 = __nwlog_obj();
      v57 = v71;
      v53 = os_log_type_enabled(v52, v71);
      if (v51)
      {
        if (v53)
        {
          *buf = 136446466;
          v73 = "__nw_protocol_get_output_handler";
          v74 = 2082;
          v75 = v51;
          _os_log_impl(&dword_181A37000, v52, v57, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v51);
      }

      else if (v53)
      {
        *buf = 136446210;
        v73 = "__nw_protocol_get_output_handler";
        v48 = "%{public}s called with null protocol, no backtrace";
        v54 = v52;
        v55 = v57;
        goto LABEL_71;
      }
    }

LABEL_72:
    if (v45)
    {
      free(v45);
    }

    if (nw_masque_send_metadata(0, metadata_for_capsule, 0))
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t ___ZL49nw_masque_listener_add_demux_pattern_for_endpointP20nw_protocol_metadataP19nw_protocol_optionsP11nw_endpoint_block_invoke_2(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 32) + 8) + 24) += a2 + 4;
  if (a5)
  {
    v5 = a2 + 1;
  }

  else
  {
    v5 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) += v5;
  return 1;
}

uint64_t ___ZL49nw_masque_listener_add_demux_pattern_for_endpointP20nw_protocol_metadataP19nw_protocol_optionsP11nw_endpoint_block_invoke_31(uint64_t a1, size_t __n, __int16 a3, void *__src, const void *a5)
{
  **(*(*(a1 + 32) + 8) + 24) = __n;
  *(*(*(a1 + 32) + 8) + 24) += 2;
  **(*(*(a1 + 32) + 8) + 24) = a3;
  *(*(*(a1 + 32) + 8) + 24) += 2;
  v7 = __n;
  memcpy(*(*(*(a1 + 32) + 8) + 24), __src, __n);
  *(*(*(a1 + 32) + 8) + 24) += v7;
  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (a5)
  {
    *v8 = 1;
    memcpy(++*(*(*(a1 + 32) + 8) + 24), a5, v7);
  }

  else
  {
    *v8 = 0;
    v7 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) += v7;
  return 1;
}

uint64_t nw_protocol_masque_listener_accept(nw_protocol *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_masque_listener_accept";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null many_to_one_handler", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v20 = "nw_protocol_masque_listener_accept";
      v8 = "%{public}s called with null many_to_one_handler";
LABEL_45:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      goto LABEL_46;
    }

    if (v17 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v20 = "nw_protocol_masque_listener_accept";
      v8 = "%{public}s called with null many_to_one_handler, backtrace limit exceeded";
      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v12 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (!v12)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v20 = "nw_protocol_masque_listener_accept";
      v8 = "%{public}s called with null many_to_one_handler, no backtrace";
      goto LABEL_45;
    }

    if (v12)
    {
      *buf = 136446466;
      v20 = "nw_protocol_masque_listener_accept";
      v21 = 2082;
      v22 = backtrace_string;
      v13 = "%{public}s called with null many_to_one_handler, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v6, v7, v13, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    if (!v5)
    {
      return 0;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_masque_listener_accept";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null endpoint", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v20 = "nw_protocol_masque_listener_accept";
      v8 = "%{public}s called with null endpoint";
      goto LABEL_45;
    }

    if (v17 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v20 = "nw_protocol_masque_listener_accept";
      v8 = "%{public}s called with null endpoint, backtrace limit exceeded";
      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v14 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (!v14)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v20 = "nw_protocol_masque_listener_accept";
      v8 = "%{public}s called with null endpoint, no backtrace";
      goto LABEL_45;
    }

    if (v14)
    {
      *buf = 136446466;
      v20 = "nw_protocol_masque_listener_accept";
      v21 = 2082;
      v22 = backtrace_string;
      v13 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (a3)
  {
    return 1;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_masque_listener_accept";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null parameters", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v5, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v20 = "nw_protocol_masque_listener_accept";
      v8 = "%{public}s called with null parameters";
      goto LABEL_45;
    }

    if (v17 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v20 = "nw_protocol_masque_listener_accept";
      v8 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_45;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v16 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (!v16)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v20 = "nw_protocol_masque_listener_accept";
      v8 = "%{public}s called with null parameters, no backtrace";
      goto LABEL_45;
    }

    if (v16)
    {
      *buf = 136446466;
      v20 = "nw_protocol_masque_listener_accept";
      v21 = 2082;
      v22 = v15;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v15);
  }

LABEL_46:
  if (v5)
  {
LABEL_47:
    free(v5);
  }

  return 0;
}

char *nw_protocol_masque_listener_create(const nw_protocol_identifier *a1, nw_object *a2, nw_endpoint *a3, nw_parameters *a4)
{
  if (nw_protocol_masque_listener_identifier(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_listener_identifier(void)::onceToken, &__block_literal_global_195);
  }

  if (nw_protocol_masque_listener_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_listener_get_callbacks(void)::onceToken, &__block_literal_global_199);
  }

  v6 = nw_protocol_new(600, a4, &nw_protocol_masque_listener_identifier(void)::g_masque_protocol_identifier, &nw_protocol_masque_listener_get_callbacks(void)::g_masque_listener_callbacks);
  v7 = v6;
  v8 = v6 - 96;
  if (v6)
  {
    v9 = (v6 - 96);
  }

  else
  {
    v9 = 0;
  }

  v10 = nw_protocol_ref_counted::additional::additional(v6, v9);
  nw_protocol_ref_counted::additional::additional(v10 + 80, v9);
  nw_protocol_ref_counted::additional::additional((v7 + 160), v9);
  *(v7 + 30) = 0;
  *(v7 + 31) = v7 + 240;
  if (a3)
  {
    v11 = os_retain(a3);
  }

  else
  {
    v11 = 0;
  }

  *(v7 + 36) = v11;
  *(v7 + 60) = 1;
  *(v7 + 122) = 0;
  *(v7 + 503) |= 0x10u;
  if (!*(v7 + 58))
  {
    internal = nw_hash_table_create_internal(5u, 24, nw_protocol_get_key, nw_protocol_key_hash, nw_protocol_matches_key, nw_protocol_hash_release, nw_protocol_hash_retain);
    if (internal)
    {
      *(internal + 56) &= ~2u;
    }

    *(v7 + 58) = internal;
  }

  if (nw_parameters_get_logging_disabled(a4))
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  *(v7 + 503) = *(v7 + 503) & 0xFFFEFFFF | v13;
  if (nw_protocol_masque_listener_get_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_listener_get_definition(void)::onceToken, &__block_literal_global_192);
  }

  v14 = nw_protocol_masque_listener_get_definition(void)::definition;
  if (nw_protocol_masque_listener_get_definition(void)::definition)
  {
    v14 = os_retain(nw_protocol_masque_listener_get_definition(void)::definition);
  }

  singleton = _nw_protocol_metadata_create_singleton(v14);
  *(v7 + 56) = singleton;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = ___ZL32nw_masque_listener_set_callbacksP20nw_protocol_metadataPv_block_invoke;
  v17[3] = &__block_descriptor_tmp_56_27485;
  v17[4] = v7;
  nw_protocol_metadata_access_handle(singleton, v17);
  return v8;
}

uint64_t nw_protocol_ref_counted::additional::additional(uint64_t this, nw_protocol *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *(this + 72) = 0;
  if (a2)
  {
    *(this + 40) = &nw_protocol_ref_counted_additional_handle;
    *(this + 64) = a2;
    *(this + 72) = a2[1].identifier;
    a2[1].identifier = this;
    return this;
  }

  v2 = this;
  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "additional";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "additional";
        v7 = "%{public}s called with null protocol";
LABEL_17:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v10 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "additional";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "additional";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "additional";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v4)
  {
    free(v4);
  }

  return v2;
}

uint64_t ___ZL32nw_masque_listener_set_callbacksP20nw_protocol_metadataPv_block_invoke(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 8));
  *a2 = *(a1 + 32);
  os_unfair_lock_unlock((a2 + 8));
  return 1;
}

void ___ZL41nw_protocol_masque_listener_get_callbacksv_block_invoke()
{
  qword_1EA841BE0 = nw_protocol_default_output_available;
  qword_1EA841C58 = nw_protocol_default_output_finished;
  qword_1EA841CA0 = nw_protocol_default_input_flush;
  qword_1EA841C90 = nw_protocol_default_get_message_properties;
  qword_1EA841C00 = nw_protocol_default_link_state;
  qword_1EA841C18 = nw_protocol_default_get_local;
  qword_1EA841C10 = nw_protocol_default_get_path;
  qword_1EA841C40 = nw_protocol_default_updated_path;
  qword_1EA841C68 = nw_protocol_default_get_output_interface;
  qword_1EA841C98 = nw_protocol_default_reset;
  qword_1EA841C28 = nw_protocol_default_register_notification;
  qword_1EA841C30 = nw_protocol_default_unregister_notification;
  nw_protocol_masque_listener_get_callbacks(void)::g_masque_listener_callbacks = nw_protocol_masque_listener_add_input_handler;
  qword_1EA841BA8 = nw_protocol_masque_replace_input_handler;
  qword_1EA841BA0 = nw_protocol_masque_remove_input_handler;
  qword_1EA841BB0 = nw_protocol_masque_connect;
  qword_1EA841BC0 = nw_protocol_masque_connected;
  qword_1EA841BB8 = nw_protocol_masque_disconnect;
  qword_1EA841BC8 = nw_protocol_masque_disconnected;
  qword_1EA841BD0 = nw_protocol_masque_error;
  qword_1EA841C48 = nw_protocol_masque_supports_external_data;
  qword_1EA841C70 = nw_protocol_masque_waiting_for_output;
  qword_1EA841BF0 = nw_protocol_masque_listener_get_output_frames;
  qword_1EA841BF8 = nw_protocol_masque_listener_finalize_output_frames;
  qword_1EA841BE8 = nw_protocol_masque_listener_get_input_frames;
  qword_1EA841BD8 = nw_protocol_masque_input_available;
  qword_1EA841C50 = nw_protocol_masque_input_finished;
  qword_1EA841C20 = nw_protocol_masque_get_remote_endpoint;
  qword_1EA841C08 = nw_protocol_masque_get_parameters;
  qword_1EA841C60 = nw_protocol_masque_get_output_local_endpoint;
  qword_1EA841C78 = nw_protocol_masque_copy_info;
  qword_1EA841C38 = nw_protocol_masque_notify;
  qword_1EA841C80 = nw_protocol_masque_add_listen_handler;
  qword_1EA841C88 = nw_protocol_masque_remove_listen_handler;
}

uint64_t nw_protocol_masque_remove_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_protocol_masque_remove_listen_handler";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v26, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v39 = "nw_protocol_masque_remove_listen_handler";
          v29 = "%{public}s called with null protocol";
LABEL_73:
          _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
        }
      }

      else if (v36 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v28 = type;
        v35 = os_log_type_enabled(v27, type);
        if (backtrace_string)
        {
          if (v35)
          {
            *buf = 136446466;
            v39 = "nw_protocol_masque_remove_listen_handler";
            v40 = 2082;
            v41 = backtrace_string;
            _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_74;
        }

        if (v35)
        {
          *buf = 136446210;
          v39 = "nw_protocol_masque_remove_listen_handler";
          v29 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_73;
        }
      }

      else
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v39 = "nw_protocol_masque_remove_listen_handler";
          v29 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_73;
        }
      }
    }

LABEL_74:
    if (v26)
    {
      free(v26);
    }

    return 0;
  }

  v2 = a1;
  handle = a1->handle;
  v4 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v5 = 1;
    goto LABEL_11;
  }

  v4 = *a1[1].flow_id;
  if (v4)
  {
LABEL_6:
    callbacks = v4[1].callbacks;
    v5 = 0;
    if (callbacks)
    {
      v4[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v5 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v7 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
LABEL_18:
    if ((BYTE1(v7[9].callbacks) & 1) == 0 && gLogDatapath == 1)
    {
      v30 = a2;
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v31 = gprivacy_proxyLogObj;
      v32 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      a2 = v30;
      if (v32)
      {
        *buf = 136446978;
        v39 = "nw_protocol_masque_remove_listen_handler";
        v40 = 2082;
        v41 = &v7[9].callbacks + 3;
        v42 = 2080;
        v43 = " ";
        v44 = 2048;
        v45 = v30;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled with listen_protocol %p", buf, 0x2Au);
        a2 = v30;
      }
    }

    if (*&v7[8].flow_id[8] == a2)
    {
      *&v7[8].flow_id[8] = 0;
      a2->protocol_handler = 0;
    }

    if ((BYTE1(v7[9].callbacks) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v33 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v39 = "nw_protocol_masque_remove_listen_handler";
        v40 = 2082;
        v41 = &v7[9].callbacks + 3;
        v42 = 2080;
        v43 = " ";
        _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sremoved protocol listen handler", buf, 0x20u);
      }
    }

    result = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_38;
    }

    return result;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v7 = *a1[1].flow_id;
    goto LABEL_18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v39 = "nw_protocol_masque_remove_listen_handler";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (!__nwlog_fault(v8, &type, &v36))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v39 = "nw_protocol_masque_remove_listen_handler";
    v11 = "%{public}s called with null masque";
LABEL_33:
    v17 = v9;
    v18 = v10;
LABEL_34:
    _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
    goto LABEL_35;
  }

  if (v36 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v39 = "nw_protocol_masque_remove_listen_handler";
    v11 = "%{public}s called with null masque, backtrace limit exceeded";
    goto LABEL_33;
  }

  v13 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v15 = type;
  v16 = os_log_type_enabled(gLogObj, type);
  if (v13)
  {
    if (v16)
    {
      *buf = 136446466;
      v39 = "nw_protocol_masque_remove_listen_handler";
      v40 = 2082;
      v41 = v13;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v13);
  }

  else if (v16)
  {
    *buf = 136446210;
    v39 = "nw_protocol_masque_remove_listen_handler";
    v11 = "%{public}s called with null masque, no backtrace";
    v17 = v14;
    v18 = v15;
    goto LABEL_34;
  }

LABEL_35:
  if (v8)
  {
    free(v8);
  }

  result = 0;
  if ((v5 & 1) == 0)
  {
LABEL_38:
    v19 = v2->handle;
    if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v20 = v2[1].callbacks;
      if (v20)
      {
        v21 = (v20 - 1);
        v2[1].callbacks = v21;
        if (!v21)
        {
          v22 = result;
          v23 = *v2[1].flow_id;
          if (v23)
          {
            *v2[1].flow_id = 0;
            v23[2](v23);
            _Block_release(v23);
          }

          if (v2[1].flow_id[8])
          {
            v24 = *v2[1].flow_id;
            if (v24)
            {
              _Block_release(v24);
            }
          }

          free(v2);
          return v22;
        }
      }
    }
  }

  return result;
}

BOOL nw_protocol_masque_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2, char a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v46 = "nw_protocol_masque_add_listen_handler";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v29, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v46 = "nw_protocol_masque_add_listen_handler";
          v32 = "%{public}s called with null protocol";
LABEL_83:
          _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v30 = __nwlog_obj();
        v31 = type;
        v38 = os_log_type_enabled(v30, type);
        if (backtrace_string)
        {
          if (v38)
          {
            *buf = 136446466;
            v46 = "nw_protocol_masque_add_listen_handler";
            v47 = 2082;
            v48 = backtrace_string;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_84;
        }

        if (v38)
        {
          *buf = 136446210;
          v46 = "nw_protocol_masque_add_listen_handler";
          v32 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_83;
        }
      }

      else
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v46 = "nw_protocol_masque_add_listen_handler";
          v32 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_83;
        }
      }
    }

LABEL_84:
    if (v29)
    {
      free(v29);
    }

    return 0;
  }

  v3 = a1;
  handle = a1->handle;
  v5 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v5 = *a1[1].flow_id;
    if (!v5)
    {
      v6 = 1;
LABEL_10:
      handle = a1->handle;
      goto LABEL_11;
    }

LABEL_6:
    callbacks = v5[1].callbacks;
    v6 = 0;
    if (callbacks)
    {
      v5[1].callbacks = (&callbacks->add_input_handler + 1);
    }

    goto LABEL_10;
  }

  v6 = 1;
LABEL_11:
  v8 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v46 = "nw_protocol_masque_add_listen_handler";
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v43 = 0;
      if (__nwlog_fault(v9, &type, &v43))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446210;
            v46 = "nw_protocol_masque_add_listen_handler";
            v12 = "%{public}s called with null masque";
LABEL_40:
            v20 = v10;
            v21 = v11;
LABEL_41:
            _os_log_impl(&dword_181A37000, v20, v21, v12, buf, 0xCu);
          }
        }

        else if (v43 == 1)
        {
          v16 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type;
          v19 = os_log_type_enabled(gLogObj, type);
          if (v16)
          {
            if (v19)
            {
              *buf = 136446466;
              v46 = "nw_protocol_masque_add_listen_handler";
              v47 = 2082;
              v48 = v16;
              _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v16);
            goto LABEL_42;
          }

          if (v19)
          {
            *buf = 136446210;
            v46 = "nw_protocol_masque_add_listen_handler";
            v12 = "%{public}s called with null masque, no backtrace";
            v20 = v17;
            v21 = v18;
            goto LABEL_41;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446210;
            v46 = "nw_protocol_masque_add_listen_handler";
            v12 = "%{public}s called with null masque, backtrace limit exceeded";
            goto LABEL_40;
          }
        }
      }

LABEL_42:
      if (v9)
      {
        free(v9);
      }

      result = 0;
LABEL_45:
      if (v6)
      {
        return result;
      }

      goto LABEL_46;
    }

    v8 = *a1[1].flow_id;
  }

  if ((BYTE1(v8[9].callbacks) & 1) == 0 && gLogDatapath == 1)
  {
    v33 = a2;
    v34 = a3;
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v35 = gprivacy_proxyLogObj;
    v36 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
    a3 = v34;
    a2 = v33;
    if (v36)
    {
      *buf = 136446978;
      v46 = "nw_protocol_masque_add_listen_handler";
      v47 = 2082;
      v48 = &v8[9].callbacks + 3;
      v49 = 2080;
      v50 = " ";
      v51 = 2048;
      v52 = v33;
      _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled with listen_protocol %p", buf, 0x2Au);
      a2 = v33;
      a3 = v34;
    }
  }

  v13 = *(&v8[9].identifier + 7);
  if (*&v8[8].flow_id[8])
  {
    if ((v13 & 0x10000) != 0)
    {
      result = 0;
      if (v6)
      {
        return result;
      }

      goto LABEL_46;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v14 = gprivacy_proxyLogObj;
    result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_45;
    }

    *buf = 136446466;
    v46 = &v8[9].callbacks + 3;
    v47 = 2080;
    v48 = " ";
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s%salready have a listen handler, ignoring add", buf, 0x16u);
    result = 0;
    if (v6)
    {
      return result;
    }

LABEL_46:
    v22 = v3->handle;
    if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v23 = v3[1].callbacks;
      if (v23)
      {
        v24 = (v23 - 1);
        v3[1].callbacks = v24;
        if (!v24)
        {
          v25 = result;
          v26 = *v3[1].flow_id;
          if (v26)
          {
            *v3[1].flow_id = 0;
            v26[2](v26);
            _Block_release(v26);
          }

          if (v3[1].flow_id[8])
          {
            v27 = *v3[1].flow_id;
            if (v27)
            {
              _Block_release(v27);
            }
          }

          free(v3);
          return v25;
        }
      }
    }

    return result;
  }

  if ((v13 & 0x10000) == 0 && gLogDatapath == 1)
  {
    v39 = a2;
    v40 = a3;
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v41 = gprivacy_proxyLogObj;
    v42 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
    a3 = v40;
    a2 = v39;
    if (v42)
    {
      *buf = 136446722;
      v46 = "nw_protocol_masque_add_listen_handler";
      v47 = 2082;
      v48 = &v8[9].callbacks + 3;
      v49 = 2080;
      v50 = " ";
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sadded protocol listen handler", buf, 0x20u);
      a2 = v39;
      a3 = v40;
    }
  }

  *&v8[8].flow_id[8] = a2;
  a2->protocol_handler = v3;
  if (a3)
  {
    nw_protocol_remove_instance(v3);
  }

  result = 1;
  if ((v6 & 1) == 0)
  {
    goto LABEL_46;
  }

  return result;
}

BOOL nw_masque_setup_demux(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_masque_setup_demux";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null masque", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v14, &type, &v22))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v25 = "nw_masque_setup_demux";
      v17 = "%{public}s called with null masque";
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v19 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v25 = "nw_masque_setup_demux";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_45;
      }

      if (!v19)
      {
LABEL_45:
        if (v14)
        {
          free(v14);
        }

        return 0;
      }

      *buf = 136446210;
      v25 = "nw_masque_setup_demux";
      v17 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v25 = "nw_masque_setup_demux";
      v17 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
    goto LABEL_45;
  }

  if ((*(a1 + 506) & 2) != 0)
  {
    return 1;
  }

  v2 = *(a1 + 416);
  if (!v2)
  {
    return 0;
  }

  if (a2)
  {
    if (*(a1 + 368))
    {
      goto LABEL_9;
    }
  }

  else if (*(a1 + 376))
  {
    goto LABEL_9;
  }

  if (!*(a1 + 432))
  {
    return 0;
  }

LABEL_9:
  v3 = *(v2 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (!v4)
  {
    return 0;
  }

  v5 = (a1 + 503);
  v7 = 160;
  if (a2)
  {
    v7 = 80;
  }

  v9 = v4(*(a1 + 416), a1 + v7);
  v10 = *v5;
  if (v9)
  {
    if ((v10 & 0x10000) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v20 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v25 = "nw_masque_setup_demux";
        v26 = 2082;
        v27 = (a1 + 507);
        v28 = 2080;
        v29 = " ";
        if (a2)
        {
          v21 = "input";
        }

        else
        {
          v21 = "output";
        }

        v30 = 2082;
        v31 = v21;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAdded %{public}s demux protocol", buf, 0x2Au);
      }
    }

    return 1;
  }

  if ((v10 & 0x10000) != 0)
  {
    return 0;
  }

  if (__nwlog_privacy_proxy_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
  }

  v12 = gprivacy_proxyLogObj;
  result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v25 = (a1 + 507);
    v26 = 2080;
    v27 = " ";
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s%sFailed to add demux protocol", buf, 0x16u);
    return 0;
  }

  return result;
}

uint64_t nw_masque_setup_reverse_proxy(uint64_t a1)
{
  v95 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v72 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_setup_reverse_proxy";
    v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v72, 16, "%{public}s called with null masque", buf, 12);
    v85[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v73, v85, &type))
    {
      goto LABEL_155;
    }

    if (v85[0] == OS_LOG_TYPE_FAULT)
    {
      v74 = __nwlog_obj();
      v75 = v85[0];
      if (!os_log_type_enabled(v74, v85[0]))
      {
        goto LABEL_155;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_setup_reverse_proxy";
      v76 = "%{public}s called with null masque";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v74 = __nwlog_obj();
      v75 = v85[0];
      v78 = os_log_type_enabled(v74, v85[0]);
      if (backtrace_string)
      {
        if (v78)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_setup_reverse_proxy";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_155;
      }

      if (!v78)
      {
LABEL_155:
        if (v73)
        {
          free(v73);
        }

        return 0;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_setup_reverse_proxy";
      v76 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v74 = __nwlog_obj();
      v75 = v85[0];
      if (!os_log_type_enabled(v74, v85[0]))
      {
        goto LABEL_155;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_setup_reverse_proxy";
      v76 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v74, v75, v76, buf, 0xCu);
    goto LABEL_155;
  }

  result = nw_http_connection_metadata_get_secondary_certificate_count(*(a1 + 440));
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 503);
  if ((v3 & 0x1000000) != 0)
  {
    v5 = a1 - 96;
    while (1)
    {
      v6 = *(v5 + 16);
      if (nw_protocol_http_messaging_identifier::onceToken != -1)
      {
        v8 = *(v5 + 16);
        dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
        v6 = v8;
      }

      v7 = nw_protocols_are_equal(v6, &nw_protocol_http_messaging_identifier::protocol_identifier);
      if (v7)
      {
        break;
      }

      v5 = *(v5 + 48);
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    if ((*(a1 + 505) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v79 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        *&buf[4] = "nw_masque_setup_reverse_proxy";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 507;
        *&buf[22] = 2080;
        v92 = " ";
        LOWORD(v93) = 2048;
        *(&v93 + 2) = v5;
        _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound HTTP Messaging protocol %p", buf, 0x2Au);
      }
    }

LABEL_18:
    v9 = *(a1 - 64);
    if (v9)
    {
      while (1)
      {
        v10 = *(v9 + 2);
        if (nw_protocol_http3_identifier::onceToken != -1)
        {
          v82 = *(v9 + 2);
          dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
          v10 = v82;
        }

        if (nw_protocols_are_equal(v10, &nw_protocol_http3_identifier::http3_protocol_identifier))
        {
          break;
        }

        v9 = *(v9 + 4);
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      if ((*(a1 + 505) & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v80 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          *&buf[4] = "nw_masque_setup_reverse_proxy";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 507;
          *&buf[22] = 2080;
          v92 = " ";
          LOWORD(v93) = 2048;
          *(&v93 + 2) = v9;
          _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound HTTP protocol %p", buf, 0x2Au);
        }
      }

      v11 = 0;
    }

    else
    {
LABEL_23:
      v11 = 1;
    }

    v12 = !v7;
    v13 = *(a1 + 304);
    if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    v14 = nw_parameters_copy_protocol_options_for_definition(v13, nw_protocol_copy_http_messaging_definition_definition);
    v15 = v14;
    if (((v11 | v12) & 1) != 0 || !v14)
    {
      if ((*(a1 + 505) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v31 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = a1 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s%sFailed to find HTTP protocol, proceeding without attempting to reverse proxy", buf, 0x16u);
        }
      }

      result = 0;
      if (!v15)
      {
        return result;
      }

LABEL_126:
      v70 = result;
      os_release(v15);
      return v70;
    }

    v16 = *(a1 + 296);
    if (!v16)
    {
      if (*(a1 + 505))
      {
        result = 0;
      }

      else
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v32 = gprivacy_proxyLogObj;
        result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          *&buf[4] = a1 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, "%{public}s%sNo target endpoint, not attempting to reverse proxy", buf, 0x16u);
          result = 0;
        }
      }

      goto LABEL_126;
    }

    v17 = v16;
    hostname = _nw_endpoint_get_hostname(v17);

    port = nw_endpoint_get_port(*(a1 + 288));
    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(hostname, port);
    *v85 = 0;
    v86 = v85;
    v87 = 0x2000000000;
    v88 = 0;
    v21 = *(a1 + 440);
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 0x40000000;
    v84[2] = ___ZL29nw_masque_setup_reverse_proxyP9nw_masque_block_invoke;
    v84[3] = &unk_1E6A2F878;
    v84[5] = a1;
    v84[6] = host_with_numeric_port;
    v84[4] = v85;
    nw_http_connection_metadata_enumerate_secondary_certificates(v21, v84);
    if (host_with_numeric_port)
    {
      os_release(host_with_numeric_port);
    }

    v22 = *(a1 + 503);
    if ((v86[24] & 1) == 0)
    {
      if ((v22 & 0x10000) != 0)
      {
        goto LABEL_119;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v33 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_119;
      }

      v34 = v17;
      v35 = _nw_endpoint_get_hostname(v34);

      *buf = 136446722;
      *&buf[4] = a1 + 507;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v92 = v35;
      v36 = "%{public}s%sNo matching secondary certificates found for %s, not reverse-proxying";
      v37 = v33;
      v38 = OS_LOG_TYPE_INFO;
      v39 = 32;
      goto LABEL_118;
    }

    if ((v22 & 0x10000) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v23 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        v24 = v17;
        v25 = _nw_endpoint_get_hostname(v24);

        *buf = 136446722;
        *&buf[4] = a1 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v92 = v25;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_INFO, "%{public}s%sFound secondary certificate for %s, attempting TLS termination and restart for reverse proxy", buf, 0x20u);
      }
    }

    v26 = *(a1 + 336);
    if (v26)
    {
      nw_queue_cancel_source(v26);
      *(a1 + 336) = 0;
    }

    if (!v9)
    {
      v40 = __nwlog_obj();
      v29 = 0;
      v41 = "invalid";
      goto LABEL_65;
    }

    v27 = *(v9 + 5);
    v28 = v9;
    if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v28 = *(v9 + 8)) != 0)
    {
      v51 = *(v28 + 11);
      if (v51)
      {
        *(v28 + 11) = v51 + 1;
      }

      v29 = -1;
      v30 = *(v9 + 3);
      if (v30)
      {
LABEL_84:
        v52 = *(v30 + 224);
        if (v52)
        {
          v53 = v52(v9, 253, 0) != 0;
LABEL_96:
          if (v29)
          {
            if (v9)
            {
              v57 = *(v9 + 5);
              v58 = v9;
              if (v57 == &nw_protocol_ref_counted_handle || v57 == &nw_protocol_ref_counted_additional_handle && (v58 = *(v9 + 8)) != 0)
              {
                v59 = *(v58 + 11);
                if (v59)
                {
                  v60 = v59 - 1;
                  *(v58 + 11) = v60;
                  if (!v60)
                  {
                    v61 = *(v58 + 8);
                    if (v61)
                    {
                      *(v58 + 8) = 0;
                      v61[2](v61);
                      _Block_release(v61);
                    }

                    if (*(v58 + 72))
                    {
                      v62 = *(v58 + 8);
                      if (v62)
                      {
                        _Block_release(v62);
                      }
                    }

                    free(v58);
                  }
                }
              }
            }
          }

          if ((nw_http_messaging_options_override_version_specific_protocol(v15, v9, *(a1 + 440)) | v53))
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3802000000;
            v92 = __Block_byref_object_copy__65;
            *&v93 = __Block_byref_object_dispose__66;
            v63 = *(a1 - 56);
            v64 = a1 - 96;
            if (v63 == &nw_protocol_ref_counted_handle || v63 == &nw_protocol_ref_counted_additional_handle && (v64 = *(a1 - 32)) != 0)
            {
              v68 = *(v64 + 88);
              if (v68)
              {
                *(v64 + 88) = v68 + 1;
              }

              *(&v93 + 1) = a1 - 96;
              v65 = v94 | 1;
            }

            else
            {
              *(&v93 + 1) = a1 - 96;
              v65 = v94 & 0xFE;
            }

            v94 = v65;
            v69 = *(a1 + 312);
            v83[0] = MEMORY[0x1E69E9820];
            v83[1] = 0x40000000;
            v83[2] = ___ZL29nw_masque_setup_reverse_proxyP9nw_masque_block_invoke_67;
            v83[3] = &unk_1E6A2F8A0;
            v83[4] = buf;
            v83[5] = a1;
            nw_queue_context_async(v69, v83);
            _Block_object_dispose(buf, 8);
            nw::retained_ptr<nw_protocol *>::~retained_ptr(&v93 + 1);
            v67 = 1;
            goto LABEL_125;
          }

          if (*(a1 + 505))
          {
            goto LABEL_119;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v66 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
LABEL_119:
            v67 = 0;
LABEL_125:
            _Block_object_dispose(v85, 8);
            result = v67;
            goto LABEL_126;
          }

          *buf = 136446466;
          *&buf[4] = a1 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v36 = "%{public}s%sFailed to override persistent stack HTTP with reverse-proxying HTTP";
          v37 = v66;
          v38 = OS_LOG_TYPE_ERROR;
          v39 = 22;
LABEL_118:
          _os_log_impl(&dword_181A37000, v37, v38, v36, buf, v39);
          goto LABEL_119;
        }
      }
    }

    else
    {
      v29 = 0;
      v30 = *(v9 + 3);
      if (v30)
      {
        goto LABEL_84;
      }
    }

    v40 = __nwlog_obj();
    v41 = *(v9 + 2);
    if (!v41)
    {
      v41 = "invalid";
    }

LABEL_65:
    *buf = 136446722;
    *&buf[4] = "__nw_protocol_copy_info";
    *&buf[12] = 2082;
    *&buf[14] = v41;
    *&buf[22] = 2048;
    v92 = v9;
    v42 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s protocol %{public}s (%p) has invalid copy_info callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v89 = 0;
    if (__nwlog_fault(v42, &type, &v89))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v43, type))
        {
          v45 = "invalid";
          if (v9 && *(v9 + 2))
          {
            v45 = *(v9 + 2);
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v45;
          *&buf[22] = 2048;
          v92 = v9;
          v46 = "%{public}s protocol %{public}s (%p) has invalid copy_info callback";
LABEL_91:
          v55 = v43;
          v56 = v44;
LABEL_92:
          _os_log_impl(&dword_181A37000, v55, v56, v46, buf, 0x20u);
        }
      }

      else if (v89 == 1)
      {
        v47 = __nw_create_backtrace_string();
        v48 = __nwlog_obj();
        v81 = type;
        v49 = os_log_type_enabled(v48, type);
        if (v47)
        {
          if (v49)
          {
            v50 = "invalid";
            if (v9 && *(v9 + 2))
            {
              v50 = *(v9 + 2);
            }

            *buf = 136446978;
            *&buf[4] = "__nw_protocol_copy_info";
            *&buf[12] = 2082;
            *&buf[14] = v50;
            *&buf[22] = 2048;
            v92 = v9;
            LOWORD(v93) = 2082;
            *(&v93 + 2) = v47;
            _os_log_impl(&dword_181A37000, v48, v81, "%{public}s protocol %{public}s (%p) has invalid copy_info callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v47);
          goto LABEL_93;
        }

        if (v49)
        {
          v71 = "invalid";
          if (v9 && *(v9 + 2))
          {
            v71 = *(v9 + 2);
          }

          v56 = v81;
          *buf = 136446722;
          *&buf[4] = "__nw_protocol_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v71;
          *&buf[22] = 2048;
          v92 = v9;
          v46 = "%{public}s protocol %{public}s (%p) has invalid copy_info callback, no backtrace";
          v55 = v48;
          goto LABEL_92;
        }
      }

      else
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v43, type))
        {
          v54 = "invalid";
          if (v9 && *(v9 + 2))
          {
            v54 = *(v9 + 2);
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v54;
          *&buf[22] = 2048;
          v92 = v9;
          v46 = "%{public}s protocol %{public}s (%p) has invalid copy_info callback, backtrace limit exceeded";
          goto LABEL_91;
        }
      }
    }

LABEL_93:
    if (v42)
    {
      free(v42);
    }

    v53 = 0;
    goto LABEL_96;
  }

  if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if (__nwlog_privacy_proxy_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
  }

  v4 = gprivacy_proxyLogObj;
  result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 136446466;
    *&buf[4] = a1 + 507;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s%sHave certificates, but no HTTP in the stack identified for forwarding", buf, 0x16u);
    return 0;
  }

  return result;
}

void nw_masque_report_error_to_proxy_agent(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_masque_report_error_to_proxy_agent";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null masque", buf, 12);
    uu[0] = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v12, uu, &v21))
    {
      goto LABEL_46;
    }

    if (uu[0] == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = uu[0];
      if (!os_log_type_enabled(v13, uu[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v23 = "nw_masque_report_error_to_proxy_agent";
      v15 = "%{public}s called with null masque";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = uu[0];
      v18 = os_log_type_enabled(v13, uu[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v23 = "nw_masque_report_error_to_proxy_agent";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_46:
        if (!v12)
        {
          return;
        }

LABEL_47:
        free(v12);
        return;
      }

      if (!v18)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v23 = "nw_masque_report_error_to_proxy_agent";
      v15 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = uu[0];
      if (!os_log_type_enabled(v13, uu[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v23 = "nw_masque_report_error_to_proxy_agent";
      v15 = "%{public}s called with null masque, backtrace limit exceeded";
    }

LABEL_45:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_46;
  }

  v3 = *(a1 + 304);
  if (v3)
  {
    *uu = 0;
    *&uu[8] = 0;
    v5 = _nw_parameters_copy_effective_proxy_config(v3);
    if (v5)
    {
      v6 = v5;
      *uu = *(v6 + 56);

      os_release(v6);
    }

    is_null = uuid_is_null(uu);
    v8 = *(a1 + 503);
    if (is_null)
    {
      if ((v8 & 0x10000) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v9 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v23 = (a1 + 507);
          v24 = 2080;
          v25 = " ";
          v26 = 1024;
          v27 = a2;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s%sCannot report error %d, no proxy agent", buf, 0x1Cu);
        }
      }
    }

    else
    {
      if ((v8 & 0x10000) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v10 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
        {
          *buf = 136447234;
          v23 = (a1 + 507);
          v24 = 2080;
          v25 = " ";
          v26 = 1024;
          v27 = a2;
          v28 = 1042;
          v29 = 16;
          v30 = 2098;
          v31 = uu;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s%sReporting error %d to proxy agent %{public, uuid_t}.16P", buf, 0x2Cu);
        }
      }

      nw_path_report_error_to_agent(*(a1 + 320), uu, a2);
    }

    return;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_masque_report_error_to_proxy_agent";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null masque->parameters", buf, 12);
  uu[0] = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v12, uu, &v21))
  {
    goto LABEL_46;
  }

  if (uu[0] == OS_LOG_TYPE_FAULT)
  {
    v13 = __nwlog_obj();
    v14 = uu[0];
    if (!os_log_type_enabled(v13, uu[0]))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v23 = "nw_masque_report_error_to_proxy_agent";
    v15 = "%{public}s called with null masque->parameters";
    goto LABEL_45;
  }

  if (v21 != 1)
  {
    v13 = __nwlog_obj();
    v14 = uu[0];
    if (!os_log_type_enabled(v13, uu[0]))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v23 = "nw_masque_report_error_to_proxy_agent";
    v15 = "%{public}s called with null masque->parameters, backtrace limit exceeded";
    goto LABEL_45;
  }

  v19 = __nw_create_backtrace_string();
  v13 = __nwlog_obj();
  v14 = uu[0];
  v20 = os_log_type_enabled(v13, uu[0]);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v23 = "nw_masque_report_error_to_proxy_agent";
    v15 = "%{public}s called with null masque->parameters, no backtrace";
    goto LABEL_45;
  }

  if (v20)
  {
    *buf = 136446466;
    v23 = "nw_masque_report_error_to_proxy_agent";
    v24 = 2082;
    v25 = v19;
    _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null masque->parameters, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v12)
  {
    goto LABEL_47;
  }
}

uint64_t ___ZL29nw_masque_setup_reverse_proxyP9nw_masque_block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if ((!v4 || (*(v4 + 505) & 1) == 0) && gLogDatapath == 1)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v7 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 40);
      v9 = v8 == 0;
      if (v8)
      {
        v10 = (v8 + 507);
      }

      else
      {
        v10 = "";
      }

      v12 = 136446978;
      v13 = "nw_masque_setup_reverse_proxy_block_invoke";
      v14 = 2082;
      v15 = v10;
      if (v9)
      {
        v11 = "";
      }

      else
      {
        v11 = " ";
      }

      v16 = 2080;
      v17 = v11;
      v18 = 2112;
      v19 = a2;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sChecking secondary certificate %@ to join for reverse-proxying", &v12, 0x2Au);
    }
  }

  is_equal = nw_endpoint_is_equal(a2, *(a1 + 48), 0);
  if (is_equal)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return is_equal ^ 1u;
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

void ___ZL29nw_masque_setup_reverse_proxyP9nw_masque_block_invoke_67(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  if (nw_protocol_is_zombie(*(*(*(a1 + 32) + 8) + 40)))
  {
    return;
  }

  v2 = *(a1 + 40);
  if (!v2 || (*(v2 + 505) & 1) == 0)
  {
    if (gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v37 = gprivacy_proxyLogObj;
      v38 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      v2 = *(a1 + 40);
      if (v38)
      {
        v39 = "";
        v40 = (v2 + 507);
        if (!v2)
        {
          v40 = "";
        }

        *buf = 136446722;
        v58 = "nw_masque_setup_reverse_proxy_block_invoke";
        if (v2)
        {
          v39 = " ";
        }

        v59 = 2082;
        v60 = v40;
        v61 = 2080;
        v62 = v39;
        _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRestarting HTTP request stack for reverse proxy", buf, 0x20u);
        v2 = *(a1 + 40);
      }
    }

    if (!v2)
    {
      v32 = __nwlog_obj();
      *buf = 136446210;
      v58 = "__nw_protocol_get_input_handler";
      v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null protocol", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v55 = 0;
      if (!__nwlog_fault(v33, &type, &v55))
      {
        goto LABEL_97;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v35 = type;
        if (!os_log_type_enabled(v34, type))
        {
          goto LABEL_97;
        }

        *buf = 136446210;
        v58 = "__nw_protocol_get_input_handler";
        v36 = "%{public}s called with null protocol";
      }

      else if (v55 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v34 = __nwlog_obj();
        v35 = type;
        v45 = os_log_type_enabled(v34, type);
        if (backtrace_string)
        {
          if (v45)
          {
            *buf = 136446466;
            v58 = "__nw_protocol_get_input_handler";
            v59 = 2082;
            v60 = backtrace_string;
            _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_97;
        }

        if (!v45)
        {
LABEL_97:
          if (v33)
          {
            free(v33);
          }

LABEL_99:
          v48 = __nwlog_obj();
          *buf = 136446210;
          v58 = "__nw_protocol_notify";
          LODWORD(v54) = 12;
          v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null protocol", buf, v54);
          type = OS_LOG_TYPE_ERROR;
          v55 = 0;
          if (!__nwlog_fault(v3, &type, &v55))
          {
            goto LABEL_114;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v49 = __nwlog_obj();
            v50 = type;
            if (!os_log_type_enabled(v49, type))
            {
              goto LABEL_114;
            }

            *buf = 136446210;
            v58 = "__nw_protocol_notify";
            v51 = "%{public}s called with null protocol";
          }

          else if (v55 == 1)
          {
            v52 = __nw_create_backtrace_string();
            v49 = __nwlog_obj();
            v50 = type;
            v53 = os_log_type_enabled(v49, type);
            if (v52)
            {
              if (v53)
              {
                *buf = 136446466;
                v58 = "__nw_protocol_notify";
                v59 = 2082;
                v60 = v52;
                _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v52);
              if (v3)
              {
                goto LABEL_47;
              }

              return;
            }

            if (!v53)
            {
LABEL_114:
              if (!v3)
              {
                return;
              }

              goto LABEL_47;
            }

            *buf = 136446210;
            v58 = "__nw_protocol_notify";
            v51 = "%{public}s called with null protocol, no backtrace";
          }

          else
          {
            v49 = __nwlog_obj();
            v50 = type;
            if (!os_log_type_enabled(v49, type))
            {
              goto LABEL_114;
            }

            *buf = 136446210;
            v58 = "__nw_protocol_notify";
            v51 = "%{public}s called with null protocol, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0xCu);
          goto LABEL_114;
        }

        *buf = 136446210;
        v58 = "__nw_protocol_get_input_handler";
        v36 = "%{public}s called with null protocol, no backtrace";
      }

      else
      {
        v34 = __nwlog_obj();
        v35 = type;
        if (!os_log_type_enabled(v34, type))
        {
          goto LABEL_97;
        }

        *buf = 136446210;
        v58 = "__nw_protocol_get_input_handler";
        v36 = "%{public}s called with null protocol, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
      goto LABEL_97;
    }
  }

  v3 = *(v2 - 48);
  if (!v3)
  {
    goto LABEL_99;
  }

  v4 = v2 - 96;
  v5 = *(v3 + 40);
  v6 = *(v2 - 48);
  if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v3 + 64)) != 0)
  {
    v8 = *(v6 + 88);
    v7 = 0;
    if (v8)
    {
      *(v6 + 88) = v8 + 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v9 = *(v2 - 56);
  v10 = v2 - 96;
  if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v10 = *(v2 - 32)) != 0)
  {
    v13 = *(v10 + 88);
    if (v13)
    {
      v11 = 0;
      *(v10 + 88) = v13 + 1;
      v12 = *(v3 + 24);
      if (!v12)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v11 = 0;
      v12 = *(v3 + 24);
      if (!v12)
      {
        goto LABEL_49;
      }
    }
  }

  else
  {
    v11 = 1;
    v12 = *(v3 + 24);
    if (!v12)
    {
      goto LABEL_49;
    }
  }

  v14 = *(v12 + 160);
  if (v14)
  {
    v14(v3, v2 - 96, 25, 0, 1);
    goto LABEL_24;
  }

LABEL_49:
  v25 = __nwlog_obj();
  v26 = *(v3 + 16);
  *buf = 136446722;
  v58 = "__nw_protocol_notify";
  if (!v26)
  {
    v26 = "invalid";
  }

  v59 = 2082;
  v60 = v26;
  v61 = 2048;
  v62 = v3;
  v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s protocol %{public}s (%p) has invalid notify callback", buf, 32);
  type = OS_LOG_TYPE_ERROR;
  v55 = 0;
  if (!__nwlog_fault(v27, &type, &v55))
  {
    goto LABEL_92;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v28 = __nwlog_obj();
    v29 = type;
    if (!os_log_type_enabled(v28, type))
    {
      goto LABEL_92;
    }

    v30 = *(v3 + 16);
    if (!v30)
    {
      v30 = "invalid";
    }

    *buf = 136446722;
    v58 = "__nw_protocol_notify";
    v59 = 2082;
    v60 = v30;
    v61 = 2048;
    v62 = v3;
    v31 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
    goto LABEL_91;
  }

  if (v55 != 1)
  {
    v28 = __nwlog_obj();
    v29 = type;
    if (!os_log_type_enabled(v28, type))
    {
      goto LABEL_92;
    }

    v46 = *(v3 + 16);
    if (!v46)
    {
      v46 = "invalid";
    }

    *buf = 136446722;
    v58 = "__nw_protocol_notify";
    v59 = 2082;
    v60 = v46;
    v61 = 2048;
    v62 = v3;
    v31 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
    goto LABEL_91;
  }

  v41 = __nw_create_backtrace_string();
  v28 = __nwlog_obj();
  v29 = type;
  v42 = os_log_type_enabled(v28, type);
  if (v41)
  {
    if (v42)
    {
      v43 = *(v3 + 16);
      if (!v43)
      {
        v43 = "invalid";
      }

      *buf = 136446978;
      v58 = "__nw_protocol_notify";
      v59 = 2082;
      v60 = v43;
      v61 = 2048;
      v62 = v3;
      v63 = 2082;
      v64 = v41;
      _os_log_impl(&dword_181A37000, v28, v29, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v41);
    goto LABEL_92;
  }

  if (v42)
  {
    v47 = *(v3 + 16);
    if (!v47)
    {
      v47 = "invalid";
    }

    *buf = 136446722;
    v58 = "__nw_protocol_notify";
    v59 = 2082;
    v60 = v47;
    v61 = 2048;
    v62 = v3;
    v31 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
LABEL_91:
    _os_log_impl(&dword_181A37000, v28, v29, v31, buf, 0x20u);
  }

LABEL_92:
  if (v27)
  {
    free(v27);
  }

LABEL_24:
  if ((v11 & 1) == 0)
  {
    v15 = *(v2 - 56);
    if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v2 - 32)) != 0)
    {
      v16 = *(v4 + 88);
      if (v16)
      {
        v17 = v16 - 1;
        *(v4 + 88) = v17;
        if (!v17)
        {
          v18 = *(v4 + 64);
          if (v18)
          {
            *(v4 + 64) = 0;
            v18[2](v18);
            _Block_release(v18);
          }

          if (*(v4 + 72))
          {
            v19 = *(v4 + 64);
            if (v19)
            {
              _Block_release(v19);
            }
          }

          free(v4);
        }
      }
    }
  }

  if ((v7 & 1) == 0)
  {
    v20 = *(v3 + 40);
    if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
    {
      v21 = *(v3 + 88);
      if (v21)
      {
        v22 = v21 - 1;
        *(v3 + 88) = v22;
        if (!v22)
        {
          v23 = *(v3 + 64);
          if (v23)
          {
            *(v3 + 64) = 0;
            v23[2](v23);
            _Block_release(v23);
          }

          if (*(v3 + 72))
          {
            v24 = *(v3 + 64);
            if (v24)
            {
              _Block_release(v24);
            }
          }

LABEL_47:
          free(v3);
        }
      }
    }
  }
}

BOOL ___ZL39nw_protocol_masque_reset_demux_protocolP11nw_protocol_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 432);
    *(*(a1 + 32) + 432) = nw_protocol_options_copy(*(a1 + 40));
    if (v3)
    {
      os_release(v3);
    }
  }

  return a2 == 0;
}

void nw_masque_setup_server_connect(uint64_t a1)
{
  v127 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v71 = __nwlog_obj();
    *buf = 136446210;
    v118 = "nw_masque_setup_server_connect";
    v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v71, 16, "%{public}s called with null masque", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v115 = 0;
    if (!__nwlog_fault(v72, &type, &v115))
    {
      goto LABEL_244;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (!os_log_type_enabled(v73, type))
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v118 = "nw_masque_setup_server_connect";
      v75 = "%{public}s called with null masque";
    }

    else if (v115 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = type;
      v78 = os_log_type_enabled(v73, type);
      if (backtrace_string)
      {
        if (v78)
        {
          *buf = 136446466;
          v118 = "nw_masque_setup_server_connect";
          v119 = 2082;
          v120 = backtrace_string;
          _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_244:
        if (!v72)
        {
          return;
        }

LABEL_245:
        v70 = v72;
LABEL_139:
        free(v70);
        return;
      }

      if (!v78)
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v118 = "nw_masque_setup_server_connect";
      v75 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (!os_log_type_enabled(v73, type))
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v118 = "nw_masque_setup_server_connect";
      v75 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    goto LABEL_243;
  }

  v1 = a1;
  if (!*(a1 + 304))
  {
    v76 = __nwlog_obj();
    *buf = 136446210;
    v118 = "nw_masque_setup_server_connect";
    v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v76, 16, "%{public}s called with null masque->parameters", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v115 = 0;
    if (!__nwlog_fault(v72, &type, &v115))
    {
      goto LABEL_244;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (!os_log_type_enabled(v73, type))
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v118 = "nw_masque_setup_server_connect";
      v75 = "%{public}s called with null masque->parameters";
    }

    else if (v115 == 1)
    {
      v79 = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = type;
      v80 = os_log_type_enabled(v73, type);
      if (v79)
      {
        if (!v80)
        {
          goto LABEL_158;
        }

        *buf = 136446466;
        v118 = "nw_masque_setup_server_connect";
        v119 = 2082;
        v120 = v79;
        v81 = "%{public}s called with null masque->parameters, dumping backtrace:%{public}s";
        goto LABEL_157;
      }

      if (!v80)
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v118 = "nw_masque_setup_server_connect";
      v75 = "%{public}s called with null masque->parameters, no backtrace";
    }

    else
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (!os_log_type_enabled(v73, type))
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v118 = "nw_masque_setup_server_connect";
      v75 = "%{public}s called with null masque->parameters, backtrace limit exceeded";
    }

LABEL_243:
    _os_log_impl(&dword_181A37000, v73, v74, v75, buf, 0xCu);
    goto LABEL_244;
  }

  if (!*(a1 + 376) || *(a1 + 488))
  {
    return;
  }

  v2 = *(a1 - 64);
  if (!v2)
  {
LABEL_15:
    if (*(v1 + 505))
    {
      return;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v5 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v118 = v1 + 507;
    v119 = 2080;
    v120 = " ";
    v6 = "%{public}s%sFailed to find HTTP protocol";
    goto LABEL_102;
  }

  v113 = (a1 - 96);
  while (1)
  {
    v3 = *(v2 + 16);
    if (nw_protocol_http3_identifier::onceToken != -1)
    {
      v111 = *(v2 + 16);
      dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
      v3 = v111;
    }

    if (nw_protocols_are_equal(v3, &nw_protocol_http3_identifier::http3_protocol_identifier))
    {
      break;
    }

    v4 = *(v2 + 16);
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      v112 = *(v2 + 16);
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
      v4 = v112;
    }

    if (nw_protocols_are_equal(v4, &nw_protocol_http2_identifier::http2_protocol_identifier))
    {
      break;
    }

    v2 = *(v2 + 32);
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  if ((*(v1 + 505) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v88 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v118 = "nw_masque_setup_server_connect";
      v119 = 2082;
      v120 = v1 + 507;
      v121 = 2080;
      v122 = " ";
      v123 = 2048;
      v124 = v2;
      _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound HTTP protocol %p", buf, 0x2Au);
    }
  }

  v7 = *(v2 + 24);
  if (!v7 || !*v7 || !v7[3])
  {
    return;
  }

  if (!v1[50])
  {
    v8 = v7[14];
    if (v8)
    {
      v9 = *(v2 + 40);
      v10 = v2;
      if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v10 = *(v2 + 64)) != 0)
      {
        v12 = *(v10 + 88);
        if (v12)
        {
          *(v10 + 88) = v12 + 1;
        }

        v11 = v8(v2);
        v13 = *(v2 + 40);
        v14 = v2;
        if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *(v2 + 64)) != 0)
        {
          v15 = *(v14 + 88);
          if (v15)
          {
            v16 = v15 - 1;
            *(v14 + 88) = v16;
            if (!v16)
            {
              v17 = v11;
              v18 = *(v14 + 64);
              if (v18)
              {
                *(v14 + 64) = 0;
                v18[2](v18);
                _Block_release(v18);
              }

              if (*(v14 + 72))
              {
                v19 = *(v14 + 64);
                if (v19)
                {
                  _Block_release(v19);
                }
              }

              free(v14);
              v11 = v17;
            }
          }
        }
      }

      else
      {
        v11 = v8(v2);
      }

      v1[50] = _nw_parameters_shallow_copy(v11, 1);
    }
  }

  v20 = *(v1 - 6);
  v21 = v1[6];
  if (v21 != v20)
  {
    nw_protocol_release(v21);
    v1[6] = v20;
    if (v20)
    {
      v22 = v20[5];
      if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v20 = v20[8]) != 0)
      {
        v23 = v20[11];
        if (v23)
        {
          v20[11] = v23 + 1;
        }
      }
    }
  }

  *v1 = *v113;
  v24 = *(v2 + 40);
  v25 = v2;
  if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v25 = *(v2 + 64)) != 0)
  {
    v27 = *(v25 + 88);
    v26 = 0;
    if (v27)
    {
      *(v25 + 88) = v27 + 1;
    }
  }

  else
  {
    v26 = 1;
  }

  v28 = v1[5];
  v29 = v1;
  if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (v29 = v1[8]) != 0)
  {
    v31 = v29[11];
    v30 = 0;
    if (v31)
    {
      v29[11] = v31 + 1;
    }
  }

  else
  {
    v30 = 1;
  }

  v32 = *(v2 + 24);
  if (v32)
  {
    v33 = *v32;
    if (v33)
    {
      v34 = v33(v2, v1);
      if (v30)
      {
        goto LABEL_78;
      }

      goto LABEL_67;
    }
  }

  v82 = __nwlog_obj();
  v83 = *(v2 + 16);
  *buf = 136446722;
  v118 = "__nw_protocol_add_input_handler";
  if (!v83)
  {
    v83 = "invalid";
  }

  v119 = 2082;
  v120 = v83;
  v121 = 2048;
  v122 = v2;
  type = OS_LOG_TYPE_ERROR;
  v115 = 0;
  v114 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v82, 16, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback", buf, 32);
  if (__nwlog_fault(v114, &type, &v115))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v84 = __nwlog_obj();
      v85 = type;
      if (!os_log_type_enabled(v84, type))
      {
        goto LABEL_228;
      }

      v86 = *(v2 + 16);
      if (!v86)
      {
        v86 = "invalid";
      }

      *buf = 136446722;
      v118 = "__nw_protocol_add_input_handler";
      v119 = 2082;
      v120 = v86;
      v121 = 2048;
      v122 = v2;
      v87 = "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback";
LABEL_227:
      _os_log_impl(&dword_181A37000, v84, v85, v87, buf, 0x20u);
      goto LABEL_228;
    }

    if (v115 != 1)
    {
      v84 = __nwlog_obj();
      v85 = type;
      if (!os_log_type_enabled(v84, type))
      {
        goto LABEL_228;
      }

      v102 = *(v2 + 16);
      if (!v102)
      {
        v102 = "invalid";
      }

      *buf = 136446722;
      v118 = "__nw_protocol_add_input_handler";
      v119 = 2082;
      v120 = v102;
      v121 = 2048;
      v122 = v2;
      v87 = "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, backtrace limit exceeded";
      goto LABEL_227;
    }

    v96 = __nw_create_backtrace_string();
    v84 = __nwlog_obj();
    v85 = type;
    v97 = os_log_type_enabled(v84, type);
    if (!v96)
    {
      if (!v97)
      {
        goto LABEL_228;
      }

      v108 = *(v2 + 16);
      if (!v108)
      {
        v108 = "invalid";
      }

      *buf = 136446722;
      v118 = "__nw_protocol_add_input_handler";
      v119 = 2082;
      v120 = v108;
      v121 = 2048;
      v122 = v2;
      v87 = "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, no backtrace";
      goto LABEL_227;
    }

    if (v97)
    {
      if (*(v2 + 16))
      {
        v98 = *(v2 + 16);
      }

      else
      {
        v98 = "invalid";
      }

      *buf = 136446978;
      v118 = "__nw_protocol_add_input_handler";
      v119 = 2082;
      v120 = v98;
      v121 = 2048;
      v122 = v2;
      v123 = 2082;
      v124 = v96;
      _os_log_impl(&dword_181A37000, v84, v85, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v96);
  }

LABEL_228:
  if (v114)
  {
    free(v114);
  }

  v34 = 0;
  if ((v30 & 1) == 0)
  {
LABEL_67:
    v35 = v1[5];
    v36 = v1;
    if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v36 = v1[8]) != 0)
    {
      v37 = v36[11];
      if (v37)
      {
        v38 = v37 - 1;
        v36[11] = v38;
        if (!v38)
        {
          v39 = v34;
          v40 = v36[8];
          if (v40)
          {
            v36[8] = 0;
            v40[2](v40);
            _Block_release(v40);
          }

          if (v36[9])
          {
            v41 = v36[8];
            if (v41)
            {
              _Block_release(v41);
            }
          }

          free(v36);
          v34 = v39;
        }
      }
    }
  }

LABEL_78:
  if ((v26 & 1) == 0)
  {
    v42 = *(v2 + 40);
    if (v42 == &nw_protocol_ref_counted_handle || v42 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
    {
      v43 = *(v2 + 88);
      if (v43)
      {
        v44 = v43 - 1;
        *(v2 + 88) = v44;
        if (!v44)
        {
          v45 = v34;
          v46 = *(v2 + 64);
          if (v46)
          {
            *(v2 + 64) = 0;
            v46[2](v46);
            _Block_release(v46);
          }

          if (*(v2 + 72))
          {
            v47 = *(v2 + 64);
            if (v47)
            {
              _Block_release(v47);
            }
          }

          free(v2);
          v34 = v45;
        }
      }
    }
  }

  v48 = *(v1 + 503);
  if ((v34 & 1) == 0)
  {
    if ((v48 & 0x10000) != 0)
    {
      return;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v5 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v118 = v1 + 507;
    v119 = 2080;
    v120 = " ";
    v6 = "%{public}s%sFailed to add server connect stream";
LABEL_102:
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x16u);
    return;
  }

  if ((v48 & 0x10000) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v100 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      v101 = v1[4];
      *buf = 136447234;
      v118 = "nw_masque_setup_server_connect";
      v119 = 2082;
      v120 = v1 + 507;
      v121 = 2080;
      v122 = " ";
      v123 = 2048;
      v124 = v1;
      v125 = 2048;
      v126 = v101;
      _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sserver_connect_protocol %p output_handler %p", buf, 0x34u);
    }
  }

  v49 = v1[4];
  if (!v49)
  {
    v99 = __nwlog_obj();
    *buf = 136446210;
    v118 = "__nw_protocol_connect";
    LODWORD(v110) = 12;
    v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v99, 16, "%{public}s called with null protocol", buf, v110);
    type = OS_LOG_TYPE_ERROR;
    v115 = 0;
    if (!__nwlog_fault(v72, &type, &v115))
    {
      goto LABEL_244;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (!os_log_type_enabled(v73, type))
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v118 = "__nw_protocol_connect";
      v75 = "%{public}s called with null protocol";
      goto LABEL_243;
    }

    if (v115 != 1)
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (!os_log_type_enabled(v73, type))
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v118 = "__nw_protocol_connect";
      v75 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_243;
    }

    v79 = __nw_create_backtrace_string();
    v73 = __nwlog_obj();
    v74 = type;
    v106 = os_log_type_enabled(v73, type);
    if (!v79)
    {
      if (!v106)
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v118 = "__nw_protocol_connect";
      v75 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_243;
    }

    if (!v106)
    {
LABEL_158:
      free(v79);
      if (!v72)
      {
        return;
      }

      goto LABEL_245;
    }

    *buf = 136446466;
    v118 = "__nw_protocol_connect";
    v119 = 2082;
    v120 = v79;
    v81 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_157:
    _os_log_impl(&dword_181A37000, v73, v74, v81, buf, 0x16u);
    goto LABEL_158;
  }

  v50 = *(v49 + 40);
  v51 = v1[4];
  if (v50 == &nw_protocol_ref_counted_handle || v50 == &nw_protocol_ref_counted_additional_handle && (v51 = *(v49 + 64)) != 0)
  {
    v53 = *(v51 + 88);
    v52 = 0;
    if (v53)
    {
      *(v51 + 88) = v53 + 1;
    }
  }

  else
  {
    v52 = 1;
  }

  v54 = v1[5];
  v55 = v1;
  if (v54 == &nw_protocol_ref_counted_handle || v54 == &nw_protocol_ref_counted_additional_handle && (v55 = v1[8]) != 0)
  {
    v57 = v55[11];
    v56 = 0;
    if (v57)
    {
      v55[11] = v57 + 1;
    }
  }

  else
  {
    v56 = 1;
  }

  v58 = *(v49 + 24);
  if (v58)
  {
    v59 = *(v58 + 24);
    if (v59)
    {
      v59(v49, v1);
      goto LABEL_115;
    }
  }

  v89 = __nwlog_obj();
  v90 = *(v49 + 16);
  *buf = 136446722;
  v118 = "__nw_protocol_connect";
  if (!v90)
  {
    v90 = "invalid";
  }

  v119 = 2082;
  v120 = v90;
  v121 = 2048;
  v122 = v49;
  LODWORD(v110) = 32;
  v91 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v89, 16, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, v110);
  type = OS_LOG_TYPE_ERROR;
  v115 = 0;
  if (__nwlog_fault(v91, &type, &v115))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v92 = __nwlog_obj();
      v93 = type;
      if (!os_log_type_enabled(v92, type))
      {
        goto LABEL_239;
      }

      v94 = *(v49 + 16);
      if (!v94)
      {
        v94 = "invalid";
      }

      *buf = 136446722;
      v118 = "__nw_protocol_connect";
      v119 = 2082;
      v120 = v94;
      v121 = 2048;
      v122 = v49;
      v95 = "%{public}s protocol %{public}s (%p) has invalid connect callback";
      goto LABEL_238;
    }

    if (v115 != 1)
    {
      v92 = __nwlog_obj();
      v93 = type;
      if (!os_log_type_enabled(v92, type))
      {
        goto LABEL_239;
      }

      v107 = *(v49 + 16);
      if (!v107)
      {
        v107 = "invalid";
      }

      *buf = 136446722;
      v118 = "__nw_protocol_connect";
      v119 = 2082;
      v120 = v107;
      v121 = 2048;
      v122 = v49;
      v95 = "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded";
      goto LABEL_238;
    }

    v103 = __nw_create_backtrace_string();
    v92 = __nwlog_obj();
    v93 = type;
    v104 = os_log_type_enabled(v92, type);
    if (v103)
    {
      if (v104)
      {
        v105 = *(v49 + 16);
        if (!v105)
        {
          v105 = "invalid";
        }

        *buf = 136446978;
        v118 = "__nw_protocol_connect";
        v119 = 2082;
        v120 = v105;
        v121 = 2048;
        v122 = v49;
        v123 = 2082;
        v124 = v103;
        _os_log_impl(&dword_181A37000, v92, v93, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v103);
      goto LABEL_239;
    }

    if (v104)
    {
      v109 = *(v49 + 16);
      if (!v109)
      {
        v109 = "invalid";
      }

      *buf = 136446722;
      v118 = "__nw_protocol_connect";
      v119 = 2082;
      v120 = v109;
      v121 = 2048;
      v122 = v49;
      v95 = "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace";
LABEL_238:
      _os_log_impl(&dword_181A37000, v92, v93, v95, buf, 0x20u);
    }
  }

LABEL_239:
  if (v91)
  {
    free(v91);
  }

LABEL_115:
  if ((v56 & 1) == 0)
  {
    v60 = v1[5];
    if (v60 == &nw_protocol_ref_counted_handle || v60 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
    {
      v61 = v1[11];
      if (v61)
      {
        v62 = v61 - 1;
        v1[11] = v62;
        if (!v62)
        {
          v63 = v1[8];
          if (v63)
          {
            v1[8] = 0;
            v63[2](v63);
            _Block_release(v63);
          }

          if (v1[9])
          {
            v64 = v1[8];
            if (v64)
            {
              _Block_release(v64);
            }
          }

          free(v1);
        }
      }
    }
  }

  if ((v52 & 1) == 0)
  {
    v65 = *(v49 + 40);
    if (v65 == &nw_protocol_ref_counted_handle || v65 == &nw_protocol_ref_counted_additional_handle && (v49 = *(v49 + 64)) != 0)
    {
      v66 = *(v49 + 88);
      if (v66)
      {
        v67 = v66 - 1;
        *(v49 + 88) = v67;
        if (!v67)
        {
          v68 = *(v49 + 64);
          if (v68)
          {
            *(v49 + 64) = 0;
            v68[2](v68);
            _Block_release(v68);
          }

          if (*(v49 + 72))
          {
            v69 = *(v49 + 64);
            if (v69)
            {
              _Block_release(v69);
            }
          }

          v70 = v49;
          goto LABEL_139;
        }
      }
    }
  }
}

uint64_t nw_masque_create_connection_id_capsule(NSObject *a1, dispatch_data_s *a2, dispatch_data_s *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  size = dispatch_data_get_size(a1);
  v5 = size;
  __src = 0;
  if (size > 0x3F)
  {
    if (size >> 14)
    {
      if (size >> 30)
      {
        if (size >> 62)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v7 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v8 = 3;
          }

          else
          {
            v8 = 2;
          }

          *applier = 136446466;
          *&applier[4] = "_http_vle_encode";
          *&applier[12] = 2048;
          *&applier[14] = v5;
          v13 = 22;
          v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s unable to encode value: %llu", applier, v13);
          result = __nwlog_should_abort(v9);
          if (result)
          {
            __break(1u);
            return result;
          }

          free(v9);
          v6 = 0;
        }

        else
        {
          __src = bswap64(size | 0xC000000000000000);
          v6 = 8;
        }
      }

      else
      {
        __src = bswap32(size | 0x80000000);
        v6 = 4;
      }
    }

    else
    {
      __src = bswap32(size | 0x4000) >> 16;
      v6 = 2;
    }
  }

  else
  {
    __src = size;
    v6 = 1;
  }

  alloc = dispatch_data_create_alloc();
  memcpy(0, &__src, v6);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v16[3] = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v15[3] = v6;
  if (a1)
  {
    *applier = MEMORY[0x1E69E9820];
    *&applier[8] = 0x40000000;
    *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
    v18 = &unk_1E6A34348;
    v20 = v15;
    v21 = v5;
    v19 = v16;
    dispatch_data_apply(a1, applier);
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
  *(v6 + v5) = 0;
  result = nw_http_create_metadata_for_capsule(16770049, alloc);
  if (alloc)
  {
    v12 = result;
    dispatch_release(alloc);
    return v12;
  }

  return result;
}

uint64_t ___ZL35nw_protocol_masque_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_139(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v3 = nw_frame_unclaimed_bytes(a2, &v18);
  if (v3)
  {
    v4 = v18;
    if (v18)
    {
      v5 = *(a1 + 32);
      if (*(v5 + 368))
      {
        v6 = *(v5 + 384);
        if (v6)
        {
          v7 = v3;
          size = dispatch_data_get_size(*(v5 + 368));
          if (size + 1 < v4)
          {
            v9 = size;
            if (dispatch_data_get_size(v6) == size && *v7 >= 64)
            {
              v10 = dispatch_data_create(v7 + 1, v9, 0, *MEMORY[0x1E69E9658]);
              if (nw_dispatch_data_is_equal(v10, *(*(a1 + 32) + 384)))
              {
                nw_dispatch_data_copyout(*(*(a1 + 32) + 368), (v7 + 1), v9);
                v11 = *(a1 + 32);
                if ((!v11 || (*(v11 + 505) & 1) == 0) && gLogDatapath == 1)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v13 = gprivacy_proxyLogObj;
                  if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    v14 = *(a1 + 32);
                    v15 = "";
                    v16 = v14 == 0;
                    if (v14)
                    {
                      v17 = (v14 + 507);
                    }

                    else
                    {
                      v17 = "";
                    }

                    *buf = 136446722;
                    v20 = "nw_protocol_masque_get_input_frames_block_invoke";
                    if (!v16)
                    {
                      v15 = " ";
                    }

                    v21 = 2082;
                    v22 = v17;
                    v23 = 2080;
                    v24 = v15;
                    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReplacing with real client CID before processing", buf, 0x20u);
                  }
                }
              }

              if (v10)
              {
                dispatch_release(v10);
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

void nw_masque_handle_capsule(uint64_t a1, void *a2)
{
  v251 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v211 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_handle_capsule";
    v212 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v211, 16, "%{public}s called with null masque", buf, 12);
    LOBYTE(length[0]) = 16;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v212, length, &__src))
    {
      goto LABEL_526;
    }

    if (LOBYTE(length[0]) == 17)
    {
      v213 = __nwlog_obj();
      v214 = length[0];
      if (!os_log_type_enabled(v213, length[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v215 = "%{public}s called with null masque";
    }

    else if (__src == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v213 = __nwlog_obj();
      v214 = length[0];
      v220 = os_log_type_enabled(v213, length[0]);
      if (backtrace_string)
      {
        if (v220)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_handle_capsule";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v213, v214, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_526:
        if (!v212)
        {
          return;
        }

        goto LABEL_527;
      }

      if (!v220)
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v215 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v213 = __nwlog_obj();
      v214 = length[0];
      if (!os_log_type_enabled(v213, length[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v215 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    goto LABEL_525;
  }

  v3 = a1;
  if ((nw_protocol_metadata_is_http(a2) & 1) == 0)
  {
    v216 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_handle_capsule";
    v212 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v216, 16, "%{public}s called with null nw_protocol_metadata_is_http(metadata)", buf, 12);
    LOBYTE(length[0]) = 16;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v212, length, &__src))
    {
      goto LABEL_526;
    }

    if (LOBYTE(length[0]) != 17)
    {
      if (__src != 1)
      {
        v213 = __nwlog_obj();
        v214 = length[0];
        if (!os_log_type_enabled(v213, length[0]))
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_handle_capsule";
        v215 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), backtrace limit exceeded";
        goto LABEL_525;
      }

      v221 = __nw_create_backtrace_string();
      v213 = __nwlog_obj();
      v214 = length[0];
      v222 = os_log_type_enabled(v213, length[0]);
      if (!v221)
      {
        if (!v222)
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_handle_capsule";
        v215 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), no backtrace";
        goto LABEL_525;
      }

      if (!v222)
      {
        goto LABEL_507;
      }

      *buf = 136446466;
      *&buf[4] = "nw_masque_handle_capsule";
      *&buf[12] = 2082;
      *&buf[14] = v221;
      v223 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), dumping backtrace:%{public}s";
      goto LABEL_506;
    }

    v213 = __nwlog_obj();
    v214 = length[0];
    if (!os_log_type_enabled(v213, length[0]))
    {
      goto LABEL_526;
    }

    *buf = 136446210;
    *&buf[4] = "nw_masque_handle_capsule";
    v215 = "%{public}s called with null nw_protocol_metadata_is_http(metadata)";
LABEL_525:
    _os_log_impl(&dword_181A37000, v213, v214, v215, buf, 0xCu);
    goto LABEL_526;
  }

  if (!nw_http_metadata_is_capsule(a2))
  {
    v217 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_handle_capsule";
    v212 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v217, 16, "%{public}s called with null nw_http_metadata_is_capsule(metadata)", buf, 12);
    LOBYTE(length[0]) = 16;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v212, length, &__src))
    {
      goto LABEL_526;
    }

    if (LOBYTE(length[0]) == 17)
    {
      v213 = __nwlog_obj();
      v214 = length[0];
      if (!os_log_type_enabled(v213, length[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v215 = "%{public}s called with null nw_http_metadata_is_capsule(metadata)";
      goto LABEL_525;
    }

    if (__src != 1)
    {
      v213 = __nwlog_obj();
      v214 = length[0];
      if (!os_log_type_enabled(v213, length[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v215 = "%{public}s called with null nw_http_metadata_is_capsule(metadata), backtrace limit exceeded";
      goto LABEL_525;
    }

    v221 = __nw_create_backtrace_string();
    v213 = __nwlog_obj();
    v214 = length[0];
    v224 = os_log_type_enabled(v213, length[0]);
    if (!v221)
    {
      if (!v224)
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v215 = "%{public}s called with null nw_http_metadata_is_capsule(metadata), no backtrace";
      goto LABEL_525;
    }

    if (!v224)
    {
      goto LABEL_507;
    }

    *buf = 136446466;
    *&buf[4] = "nw_masque_handle_capsule";
    *&buf[12] = 2082;
    *&buf[14] = v221;
    v223 = "%{public}s called with null nw_http_metadata_is_capsule(metadata), dumping backtrace:%{public}s";
LABEL_506:
    _os_log_impl(&dword_181A37000, v213, v214, v223, buf, 0x16u);
    goto LABEL_507;
  }

  capsule_type = nw_http_metadata_get_capsule_type(a2);
  v5 = nw_http_metadata_copy_capsule_data(a2);
  if (!v5)
  {
    v218 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_handle_capsule";
    v212 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v218, 16, "%{public}s called with null capsule_data", buf, 12);
    LOBYTE(length[0]) = 16;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v212, length, &__src))
    {
      goto LABEL_526;
    }

    if (LOBYTE(length[0]) == 17)
    {
      v213 = __nwlog_obj();
      v214 = length[0];
      if (!os_log_type_enabled(v213, length[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v215 = "%{public}s called with null capsule_data";
      goto LABEL_525;
    }

    if (__src != 1)
    {
      v213 = __nwlog_obj();
      v214 = length[0];
      if (!os_log_type_enabled(v213, length[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v215 = "%{public}s called with null capsule_data, backtrace limit exceeded";
      goto LABEL_525;
    }

    v221 = __nw_create_backtrace_string();
    v213 = __nwlog_obj();
    v214 = length[0];
    v225 = os_log_type_enabled(v213, length[0]);
    if (!v221)
    {
      if (!v225)
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v215 = "%{public}s called with null capsule_data, no backtrace";
      goto LABEL_525;
    }

    if (v225)
    {
      *buf = 136446466;
      *&buf[4] = "nw_masque_handle_capsule";
      *&buf[12] = 2082;
      *&buf[14] = v221;
      v223 = "%{public}s called with null capsule_data, dumping backtrace:%{public}s";
      goto LABEL_506;
    }

LABEL_507:
    free(v221);
    if (!v212)
    {
      return;
    }

LABEL_527:
    free(v212);
    return;
  }

  v6 = v5;
  if (capsule_type > 16770049)
  {
    if (capsule_type > 16770052)
    {
      if (capsule_type <= 16770304)
      {
        if (capsule_type == 16770053)
        {
          if ((*(v3 + 505) & 1) == 0 && gLogDatapath == 1)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v226 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              *&buf[4] = "nw_masque_handle_capsule";
              *&buf[12] = 2082;
              *&buf[14] = v3 + 507;
              *&buf[22] = 2080;
              v242 = " ";
              _os_log_impl(&dword_181A37000, v226, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived CLOSE_TARGET_CID capsule", buf, 0x20u);
            }
          }

          v15 = *(v3 + 376);
          if (v15)
          {
            dispatch_release(v15);
            *(v3 + 376) = 0;
          }

          goto LABEL_465;
        }

        if (capsule_type == 16770304)
        {
          if (*(v3 + 505))
          {
            goto LABEL_372;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v7 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_372;
          }

          *buf = 136446466;
          *&buf[4] = v3 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v8 = "%{public}s%sReceived unexpected REGISTER_DEMUX_PATTERN capsule";
LABEL_371:
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x16u);
LABEL_372:
          nw_masque_mark_failed_with_error(v3, 94);
          goto LABEL_465;
        }

        goto LABEL_373;
      }

      if (capsule_type != 16770305)
      {
        if (capsule_type == 16770307)
        {
          if (*(v3 + 505))
          {
            goto LABEL_465;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v11 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_465;
          }

          *buf = 136446722;
          *&buf[4] = "nw_masque_handle_capsule";
          *&buf[12] = 2082;
          *&buf[14] = v3 + 507;
          *&buf[22] = 2080;
          v242 = " ";
          v12 = "%{public}s %{public}s%sReceived ACK_LISTENER_DEMUX capsule, ignoring";
LABEL_47:
          v13 = v11;
          v14 = OS_LOG_TYPE_DEBUG;
LABEL_422:
          _os_log_impl(&dword_181A37000, v13, v14, v12, buf, 0x20u);
          goto LABEL_465;
        }

LABEL_373:
        if (*(v3 + 505))
        {
          goto LABEL_465;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v201 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_465;
        }

        *buf = 136446722;
        *&buf[4] = v3 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2048;
        v242 = capsule_type;
        v12 = "%{public}s%sUnknown capsule type %llx";
LABEL_378:
        v13 = v201;
LABEL_421:
        v14 = OS_LOG_TYPE_ERROR;
        goto LABEL_422;
      }

      if ((*(v3 + 505) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v16 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_masque_handle_capsule";
          *&buf[12] = 2082;
          *&buf[14] = v3 + 507;
          *&buf[22] = 2080;
          v242 = " ";
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived ACK_DEMUX capsule", buf, 0x20u);
        }
      }

      v17 = *(v3 + 432);
      if (v17)
      {
        if (dispatch_data_get_size(v6))
        {
          length[0] = 0;
          length[1] = length;
          *&length[2] = 0x2000000000uLL;
          v237[0] = MEMORY[0x1E69E9820];
          v237[1] = 0x40000000;
          v237[2] = ___ZL24nw_masque_handle_capsuleP9nw_masqueP20nw_protocol_metadata_block_invoke;
          v237[3] = &unk_1E6A2FB88;
          v237[4] = length;
          v237[5] = v6;
          v237[6] = v3;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = __nw_demux_options_enumerate_patterns_block_invoke;
          v242 = &unk_1E6A2F0D8;
          *&v243 = v237;
          nw_protocol_options_access_handle(v17, buf);
          *(v3 + 503) |= 0x100400u;
          _Block_object_dispose(length, 8);
          goto LABEL_465;
        }

        if ((*(v3 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v207 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = v3 + 507;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2048;
            v242 = 0;
            v12 = "%{public}s%sReceived short ACK_DEMUX_PATTERN capsule (%zu bytes)";
LABEL_420:
            v13 = v207;
            goto LABEL_421;
          }
        }

        goto LABEL_465;
      }

      if (*(v3 + 505))
      {
        goto LABEL_465;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v9 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_465;
      }

      *buf = 136446466;
      *&buf[4] = v3 + 507;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v10 = "%{public}s%sReceived ACK_DEMUX_PATTERN capsule without a stored client demux options, ignoring";
      goto LABEL_451;
    }

    if (capsule_type != 16770050)
    {
      if (capsule_type != 16770051)
      {
        if ((*(v3 + 505) & 1) != 0 || gLogDatapath != 1)
        {
          goto LABEL_465;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v11 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_465;
        }

        *buf = 136446722;
        *&buf[4] = "nw_masque_handle_capsule";
        *&buf[12] = 2082;
        *&buf[14] = v3 + 507;
        *&buf[22] = 2080;
        v242 = " ";
        v12 = "%{public}s %{public}s%sReceived CLOSE_CLIENT_CID capsule, ignoring";
        goto LABEL_47;
      }

      if (*(v3 + 376))
      {
        size = dispatch_data_get_size(v5);
        if (!size)
        {
          if (*(v3 + 505))
          {
            goto LABEL_465;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v207 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_465;
          }

          *buf = 136446722;
          *&buf[4] = v3 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2048;
          v242 = 0;
          v12 = "%{public}s%sReceived short ACK_TARGET_CID capsule (%zu bytes)";
          goto LABEL_420;
        }

        v24 = size;
        v246[0] = 0;
        length[0] = 0;
        length[1] = length;
        *&length[2] = 0x2000000000uLL;
        __src = 0;
        *&v249 = &__src;
        *(&v249 + 1) = 0x2000000000;
        v250 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_dispatch_data_copyout_from_offset_block_invoke;
        v242 = &unk_1E6A34370;
        *&v243 = &__src;
        *(&v243 + 1) = length;
        v244 = 1;
        v245 = v246;
        dispatch_data_apply(v6, buf);
        _Block_object_dispose(&__src, 8);
        _Block_object_dispose(length, 8);
        if (v24 <= v246[0])
        {
          if (*(v3 + 505))
          {
            goto LABEL_465;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v201 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_465;
          }

          *buf = 136446722;
          *&buf[4] = v3 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2048;
          v242 = v24;
          v12 = "%{public}s%sReceived short ACK_TARGET_CID capsule (%zu bytes)";
          goto LABEL_378;
        }

        subrange = dispatch_data_create_subrange(v6, 1uLL, v246[0]);
        if (!subrange)
        {
          if (*(v3 + 505))
          {
            goto LABEL_465;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v201 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_465;
          }

          *buf = 136446722;
          *&buf[4] = v3 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2048;
          v242 = v24;
          v12 = "%{public}s%sFailed to parse ACK_TARGET_CID capsule (%zu bytes)";
          goto LABEL_378;
        }

        v26 = subrange;
        is_equal = nw_dispatch_data_is_equal(*(v3 + 376), subrange);
        dispatch_release(v26);
        v28 = *(v3 + 503);
        if (is_equal)
        {
          if ((v28 & 0x10000) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v29 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              *&buf[4] = "nw_masque_handle_capsule";
              *&buf[12] = 2082;
              *&buf[14] = v3 + 507;
              *&buf[22] = 2080;
              v242 = " ";
              _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived ACK_TARGET_CID capsule, forwarding allowed", buf, 0x20u);
            }
          }

          *(v3 + 503) |= 0x100u;
          LOBYTE(length[0]) = 0;
          nw_dispatch_data_copyout_from_offset(v6, length, 1, v246[0] + 1);
          v30 = v246[0] + 2;
          v31 = LOBYTE(length[0]);
          if (v24 >= v30 + LOBYTE(length[0]))
          {
            v32 = *(v3 + 392);
            if (v32)
            {
              dispatch_release(v32);
              *(v3 + 392) = 0;
              v31 = LOBYTE(length[0]);
              v30 = v246[0] + 2;
            }

            *(v3 + 392) = dispatch_data_create_subrange(v6, v30, v31);
            if ((*(v3 + 505) & 1) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v33 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                *&buf[4] = "nw_masque_handle_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v3 + 507;
                *&buf[22] = 2080;
                v242 = " ";
                LOWORD(v243) = 1024;
                *(&v243 + 2) = LOBYTE(length[0]);
                _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived ACK_TARGET_CID virtual CID of length %u", buf, 0x26u);
              }
            }
          }

          goto LABEL_465;
        }

        if ((v28 & 0x10000) != 0)
        {
          goto LABEL_465;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v9 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
LABEL_465:
          dispatch_release(v6);
          goto LABEL_466;
        }

        *buf = 136446466;
        *&buf[4] = v3 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v10 = "%{public}s%sReceived ACK_TARGET_CID capsule with mismatched CID, ignoring";
      }

      else
      {
        if (*(v3 + 505))
        {
          goto LABEL_465;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v9 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_465;
        }

        *buf = 136446466;
        *&buf[4] = v3 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v10 = "%{public}s%sReceived ACK_TARGET_CID capsule without a stored server CID, ignoring";
      }

LABEL_451:
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
      goto LABEL_465;
    }

    v18 = *(v3 + 368);
    if (!v18)
    {
      if (*(v3 + 505))
      {
        goto LABEL_465;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v9 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_465;
      }

      *buf = 136446466;
      *&buf[4] = v3 + 507;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v10 = "%{public}s%sReceived ACK_CLIENT_CID capsule without a stored client CID, ignoring";
      goto LABEL_451;
    }

    if (v18 != v5)
    {
      v19 = dispatch_data_get_size(*(v3 + 368));
      if (v19 == dispatch_data_get_size(v6))
      {
        length[0] = 0;
        length[1] = length;
        length[2] = 0x2000000000;
        LOBYTE(length[3]) = 1;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_dispatch_data_is_equal_block_invoke;
        v242 = &unk_1E6A343E0;
        *(&v243 + 1) = v6;
        *&v243 = length;
        dispatch_data_apply(v18, buf);
        v20 = *(length[1] + 24);
        _Block_object_dispose(length, 8);
        v21 = (v3 + 503);
        v22 = *(v3 + 503);
        if (v20)
        {
          if ((v22 & 0x10000) != 0)
          {
            goto LABEL_414;
          }

          goto LABEL_410;
        }

        if ((v22 & 0x10000) != 0)
        {
          goto LABEL_465;
        }
      }

      else if (*(v3 + 505))
      {
        goto LABEL_465;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v9 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_465;
      }

      *buf = 136446466;
      *&buf[4] = v3 + 507;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v10 = "%{public}s%sReceived ACK_CLIENT_CID capsule with mismatched CID, ignoring";
      goto LABEL_451;
    }

    v21 = (v3 + 503);
    if (*(v3 + 505))
    {
LABEL_414:
      *v21 |= 0x80u;
      goto LABEL_465;
    }

LABEL_410:
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v208 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_masque_handle_capsule";
      *&buf[12] = 2082;
      *&buf[14] = v3 + 507;
      *&buf[22] = 2080;
      v242 = " ";
      _os_log_impl(&dword_181A37000, v208, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived ACK_CLIENT_CID capsule, server supports forwarding", buf, 0x20u);
    }

    goto LABEL_414;
  }

  if (capsule_type > 2)
  {
    switch(capsule_type)
    {
      case 3:
        v240 = 0;
        v234 = (v3 + 507);
        memset(length, 0, sizeof(length));
        while (1)
        {
          v38 = dispatch_data_get_size(v6);
          if (v38 <= 9)
          {
            break;
          }

          __src = 0;
          *&v249 = &__src;
          *(&v249 + 1) = 0x2000000000;
          v250 = 0;
          *v246 = 0;
          *&v246[8] = v246;
          *&v246[16] = 0x2000000000;
          v247 = length;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
          v242 = &unk_1E6A34348;
          v244 = 1;
          *&v243 = &__src;
          *(&v243 + 1) = v246;
          dispatch_data_apply(v6, buf);
          _Block_object_dispose(v246, 8);
          _Block_object_dispose(&__src, 8);
          if (LOBYTE(length[0]) == 6)
          {
            if (v38 <= 0x21)
            {
              if (*(v3 + 505))
              {
                goto LABEL_464;
              }

              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v206 = gprivacy_proxyLogObj;
              if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_464;
              }

              goto LABEL_445;
            }

            __src = 0;
            *&v249 = &__src;
            *(&v249 + 1) = 0x2000000000;
            v250 = 0;
            *v246 = 0;
            *&v246[8] = v246;
            *&v246[16] = 0x2000000000;
            v247 = length;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
            v242 = &unk_1E6A34348;
            v244 = 34;
            *&v243 = &__src;
            *(&v243 + 1) = v246;
            dispatch_data_apply(v6, buf);
            _Block_object_dispose(v246, 8);
            _Block_object_dispose(&__src, 8);
            __src = 7708;
            v249 = *(length + 1);
            LODWORD(v250) = 0;
            *v246 = 7708;
            *&v246[8] = *(length + 1);
            LODWORD(v247) = 0;
            address = _nw_endpoint_create_address(&__src);
            v47 = _nw_endpoint_create_address(v246);
            if ((*(v3 + 505) & 1) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v48 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
              {
                v49 = address;
                v50 = v49;
                v51 = v6;
                if (v49)
                {
                  logging_description = _nw_endpoint_get_logging_description(v49);
                  v53 = v3;
                }

                else
                {
                  v53 = v3;
                  logging_description = "<NULL>";
                }

                v59 = v47;
                v60 = v59;
                if (v59)
                {
                  v61 = _nw_endpoint_get_logging_description(v59);
                }

                else
                {
                  v61 = "<NULL>";
                }

                *buf = 136446978;
                *&buf[4] = v234;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                *&buf[22] = 2082;
                v242 = logging_description;
                LOWORD(v243) = 2082;
                *(&v243 + 2) = v61;
                _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_INFO, "%{public}s%sReceived ROUTE_ADVERTISEMENT capsule for %{public}s-%{public}s", buf, 0x2Au);
                v3 = v53;
                v6 = v51;
              }
            }

            if (address)
            {
              v62 = *(v3 + 352);
              if (v62)
              {
                os_release(v62);
              }

              *(v3 + 352) = address;
            }

            if (v47)
            {
              v63 = *(v3 + 360);
              if (v63)
              {
                os_release(v63);
              }

              *(v3 + 360) = v47;
            }

            v34 = v38 - 34;
            if (v38 == 34)
            {
              goto LABEL_464;
            }

            v35 = v6;
            v36 = 34;
          }

          else
          {
            if (LOBYTE(length[0]) != 4)
            {
              if (*(v3 + 505))
              {
                goto LABEL_464;
              }

              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v210 = gprivacy_proxyLogObj;
              if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_464;
              }

              *buf = 136446722;
              *&buf[4] = v234;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              *&buf[22] = 1024;
              LODWORD(v242) = LOBYTE(length[0]);
              v203 = "%{public}s%sUnknown ROUTE_ADVERTISEMENT version %u";
              v204 = v210;
              v205 = 28;
              goto LABEL_463;
            }

            __src = 0;
            *&v249 = &__src;
            *(&v249 + 1) = 0x2000000000;
            v250 = 0;
            *v246 = 0;
            *&v246[8] = v246;
            *&v246[16] = 0x2000000000;
            v247 = length;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
            v242 = &unk_1E6A34348;
            v244 = 10;
            *&v243 = &__src;
            *(&v243 + 1) = v246;
            dispatch_data_apply(v6, buf);
            _Block_object_dispose(v246, 8);
            _Block_object_dispose(&__src, 8);
            LODWORD(__src) = 528;
            HIDWORD(__src) = *(length + 1);
            *&v249 = 0;
            *v246 = 528;
            *&v246[4] = *(length + 1);
            *&v246[8] = 0;
            v39 = _nw_endpoint_create_address(&__src);
            v40 = _nw_endpoint_create_address(v246);
            if ((*(v3 + 505) & 1) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v41 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
              {
                v42 = v39;
                v43 = v42;
                if (v42)
                {
                  v44 = _nw_endpoint_get_logging_description(v42);
                  v45 = v3;
                }

                else
                {
                  v45 = v3;
                  v44 = "<NULL>";
                }

                v54 = v40;
                v55 = v54;
                if (v54)
                {
                  v56 = _nw_endpoint_get_logging_description(v54);
                }

                else
                {
                  v56 = "<NULL>";
                }

                *buf = 136446978;
                *&buf[4] = v234;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                *&buf[22] = 2082;
                v242 = v44;
                LOWORD(v243) = 2082;
                *(&v243 + 2) = v56;
                _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_INFO, "%{public}s%sReceived ROUTE_ADVERTISEMENT capsule for %{public}s-%{public}s", buf, 0x2Au);
                v3 = v45;
              }
            }

            if (v39)
            {
              v57 = *(v3 + 352);
              if (v57)
              {
                os_release(v57);
              }

              *(v3 + 352) = v39;
            }

            if (v40)
            {
              v58 = *(v3 + 360);
              if (v58)
              {
                os_release(v58);
              }

              *(v3 + 360) = v40;
            }

            v34 = v38 - 10;
            if (v38 == 10)
            {
              goto LABEL_464;
            }

            v35 = v6;
            v36 = 10;
          }

          v37 = dispatch_data_create_subrange(v35, v36, v34);
          dispatch_release(v6);
          v6 = v37;
          if (!v37)
          {
            goto LABEL_464;
          }
        }

        if (*(v3 + 505))
        {
          goto LABEL_464;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v206 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_464;
        }

LABEL_445:
        *buf = 136446722;
        *&buf[4] = v234;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2048;
        v242 = v38;
        v203 = "%{public}s%sROUTE_ADVERTISEMENT capsule too short: %zu bytes";
        v204 = v206;
LABEL_462:
        v205 = 32;
LABEL_463:
        _os_log_impl(&dword_181A37000, v204, OS_LOG_TYPE_ERROR, v203, buf, v205);
        goto LABEL_464;
      case 16770048:
        if (*(v3 + 505))
        {
          goto LABEL_372;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v7 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_372;
        }

        *buf = 136446466;
        *&buf[4] = v3 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v8 = "%{public}s%sReceived unexpected REGISTER_CLIENT_CID capsule";
        goto LABEL_371;
      case 16770049:
        if (*(v3 + 505))
        {
          goto LABEL_372;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v7 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_372;
        }

        *buf = 136446466;
        *&buf[4] = v3 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v8 = "%{public}s%sReceived unexpected REGISTER_TARGET_CID capsule";
        goto LABEL_371;
    }

    goto LABEL_373;
  }

  if (!capsule_type)
  {
    if ((*(v3 + 505) & 1) != 0 || gLogDatapath != 1)
    {
      goto LABEL_465;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v11 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_465;
    }

    *buf = 136446722;
    *&buf[4] = "nw_masque_handle_capsule";
    *&buf[12] = 2082;
    *&buf[14] = v3 + 507;
    *&buf[22] = 2080;
    v242 = " ";
    v12 = "%{public}s %{public}s%sReceived DATAGRAM capsule";
    goto LABEL_47;
  }

  if (capsule_type != 1)
  {
    if (capsule_type != 2)
    {
      goto LABEL_373;
    }

    if (*(v3 + 505))
    {
      goto LABEL_465;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v9 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_465;
    }

    *buf = 136446466;
    *&buf[4] = v3 + 507;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v10 = "%{public}s%sADDRESS_REQUEST capsules not supported";
    goto LABEL_451;
  }

  memset(v246, 0, 18);
  v233 = MEMORY[0x1E69E9820];
  v235 = (v3 - 96);
  v232 = v3 + 507;
  while (1)
  {
    while (1)
    {
      v236 = 0;
      length[0] = 0;
      length[1] = length;
      *&length[2] = 0x2000000000uLL;
      __src = 0;
      *&v249 = &__src;
      *(&v249 + 1) = 0x2000000000;
      v250 = &v236;
      *buf = v233;
      *&buf[8] = 0x40000000;
      *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
      v242 = &unk_1E6A34348;
      v244 = 8;
      *&v243 = length;
      *(&v243 + 1) = &__src;
      dispatch_data_apply(v6, buf);
      v65 = *(length[1] + 24);
      _Block_object_dispose(&__src, 8);
      _Block_object_dispose(length, 8);
      if (!v65)
      {
LABEL_394:
        if ((*(v3 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v202 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = v232;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v203 = "%{public}s%sADDRESS_ASSIGN capsule failed to decode request ID";
            v204 = v202;
            v205 = 22;
            goto LABEL_463;
          }
        }

        goto LABEL_464;
      }

      v66 = v236;
      if (v236 > 0x3Fu)
      {
        if (v236 >> 6 == 2)
        {
          if (v65 < 4)
          {
            goto LABEL_394;
          }

          v66 = bswap32(v236 & 0xFFFFFF7F);
          v67 = 4;
        }

        else if (v236 >> 6 == 1)
        {
          if (v65 == 1)
          {
            goto LABEL_394;
          }

          v66 = bswap32(v236 & 0xFFBF) >> 16;
          v67 = 2;
        }

        else
        {
          if (v65 < 8)
          {
            goto LABEL_394;
          }

          v66 = bswap64(v236 & 0xFFFFFFFFFFFFFF3FLL);
          v67 = 8;
        }
      }

      else
      {
        v67 = 1;
      }

      if ((*(v3 + 505) & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v139 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          *&buf[4] = "nw_masque_handle_capsule";
          *&buf[12] = 2082;
          *&buf[14] = v232;
          *&buf[22] = 2080;
          v242 = " ";
          LOWORD(v243) = 2048;
          *(&v243 + 2) = v66;
          _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sADDRESS_ASSIGN capsule contains request ID %llu", buf, 0x2Au);
        }
      }

      v68 = dispatch_data_get_size(v6);
      v69 = v67 + 6;
      if (v68 < v67 + 6)
      {
        if ((*(v3 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v209 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_461;
          }
        }

        goto LABEL_464;
      }

      length[0] = 0;
      length[1] = length;
      *&length[2] = 0x2000000000uLL;
      __src = 0;
      *&v249 = &__src;
      *(&v249 + 1) = 0x2000000000;
      v250 = v67;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __nw_dispatch_data_copyout_from_offset_block_invoke;
      v242 = &unk_1E6A34370;
      *&v243 = &__src;
      *(&v243 + 1) = length;
      v244 = 1;
      v245 = v246;
      dispatch_data_apply(v6, buf);
      _Block_object_dispose(&__src, 8);
      _Block_object_dispose(length, 8);
      if (v246[0] == 6)
      {
        break;
      }

      if (v246[0] == 4)
      {
        length[0] = 0;
        length[1] = length;
        *&length[2] = 0x2000000000uLL;
        __src = 0;
        *&v249 = &__src;
        *(&v249 + 1) = 0x2000000000;
        v250 = v67;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_dispatch_data_copyout_from_offset_block_invoke;
        v242 = &unk_1E6A34370;
        *&v243 = &__src;
        *(&v243 + 1) = length;
        v244 = 6;
        v245 = v246;
        dispatch_data_apply(v6, buf);
        _Block_object_dispose(&__src, 8);
        _Block_object_dispose(length, 8);
        LODWORD(length[0]) = 528;
        HIDWORD(length[0]) = *&v246[1];
        length[1] = 0;
        v70 = _nw_endpoint_create_address(length);
        v71 = v3;
        v72 = v70;
        v73 = v71;
        if ((*(v71 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v74 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
          {
            v75 = v72;
            v76 = v75;
            if (v75)
            {
              v77 = _nw_endpoint_get_logging_description(v75);
            }

            else
            {
              v77 = "<NULL>";
            }

            *buf = 136446722;
            *&buf[4] = v232;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2082;
            v242 = v77;
            _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_INFO, "%{public}s%sReceived ADDRESS_ASSIGN capsule for %{public}s", buf, 0x20u);
          }
        }

        v86 = v73;
        if (v72)
        {
          v87 = *(v73 + 344);
          if (v87)
          {
            os_release(v87);
          }

          v86 = v73;
          *(v73 + 344) = v72;
        }

        v88 = *(v86 - 48);
        if (v88)
        {
          v89 = *(v88 + 40);
          v90 = *(v86 - 48);
          if (v89 == &nw_protocol_ref_counted_handle || v89 == &nw_protocol_ref_counted_additional_handle && (v90 = *(v88 + 64)) != 0)
          {
            v92 = *(v90 + 88);
            v91 = 0;
            if (v92)
            {
              *(v90 + 88) = v92 + 1;
            }
          }

          else
          {
            v91 = 1;
          }

          v93 = *(v73 - 56);
          v94 = v235;
          if (v93 == &nw_protocol_ref_counted_handle || v93 == &nw_protocol_ref_counted_additional_handle && (v94 = *(v73 - 32)) != 0)
          {
            v97 = v94[11];
            if (v97)
            {
              v95 = 0;
              v94[11] = v97 + 1;
              v96 = *(v88 + 24);
              if (!v96)
              {
                goto LABEL_282;
              }
            }

            else
            {
              v95 = 0;
              v96 = *(v88 + 24);
              if (!v96)
              {
                goto LABEL_282;
              }
            }
          }

          else
          {
            v95 = 1;
            v96 = *(v88 + 24);
            if (!v96)
            {
              goto LABEL_282;
            }
          }

          v98 = *(v96 + 160);
          if (v98)
          {
            v98(v88, v235, 17, 0, 0);
LABEL_200:
            if ((v95 & 1) == 0)
            {
              v99 = *(v73 - 56);
              v100 = v235;
              if (v99 == &nw_protocol_ref_counted_handle || v99 == &nw_protocol_ref_counted_additional_handle && (v100 = *(v73 - 32)) != 0)
              {
                v101 = v100[11];
                if (v101)
                {
                  v102 = v101 - 1;
                  v100[11] = v102;
                  if (!v102)
                  {
                    v103 = v100[8];
                    if (v103)
                    {
                      v100[8] = 0;
                      v103[2](v103);
                      _Block_release(v103);
                    }

                    if (v100[9])
                    {
                      v104 = v100[8];
                      if (v104)
                      {
                        _Block_release(v104);
                      }
                    }

                    free(v100);
                  }
                }
              }
            }

            if (v91)
            {
              goto LABEL_225;
            }

            v105 = *(v88 + 40);
            if (v105 != &nw_protocol_ref_counted_handle)
            {
              if (v105 != &nw_protocol_ref_counted_additional_handle)
              {
                goto LABEL_225;
              }

              v88 = *(v88 + 64);
              if (!v88)
              {
                goto LABEL_225;
              }
            }

            v106 = *(v88 + 88);
            if (!v106)
            {
              goto LABEL_225;
            }

            v107 = v106 - 1;
            *(v88 + 88) = v107;
            if (v107)
            {
              goto LABEL_225;
            }

            v108 = *(v88 + 64);
            if (v108)
            {
              *(v88 + 64) = 0;
              v108[2](v108);
              _Block_release(v108);
            }

            if (*(v88 + 72))
            {
              v109 = *(v88 + 64);
              if (v109)
              {
                _Block_release(v109);
              }
            }

            v110 = v88;
            goto LABEL_224;
          }

LABEL_282:
          v140 = __nwlog_obj();
          v141 = *(v88 + 16);
          if (!v141)
          {
            v141 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_notify";
          *&buf[12] = 2082;
          *&buf[14] = v141;
          *&buf[22] = 2048;
          v242 = v88;
          LODWORD(v227) = 32;
          v142 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v140, 16, "%{public}s protocol %{public}s (%p) has invalid notify callback", buf, v227);
          LOBYTE(__src) = 16;
          v238[0] = 0;
          v230 = v142;
          if (!__nwlog_fault(v142, &__src, v238))
          {
            goto LABEL_347;
          }

          if (__src == 17)
          {
            v143 = __nwlog_obj();
            v144 = __src;
            if (!os_log_type_enabled(v143, __src))
            {
              goto LABEL_347;
            }

            v145 = *(v88 + 16);
            if (!v145)
            {
              v145 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_notify";
            *&buf[12] = 2082;
            *&buf[14] = v145;
            *&buf[22] = 2048;
            v242 = v88;
            v146 = v143;
            v147 = v144;
            v148 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
          }

          else if (v238[0] == 1)
          {
            v165 = __nw_create_backtrace_string();
            v166 = __nwlog_obj();
            v167 = __src;
            log = v166;
            v168 = os_log_type_enabled(v166, __src);
            if (v165)
            {
              if (v168)
              {
                v169 = *(v88 + 16);
                if (!v169)
                {
                  v169 = "invalid";
                }

                *buf = 136446978;
                *&buf[4] = "__nw_protocol_notify";
                *&buf[12] = 2082;
                *&buf[14] = v169;
                *&buf[22] = 2048;
                v242 = v88;
                LOWORD(v243) = 2082;
                *(&v243 + 2) = v165;
                _os_log_impl(&dword_181A37000, log, v167, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v165);
              goto LABEL_347;
            }

            if (!v168)
            {
LABEL_347:
              if (v230)
              {
                free(v230);
              }

              goto LABEL_200;
            }

            v199 = *(v88 + 16);
            if (!v199)
            {
              v199 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_notify";
            *&buf[12] = 2082;
            *&buf[14] = v199;
            *&buf[22] = 2048;
            v242 = v88;
            v146 = log;
            v147 = v167;
            v148 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
          }

          else
          {
            v185 = __nwlog_obj();
            v186 = __src;
            if (!os_log_type_enabled(v185, __src))
            {
              goto LABEL_347;
            }

            v187 = *(v88 + 16);
            if (!v187)
            {
              v187 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_notify";
            *&buf[12] = 2082;
            *&buf[14] = v187;
            *&buf[22] = 2048;
            v242 = v88;
            v146 = v185;
            v147 = v186;
            v148 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v146, v147, v148, buf, 0x20u);
          goto LABEL_347;
        }

        v158 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_notify";
        LODWORD(v227) = 12;
        v159 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v158, 16, "%{public}s called with null protocol", buf, v227);
        LOBYTE(__src) = 16;
        v238[0] = 0;
        if (__nwlog_fault(v159, &__src, v238))
        {
          if (__src == 17)
          {
            v160 = __nwlog_obj();
            v161 = __src;
            if (os_log_type_enabled(v160, __src))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_notify";
              v162 = v160;
              v163 = v161;
              v164 = "%{public}s called with null protocol";
LABEL_358:
              _os_log_impl(&dword_181A37000, v162, v163, v164, buf, 0xCu);
            }
          }

          else if (v238[0] == 1)
          {
            v181 = __nw_create_backtrace_string();
            v182 = __nwlog_obj();
            v183 = __src;
            v184 = os_log_type_enabled(v182, __src);
            if (v181)
            {
              if (v184)
              {
                *buf = 136446466;
                *&buf[4] = "__nw_protocol_notify";
                *&buf[12] = 2082;
                *&buf[14] = v181;
                _os_log_impl(&dword_181A37000, v182, v183, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v181);
              goto LABEL_359;
            }

            if (v184)
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_notify";
              v162 = v182;
              v163 = v183;
              v164 = "%{public}s called with null protocol, no backtrace";
              goto LABEL_358;
            }
          }

          else
          {
            v195 = __nwlog_obj();
            v196 = __src;
            if (os_log_type_enabled(v195, __src))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_notify";
              v162 = v195;
              v163 = v196;
              v164 = "%{public}s called with null protocol, backtrace limit exceeded";
              goto LABEL_358;
            }
          }
        }

LABEL_359:
        if (!v159)
        {
          goto LABEL_225;
        }

        v110 = v159;
LABEL_224:
        free(v110);
LABEL_225:
        v111 = v68 - v69;
        if (v68 <= v69)
        {
          goto LABEL_435;
        }

        v112 = v6;
        v113 = v69;
        goto LABEL_139;
      }

      if ((*(v3 + 505) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v85 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = v232;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 1024;
          LODWORD(v242) = v246[0];
          _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_ERROR, "%{public}s%sUnknown ADDRESS_ASSIGN version %u", buf, 0x1Cu);
        }
      }

      if (!v6)
      {
        goto LABEL_464;
      }
    }

    if (v68 <= 0x11)
    {
      break;
    }

    length[0] = 0;
    length[1] = length;
    *&length[2] = 0x2000000000uLL;
    __src = 0;
    *&v249 = &__src;
    *(&v249 + 1) = 0x2000000000;
    v250 = v67;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __nw_dispatch_data_copyout_from_offset_block_invoke;
    v242 = &unk_1E6A34370;
    *&v243 = &__src;
    *(&v243 + 1) = length;
    v244 = 18;
    v245 = v246;
    dispatch_data_apply(v6, buf);
    _Block_object_dispose(&__src, 8);
    _Block_object_dispose(length, 8);
    length[0] = 7708;
    *&length[1] = *&v246[1];
    LODWORD(length[3]) = 0;
    v78 = _nw_endpoint_create_address(length);
    v79 = v3;
    v80 = v78;
    v73 = v79;
    if ((*(v79 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v81 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        v82 = v80;
        v83 = v82;
        if (v82)
        {
          v84 = _nw_endpoint_get_logging_description(v82);
        }

        else
        {
          v84 = "<NULL>";
        }

        *buf = 136446722;
        *&buf[4] = v232;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2082;
        v242 = v84;
        _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_INFO, "%{public}s%sReceived ADDRESS_ASSIGN capsule for %{public}s", buf, 0x20u);
      }
    }

    v114 = v73;
    if (v80)
    {
      v115 = *(v73 + 344);
      if (v115)
      {
        os_release(v115);
      }

      v114 = v73;
      *(v73 + 344) = v80;
    }

    v116 = *(v114 - 48);
    if (v116)
    {
      v117 = *(v116 + 40);
      v118 = *(v114 - 48);
      if (v117 == &nw_protocol_ref_counted_handle || v117 == &nw_protocol_ref_counted_additional_handle && (v118 = *(v116 + 64)) != 0)
      {
        v120 = *(v118 + 88);
        v119 = 0;
        if (v120)
        {
          *(v118 + 88) = v120 + 1;
        }
      }

      else
      {
        v119 = 1;
      }

      v121 = *(v73 - 56);
      v122 = v235;
      if (v121 == &nw_protocol_ref_counted_handle || v121 == &nw_protocol_ref_counted_additional_handle && (v122 = *(v73 - 32)) != 0)
      {
        v125 = v122[11];
        if (v125)
        {
          v123 = 0;
          v122[11] = v125 + 1;
          v124 = *(v116 + 24);
          if (!v124)
          {
LABEL_290:
            v149 = __nwlog_obj();
            v150 = *(v116 + 16);
            if (!v150)
            {
              v150 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_notify";
            *&buf[12] = 2082;
            *&buf[14] = v150;
            *&buf[22] = 2048;
            v242 = v116;
            LODWORD(v227) = 32;
            v151 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v149, 16, "%{public}s protocol %{public}s (%p) has invalid notify callback", buf, v227);
            LOBYTE(__src) = 16;
            v238[0] = 0;
            v231 = v151;
            if (__nwlog_fault(v151, &__src, v238))
            {
              if (__src != 17)
              {
                if (v238[0] == 1)
                {
                  v177 = __nw_create_backtrace_string();
                  v178 = __nwlog_obj();
                  loga = __src;
                  v179 = os_log_type_enabled(v178, __src);
                  if (v177)
                  {
                    if (v179)
                    {
                      v180 = *(v116 + 16);
                      if (!v180)
                      {
                        v180 = "invalid";
                      }

                      *buf = 136446978;
                      *&buf[4] = "__nw_protocol_notify";
                      *&buf[12] = 2082;
                      *&buf[14] = v180;
                      *&buf[22] = 2048;
                      v242 = v116;
                      LOWORD(v243) = 2082;
                      *(&v243 + 2) = v177;
                      _os_log_impl(&dword_181A37000, v178, loga, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
                    }

                    free(v177);
                    goto LABEL_354;
                  }

                  if (!v179)
                  {
                    goto LABEL_354;
                  }

                  v200 = *(v116 + 16);
                  if (!v200)
                  {
                    v200 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_notify";
                  *&buf[12] = 2082;
                  *&buf[14] = v200;
                  *&buf[22] = 2048;
                  v242 = v116;
                  v155 = v178;
                  v156 = loga;
                  v157 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
                }

                else
                {
                  v192 = __nwlog_obj();
                  v193 = __src;
                  if (!os_log_type_enabled(v192, __src))
                  {
                    goto LABEL_354;
                  }

                  v194 = *(v116 + 16);
                  if (!v194)
                  {
                    v194 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_notify";
                  *&buf[12] = 2082;
                  *&buf[14] = v194;
                  *&buf[22] = 2048;
                  v242 = v116;
                  v155 = v192;
                  v156 = v193;
                  v157 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
                }

LABEL_353:
                _os_log_impl(&dword_181A37000, v155, v156, v157, buf, 0x20u);
                goto LABEL_354;
              }

              v152 = __nwlog_obj();
              v153 = __src;
              if (os_log_type_enabled(v152, __src))
              {
                v154 = *(v116 + 16);
                if (!v154)
                {
                  v154 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_notify";
                *&buf[12] = 2082;
                *&buf[14] = v154;
                *&buf[22] = 2048;
                v242 = v116;
                v155 = v152;
                v156 = v153;
                v157 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
                goto LABEL_353;
              }
            }

LABEL_354:
            if (v231)
            {
              free(v231);
            }

LABEL_251:
            if ((v123 & 1) == 0)
            {
              v127 = *(v73 - 56);
              v128 = v235;
              if (v127 == &nw_protocol_ref_counted_handle || v127 == &nw_protocol_ref_counted_additional_handle && (v128 = *(v73 - 32)) != 0)
              {
                v129 = v128[11];
                if (v129)
                {
                  v130 = v129 - 1;
                  v128[11] = v130;
                  if (!v130)
                  {
                    v131 = v128[8];
                    if (v131)
                    {
                      v128[8] = 0;
                      v131[2](v131);
                      _Block_release(v131);
                    }

                    if (v128[9])
                    {
                      v132 = v128[8];
                      if (v132)
                      {
                        _Block_release(v132);
                      }
                    }

                    free(v128);
                  }
                }
              }
            }

            if (v119)
            {
              goto LABEL_276;
            }

            v133 = *(v116 + 40);
            if (v133 != &nw_protocol_ref_counted_handle)
            {
              if (v133 != &nw_protocol_ref_counted_additional_handle)
              {
                goto LABEL_276;
              }

              v116 = *(v116 + 64);
              if (!v116)
              {
                goto LABEL_276;
              }
            }

            v134 = *(v116 + 88);
            if (!v134)
            {
              goto LABEL_276;
            }

            v135 = v134 - 1;
            *(v116 + 88) = v135;
            if (v135)
            {
              goto LABEL_276;
            }

            v136 = *(v116 + 64);
            if (v136)
            {
              *(v116 + 64) = 0;
              v136[2](v136);
              _Block_release(v136);
            }

            if (*(v116 + 72))
            {
              v137 = *(v116 + 64);
              if (v137)
              {
                _Block_release(v137);
              }
            }

            v138 = v116;
            goto LABEL_275;
          }
        }

        else
        {
          v123 = 0;
          v124 = *(v116 + 24);
          if (!v124)
          {
            goto LABEL_290;
          }
        }
      }

      else
      {
        v123 = 1;
        v124 = *(v116 + 24);
        if (!v124)
        {
          goto LABEL_290;
        }
      }

      v126 = *(v124 + 160);
      if (!v126)
      {
        goto LABEL_290;
      }

      v126(v116, v235, 17, 0, 0);
      goto LABEL_251;
    }

    v170 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_notify";
    LODWORD(v227) = 12;
    v171 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v170, 16, "%{public}s called with null protocol", buf, v227);
    LOBYTE(__src) = 16;
    v238[0] = 0;
    if (__nwlog_fault(v171, &__src, v238))
    {
      if (__src == 17)
      {
        v172 = __nwlog_obj();
        v173 = __src;
        if (os_log_type_enabled(v172, __src))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_notify";
          v174 = v172;
          v175 = v173;
          v176 = "%{public}s called with null protocol";
LABEL_363:
          _os_log_impl(&dword_181A37000, v174, v175, v176, buf, 0xCu);
        }
      }

      else if (v238[0] == 1)
      {
        v188 = __nw_create_backtrace_string();
        v189 = __nwlog_obj();
        v190 = __src;
        v191 = os_log_type_enabled(v189, __src);
        if (v188)
        {
          if (v191)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_notify";
            *&buf[12] = 2082;
            *&buf[14] = v188;
            _os_log_impl(&dword_181A37000, v189, v190, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v188);
          goto LABEL_364;
        }

        if (v191)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_notify";
          v174 = v189;
          v175 = v190;
          v176 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_363;
        }
      }

      else
      {
        v197 = __nwlog_obj();
        v198 = __src;
        if (os_log_type_enabled(v197, __src))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_notify";
          v174 = v197;
          v175 = v198;
          v176 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_363;
        }
      }
    }

LABEL_364:
    if (!v171)
    {
      goto LABEL_276;
    }

    v138 = v171;
LABEL_275:
    free(v138);
LABEL_276:
    v113 = v67 + 18;
    v111 = v68 - (v67 + 18);
    if (v68 <= v67 + 18)
    {
LABEL_435:
      v3 = v73;
      goto LABEL_464;
    }

    v112 = v6;
LABEL_139:
    v64 = dispatch_data_create_subrange(v112, v113, v111);
    dispatch_release(v6);
    v6 = v64;
    v3 = v73;
    if (!v64)
    {
      goto LABEL_464;
    }
  }

  if ((*(v3 + 505) & 1) == 0)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v209 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
LABEL_461:
      *buf = 136446722;
      *&buf[4] = v232;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      v242 = v68;
      v203 = "%{public}s%sADDRESS_ASSIGN capsule too short: %zu bytes";
      v204 = v209;
      goto LABEL_462;
    }
  }

LABEL_464:
  if (v6)
  {
    goto LABEL_465;
  }

LABEL_466:
  nw_masque_mark_connected(v3);
}

void nw_masque_mark_failed_with_error(uint64_t a1, int a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 484) == 5)
    {
      return;
    }

    if ((*(a1 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v4 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        *&buf[4] = a1 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 1024;
        LODWORD(v53) = a2;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s%sClosing connection with error %{darwin.errno}d", buf, 0x1Cu);
      }
    }

    *(a1 + 484) = 5;
    v5 = *(a1 + 240);
    if (v5)
    {
      *(v5 + 24) = type;
      v6 = *(a1 + 248);
      *type = v5;
      v51 = v6;
      *(a1 + 240) = 0;
      *(a1 + 248) = a1 + 240;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v53 = &__block_descriptor_tmp_21_49595;
      v54 = 0;
      do
      {
        v7 = *type;
        if (!*type)
        {
          break;
        }

        v8 = *(*type + 16);
        v9 = *(*type + 24);
        v10 = (v8 + 24);
        if (!v8)
        {
          v10 = &v51;
        }

        *v10 = v9;
        *v9 = v8;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    v11 = *(a1 - 48);
    if (v11)
    {
      v12 = *(v11 + 24);
      if (v12)
      {
        v13 = *(v12 + 56);
        if (!v13 || (v13(), (v14 = *(a1 - 48)) != 0) && (v12 = *(v14 + 24)) != 0)
        {
          v15 = *(v12 + 48);
          if (v15)
          {
            v15();
          }
        }
      }
    }

    v16 = *(a1 - 64);
    if (v16)
    {
      v17 = *(v16 + 24);
      if (v17)
      {
        v18 = *(v17 + 32);
        if (v18)
        {
          v18();
          return;
        }
      }
    }

    v19 = __nwlog_obj();
    v20 = *(a1 - 64);
    v21 = "invalid";
    if (v20)
    {
      v22 = *(v20 + 16);
      if (v22)
      {
        v21 = v22;
      }
    }

    *buf = 136446466;
    *&buf[4] = "nw_masque_mark_failed_with_error";
    *&buf[12] = 2082;
    *&buf[14] = v21;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s protocol %{public}s has invalid disconnect callback", buf, 22);
    type[0] = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (__nwlog_fault(v23, type, &v49))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type[0];
        if (!os_log_type_enabled(v24, type[0]))
        {
          goto LABEL_66;
        }

        v26 = *(a1 - 64);
        v27 = "invalid";
        if (v26)
        {
          v28 = *(v26 + 16);
          if (v28)
          {
            v27 = v28;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_masque_mark_failed_with_error";
        *&buf[12] = 2082;
        *&buf[14] = v27;
        v29 = "%{public}s protocol %{public}s has invalid disconnect callback";
LABEL_65:
        _os_log_impl(&dword_181A37000, v24, v25, v29, buf, 0x16u);
        goto LABEL_66;
      }

      if (v49 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type[0];
        if (!os_log_type_enabled(v24, type[0]))
        {
          goto LABEL_66;
        }

        v42 = *(a1 - 64);
        v43 = "invalid";
        if (v42)
        {
          v44 = *(v42 + 16);
          if (v44)
          {
            v43 = v44;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_masque_mark_failed_with_error";
        *&buf[12] = 2082;
        *&buf[14] = v43;
        v29 = "%{public}s protocol %{public}s has invalid disconnect callback, backtrace limit exceeded";
        goto LABEL_65;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type[0];
      v36 = os_log_type_enabled(v24, type[0]);
      if (!backtrace_string)
      {
        if (!v36)
        {
          goto LABEL_66;
        }

        v45 = *(a1 - 64);
        v46 = "invalid";
        if (v45)
        {
          v47 = *(v45 + 16);
          if (v47)
          {
            v46 = v47;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_masque_mark_failed_with_error";
        *&buf[12] = 2082;
        *&buf[14] = v46;
        v29 = "%{public}s protocol %{public}s has invalid disconnect callback, no backtrace";
        goto LABEL_65;
      }

      if (v36)
      {
        v37 = *(a1 - 64);
        v38 = "invalid";
        if (v37)
        {
          v39 = *(v37 + 16);
          if (v39)
          {
            v38 = v39;
          }
        }

        *buf = 136446722;
        *&buf[4] = "nw_masque_mark_failed_with_error";
        *&buf[12] = 2082;
        *&buf[14] = v38;
        *&buf[22] = 2082;
        v53 = backtrace_string;
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s protocol %{public}s has invalid disconnect callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
    }

LABEL_66:
    if (v23)
    {
      v48 = v23;
LABEL_73:
      free(v48);
      return;
    }

    return;
  }

  v30 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_mark_failed_with_error";
  v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null masque", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v49 = 0;
  if (__nwlog_fault(v31, type, &v49))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type[0];
      if (!os_log_type_enabled(v32, type[0]))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_mark_failed_with_error";
      v34 = "%{public}s called with null masque";
LABEL_70:
      _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0xCu);
      goto LABEL_71;
    }

    if (v49 != 1)
    {
      v32 = __nwlog_obj();
      v33 = type[0];
      if (!os_log_type_enabled(v32, type[0]))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_mark_failed_with_error";
      v34 = "%{public}s called with null masque, backtrace limit exceeded";
      goto LABEL_70;
    }

    v40 = __nw_create_backtrace_string();
    v32 = __nwlog_obj();
    v33 = type[0];
    v41 = os_log_type_enabled(v32, type[0]);
    if (!v40)
    {
      if (!v41)
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_mark_failed_with_error";
      v34 = "%{public}s called with null masque, no backtrace";
      goto LABEL_70;
    }

    if (v41)
    {
      *buf = 136446466;
      *&buf[4] = "nw_masque_mark_failed_with_error";
      *&buf[12] = 2082;
      *&buf[14] = v40;
      _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v40);
  }

LABEL_71:
  if (v31)
  {
    v48 = v31;
    goto LABEL_73;
  }
}

BOOL ___ZL24nw_masque_handle_capsuleP9nw_masqueP20nw_protocol_metadata_block_invoke(uint64_t a1, unsigned int a2, unsigned int a3, const void *a4, const void *a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v46 = 0;
  nw_dispatch_data_copyout_from_offset(*(a1 + 40), &v46, 2, *(*(*(a1 + 32) + 8) + 24));
  if (v46 != a2)
  {
    v18 = *(a1 + 48);
    if (v18 && (*(v18 + 505) & 1) != 0)
    {
      return 0;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v19 = gprivacy_proxyLogObj;
    result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v20 = *(a1 + 48);
    v21 = (v20 + 507);
    v22 = "";
    if (!v20)
    {
      v21 = "";
    }

    *buf = 136446978;
    if (v20)
    {
      v22 = " ";
    }

    v48 = v21;
    v49 = 2080;
    v50 = v22;
    v51 = 1024;
    v52 = v46;
    v53 = 1024;
    v54 = a2;
    v23 = "%{public}s%sReceived pattern length (%u bytes) does not match actual pattern length (%u bytes)";
    goto LABEL_37;
  }

  *(*(*(a1 + 32) + 8) + 24) += 2;
  v45 = 0;
  nw_dispatch_data_copyout_from_offset(*(a1 + 40), &v45, 2, *(*(*(a1 + 32) + 8) + 24));
  if (v45 != a3)
  {
    v24 = *(a1 + 48);
    if (v24 && (*(v24 + 505) & 1) != 0)
    {
      return 0;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v19 = gprivacy_proxyLogObj;
    result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v25 = *(a1 + 48);
    v26 = (v25 + 507);
    v27 = "";
    if (!v25)
    {
      v26 = "";
    }

    *buf = 136446978;
    if (v25)
    {
      v27 = " ";
    }

    v48 = v26;
    v49 = 2080;
    v50 = v27;
    v51 = 1024;
    v52 = v45;
    v53 = 1024;
    v54 = a3;
    v23 = "%{public}s%sReceived pattern offset (%u bytes) does not match actual pattern offset (%u bytes)";
LABEL_37:
    v28 = v19;
    v29 = 34;
LABEL_72:
    _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, v23, buf, v29);
    return 0;
  }

  *(*(*(a1 + 32) + 8) + 24) += 2;
  subrange = dispatch_data_create_subrange(*(a1 + 40), *(*(*(a1 + 32) + 8) + 24), a2);
  v11 = *MEMORY[0x1E69E9658];
  v12 = dispatch_data_create(a4, a2, 0, *MEMORY[0x1E69E9658]);
  is_equal = nw_dispatch_data_is_equal(subrange, v12);
  if (subrange)
  {
    dispatch_release(subrange);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (is_equal)
  {
    *(*(*(a1 + 32) + 8) + 24) += a2;
    v44 = 0;
    nw_dispatch_data_copyout_from_offset(*(a1 + 40), &v44, 1, *(*(*(a1 + 32) + 8) + 24));
    if (v44 == (a5 != 0))
    {
      ++*(*(*(a1 + 32) + 8) + 24);
      if (!a5)
      {
        return 1;
      }

      v14 = dispatch_data_create_subrange(*(a1 + 40), *(*(*(a1 + 32) + 8) + 24), a2);
      v15 = dispatch_data_create(a5, a2, 0, v11);
      v16 = nw_dispatch_data_is_equal(v14, v15);
      if (v14)
      {
        dispatch_release(v14);
      }

      if (v15)
      {
        dispatch_release(v15);
      }

      if (v16)
      {
        *(*(*(a1 + 32) + 8) + 24) += a2;
        return 1;
      }

      v41 = *(a1 + 48);
      if (v41 && (*(v41 + 505) & 1) != 0)
      {
        return 0;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v31 = gprivacy_proxyLogObj;
      result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v42 = *(a1 + 48);
        v43 = v42 == 0;
        if (v42)
        {
          v39 = (v42 + 507);
        }

        else
        {
          v39 = "";
        }

        v40 = " ";
        if (v43)
        {
          v40 = "";
        }

LABEL_70:
        *buf = 136446466;
        v48 = v39;
        v49 = 2080;
        v50 = v40;
        v23 = "%{public}s%sReceived pattern mask does not match actual pattern mask";
LABEL_71:
        v28 = v31;
        v29 = 22;
        goto LABEL_72;
      }
    }

    else
    {
      v36 = *(a1 + 48);
      if (v36 && (*(v36 + 505) & 1) != 0)
      {
        return 0;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v31 = gprivacy_proxyLogObj;
      result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v37 = *(a1 + 48);
        v38 = v37 == 0;
        if (v37)
        {
          v39 = (v37 + 507);
        }

        else
        {
          v39 = "";
        }

        v40 = " ";
        if (v38)
        {
          v40 = "";
        }

        goto LABEL_70;
      }
    }
  }

  else
  {
    v30 = *(a1 + 48);
    if (v30 && (*(v30 + 505) & 1) != 0)
    {
      return 0;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v31 = gprivacy_proxyLogObj;
    result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v32 = *(a1 + 48);
      v33 = v32 == 0;
      if (v32)
      {
        v34 = (v32 + 507);
      }

      else
      {
        v34 = "";
      }

      v35 = " ";
      if (v33)
      {
        v35 = "";
      }

      *buf = 136446466;
      v48 = v34;
      v49 = 2080;
      v50 = v35;
      v23 = "%{public}s%sReceived pattern does not match actual pattern";
      goto LABEL_71;
    }
  }

  return result;
}

BOOL nw_masque_send_demux_options(uint64_t a1, void *a2, char a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_send_demux_options";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null masque", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v32[0]) = 0;
    if (!__nwlog_fault(v22, type, v32))
    {
      goto LABEL_62;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v32[0]) != 1)
      {
        v23 = __nwlog_obj();
        v24 = type[0];
        if (!os_log_type_enabled(v23, type[0]))
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_send_demux_options";
        v25 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_61;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type[0];
      v28 = os_log_type_enabled(v23, type[0]);
      if (!backtrace_string)
      {
        if (!v28)
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_send_demux_options";
        v25 = "%{public}s called with null masque, no backtrace";
        goto LABEL_61;
      }

      if (v28)
      {
        *buf = 136446466;
        *&buf[4] = "nw_masque_send_demux_options";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v29 = "%{public}s called with null masque, dumping backtrace:%{public}s";
LABEL_51:
        _os_log_impl(&dword_181A37000, v23, v24, v29, buf, 0x16u);
      }

LABEL_52:
      free(backtrace_string);
      goto LABEL_62;
    }

    v23 = __nwlog_obj();
    v24 = type[0];
    if (!os_log_type_enabled(v23, type[0]))
    {
      goto LABEL_62;
    }

    *buf = 136446210;
    *&buf[4] = "nw_masque_send_demux_options";
    v25 = "%{public}s called with null masque";
LABEL_61:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
LABEL_62:
    if (v22)
    {
      free(v22);
    }

    return 0;
  }

  if (!a2)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_send_demux_options";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null demux_options", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v32[0]) = 0;
    if (!__nwlog_fault(v22, type, v32))
    {
      goto LABEL_62;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type[0];
      if (!os_log_type_enabled(v23, type[0]))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_send_demux_options";
      v25 = "%{public}s called with null demux_options";
      goto LABEL_61;
    }

    if (LOBYTE(v32[0]) != 1)
    {
      v23 = __nwlog_obj();
      v24 = type[0];
      if (!os_log_type_enabled(v23, type[0]))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_send_demux_options";
      v25 = "%{public}s called with null demux_options, backtrace limit exceeded";
      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type[0];
    v30 = os_log_type_enabled(v23, type[0]);
    if (backtrace_string)
    {
      if (v30)
      {
        *buf = 136446466;
        *&buf[4] = "nw_masque_send_demux_options";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v29 = "%{public}s called with null demux_options, dumping backtrace:%{public}s";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (!v30)
    {
      goto LABEL_62;
    }

    *buf = 136446210;
    *&buf[4] = "nw_masque_send_demux_options";
    v25 = "%{public}s called with null demux_options, no backtrace";
    goto LABEL_61;
  }

  v4 = *(a1 + 484);
  if (a3)
  {
    if (v4 == 5)
    {
      if ((*(a1 + 505) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v5 = gprivacy_proxyLogObj;
        result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          *&buf[4] = a1 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s%sCannot send demux options in disconnected state", buf, 0x16u);
          return 0;
        }

        return result;
      }

      return 0;
    }
  }

  else if (v4 != 4)
  {
    return 0;
  }

  v7 = (a1 + 503);
  v8 = *(a1 + 503);
  if ((v8 & 8) == 0)
  {
    return 0;
  }

  if ((v8 & 0x2000000) == 0 && nw_masque_setup_demux(a1, 1) && nw_masque_setup_demux(a1, 0))
  {
    *v7 |= 0x2000000u;
  }

  *type = 0;
  v35 = type;
  v36 = 0x2000000000;
  v37 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 0x40000000;
  v33[2] = ___ZL28nw_masque_send_demux_optionsP9nw_masqueP19nw_protocol_optionsb_block_invoke;
  v33[3] = &unk_1E6A2F710;
  v33[4] = type;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __nw_demux_options_enumerate_patterns_block_invoke;
  v39 = &unk_1E6A2F0D8;
  v40 = v33;
  nw_protocol_options_access_handle(a2, buf);
  v32[4] = 0;
  alloc = dispatch_data_create_alloc();
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2000000000;
  v32[3] = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 0x40000000;
  v31[2] = ___ZL28nw_masque_send_demux_optionsP9nw_masqueP19nw_protocol_optionsb_block_invoke_2;
  v31[3] = &unk_1E6A2F738;
  v31[4] = v32;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __nw_demux_options_enumerate_patterns_block_invoke;
  v39 = &unk_1E6A2F0D8;
  v40 = v31;
  nw_protocol_options_access_handle(a2, buf);
  metadata_for_capsule = nw_http_create_metadata_for_capsule(16770304, alloc);
  v12 = nw_masque_send_metadata(a1, metadata_for_capsule, *(a1 - 64));
  v13 = *v7;
  v14 = v12;
  if (v12)
  {
    if ((v13 & 0x10000) != 0)
    {
      goto LABEL_29;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v15 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_29;
    }

    *buf = 136446722;
    *&buf[4] = "nw_masque_send_demux_options";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 507;
    *&buf[22] = 2080;
    v39 = " ";
    v16 = "%{public}s %{public}s%sSent REGISTER_DEMUX_PATTERN capsule";
    v17 = v15;
    v18 = OS_LOG_TYPE_DEBUG;
    v19 = 32;
  }

  else
  {
    if ((v13 & 0x10000) != 0)
    {
      goto LABEL_29;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v20 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446466;
    *&buf[4] = a1 + 507;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v16 = "%{public}s%sFailed to send REGISTER_DEMUX_PATTERN capsule";
    v17 = v20;
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 22;
  }

  _os_log_impl(&dword_181A37000, v17, v18, v16, buf, v19);
LABEL_29:
  if (alloc)
  {
    dispatch_release(alloc);
  }

  if (metadata_for_capsule)
  {
    os_release(metadata_for_capsule);
  }

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(type, 8);
  return v14;
}