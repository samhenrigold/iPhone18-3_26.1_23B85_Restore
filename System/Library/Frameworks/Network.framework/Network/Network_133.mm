uint64_t nw_txt_record_set_key_data_value(void *a1, const char *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  size = dispatch_data_get_size(v6);
  if (strlen(a2) + 2 * size >= 0x100)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446722;
    v35 = "nw_txt_record_set_key_data_value";
    v36 = 2080;
    v37 = a2;
    v38 = 2048;
    v39 = dispatch_data_get_size(v6);
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s Key %s + data value length %zu too large", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v9, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          v12 = dispatch_data_get_size(v6);
          *buf = 136446722;
          v35 = "nw_txt_record_set_key_data_value";
          v36 = 2080;
          v37 = a2;
          v38 = 2048;
          v39 = v12;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Key %s + data value length %zu too large", buf, 0x20u);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v21 = type;
        v22 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v22)
          {
            v23 = dispatch_data_get_size(v6);
            *buf = 136446978;
            v35 = "nw_txt_record_set_key_data_value";
            v36 = 2080;
            v37 = a2;
            v38 = 2048;
            v39 = v23;
            v40 = 2082;
            v41 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v21, "%{public}s Key %s + data value length %zu too large, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (v22)
        {
          v26 = dispatch_data_get_size(v6);
          *buf = 136446722;
          v35 = "nw_txt_record_set_key_data_value";
          v36 = 2080;
          v37 = a2;
          v38 = 2048;
          v39 = v26;
          _os_log_impl(&dword_181A37000, v10, v21, "%{public}s Key %s + data value length %zu too large, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v24 = type;
        if (os_log_type_enabled(v10, type))
        {
          v25 = dispatch_data_get_size(v6);
          *buf = 136446722;
          v35 = "nw_txt_record_set_key_data_value";
          v36 = 2080;
          v37 = a2;
          v38 = 2048;
          v39 = v25;
          _os_log_impl(&dword_181A37000, v10, v24, "%{public}s Key %s + data value length %zu too large, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v9)
    {
LABEL_9:
      v13 = 0;
LABEL_19:

      return v13;
    }

LABEL_8:
    free(v9);
    goto LABEL_9;
  }

  if (!(2 * size))
  {
    v27 = __nwlog_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    *buf = 136446210;
    v35 = "nw_txt_record_set_key_data_value";
    v29 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s strict_calloc called with size 0", buf, 12);

    result = __nwlog_should_abort(v29);
    if (result)
    {
      goto LABEL_37;
    }

    free(v29);
  }

  v14 = malloc_type_calloc(1uLL, 2 * size, 0x80954E54uLL);
  if (v14)
  {
    goto LABEL_17;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v35 = "nw_txt_record_set_key_data_value";
  if (v16)
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  v36 = 2048;
  v37 = 1;
  v38 = 2048;
  v39 = 2 * size;
  LODWORD(v30) = 32;
  v18 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v30);

  result = __nwlog_should_abort(v18);
  if (!result)
  {
    free(v18);
LABEL_17:
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = ___ZL32nw_txt_record_set_key_data_valuePU27objcproto16OS_nw_txt_record8NSObjectPKcPU27objcproto16OS_dispatch_dataS__block_invoke;
    applier[3] = &__block_descriptor_48_e47_B40__0__NSObject_OS_dispatch_data__8Q16r_v24Q32l;
    applier[4] = size;
    applier[5] = v14;
    dispatch_data_apply(v6, applier);
    v13 = nw_txt_record_set_key(v5, a2, v14, 2 * size);
    if (v14)
    {
      free(v14);
    }

    goto LABEL_19;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t ___ZL32nw_txt_record_set_key_data_valuePU27objcproto16OS_nw_txt_record8NSObjectPKcPU27objcproto16OS_dispatch_dataS__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5)
{
  if (a5)
  {
    v5 = 2 * a3;
    do
    {
      if (a3 >= *(a1 + 32))
      {
        break;
      }

      *(*(a1 + 40) + v5) = nw_printf_write_data::hex_chars[*a4 >> 4];
      v6 = *a4++;
      *(*(a1 + 40) + v5 + 1) = nw_printf_write_data::hex_chars[v6 & 0xF];
      v5 += 2;
      ++a3;
      --a5;
    }

    while (a5);
  }

  return 1;
}

uint64_t nw_protocol_fulfill_frame_request(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, unsigned int *a6, _BYTE *a7)
{
  v97 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    *a6 = 0;
  }

  if (!a1)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_fulfill_frame_request";
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null source_array", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v81[0] = 0;
    if (!__nwlog_fault(v36, type, v81))
    {
      goto LABEL_91;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type[0];
      if (!os_log_type_enabled(v37, type[0]))
      {
        goto LABEL_91;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_protocol_fulfill_frame_request";
      v39 = "%{public}s called with null source_array";
LABEL_90:
      _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
      goto LABEL_91;
    }

    if (v81[0] != 1)
    {
      v37 = __nwlog_obj();
      v38 = type[0];
      if (os_log_type_enabled(v37, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v39 = "%{public}s called with null source_array, backtrace limit exceeded";
        goto LABEL_90;
      }

      goto LABEL_91;
    }

    backtrace_string = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type[0];
    v48 = os_log_type_enabled(v37, type[0]);
    if (!backtrace_string)
    {
      if (v48)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v39 = "%{public}s called with null source_array, no backtrace";
        goto LABEL_90;
      }

      goto LABEL_91;
    }

    if (!v48)
    {
      goto LABEL_75;
    }

    *buf = 136446466;
    *&buf[4] = "__nw_protocol_fulfill_frame_request";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v49 = "%{public}s called with null source_array, dumping backtrace:%{public}s";
LABEL_74:
    _os_log_impl(&dword_181A37000, v37, v38, v49, buf, 0x16u);
    goto LABEL_75;
  }

  if (!a2)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_fulfill_frame_request";
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null destination_array", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v81[0] = 0;
    if (!__nwlog_fault(v36, type, v81))
    {
      goto LABEL_91;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type[0];
      if (!os_log_type_enabled(v37, type[0]))
      {
        goto LABEL_91;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_protocol_fulfill_frame_request";
      v39 = "%{public}s called with null destination_array";
      goto LABEL_90;
    }

    if (v81[0] != 1)
    {
      v37 = __nwlog_obj();
      v38 = type[0];
      if (os_log_type_enabled(v37, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v39 = "%{public}s called with null destination_array, backtrace limit exceeded";
        goto LABEL_90;
      }

      goto LABEL_91;
    }

    backtrace_string = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type[0];
    v50 = os_log_type_enabled(v37, type[0]);
    if (!backtrace_string)
    {
      if (v50)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v39 = "%{public}s called with null destination_array, no backtrace";
        goto LABEL_90;
      }

      goto LABEL_91;
    }

    if (!v50)
    {
      goto LABEL_75;
    }

    *buf = 136446466;
    *&buf[4] = "__nw_protocol_fulfill_frame_request";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v49 = "%{public}s called with null destination_array, dumping backtrace:%{public}s";
    goto LABEL_74;
  }

  if (!a7)
  {
    v41 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_fulfill_frame_request";
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null metadata_complete", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v81[0] = 0;
    if (!__nwlog_fault(v36, type, v81))
    {
      goto LABEL_91;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type[0];
      if (os_log_type_enabled(v37, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v39 = "%{public}s called with null metadata_complete";
        goto LABEL_90;
      }

LABEL_91:
      if (!v36)
      {
        return 0;
      }

      v33 = v36;
      goto LABEL_45;
    }

    if (v81[0] != 1)
    {
      v37 = __nwlog_obj();
      v38 = type[0];
      if (os_log_type_enabled(v37, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v39 = "%{public}s called with null metadata_complete, backtrace limit exceeded";
        goto LABEL_90;
      }

      goto LABEL_91;
    }

    backtrace_string = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type[0];
    v51 = os_log_type_enabled(v37, type[0]);
    if (!backtrace_string)
    {
      if (v51)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v39 = "%{public}s called with null metadata_complete, no backtrace";
        goto LABEL_90;
      }

      goto LABEL_91;
    }

    if (v51)
    {
      *buf = 136446466;
      *&buf[4] = "__nw_protocol_fulfill_frame_request";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v49 = "%{public}s called with null metadata_complete, dumping backtrace:%{public}s";
      goto LABEL_74;
    }

LABEL_75:
    free(backtrace_string);
    goto LABEL_91;
  }

  if (gLogDatapath == 1)
  {
    v42 = a1;
    v43 = a7;
    v44 = __nwlog_obj();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);
    a7 = v43;
    v46 = v45;
    a1 = v42;
    if (v46)
    {
      *buf = 136446978;
      *&buf[4] = "__nw_protocol_fulfill_frame_request";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      *&buf[18] = 1024;
      *&buf[20] = a4;
      LOWORD(v87) = 1024;
      *(&v87 + 2) = a5;
      _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s called with minimum bytes: %u, maximum bytes: %u, maximum frames: %u", buf, 0x1Eu);
      a7 = v43;
      a1 = v42;
    }
  }

  if (a4 < a3 || !a5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    *&buf[4] = "__nw_protocol_fulfill_frame_request";
    *&buf[12] = 1024;
    *&buf[14] = a4;
    *&buf[18] = 1024;
    *&buf[20] = a3;
    LOWORD(v87) = 1024;
    *(&v87 + 2) = a5;
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s invalid values for frame request, max %u, min %u, max frame %u", buf, 30);
    type[0] = OS_LOG_TYPE_ERROR;
    v81[0] = 0;
    if (__nwlog_fault(v27, type, v81))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v29 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446978;
          *&buf[4] = "__nw_protocol_fulfill_frame_request";
          *&buf[12] = 1024;
          *&buf[14] = a4;
          *&buf[18] = 1024;
          *&buf[20] = a3;
          LOWORD(v87) = 1024;
          *(&v87 + 2) = a5;
          v30 = "%{public}s invalid values for frame request, max %u, min %u, max frame %u";
LABEL_42:
          _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0x1Eu);
        }
      }

      else if (v81[0] == 1)
      {
        v31 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v29 = type[0];
        v32 = os_log_type_enabled(gLogObj, type[0]);
        if (v31)
        {
          if (v32)
          {
            *buf = 136447234;
            *&buf[4] = "__nw_protocol_fulfill_frame_request";
            *&buf[12] = 1024;
            *&buf[14] = a4;
            *&buf[18] = 1024;
            *&buf[20] = a3;
            LOWORD(v87) = 1024;
            *(&v87 + 2) = a5;
            HIWORD(v87) = 2082;
            v88 = v31;
            _os_log_impl(&dword_181A37000, v28, v29, "%{public}s invalid values for frame request, max %u, min %u, max frame %u, dumping backtrace:%{public}s", buf, 0x28u);
          }

          free(v31);
          goto LABEL_43;
        }

        if (v32)
        {
          *buf = 136446978;
          *&buf[4] = "__nw_protocol_fulfill_frame_request";
          *&buf[12] = 1024;
          *&buf[14] = a4;
          *&buf[18] = 1024;
          *&buf[20] = a3;
          LOWORD(v87) = 1024;
          *(&v87 + 2) = a5;
          v30 = "%{public}s invalid values for frame request, max %u, min %u, max frame %u, no backtrace";
          goto LABEL_42;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v29 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446978;
          *&buf[4] = "__nw_protocol_fulfill_frame_request";
          *&buf[12] = 1024;
          *&buf[14] = a4;
          *&buf[18] = 1024;
          *&buf[20] = a3;
          LOWORD(v87) = 1024;
          *(&v87 + 2) = a5;
          v30 = "%{public}s invalid values for frame request, max %u, min %u, max frame %u, backtrace limit exceeded";
          goto LABEL_42;
        }
      }
    }

LABEL_43:
    if (!v27)
    {
      return 0;
    }

    v33 = v27;
LABEL_45:
    free(v33);
    return 0;
  }

  *type = 0;
  v66 = type;
  v67 = 0x3802000000;
  v68 = __Block_byref_object_copy__3805;
  v69 = __Block_byref_object_dispose__3806;
  v70[0] = 0;
  v70[1] = v70;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2000000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2000000000;
  v60 = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZL35__nw_protocol_fulfill_frame_requestP16nw_frame_array_sS0_bbjjjPjPb_block_invoke;
  v87 = &unk_1E6A2BDE0;
  v88 = &v61;
  v89 = &v57;
  v93 = a5;
  v94 = a4;
  v91 = a7;
  v92 = a1;
  v95 = 1;
  v12 = a7;
  v90 = type;
  v96 = 1;
  v13 = a1;
  v14 = *a1;
  do
  {
    if (!v14)
    {
      break;
    }

    v15 = *(v14 + 32);
    v16 = (*&buf[16])(buf);
    v14 = v15;
  }

  while ((v16 & 1) != 0);
  v17 = *(v58 + 6);
  if (v17 < a3 && *(v66 + 5) && (*v12 & 1) == 0)
  {
    if (gLogDatapath == 1)
    {
      v55 = __nwlog_obj();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        v56 = *(v58 + 6);
        *v81 = 136446722;
        *&v81[4] = "__nw_protocol_fulfill_frame_request";
        *&v81[12] = 1024;
        *&v81[14] = a3;
        *&v81[18] = 1024;
        *&v81[20] = v56;
        _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, "%{public}s could not meet minimum byte count %u with %u bytes from source array", v81, 0x18u);
      }
    }

    v18 = v66;
    v19 = v66 + 40;
    if (*v13)
    {
      v20 = *(v66 + 6);
      *v20 = *v13;
      *(*v13 + 40) = v20;
      *(v18 + 6) = v13[1];
      *v13 = 0;
      v13[1] = v13;
    }

    if (*v19)
    {
      v21 = v13[1];
      *v21 = *v19;
      *(*(v18 + 5) + 40) = v21;
      v13[1] = *(v18 + 6);
      *(v18 + 5) = 0;
      *(v18 + 6) = v19;
    }

    v17 = 0;
    v22 = v66;
    *(v66 + 5) = 0;
    *(v22 + 6) = v22 + 40;
    *(v62 + 6) = 0;
    *(v58 + 6) = 0;
  }

  if (a6)
  {
    *a6 = v17;
  }

  v23 = *(v66 + 5);
  if (v23)
  {
    *v81 = MEMORY[0x1E69E9820];
    *&v81[8] = 0x40000000;
    *&v81[16] = ___ZL35__nw_protocol_fulfill_frame_requestP16nw_frame_array_sS0_bbjjjPjPb_block_invoke_27;
    v82 = &unk_1E6A2BE08;
    v85 = 1;
    v83 = type;
    v84 = a2;
    do
    {
      if (!v23)
      {
        break;
      }

      v24 = *(v23 + 32);
      v25 = (*&v81[16])(v81);
      v23 = v24;
    }

    while ((v25 & 1) != 0);
  }

  if (gLogDatapath == 1)
  {
    v52 = __nwlog_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v53 = *(v62 + 6);
      v54 = *(v58 + 6);
      *v71 = 136447234;
      v72 = "__nw_protocol_fulfill_frame_request";
      v73 = 1024;
      v74 = v53;
      v75 = 1024;
      v76 = v54;
      v77 = 2048;
      v78 = v13;
      v79 = 2048;
      v80 = a2;
      _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s moved (%u frames, %u bytes) from %p to %p", v71, 0x2Cu);
    }
  }

  v26 = *(v62 + 6);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(type, 8);
  return v26;
}

__n128 __Block_byref_object_copy__3805(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

BOOL ___ZL35__nw_protocol_fulfill_frame_requestP16nw_frame_array_sS0_bbjjjPjPb_block_invoke(uint64_t a1, _DWORD *a2)
{
  v122 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_unclaimed_length(a2);
  if ((*(*(*(a1 + 32) + 8) + 24) + 1) > *(a1 + 72))
  {
    return 0;
  }

  v6 = v4;
  v7 = *(*(*(a1 + 40) + 8) + 24);
  v8 = v7 + v4;
  if (__CFADD__(v7, v4))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
    v116 = 2082;
    *v117 = "bytes_count_with_this_frame";
    *&v117[8] = 2048;
    v118 = v6;
    *v119 = 2048;
    *&v119[2] = v8;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    v113 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v9, type, &v113))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446978;
          v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v116 = 2082;
          *v117 = "bytes_count_with_this_frame";
          *&v117[8] = 2048;
          v118 = v6;
          *v119 = 2048;
          *&v119[2] = v8;
          v12 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_18:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0x2Au);
        }
      }

      else if (v113 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        v14 = os_log_type_enabled(gLogObj, type[0]);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136447234;
            v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v116 = 2082;
            *v117 = "bytes_count_with_this_frame";
            *&v117[8] = 2048;
            v118 = v6;
            *v119 = 2048;
            *&v119[2] = v8;
            v120 = 2082;
            v121 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (v14)
        {
          *buf = 136446978;
          v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v116 = 2082;
          *v117 = "bytes_count_with_this_frame";
          *&v117[8] = 2048;
          v118 = v6;
          *v119 = 2048;
          *&v119[2] = v8;
          v12 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_18;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446978;
          v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v116 = 2082;
          *v117 = "bytes_count_with_this_frame";
          *&v117[8] = 2048;
          v118 = v6;
          *v119 = 2048;
          *&v119[2] = v8;
          v12 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_18;
        }
      }
    }

LABEL_19:
    if (v9)
    {
      free(v9);
    }

    LODWORD(v8) = -1;
  }

  v15 = *(a1 + 76);
  if (v8 <= v15)
  {
    v34 = *(*(a1 + 40) + 8);
    v35 = *(v34 + 24);
    *(v34 + 24) = v35 + v6;
    if (!__CFADD__(v35, v6))
    {
      goto LABEL_75;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = *(*(*(a1 + 40) + 8) + 24);
    *buf = 136446978;
    v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
    v116 = 2082;
    *v117 = "bytes_count";
    *&v117[8] = 2048;
    v118 = v6;
    *v119 = 2048;
    *&v119[2] = v36;
    LODWORD(v109) = 42;
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v109);
    type[0] = OS_LOG_TYPE_ERROR;
    v113 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v37, type, &v113))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = gLogObj;
        v39 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v40 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 136446978;
          v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v116 = 2082;
          *v117 = "bytes_count";
          *&v117[8] = 2048;
          v118 = v6;
          *v119 = 2048;
          *&v119[2] = v40;
          v41 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_71:
          _os_log_impl(&dword_181A37000, v38, v39, v41, buf, 0x2Au);
        }
      }

      else if (v113 == OS_LOG_TYPE_INFO)
      {
        v43 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = gLogObj;
        v39 = type[0];
        v44 = os_log_type_enabled(gLogObj, type[0]);
        if (v43)
        {
          if (v44)
          {
            v45 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136447234;
            v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v116 = 2082;
            *v117 = "bytes_count";
            *&v117[8] = 2048;
            v118 = v6;
            *v119 = 2048;
            *&v119[2] = v45;
            v120 = 2082;
            v121 = v43;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v43);
          goto LABEL_72;
        }

        if (v44)
        {
          v58 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 136446978;
          v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v116 = 2082;
          *v117 = "bytes_count";
          *&v117[8] = 2048;
          v118 = v6;
          *v119 = 2048;
          *&v119[2] = v58;
          v41 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_71;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = gLogObj;
        v39 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v51 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 136446978;
          v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v116 = 2082;
          *v117 = "bytes_count";
          *&v117[8] = 2048;
          v118 = v6;
          *v119 = 2048;
          *&v119[2] = v51;
          v41 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_71;
        }
      }
    }

LABEL_72:
    if (v37)
    {
      free(v37);
    }

    *(*(*(a1 + 40) + 8) + 24) = -1;
LABEL_75:
    if (nw_frame_is_metadata_complete(a2))
    {
      **(a1 + 56) = 1;
    }

    v59 = (*(a1 + 64) + 8);
    v60 = 4;
    if (*(a1 + 80))
    {
      v60 = 8;
    }

    v61 = 6;
    if (*(a1 + 80))
    {
      v61 = 10;
    }

    v62 = &a2[v60];
    v63 = *v62;
    v64 = *&a2[v61];
    v65 = (*v62 + v61 * 4);
    if (*v62)
    {
      v59 = v65;
    }

    *v59 = v64;
    *v64 = v63;
    *v62 = 0;
    v62[1] = 0;
    if (gLogDatapath == 1)
    {
      v105 = __nwlog_obj();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
        v116 = 1024;
        *v117 = v6;
        _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_DEBUG, "%{public}s Moving entire frame (%u bytes)", buf, 0x12u);
      }
    }

    v66 = *(*(a1 + 32) + 8);
    v67 = *(v66 + 24) + 1;
    *(v66 + 24) = v67;
    if (v67 == v67 << 31 >> 31)
    {
      goto LABEL_104;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v68 = *(*(*(a1 + 32) + 8) + 24);
    *buf = 136446978;
    v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
    v116 = 2082;
    *v117 = "frame_count";
    *&v117[8] = 2048;
    v118 = 1;
    *v119 = 2048;
    *&v119[2] = v68;
    LODWORD(v109) = 42;
    v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v109);
    type[0] = OS_LOG_TYPE_ERROR;
    v113 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v69, type, &v113))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v70 = gLogObj;
        v71 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v72 = *(*(*(a1 + 32) + 8) + 24);
          *buf = 136446978;
          v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v116 = 2082;
          *v117 = "frame_count";
          *&v117[8] = 2048;
          v118 = 1;
          *v119 = 2048;
          *&v119[2] = v72;
          v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_100:
          _os_log_impl(&dword_181A37000, v70, v71, v73, buf, 0x2Au);
        }
      }

      else if (v113 == OS_LOG_TYPE_INFO)
      {
        v74 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v70 = gLogObj;
        v71 = type[0];
        v75 = os_log_type_enabled(gLogObj, type[0]);
        if (v74)
        {
          if (v75)
          {
            v76 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136447234;
            v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v116 = 2082;
            *v117 = "frame_count";
            *&v117[8] = 2048;
            v118 = 1;
            *v119 = 2048;
            *&v119[2] = v76;
            v120 = 2082;
            v121 = v74;
            _os_log_impl(&dword_181A37000, v70, v71, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v74);
          goto LABEL_101;
        }

        if (v75)
        {
          v78 = *(*(*(a1 + 32) + 8) + 24);
          *buf = 136446978;
          v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v116 = 2082;
          *v117 = "frame_count";
          *&v117[8] = 2048;
          v118 = 1;
          *v119 = 2048;
          *&v119[2] = v78;
          v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_100;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v70 = gLogObj;
        v71 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v77 = *(*(*(a1 + 32) + 8) + 24);
          *buf = 136446978;
          v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v116 = 2082;
          *v117 = "frame_count";
          *&v117[8] = 2048;
          v118 = 1;
          *v119 = 2048;
          *&v119[2] = v77;
          v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_100;
        }
      }
    }

LABEL_101:
    if (v69)
    {
      free(v69);
    }

    *(*(*(a1 + 32) + 8) + 24) = -1;
LABEL_104:
    v79 = *(*(a1 + 48) + 8);
    v80 = 4;
    if (*(a1 + 80))
    {
      v80 = 8;
    }

    v81 = 6;
    if (*(a1 + 80))
    {
      v81 = 10;
    }

    v82 = &a2[v80];
    *v82 = 0;
    v83 = *(v79 + 48);
    *&a2[v81] = v83;
    *v83 = a2;
    *(v79 + 48) = v82;
    return 1;
  }

  if (*(a1 + 81))
  {
    v16 = v15 - *(*(*(a1 + 40) + 8) + 24);
    v17 = (*(a1 + 64) + 8);
    v18 = 4;
    if (*(a1 + 80))
    {
      v18 = 8;
    }

    v19 = 6;
    if (*(a1 + 80))
    {
      v19 = 10;
    }

    v20 = &a2[v18];
    v21 = *v20;
    v22 = *&a2[v19];
    v23 = (*v20 + v19 * 4);
    if (*v20)
    {
      v17 = v23;
    }

    *v17 = v22;
    *v22 = v21;
    *v20 = 0;
    v20[1] = 0;
    *type = a2;
    v24 = nw_frame_split(type, v16);
    if (v24)
    {
      v25 = v24;
      nw_frame_array_prepend(*(a1 + 64), *(a1 + 80), *type);
      v26 = *(*(a1 + 40) + 8);
      v27 = *(v26 + 24);
      *(v26 + 24) = v27 + v16;
      if (!__CFADD__(v27, v16))
      {
        goto LABEL_117;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 136446978;
      v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
      v116 = 2082;
      *v117 = "bytes_count";
      *&v117[8] = 2048;
      v118 = v16;
      *v119 = 2048;
      *&v119[2] = v28;
      LODWORD(v109) = 42;
      v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v109);
      v113 = OS_LOG_TYPE_ERROR;
      v111 = 0;
      if (__nwlog_fault(v29, &v113, &v111))
      {
        if (v113 == OS_LOG_TYPE_FAULT)
        {
          v30 = __nwlog_obj();
          v31 = v113;
          if (os_log_type_enabled(v30, v113))
          {
            v32 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136446978;
            v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v116 = 2082;
            *v117 = "bytes_count";
            *&v117[8] = 2048;
            v118 = v16;
            *v119 = 2048;
            *&v119[2] = v32;
            v33 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_112:
            v85 = v30;
LABEL_113:
            _os_log_impl(&dword_181A37000, v85, v31, v33, buf, 0x2Au);
          }
        }

        else if (v111 == 1)
        {
          v54 = __nw_create_backtrace_string();
          v55 = __nwlog_obj();
          v31 = v113;
          log = v55;
          v56 = os_log_type_enabled(v55, v113);
          if (v54)
          {
            if (v56)
            {
              v57 = *(*(*(a1 + 40) + 8) + 24);
              *buf = 136447234;
              v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
              v116 = 2082;
              *v117 = "bytes_count";
              *&v117[8] = 2048;
              v118 = v16;
              *v119 = 2048;
              *&v119[2] = v57;
              v120 = 2082;
              v121 = v54;
              _os_log_impl(&dword_181A37000, log, v31, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v54);
            goto LABEL_114;
          }

          if (v56)
          {
            v98 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136446978;
            v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v116 = 2082;
            *v117 = "bytes_count";
            *&v117[8] = 2048;
            v118 = v16;
            *v119 = 2048;
            *&v119[2] = v98;
            v33 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            v85 = log;
            goto LABEL_113;
          }
        }

        else
        {
          v30 = __nwlog_obj();
          v31 = v113;
          if (os_log_type_enabled(v30, v113))
          {
            v84 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136446978;
            v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v116 = 2082;
            *v117 = "bytes_count";
            *&v117[8] = 2048;
            v118 = v16;
            *v119 = 2048;
            *&v119[2] = v84;
            v33 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_112;
          }
        }
      }

LABEL_114:
      if (v29)
      {
        free(v29);
      }

      *(*(*(a1 + 40) + 8) + 24) = -1;
LABEL_117:
      if (gLogDatapath == 1)
      {
        v106 = __nwlog_obj();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
        {
          v107 = nw_frame_unclaimed_length(*type);
          v108 = v25[13];
          if (v108)
          {
            v108 -= v25[14] + v25[15];
          }

          *buf = 136447234;
          v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v116 = 1024;
          *v117 = v16;
          *&v117[4] = 1024;
          *&v117[6] = v6;
          LOWORD(v118) = 1024;
          *(&v118 + 2) = v107;
          HIWORD(v118) = 1024;
          *v119 = v108;
          _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_DEBUG, "%{public}s Moving split frame (%u bytes of %u, %u bytes remaining, delivering %u bytes)", buf, 0x24u);
        }
      }

      v86 = *(*(a1 + 32) + 8);
      v87 = *(v86 + 24) + 1;
      *(v86 + 24) = v87;
      if (v87 == v87 << 31 >> 31)
      {
        goto LABEL_143;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v88 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136446978;
      v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
      v116 = 2082;
      *v117 = "frame_count";
      *&v117[8] = 2048;
      v118 = 1;
      *v119 = 2048;
      *&v119[2] = v88;
      LODWORD(v109) = 42;
      v89 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v109);
      v113 = OS_LOG_TYPE_ERROR;
      v111 = 0;
      if (__nwlog_fault(v89, &v113, &v111))
      {
        if (v113 == OS_LOG_TYPE_FAULT)
        {
          v90 = __nwlog_obj();
          v91 = v113;
          if (os_log_type_enabled(v90, v113))
          {
            v92 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v116 = 2082;
            *v117 = "frame_count";
            *&v117[8] = 2048;
            v118 = 1;
            *v119 = 2048;
            *&v119[2] = v92;
            v93 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_139:
            _os_log_impl(&dword_181A37000, v90, v91, v93, buf, 0x2Au);
          }
        }

        else if (v111 == 1)
        {
          v94 = __nw_create_backtrace_string();
          v90 = __nwlog_obj();
          v91 = v113;
          v95 = os_log_type_enabled(v90, v113);
          if (v94)
          {
            if (v95)
            {
              v96 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136447234;
              v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
              v116 = 2082;
              *v117 = "frame_count";
              *&v117[8] = 2048;
              v118 = 1;
              *v119 = 2048;
              *&v119[2] = v96;
              v120 = 2082;
              v121 = v94;
              _os_log_impl(&dword_181A37000, v90, v91, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v94);
            goto LABEL_140;
          }

          if (v95)
          {
            v99 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v116 = 2082;
            *v117 = "frame_count";
            *&v117[8] = 2048;
            v118 = 1;
            *v119 = 2048;
            *&v119[2] = v99;
            v93 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_139;
          }
        }

        else
        {
          v90 = __nwlog_obj();
          v91 = v113;
          if (os_log_type_enabled(v90, v113))
          {
            v97 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v116 = 2082;
            *v117 = "frame_count";
            *&v117[8] = 2048;
            v118 = 1;
            *v119 = 2048;
            *&v119[2] = v97;
            v93 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_139;
          }
        }
      }

LABEL_140:
      if (v89)
      {
        free(v89);
      }

      *(*(*(a1 + 32) + 8) + 24) = -1;
LABEL_143:
      v100 = *(*(a1 + 48) + 8);
      v101 = 4;
      if (*(a1 + 80))
      {
        v101 = 8;
      }

      v102 = 6;
      if (*(a1 + 80))
      {
        v102 = 10;
      }

      v103 = &v25[v101];
      *v103 = 0;
      v104 = *(v100 + 48);
      *&v25[v102] = v104;
      *v104 = v25;
      *(v100 + 48) = v103;
      return 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
      v116 = 2048;
      *v117 = a2;
      *&v117[8] = 1024;
      LODWORD(v118) = v16;
      _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "%{public}s failed to split frame %p at offset %u", buf, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
    LODWORD(v109) = 12;
    v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_frame_split with partial frame failed", buf, v109);
    v113 = OS_LOG_TYPE_ERROR;
    v111 = 0;
    if (__nwlog_fault(v47, &v113, &v111))
    {
      if (v113 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v48 = gLogObj;
        v49 = v113;
        if (!os_log_type_enabled(gLogObj, v113))
        {
          goto LABEL_133;
        }

        *buf = 136446210;
        v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
        v50 = "%{public}s nw_frame_split with partial frame failed";
        goto LABEL_132;
      }

      if (v111 != 1)
      {
        v48 = __nwlog_obj();
        v49 = v113;
        if (!os_log_type_enabled(v48, v113))
        {
          goto LABEL_133;
        }

        *buf = 136446210;
        v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
        v50 = "%{public}s nw_frame_split with partial frame failed, backtrace limit exceeded";
        goto LABEL_132;
      }

      v52 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = v113;
      v53 = os_log_type_enabled(v48, v113);
      if (v52)
      {
        if (v53)
        {
          *buf = 136446466;
          v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v116 = 2082;
          *v117 = v52;
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s nw_frame_split with partial frame failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v52);
        goto LABEL_133;
      }

      if (v53)
      {
        *buf = 136446210;
        v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
        v50 = "%{public}s nw_frame_split with partial frame failed, no backtrace";
LABEL_132:
        _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
      }
    }

LABEL_133:
    if (v47)
    {
      free(v47);
    }

    return 0;
  }

  if (gLogDatapath != 1)
  {
    return 0;
  }

  v42 = __nwlog_obj();
  result = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446210;
    v115 = "__nw_protocol_fulfill_frame_request_block_invoke";
    _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s skipping partial frame, split frames not allowed", buf, 0xCu);
    return 0;
  }

  return result;
}

uint64_t ___ZL35__nw_protocol_fulfill_frame_requestP16nw_frame_array_sS0_bbjjjPjPb_block_invoke_27(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (*(*(a1 + 32) + 8) + 48);
    v3 = 16;
    if (*(a1 + 48))
    {
      v4 = 32;
    }

    else
    {
      v4 = 16;
    }

    if (*(a1 + 48))
    {
      v5 = 40;
    }

    else
    {
      v5 = 24;
    }

    v6 = (a2 + v4);
    v7 = *v6;
    v8 = *(a2 + v5);
    v9 = (*v6 + v5);
    if (*v6)
    {
      v2 = v9;
    }

    *v2 = v8;
    *v8 = v7;
    *v6 = 0;
    v6[1] = 0;
    v10 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v3 = 32;
      v11 = 40;
    }

    else
    {
      v11 = 24;
    }

    v12 = (a2 + v3);
    *v12 = 0;
    v13 = *(v10 + 8);
    *(a2 + v11) = v13;
    *v13 = a2;
    *(v10 + 8) = v12;
  }

  return 1;
}

void nw_protocol_plugin_metadata_get_and_process_frames(uint64_t a1, void *a2, uint64_t a3, int a4, _DWORD *a5, _DWORD *a6, unsigned int *a7, unsigned int *a8, _DWORD *a9, uint64_t a10, uint64_t *a11)
{
  v136 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v70 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
    v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s called with null input_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v117) = 0;
    if (!__nwlog_fault(v71, type, &v117))
    {
      goto LABEL_174;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = type[0];
      if (!os_log_type_enabled(v72, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      v74 = "%{public}s called with null input_protocol";
    }

    else if (v117 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v72 = __nwlog_obj();
      v73 = type[0];
      v85 = os_log_type_enabled(v72, type[0]);
      if (backtrace_string)
      {
        if (v85)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_174:
        if (!v71)
        {
          return;
        }

        goto LABEL_175;
      }

      if (!v85)
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      v74 = "%{public}s called with null input_protocol, no backtrace";
    }

    else
    {
      v72 = __nwlog_obj();
      v73 = type[0];
      if (!os_log_type_enabled(v72, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      v74 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

    goto LABEL_173;
  }

  if (!a10)
  {
    v75 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
    v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s called with null processor", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v117) = 0;
    if (!__nwlog_fault(v71, type, &v117))
    {
      goto LABEL_174;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v117 != 1)
      {
        v72 = __nwlog_obj();
        v73 = type[0];
        if (!os_log_type_enabled(v72, type[0]))
        {
          goto LABEL_174;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
        v74 = "%{public}s called with null processor, backtrace limit exceeded";
        goto LABEL_173;
      }

      v86 = __nw_create_backtrace_string();
      v72 = __nwlog_obj();
      v73 = type[0];
      v87 = os_log_type_enabled(v72, type[0]);
      if (!v86)
      {
        if (!v87)
        {
          goto LABEL_174;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
        v74 = "%{public}s called with null processor, no backtrace";
        goto LABEL_173;
      }

      if (v87)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
        *&buf[12] = 2082;
        *&buf[14] = v86;
        v88 = "%{public}s called with null processor, dumping backtrace:%{public}s";
LABEL_131:
        _os_log_impl(&dword_181A37000, v72, v73, v88, buf, 0x16u);
      }

LABEL_132:
      free(v86);
      if (!v71)
      {
        return;
      }

LABEL_175:
      free(v71);
      return;
    }

    v72 = __nwlog_obj();
    v73 = type[0];
    if (!os_log_type_enabled(v72, type[0]))
    {
      goto LABEL_174;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
    v74 = "%{public}s called with null processor";
LABEL_173:
    _os_log_impl(&dword_181A37000, v72, v73, v74, buf, 0xCu);
    goto LABEL_174;
  }

  if (!a11)
  {
    v76 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
    v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v76, 16, "%{public}s called with null destination_array", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v117) = 0;
    if (!__nwlog_fault(v71, type, &v117))
    {
      goto LABEL_174;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = type[0];
      if (!os_log_type_enabled(v72, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      v74 = "%{public}s called with null destination_array";
      goto LABEL_173;
    }

    if (v117 != 1)
    {
      v72 = __nwlog_obj();
      v73 = type[0];
      if (!os_log_type_enabled(v72, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      v74 = "%{public}s called with null destination_array, backtrace limit exceeded";
      goto LABEL_173;
    }

    v86 = __nw_create_backtrace_string();
    v72 = __nwlog_obj();
    v73 = type[0];
    v98 = os_log_type_enabled(v72, type[0]);
    if (!v86)
    {
      if (!v98)
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      v74 = "%{public}s called with null destination_array, no backtrace";
      goto LABEL_173;
    }

    if (v98)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      *&buf[12] = 2082;
      *&buf[14] = v86;
      v88 = "%{public}s called with null destination_array, dumping backtrace:%{public}s";
      goto LABEL_131;
    }

    goto LABEL_132;
  }

  if ((*(a1 + 142) & 0x10) == 0)
  {
    if (*(a1 + 140) == 3)
    {
      *a5 = 0;
      *a6 = -1;
      *a7 = -1;
    }

    v17 = a9;
    if (gLogDatapath == 1)
    {
      v89 = __nwlog_obj();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
      {
        v90 = *a5;
        v91 = *a6;
        v92 = *a7;
        *buf = 136446978;
        *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
        *&buf[12] = 1024;
        *&buf[14] = v90;
        *&buf[18] = 1024;
        *&buf[20] = v91;
        LOWORD(v125) = 1024;
        *(&v125 + 2) = v92;
        _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s Getting new frames from below with minimum_bytes %u, maximum_bytes %u, maximum_frame_count %u", buf, 0x1Eu);
      }
    }

    v117 = 0;
    v118 = &v117;
    v18 = a2[4];
    v116 = a5;
    if (v18)
    {
      v19 = *a5;
      v20 = *a6;
      v21 = *a7;
      v22 = *(v18 + 40);
      v23 = a2[4];
      if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v23 = *(v18 + 64)) != 0)
      {
        v26 = *(v23 + 88);
        v114 = 0;
        if (v26)
        {
          *(v23 + 88) = v26 + 1;
        }
      }

      else
      {
        v114 = 1;
      }

      v27 = a2[5];
      v28 = a2;
      if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v28 = a2[8]) != 0)
      {
        v30 = v28[11];
        v29 = 0;
        if (v30)
        {
          v28[11] = v30 + 1;
        }
      }

      else
      {
        v29 = 1;
      }

      v31 = *(v18 + 24);
      if (v31)
      {
        v32 = *(v31 + 80);
        if (v32)
        {
          v33 = v32(v18, a2, v19, v20, v21, &v117) == 0;
          goto LABEL_30;
        }
      }

      v77 = __nwlog_obj();
      v78 = *(v18 + 16);
      *buf = 136446722;
      *&buf[4] = "__nw_protocol_get_input_frames";
      if (!v78)
      {
        v78 = "invalid";
      }

      *&buf[12] = 2082;
      *&buf[14] = v78;
      *&buf[22] = 2048;
      v125 = v18;
      v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback", buf, 32);
      type[0] = OS_LOG_TYPE_ERROR;
      v119 = 0;
      v112 = v79;
      if (__nwlog_fault(v79, type, &v119))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v80 = __nwlog_obj();
          v81 = type[0];
          if (os_log_type_enabled(v80, type[0]))
          {
            v82 = *(v18 + 16);
            if (!v82)
            {
              v82 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v82;
            *&buf[22] = 2048;
            v125 = v18;
            v83 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback";
LABEL_160:
            v106 = v80;
            v107 = v81;
LABEL_161:
            _os_log_impl(&dword_181A37000, v106, v107, v83, buf, 0x20u);
          }
        }

        else if (v119 == 1)
        {
          v99 = __nw_create_backtrace_string();
          log = __nwlog_obj();
          v111 = type[0];
          v100 = os_log_type_enabled(log, type[0]);
          if (v99)
          {
            if (v100)
            {
              v101 = *(v18 + 16);
              if (!v101)
              {
                v101 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v101;
              *&buf[22] = 2048;
              v125 = v18;
              *v126 = 2082;
              *&v126[2] = v99;
              _os_log_impl(&dword_181A37000, log, v111, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v99);
            goto LABEL_162;
          }

          if (v100)
          {
            v108 = *(v18 + 16);
            if (!v108)
            {
              v108 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v108;
            *&buf[22] = 2048;
            v125 = v18;
            v83 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, no backtrace";
            v106 = log;
            v107 = v111;
            goto LABEL_161;
          }
        }

        else
        {
          v80 = __nwlog_obj();
          v81 = type[0];
          if (os_log_type_enabled(v80, type[0]))
          {
            v105 = *(v18 + 16);
            if (!v105)
            {
              v105 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v105;
            *&buf[22] = 2048;
            v125 = v18;
            v83 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, backtrace limit exceeded";
            goto LABEL_160;
          }
        }
      }

LABEL_162:
      if (v112)
      {
        free(v112);
      }

      v33 = 1;
LABEL_30:
      if ((v29 & 1) == 0)
      {
        v34 = a2[5];
        v35 = a2;
        if (v34 == &nw_protocol_ref_counted_handle || v34 == &nw_protocol_ref_counted_additional_handle && (v35 = a2[8]) != 0)
        {
          v36 = v35[11];
          if (v36)
          {
            v37 = v36 - 1;
            v35[11] = v37;
            if (!v37)
            {
              v38 = v35[8];
              if (v38)
              {
                v35[8] = 0;
                v38[2](v38);
                _Block_release(v38);
              }

              if (v35[9])
              {
                v39 = v35[8];
                if (v39)
                {
                  _Block_release(v39);
                }
              }

              free(v35);
            }
          }
        }
      }

      v17 = a9;
      if ((v114 & 1) == 0)
      {
        v40 = *(v18 + 40);
        if (v40 == &nw_protocol_ref_counted_handle || v40 == &nw_protocol_ref_counted_additional_handle && (v18 = *(v18 + 64)) != 0)
        {
          v41 = *(v18 + 88);
          if (v41)
          {
            v42 = v41 - 1;
            *(v18 + 88) = v42;
            if (!v42)
            {
              v43 = *(v18 + 64);
              if (v43)
              {
                *(v18 + 64) = 0;
                v43[2](v43);
                _Block_release(v43);
              }

              if (*(v18 + 72))
              {
                v44 = *(v18 + 64);
                if (v44)
                {
                  _Block_release(v44);
                }
              }

              free(v18);
            }
          }
        }
      }

      v45 = a8;
      if (v33 || *(a1 + 140) == 2)
      {
        goto LABEL_78;
      }

      *type = 0;
      v121 = type;
      v122 = 0x2000000000;
      v123 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __nw_protocol_plugin_metadata_process_frames_block_invoke;
      v125 = &unk_1E6A2BE58;
      *&v126[16] = a1;
      v127 = a6;
      v135 = 1;
      v128 = &v117;
      v129 = a11;
      v130 = v116;
      v131 = a9;
      v132 = a2;
      *v126 = type;
      *&v126[8] = a7;
      v133 = a10;
      v134 = a3;
      v46 = v117;
      do
      {
        if (!v46)
        {
          break;
        }

        v47 = *(v46 + 32);
        v48 = (*&buf[16])(buf);
        v46 = v47;
      }

      while ((v48 & 1) != 0);
      v49 = *(v121 + 6);
      _Block_object_dispose(type, 8);
      v50 = __CFADD__(*a8, v49);
      *a8 += v49;
      if (!v50)
      {
        goto LABEL_78;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v51 = *a8;
      *buf = 136446978;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      *&buf[12] = 2082;
      *&buf[14] = "count";
      *&buf[22] = 2048;
      v125 = v49;
      *v126 = 2048;
      *&v126[2] = v51;
      LODWORD(v109) = 42;
      v52 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v109);
      type[0] = OS_LOG_TYPE_ERROR;
      v119 = 0;
      if (__nwlog_fault(v52, type, &v119))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v53 = gLogObj;
          v54 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            v55 = *a8;
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v125 = v49;
            *v126 = 2048;
            *&v126[2] = v55;
            v56 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_74:
            _os_log_impl(&dword_181A37000, v53, v54, v56, buf, 0x2Au);
          }
        }

        else if (v119 == 1)
        {
          v57 = __nw_create_backtrace_string();
          v53 = __nwlog_obj();
          v54 = type[0];
          v58 = os_log_type_enabled(v53, type[0]);
          if (v57)
          {
            if (v58)
            {
              v59 = *a8;
              *buf = 136447234;
              *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
              *&buf[12] = 2082;
              *&buf[14] = "count";
              *&buf[22] = 2048;
              v125 = v49;
              *v126 = 2048;
              *&v126[2] = v59;
              *&v126[10] = 2082;
              *&v126[12] = v57;
              _os_log_impl(&dword_181A37000, v53, v54, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v57);
            v45 = a8;
            goto LABEL_75;
          }

          v45 = a8;
          if (v58)
          {
            v61 = *a8;
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v125 = v49;
            *v126 = 2048;
            *&v126[2] = v61;
            v56 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_74;
          }
        }

        else
        {
          v53 = __nwlog_obj();
          v54 = type[0];
          if (os_log_type_enabled(v53, type[0]))
          {
            v60 = *a8;
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v125 = v49;
            *v126 = 2048;
            *&v126[2] = v60;
            v56 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_74;
          }
        }
      }

LABEL_75:
      if (v52)
      {
        free(v52);
      }

      *v45 = -1;
      v17 = a9;
LABEL_78:
      v62 = v117;
      if (v117)
      {
        if (gLogDatapath != 1)
        {
          goto LABEL_80;
        }

        v102 = __nwlog_obj();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
          _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_DEBUG, "%{public}s new_input_array is not empty after processing input frames, moving to saved_input_frames for later", buf, 0xCu);
        }

        v62 = v117;
        if (v117)
        {
LABEL_80:
          v63 = *(a1 + 8);
          *v63 = v62;
          v64 = v118;
          *(v117 + 40) = v63;
          *(a1 + 8) = v64;
        }

        v117 = 0;
        v118 = &v117;
      }

      if (*v45 && *v116)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v65 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          nw_frame_array_get_frame_count(a11, 1, buf);
          v66 = *buf;
          v67 = *v45;
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
          *&buf[12] = 1024;
          *&buf[14] = a4;
          *&buf[18] = 1024;
          *&buf[20] = v66;
          LOWORD(v125) = 1024;
          *(&v125 + 2) = v67;
          _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s could not fulfill minimum byte requirement of %u bytes (have %u bytes in %u frames), saving in input_frames_pending_delivery for later", buf, 0x1Eu);
        }

        if (*a11)
        {
          v68 = *(a1 + 24);
          *v68 = *a11;
          *(*a11 + 40) = v68;
          *(a1 + 24) = a11[1];
        }

        v69 = 0;
        *a11 = 0;
        a11[1] = a11;
        *v45 = 0;
        *v17 = 0;
      }

      else
      {
        v69 = *v17;
      }

      nw_protocol_plugin_metadata_report_transfer(a1, a2, *(a1 + 48), v69, 1);
      return;
    }

    v93 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_input_frames";
    v94 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v93, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v119 = 0;
    v45 = a8;
    if (__nwlog_fault(v94, type, &v119))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v95 = __nwlog_obj();
        v96 = type[0];
        if (!os_log_type_enabled(v95, type[0]))
        {
          goto LABEL_183;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_input_frames";
        v97 = "%{public}s called with null protocol";
        goto LABEL_182;
      }

      if (v119 != 1)
      {
        v95 = __nwlog_obj();
        v96 = type[0];
        if (!os_log_type_enabled(v95, type[0]))
        {
          goto LABEL_183;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_input_frames";
        v97 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_182;
      }

      v103 = __nw_create_backtrace_string();
      v95 = __nwlog_obj();
      v96 = type[0];
      v104 = os_log_type_enabled(v95, type[0]);
      if (v103)
      {
        if (v104)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_protocol_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v103;
          _os_log_impl(&dword_181A37000, v95, v96, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v103);
        v45 = a8;
        goto LABEL_183;
      }

      v45 = a8;
      if (v104)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_input_frames";
        v97 = "%{public}s called with null protocol, no backtrace";
LABEL_182:
        _os_log_impl(&dword_181A37000, v95, v96, v97, buf, 0xCu);
      }
    }

LABEL_183:
    if (v94)
    {
      free(v94);
    }

    goto LABEL_78;
  }

  if (gLogDatapath == 1)
  {
    v24 = __nwlog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = "invalid";
      if (a2 && a2[2])
      {
        v25 = a2[2];
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2080;
      v125 = v25;
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s short circuiting because protocol %p:%s has already handled eof", buf, 0x20u);
    }
  }
}

uint64_t __nw_protocol_plugin_metadata_process_frames_block_invoke(uint64_t a1, _DWORD *a2)
{
  v293 = *MEMORY[0x1E69E9840];
  v286 = a2;
  if (!a2)
  {
    v213 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
    v214 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v213, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v284 = 0;
    if (!__nwlog_fault(v214, &type, &v284))
    {
      goto LABEL_353;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v215 = __nwlog_obj();
      v216 = type;
      if (!os_log_type_enabled(v215, type))
      {
        goto LABEL_353;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v217 = "%{public}s called with null frame";
    }

    else if (v284 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v215 = __nwlog_obj();
      v216 = type;
      v256 = os_log_type_enabled(v215, type);
      if (backtrace_string)
      {
        if (v256)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v215, v216, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_353;
      }

      if (!v256)
      {
LABEL_353:
        if (v214)
        {
          free(v214);
        }

        goto LABEL_24;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v217 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v215 = __nwlog_obj();
      v216 = type;
      if (!os_log_type_enabled(v215, type))
      {
        goto LABEL_353;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v217 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v215, v216, v217, buf, 0xCu);
    goto LABEL_353;
  }

  if (!**(a1 + 40))
  {
    if (!gLogDatapath)
    {
      goto LABEL_24;
    }

    v257 = __nwlog_obj();
    if (!os_log_type_enabled(v257, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
    v78 = "%{public}s stopping after reaching maximum frame count";
    v79 = v257;
    v80 = 12;
    goto LABEL_332;
  }

  if (gLogDatapath)
  {
    v253 = a2;
    v254 = __nwlog_obj();
    if (os_log_type_enabled(v254, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = v253;
      _os_log_impl(&dword_181A37000, v254, OS_LOG_TYPE_DEBUG, "%{public}s processing frame %p", buf, 0x16u);
      a2 = v286;
    }

    else
    {
      a2 = v253;
    }
  }

  v3 = nw_frame_copy_metadata_for_protocol(a2, *(*(a1 + 48) + 80));
  if (!v3)
  {
    v29 = nw_frame_unclaimed_length(v286);
    if (v29 > **(a1 + 56))
    {
      if (*(a1 + 120) == 1)
      {
        if (gLogDatapath)
        {
          v268 = __nwlog_obj();
          if (os_log_type_enabled(v268, OS_LOG_TYPE_DEBUG))
          {
            v269 = **(a1 + 56);
            *buf = 136446722;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2048;
            *&buf[14] = v286;
            *&buf[22] = 1024;
            LODWORD(v288) = v269;
            _os_log_impl(&dword_181A37000, v268, OS_LOG_TYPE_DEBUG, "%{public}s splitting frame %p with unknown metadata by offset %u", buf, 0x1Cu);
          }
        }

        v30 = v286;
        v31 = (*(a1 + 64) + 8);
        v32 = v286[4];
        v33 = v286[5];
        if (v32)
        {
          v31 = (v32 + 40);
        }

        *v31 = v33;
        *v33 = v32;
        v30[4] = 0;
        v30[5] = 0;
        v34 = nw_frame_split(&v286, **(a1 + 56));
        nw_frame_array_prepend(*(a1 + 64), 1, v286);
        v35 = *(a1 + 72);
        *(v34 + 32) = 0;
        v36 = *(v35 + 8);
        *(v34 + 40) = v36;
        *v36 = v34;
        *(v35 + 8) = v34 + 32;
        **(a1 + 80) = 0;
        **(a1 + 56) = 0;
        v37 = *(a1 + 40);
        if ((*v37)--)
        {
LABEL_188:
          v152 = *(a1 + 88);
          v153 = **(a1 + 56);
          v63 = __CFADD__(*v152, v153);
          *v152 += v153;
          if (!v63)
          {
            goto LABEL_207;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v154 = **(a1 + 56);
          v155 = **(a1 + 88);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "moved_bytes";
          *&buf[22] = 2048;
          v288 = v154;
          v289 = 2048;
          v290 = v155;
          LODWORD(v282) = 42;
          v156 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v282);
          type = OS_LOG_TYPE_ERROR;
          v284 = 0;
          if (__nwlog_fault(v156, &type, &v284))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v157 = __nwlog_obj();
              v158 = type;
              if (os_log_type_enabled(v157, type))
              {
                v159 = **(a1 + 56);
                v160 = **(a1 + 88);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "moved_bytes";
                *&buf[22] = 2048;
                v288 = v159;
                v289 = 2048;
                v290 = v160;
                v161 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_203:
                _os_log_impl(&dword_181A37000, v157, v158, v161, buf, 0x2Au);
              }
            }

            else if (v284 == 1)
            {
              v162 = __nw_create_backtrace_string();
              v157 = __nwlog_obj();
              v158 = type;
              v163 = os_log_type_enabled(v157, type);
              if (v162)
              {
                if (v163)
                {
                  v164 = **(a1 + 56);
                  v165 = **(a1 + 88);
                  *buf = 136447234;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "moved_bytes";
                  *&buf[22] = 2048;
                  v288 = v164;
                  v289 = 2048;
                  v290 = v165;
                  v291 = 2082;
                  v292 = v162;
                  _os_log_impl(&dword_181A37000, v157, v158, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v162);
                goto LABEL_204;
              }

              if (v163)
              {
                v168 = **(a1 + 56);
                v169 = **(a1 + 88);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "moved_bytes";
                *&buf[22] = 2048;
                v288 = v168;
                v289 = 2048;
                v290 = v169;
                v161 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_203;
              }
            }

            else
            {
              v157 = __nwlog_obj();
              v158 = type;
              if (os_log_type_enabled(v157, type))
              {
                v166 = **(a1 + 56);
                v167 = **(a1 + 88);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "moved_bytes";
                *&buf[22] = 2048;
                v288 = v166;
                v289 = 2048;
                v290 = v167;
                v161 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_203;
              }
            }
          }

LABEL_204:
          if (v156)
          {
            free(v156);
          }

          **(a1 + 88) = -1;
LABEL_207:
          v170 = *(*(a1 + 32) + 8);
          v171 = *(v170 + 24) + 1;
          *(v170 + 24) = v171;
          if (v171 != v171 << 31 >> 31)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v172 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v288 = 1;
            v289 = 2048;
            v290 = v172;
            LODWORD(v282) = 42;
            v173 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v282);
            type = OS_LOG_TYPE_ERROR;
            v284 = 0;
            if (__nwlog_fault(v173, &type, &v284))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v174 = __nwlog_obj();
                v175 = type;
                if (os_log_type_enabled(v174, type))
                {
                  v176 = *(*(*(a1 + 32) + 8) + 24);
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "count";
                  *&buf[22] = 2048;
                  v288 = 1;
                  v289 = 2048;
                  v290 = v176;
                  v177 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_221:
                  _os_log_impl(&dword_181A37000, v174, v175, v177, buf, 0x2Au);
                }
              }

              else if (v284 == 1)
              {
                v178 = __nw_create_backtrace_string();
                v174 = __nwlog_obj();
                v175 = type;
                v179 = os_log_type_enabled(v174, type);
                if (v178)
                {
                  if (v179)
                  {
                    v180 = *(*(*(a1 + 32) + 8) + 24);
                    *buf = 136447234;
                    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "count";
                    *&buf[22] = 2048;
                    v288 = 1;
                    v289 = 2048;
                    v290 = v180;
                    v291 = 2082;
                    v292 = v178;
                    _os_log_impl(&dword_181A37000, v174, v175, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v178);
                  goto LABEL_222;
                }

                if (v179)
                {
                  v182 = *(*(*(a1 + 32) + 8) + 24);
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "count";
                  *&buf[22] = 2048;
                  v288 = 1;
                  v289 = 2048;
                  v290 = v182;
                  v177 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_221;
                }
              }

              else
              {
                v174 = __nwlog_obj();
                v175 = type;
                if (os_log_type_enabled(v174, type))
                {
                  v181 = *(*(*(a1 + 32) + 8) + 24);
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "count";
                  *&buf[22] = 2048;
                  v288 = 1;
                  v289 = 2048;
                  v290 = v181;
                  v177 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_221;
                }
              }
            }

LABEL_222:
            if (v173)
            {
              free(v173);
            }

            v28 = 0;
            *(*(*(a1 + 32) + 8) + 24) = -1;
            return v28 & 1;
          }

LABEL_24:
          v28 = 0;
          return v28 & 1;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v39 = **(a1 + 40);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = "maximum_frame_count";
        *&buf[22] = 2048;
        v288 = 1;
        v289 = 2048;
        v290 = v39;
        v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
        type = OS_LOG_TYPE_ERROR;
        v284 = 0;
        if (__nwlog_fault(v40, &type, &v284))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v41 = __nwlog_obj();
            v42 = type;
            if (os_log_type_enabled(v41, type))
            {
              v43 = **(a1 + 40);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_frame_count";
              *&buf[22] = 2048;
              v288 = 1;
              v289 = 2048;
              v290 = v43;
              v44 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_184:
              _os_log_impl(&dword_181A37000, v41, v42, v44, buf, 0x2Au);
            }
          }

          else if (v284 == 1)
          {
            v112 = __nw_create_backtrace_string();
            v41 = __nwlog_obj();
            v42 = type;
            v113 = os_log_type_enabled(v41, type);
            if (v112)
            {
              if (v113)
              {
                v114 = **(a1 + 40);
                *buf = 136447234;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "maximum_frame_count";
                *&buf[22] = 2048;
                v288 = 1;
                v289 = 2048;
                v290 = v114;
                v291 = 2082;
                v292 = v112;
                _os_log_impl(&dword_181A37000, v41, v42, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v112);
              goto LABEL_185;
            }

            if (v113)
            {
              v151 = **(a1 + 40);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_frame_count";
              *&buf[22] = 2048;
              v288 = 1;
              v289 = 2048;
              v290 = v151;
              v44 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_184;
            }
          }

          else
          {
            v41 = __nwlog_obj();
            v42 = type;
            if (os_log_type_enabled(v41, type))
            {
              v116 = **(a1 + 40);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_frame_count";
              *&buf[22] = 2048;
              v288 = 1;
              v289 = 2048;
              v290 = v116;
              v44 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_184;
            }
          }
        }

LABEL_185:
        if (v40)
        {
          free(v40);
        }

        **(a1 + 40) = 0;
        goto LABEL_188;
      }

      if (!gLogDatapath)
      {
        goto LABEL_24;
      }

      v76 = __nwlog_obj();
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      v77 = **(a1 + 56);
      *buf = 136446722;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v29;
      *&buf[18] = 1024;
      *&buf[20] = v77;
      v78 = "%{public}s not delivering frame with length %u maximum bytes %u";
      v79 = v76;
      v80 = 24;
LABEL_332:
      _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, v78, buf, v80);
      v28 = 0;
      return v28 & 1;
    }

    if (gLogDatapath == 1)
    {
      v267 = __nwlog_obj();
      if (os_log_type_enabled(v267, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = v286;
        _os_log_impl(&dword_181A37000, v267, OS_LOG_TYPE_DEBUG, "%{public}s delivering frame %p with unknown metadata", buf, 0x16u);
      }
    }

    v54 = v286;
    v55 = (*(a1 + 64) + 8);
    v56 = v286[4];
    v57 = v286[5];
    if (v56)
    {
      v55 = (v56 + 40);
    }

    *v55 = v57;
    *v57 = v56;
    v54[4] = 0;
    v54[5] = 0;
    v58 = *(a1 + 72);
    v59 = v286;
    v60 = v286;
    v286[4] = 0;
    v61 = *(v58 + 8);
    v59[5] = v61;
    *v61 = v59;
    *(v58 + 8) = v60 + 4;
    v62 = *(a1 + 80);
    v63 = *v62 >= v29;
    *v62 -= v29;
    if (!v63)
    {
      if (gLogDatapath == 1)
      {
        v270 = __nwlog_obj();
        if (os_log_type_enabled(v270, OS_LOG_TYPE_DEBUG))
        {
          v271 = **(a1 + 80);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "minimum_bytes";
          *&buf[22] = 2048;
          v288 = v29;
          v289 = 2048;
          v290 = v271;
          _os_log_impl(&dword_181A37000, v270, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      **(a1 + 80) = 0;
    }

    v64 = *(a1 + 56);
    v63 = *v64 >= v29;
    *v64 -= v29;
    if (!v63)
    {
      if (gLogDatapath == 1)
      {
        v272 = __nwlog_obj();
        if (os_log_type_enabled(v272, OS_LOG_TYPE_DEBUG))
        {
          v273 = **(a1 + 56);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "maximum_bytes";
          *&buf[22] = 2048;
          v288 = v29;
          v289 = 2048;
          v290 = v273;
          _os_log_impl(&dword_181A37000, v272, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      **(a1 + 56) = 0;
    }

    v65 = *(a1 + 40);
    if ((*v65)--)
    {
LABEL_135:
      v121 = *(a1 + 88);
      v63 = __CFADD__(*v121, v29);
      *v121 += v29;
      if (!v63)
      {
        goto LABEL_154;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v122 = v29;
      v123 = **(a1 + 88);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = "moved_bytes";
      *&buf[22] = 2048;
      v288 = v29;
      v289 = 2048;
      v290 = v123;
      LODWORD(v282) = 42;
      v124 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v282);
      type = OS_LOG_TYPE_ERROR;
      v284 = 0;
      if (__nwlog_fault(v124, &type, &v284))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v125 = gLogObj;
          v126 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v127 = **(a1 + 88);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "moved_bytes";
            *&buf[22] = 2048;
            v288 = v122;
            v289 = 2048;
            v290 = v127;
            v128 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_150:
            _os_log_impl(&dword_181A37000, v125, v126, v128, buf, 0x2Au);
          }
        }

        else if (v284 == 1)
        {
          v129 = __nw_create_backtrace_string();
          v125 = __nwlog_obj();
          v126 = type;
          v130 = os_log_type_enabled(v125, type);
          if (v129)
          {
            if (v130)
            {
              v131 = **(a1 + 88);
              *buf = 136447234;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "moved_bytes";
              *&buf[22] = 2048;
              v288 = v122;
              v289 = 2048;
              v290 = v131;
              v291 = 2082;
              v292 = v129;
              _os_log_impl(&dword_181A37000, v125, v126, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v129);
            goto LABEL_151;
          }

          if (v130)
          {
            v133 = **(a1 + 88);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "moved_bytes";
            *&buf[22] = 2048;
            v288 = v122;
            v289 = 2048;
            v290 = v133;
            v128 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_150;
          }
        }

        else
        {
          v125 = __nwlog_obj();
          v126 = type;
          if (os_log_type_enabled(v125, type))
          {
            v132 = **(a1 + 88);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "moved_bytes";
            *&buf[22] = 2048;
            v288 = v122;
            v289 = 2048;
            v290 = v132;
            v128 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_150;
          }
        }
      }

LABEL_151:
      if (v124)
      {
        free(v124);
      }

      **(a1 + 88) = -1;
LABEL_154:
      v134 = *(*(a1 + 32) + 8);
      v135 = *(v134 + 24) + 1;
      *(v134 + 24) = v135;
      if (v135 == v135 << 31 >> 31)
      {
LABEL_172:
        if (nw_frame_is_metadata_complete(v286))
        {
          **(a1 + 80) = 0;
        }

        v28 = 1;
        return v28 & 1;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v136 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = "count";
      *&buf[22] = 2048;
      v288 = 1;
      v289 = 2048;
      v290 = v136;
      LODWORD(v282) = 42;
      v137 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v282);
      type = OS_LOG_TYPE_ERROR;
      v284 = 0;
      if (__nwlog_fault(v137, &type, &v284))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v138 = gLogObj;
          v139 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v140 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v288 = 1;
            v289 = 2048;
            v290 = v140;
            v141 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_168:
            _os_log_impl(&dword_181A37000, v138, v139, v141, buf, 0x2Au);
          }
        }

        else if (v284 == 1)
        {
          v142 = __nw_create_backtrace_string();
          v138 = __nwlog_obj();
          v139 = type;
          v143 = os_log_type_enabled(v138, type);
          if (v142)
          {
            if (v143)
            {
              v144 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136447234;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "count";
              *&buf[22] = 2048;
              v288 = 1;
              v289 = 2048;
              v290 = v144;
              v291 = 2082;
              v292 = v142;
              _os_log_impl(&dword_181A37000, v138, v139, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v142);
            goto LABEL_169;
          }

          if (v143)
          {
            v146 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v288 = 1;
            v289 = 2048;
            v290 = v146;
            v141 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_168;
          }
        }

        else
        {
          v138 = __nwlog_obj();
          v139 = type;
          if (os_log_type_enabled(v138, type))
          {
            v145 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v288 = 1;
            v289 = 2048;
            v290 = v145;
            v141 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_168;
          }
        }
      }

LABEL_169:
      if (v137)
      {
        free(v137);
      }

      *(*(*(a1 + 32) + 8) + 24) = -1;
      goto LABEL_172;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v67 = **(a1 + 40);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = "maximum_frame_count";
    *&buf[22] = 2048;
    v288 = 1;
    v289 = 2048;
    v290 = v67;
    v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v284 = 0;
    if (__nwlog_fault(v68, &type, &v284))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v69 = gLogObj;
        v70 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v71 = **(a1 + 40);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "maximum_frame_count";
          *&buf[22] = 2048;
          v288 = 1;
          v289 = 2048;
          v290 = v71;
          v72 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_131:
          _os_log_impl(&dword_181A37000, v69, v70, v72, buf, 0x2Au);
        }
      }

      else if (v284 == 1)
      {
        v107 = __nw_create_backtrace_string();
        v69 = __nwlog_obj();
        v70 = type;
        v108 = os_log_type_enabled(v69, type);
        if (v107)
        {
          if (v108)
          {
            v109 = **(a1 + 40);
            *buf = 136447234;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "maximum_frame_count";
            *&buf[22] = 2048;
            v288 = 1;
            v289 = 2048;
            v290 = v109;
            v291 = 2082;
            v292 = v107;
            _os_log_impl(&dword_181A37000, v69, v70, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v107);
          goto LABEL_132;
        }

        if (v108)
        {
          v120 = **(a1 + 40);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "maximum_frame_count";
          *&buf[22] = 2048;
          v288 = 1;
          v289 = 2048;
          v290 = v120;
          v72 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_131;
        }
      }

      else
      {
        v69 = __nwlog_obj();
        v70 = type;
        if (os_log_type_enabled(v69, type))
        {
          v115 = **(a1 + 40);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "maximum_frame_count";
          *&buf[22] = 2048;
          v288 = 1;
          v289 = 2048;
          v290 = v115;
          v72 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_131;
        }
      }
    }

LABEL_132:
    if (v68)
    {
      free(v68);
    }

    **(a1 + 40) = 0;
    goto LABEL_135;
  }

  v4 = v3;
  v5 = *(a1 + 120);
  v6 = *(a1 + 48);
  v7 = 64;
  if (*(a1 + 120))
  {
    v7 = 48;
  }

  if (*(v6 + v7) != v3 && (*(v6 + 142) & 1) != 0)
  {
    if (gLogDatapath == 1)
    {
      v264 = __nwlog_obj();
      v265 = os_log_type_enabled(v264, OS_LOG_TYPE_DEBUG);
      LOBYTE(v5) = *(a1 + 120);
      if (v265)
      {
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        *buf = 136446722;
        if (v5)
        {
          v266 = "input";
        }

        else
        {
          v266 = "output";
        }

        *&buf[12] = 2048;
        *&buf[14] = v286;
        *&buf[22] = 2080;
        v288 = v266;
        _os_log_impl(&dword_181A37000, v264, OS_LOG_TYPE_DEBUG, "%{public}s frame %p begins a %s new message", buf, 0x20u);
        LOBYTE(v5) = *(a1 + 120);
      }
    }

    v51 = *(a1 + 48);
    if (v5)
    {
      v52 = *(v51 + 56);
      if (v52)
      {
        v53 = *(v51 + 48);
        if (v53)
        {
          os_release(v53);
          v52 = *(v51 + 56);
        }
      }

      *(v51 + 48) = v4;
      *(v51 + 56) = v52 | 1;
      *(*(a1 + 48) + 140) = 0;
    }

    else
    {
      v73 = *(v51 + 72);
      if (v73)
      {
        v74 = *(v51 + 64);
        if (v74)
        {
          os_release(v74);
          v73 = *(v51 + 72);
        }
      }

      *(v51 + 64) = v4;
      *(v51 + 72) = v73 | 1;
      *(*(a1 + 48) + 141) = 0;
    }

    v4 = 0;
  }

  else
  {
    v8 = v5 == 0;
    v9 = 140;
    if (v8)
    {
      v9 = 141;
    }

    v10 = *(v6 + v9);
    if (v10 <= 1)
    {
      if (v10)
      {
        v11 = nw_frame_unclaimed_length(v286);
        if (v11 > **(a1 + 56))
        {
          if (*(a1 + 120) == 1)
          {
            if (gLogDatapath)
            {
              v276 = __nwlog_obj();
              if (os_log_type_enabled(v276, OS_LOG_TYPE_DEBUG))
              {
                v277 = **(a1 + 56);
                *buf = 136446722;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2048;
                *&buf[14] = v286;
                *&buf[22] = 1024;
                LODWORD(v288) = v277;
                _os_log_impl(&dword_181A37000, v276, OS_LOG_TYPE_DEBUG, "%{public}s splitting frame %p that is part of handled message by offset %u", buf, 0x1Cu);
              }
            }

            v12 = v286;
            v13 = (*(a1 + 64) + 8);
            v14 = v286[4];
            v15 = v286[5];
            if (v14)
            {
              v13 = (v14 + 40);
            }

            *v13 = v15;
            *v15 = v14;
            v12[4] = 0;
            v12[5] = 0;
            v16 = nw_frame_split(&v286, **(a1 + 56));
            nw_frame_array_prepend(*(a1 + 64), 1, v286);
            v17 = *(a1 + 72);
            *(v16 + 32) = 0;
            v18 = *(v17 + 8);
            *(v16 + 40) = v18;
            *v18 = v16;
            *(v17 + 8) = v16 + 32;
            **(a1 + 80) = 0;
            **(a1 + 56) = 0;
            v19 = *(a1 + 40);
            if ((*v19)--)
            {
LABEL_283:
              v219 = *(a1 + 88);
              v220 = **(a1 + 56);
              v63 = __CFADD__(*v219, v220);
              *v219 += v220;
              if (!v63)
              {
                goto LABEL_302;
              }

              v221 = __nwlog_obj();
              v222 = **(a1 + 56);
              v223 = **(a1 + 88);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "moved_bytes";
              *&buf[22] = 2048;
              v288 = v222;
              v289 = 2048;
              v290 = v223;
              LODWORD(v282) = 42;
              v224 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v221, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v282);
              type = OS_LOG_TYPE_ERROR;
              v284 = 0;
              if (__nwlog_fault(v224, &type, &v284))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v225 = __nwlog_obj();
                  v226 = type;
                  if (os_log_type_enabled(v225, type))
                  {
                    v227 = **(a1 + 56);
                    v228 = **(a1 + 88);
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "moved_bytes";
                    *&buf[22] = 2048;
                    v288 = v227;
                    v289 = 2048;
                    v290 = v228;
                    v229 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_298:
                    _os_log_impl(&dword_181A37000, v225, v226, v229, buf, 0x2Au);
                  }
                }

                else if (v284 == 1)
                {
                  v230 = __nw_create_backtrace_string();
                  v225 = __nwlog_obj();
                  v226 = type;
                  v231 = os_log_type_enabled(v225, type);
                  if (v230)
                  {
                    if (v231)
                    {
                      v232 = **(a1 + 56);
                      v233 = **(a1 + 88);
                      *buf = 136447234;
                      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                      *&buf[12] = 2082;
                      *&buf[14] = "moved_bytes";
                      *&buf[22] = 2048;
                      v288 = v232;
                      v289 = 2048;
                      v290 = v233;
                      v291 = 2082;
                      v292 = v230;
                      _os_log_impl(&dword_181A37000, v225, v226, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v230);
                    goto LABEL_299;
                  }

                  if (v231)
                  {
                    v236 = **(a1 + 56);
                    v237 = **(a1 + 88);
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "moved_bytes";
                    *&buf[22] = 2048;
                    v288 = v236;
                    v289 = 2048;
                    v290 = v237;
                    v229 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_298;
                  }
                }

                else
                {
                  v225 = __nwlog_obj();
                  v226 = type;
                  if (os_log_type_enabled(v225, type))
                  {
                    v234 = **(a1 + 56);
                    v235 = **(a1 + 88);
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "moved_bytes";
                    *&buf[22] = 2048;
                    v288 = v234;
                    v289 = 2048;
                    v290 = v235;
                    v229 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_298;
                  }
                }
              }

LABEL_299:
              if (v224)
              {
                free(v224);
              }

              **(a1 + 88) = -1;
LABEL_302:
              v238 = *(*(a1 + 32) + 8);
              v239 = *(v238 + 24) + 1;
              *(v238 + 24) = v239;
              if (v239 != v239 << 31 >> 31)
              {
                v240 = __nwlog_obj();
                v241 = *(*(*(a1 + 32) + 8) + 24);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "count";
                *&buf[22] = 2048;
                v288 = 1;
                v289 = 2048;
                v290 = v241;
                LODWORD(v282) = 42;
                v242 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v240, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v282);
                type = OS_LOG_TYPE_ERROR;
                v284 = 0;
                if (__nwlog_fault(v242, &type, &v284))
                {
                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v243 = __nwlog_obj();
                    v244 = type;
                    if (os_log_type_enabled(v243, type))
                    {
                      v245 = *(*(*(a1 + 32) + 8) + 24);
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                      *&buf[12] = 2082;
                      *&buf[14] = "count";
                      *&buf[22] = 2048;
                      v288 = 1;
                      v289 = 2048;
                      v290 = v245;
                      v246 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_319:
                      _os_log_impl(&dword_181A37000, v243, v244, v246, buf, 0x2Au);
                    }
                  }

                  else if (v284 == 1)
                  {
                    v248 = __nw_create_backtrace_string();
                    v243 = __nwlog_obj();
                    v244 = type;
                    v249 = os_log_type_enabled(v243, type);
                    if (v248)
                    {
                      if (v249)
                      {
                        v250 = *(*(*(a1 + 32) + 8) + 24);
                        *buf = 136447234;
                        *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                        *&buf[12] = 2082;
                        *&buf[14] = "count";
                        *&buf[22] = 2048;
                        v288 = 1;
                        v289 = 2048;
                        v290 = v250;
                        v291 = 2082;
                        v292 = v248;
                        _os_log_impl(&dword_181A37000, v243, v244, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                      }

                      free(v248);
                      goto LABEL_320;
                    }

                    if (v249)
                    {
                      v252 = *(*(*(a1 + 32) + 8) + 24);
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                      *&buf[12] = 2082;
                      *&buf[14] = "count";
                      *&buf[22] = 2048;
                      v288 = 1;
                      v289 = 2048;
                      v290 = v252;
                      v246 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                      goto LABEL_319;
                    }
                  }

                  else
                  {
                    v243 = __nwlog_obj();
                    v244 = type;
                    if (os_log_type_enabled(v243, type))
                    {
                      v251 = *(*(*(a1 + 32) + 8) + 24);
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                      *&buf[12] = 2082;
                      *&buf[14] = "count";
                      *&buf[22] = 2048;
                      v288 = 1;
                      v289 = 2048;
                      v290 = v251;
                      v246 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                      goto LABEL_319;
                    }
                  }
                }

LABEL_320:
                if (v242)
                {
                  free(v242);
                }

                v28 = 0;
                *(*(*(a1 + 32) + 8) + 24) = -1;
                goto LABEL_308;
              }

              goto LABEL_307;
            }

            v21 = __nwlog_obj();
            v22 = **(a1 + 40);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "maximum_frame_count";
            *&buf[22] = 2048;
            v288 = 1;
            v289 = 2048;
            v290 = v22;
            v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
            type = OS_LOG_TYPE_ERROR;
            v284 = 0;
            if (__nwlog_fault(v23, &type, &v284))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v24 = __nwlog_obj();
                v25 = type;
                if (os_log_type_enabled(v24, type))
                {
                  v26 = **(a1 + 40);
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "maximum_frame_count";
                  *&buf[22] = 2048;
                  v288 = 1;
                  v289 = 2048;
                  v290 = v26;
                  v27 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_279:
                  _os_log_impl(&dword_181A37000, v24, v25, v27, buf, 0x2Au);
                }
              }

              else if (v284 == 1)
              {
                v147 = __nw_create_backtrace_string();
                v24 = __nwlog_obj();
                v25 = type;
                v148 = os_log_type_enabled(v24, type);
                if (v147)
                {
                  if (v148)
                  {
                    v149 = **(a1 + 40);
                    *buf = 136447234;
                    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "maximum_frame_count";
                    *&buf[22] = 2048;
                    v288 = 1;
                    v289 = 2048;
                    v290 = v149;
                    v291 = 2082;
                    v292 = v147;
                    _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v147);
                  goto LABEL_280;
                }

                if (v148)
                {
                  v218 = **(a1 + 40);
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "maximum_frame_count";
                  *&buf[22] = 2048;
                  v288 = 1;
                  v289 = 2048;
                  v290 = v218;
                  v27 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                  goto LABEL_279;
                }
              }

              else
              {
                v24 = __nwlog_obj();
                v25 = type;
                if (os_log_type_enabled(v24, type))
                {
                  v183 = **(a1 + 40);
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "maximum_frame_count";
                  *&buf[22] = 2048;
                  v288 = 1;
                  v289 = 2048;
                  v290 = v183;
                  v27 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_279;
                }
              }
            }

LABEL_280:
            if (v23)
            {
              free(v23);
            }

            **(a1 + 40) = 0;
            goto LABEL_283;
          }

          if (gLogDatapath)
          {
            v110 = __nwlog_obj();
            if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
            {
              v111 = **(a1 + 56);
              *buf = 136446722;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 1024;
              *&buf[14] = v11;
              *&buf[18] = 1024;
              *&buf[20] = v111;
              _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_DEBUG, "%{public}s not delivering frame with length %u maximum bytes %u", buf, 0x18u);
            }
          }

LABEL_307:
          v28 = 0;
          goto LABEL_308;
        }

        if (gLogDatapath == 1)
        {
          v275 = __nwlog_obj();
          if (os_log_type_enabled(v275, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2048;
            *&buf[14] = v286;
            _os_log_impl(&dword_181A37000, v275, OS_LOG_TYPE_DEBUG, "%{public}s delivering frame %p that is part of handled message", buf, 0x16u);
          }
        }

        v85 = v286;
        v86 = (*(a1 + 64) + 8);
        v87 = v286[4];
        v88 = v286[5];
        if (v87)
        {
          v86 = (v87 + 40);
        }

        *v86 = v88;
        *v88 = v87;
        v85[4] = 0;
        v85[5] = 0;
        v89 = *(a1 + 72);
        v90 = v286;
        v91 = v286;
        v286[4] = 0;
        v92 = *(v89 + 8);
        v90[5] = v92;
        *v92 = v90;
        *(v89 + 8) = v91 + 4;
        v93 = *(a1 + 80);
        v94 = &unk_182B08000;
        v63 = *v93 >= v11;
        *v93 -= v11;
        if (!v63)
        {
          if (gLogDatapath == 1)
          {
            v278 = __nwlog_obj();
            if (os_log_type_enabled(v278, OS_LOG_TYPE_DEBUG))
            {
              v279 = **(a1 + 80);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "minimum_bytes";
              *&buf[22] = 2048;
              v288 = v11;
              v289 = 2048;
              v290 = v279;
              _os_log_impl(&dword_181A37000, v278, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          **(a1 + 80) = 0;
        }

        v95 = *(a1 + 56);
        v63 = *v95 >= v11;
        *v95 -= v11;
        if (!v63)
        {
          if (gLogDatapath == 1)
          {
            v280 = __nwlog_obj();
            if (os_log_type_enabled(v280, OS_LOG_TYPE_DEBUG))
            {
              v281 = **(a1 + 56);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_bytes";
              *&buf[22] = 2048;
              v288 = v11;
              v289 = 2048;
              v290 = v281;
              _os_log_impl(&dword_181A37000, v280, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          **(a1 + 56) = 0;
        }

        v96 = *(a1 + 40);
        if ((*v96)--)
        {
LABEL_233:
          v185 = *(a1 + 88);
          v63 = __CFADD__(*v185, v11);
          *v185 += v11;
          if (!v63)
          {
            goto LABEL_252;
          }

          v186 = __nwlog_obj();
          v187 = v11;
          v188 = **(a1 + 88);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "moved_bytes";
          *&buf[22] = 2048;
          v288 = v11;
          v289 = 2048;
          v290 = v188;
          LODWORD(v282) = 42;
          v189 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v186, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v282);
          type = OS_LOG_TYPE_ERROR;
          v284 = 0;
          if (__nwlog_fault(v189, &type, &v284))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v190 = __nwlog_obj();
              v191 = type;
              if (os_log_type_enabled(v190, type))
              {
                v192 = **(a1 + 88);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "moved_bytes";
                *&buf[22] = 2048;
                v288 = v187;
                v289 = 2048;
                v290 = v192;
                v193 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_248:
                _os_log_impl(&dword_181A37000, v190, v191, v193, buf, 0x2Au);
              }
            }

            else if (v284 == 1)
            {
              v194 = __nw_create_backtrace_string();
              v190 = __nwlog_obj();
              v191 = type;
              v195 = os_log_type_enabled(v190, type);
              if (v194)
              {
                if (v195)
                {
                  v196 = **(a1 + 88);
                  *buf = 136447234;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "moved_bytes";
                  *&buf[22] = 2048;
                  v288 = v187;
                  v289 = 2048;
                  v290 = v196;
                  v291 = 2082;
                  v292 = v194;
                  _os_log_impl(&dword_181A37000, v190, v191, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v194);
                v94 = &unk_182B08000;
                goto LABEL_249;
              }

              v94 = &unk_182B08000;
              if (v195)
              {
                v198 = **(a1 + 88);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "moved_bytes";
                *&buf[22] = 2048;
                v288 = v187;
                v289 = 2048;
                v290 = v198;
                v193 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_248;
              }
            }

            else
            {
              v190 = __nwlog_obj();
              v191 = type;
              if (os_log_type_enabled(v190, type))
              {
                v197 = **(a1 + 88);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "moved_bytes";
                *&buf[22] = 2048;
                v288 = v187;
                v289 = 2048;
                v290 = v197;
                v193 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_248;
              }
            }
          }

LABEL_249:
          if (v189)
          {
            free(v189);
          }

          **(a1 + 88) = -1;
LABEL_252:
          v199 = *(*(a1 + 32) + 8);
          v200 = *(v199 + 24) + 1;
          *(v199 + 24) = v200;
          if (v200 == v200 << 31 >> 31)
          {
LABEL_270:
            if (nw_frame_is_metadata_complete(v286))
            {
              **(a1 + 80) = 0;
            }

LABEL_272:
            v28 = 1;
LABEL_308:
            os_release(v4);
            return v28 & 1;
          }

          v201 = __nwlog_obj();
          v202 = *(*(*(a1 + 32) + 8) + 24);
          v283 = v94[296];
          *buf = v283;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "count";
          *&buf[22] = 2048;
          v288 = 1;
          v289 = 2048;
          v290 = v202;
          LODWORD(v282) = 42;
          v203 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v201, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v282);
          type = OS_LOG_TYPE_ERROR;
          v284 = 0;
          if (__nwlog_fault(v203, &type, &v284))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v204 = __nwlog_obj();
              v205 = type;
              if (os_log_type_enabled(v204, type))
              {
                v206 = *(*(*(a1 + 32) + 8) + 24);
                *buf = v283;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "count";
                *&buf[22] = 2048;
                v288 = 1;
                v289 = 2048;
                v290 = v206;
                v207 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_266:
                _os_log_impl(&dword_181A37000, v204, v205, v207, buf, 0x2Au);
              }
            }

            else if (v284 == 1)
            {
              v208 = __nw_create_backtrace_string();
              v204 = __nwlog_obj();
              v205 = type;
              v209 = os_log_type_enabled(v204, type);
              if (v208)
              {
                if (v209)
                {
                  v210 = *(*(*(a1 + 32) + 8) + 24);
                  *buf = 136447234;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "count";
                  *&buf[22] = 2048;
                  v288 = 1;
                  v289 = 2048;
                  v290 = v210;
                  v291 = 2082;
                  v292 = v208;
                  _os_log_impl(&dword_181A37000, v204, v205, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v208);
                goto LABEL_267;
              }

              if (v209)
              {
                v212 = *(*(*(a1 + 32) + 8) + 24);
                *buf = v283;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "count";
                *&buf[22] = 2048;
                v288 = 1;
                v289 = 2048;
                v290 = v212;
                v207 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_266;
              }
            }

            else
            {
              v204 = __nwlog_obj();
              v205 = type;
              if (os_log_type_enabled(v204, type))
              {
                v211 = *(*(*(a1 + 32) + 8) + 24);
                *buf = v283;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "count";
                *&buf[22] = 2048;
                v288 = 1;
                v289 = 2048;
                v290 = v211;
                v207 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_266;
              }
            }
          }

LABEL_267:
          if (v203)
          {
            free(v203);
          }

          *(*(*(a1 + 32) + 8) + 24) = -1;
          goto LABEL_270;
        }

        v98 = __nwlog_obj();
        v99 = **(a1 + 40);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = "maximum_frame_count";
        *&buf[22] = 2048;
        v288 = 1;
        v289 = 2048;
        v290 = v99;
        v100 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v98, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
        type = OS_LOG_TYPE_ERROR;
        v284 = 0;
        if (__nwlog_fault(v100, &type, &v284))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v101 = __nwlog_obj();
            v102 = type;
            if (os_log_type_enabled(v101, type))
            {
              v103 = **(a1 + 40);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_frame_count";
              *&buf[22] = 2048;
              v288 = 1;
              v289 = 2048;
              v290 = v103;
              v104 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_229:
              _os_log_impl(&dword_181A37000, v101, v102, v104, buf, 0x2Au);
            }
          }

          else if (v284 == 1)
          {
            v117 = __nw_create_backtrace_string();
            v101 = __nwlog_obj();
            v102 = type;
            v118 = os_log_type_enabled(v101, type);
            if (v117)
            {
              if (v118)
              {
                v119 = **(a1 + 40);
                *buf = 136447234;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "maximum_frame_count";
                *&buf[22] = 2048;
                v288 = 1;
                v289 = 2048;
                v290 = v119;
                v291 = 2082;
                v292 = v117;
                _os_log_impl(&dword_181A37000, v101, v102, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v117);
              goto LABEL_230;
            }

            if (v118)
            {
              v184 = **(a1 + 40);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_frame_count";
              *&buf[22] = 2048;
              v288 = 1;
              v289 = 2048;
              v290 = v184;
              v104 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_229;
            }
          }

          else
          {
            v101 = __nwlog_obj();
            v102 = type;
            if (os_log_type_enabled(v101, type))
            {
              v150 = **(a1 + 40);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_frame_count";
              *&buf[22] = 2048;
              v288 = 1;
              v289 = 2048;
              v290 = v150;
              v104 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_229;
            }
          }
        }

LABEL_230:
        if (v100)
        {
          free(v100);
        }

        **(a1 + 40) = 0;
        v94 = &unk_182B08000;
        goto LABEL_233;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v81 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s current metadata processor result must not be unknown", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v284 = 0;
      if (__nwlog_fault(v81, &type, &v284))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v82 = gLogObj;
          v83 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_127;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v84 = "%{public}s current metadata processor result must not be unknown";
          goto LABEL_126;
        }

        if (v284 != 1)
        {
          v82 = __nwlog_obj();
          v83 = type;
          if (!os_log_type_enabled(v82, type))
          {
            goto LABEL_127;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v84 = "%{public}s current metadata processor result must not be unknown, backtrace limit exceeded";
          goto LABEL_126;
        }

        v105 = __nw_create_backtrace_string();
        v82 = __nwlog_obj();
        v83 = type;
        v106 = os_log_type_enabled(v82, type);
        if (v105)
        {
          if (v106)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v105;
            _os_log_impl(&dword_181A37000, v82, v83, "%{public}s current metadata processor result must not be unknown, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v105);
          goto LABEL_127;
        }

        if (v106)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v84 = "%{public}s current metadata processor result must not be unknown, no backtrace";
LABEL_126:
          _os_log_impl(&dword_181A37000, v82, v83, v84, buf, 0xCu);
        }
      }

LABEL_127:
      if (v81)
      {
        free(v81);
      }

      goto LABEL_272;
    }

    if (v10 == 2)
    {
      goto LABEL_307;
    }

    if (v10 == 3)
    {
      is_metadata_complete = nw_frame_is_metadata_complete(v286);
      if (gLogDatapath == 1)
      {
        v274 = __nwlog_obj();
        if (os_log_type_enabled(v274, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2048;
          *&buf[14] = v286;
          _os_log_impl(&dword_181A37000, v274, OS_LOG_TYPE_DEBUG, "%{public}s discarding frame %p that is part of handled message", buf, 0x16u);
        }
      }

      v46 = v286;
      v47 = (*(a1 + 64) + 8);
      v48 = v286[4];
      v49 = v286[5];
      if (v48)
      {
        v47 = (v48 + 40);
      }

      *v47 = v49;
      *v49 = v48;
      v46[4] = 0;
      v46[5] = 0;
      nw_frame_finalize(v286);
      if (is_metadata_complete)
      {
        v50 = *(*(a1 + 48) + 120);
        if (v50)
        {
          v50(*(a1 + 96));
        }
      }

      goto LABEL_272;
    }
  }

  if (nw_frame_unclaimed_length(v286))
  {
    v75 = 0;
  }

  else
  {
    v75 = nw_frame_is_metadata_complete(v286);
  }

  if (gLogDatapath == 1)
  {
    v258 = v75;
    v259 = __nwlog_obj();
    if (os_log_type_enabled(v259, OS_LOG_TYPE_DEBUG))
    {
      v260 = *(a1 + 96);
      v261 = "invalid";
      if (v260)
      {
        v262 = *(v260 + 16);
        if (v262)
        {
          v261 = v262;
        }
      }

      v263 = "output";
      if (*(a1 + 120))
      {
        v263 = "input";
      }

      *buf = 136447234;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      *&buf[12] = 2080;
      *&buf[14] = v261;
      *&buf[22] = 2080;
      v288 = v263;
      v289 = 2048;
      v290 = v286;
      v291 = 1024;
      LODWORD(v292) = v258;
      _os_log_impl(&dword_181A37000, v259, OS_LOG_TYPE_DEBUG, "%{public}s calling %s processor with %s frame %p metadata_only %{BOOL}d", buf, 0x30u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  LOBYTE(v288) = 1;
  (*(a1 + 104))();
  v28 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  if (v4)
  {
    goto LABEL_308;
  }

  return v28 & 1;
}

void nw_protocol_plugin_metadata_report_transfer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return;
  }

  if (a3)
  {
    v5 = *(a1 + 112);
    if (v5)
    {

      v5(a2, a3, a4, a5);
    }

    return;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_plugin_metadata_report_transfer";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null metadata", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v16 = "nw_protocol_plugin_metadata_report_transfer";
      v10 = "%{public}s called with null metadata";
      goto LABEL_20;
    }

    if (v13 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v16 = "nw_protocol_plugin_metadata_report_transfer";
      v10 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v12 = os_log_type_enabled(v8, type);
    if (backtrace_string)
    {
      if (v12)
      {
        *buf = 136446466;
        v16 = "nw_protocol_plugin_metadata_report_transfer";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_21;
    }

    if (v12)
    {
      *buf = 136446210;
      v16 = "nw_protocol_plugin_metadata_report_transfer";
      v10 = "%{public}s called with null metadata, no backtrace";
LABEL_20:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    }
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }
}

void __nw_protocol_plugin_metadata_process_frames_block_invoke_32(uint64_t a1, int a2)
{
  v154 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v125 = a2;
    v126 = __nwlog_obj();
    v127 = os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG);
    a2 = v125;
    if (v127)
    {
      v128 = *(a1 + 48);
      v129 = "invalid";
      if (v128)
      {
        v130 = *(v128 + 16);
        if (v130)
        {
          v129 = v130;
        }
      }

      if (v125 > 3)
      {
        v131 = "invalid";
      }

      else
      {
        v131 = off_1E6A2BED8[v125];
      }

      v132 = "output";
      v133 = *(a1 + 56);
      if (*(a1 + 120))
      {
        v132 = "input";
      }

      *buf = 136447234;
      v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v147 = 2080;
      *v148 = v129;
      *&v148[8] = 2080;
      v149 = v131;
      v150 = 2080;
      v151 = v132;
      v152 = 2048;
      v153 = v133;
      _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_DEBUG, "%{public}s %s processor returned result %s for %s frame %p", buf, 0x34u);
      a2 = v125;
    }
  }

  v3 = *(a1 + 64);
  if (*(a1 + 120) == 1)
  {
    *(v3 + 140) = a2;
    if (a2 > 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    *(v3 + 141) = a2;
    if (a2 > 1)
    {
LABEL_4:
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          is_metadata_complete = nw_frame_is_metadata_complete(*(a1 + 56));
          v5 = *(a1 + 56);
          v6 = (*(a1 + 80) + 8);
          v7 = *(v5 + 32);
          v8 = *(v5 + 40);
          if (v7)
          {
            v6 = (v7 + 40);
          }

          *v6 = v8;
          *v8 = v7;
          *(v5 + 32) = 0;
          *(v5 + 40) = 0;
          nw_frame_finalize(*(a1 + 56));
          if (is_metadata_complete)
          {
            v9 = *(*(a1 + 64) + 120);
            if (v9)
            {
              v9(*(a1 + 48));
            }
          }
        }

        return;
      }

LABEL_159:
      *(*(*(a1 + 40) + 8) + 24) = 0;
      return;
    }
  }

  if (a2)
  {
    if (a2 != 1)
    {
      return;
    }

    v10 = nw_frame_unclaimed_length(*(a1 + 56));
    v11 = v10;
    if (v10 > **(a1 + 72))
    {
      if (*(a1 + 120) != 1)
      {
        if (gLogDatapath)
        {
          v54 = __nwlog_obj();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            v55 = **(a1 + 72);
            *buf = 136446722;
            v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v147 = 1024;
            *v148 = v11;
            *&v148[4] = 1024;
            *&v148[6] = v55;
            _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s not delivering frame with length %u maximum bytes %u", buf, 0x18u);
          }
        }

        goto LABEL_159;
      }

      if (gLogDatapath)
      {
        v134 = __nwlog_obj();
        if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
        {
          v135 = *(a1 + 56);
          v136 = **(a1 + 72);
          *buf = 136446722;
          v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v147 = 2048;
          *v148 = v135;
          *&v148[8] = 1024;
          LODWORD(v149) = v136;
          _os_log_impl(&dword_181A37000, v134, OS_LOG_TYPE_DEBUG, "%{public}s splitting frame %p by offset %u", buf, 0x1Cu);
        }
      }

      v12 = *(a1 + 56);
      v13 = (*(a1 + 80) + 8);
      v14 = *(v12 + 32);
      v15 = *(v12 + 40);
      if (v14)
      {
        v13 = (v14 + 40);
      }

      *v13 = v15;
      *v15 = v14;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *v143 = *(a1 + 56);
      v16 = nw_frame_split(v143, **(a1 + 72));
      nw_frame_array_prepend(*(a1 + 80), 1, *v143);
      v17 = *(a1 + 88);
      *(v16 + 32) = 0;
      v18 = *(v17 + 8);
      *(v16 + 40) = v18;
      *v18 = v16;
      *(v17 + 8) = v16 + 32;
      **(a1 + 96) = 0;
      **(a1 + 72) = 0;
      v19 = *(a1 + 104);
      if ((*v19)--)
      {
LABEL_122:
        v94 = *(a1 + 112);
        v95 = **(a1 + 72);
        v40 = __CFADD__(*v94, v95);
        *v94 += v95;
        if (!v40)
        {
          goto LABEL_141;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v96 = **(a1 + 72);
        v97 = **(a1 + 112);
        *buf = 136446978;
        v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        v147 = 2082;
        *v148 = "moved_bytes";
        *&v148[8] = 2048;
        v149 = v96;
        v150 = 2048;
        v151 = v97;
        LODWORD(v141) = 42;
        v98 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v141);
        type = OS_LOG_TYPE_ERROR;
        v142 = 0;
        if (__nwlog_fault(v98, &type, &v142))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v99 = __nwlog_obj();
            v100 = type;
            if (os_log_type_enabled(v99, type))
            {
              v101 = **(a1 + 72);
              v102 = **(a1 + 112);
              *buf = 136446978;
              v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v147 = 2082;
              *v148 = "moved_bytes";
              *&v148[8] = 2048;
              v149 = v101;
              v150 = 2048;
              v151 = v102;
              v103 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_137:
              _os_log_impl(&dword_181A37000, v99, v100, v103, buf, 0x2Au);
            }
          }

          else if (v142 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v99 = __nwlog_obj();
            v100 = type;
            v105 = os_log_type_enabled(v99, type);
            if (backtrace_string)
            {
              if (v105)
              {
                v106 = **(a1 + 72);
                v107 = **(a1 + 112);
                *buf = 136447234;
                v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                v147 = 2082;
                *v148 = "moved_bytes";
                *&v148[8] = 2048;
                v149 = v106;
                v150 = 2048;
                v151 = v107;
                v152 = 2082;
                v153 = backtrace_string;
                _os_log_impl(&dword_181A37000, v99, v100, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(backtrace_string);
              goto LABEL_138;
            }

            if (v105)
            {
              v110 = **(a1 + 72);
              v111 = **(a1 + 112);
              *buf = 136446978;
              v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v147 = 2082;
              *v148 = "moved_bytes";
              *&v148[8] = 2048;
              v149 = v110;
              v150 = 2048;
              v151 = v111;
              v103 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
              goto LABEL_137;
            }
          }

          else
          {
            v99 = __nwlog_obj();
            v100 = type;
            if (os_log_type_enabled(v99, type))
            {
              v108 = **(a1 + 72);
              v109 = **(a1 + 112);
              *buf = 136446978;
              v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v147 = 2082;
              *v148 = "moved_bytes";
              *&v148[8] = 2048;
              v149 = v108;
              v150 = 2048;
              v151 = v109;
              v103 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
              goto LABEL_137;
            }
          }
        }

LABEL_138:
        if (v98)
        {
          free(v98);
        }

        **(a1 + 112) = -1;
LABEL_141:
        v112 = *(*(a1 + 32) + 8);
        v113 = *(v112 + 24) + 1;
        *(v112 + 24) = v113;
        if (v113 == v113 << 31 >> 31)
        {
          goto LABEL_159;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v114 = *(*(*(a1 + 32) + 8) + 24);
        *buf = 136446978;
        v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        v147 = 2082;
        *v148 = "count";
        *&v148[8] = 2048;
        v149 = 1;
        v150 = 2048;
        v151 = v114;
        LODWORD(v141) = 42;
        v115 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v141);
        type = OS_LOG_TYPE_ERROR;
        v142 = 0;
        if (__nwlog_fault(v115, &type, &v142))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v116 = __nwlog_obj();
            v117 = type;
            if (os_log_type_enabled(v116, type))
            {
              v118 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136446978;
              v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v147 = 2082;
              *v148 = "count";
              *&v148[8] = 2048;
              v149 = 1;
              v150 = 2048;
              v151 = v118;
              v119 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_155:
              _os_log_impl(&dword_181A37000, v116, v117, v119, buf, 0x2Au);
            }
          }

          else if (v142 == 1)
          {
            v120 = __nw_create_backtrace_string();
            v116 = __nwlog_obj();
            v117 = type;
            v121 = os_log_type_enabled(v116, type);
            if (v120)
            {
              if (v121)
              {
                v122 = *(*(*(a1 + 32) + 8) + 24);
                *buf = 136447234;
                v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                v147 = 2082;
                *v148 = "count";
                *&v148[8] = 2048;
                v149 = 1;
                v150 = 2048;
                v151 = v122;
                v152 = 2082;
                v153 = v120;
                _os_log_impl(&dword_181A37000, v116, v117, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v120);
              goto LABEL_156;
            }

            if (v121)
            {
              v124 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136446978;
              v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v147 = 2082;
              *v148 = "count";
              *&v148[8] = 2048;
              v149 = 1;
              v150 = 2048;
              v151 = v124;
              v119 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
              goto LABEL_155;
            }
          }

          else
          {
            v116 = __nwlog_obj();
            v117 = type;
            if (os_log_type_enabled(v116, type))
            {
              v123 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136446978;
              v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v147 = 2082;
              *v148 = "count";
              *&v148[8] = 2048;
              v149 = 1;
              v150 = 2048;
              v151 = v123;
              v119 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
              goto LABEL_155;
            }
          }
        }

LABEL_156:
        if (v115)
        {
          free(v115);
        }

        *(*(*(a1 + 32) + 8) + 24) = -1;
        goto LABEL_159;
      }

      v21 = __nwlog_obj();
      v22 = **(a1 + 104);
      *buf = 136446978;
      v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v147 = 2082;
      *v148 = "maximum_frame_count";
      *&v148[8] = 2048;
      v149 = 1;
      v150 = 2048;
      v151 = v22;
      v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
      type = OS_LOG_TYPE_ERROR;
      v142 = 0;
      if (__nwlog_fault(v23, &type, &v142))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v24 = __nwlog_obj();
          v25 = type;
          if (os_log_type_enabled(v24, type))
          {
            v26 = **(a1 + 104);
            *buf = 136446978;
            v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v147 = 2082;
            *v148 = "maximum_frame_count";
            *&v148[8] = 2048;
            v149 = 1;
            v150 = 2048;
            v151 = v26;
            v27 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_118:
            _os_log_impl(&dword_181A37000, v24, v25, v27, buf, 0x2Au);
          }
        }

        else if (v142 == 1)
        {
          v61 = __nw_create_backtrace_string();
          v24 = __nwlog_obj();
          v25 = type;
          v62 = os_log_type_enabled(v24, type);
          if (v61)
          {
            if (v62)
            {
              v63 = **(a1 + 104);
              *buf = 136447234;
              v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v147 = 2082;
              *v148 = "maximum_frame_count";
              *&v148[8] = 2048;
              v149 = 1;
              v150 = 2048;
              v151 = v63;
              v152 = 2082;
              v153 = v61;
              _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v61);
            goto LABEL_119;
          }

          if (v62)
          {
            v93 = **(a1 + 104);
            *buf = 136446978;
            v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v147 = 2082;
            *v148 = "maximum_frame_count";
            *&v148[8] = 2048;
            v149 = 1;
            v150 = 2048;
            v151 = v93;
            v27 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_118;
          }
        }

        else
        {
          v24 = __nwlog_obj();
          v25 = type;
          if (os_log_type_enabled(v24, type))
          {
            v65 = **(a1 + 104);
            *buf = 136446978;
            v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v147 = 2082;
            *v148 = "maximum_frame_count";
            *&v148[8] = 2048;
            v149 = 1;
            v150 = 2048;
            v151 = v65;
            v27 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_118;
          }
        }
      }

LABEL_119:
      if (v23)
      {
        free(v23);
      }

      **(a1 + 104) = 0;
      goto LABEL_122;
    }

    v32 = *(a1 + 56);
    v33 = (*(a1 + 80) + 8);
    v34 = *(v32 + 32);
    v35 = *(v32 + 40);
    if (v34)
    {
      v33 = (v34 + 40);
    }

    *v33 = v35;
    *v35 = v34;
    *(v32 + 32) = 0;
    *(v32 + 40) = 0;
    v36 = *(a1 + 88);
    v37 = *(a1 + 56);
    *(v37 + 32) = 0;
    v38 = *(v36 + 8);
    *(v37 + 40) = v38;
    *v38 = v37;
    *(v36 + 8) = v37 + 32;
    v39 = *(a1 + 96);
    v40 = *v39 >= v10;
    *v39 -= v10;
    if (!v40)
    {
      if (gLogDatapath == 1)
      {
        v137 = __nwlog_obj();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
        {
          v138 = **(a1 + 96);
          *buf = 136446978;
          v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v147 = 2082;
          *v148 = "minimum_bytes";
          *&v148[8] = 2048;
          v149 = v11;
          v150 = 2048;
          v151 = v138;
          _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      **(a1 + 96) = 0;
    }

    v41 = *(a1 + 72);
    v40 = *v41 >= v11;
    *v41 -= v11;
    if (!v40)
    {
      if (gLogDatapath == 1)
      {
        v139 = __nwlog_obj();
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
        {
          v140 = **(a1 + 72);
          *buf = 136446978;
          v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v147 = 2082;
          *v148 = "maximum_bytes";
          *&v148[8] = 2048;
          v149 = v11;
          v150 = 2048;
          v151 = v140;
          _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      **(a1 + 72) = 0;
    }

    v42 = *(a1 + 104);
    if ((*v42)--)
    {
LABEL_77:
      v67 = *(a1 + 112);
      v40 = __CFADD__(*v67, v11);
      *v67 += v11;
      if (!v40)
      {
        goto LABEL_96;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v68 = v11;
      v69 = **(a1 + 112);
      *buf = 136446978;
      v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v147 = 2082;
      *v148 = "moved_bytes";
      *&v148[8] = 2048;
      v149 = v11;
      v150 = 2048;
      v151 = v69;
      LODWORD(v141) = 42;
      v70 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v141);
      v143[0] = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v70, v143, &type))
      {
        if (v143[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v71 = gLogObj;
          v72 = v143[0];
          if (os_log_type_enabled(gLogObj, v143[0]))
          {
            v73 = **(a1 + 112);
            *buf = 136446978;
            v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v147 = 2082;
            *v148 = "moved_bytes";
            *&v148[8] = 2048;
            v149 = v68;
            v150 = 2048;
            v151 = v73;
            v74 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_92:
            _os_log_impl(&dword_181A37000, v71, v72, v74, buf, 0x2Au);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v75 = __nw_create_backtrace_string();
          v71 = __nwlog_obj();
          v72 = v143[0];
          v76 = os_log_type_enabled(v71, v143[0]);
          if (v75)
          {
            if (v76)
            {
              v77 = **(a1 + 112);
              *buf = 136447234;
              v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v147 = 2082;
              *v148 = "moved_bytes";
              *&v148[8] = 2048;
              v149 = v68;
              v150 = 2048;
              v151 = v77;
              v152 = 2082;
              v153 = v75;
              _os_log_impl(&dword_181A37000, v71, v72, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v75);
            goto LABEL_93;
          }

          if (v76)
          {
            v79 = **(a1 + 112);
            *buf = 136446978;
            v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v147 = 2082;
            *v148 = "moved_bytes";
            *&v148[8] = 2048;
            v149 = v68;
            v150 = 2048;
            v151 = v79;
            v74 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_92;
          }
        }

        else
        {
          v71 = __nwlog_obj();
          v72 = v143[0];
          if (os_log_type_enabled(v71, v143[0]))
          {
            v78 = **(a1 + 112);
            *buf = 136446978;
            v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v147 = 2082;
            *v148 = "moved_bytes";
            *&v148[8] = 2048;
            v149 = v68;
            v150 = 2048;
            v151 = v78;
            v74 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_92;
          }
        }
      }

LABEL_93:
      if (v70)
      {
        free(v70);
      }

      **(a1 + 112) = -1;
LABEL_96:
      v80 = *(*(a1 + 32) + 8);
      v81 = *(v80 + 24) + 1;
      *(v80 + 24) = v81;
      if (v81 == v81 << 31 >> 31)
      {
LABEL_114:
        if (nw_frame_is_metadata_complete(*(a1 + 56)))
        {
          **(a1 + 96) = 0;
        }

        return;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v82 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136446978;
      v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v147 = 2082;
      *v148 = "count";
      *&v148[8] = 2048;
      v149 = 1;
      v150 = 2048;
      v151 = v82;
      LODWORD(v141) = 42;
      v83 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v141);
      v143[0] = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v83, v143, &type))
      {
        if (v143[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v84 = gLogObj;
          v85 = v143[0];
          if (os_log_type_enabled(gLogObj, v143[0]))
          {
            v86 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v147 = 2082;
            *v148 = "count";
            *&v148[8] = 2048;
            v149 = 1;
            v150 = 2048;
            v151 = v86;
            v87 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_110:
            _os_log_impl(&dword_181A37000, v84, v85, v87, buf, 0x2Au);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v88 = __nw_create_backtrace_string();
          v84 = __nwlog_obj();
          v85 = v143[0];
          v89 = os_log_type_enabled(v84, v143[0]);
          if (v88)
          {
            if (v89)
            {
              v90 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136447234;
              v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v147 = 2082;
              *v148 = "count";
              *&v148[8] = 2048;
              v149 = 1;
              v150 = 2048;
              v151 = v90;
              v152 = 2082;
              v153 = v88;
              _os_log_impl(&dword_181A37000, v84, v85, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v88);
            goto LABEL_111;
          }

          if (v89)
          {
            v92 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v147 = 2082;
            *v148 = "count";
            *&v148[8] = 2048;
            v149 = 1;
            v150 = 2048;
            v151 = v92;
            v87 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_110;
          }
        }

        else
        {
          v84 = __nwlog_obj();
          v85 = v143[0];
          if (os_log_type_enabled(v84, v143[0]))
          {
            v91 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v147 = 2082;
            *v148 = "count";
            *&v148[8] = 2048;
            v149 = 1;
            v150 = 2048;
            v151 = v91;
            v87 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_110;
          }
        }
      }

LABEL_111:
      if (v83)
      {
        free(v83);
      }

      *(*(*(a1 + 32) + 8) + 24) = -1;
      goto LABEL_114;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v44 = **(a1 + 104);
    *buf = 136446978;
    v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
    v147 = 2082;
    *v148 = "maximum_frame_count";
    *&v148[8] = 2048;
    v149 = 1;
    v150 = 2048;
    v151 = v44;
    v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    v143[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v45, v143, &type))
    {
      if (v143[0] == OS_LOG_TYPE_FAULT)
      {
        v46 = __nwlog_obj();
        v47 = v143[0];
        if (os_log_type_enabled(v46, v143[0]))
        {
          v48 = **(a1 + 104);
          *buf = 136446978;
          v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v147 = 2082;
          *v148 = "maximum_frame_count";
          *&v148[8] = 2048;
          v149 = 1;
          v150 = 2048;
          v151 = v48;
          v49 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_73:
          _os_log_impl(&dword_181A37000, v46, v47, v49, buf, 0x2Au);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v58 = __nw_create_backtrace_string();
        v46 = __nwlog_obj();
        v47 = v143[0];
        v59 = os_log_type_enabled(v46, v143[0]);
        if (v58)
        {
          if (v59)
          {
            v60 = **(a1 + 104);
            *buf = 136447234;
            v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v147 = 2082;
            *v148 = "maximum_frame_count";
            *&v148[8] = 2048;
            v149 = 1;
            v150 = 2048;
            v151 = v60;
            v152 = 2082;
            v153 = v58;
            _os_log_impl(&dword_181A37000, v46, v47, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v58);
          goto LABEL_74;
        }

        if (v59)
        {
          v66 = **(a1 + 104);
          *buf = 136446978;
          v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v147 = 2082;
          *v148 = "maximum_frame_count";
          *&v148[8] = 2048;
          v149 = 1;
          v150 = 2048;
          v151 = v66;
          v49 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_73;
        }
      }

      else
      {
        v46 = __nwlog_obj();
        v47 = v143[0];
        if (os_log_type_enabled(v46, v143[0]))
        {
          v64 = **(a1 + 104);
          *buf = 136446978;
          v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v147 = 2082;
          *v148 = "maximum_frame_count";
          *&v148[8] = 2048;
          v149 = 1;
          v150 = 2048;
          v151 = v64;
          v49 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_73;
        }
      }
    }

LABEL_74:
    if (v45)
    {
      free(v45);
    }

    **(a1 + 104) = 0;
    goto LABEL_77;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
  v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s metadata processor result must not be unknown", buf, 12);
  v143[0] = OS_LOG_TYPE_ERROR;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v28, v143, &type))
  {
    if (v143[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      v30 = v143[0];
      if (!os_log_type_enabled(gLogObj, v143[0]))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v31 = "%{public}s metadata processor result must not be unknown";
LABEL_51:
      v56 = v29;
      v57 = v30;
LABEL_52:
      _os_log_impl(&dword_181A37000, v56, v57, v31, buf, 0xCu);
      goto LABEL_53;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      v30 = v143[0];
      if (!os_log_type_enabled(gLogObj, v143[0]))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v31 = "%{public}s metadata processor result must not be unknown, backtrace limit exceeded";
      goto LABEL_51;
    }

    v50 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v51 = gLogObj;
    v52 = v143[0];
    v53 = os_log_type_enabled(gLogObj, v143[0]);
    if (v50)
    {
      if (v53)
      {
        *buf = 136446466;
        v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        v147 = 2082;
        *v148 = v50;
        _os_log_impl(&dword_181A37000, v51, v52, "%{public}s metadata processor result must not be unknown, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v50);
      goto LABEL_53;
    }

    if (v53)
    {
      *buf = 136446210;
      v146 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v31 = "%{public}s metadata processor result must not be unknown, no backtrace";
      v56 = v51;
      v57 = v52;
      goto LABEL_52;
    }
  }

LABEL_53:
  if (v28)
  {
    free(v28);
  }
}

uint64_t nw_protocol_plugin_metadata_get_input_frames(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t *a6)
{
  v307 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v141 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    v142 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v141, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v293[0]) = 0;
    if (!__nwlog_fault(v142, type, v293))
    {
      goto LABEL_440;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null protocol";
      goto LABEL_439;
    }

    if (LOBYTE(v293[0]) != 1)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_439;
    }

    backtrace_string = __nw_create_backtrace_string();
    v143 = __nwlog_obj();
    v144 = type[0];
    v151 = os_log_type_enabled(v143, type[0]);
    if (!backtrace_string)
    {
      if (!v151)
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_439;
    }

    if (!v151)
    {
      goto LABEL_344;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = backtrace_string;
    v152 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_343:
    _os_log_impl(&dword_181A37000, v143, v144, v152, buf, 0x16u);
    goto LABEL_344;
  }

  v6 = a1;
  v7 = *(a1 + 40);
  if (!v7)
  {
    v146 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    v142 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v146, 16, "%{public}s called with null protocol->handle", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v293[0]) = 0;
    if (!__nwlog_fault(v142, type, v293))
    {
      goto LABEL_440;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null protocol->handle";
      goto LABEL_439;
    }

    if (LOBYTE(v293[0]) != 1)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
      goto LABEL_439;
    }

    backtrace_string = __nw_create_backtrace_string();
    v143 = __nwlog_obj();
    v144 = type[0];
    v153 = os_log_type_enabled(v143, type[0]);
    if (!backtrace_string)
    {
      if (!v153)
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null protocol->handle, no backtrace";
      goto LABEL_439;
    }

    if (!v153)
    {
      goto LABEL_344;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = backtrace_string;
    v152 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
    goto LABEL_343;
  }

  v8 = *(v7 + 72);
  if (!v8)
  {
    v147 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    v142 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v147, 16, "%{public}s called with null metadata_plugin", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v293[0]) = 0;
    if (!__nwlog_fault(v142, type, v293))
    {
      goto LABEL_440;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null metadata_plugin";
      goto LABEL_439;
    }

    if (LOBYTE(v293[0]) != 1)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null metadata_plugin, backtrace limit exceeded";
      goto LABEL_439;
    }

    backtrace_string = __nw_create_backtrace_string();
    v143 = __nwlog_obj();
    v144 = type[0];
    v154 = os_log_type_enabled(v143, type[0]);
    if (!backtrace_string)
    {
      if (!v154)
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null metadata_plugin, no backtrace";
      goto LABEL_439;
    }

    if (!v154)
    {
      goto LABEL_344;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = backtrace_string;
    v152 = "%{public}s called with null metadata_plugin, dumping backtrace:%{public}s";
    goto LABEL_343;
  }

  v9 = a2;
  if (!a2)
  {
    v148 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    v142 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v148, 16, "%{public}s called with null input_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v293[0]) = 0;
    if (!__nwlog_fault(v142, type, v293))
    {
      goto LABEL_440;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null input_protocol";
      goto LABEL_439;
    }

    if (LOBYTE(v293[0]) != 1)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_439;
    }

    backtrace_string = __nw_create_backtrace_string();
    v143 = __nwlog_obj();
    v144 = type[0];
    v155 = os_log_type_enabled(v143, type[0]);
    if (!backtrace_string)
    {
      if (!v155)
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null input_protocol, no backtrace";
      goto LABEL_439;
    }

    if (!v155)
    {
      goto LABEL_344;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = backtrace_string;
    v152 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
    goto LABEL_343;
  }

  if (!a6)
  {
    v149 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    v142 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v149, 16, "%{public}s called with null return_array", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v293[0]) = 0;
    if (!__nwlog_fault(v142, type, v293))
    {
      goto LABEL_440;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null return_array";
      goto LABEL_439;
    }

    if (LOBYTE(v293[0]) != 1)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v145 = "%{public}s called with null return_array, backtrace limit exceeded";
      goto LABEL_439;
    }

    backtrace_string = __nw_create_backtrace_string();
    v143 = __nwlog_obj();
    v144 = type[0];
    v162 = os_log_type_enabled(v143, type[0]);
    if (backtrace_string)
    {
      if (v162)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = backtrace_string;
        v152 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
        goto LABEL_343;
      }

LABEL_344:
      free(backtrace_string);
      goto LABEL_440;
    }

    if (!v162)
    {
      goto LABEL_440;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    v145 = "%{public}s called with null return_array, no backtrace";
LABEL_439:
    _os_log_impl(&dword_181A37000, v143, v144, v145, buf, 0xCu);
LABEL_440:
    if (v142)
    {
      free(v142);
    }

    return 0;
  }

  if ((*(v8 + 142) & 2) != 0)
  {
    if (gLogDatapath == 1)
    {
      v161 = __nwlog_obj();
      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
        _os_log_impl(&dword_181A37000, v161, OS_LOG_TYPE_DEBUG, "%{public}s get_input_frames called reentrantly, returning", buf, 0xCu);
        return 0;
      }
    }

    return 0;
  }

  *(v8 + 142) |= 2u;
  v11 = *(v7 + 88);
  if (v11)
  {
    v12 = *(v11 + 108);
    if ((v12 & 1) == 0)
    {
      *(v11 + 108) = v12 | 1;
    }
  }

  v267 = a4;
  v268 = a3;
  v266 = a5;
  v13 = *(a1 + 40);
  if (!v13)
  {
    v156 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v157 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v156, 16, "%{public}s called with null protocol->handle", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v293[0]) = 0;
    if (!__nwlog_fault(v157, type, v293))
    {
      goto LABEL_484;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v158 = __nwlog_obj();
      v159 = type[0];
      if (!os_log_type_enabled(v158, type[0]))
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v160 = "%{public}s called with null protocol->handle";
      goto LABEL_483;
    }

    if (LOBYTE(v293[0]) != 1)
    {
      v158 = __nwlog_obj();
      v159 = type[0];
      if (!os_log_type_enabled(v158, type[0]))
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v160 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
      goto LABEL_483;
    }

    v172 = __nw_create_backtrace_string();
    v158 = __nwlog_obj();
    v159 = type[0];
    v173 = os_log_type_enabled(v158, type[0]);
    if (!v172)
    {
      if (!v173)
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v160 = "%{public}s called with null protocol->handle, no backtrace";
      goto LABEL_483;
    }

    if (!v173)
    {
      goto LABEL_394;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v172;
    v174 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
LABEL_393:
    _os_log_impl(&dword_181A37000, v158, v159, v174, buf, 0x16u);
    goto LABEL_394;
  }

  v14 = *(v13 + 72);
  if (!v14)
  {
    v163 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v157 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v163, 16, "%{public}s called with null metadata_plugin", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v293[0]) = 0;
    if (!__nwlog_fault(v157, type, v293))
    {
      goto LABEL_484;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v158 = __nwlog_obj();
      v159 = type[0];
      if (!os_log_type_enabled(v158, type[0]))
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v160 = "%{public}s called with null metadata_plugin";
      goto LABEL_483;
    }

    if (LOBYTE(v293[0]) != 1)
    {
      v158 = __nwlog_obj();
      v159 = type[0];
      if (!os_log_type_enabled(v158, type[0]))
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v160 = "%{public}s called with null metadata_plugin, backtrace limit exceeded";
      goto LABEL_483;
    }

    v172 = __nw_create_backtrace_string();
    v158 = __nwlog_obj();
    v159 = type[0];
    v182 = os_log_type_enabled(v158, type[0]);
    if (!v172)
    {
      if (!v182)
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v160 = "%{public}s called with null metadata_plugin, no backtrace";
      goto LABEL_483;
    }

    if (!v182)
    {
      goto LABEL_394;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v172;
    v174 = "%{public}s called with null metadata_plugin, dumping backtrace:%{public}s";
    goto LABEL_393;
  }

  if ((*(v14 + 142) & 2) == 0)
  {
    v164 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v157 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v164, 16, "%{public}s called with null metadata_plugin->getting_input_frames", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v293[0]) = 0;
    if (!__nwlog_fault(v157, type, v293))
    {
      goto LABEL_484;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v158 = __nwlog_obj();
      v159 = type[0];
      if (!os_log_type_enabled(v158, type[0]))
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v160 = "%{public}s called with null metadata_plugin->getting_input_frames";
      goto LABEL_483;
    }

    if (LOBYTE(v293[0]) != 1)
    {
      v158 = __nwlog_obj();
      v159 = type[0];
      if (!os_log_type_enabled(v158, type[0]))
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v160 = "%{public}s called with null metadata_plugin->getting_input_frames, backtrace limit exceeded";
      goto LABEL_483;
    }

    v172 = __nw_create_backtrace_string();
    v158 = __nwlog_obj();
    v159 = type[0];
    v184 = os_log_type_enabled(v158, type[0]);
    if (v172)
    {
      if (v184)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v172;
        v174 = "%{public}s called with null metadata_plugin->getting_input_frames, dumping backtrace:%{public}s";
        goto LABEL_393;
      }

LABEL_394:
      free(v172);
      goto LABEL_484;
    }

    if (!v184)
    {
      goto LABEL_484;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v160 = "%{public}s called with null metadata_plugin->getting_input_frames, no backtrace";
LABEL_483:
    _os_log_impl(&dword_181A37000, v158, v159, v160, buf, 0xCu);
LABEL_484:
    if (v157)
    {
      free(v157);
    }

    goto LABEL_15;
  }

  v264 = 0;
  v265 = 0;
  if (*(v14 + 140) == 2)
  {
    if (gLogDatapath == 1)
    {
      v183 = __nwlog_obj();
      if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        _os_log_impl(&dword_181A37000, v183, OS_LOG_TYPE_DEBUG, "%{public}s cannot process frames, waiting for saved input frames to be resumed", buf, 0xCu);
        v15 = 0;
        goto LABEL_141;
      }
    }

LABEL_15:
    v15 = 0;
    goto LABEL_141;
  }

  if (!*(v14 + 16))
  {
    v15 = 0;
    goto LABEL_101;
  }

  v263 = 0;
  if (gLogDatapath == 1)
  {
    v189 = a5;
    v190 = a4;
    v191 = __nwlog_obj();
    v192 = os_log_type_enabled(v191, OS_LOG_TYPE_DEBUG);
    a4 = v190;
    a5 = v189;
    if (v192)
    {
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "__nw_protocol_fulfill_frame_request";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = a3;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v190;
      LOWORD(v296) = 1024;
      *(&v296 + 2) = v189;
      _os_log_impl(&dword_181A37000, v191, OS_LOG_TYPE_DEBUG, "%{public}s called with minimum bytes: %u, maximum bytes: %u, maximum frames: %u", buf, 0x1Eu);
      a4 = v190;
      a5 = v189;
    }
  }

  if (a4 >= a3 && a5)
  {
    v255 = v9;
    *type = 0;
    v278 = type;
    v279 = 0x3802000000;
    v280 = __Block_byref_object_copy__3805;
    v281 = __Block_byref_object_dispose__3806;
    v282[0] = 0;
    v282[1] = v282;
    v273 = 0;
    v274 = &v273;
    v275 = 0x2000000000;
    v276 = 0;
    v269 = 0;
    v270 = &v269;
    v271 = 0x2000000000;
    v272 = 0;
    buf[0] = MEMORY[0x1E69E9820];
    buf[1] = 0x40000000;
    buf[2] = ___ZL35__nw_protocol_fulfill_frame_requestP16nw_frame_array_sS0_bbjjjPjPb_block_invoke;
    v296 = &unk_1E6A2BDE0;
    v297[0] = &v273;
    v297[1] = &v269;
    v300 = __PAIR64__(a4, a5);
    v298 = &v263;
    v299 = v14 + 16;
    LOWORD(v301) = 257;
    v297[2] = type;
    v16 = *(v14 + 16);
    do
    {
      if (!v16)
      {
        break;
      }

      v17 = *(v16 + 32);
      v18 = (buf[2])(buf);
      v16 = v17;
    }

    while ((v18 & 1) != 0);
    v19 = *(v278 + 5);
    v20 = *(v270 + 6);
    if (v20 >= a3)
    {
      if (v19)
      {
LABEL_36:
        v293[0] = MEMORY[0x1E69E9820];
        v293[1] = 0x40000000;
        v293[2] = ___ZL35__nw_protocol_fulfill_frame_requestP16nw_frame_array_sS0_bbjjjPjPb_block_invoke_27;
        v293[3] = &unk_1E6A2BE08;
        v294 = 1;
        v293[4] = type;
        v293[5] = a6;
        do
        {
          if (!v19)
          {
            break;
          }

          v28 = *(v19 + 32);
          v29 = (v293[2])(v293);
          v19 = v28;
        }

        while ((v29 & 1) != 0);
      }
    }

    else if (v19)
    {
      if ((v263 & 1) == 0)
      {
        if (gLogDatapath == 1)
        {
          v240 = __nwlog_obj();
          if (os_log_type_enabled(v240, OS_LOG_TYPE_DEBUG))
          {
            v241 = *(v270 + 6);
            LODWORD(v293[0]) = 136446722;
            *(v293 + 4) = "__nw_protocol_fulfill_frame_request";
            WORD2(v293[1]) = 1024;
            *(&v293[1] + 6) = a3;
            WORD1(v293[2]) = 1024;
            HIDWORD(v293[2]) = v241;
            _os_log_impl(&dword_181A37000, v240, OS_LOG_TYPE_DEBUG, "%{public}s could not meet minimum byte count %u with %u bytes from source array", v293, 0x18u);
          }
        }

        nw_frame_array_prepend_array((v14 + 16), v278 + 5, 1);
        v20 = 0;
        v21 = v278;
        *(v278 + 5) = 0;
        *(v21 + 6) = v21 + 40;
        *(v274 + 6) = 0;
        *(v270 + 6) = 0;
        goto LABEL_39;
      }

      goto LABEL_36;
    }

LABEL_39:
    if (gLogDatapath == 1)
    {
      v213 = __nwlog_obj();
      if (os_log_type_enabled(v213, OS_LOG_TYPE_DEBUG))
      {
        v214 = *(v274 + 6);
        v215 = *(v270 + 6);
        v283 = 136447234;
        v284 = "__nw_protocol_fulfill_frame_request";
        v285 = 1024;
        v286 = v214;
        v287 = 1024;
        v288 = v215;
        v289 = 2048;
        v290 = v14 + 16;
        v291 = 2048;
        v292 = a6;
        _os_log_impl(&dword_181A37000, v213, OS_LOG_TYPE_DEBUG, "%{public}s moved (%u frames, %u bytes) from %p to %p", &v283, 0x2Cu);
      }
    }

    v15 = *(v274 + 6);
    _Block_object_dispose(&v269, 8);
    _Block_object_dispose(&v273, 8);
    _Block_object_dispose(type, 8);
    v30 = v20;
    v9 = v255;
    goto LABEL_54;
  }

  v22 = a5;
  v23 = a4;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  LODWORD(buf[0]) = 136446978;
  *(buf + 4) = "__nw_protocol_fulfill_frame_request";
  WORD2(buf[1]) = 1024;
  v252 = v23;
  *(&buf[1] + 6) = v23;
  WORD1(buf[2]) = 1024;
  HIDWORD(buf[2]) = a3;
  LOWORD(v296) = 1024;
  v256 = v22;
  *(&v296 + 2) = v22;
  v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s invalid values for frame request, max %u, min %u, max frame %u", buf, 30);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v293[0]) = 0;
  if (__nwlog_fault(v24, type, v293))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = type[0];
      if (os_log_type_enabled(gLogObj, type[0]))
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "__nw_protocol_fulfill_frame_request";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = v252;
        WORD1(buf[2]) = 1024;
        HIDWORD(buf[2]) = a3;
        LOWORD(v296) = 1024;
        *(&v296 + 2) = v256;
        v27 = "%{public}s invalid values for frame request, max %u, min %u, max frame %u";
LABEL_50:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0x1Eu);
      }
    }

    else if (LOBYTE(v293[0]) == 1)
    {
      v31 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = type[0];
      v32 = os_log_type_enabled(gLogObj, type[0]);
      if (v31)
      {
        if (v32)
        {
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "__nw_protocol_fulfill_frame_request";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = v252;
          WORD1(buf[2]) = 1024;
          HIDWORD(buf[2]) = a3;
          LOWORD(v296) = 1024;
          *(&v296 + 2) = v256;
          HIWORD(v296) = 2082;
          v297[0] = v31;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s invalid values for frame request, max %u, min %u, max frame %u, dumping backtrace:%{public}s", buf, 0x28u);
        }

        free(v31);
        goto LABEL_51;
      }

      if (v32)
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "__nw_protocol_fulfill_frame_request";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = v252;
        WORD1(buf[2]) = 1024;
        HIDWORD(buf[2]) = a3;
        LOWORD(v296) = 1024;
        *(&v296 + 2) = v256;
        v27 = "%{public}s invalid values for frame request, max %u, min %u, max frame %u, no backtrace";
        goto LABEL_50;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = type[0];
      if (os_log_type_enabled(gLogObj, type[0]))
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "__nw_protocol_fulfill_frame_request";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = v252;
        WORD1(buf[2]) = 1024;
        HIDWORD(buf[2]) = a3;
        LOWORD(v296) = 1024;
        *(&v296 + 2) = v256;
        v27 = "%{public}s invalid values for frame request, max %u, min %u, max frame %u, backtrace limit exceeded";
        goto LABEL_50;
      }
    }
  }

LABEL_51:
  if (v24)
  {
    free(v24);
  }

  v30 = 0;
  v15 = 0;
LABEL_54:
  v33 = v268 >= v30;
  v268 -= v30;
  if (!v33)
  {
    if (gLogDatapath == 1)
    {
      v211 = __nwlog_obj();
      if (os_log_type_enabled(v211, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "minimum_bytes";
        HIWORD(buf[2]) = 2048;
        v296 = v30;
        LOWORD(v297[0]) = 2048;
        *(v297 + 2) = v268;
        _os_log_impl(&dword_181A37000, v211, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
      }
    }

    v268 = 0;
  }

  v33 = v267 >= v30;
  v267 -= v30;
  if (!v33)
  {
    if (gLogDatapath == 1)
    {
      v212 = __nwlog_obj();
      if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "maximum_bytes";
        HIWORD(buf[2]) = 2048;
        v296 = v30;
        LOWORD(v297[0]) = 2048;
        *(v297 + 2) = v267;
        _os_log_impl(&dword_181A37000, v212, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
      }
    }

    v267 = 0;
  }

  v33 = v266 >= v15;
  v266 -= v15;
  v257 = v15;
  v253 = v30;
  if (!v33)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = v15;
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = "maximum_frame_count";
    HIWORD(buf[2]) = 2048;
    v296 = v15;
    LOWORD(v297[0]) = 2048;
    *(v297 + 2) = v266;
    LODWORD(v247) = 42;
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v247);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v293[0]) = 0;
    if (__nwlog_fault(v35, type, v293))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "maximum_frame_count";
          HIWORD(buf[2]) = 2048;
          v296 = v34;
          LOWORD(v297[0]) = 2048;
          *(v297 + 2) = v266;
          v38 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_72:
          v41 = v36;
LABEL_73:
          _os_log_impl(&dword_181A37000, v41, v37, v38, buf, 0x2Au);
        }
      }

      else if (LOBYTE(v293[0]) == 1)
      {
        v39 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = type[0];
        log = gLogObj;
        v40 = os_log_type_enabled(gLogObj, type[0]);
        if (v39)
        {
          if (v40)
          {
            LODWORD(buf[0]) = 136447234;
            *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "maximum_frame_count";
            HIWORD(buf[2]) = 2048;
            v296 = v34;
            LOWORD(v297[0]) = 2048;
            *(v297 + 2) = v266;
            WORD1(v297[1]) = 2082;
            *(&v297[1] + 4) = v39;
            _os_log_impl(&dword_181A37000, log, v37, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v39);
          goto LABEL_74;
        }

        if (v40)
        {
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "maximum_frame_count";
          HIWORD(buf[2]) = 2048;
          v296 = v34;
          LOWORD(v297[0]) = 2048;
          *(v297 + 2) = v266;
          v38 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          v41 = log;
          goto LABEL_73;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "maximum_frame_count";
          HIWORD(buf[2]) = 2048;
          v296 = v34;
          LOWORD(v297[0]) = 2048;
          *(v297 + 2) = v266;
          v38 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_72;
        }
      }
    }

LABEL_74:
    if (v35)
    {
      free(v35);
    }

    v266 = 0;
    v15 = v257;
    v30 = v253;
  }

  v33 = __CFADD__(v264, v30);
  v264 += v30;
  if (!v33)
  {
    goto LABEL_95;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  LODWORD(buf[0]) = 136446978;
  *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
  WORD2(buf[1]) = 2082;
  *(&buf[1] + 6) = "received_bytes";
  HIWORD(buf[2]) = 2048;
  v296 = v30;
  LOWORD(v297[0]) = 2048;
  *(v297 + 2) = v264;
  LODWORD(v247) = 42;
  v42 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v247);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v293[0]) = 0;
  if (__nwlog_fault(v42, type, v293))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v43 = gLogObj;
      v44 = type[0];
      if (os_log_type_enabled(gLogObj, type[0]))
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "received_bytes";
        HIWORD(buf[2]) = 2048;
        v296 = v30;
        LOWORD(v297[0]) = 2048;
        *(v297 + 2) = v264;
        v45 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_90:
        v48 = v43;
LABEL_91:
        _os_log_impl(&dword_181A37000, v48, v44, v45, buf, 0x2Au);
      }
    }

    else if (LOBYTE(v293[0]) == 1)
    {
      v46 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v44 = type[0];
      loga = gLogObj;
      v47 = os_log_type_enabled(gLogObj, type[0]);
      if (v46)
      {
        if (v47)
        {
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "received_bytes";
          HIWORD(buf[2]) = 2048;
          v296 = v30;
          LOWORD(v297[0]) = 2048;
          *(v297 + 2) = v264;
          WORD1(v297[1]) = 2082;
          *(&v297[1] + 4) = v46;
          _os_log_impl(&dword_181A37000, loga, v44, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v46);
        goto LABEL_92;
      }

      if (v47)
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "received_bytes";
        HIWORD(buf[2]) = 2048;
        v296 = v30;
        LOWORD(v297[0]) = 2048;
        *(v297 + 2) = v264;
        v45 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        v48 = loga;
        goto LABEL_91;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v43 = gLogObj;
      v44 = type[0];
      if (os_log_type_enabled(gLogObj, type[0]))
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "received_bytes";
        HIWORD(buf[2]) = 2048;
        v296 = v30;
        LOWORD(v297[0]) = 2048;
        *(v297 + 2) = v264;
        v45 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_90;
      }
    }
  }

LABEL_92:
  if (v42)
  {
    free(v42);
  }

  v264 = -1;
  v15 = v257;
  v30 = v253;
LABEL_95:
  v265 = v15;
  if (v263 == 1)
  {
    v268 = 0;
  }

  if (gLogDatapath == 1)
  {
    v193 = __nwlog_obj();
    if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = v30;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v15;
      _os_log_impl(&dword_181A37000, v193, OS_LOG_TYPE_DEBUG, "%{public}s moved (%u bytes, %u frames) from input_frames_pending_delivery", buf, 0x18u);
    }
  }

  if (v15 && (!v267 || !v266))
  {
    if (gLogDatapath != 1)
    {
      goto LABEL_140;
    }

    v58 = __nwlog_obj();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_140;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v59 = "%{public}s returning frames only from input_frames_pending_delivery";
LABEL_490:
    _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, v59, buf, 0xCu);
    goto LABEL_140;
  }

LABEL_101:
  if (*v14)
  {
    if (gLogDatapath == 1)
    {
      v194 = __nwlog_obj();
      if (os_log_type_enabled(v194, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        _os_log_impl(&dword_181A37000, v194, OS_LOG_TYPE_DEBUG, "%{public}s resuming saved input frames", buf, 0xCu);
      }
    }

    v49 = *(v14 + 96);
    if (v49)
    {
      *type = 0;
      v278 = type;
      v279 = 0x2000000000;
      LODWORD(v280) = 0;
      buf[0] = MEMORY[0x1E69E9820];
      buf[1] = 0x40000000;
      buf[2] = __nw_protocol_plugin_metadata_process_frames_block_invoke;
      v296 = &unk_1E6A2BE58;
      v297[2] = v14;
      v298 = &v267;
      v306 = 1;
      v299 = v14;
      v300 = a6;
      v301 = &v268;
      v302 = &v264;
      v297[0] = type;
      v297[1] = &v266;
      v303 = v6;
      v304 = v49;
      v305 = v9;
      v50 = *v14;
      do
      {
        if (!v50)
        {
          break;
        }

        v51 = *(v50 + 32);
        v52 = (buf[2])(buf);
        v50 = v51;
      }

      while ((v52 & 1) != 0);
      v53 = *(v278 + 6);
      _Block_object_dispose(type, 8);
      goto LABEL_108;
    }

    v259 = v15;
    v195 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_process_frames";
    LODWORD(v247) = 12;
    v196 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v195, 16, "%{public}s called with null processor", buf, v247);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v293[0]) = 0;
    if (__nwlog_fault(v196, type, v293))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v197 = __nwlog_obj();
        v198 = type[0];
        if (os_log_type_enabled(v197, type[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_protocol_plugin_metadata_process_frames";
          v199 = "%{public}s called with null processor";
LABEL_501:
          v229 = v197;
LABEL_502:
          _os_log_impl(&dword_181A37000, v229, v198, v199, buf, 0xCu);
        }
      }

      else if (LOBYTE(v293[0]) == 1)
      {
        v216 = __nw_create_backtrace_string();
        v217 = __nwlog_obj();
        v198 = type[0];
        v251 = v217;
        v218 = os_log_type_enabled(v217, type[0]);
        if (v216)
        {
          if (v218)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_protocol_plugin_metadata_process_frames";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v216;
            _os_log_impl(&dword_181A37000, v251, v198, "%{public}s called with null processor, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v216);
          goto LABEL_503;
        }

        if (v218)
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_protocol_plugin_metadata_process_frames";
          v199 = "%{public}s called with null processor, no backtrace";
          v229 = v251;
          goto LABEL_502;
        }
      }

      else
      {
        v197 = __nwlog_obj();
        v198 = type[0];
        if (os_log_type_enabled(v197, type[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_protocol_plugin_metadata_process_frames";
          v199 = "%{public}s called with null processor, backtrace limit exceeded";
          goto LABEL_501;
        }
      }
    }

LABEL_503:
    if (v196)
    {
      free(v196);
    }

    v53 = 0;
    LODWORD(v15) = v259;
LABEL_108:
    v33 = __CFADD__(v15, v53);
    v15 = v15 + v53;
    v265 = v15;
    if (!v33)
    {
      goto LABEL_114;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = "count";
    HIWORD(buf[2]) = 2048;
    v296 = v53;
    LOWORD(v297[0]) = 2048;
    v258 = v15;
    *(v297 + 2) = v15;
    LODWORD(v247) = 42;
    v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v247);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v293[0]) = 0;
    if (__nwlog_fault(v54, type, v293))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v55 = gLogObj;
        v56 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_129;
        }

        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "count";
        HIWORD(buf[2]) = 2048;
        v296 = v53;
        LOWORD(v297[0]) = 2048;
        *(v297 + 2) = v258;
        v57 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_127:
        v62 = v55;
LABEL_128:
        _os_log_impl(&dword_181A37000, v62, v56, v57, buf, 0x2Au);
        goto LABEL_129;
      }

      if (LOBYTE(v293[0]) != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v55 = gLogObj;
        v56 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_129;
        }

        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "count";
        HIWORD(buf[2]) = 2048;
        v296 = v53;
        LOWORD(v297[0]) = 2048;
        *(v297 + 2) = v258;
        v57 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_127;
      }

      v60 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v56 = type[0];
      v250 = gLogObj;
      v61 = os_log_type_enabled(gLogObj, type[0]);
      if (v60)
      {
        if (v61)
        {
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "count";
          HIWORD(buf[2]) = 2048;
          v296 = v53;
          LOWORD(v297[0]) = 2048;
          *(v297 + 2) = v258;
          WORD1(v297[1]) = 2082;
          *(&v297[1] + 4) = v60;
          _os_log_impl(&dword_181A37000, v250, v56, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v60);
      }

      else if (v61)
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "count";
        HIWORD(buf[2]) = 2048;
        v296 = v53;
        LOWORD(v297[0]) = 2048;
        *(v297 + 2) = v258;
        v57 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        v62 = v250;
        goto LABEL_128;
      }
    }

LABEL_129:
    if (v54)
    {
      free(v54);
    }

    v15 = 0xFFFFFFFFLL;
    v265 = -1;
    if (*(v14 + 140) == 2)
    {
      goto LABEL_140;
    }

    goto LABEL_132;
  }

LABEL_114:
  if (*(v14 + 140) == 2)
  {
LABEL_140:
    nw_protocol_plugin_metadata_report_transfer(v14, v6, *(v14 + 48), v264, 1);
    goto LABEL_141;
  }

  if (!v15)
  {
    goto LABEL_134;
  }

LABEL_132:
  if (!v267 || !v266)
  {
    if (gLogDatapath != 1)
    {
      goto LABEL_140;
    }

    v58 = __nwlog_obj();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_140;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v59 = "%{public}s returning frames from input_frames_pending_delivery and saved input frames";
    goto LABEL_490;
  }

LABEL_134:
  if (!*v14)
  {
    nw_protocol_plugin_metadata_get_and_process_frames(v14, v6, v9, a3, &v268, &v267, &v266, &v265, &v264, *(v14 + 96), a6);
    v15 = v265;
    goto LABEL_141;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  LODWORD(buf[0]) = 136446210;
  *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
  LODWORD(v247) = 12;
  v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Getting new input from below, but we still have saved input frames that we didn't use", buf, v247);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v293[0]) = 0;
  if (!__nwlog_fault(v63, type, v293))
  {
    goto LABEL_218;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v64 = gLogObj;
    v65 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_218;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v66 = "%{public}s Getting new input from below, but we still have saved input frames that we didn't use";
    goto LABEL_217;
  }

  if (LOBYTE(v293[0]) != 1)
  {
    v64 = __nwlog_obj();
    v65 = type[0];
    if (!os_log_type_enabled(v64, type[0]))
    {
      goto LABEL_218;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v66 = "%{public}s Getting new input from below, but we still have saved input frames that we didn't use, backtrace limit exceeded";
    goto LABEL_217;
  }

  v99 = __nw_create_backtrace_string();
  v64 = __nwlog_obj();
  v65 = type[0];
  v100 = os_log_type_enabled(v64, type[0]);
  if (v99)
  {
    if (v100)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v99;
      _os_log_impl(&dword_181A37000, v64, v65, "%{public}s Getting new input from below, but we still have saved input frames that we didn't use, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v99);
    goto LABEL_218;
  }

  if (v100)
  {
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v66 = "%{public}s Getting new input from below, but we still have saved input frames that we didn't use, no backtrace";
LABEL_217:
    _os_log_impl(&dword_181A37000, v64, v65, v66, buf, 0xCu);
  }

LABEL_218:
  if (v63)
  {
    free(v63);
  }

LABEL_141:
  *(v8 + 142) &= ~2u;
  v67 = *(v7 + 88);
  if (v67)
  {
    nw_protocol_plugin_retry_set_getting_input_frames(v67, v6, 0);
  }

  if (*(v8 + 140) != 2)
  {
    if (!*(v8 + 136))
    {
      goto LABEL_192;
    }

    *(v8 + 136) = 0;
    v69 = *(v6 + 32);
    v68 = *(v6 + 40);
    v70 = v6;
    if (v68 == &nw_protocol_ref_counted_handle || v68 == &nw_protocol_ref_counted_additional_handle && (v70 = *(v6 + 64)) != 0)
    {
      v72 = *(v70 + 88);
      if (v72)
      {
        v71 = 0;
        *(v70 + 88) = v72 + 1;
        if (v69)
        {
          goto LABEL_152;
        }
      }

      else
      {
        v71 = 0;
        if (v69)
        {
          goto LABEL_152;
        }
      }
    }

    else
    {
      v71 = 1;
      if (v69)
      {
LABEL_152:
        v73 = *(v69 + 40);
        v74 = v69;
        if (v73 == &nw_protocol_ref_counted_handle || v73 == &nw_protocol_ref_counted_additional_handle && (v74 = *(v69 + 64)) != 0)
        {
          v77 = *(v74 + 88);
          if (v77)
          {
            v75 = 0;
            *(v74 + 88) = v77 + 1;
            v76 = *(v6 + 24);
            if (!v76)
            {
              goto LABEL_353;
            }
          }

          else
          {
            v75 = 0;
            v76 = *(v6 + 24);
            if (!v76)
            {
              goto LABEL_353;
            }
          }
        }

        else
        {
          v75 = 1;
          v76 = *(v6 + 24);
          if (!v76)
          {
            goto LABEL_353;
          }
        }

        v82 = *(v76 + 56);
        if (v82)
        {
          v82(v6, v69);
          goto LABEL_168;
        }

LABEL_353:
        v165 = __nwlog_obj();
        v166 = *(v6 + 16);
        LODWORD(buf[0]) = 136446722;
        *(buf + 4) = "__nw_protocol_error";
        if (!v166)
        {
          v166 = "invalid";
        }

        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v166;
        HIWORD(buf[2]) = 2048;
        v296 = v6;
        LODWORD(v247) = 32;
        v167 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v165, 16, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, v247);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v293[0]) = 0;
        v262 = v167;
        if (!__nwlog_fault(v167, type, v293))
        {
          goto LABEL_454;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v168 = __nwlog_obj();
          v169 = type[0];
          if (!os_log_type_enabled(v168, type[0]))
          {
            goto LABEL_454;
          }

          v170 = *(v6 + 16);
          if (!v170)
          {
            v170 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_error";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v170;
          HIWORD(buf[2]) = 2048;
          v296 = v6;
          v171 = "%{public}s protocol %{public}s (%p) has invalid error callback";
        }

        else
        {
          if (LOBYTE(v293[0]) == 1)
          {
            v185 = __nw_create_backtrace_string();
            v186 = __nwlog_obj();
            v169 = type[0];
            v254 = v186;
            v187 = os_log_type_enabled(v186, type[0]);
            if (v185)
            {
              if (v187)
              {
                v188 = *(v6 + 16);
                if (!v188)
                {
                  v188 = "invalid";
                }

                LODWORD(buf[0]) = 136446978;
                *(buf + 4) = "__nw_protocol_error";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v188;
                HIWORD(buf[2]) = 2048;
                v296 = v6;
                LOWORD(v297[0]) = 2082;
                *(v297 + 2) = v185;
                _os_log_impl(&dword_181A37000, v254, v169, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v185);
              goto LABEL_454;
            }

            if (!v187)
            {
LABEL_454:
              if (v262)
              {
                free(v262);
              }

LABEL_168:
              if ((v75 & 1) == 0)
              {
                v83 = *(v69 + 40);
                if (v83 == &nw_protocol_ref_counted_handle || v83 == &nw_protocol_ref_counted_additional_handle && (v69 = *(v69 + 64)) != 0)
                {
                  v84 = *(v69 + 88);
                  if (v84)
                  {
                    v85 = v84 - 1;
                    *(v69 + 88) = v85;
                    if (!v85)
                    {
                      v86 = *(v69 + 64);
                      if (v86)
                      {
                        *(v69 + 64) = 0;
                        v86[2](v86);
                        _Block_release(v86);
                      }

                      if (*(v69 + 72))
                      {
                        v87 = *(v69 + 64);
                        if (v87)
                        {
                          _Block_release(v87);
                        }
                      }

                      goto LABEL_179;
                    }
                  }
                }
              }

              goto LABEL_180;
            }

            v230 = *(v6 + 16);
            if (!v230)
            {
              v230 = "invalid";
            }

            LODWORD(buf[0]) = 136446722;
            *(buf + 4) = "__nw_protocol_error";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v230;
            HIWORD(buf[2]) = 2048;
            v296 = v6;
            v171 = "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace";
            v210 = v254;
LABEL_453:
            _os_log_impl(&dword_181A37000, v210, v169, v171, buf, 0x20u);
            goto LABEL_454;
          }

          v168 = __nwlog_obj();
          v169 = type[0];
          if (!os_log_type_enabled(v168, type[0]))
          {
            goto LABEL_454;
          }

          v209 = *(v6 + 16);
          if (!v209)
          {
            v209 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_error";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v209;
          HIWORD(buf[2]) = 2048;
          v296 = v6;
          v171 = "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded";
        }

        v210 = v168;
        goto LABEL_453;
      }
    }

    v78 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "__nw_protocol_error";
    LODWORD(v247) = 12;
    v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v78, 16, "%{public}s called with null other_protocol", buf, v247);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v293[0]) = 0;
    if (__nwlog_fault(v69, type, v293))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v79 = __nwlog_obj();
        v80 = type[0];
        if (!os_log_type_enabled(v79, type[0]))
        {
          goto LABEL_533;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_error";
        v81 = "%{public}s called with null other_protocol";
        goto LABEL_532;
      }

      if (LOBYTE(v293[0]) != 1)
      {
        v79 = __nwlog_obj();
        v80 = type[0];
        if (!os_log_type_enabled(v79, type[0]))
        {
          goto LABEL_533;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_error";
        v81 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_532;
      }

      v207 = __nw_create_backtrace_string();
      v79 = __nwlog_obj();
      v80 = type[0];
      v208 = os_log_type_enabled(v79, type[0]);
      if (v207)
      {
        if (v208)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "__nw_protocol_error";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v207;
          _os_log_impl(&dword_181A37000, v79, v80, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v207);
        if (!v69)
        {
          goto LABEL_180;
        }

        goto LABEL_179;
      }

      if (v208)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_error";
        v81 = "%{public}s called with null other_protocol, no backtrace";
LABEL_532:
        _os_log_impl(&dword_181A37000, v79, v80, v81, buf, 0xCu);
      }
    }

LABEL_533:
    if (v69)
    {
LABEL_179:
      free(v69);
    }

LABEL_180:
    if ((v71 & 1) == 0)
    {
      v88 = *(v6 + 40);
      v89 = v6;
      if (v88 == &nw_protocol_ref_counted_handle || v88 == &nw_protocol_ref_counted_additional_handle && (v89 = *(v6 + 64)) != 0)
      {
        v90 = *(v89 + 88);
        if (v90)
        {
          v91 = v90 - 1;
          *(v89 + 88) = v91;
          if (!v91)
          {
            v92 = *(v89 + 64);
            if (v92)
            {
              *(v89 + 64) = 0;
              v92[2](v92);
              _Block_release(v92);
            }

            if (*(v89 + 72))
            {
              v93 = *(v89 + 64);
              if (v93)
              {
                _Block_release(v93);
              }
            }

            free(v89);
          }
        }
      }
    }

LABEL_192:
    v94 = *(v8 + 142);
    if ((v94 & 4) == 0 || *v8 || *(v8 + 16))
    {
      goto LABEL_255;
    }

    *(v8 + 142) = v94 & 0xFB;
    v96 = *(v6 + 32);
    v95 = *(v6 + 40);
    v97 = v6;
    if (v95 == &nw_protocol_ref_counted_handle || v95 == &nw_protocol_ref_counted_additional_handle && (v97 = *(v6 + 64)) != 0)
    {
      v101 = *(v97 + 88);
      v98 = 0;
      if (v101)
      {
        *(v97 + 88) = v101 + 1;
      }
    }

    else
    {
      v98 = 1;
    }

    if (v96)
    {
      v102 = *(v96 + 40);
      v103 = v96;
      if (v102 == &nw_protocol_ref_counted_handle || v102 == &nw_protocol_ref_counted_additional_handle && (v103 = *(v96 + 64)) != 0)
      {
        v105 = *(v103 + 88);
        v104 = 0;
        if (v105)
        {
          *(v103 + 88) = v105 + 1;
        }
      }

      else
      {
        v104 = 1;
      }

      v106 = *(v6 + 24);
      if (v106)
      {
        v107 = *(v106 + 184);
        if (v107)
        {
          v107(v6, v96);
LABEL_230:
          if (v104)
          {
            goto LABEL_242;
          }

          v108 = *(v96 + 40);
          if (v108 != &nw_protocol_ref_counted_handle)
          {
            if (v108 != &nw_protocol_ref_counted_additional_handle)
            {
              goto LABEL_242;
            }

            v96 = *(v96 + 64);
            if (!v96)
            {
              goto LABEL_242;
            }
          }

          v109 = *(v96 + 88);
          if (!v109)
          {
            goto LABEL_242;
          }

          v110 = v109 - 1;
          *(v96 + 88) = v110;
          if (v110)
          {
            goto LABEL_242;
          }

          v111 = *(v96 + 64);
          if (v111)
          {
            *(v96 + 64) = 0;
            v111[2](v111);
            _Block_release(v111);
          }

          if (*(v96 + 72))
          {
            v112 = *(v96 + 64);
            if (v112)
            {
              _Block_release(v112);
            }
          }

          goto LABEL_241;
        }
      }

      v222 = __nwlog_obj();
      v223 = *(v6 + 16);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "__nw_protocol_input_finished";
      if (!v223)
      {
        v223 = "invalid";
      }

      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v223;
      HIWORD(buf[2]) = 2048;
      v296 = v6;
      LODWORD(v247) = 32;
      v224 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v222, 16, "%{public}s protocol %{public}s (%p) has invalid input_finished callback", buf, v247);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v293[0]) = 0;
      if (__nwlog_fault(v224, type, v293))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v225 = __nwlog_obj();
          v226 = type[0];
          if (!os_log_type_enabled(v225, type[0]))
          {
            goto LABEL_556;
          }

          v227 = *(v6 + 16);
          if (!v227)
          {
            v227 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_input_finished";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v227;
          HIWORD(buf[2]) = 2048;
          v296 = v6;
          v228 = "%{public}s protocol %{public}s (%p) has invalid input_finished callback";
LABEL_554:
          v245 = v225;
LABEL_555:
          _os_log_impl(&dword_181A37000, v245, v226, v228, buf, 0x20u);
          goto LABEL_556;
        }

        if (LOBYTE(v293[0]) != 1)
        {
          v225 = __nwlog_obj();
          v226 = type[0];
          if (!os_log_type_enabled(v225, type[0]))
          {
            goto LABEL_556;
          }

          v244 = *(v6 + 16);
          if (!v244)
          {
            v244 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_input_finished";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v244;
          HIWORD(buf[2]) = 2048;
          v296 = v6;
          v228 = "%{public}s protocol %{public}s (%p) has invalid input_finished callback, backtrace limit exceeded";
          goto LABEL_554;
        }

        v236 = __nw_create_backtrace_string();
        v237 = __nwlog_obj();
        v226 = type[0];
        v260 = v237;
        v238 = os_log_type_enabled(v237, type[0]);
        if (v236)
        {
          if (v238)
          {
            v239 = *(v6 + 16);
            if (!v239)
            {
              v239 = "invalid";
            }

            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "__nw_protocol_input_finished";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v239;
            HIWORD(buf[2]) = 2048;
            v296 = v6;
            LOWORD(v297[0]) = 2082;
            *(v297 + 2) = v236;
            _os_log_impl(&dword_181A37000, v260, v226, "%{public}s protocol %{public}s (%p) has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v236);
          goto LABEL_556;
        }

        if (v238)
        {
          v246 = *(v6 + 16);
          if (!v246)
          {
            v246 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_input_finished";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v246;
          HIWORD(buf[2]) = 2048;
          v296 = v6;
          v228 = "%{public}s protocol %{public}s (%p) has invalid input_finished callback, no backtrace";
          v245 = v260;
          goto LABEL_555;
        }
      }

LABEL_556:
      if (v224)
      {
        free(v224);
      }

      goto LABEL_230;
    }

    v232 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "__nw_protocol_input_finished";
    LODWORD(v247) = 12;
    v96 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v232, 16, "%{public}s called with null other_protocol", buf, v247);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v293[0]) = 0;
    if (__nwlog_fault(v96, type, v293))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v233 = __nwlog_obj();
        v234 = type[0];
        if (!os_log_type_enabled(v233, type[0]))
        {
          goto LABEL_567;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_input_finished";
        v235 = "%{public}s called with null other_protocol";
        goto LABEL_566;
      }

      if (LOBYTE(v293[0]) != 1)
      {
        v233 = __nwlog_obj();
        v234 = type[0];
        if (!os_log_type_enabled(v233, type[0]))
        {
          goto LABEL_567;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_input_finished";
        v235 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_566;
      }

      v242 = __nw_create_backtrace_string();
      v233 = __nwlog_obj();
      v234 = type[0];
      v243 = os_log_type_enabled(v233, type[0]);
      if (v242)
      {
        if (v243)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "__nw_protocol_input_finished";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v242;
          _os_log_impl(&dword_181A37000, v233, v234, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v242);
        if (!v96)
        {
          goto LABEL_242;
        }

LABEL_241:
        free(v96);
LABEL_242:
        if ((v98 & 1) == 0)
        {
          v113 = *(v6 + 40);
          v114 = v6;
          if (v113 == &nw_protocol_ref_counted_handle || v113 == &nw_protocol_ref_counted_additional_handle && (v114 = *(v6 + 64)) != 0)
          {
            v115 = *(v114 + 88);
            if (v115)
            {
              v116 = v115 - 1;
              *(v114 + 88) = v116;
              if (!v116)
              {
                v117 = *(v114 + 64);
                if (v117)
                {
                  *(v114 + 64) = 0;
                  v117[2](v117);
                  _Block_release(v117);
                }

                if (*(v114 + 72))
                {
                  v118 = *(v114 + 64);
                  if (v118)
                  {
                    _Block_release(v118);
                  }
                }

                free(v114);
              }
            }
          }
        }

        v94 = *(v8 + 142);
LABEL_255:
        if ((v94 & 8) == 0)
        {
          return v15;
        }

        *(v8 + 142) = v94 & 0xF7;
        v120 = *(v6 + 32);
        v119 = *(v6 + 40);
        v121 = v6;
        if (v119 == &nw_protocol_ref_counted_handle || v119 == &nw_protocol_ref_counted_additional_handle && (v121 = *(v6 + 64)) != 0)
        {
          v123 = *(v121 + 88);
          v122 = 0;
          if (v123)
          {
            *(v121 + 88) = v123 + 1;
          }
        }

        else
        {
          v122 = 1;
        }

        if (v120)
        {
          v124 = *(v120 + 40);
          v125 = v120;
          if (v124 == &nw_protocol_ref_counted_handle || v124 == &nw_protocol_ref_counted_additional_handle && (v125 = *(v120 + 64)) != 0)
          {
            v127 = *(v125 + 88);
            v126 = 0;
            if (v127)
            {
              *(v125 + 88) = v127 + 1;
            }
          }

          else
          {
            v126 = 1;
          }

          v128 = *(v6 + 24);
          if (v128)
          {
            v129 = *(v128 + 48);
            if (v129)
            {
              v129(v6, v120);
              goto LABEL_272;
            }
          }

          v175 = __nwlog_obj();
          v176 = *(v6 + 16);
          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_disconnected";
          if (!v176)
          {
            v176 = "invalid";
          }

          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v176;
          HIWORD(buf[2]) = 2048;
          v296 = v6;
          LODWORD(v247) = 32;
          v177 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v175, 16, "%{public}s protocol %{public}s (%p) has invalid disconnected callback", buf, v247);
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v293[0]) = 0;
          if (__nwlog_fault(v177, type, v293))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v178 = __nwlog_obj();
              v179 = type[0];
              if (!os_log_type_enabled(v178, type[0]))
              {
                goto LABEL_517;
              }

              v180 = *(v6 + 16);
              if (!v180)
              {
                v180 = "invalid";
              }

              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "__nw_protocol_disconnected";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v180;
              HIWORD(buf[2]) = 2048;
              v296 = v6;
              v181 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback";
              goto LABEL_516;
            }

            if (LOBYTE(v293[0]) != 1)
            {
              v178 = __nwlog_obj();
              v179 = type[0];
              if (!os_log_type_enabled(v178, type[0]))
              {
                goto LABEL_517;
              }

              v221 = *(v6 + 16);
              if (!v221)
              {
                v221 = "invalid";
              }

              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "__nw_protocol_disconnected";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v221;
              HIWORD(buf[2]) = 2048;
              v296 = v6;
              v181 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded";
              goto LABEL_516;
            }

            v204 = __nw_create_backtrace_string();
            v178 = __nwlog_obj();
            v179 = type[0];
            v205 = os_log_type_enabled(v178, type[0]);
            if (v204)
            {
              if (v205)
              {
                v206 = *(v6 + 16);
                if (!v206)
                {
                  v206 = "invalid";
                }

                LODWORD(buf[0]) = 136446978;
                *(buf + 4) = "__nw_protocol_disconnected";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v206;
                HIWORD(buf[2]) = 2048;
                v296 = v6;
                LOWORD(v297[0]) = 2082;
                *(v297 + 2) = v204;
                _os_log_impl(&dword_181A37000, v178, v179, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v204);
              goto LABEL_517;
            }

            if (v205)
            {
              v231 = *(v6 + 16);
              if (!v231)
              {
                v231 = "invalid";
              }

              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "__nw_protocol_disconnected";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v231;
              HIWORD(buf[2]) = 2048;
              v296 = v6;
              v181 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace";
LABEL_516:
              _os_log_impl(&dword_181A37000, v178, v179, v181, buf, 0x20u);
            }
          }

LABEL_517:
          if (v177)
          {
            free(v177);
          }

LABEL_272:
          if ((v126 & 1) == 0)
          {
            v130 = *(v120 + 40);
            if (v130 == &nw_protocol_ref_counted_handle || v130 == &nw_protocol_ref_counted_additional_handle && (v120 = *(v120 + 64)) != 0)
            {
              v131 = *(v120 + 88);
              if (v131)
              {
                v132 = v131 - 1;
                *(v120 + 88) = v132;
                if (!v132)
                {
                  v133 = *(v120 + 64);
                  if (v133)
                  {
                    *(v120 + 64) = 0;
                    v133[2](v133);
                    _Block_release(v133);
                  }

                  if (*(v120 + 72))
                  {
                    v134 = *(v120 + 64);
                    if (v134)
                    {
                      _Block_release(v134);
                    }
                  }

                  goto LABEL_283;
                }
              }
            }
          }

          goto LABEL_284;
        }

        v200 = __nwlog_obj();
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_disconnected";
        LODWORD(v247) = 12;
        v120 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v200, 16, "%{public}s called with null other_protocol", buf, v247);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v293[0]) = 0;
        if (__nwlog_fault(v120, type, v293))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v201 = __nwlog_obj();
            v202 = type[0];
            if (!os_log_type_enabled(v201, type[0]))
            {
              goto LABEL_542;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "__nw_protocol_disconnected";
            v203 = "%{public}s called with null other_protocol";
            goto LABEL_541;
          }

          if (LOBYTE(v293[0]) != 1)
          {
            v201 = __nwlog_obj();
            v202 = type[0];
            if (!os_log_type_enabled(v201, type[0]))
            {
              goto LABEL_542;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "__nw_protocol_disconnected";
            v203 = "%{public}s called with null other_protocol, backtrace limit exceeded";
            goto LABEL_541;
          }

          v219 = __nw_create_backtrace_string();
          v201 = __nwlog_obj();
          v202 = type[0];
          v220 = os_log_type_enabled(v201, type[0]);
          if (v219)
          {
            if (v220)
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "__nw_protocol_disconnected";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v219;
              _os_log_impl(&dword_181A37000, v201, v202, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v219);
            if (!v120)
            {
              goto LABEL_284;
            }

            goto LABEL_283;
          }

          if (v220)
          {
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "__nw_protocol_disconnected";
            v203 = "%{public}s called with null other_protocol, no backtrace";
LABEL_541:
            _os_log_impl(&dword_181A37000, v201, v202, v203, buf, 0xCu);
          }
        }

LABEL_542:
        if (v120)
        {
LABEL_283:
          free(v120);
        }

LABEL_284:
        if ((v122 & 1) == 0)
        {
          v136 = *(v6 + 40);
          if (v136 == &nw_protocol_ref_counted_handle || v136 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v6 + 64)) != 0)
          {
            v137 = *(v6 + 88);
            if (v137)
            {
              v138 = v137 - 1;
              *(v6 + 88) = v138;
              if (!v138)
              {
                v139 = *(v6 + 64);
                if (v139)
                {
                  *(v6 + 64) = 0;
                  v139[2](v139);
                  _Block_release(v139);
                }

                if (*(v6 + 72))
                {
                  v140 = *(v6 + 64);
                  if (v140)
                  {
                    _Block_release(v140);
                  }
                }

                free(v6);
              }
            }
          }
        }

        return v15;
      }

      if (v243)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_input_finished";
        v235 = "%{public}s called with null other_protocol, no backtrace";
LABEL_566:
        _os_log_impl(&dword_181A37000, v233, v234, v235, buf, 0xCu);
      }
    }

LABEL_567:
    if (!v96)
    {
      goto LABEL_242;
    }

    goto LABEL_241;
  }

  return v15;
}

uint64_t nw_protocol_plugin_retry_set_getting_input_frames(uint64_t a1, void *a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_plugin_retry_set_getting_input_frames";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null retry_plugin", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v18, &type, &v24))
    {
      goto LABEL_29;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      v27 = "nw_protocol_plugin_retry_set_getting_input_frames";
      v21 = "%{public}s called with null retry_plugin";
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v23 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v23)
        {
          *buf = 136446466;
          v27 = "nw_protocol_plugin_retry_set_getting_input_frames";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null retry_plugin, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (!v23)
      {
LABEL_29:
        if (v18)
        {
          free(v18);
        }

        return 0;
      }

      *buf = 136446210;
      v27 = "nw_protocol_plugin_retry_set_getting_input_frames";
      v21 = "%{public}s called with null retry_plugin, no backtrace";
    }

    else
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      v27 = "nw_protocol_plugin_retry_set_getting_input_frames";
      v21 = "%{public}s called with null retry_plugin, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
    goto LABEL_29;
  }

  v3 = *(a1 + 108);
  if ((v3 & 1) == a3)
  {
    return 0;
  }

  if (a3)
  {
    v4 = v3 | 1;
  }

  else
  {
    v5 = a1;
    if ((v3 & 4) != 0)
    {
      *(a1 + 108) = v3 & 0xFFFB;
      v6 = *(a1 + 48);
      if (!v6 || (v7 = a2, v8 = v6(a2, a2[4], *(a1 + 104) != 0), a2 = v7, v9 = v8, a1 = v5, (v9 & 1) == 0))
      {
        v10 = a2;
        nw_protocol_common_input_finished(a2, a2[4]);
        a2 = v10;
        a1 = v5;
      }
    }

    v11 = *(a1 + 108);
    if ((v11 & 2) != 0)
    {
      *(a1 + 108) = v11 & 0xFFFD;
      v12 = *(a1 + 48);
      if (!v12 || (v13 = a2, v14 = v12(a2, a2[4], *(a1 + 104) != 0), a2 = v13, v15 = v14, a1 = v5, (v15 & 1) == 0))
      {
        nw_protocol_common_disconnected(a2, a2[4]);
        a1 = v5;
      }
    }

    v4 = *(a1 + 108) & 0xFFFE;
  }

  *(a1 + 108) = v4;
  return 1;
}

void nw_protocol_plugin_metadata_deep_copy_input_frame_array(nw_frame_array_s *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *v29 = 0;
    *&v29[8] = v29;
    *&v29[16] = 0x3802000000;
    v30 = __Block_byref_object_copy__3805;
    v31 = __Block_byref_object_dispose__3806;
    v32[0] = 0;
    v32[1] = v32;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 0x40000000;
    v24 = ___ZL55nw_protocol_plugin_metadata_deep_copy_input_frame_arrayP16nw_frame_array_s_block_invoke;
    v25 = &unk_1E6A2BEA0;
    v26 = v29;
    tqh_first = a1->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v3 = *(tqh_first + 4);
      v4 = (v24)(v23);
      tqh_first = v3;
    }

    while ((v4 & 1) != 0);
    if (gLogDatapath == 1)
    {
      v20 = __nwlog_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
      }
    }

    v5 = a1->tqh_first;
    if (a1->tqh_first)
    {
      *(v5 + 5) = &v27;
      tqh_last = a1->tqh_last;
      v27 = v5;
      v28 = tqh_last;
      a1->tqh_first = 0;
      a1->tqh_last = &a1->tqh_first;
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 0x40000000;
      v34 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v35 = &__block_descriptor_tmp_21_49595;
      v36 = 1;
      do
      {
        v7 = v27;
        if (!v27)
        {
          break;
        }

        v8 = *(v27 + 4);
        v9 = *(v27 + 5);
        v10 = (v8 + 40);
        if (!v8)
        {
          v10 = &v28;
        }

        *v10 = v9;
        *v9 = v8;
        *(v7 + 4) = 0;
        *(v7 + 5) = 0;
      }

      while (((v34)(&buf) & 1) != 0);
    }

    v11 = *&v29[8];
    v12 = *&v29[8] + 40;
    v13 = *(*&v29[8] + 40);
    if (v13)
    {
      v14 = a1->tqh_last;
      *v14 = v13;
      *(*(v11 + 40) + 40) = v14;
      a1->tqh_last = *(v11 + 48);
      *(v11 + 40) = 0;
      *(v11 + 48) = v12;
    }

    _Block_object_dispose(v29, 8);
    return;
  }

  v15 = __nwlog_obj();
  *v29 = 136446210;
  *&v29[4] = "nw_protocol_plugin_metadata_deep_copy_input_frame_array";
  v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null frame_array", v29, 12);
  LOBYTE(buf) = 16;
  LOBYTE(v27) = 0;
  if (__nwlog_fault(v16, &buf, &v27))
  {
    if (buf == 17)
    {
      v17 = __nwlog_obj();
      v18 = buf;
      if (!os_log_type_enabled(v17, buf))
      {
        goto LABEL_32;
      }

      *v29 = 136446210;
      *&v29[4] = "nw_protocol_plugin_metadata_deep_copy_input_frame_array";
      v19 = "%{public}s called with null frame_array";
      goto LABEL_31;
    }

    if (v27 != 1)
    {
      v17 = __nwlog_obj();
      v18 = buf;
      if (!os_log_type_enabled(v17, buf))
      {
        goto LABEL_32;
      }

      *v29 = 136446210;
      *&v29[4] = "nw_protocol_plugin_metadata_deep_copy_input_frame_array";
      v19 = "%{public}s called with null frame_array, backtrace limit exceeded";
      goto LABEL_31;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = buf;
    v22 = os_log_type_enabled(v17, buf);
    if (backtrace_string)
    {
      if (v22)
      {
        *v29 = 136446466;
        *&v29[4] = "nw_protocol_plugin_metadata_deep_copy_input_frame_array";
        *&v29[12] = 2082;
        *&v29[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null frame_array, dumping backtrace:%{public}s", v29, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_32;
    }

    if (v22)
    {
      *v29 = 136446210;
      *&v29[4] = "nw_protocol_plugin_metadata_deep_copy_input_frame_array";
      v19 = "%{public}s called with null frame_array, no backtrace";
LABEL_31:
      _os_log_impl(&dword_181A37000, v17, v18, v19, v29, 0xCu);
    }
  }

LABEL_32:
  if (v16)
  {
    free(v16);
  }
}

uint64_t ___ZL55nw_protocol_plugin_metadata_deep_copy_input_frame_arrayP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  size = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &size);
  if (!size)
  {
    v10 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v5 = malloc_type_malloc(size, 0x212A1ACDuLL);
  if (v5)
  {
LABEL_8:
    memcpy(v5, v4, size);
    v10 = size;
LABEL_10:
    v11 = nw_frame_create(0, v5, v10, nw_protocol_plugin_metadata_input_frame_finalizer, 0);
    nw_frame_set_buffer_used_malloc(v11, 1);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___ZL55nw_protocol_plugin_metadata_deep_copy_input_frame_arrayP16nw_frame_array_s_block_invoke_36;
    v14[3] = &__block_descriptor_tmp_38_3959;
    v14[4] = v11;
    v14[5] = a2;
    nw_frame_foreach_protocol_metadata(a2, 0, v14);
    v12 = *(*(a1 + 32) + 8);
    *(v11 + 32) = 0;
    v13 = *(v12 + 48);
    *(v11 + 40) = v13;
    *v13 = v11;
    *(v12 + 48) = v11 + 32;
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  size_4 = 136446210;
  v17 = "nw_protocol_plugin_metadata_deep_copy_input_frame_array_block_invoke";
  v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s strict allocator failed", &size_4, 12);
  result = __nwlog_should_abort(v8);
  if (!result)
  {
    free(v8);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t ___ZL55nw_protocol_plugin_metadata_deep_copy_input_frame_arrayP16nw_frame_array_s_block_invoke_36(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  is_metadata_complete = nw_frame_is_metadata_complete(*(a1 + 40));
  nw_frame_set_metadata(v3, a2, 0, is_metadata_complete);
  return 1;
}

void nw_protocol_plugin_metadata_input_frame_finalizer(nw_frame *a1, BOOL a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    nw_frame_free_buffer(a1);
    nw_frame_reset(a1, 0, 0, 0, 0);

    os_release(a1);
    return;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_plugin_metadata_input_frame_finalizer";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null frame", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v14 = "nw_protocol_plugin_metadata_input_frame_finalizer";
      v8 = "%{public}s called with null frame";
      goto LABEL_18;
    }

    if (v11 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v14 = "nw_protocol_plugin_metadata_input_frame_finalizer";
      v8 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_18;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v10 = os_log_type_enabled(v6, type);
    if (backtrace_string)
    {
      if (v10)
      {
        *buf = 136446466;
        v14 = "nw_protocol_plugin_metadata_input_frame_finalizer";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_19;
    }

    if (v10)
    {
      *buf = 136446210;
      v14 = "nw_protocol_plugin_metadata_input_frame_finalizer";
      v8 = "%{public}s called with null frame, no backtrace";
LABEL_18:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    }
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }
}

uint64_t nw_protocol_plugin_metadata_finalize_output_frames(uint64_t a1, void *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v69[0]) = 0;
    if (!__nwlog_fault(v12, type, v69))
    {
      goto LABEL_79;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v69[0]) != 1)
      {
        v13 = __nwlog_obj();
        v14 = type[0];
        if (os_log_type_enabled(v13, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
          v15 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type[0];
      v26 = os_log_type_enabled(v13, type[0]);
      if (!backtrace_string)
      {
        if (v26)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
          v15 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      if (!v26)
      {
        goto LABEL_54;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v27 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_53;
    }

    v13 = __nwlog_obj();
    v14 = type[0];
    if (!os_log_type_enabled(v13, type[0]))
    {
      goto LABEL_79;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    v15 = "%{public}s called with null protocol";
LABEL_78:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_79;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null protocol->handle", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v69[0]) = 0;
    if (!__nwlog_fault(v12, type, v69))
    {
      goto LABEL_79;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v69[0]) != 1)
      {
        v13 = __nwlog_obj();
        v14 = type[0];
        if (os_log_type_enabled(v13, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
          v15 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type[0];
      v28 = os_log_type_enabled(v13, type[0]);
      if (!backtrace_string)
      {
        if (v28)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
          v15 = "%{public}s called with null protocol->handle, no backtrace";
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      if (!v28)
      {
        goto LABEL_54;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v27 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
      goto LABEL_53;
    }

    v13 = __nwlog_obj();
    v14 = type[0];
    if (!os_log_type_enabled(v13, type[0]))
    {
      goto LABEL_79;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    v15 = "%{public}s called with null protocol->handle";
    goto LABEL_78;
  }

  v4 = *(v3 + 72);
  if (!v4)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null metadata_plugin", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v69[0]) = 0;
    if (!__nwlog_fault(v12, type, v69))
    {
      goto LABEL_79;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (!os_log_type_enabled(v13, type[0]))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
      v15 = "%{public}s called with null metadata_plugin";
      goto LABEL_78;
    }

    if (LOBYTE(v69[0]) != 1)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
        v15 = "%{public}s called with null metadata_plugin, backtrace limit exceeded";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type[0];
    v29 = os_log_type_enabled(v13, type[0]);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
        v15 = "%{public}s called with null metadata_plugin, no backtrace";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (!v29)
    {
      goto LABEL_54;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v27 = "%{public}s called with null metadata_plugin, dumping backtrace:%{public}s";
LABEL_53:
    _os_log_impl(&dword_181A37000, v13, v14, v27, buf, 0x16u);
    goto LABEL_54;
  }

  if (a2)
  {
    v70 = 0;
    v69[0] = 0;
    v69[1] = v69;
    if (*a2)
    {
      v5 = v4[5];
      *v5 = *a2;
      *(*a2 + 40) = v5;
      v4[5] = a2[1];
      *a2 = 0;
      a2[1] = a2;
    }

    if (!v4[4])
    {
LABEL_87:
      v10 = 0;
      if (!v69[0])
      {
LABEL_113:
        nw_protocol_plugin_metadata_report_transfer(v4, a1, v4[8], v70, 0);
        return 1;
      }

LABEL_88:
      if (gLogDatapath == 1)
      {
        v53 = __nwlog_obj();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
          *&buf[12] = 1024;
          *&buf[14] = v10;
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s sending %u frames to the below protocol", buf, 0x12u);
        }
      }

      v34 = *(a1 + 32);
      if (v34)
      {
        v35 = *(v34 + 40);
        v36 = *(a1 + 32);
        if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v36 = *(v34 + 64)) != 0)
        {
          v39 = *(v36 + 88);
          if (v39)
          {
            v37 = 0;
            *(v36 + 88) = v39 + 1;
            v38 = *(v34 + 24);
            if (!v38)
            {
              goto LABEL_114;
            }
          }

          else
          {
            v37 = 0;
            v38 = *(v34 + 24);
            if (!v38)
            {
              goto LABEL_114;
            }
          }
        }

        else
        {
          v37 = 1;
          v38 = *(v34 + 24);
          if (!v38)
          {
            goto LABEL_114;
          }
        }

        v40 = *(v38 + 96);
        if (v40)
        {
          v40(v34, v69);
LABEL_101:
          if (v37)
          {
            goto LABEL_113;
          }

          v41 = *(v34 + 40);
          if (v41 != &nw_protocol_ref_counted_handle)
          {
            if (v41 != &nw_protocol_ref_counted_additional_handle)
            {
              goto LABEL_113;
            }

            v34 = *(v34 + 64);
            if (!v34)
            {
              goto LABEL_113;
            }
          }

          v42 = *(v34 + 88);
          if (!v42)
          {
            goto LABEL_113;
          }

          v43 = v42 - 1;
          *(v34 + 88) = v43;
          if (v43)
          {
            goto LABEL_113;
          }

          v44 = *(v34 + 64);
          if (v44)
          {
            *(v34 + 64) = 0;
            v44[2](v44);
            _Block_release(v44);
          }

          if (*(v34 + 72))
          {
            v45 = *(v34 + 64);
            if (v45)
            {
              _Block_release(v45);
            }
          }

          goto LABEL_112;
        }

LABEL_114:
        v46 = __nwlog_obj();
        v47 = *(v34 + 16);
        *buf = 136446722;
        *&buf[4] = "__nw_protocol_finalize_output_frames";
        if (!v47)
        {
          v47 = "invalid";
        }

        *&buf[12] = 2082;
        *&buf[14] = v47;
        *&buf[22] = 2048;
        v77 = v34;
        LODWORD(v65) = 32;
        v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", buf, v65);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v68) = 0;
        if (!__nwlog_fault(v48, type, &v68))
        {
          goto LABEL_153;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v49 = __nwlog_obj();
          v50 = type[0];
          if (!os_log_type_enabled(v49, type[0]))
          {
            goto LABEL_153;
          }

          v51 = *(v34 + 16);
          if (!v51)
          {
            v51 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v51;
          *&buf[22] = 2048;
          v77 = v34;
          v52 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback";
        }

        else if (v68 == 1)
        {
          v58 = __nw_create_backtrace_string();
          v49 = __nwlog_obj();
          v50 = type[0];
          v59 = os_log_type_enabled(v49, type[0]);
          if (v58)
          {
            if (v59)
            {
              if (*(v34 + 16))
              {
                v60 = *(v34 + 16);
              }

              else
              {
                v60 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_finalize_output_frames";
              *&buf[12] = 2082;
              *&buf[14] = v60;
              *&buf[22] = 2048;
              v77 = v34;
              LOWORD(v78) = 2082;
              *(&v78 + 2) = v58;
              _os_log_impl(&dword_181A37000, v49, v50, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v58);
            goto LABEL_153;
          }

          if (!v59)
          {
LABEL_153:
            if (v48)
            {
              free(v48);
            }

            goto LABEL_101;
          }

          v64 = *(v34 + 16);
          if (!v64)
          {
            v64 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v64;
          *&buf[22] = 2048;
          v77 = v34;
          v52 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace";
        }

        else
        {
          v49 = __nwlog_obj();
          v50 = type[0];
          if (!os_log_type_enabled(v49, type[0]))
          {
            goto LABEL_153;
          }

          v63 = *(v34 + 16);
          if (!v63)
          {
            v63 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v63;
          *&buf[22] = 2048;
          v77 = v34;
          v52 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v49, v50, v52, buf, 0x20u);
        goto LABEL_153;
      }

      v54 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "__nw_protocol_finalize_output_frames";
      LODWORD(v65) = 12;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null protocol", buf, v65);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v68) = 0;
      if (__nwlog_fault(v34, type, &v68))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v55 = __nwlog_obj();
          v56 = type[0];
          if (!os_log_type_enabled(v55, type[0]))
          {
            goto LABEL_158;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          v57 = "%{public}s called with null protocol";
          goto LABEL_157;
        }

        if (v68 != 1)
        {
          v55 = __nwlog_obj();
          v56 = type[0];
          if (!os_log_type_enabled(v55, type[0]))
          {
            goto LABEL_158;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          v57 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_157;
        }

        v61 = __nw_create_backtrace_string();
        v55 = __nwlog_obj();
        v56 = type[0];
        v62 = os_log_type_enabled(v55, type[0]);
        if (v61)
        {
          if (v62)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_finalize_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v61;
            _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v61);
          if (!v34)
          {
            goto LABEL_113;
          }

LABEL_112:
          free(v34);
          goto LABEL_113;
        }

        if (v62)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          v57 = "%{public}s called with null protocol, no backtrace";
LABEL_157:
          _os_log_impl(&dword_181A37000, v55, v56, v57, buf, 0xCu);
        }
      }

LABEL_158:
      if (!v34)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

    if (gLogDatapath == 1)
    {
      v19 = __nwlog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s resuming saved output frames", buf, 0xCu);
      }
    }

    v67 = -1;
    v68 = 0;
    v66 = -1;
    v6 = v4[13];
    if (v6)
    {
      *type = 0;
      v72 = type;
      v73 = 0x2000000000;
      v74 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __nw_protocol_plugin_metadata_process_frames_block_invoke;
      v77 = &unk_1E6A2BE58;
      *(&v78 + 1) = &v66;
      v79 = v4;
      v88 = 0;
      v80 = &v67;
      v81 = v4 + 4;
      v82 = v69;
      v83 = &v68;
      *&v78 = type;
      v84 = &v70;
      v85 = a1;
      v86 = v6;
      v87 = 0;
      v7 = v4[4];
      do
      {
        if (!v7)
        {
          break;
        }

        v8 = *(v7 + 32);
        v9 = (*&buf[16])(buf);
        v7 = v8;
      }

      while ((v9 & 1) != 0);
      v10 = *(v72 + 6);
      _Block_object_dispose(type, 8);
      if (!v69[0])
      {
        goto LABEL_113;
      }

      goto LABEL_88;
    }

    v20 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null processor", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v75 = 0;
    if (__nwlog_fault(v21, type, &v75))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type[0];
        if (!os_log_type_enabled(v22, type[0]))
        {
          goto LABEL_85;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        v24 = "%{public}s called with null processor";
        goto LABEL_84;
      }

      if (v75 != 1)
      {
        v22 = __nwlog_obj();
        v23 = type[0];
        if (!os_log_type_enabled(v22, type[0]))
        {
          goto LABEL_85;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        v24 = "%{public}s called with null processor, backtrace limit exceeded";
        goto LABEL_84;
      }

      v31 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type[0];
      v32 = os_log_type_enabled(v22, type[0]);
      if (v31)
      {
        if (v32)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
          *&buf[12] = 2082;
          *&buf[14] = v31;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null processor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        goto LABEL_85;
      }

      if (v32)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        v24 = "%{public}s called with null processor, no backtrace";
LABEL_84:
        _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      }
    }

LABEL_85:
    if (v21)
    {
      free(v21);
    }

    goto LABEL_87;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null frames", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v69[0]) = 0;
  if (!__nwlog_fault(v12, type, v69))
  {
    goto LABEL_79;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (LOBYTE(v69[0]) != 1)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
        v15 = "%{public}s called with null frames, backtrace limit exceeded";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type[0];
    v30 = os_log_type_enabled(v13, type[0]);
    if (!backtrace_string)
    {
      if (v30)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
        v15 = "%{public}s called with null frames, no backtrace";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (v30)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v27 = "%{public}s called with null frames, dumping backtrace:%{public}s";
      goto LABEL_53;
    }

LABEL_54:
    free(backtrace_string);
    goto LABEL_79;
  }

  v13 = __nwlog_obj();
  v14 = type[0];
  if (os_log_type_enabled(v13, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    v15 = "%{public}s called with null frames";
    goto LABEL_78;
  }

LABEL_79:
  if (v12)
  {
    free(v12);
  }

  return 0;
}