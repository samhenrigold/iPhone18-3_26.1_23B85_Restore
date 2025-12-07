uint64_t nw_protocol_options_is_demux(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
    {
      v10 = a1;
      dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
      a1 = v10;
    }

    if (nw_protocol_demux_copy_definition::definition)
    {
      v1 = a1;
      v2 = os_retain(nw_protocol_demux_copy_definition::definition);
      result = nw_protocol_options_matches_definition(v1, v2);
      if (v2)
      {
        v4 = result;
        os_release(v2);
        return v4;
      }
    }

    else
    {

      return nw_protocol_options_matches_definition(a1, 0);
    }

    return result;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_options_is_demux";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null options", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_options_is_demux";
        v9 = "%{public}s called with null options";
LABEL_24:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v16 = "nw_protocol_options_is_demux";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v12)
      {
        *buf = 136446210;
        v16 = "nw_protocol_options_is_demux";
        v9 = "%{public}s called with null options, no backtrace";
        goto LABEL_24;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_options_is_demux";
        v9 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

void nw_demux_options_add_pattern(void *a1, __int16 a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_demux_options_add_pattern";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null options", buf, 12);
    v22 = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v6, &v22, &v21))
    {
      goto LABEL_47;
    }

    if (v22 != OS_LOG_TYPE_FAULT)
    {
      if (v21 != 1)
      {
        v7 = __nwlog_obj();
        v8 = v22;
        if (!os_log_type_enabled(v7, v22))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v24 = "nw_demux_options_add_pattern";
        v9 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_46;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = v22;
      v13 = os_log_type_enabled(v7, v22);
      if (!backtrace_string)
      {
        if (!v13)
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v24 = "nw_demux_options_add_pattern";
        v9 = "%{public}s called with null options, no backtrace";
        goto LABEL_46;
      }

      if (v13)
      {
        *buf = 136446466;
        v24 = "nw_demux_options_add_pattern";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_47;
    }

    v7 = __nwlog_obj();
    v8 = v22;
    if (!os_log_type_enabled(v7, v22))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v24 = "nw_demux_options_add_pattern";
    v9 = "%{public}s called with null options";
LABEL_46:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_47;
  }

  if (a3 < 0x1F)
  {
    if (a4)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = __nw_demux_options_add_pattern_block_invoke;
      v18[3] = &__block_descriptor_tmp_10_26272;
      v19 = a2;
      v20 = a3;
      v18[4] = a4;
      v18[5] = a5;
      nw_protocol_options_access_handle(a1, v18);
      return;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_demux_options_add_pattern";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null pattern", buf, 12);
    v22 = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v6, &v22, &v21))
    {
      if (v22 == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = v22;
        if (!os_log_type_enabled(v7, v22))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v24 = "nw_demux_options_add_pattern";
        v9 = "%{public}s called with null pattern";
        goto LABEL_46;
      }

      if (v21 != 1)
      {
        v7 = __nwlog_obj();
        v8 = v22;
        if (!os_log_type_enabled(v7, v22))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v24 = "nw_demux_options_add_pattern";
        v9 = "%{public}s called with null pattern, backtrace limit exceeded";
        goto LABEL_46;
      }

      v14 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = v22;
      v17 = os_log_type_enabled(v7, v22);
      if (!v14)
      {
        if (!v17)
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v24 = "nw_demux_options_add_pattern";
        v9 = "%{public}s called with null pattern, no backtrace";
        goto LABEL_46;
      }

      if (v17)
      {
        *buf = 136446466;
        v24 = "nw_demux_options_add_pattern";
        v25 = 2082;
        v26 = v14;
        v16 = "%{public}s called with null pattern, dumping backtrace:%{public}s";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

LABEL_47:
    if (v6)
    {
      goto LABEL_48;
    }

    return;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_demux_options_add_pattern";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH)", buf, 12);
  v22 = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v6, &v22, &v21))
  {
    goto LABEL_47;
  }

  if (v22 == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = v22;
    if (!os_log_type_enabled(v7, v22))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v24 = "nw_demux_options_add_pattern";
    v9 = "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH)";
    goto LABEL_46;
  }

  if (v21 != 1)
  {
    v7 = __nwlog_obj();
    v8 = v22;
    if (!os_log_type_enabled(v7, v22))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v24 = "nw_demux_options_add_pattern";
    v9 = "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH), backtrace limit exceeded";
    goto LABEL_46;
  }

  v14 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = v22;
  v15 = os_log_type_enabled(v7, v22);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v24 = "nw_demux_options_add_pattern";
    v9 = "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH), no backtrace";
    goto LABEL_46;
  }

  if (v15)
  {
    *buf = 136446466;
    v24 = "nw_demux_options_add_pattern";
    v25 = 2082;
    v26 = v14;
    v16 = "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH), dumping backtrace:%{public}s";
LABEL_31:
    _os_log_impl(&dword_181A37000, v7, v8, v16, buf, 0x16u);
  }

LABEL_32:
  free(v14);
  if (v6)
  {
LABEL_48:
    free(v6);
  }
}

uint64_t __nw_demux_options_add_pattern_block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v4 = (a2 + 16);
    *(a2 + 32) = *(a1 + 48);
    v13 = *(a1 + 50);
    *(a2 + 34) = v13;
    memcpy((a2 + 36), *(a1 + 32), v13);
    v14 = *(a1 + 40);
    v15 = *(a1 + 50);
    v16 = (a2 + 66);
    if (v14)
    {
      memcpy(v16, v14, v15);
    }

    else
    {
      memset(v16, 255, v15);
    }

    v17 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = v17;
    goto LABEL_16;
  }

  v4 = malloc_type_calloc(1uLL, 0x50uLL, 0xDF9CAFDBuLL);
  if (v4)
  {
LABEL_8:
    v4[8] = *(a1 + 48);
    v9 = *(a1 + 50);
    v4[9] = v9;
    memcpy(v4 + 10, *(a1 + 32), v9);
    v10 = *(a1 + 40);
    v11 = *(a1 + 50);
    v12 = v4 + 25;
    if (v10)
    {
      memcpy(v12, v10, v11);
    }

    else
    {
      memset(v12, 255, v11);
    }

    v17 = *(a2 + 8);
    *v4 = 0;
    *(v4 + 1) = v17;
LABEL_16:
    *v17 = v4;
    *(a2 + 8) = v4;
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  v18 = 136446722;
  v19 = "nw_demux_options_add_pattern_block_invoke";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v20 = 2048;
  v21 = 1;
  v22 = 2048;
  v23 = 80;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v18, 32);
  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void nw_demux_options_add_pattern_data(void *a1, __int16 a2, dispatch_data_t data)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_demux_options_add_pattern_data";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null options", buf, 12);
    v23 = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v8, &v23, &v22))
    {
      goto LABEL_47;
    }

    if (v23 != OS_LOG_TYPE_FAULT)
    {
      if (v22 != 1)
      {
        v9 = __nwlog_obj();
        v10 = v23;
        if (!os_log_type_enabled(v9, v23))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v25 = "nw_demux_options_add_pattern_data";
        v11 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_46;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = v23;
      v15 = os_log_type_enabled(v9, v23);
      if (!backtrace_string)
      {
        if (!v15)
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v25 = "nw_demux_options_add_pattern_data";
        v11 = "%{public}s called with null options, no backtrace";
        goto LABEL_46;
      }

      if (v15)
      {
        *buf = 136446466;
        v25 = "nw_demux_options_add_pattern_data";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_47;
    }

    v9 = __nwlog_obj();
    v10 = v23;
    if (!os_log_type_enabled(v9, v23))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v25 = "nw_demux_options_add_pattern_data";
    v11 = "%{public}s called with null options";
LABEL_46:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_47;
  }

  if (data)
  {
    size = dispatch_data_get_size(data);
    if (size < 0x1F)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = __nw_demux_options_add_pattern_data_block_invoke;
      v20[3] = &__block_descriptor_tmp_11;
      v21 = a2;
      v20[4] = size;
      v20[5] = data;
      nw_protocol_options_access_handle(a1, v20);
      return;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_demux_options_add_pattern_data";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH)", buf, 12);
    v23 = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v8, &v23, &v22))
    {
      if (v23 == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = v23;
        if (!os_log_type_enabled(v9, v23))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v25 = "nw_demux_options_add_pattern_data";
        v11 = "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH)";
        goto LABEL_46;
      }

      if (v22 != 1)
      {
        v9 = __nwlog_obj();
        v10 = v23;
        if (!os_log_type_enabled(v9, v23))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v25 = "nw_demux_options_add_pattern_data";
        v11 = "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH), backtrace limit exceeded";
        goto LABEL_46;
      }

      v16 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = v23;
      v19 = os_log_type_enabled(v9, v23);
      if (!v16)
      {
        if (!v19)
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v25 = "nw_demux_options_add_pattern_data";
        v11 = "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH), no backtrace";
        goto LABEL_46;
      }

      if (v19)
      {
        *buf = 136446466;
        v25 = "nw_demux_options_add_pattern_data";
        v26 = 2082;
        v27 = v16;
        v18 = "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH), dumping backtrace:%{public}s";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

LABEL_47:
    if (v8)
    {
      goto LABEL_48;
    }

    return;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_demux_options_add_pattern_data";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null pattern", buf, 12);
  v23 = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v8, &v23, &v22))
  {
    goto LABEL_47;
  }

  if (v23 == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = v23;
    if (!os_log_type_enabled(v9, v23))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v25 = "nw_demux_options_add_pattern_data";
    v11 = "%{public}s called with null pattern";
    goto LABEL_46;
  }

  if (v22 != 1)
  {
    v9 = __nwlog_obj();
    v10 = v23;
    if (!os_log_type_enabled(v9, v23))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v25 = "nw_demux_options_add_pattern_data";
    v11 = "%{public}s called with null pattern, backtrace limit exceeded";
    goto LABEL_46;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = v23;
  v17 = os_log_type_enabled(v9, v23);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v25 = "nw_demux_options_add_pattern_data";
    v11 = "%{public}s called with null pattern, no backtrace";
    goto LABEL_46;
  }

  if (v17)
  {
    *buf = 136446466;
    v25 = "nw_demux_options_add_pattern_data";
    v26 = 2082;
    v27 = v16;
    v18 = "%{public}s called with null pattern, dumping backtrace:%{public}s";
LABEL_31:
    _os_log_impl(&dword_181A37000, v9, v10, v18, buf, 0x16u);
  }

LABEL_32:
  free(v16);
  if (v8)
  {
LABEL_48:
    free(v8);
  }
}

uint64_t __nw_demux_options_add_pattern_data_block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v4 = (a2 + 16);
    *(a2 + 32) = *(a1 + 48);
    v12 = *(a1 + 32);
    *(a2 + 34) = v12;
    v13 = *(a1 + 40);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = (a2 + 36);
    if (v13)
    {
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 0x40000000;
      *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
      v23 = &unk_1E6A34348;
      v25 = &v14;
      v26 = v12;
      v24 = &v18;
      dispatch_data_apply(v13, applier);
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
    memset((a2 + 66), 255, *(a1 + 32));
    v11 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = v11;
    goto LABEL_14;
  }

  v4 = malloc_type_calloc(1uLL, 0x50uLL, 0x5ED0E0E8uLL);
  if (v4)
  {
LABEL_8:
    v4[8] = *(a1 + 48);
    v9 = *(a1 + 32);
    v4[9] = v9;
    v10 = *(a1 + 40);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = (v4 + 10);
    if (v10)
    {
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 0x40000000;
      *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
      v23 = &unk_1E6A34348;
      v25 = &v14;
      v26 = v9;
      v24 = &v18;
      dispatch_data_apply(v10, applier);
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
    memset(v4 + 25, 255, *(a1 + 32));
    *v4 = 0;
    v11 = *(a2 + 8);
    *(v4 + 1) = v11;
LABEL_14:
    *v11 = v4;
    *(a2 + 8) = v4;
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *applier = 136446722;
  *&applier[4] = "nw_demux_options_add_pattern_data_block_invoke";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  *&applier[12] = 2048;
  *&applier[14] = 1;
  *&applier[22] = 2048;
  v23 = 80;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", applier, 32);
  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void nw_demux_options_enumerate_patterns(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __nw_demux_options_enumerate_patterns_block_invoke;
      v12[3] = &unk_1E6A2F0D8;
      v12[4] = a2;
      nw_protocol_options_access_handle(a1, v12);
      return;
    }

    v7 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_demux_options_enumerate_patterns";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null enumerate_block", buf, 12);
    v14 = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v3, &v14, &v13))
    {
      if (v14 == OS_LOG_TYPE_FAULT)
      {
        v4 = __nwlog_obj();
        v5 = v14;
        if (!os_log_type_enabled(v4, v14))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v16 = "nw_demux_options_enumerate_patterns";
        v6 = "%{public}s called with null enumerate_block";
        goto LABEL_32;
      }

      if (v13 != 1)
      {
        v4 = __nwlog_obj();
        v5 = v14;
        if (!os_log_type_enabled(v4, v14))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v16 = "nw_demux_options_enumerate_patterns";
        v6 = "%{public}s called with null enumerate_block, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = v14;
      v11 = os_log_type_enabled(v4, v14);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_demux_options_enumerate_patterns";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v3)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_demux_options_enumerate_patterns";
        v6 = "%{public}s called with null enumerate_block, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_demux_options_enumerate_patterns";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null options", buf, 12);
    v14 = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v3, &v14, &v13))
    {
      goto LABEL_33;
    }

    if (v14 == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = v14;
      if (!os_log_type_enabled(v4, v14))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v16 = "nw_demux_options_enumerate_patterns";
      v6 = "%{public}s called with null options";
      goto LABEL_32;
    }

    if (v13 != 1)
    {
      v4 = __nwlog_obj();
      v5 = v14;
      if (!os_log_type_enabled(v4, v14))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v16 = "nw_demux_options_enumerate_patterns";
      v6 = "%{public}s called with null options, backtrace limit exceeded";
      goto LABEL_32;
    }

    v8 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = v14;
    v9 = os_log_type_enabled(v4, v14);
    if (!v8)
    {
      if (!v9)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v16 = "nw_demux_options_enumerate_patterns";
      v6 = "%{public}s called with null options, no backtrace";
      goto LABEL_32;
    }

    if (v9)
    {
      *buf = 136446466;
      v16 = "nw_demux_options_enumerate_patterns";
      v17 = 2082;
      v18 = v8;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v8);
  }

LABEL_33:
  if (v3)
  {
LABEL_34:
    free(v3);
  }
}

uint64_t __nw_demux_options_enumerate_patterns_block_invoke(uint64_t a1, void *a2)
{
  do
  {
    a2 = *a2;
  }

  while (a2 && ((*(*(a1 + 32) + 16))() & 1) != 0);
  return 1;
}

void __nw_authentication_credential_storage_copy_shared_block_invoke()
{
  v0 = objc_alloc_init(NWConcrete_nw_authentication_credential_storage);
  v1 = nw_authentication_credential_storage_copy_shared_storage;
  nw_authentication_credential_storage_copy_shared_storage = v0;

  v2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v3 = *(nw_authentication_credential_storage_copy_shared_storage + 8);
  *(nw_authentication_credential_storage_copy_shared_storage + 8) = v2;
}

NWConcrete_nw_authentication_credential_storage *nw_authentication_credential_storage_create_ns(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NWConcrete_nw_authentication_credential_storage);
  credentialStorage = v2->credentialStorage;
  v2->credentialStorage = v1;

  return v2;
}

_DWORD *nw_authentication_credential_storage_copy_default_credential(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = v3[1];
      ns_protection_space = nw_authentication_challenge_get_ns_protection_space(v5);
      if (ns_protection_space)
      {
        v8 = [v6 defaultCredentialForProtectionSpace:ns_protection_space];
        if (v8)
        {
          v9 = [[NWConcrete_nw_authentication_credential alloc] initWithType:?];
          nw_authentication_credential_apply_ns(v9, v8);
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_10;
    }

    v17 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_authentication_credential_storage_copy_default_credential";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null challenge", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v13, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v25 = "nw_authentication_credential_storage_copy_default_credential";
          v16 = "%{public}s called with null challenge";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      if (v22 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v25 = "nw_authentication_credential_storage_copy_default_credential";
          v16 = "%{public}s called with null challenge, backtrace limit exceeded";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v21 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          v25 = "nw_authentication_credential_storage_copy_default_credential";
          v16 = "%{public}s called with null challenge, no backtrace";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      if (!v21)
      {
        goto LABEL_28;
      }

      *buf = 136446466;
      v25 = "nw_authentication_credential_storage_copy_default_credential";
      v26 = 2082;
      v27 = backtrace_string;
      v20 = "%{public}s called with null challenge, dumping backtrace:%{public}s";
LABEL_27:
      _os_log_impl(&dword_181A37000, v14, v15, v20, buf, 0x16u);
LABEL_28:

      free(backtrace_string);
    }
  }

  else
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_authentication_credential_storage_copy_default_credential";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null storage", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v13, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v25 = "nw_authentication_credential_storage_copy_default_credential";
          v16 = "%{public}s called with null storage";
LABEL_37:
          _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v22 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v25 = "nw_authentication_credential_storage_copy_default_credential";
          v16 = "%{public}s called with null storage, backtrace limit exceeded";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v19 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v19)
        {
          *buf = 136446210;
          v25 = "nw_authentication_credential_storage_copy_default_credential";
          v16 = "%{public}s called with null storage, no backtrace";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      if (!v19)
      {
        goto LABEL_28;
      }

      *buf = 136446466;
      v25 = "nw_authentication_credential_storage_copy_default_credential";
      v26 = 2082;
      v27 = backtrace_string;
      v20 = "%{public}s called with null storage, dumping backtrace:%{public}s";
      goto LABEL_27;
    }
  }

LABEL_39:
  if (v13)
  {
    free(v13);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

uint64_t nw_authentication_challenge_get_ns_protection_space(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_authentication_challenge_get_ns_protection_space";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null challenge", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v21, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v32 = "nw_authentication_challenge_get_ns_protection_space";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null challenge", buf, 0xCu);
        }
      }

      else if (v29 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v25 = type;
        v26 = os_log_type_enabled(v22, type);
        if (backtrace_string)
        {
          if (v26)
          {
            *buf = 136446466;
            v32 = "nw_authentication_challenge_get_ns_protection_space";
            v33 = 2082;
            v34 = backtrace_string;
            _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_37;
        }

        if (v26)
        {
          *buf = 136446210;
          v32 = "nw_authentication_challenge_get_ns_protection_space";
          _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v22 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v32 = "nw_authentication_challenge_get_ns_protection_space";
          _os_log_impl(&dword_181A37000, v22, v27, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_37:
    if (v21)
    {
      free(v21);
    }

    goto LABEL_39;
  }

  v3 = nw_authentication_challenge_get_type(v1) - 1;
  if (v3 > 7 || ((0xBFu >> v3) & 1) == 0)
  {
LABEL_39:
    v16 = 0;
    goto LABEL_40;
  }

  v4 = nw_authentication_challenge_copy_protection_space(v2);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = v6[1];

    if (v7 && (v8 = v7, v9 = _nw_endpoint_get_type(v8), v8, v9 == 4))
    {
      v10 = v8;
      parent_endpoint_domain = _nw_endpoint_get_parent_endpoint_domain(v10);

      if (!parent_endpoint_domain)
      {
        parent_endpoint_domain = nw_endpoint_get_hostname(v10);
      }

      v12 = v10;
      _nw_endpoint_get_port(v12);

      v13 = v6;
      v14 = *(v13 + 28);

      if (v14)
      {
      }

      else
      {
        v15 = v12;
        _nw_endpoint_url_scheme_is_secure(v15);
      }

      v17 = v13;
      v18 = v17[2];

      if (v18)
      {
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v18 encoding:5];
      }

      [MEMORY[0x1E696AEC0] stringWithUTF8String:parent_endpoint_domain];
      v19 = CFURLProtectionSpaceCreate();
      v16 = [objc_alloc(MEMORY[0x1E695AC58]) _initWithCFURLProtectionSpace:v19];
      if (v19)
      {
        CFRelease(v19);
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_40:
  return v16;
}

void nw_authentication_credential_apply_ns(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = [v4 user];
    v7 = [v5 password];
    nw_authentication_credential_set_username(v3, [v6 UTF8String]);
    nw_authentication_credential_set_password(v3, [v7 UTF8String]);
    v8 = [v5 persistence];
    if (v8 <= 3)
    {
      v9 = v8;
      v10 = v3;
      v10[3] = v9;
    }

    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_authentication_credential_apply_ns";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null credential", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v12, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_authentication_credential_apply_ns";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null credential", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v22 = "nw_authentication_credential_apply_ns";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_authentication_credential_apply_ns";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_authentication_credential_apply_ns";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v12)
  {
    free(v12);
  }

LABEL_5:
}

void nw_authentication_credential_storage_set_default_credential(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v5)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_authentication_credential_storage_set_default_credential";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null storage", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v13, &type, &v25))
    {
      goto LABEL_50;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v25 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v20 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v28 = "nw_authentication_credential_storage_set_default_credential";
            v29 = 2082;
            v30 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null storage, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_50:
          if (!v13)
          {
            goto LABEL_7;
          }

LABEL_51:
          free(v13);
          goto LABEL_7;
        }

        if (v20)
        {
          *buf = 136446210;
          v28 = "nw_authentication_credential_storage_set_default_credential";
          v16 = "%{public}s called with null storage, no backtrace";
          goto LABEL_48;
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v28 = "nw_authentication_credential_storage_set_default_credential";
          v16 = "%{public}s called with null storage, backtrace limit exceeded";
          goto LABEL_48;
        }
      }

      goto LABEL_49;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_49;
    }

    *buf = 136446210;
    v28 = "nw_authentication_credential_storage_set_default_credential";
    v16 = "%{public}s called with null storage";
    goto LABEL_48;
  }

  if (!v6)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_authentication_credential_storage_set_default_credential";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null challenge", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v13, &type, &v25))
    {
      goto LABEL_50;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v25 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v28 = "nw_authentication_credential_storage_set_default_credential";
          v16 = "%{public}s called with null challenge, backtrace limit exceeded";
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      v21 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v22 = os_log_type_enabled(v14, type);
      if (!v21)
      {
        if (v22)
        {
          *buf = 136446210;
          v28 = "nw_authentication_credential_storage_set_default_credential";
          v16 = "%{public}s called with null challenge, no backtrace";
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      if (v22)
      {
        *buf = 136446466;
        v28 = "nw_authentication_credential_storage_set_default_credential";
        v29 = 2082;
        v30 = v21;
        v23 = "%{public}s called with null challenge, dumping backtrace:%{public}s";
LABEL_33:
        _os_log_impl(&dword_181A37000, v14, v15, v23, buf, 0x16u);
      }

LABEL_34:

      free(v21);
      if (!v13)
      {
        goto LABEL_7;
      }

      goto LABEL_51;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_49;
    }

    *buf = 136446210;
    v28 = "nw_authentication_credential_storage_set_default_credential";
    v16 = "%{public}s called with null challenge";
LABEL_48:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_49;
  }

  if (!v7)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_authentication_credential_storage_set_default_credential";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null credential", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v13, &type, &v25))
    {
      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v28 = "nw_authentication_credential_storage_set_default_credential";
        v16 = "%{public}s called with null credential";
        goto LABEL_48;
      }

LABEL_49:

      goto LABEL_50;
    }

    if (v25 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v28 = "nw_authentication_credential_storage_set_default_credential";
        v16 = "%{public}s called with null credential, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    v21 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v24 = os_log_type_enabled(v14, type);
    if (!v21)
    {
      if (v24)
      {
        *buf = 136446210;
        v28 = "nw_authentication_credential_storage_set_default_credential";
        v16 = "%{public}s called with null credential, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (v24)
    {
      *buf = 136446466;
      v28 = "nw_authentication_credential_storage_set_default_credential";
      v29 = 2082;
      v30 = v21;
      v23 = "%{public}s called with null credential, dumping backtrace:%{public}s";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v9 = v5[1];
  ns_protection_space = nw_authentication_challenge_get_ns_protection_space(v6);
  if (ns_protection_space)
  {
    ns = nw_authentication_credential_create_ns(v8);
    [v9 setDefaultCredential:ns forProtectionSpace:ns_protection_space];
  }

LABEL_7:
}

uint64_t nw_authentication_credential_create_ns(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[2];

    v4 = *(v2 + 3);
    goto LABEL_3;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v40 = "nw_authentication_credential_get_username";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null credential", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (__nwlog_fault(v12, &type, &v37))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v40 = "nw_authentication_credential_get_username";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null credential", buf, 0xCu);
      }

LABEL_37:

      goto LABEL_38;
    }

    if (v37 != 1)
    {
      v13 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v40 = "nw_authentication_credential_get_username";
        _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v40 = "nw_authentication_credential_get_username";
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v21)
    {
      *buf = 136446466;
      v40 = "nw_authentication_credential_get_username";
      v41 = 2082;
      v42 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
  }

LABEL_38:
  if (v12)
  {
    free(v12);
  }

  v27 = __nwlog_obj();
  *buf = 136446210;
  v40 = "nw_authentication_credential_get_password";
  LODWORD(v36) = 12;
  v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null credential", buf, v36);

  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (!__nwlog_fault(v28, &type, &v37))
  {
    goto LABEL_62;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v29 = __nwlog_obj();
    v30 = type;
    if (os_log_type_enabled(v29, type))
    {
      *buf = 136446210;
      v40 = "nw_authentication_credential_get_password";
      _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null credential", buf, 0xCu);
    }
  }

  else if (v37 == 1)
  {
    v31 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v32 = type;
    v33 = os_log_type_enabled(v29, type);
    if (v31)
    {
      if (v33)
      {
        *buf = 136446466;
        v40 = "nw_authentication_credential_get_password";
        v41 = 2082;
        v42 = v31;
        _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v31);
      goto LABEL_62;
    }

    if (v33)
    {
      *buf = 136446210;
      v40 = "nw_authentication_credential_get_password";
      _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null credential, no backtrace", buf, 0xCu);
    }
  }

  else
  {
    v29 = __nwlog_obj();
    v34 = type;
    if (os_log_type_enabled(v29, type))
    {
      *buf = 136446210;
      v40 = "nw_authentication_credential_get_password";
      _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
    }
  }

LABEL_62:
  if (v28)
  {
    free(v28);
  }

  v3 = 0;
  v4 = 0;
LABEL_3:

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v3];
  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v4];
  }

  v6 = v2;
  v7 = v6;
  if (v2)
  {
    v8 = v6[3];

    if ((v8 - 1) >= 3)
    {
      v8 = 0;
    }

    goto LABEL_8;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v40 = "nw_authentication_credential_get_persistence";
  LODWORD(v35) = 12;
  v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null credential", buf, v35);

  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (__nwlog_fault(v16, &type, &v37))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v40 = "nw_authentication_credential_get_persistence";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null credential", buf, 0xCu);
      }
    }

    else if (v37 == 1)
    {
      v22 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v17, type);
      if (v22)
      {
        if (v24)
        {
          *buf = 136446466;
          v40 = "nw_authentication_credential_get_persistence";
          v41 = 2082;
          v42 = v22;
          _os_log_impl(&dword_181A37000, v17, v23, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v22);
        goto LABEL_56;
      }

      if (v24)
      {
        *buf = 136446210;
        v40 = "nw_authentication_credential_get_persistence";
        _os_log_impl(&dword_181A37000, v17, v23, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v40 = "nw_authentication_credential_get_persistence";
        _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_56:
  if (v16)
  {
    free(v16);
  }

  v8 = 0;
LABEL_8:
  v9 = [objc_alloc(MEMORY[0x1E695AC48]) initWithUser:v5 password:v4 persistence:v8];

  return v9;
}

void nw_authentication_credential_cache_entry_set_http_authentication(void *a1, const void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3[1];
    if (v5)
    {
      CFRelease(v5);
      v4[1] = 0;
    }

    if (a2)
    {
      v4[1] = CFRetain(a2);
    }

    goto LABEL_6;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_authentication_credential_cache_entry_set_http_authentication";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null cache_entry", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_credential_cache_entry_set_http_authentication";
        v10 = "%{public}s called with null cache_entry";
LABEL_20:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v16 = "nw_authentication_credential_cache_entry_set_http_authentication";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null cache_entry, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v12)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "nw_authentication_credential_cache_entry_set_http_authentication";
        v10 = "%{public}s called with null cache_entry, no backtrace";
        goto LABEL_20;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_credential_cache_entry_set_http_authentication";
        v10 = "%{public}s called with null cache_entry, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v7)
  {
    free(v7);
  }

LABEL_6:
}

CFTypeRef nw_authentication_credential_cache_entry_get_http_authentication(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_authentication_credential_cache_entry_get_http_authentication";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null cache_entry", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v6, &type, &v13))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_credential_cache_entry_get_http_authentication";
        v9 = "%{public}s called with null cache_entry";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v16 = "nw_authentication_credential_cache_entry_get_http_authentication";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null cache_entry, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v16 = "nw_authentication_credential_cache_entry_get_http_authentication";
        v9 = "%{public}s called with null cache_entry, no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_credential_cache_entry_get_http_authentication";
        v9 = "%{public}s called with null cache_entry, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:

LABEL_19:
    if (v6)
    {
      free(v6);
    }

    goto LABEL_21;
  }

  v3 = v1[1];
  if (!v3)
  {
LABEL_21:
    v4 = 0;
    goto LABEL_22;
  }

  v4 = CFRetain(v3);
LABEL_22:

  return v4;
}

void nw_authentication_credential_cache_entry_set_credential(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_credential_cache_entry_set_credential";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null cache_entry", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_cache_entry_set_credential";
        v9 = "%{public}s called with null cache_entry";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v15 = "nw_authentication_credential_cache_entry_set_credential";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null cache_entry, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_authentication_credential_cache_entry_set_credential";
        v9 = "%{public}s called with null cache_entry, no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_cache_entry_set_credential";
        v9 = "%{public}s called with null cache_entry, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_authentication_credential_cache_entry_set_for_proxy(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 28) = a2;
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_authentication_credential_cache_entry_set_for_proxy";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null cache_entry", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_authentication_credential_cache_entry_set_for_proxy";
        v6 = "%{public}s called with null cache_entry";
LABEL_17:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_authentication_credential_cache_entry_set_for_proxy";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null cache_entry, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_authentication_credential_cache_entry_set_for_proxy";
        v6 = "%{public}s called with null cache_entry, no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_authentication_credential_cache_entry_set_for_proxy";
        v6 = "%{public}s called with null cache_entry, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v3)
  {
    free(v3);
  }
}

uint64_t nw_endpoint_proxy_unsatisfied_handler_should_use_proxy(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v12 = __nwlog_obj();
    *v27 = 136446210;
    *&v27[4] = "nw_endpoint_proxy_unsatisfied_handler_should_use_proxy";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null path", v27, 12);

    buf[0] = 16;
    v22 = 0;
    if (__nwlog_fault(v13, buf, &v22))
    {
      if (buf[0] == 17)
      {
        v14 = __nwlog_obj();
        v15 = buf[0];
        if (os_log_type_enabled(v14, buf[0]))
        {
          *v27 = 136446210;
          *&v27[4] = "nw_endpoint_proxy_unsatisfied_handler_should_use_proxy";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null path", v27, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v17 = buf[0];
        v18 = os_log_type_enabled(v14, buf[0]);
        if (backtrace_string)
        {
          if (v18)
          {
            *v27 = 136446466;
            *&v27[4] = "nw_endpoint_proxy_unsatisfied_handler_should_use_proxy";
            *&v27[12] = 2082;
            *&v27[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null path, dumping backtrace:%{public}s", v27, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (v18)
        {
          *v27 = 136446210;
          *&v27[4] = "nw_endpoint_proxy_unsatisfied_handler_should_use_proxy";
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null path, no backtrace", v27, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v19 = buf[0];
        if (os_log_type_enabled(v14, buf[0]))
        {
          *v27 = 136446210;
          *&v27[4] = "nw_endpoint_proxy_unsatisfied_handler_should_use_proxy";
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null path, backtrace limit exceeded", v27, 0xCu);
        }
      }
    }

LABEL_25:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_27;
  }

  v3 = v1;
  status = _nw_path_get_status(v3);

  if (status != 2)
  {
LABEL_27:
    v7 = 1;
    goto LABEL_28;
  }

  v5 = v3;
  reason = _nw_path_get_reason();

  v7 = 1;
  if (reason == 2)
  {
    *v27 = 0;
    *&v27[8] = v27;
    *&v27[16] = 0x2020000000;
    v28 = 1;
    v8 = v5;
    v9 = _nw_path_copy_proxy_configs();

    if (v9)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_endpoint_proxy_unsatisfied_handler_should_use_proxy_block_invoke;
      aBlock[3] = &unk_1E6A39B60;
      aBlock[4] = v27;
      _nw_array_apply(v9, aBlock);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*&v27[8] + 24);
      *buf = 136446466;
      v24 = "nw_endpoint_proxy_unsatisfied_handler_should_use_proxy";
      v25 = 1024;
      v26 = v11;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s unsatisfied path allowed to use proxy: %d", buf, 0x12u);
    }

    v7 = *(*&v27[8] + 24);
    _Block_object_dispose(v27, 8);
  }

LABEL_28:

  return v7 & 1;
}

void sub_1824FA2C0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 96), 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZL35nw_endpoint_proxy_configs_are_equalPU22objcproto11OS_nw_array8NSObjectS1__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = _nw_array_get_object_at_index(v6, a2);
  }

  else
  {
    v7 = 0;
  }

  is_equal = nw_proxy_config_is_equal(v5, v7);

  if ((is_equal & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v9 = *(*(*(a1 + 40) + 8) + 24);

  return v9;
}

uint64_t __nw_endpoint_proxy_unsatisfied_handler_should_use_proxy_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (!nw_proxy_config_supports_unsatisfied_paths(a3))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t __Block_byref_object_copy__26627(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFURLRef nw_endpoint_proxy_copy_synthesized_url(void *a1, void *a2, int a3, _BYTE *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if (!v7)
  {
    v48 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_proxy_copy_synthesized_url";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null endpoint", buf, 12);

    v56[0] = 16;
    v55 = 0;
    if (!__nwlog_fault(v20, v56, &v55))
    {
      goto LABEL_68;
    }

    if (v56[0] == 17)
    {
      v21 = __nwlog_obj();
      v49 = v56[0];
      if (os_log_type_enabled(v21, v56[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_copy_synthesized_url";
        _os_log_impl(&dword_181A37000, v21, v49, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v55 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v51 = v56[0];
      v52 = os_log_type_enabled(v21, v56[0]);
      if (backtrace_string)
      {
        if (v52)
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_proxy_copy_synthesized_url";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v51, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_68;
      }

      if (v52)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_copy_synthesized_url";
        _os_log_impl(&dword_181A37000, v21, v51, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v53 = v56[0];
      if (os_log_type_enabled(v21, v56[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_copy_synthesized_url";
        _os_log_impl(&dword_181A37000, v21, v53, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_67:

    goto LABEL_68;
  }

  v9 = v7;
  type = _nw_endpoint_get_type(v9);

  if ((type - 3) <= 0xFFFFFFFD)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "nw_endpoint_proxy_copy_synthesized_url";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s Endpoint type is not an address or host, cannot synthesize URL", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v13 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v61 = 0;
    if (v8 && a3)
    {
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __nw_endpoint_proxy_copy_synthesized_url_block_invoke;
      v54[3] = &unk_1E6A30ED8;
      v54[4] = buf;
      nw_parameters_internal_iterate_protocol_stack(v8, 4, 0, v54);
      if (*(*&buf[8] + 24))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *v56 = 136446210;
          v57 = "nw_endpoint_proxy_copy_synthesized_url";
          _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s Found TLS protocol, using https://", v56, 0xCu);
        }

        v16 = v9;
        port = _nw_endpoint_get_port(v16);

        v18 = port != 443;
        if (a4 && port != 443)
        {
          *a4 = 1;
        }

        CFStringAppend(Mutable, @"https://");
        goto LABEL_30;
      }
    }

    else if (!v8)
    {
      goto LABEL_27;
    }

    if (nw_parameters_get_ip_protocol(v8) == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *v56 = 136446210;
        v57 = "nw_endpoint_proxy_copy_synthesized_url";
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s Using datagram service lookup for UDP", v56, 0xCu);
      }

      v24 = "udp";
      goto LABEL_28;
    }

LABEL_27:
    v24 = "tcp";
LABEL_28:
    v25 = v9;
    v26 = _nw_endpoint_get_port(v25);

    v27 = getservbyport(__rev16(v26), v24);
    if (!v27)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v44 = gLogObj;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *v56 = 136446210;
        v57 = "nw_endpoint_proxy_copy_synthesized_url";
        _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s Unknown service and did not find TLS protocol, cannot synthesize URL", v56, 0xCu);
      }

      CFRelease(Mutable);
      v12 = 0;
      goto LABEL_60;
    }

    CFStringAppendFormat(Mutable, 0, @"%s://", v27->s_name);
    v18 = 0;
LABEL_30:
    v28 = v9;
    v29 = v28;
    if (type == 1)
    {
      v30 = _nw_endpoint_copy_address_string(v28);

      if (v30)
      {
        v31 = v29;
        address_family = _nw_endpoint_get_address_family(v31);

        v34 = address_family == 30 || address_family == 18;
        if (v18 && v34)
        {
          CFStringAppendFormat(Mutable, 0, @"[%s]", v30);
        }

        else
        {
          CFStringAppendFormat(Mutable, 0, @"%s", v30);
        }

        free(v30);
      }
    }

    else
    {
      hostname = _nw_endpoint_get_hostname(v28);

      if (hostname)
      {
        CFStringAppendFormat(Mutable, 0, @"%s", hostname);
      }
    }

    if (v18)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *v56 = 136446210;
        v57 = "nw_endpoint_proxy_copy_synthesized_url";
        _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s Overrode to https://, adding port number to URL", v56, 0xCu);
      }

      v37 = v29;
      v38 = _nw_endpoint_get_port(v37);

      CFStringAppendFormat(Mutable, 0, @":%u", v38);
    }

    v12 = CFURLCreateWithString(v13, Mutable, 0);
    CFRelease(Mutable);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v39 = gLogObj;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *v56 = 136446466;
      v57 = "nw_endpoint_proxy_copy_synthesized_url";
      v58 = 2114;
      v59 = v12;
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s Synthesized URL %{public}@", v56, 0x16u);
    }

LABEL_60:
    _Block_object_dispose(buf, 8);
    goto LABEL_61;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  *buf = 136446210;
  *&buf[4] = "nw_endpoint_proxy_copy_synthesized_url";
  v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s CFStringCreateMutable failed", buf, 12);

  v56[0] = 16;
  v55 = 0;
  if (__nwlog_fault(v20, v56, &v55))
  {
    if (v56[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = v56[0];
      if (os_log_type_enabled(v21, v56[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_copy_synthesized_url";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s CFStringCreateMutable failed", buf, 0xCu);
      }
    }

    else if (v55 == 1)
    {
      v40 = __nw_create_backtrace_string();
      if (v40)
      {
        v41 = v40;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v42 = gLogObj;
        v43 = v56[0];
        if (os_log_type_enabled(v42, v56[0]))
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_proxy_copy_synthesized_url";
          *&buf[12] = 2082;
          *&buf[14] = v41;
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s CFStringCreateMutable failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v41);
        if (!v20)
        {
          goto LABEL_6;
        }

        goto LABEL_69;
      }

      v21 = __nwlog_obj();
      v47 = v56[0];
      if (os_log_type_enabled(v21, v56[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_copy_synthesized_url";
        _os_log_impl(&dword_181A37000, v21, v47, "%{public}s CFStringCreateMutable failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v46 = v56[0];
      if (os_log_type_enabled(v21, v56[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_copy_synthesized_url";
        _os_log_impl(&dword_181A37000, v21, v46, "%{public}s CFStringCreateMutable failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_67;
  }

LABEL_68:
  if (v20)
  {
LABEL_69:
    free(v20);
  }

LABEL_6:
  v12 = 0;
LABEL_61:

  return v12;
}

void sub_1824FE430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

BOOL ___ZL34nw_endpoint_proxy_complete_resolveP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  mode = nw_proxy_config_get_mode(a3);
  if (mode == 4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return mode != 4;
}

uint64_t ___ZL34nw_endpoint_proxy_complete_resolveP30NWConcrete_nw_endpoint_handler_block_invoke_161(uint64_t a1, uint64_t a2, void *a3)
{
  v204[2] = *MEMORY[0x1E69E9840];
  v174 = a3;
  mode = nw_proxy_config_get_mode(v174);
  v169 = mode;
  if (mode != 4 && mode != 1)
  {
    goto LABEL_121;
  }

  v172 = a1;
  if (*(a1 + 56) == 1 && *(*(*(a1 + 40) + 8) + 24) != 1)
  {
    goto LABEL_118;
  }

  v6 = *(*(*(a1 + 48) + 8) + 40);
  v7 = *(v172 + 32);
  v8 = v174;
  v168 = v6;
  v175 = v7;
  v163 = v8;
  v173 = nw_endpoint_handler_copy_proxy(v7);
  if (!v8)
  {
    v99 = __nwlog_obj();
    *buf = 136446210;
    v189 = "nw_endpoint_proxy_add_child_for_config";
    v100 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v99, 16, "%{public}s called with null config", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v204[0]) = 0;
    if (__nwlog_fault(v100, type, v204))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v101 = __nwlog_obj();
        v102 = type[0];
        if (os_log_type_enabled(v101, type[0]))
        {
          *buf = 136446210;
          v189 = "nw_endpoint_proxy_add_child_for_config";
          _os_log_impl(&dword_181A37000, v101, v102, "%{public}s called with null config", buf, 0xCu);
        }
      }

      else
      {
        if (LOBYTE(v204[0]) == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v116 = __nwlog_obj();
          v117 = type[0];
          v118 = os_log_type_enabled(v116, type[0]);
          if (backtrace_string)
          {
            if (v118)
            {
              *buf = 136446466;
              v189 = "nw_endpoint_proxy_add_child_for_config";
              v190 = 2082;
              v191 = backtrace_string;
              _os_log_impl(&dword_181A37000, v116, v117, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
          }

          else
          {
            if (v118)
            {
              *buf = 136446210;
              v189 = "nw_endpoint_proxy_add_child_for_config";
              _os_log_impl(&dword_181A37000, v116, v117, "%{public}s called with null config, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_194;
        }

        v101 = __nwlog_obj();
        v127 = type[0];
        if (os_log_type_enabled(v101, type[0]))
        {
          *buf = 136446210;
          v189 = "nw_endpoint_proxy_add_child_for_config";
          _os_log_impl(&dword_181A37000, v101, v127, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_194:
    if (v100)
    {
      free(v100);
    }

    goto LABEL_117;
  }

  v9 = v8;
  v10 = v9[38];

  v11 = v9;
  v12 = v11;
  v13 = v9[38];
  if (v13 <= 1)
  {
    if (v13 == 1)
    {
      v14 = v11[39];
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  switch(v13)
  {
    case 2:
      v14 = 1002;
      break;
    case 4:
      v14 = 1;
      break;
    case 3:
      v14 = 1001;
      break;
    default:
LABEL_16:
      v14 = 0;
      break;
  }

LABEL_19:

  v165 = nw_endpoint_handler_copy_endpoint(v7);
  if (v10 == 1)
  {
    v16 = v12;
    v17 = v16[5];

    v18 = nw_endpoint_copy(v17);
    v15 = v18;
    if (v14 != 2001)
    {
      nw_endpoint_set_parent_endpoint(v18, v165, 1);
    }

    nw_endpoint_set_do_not_redact(v15);
  }

  else if (v10 == 4)
  {
    v15 = v165;
  }

  else
  {
    if ((nw_endpoint_handler_get_logging_disabled(v7) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v19 = gconnectionLogObj;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        parameters = v10;
        id_string = nw_endpoint_handler_get_id_string(v175);
        v21 = nw_endpoint_handler_dry_run_string(v175);
        v22 = nw_endpoint_handler_copy_endpoint(v175);
        v23 = v22;
        log = v14;
        if (v22)
        {
          logging_description = _nw_endpoint_get_logging_description(v22);
          v25 = id_string;
        }

        else
        {
          v25 = id_string;
          logging_description = "<NULL>";
        }

        v26 = nw_endpoint_handler_state_string(v175);
        v27 = nw_endpoint_handler_mode_string(v175);
        v28 = nw_endpoint_handler_copy_current_path(v175);
        *buf = 136448002;
        v189 = "nw_endpoint_proxy_add_child_for_config";
        v190 = 2082;
        v191 = v25;
        v192 = 2082;
        v193 = v21;
        v194 = 2082;
        v195 = logging_description;
        v196 = 2082;
        v197 = v26;
        v198 = 2082;
        v199 = v27;
        v200 = 2114;
        v201 = v28;
        v202 = 1024;
        v10 = parameters;
        LODWORD(v203) = parameters;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] invalid proxy mode %u", buf, 0x4Eu);

        v14 = log;
      }
    }

    v15 = 0;
  }

  v170 = v15;
  v29 = nw_endpoint_handler_copy_parameters(v175);
  parametersa = _nw_parameters_copy();

  v167 = nw_parameters_copy_default_protocol_stack(parametersa);
  options = nw_protocol_stack_copy_transport_protocol(v167);
  v164 = nw_protocol_stack_copy_internet_protocol(v167);
  v30 = nw_endpoint_handler_copy_current_path(v175);
  v204[0] = 0;
  v204[1] = 0;
  v162 = v30;
  if (nw_path_get_client_id(v30, v204))
  {
    nw_parameters_set_parent_id_internal(parametersa, v204);
  }

  nw_parameters_set_proxy_applied(parametersa);
  nw_parameters_set_effective_proxy_config(parametersa, v12);
  if (v168)
  {
    v31 = v12;
    v32 = v9[38] == 4;

    if (v32)
    {
      v33 = v168;
      v34 = (v33[171] & 0x40) == 0;

      if (!v34)
      {
        if (parametersa)
        {
          _nw_parameters_set_raced_proxy_config(parametersa, v33);
          goto LABEL_42;
        }

        v137 = __nwlog_obj();
        *buf = 136446210;
        v189 = "nw_parameters_set_raced_proxy_config";
        v138 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v137, 16, "%{public}s called with null parameters", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v187 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v138, type, &v187))
        {
          goto LABEL_225;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v139 = __nwlog_obj();
          v140 = type[0];
          if (os_log_type_enabled(v139, type[0]))
          {
            *buf = 136446210;
            v189 = "nw_parameters_set_raced_proxy_config";
            _os_log_impl(&dword_181A37000, v139, v140, "%{public}s called with null parameters", buf, 0xCu);
          }
        }

        else
        {
          if (v187 == OS_LOG_TYPE_INFO)
          {
            v153 = __nw_create_backtrace_string();
            v154 = __nwlog_obj();
            v155 = type[0];
            v156 = os_log_type_enabled(v154, type[0]);
            if (v153)
            {
              if (v156)
              {
                *buf = 136446466;
                v189 = "nw_parameters_set_raced_proxy_config";
                v190 = 2082;
                v191 = v153;
                _os_log_impl(&dword_181A37000, v154, v155, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v153);
            }

            else
            {
              if (v156)
              {
                *buf = 136446210;
                v189 = "nw_parameters_set_raced_proxy_config";
                _os_log_impl(&dword_181A37000, v154, v155, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
              }
            }

            goto LABEL_225;
          }

          v139 = __nwlog_obj();
          v158 = type[0];
          if (os_log_type_enabled(v139, type[0]))
          {
            *buf = 136446210;
            v189 = "nw_parameters_set_raced_proxy_config";
            _os_log_impl(&dword_181A37000, v139, v158, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
          }
        }

LABEL_225:
        if (v138)
        {
          free(v138);
        }
      }
    }
  }

LABEL_42:
  nw_parameters_set_preferred_netagent_classes(parametersa, 0, 0);
  v35 = *(v173 + 97) < 0 || v10 == 1;
  if (!v35 || (*(v173 + 97) & 0x40) != 0)
  {
    goto LABEL_50;
  }

  if (parametersa)
  {
    _nw_parameters_set_is_system_proxy_connection();
    goto LABEL_50;
  }

  v119 = __nwlog_obj();
  *buf = 136446210;
  v189 = "nw_parameters_set_is_system_proxy_connection";
  LODWORD(v159) = 12;
  v120 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v119, 16, "%{public}s called with null parameters", buf, v159);

  type[0] = OS_LOG_TYPE_ERROR;
  v187 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v120, type, &v187))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v121 = __nwlog_obj();
      v122 = type[0];
      if (os_log_type_enabled(v121, type[0]))
      {
        *buf = 136446210;
        v189 = "nw_parameters_set_is_system_proxy_connection";
        _os_log_impl(&dword_181A37000, v121, v122, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else
    {
      if (v187 == OS_LOG_TYPE_INFO)
      {
        v132 = __nw_create_backtrace_string();
        v133 = __nwlog_obj();
        v134 = type[0];
        v135 = os_log_type_enabled(v133, type[0]);
        if (v132)
        {
          if (v135)
          {
            *buf = 136446466;
            v189 = "nw_parameters_set_is_system_proxy_connection";
            v190 = 2082;
            v191 = v132;
            _os_log_impl(&dword_181A37000, v133, v134, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v132);
        }

        else
        {
          if (v135)
          {
            *buf = 136446210;
            v189 = "nw_parameters_set_is_system_proxy_connection";
            _os_log_impl(&dword_181A37000, v133, v134, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_212;
      }

      v121 = __nwlog_obj();
      v148 = type[0];
      if (os_log_type_enabled(v121, type[0]))
      {
        *buf = 136446210;
        v189 = "nw_parameters_set_is_system_proxy_connection";
        _os_log_impl(&dword_181A37000, v121, v148, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_212:
  if (v120)
  {
    free(v120);
  }

LABEL_50:
  v36 = v12;
  v37 = (v36[170] & 1) == 0;

  if (!v37)
  {
    *(v173 + 96) |= 1u;
  }

  v38 = v170;
  if (nw_proxy_config_supports_listeners(v36))
  {
    nw_parameters_set_local_endpoint(parametersa, 0);
  }

  if (v10 != 1)
  {
LABEL_99:
    if (v38)
    {
      inner = nw_endpoint_handler_create_inner(v38, parametersa, nw_endpoint_proxy_receive_report, v175, v175, 0, 0, 0);
      if (!inner)
      {
LABEL_115:

        goto LABEL_116;
      }

      if (!*(v173 + 1))
      {
        v77 = _nw_array_create();
        v78 = *(v173 + 1);
        *(v173 + 1) = v77;
      }

      minimize_logging = nw_endpoint_handler_get_minimize_logging(v175);
      logging_disabled = nw_endpoint_handler_get_logging_disabled(v175);
      if (minimize_logging)
      {
        if (logging_disabled)
        {
LABEL_113:
          v93 = *(v173 + 1);
          if (v93)
          {
            _nw_array_append(v93, inner);
          }

          goto LABEL_115;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v81 = gconnectionLogObj;
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          v107 = nw_endpoint_handler_get_id_string(v175);
          v108 = nw_endpoint_handler_dry_run_string(v175);
          v109 = nw_endpoint_handler_copy_endpoint(v175);
          v110 = nw_endpoint_get_logging_description(v109);
          v111 = nw_endpoint_handler_state_string(v175);
          v112 = nw_endpoint_handler_mode_string(v175);
          v113 = nw_endpoint_handler_copy_current_path(v175);
          v114 = nw_endpoint_get_logging_description(v170);
          *buf = 136448002;
          v189 = "nw_endpoint_proxy_add_child_for_config";
          v190 = 2082;
          v191 = v107;
          v192 = 2082;
          v193 = v108;
          v194 = 2082;
          v195 = v110;
          v196 = 2082;
          v197 = v111;
          v198 = 2082;
          v199 = v112;
          v200 = 2114;
          v201 = v113;
          v202 = 2082;
          v203 = v114;
          _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] adding endpoint handler for %{public}s", buf, 0x52u);
        }
      }

      else
      {
        if (logging_disabled)
        {
          goto LABEL_113;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v81 = gconnectionLogObj;
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          v82 = nw_endpoint_handler_get_id_string(v175);
          v83 = nw_endpoint_handler_dry_run_string(v175);
          loga = v81;
          v84 = nw_endpoint_handler_copy_endpoint(v175);
          v85 = v84;
          if (v84)
          {
            v86 = _nw_endpoint_get_logging_description(v84);
            v87 = v83;
          }

          else
          {
            v87 = v83;
            v86 = "<NULL>";
          }

          v88 = nw_endpoint_handler_state_string(v175);
          v89 = nw_endpoint_handler_mode_string(v175);
          v90 = nw_endpoint_handler_copy_current_path(v175);
          v91 = v170;
          v92 = _nw_endpoint_get_logging_description(v91);

          *buf = 136448002;
          v189 = "nw_endpoint_proxy_add_child_for_config";
          v190 = 2082;
          v191 = v82;
          v192 = 2082;
          v193 = v87;
          v194 = 2082;
          v195 = v86;
          v196 = 2082;
          v197 = v88;
          v198 = 2082;
          v199 = v89;
          v200 = 2114;
          v201 = v90;
          v202 = 2082;
          v203 = v92;
          _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] adding endpoint handler for %{public}s", buf, 0x52u);

          v81 = loga;
        }
      }

      goto LABEL_113;
    }

    v103 = __nwlog_obj();
    *buf = 136446210;
    v189 = "nw_endpoint_proxy_add_child_for_config";
    LODWORD(v159) = 12;
    v104 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v103, 16, "%{public}s called with null child_endpoint", buf, v159);

    v187 = OS_LOG_TYPE_ERROR;
    v178 = 0;
    if (__nwlog_fault(v104, &v187, &v178))
    {
      if (v187 == OS_LOG_TYPE_FAULT)
      {
        v105 = __nwlog_obj();
        v106 = v187;
        if (os_log_type_enabled(v105, v187))
        {
          *buf = 136446210;
          v189 = "nw_endpoint_proxy_add_child_for_config";
          _os_log_impl(&dword_181A37000, v105, v106, "%{public}s called with null child_endpoint", buf, 0xCu);
        }
      }

      else
      {
        if (v178 == 1)
        {
          v123 = __nw_create_backtrace_string();
          v124 = __nwlog_obj();
          v125 = v187;
          v126 = os_log_type_enabled(v124, v187);
          if (v123)
          {
            if (v126)
            {
              *buf = 136446466;
              v189 = "nw_endpoint_proxy_add_child_for_config";
              v190 = 2082;
              v191 = v123;
              _os_log_impl(&dword_181A37000, v124, v125, "%{public}s called with null child_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v123);
          }

          else
          {
            if (v126)
            {
              *buf = 136446210;
              v189 = "nw_endpoint_proxy_add_child_for_config";
              _os_log_impl(&dword_181A37000, v124, v125, "%{public}s called with null child_endpoint, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_199;
        }

        v105 = __nwlog_obj();
        v136 = v187;
        if (os_log_type_enabled(v105, v187))
        {
          *buf = 136446210;
          v189 = "nw_endpoint_proxy_add_child_for_config";
          _os_log_impl(&dword_181A37000, v105, v136, "%{public}s called with null child_endpoint, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_199:
    if (v104)
    {
      free(v104);
    }

    goto LABEL_116;
  }

  if (nw_parameters_get_is_known_tracker(parametersa))
  {
    nw_parameters_set_is_known_tracker(parametersa, 0);
    if (parametersa)
    {
      _nw_parameters_set_parent_is_known_tracker();
      goto LABEL_58;
    }

    v128 = __nwlog_obj();
    *buf = 136446210;
    v189 = "nw_parameters_set_parent_is_known_tracker";
    LODWORD(v159) = 12;
    v129 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v128, 16, "%{public}s called with null parameters", buf, v159);

    type[0] = OS_LOG_TYPE_ERROR;
    v187 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v129, type, &v187))
    {
      goto LABEL_220;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v130 = __nwlog_obj();
      v131 = type[0];
      if (os_log_type_enabled(v130, type[0]))
      {
        *buf = 136446210;
        v189 = "nw_parameters_set_parent_is_known_tracker";
        _os_log_impl(&dword_181A37000, v130, v131, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else
    {
      if (v187 == OS_LOG_TYPE_INFO)
      {
        v149 = __nw_create_backtrace_string();
        v150 = __nwlog_obj();
        v151 = type[0];
        v152 = os_log_type_enabled(v150, type[0]);
        if (v149)
        {
          if (v152)
          {
            *buf = 136446466;
            v189 = "nw_parameters_set_parent_is_known_tracker";
            v190 = 2082;
            v191 = v149;
            _os_log_impl(&dword_181A37000, v150, v151, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v149);
        }

        else
        {
          if (v152)
          {
            *buf = 136446210;
            v189 = "nw_parameters_set_parent_is_known_tracker";
            _os_log_impl(&dword_181A37000, v150, v151, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_220;
      }

      v130 = __nwlog_obj();
      v157 = type[0];
      if (os_log_type_enabled(v130, type[0]))
      {
        *buf = 136446210;
        v189 = "nw_parameters_set_parent_is_known_tracker";
        _os_log_impl(&dword_181A37000, v130, v157, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_220:
    if (v129)
    {
      free(v129);
    }
  }

LABEL_58:
  if ((v14 - 2001) > 1)
  {
    *buf = 4;
    nw_proxy_config_remove_protocols_from_stack(v36, v167);
    v47 = nw_protocol_options_copy_definition(options);
    v48 = nw_proxy_config_copy_protocol_stack(v36, v47, buf);

    if (!v48)
    {
LABEL_97:

LABEL_98:
      v38 = v170;
      goto LABEL_99;
    }

    if (*buf == 2)
    {
      v50 = v167;
      nw_protocol_stack_append_application_protocol(v167, options);
      v49 = v164;
    }

    else
    {
      v49 = options;
      v50 = v167;
      if (*buf != 3)
      {
LABEL_78:
        v54 = nw_endpoint_handler_copy_context(v175);
        *type = MEMORY[0x1E69E9820];
        v180 = 3221225472;
        v181 = ___ZL38nw_endpoint_proxy_add_child_for_configP30NWConcrete_nw_endpoint_handlerPU29objcproto18OS_nw_proxy_config8NSObjectS3__block_invoke;
        v182 = &unk_1E6A2F2D0;
        v55 = v36;
        v183 = v55;
        v56 = v54;
        v184 = v56;
        v57 = parametersa;
        v185 = v57;
        v58 = v50;
        v186 = v58;
        v59 = v48;
        v60 = type;
        _nw_protocol_stack_iterate_application_protocols(v59, v60);

        v61 = _nw_protocol_stack_copy_transport_protocol();
        v62 = v61;
        if (!v61)
        {
LABEL_84:
          v65 = v55;
          v66 = (v65[171] & 4) == 0;

          if (!v66)
          {
            if (nw_protocol_setup_tcp_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
            }

            v67 = g_tcp_definition;
            v68 = nw_parameters_copy_protocol_options_for_definition(v57, v67);

            if (v68)
            {
              _nw_tcp_options_set_enable_fast_open(v68, 1);
              v69 = v65;
              v70 = (v65[171] & 1) == 0;

              if (!v70)
              {
                _nw_tcp_options_set_fast_open_force_enable();
              }

              v71 = v69;
              v72 = (v65[171] & 8) == 0;

              if (!v72)
              {
                _nw_tcp_options_set_no_fast_open_cookie();
              }
            }
          }

          v73 = v65;
          v74 = v73[40];

          if (v74)
          {
            nw_parameters_set_multipath_service(v57, v74);
            v75 = v73;
            v76 = (v65[171] & 2) == 0;

            if (!v76)
            {
              nw_parameters_set_multipath_force_enable(v57);
            }
          }

          goto LABEL_97;
        }

        v63 = v61;
        if (_nw_protocol_options_is_quic_connection(v63))
        {
        }

        else
        {
          is_quic_stream = _nw_protocol_options_is_quic_stream(v63);

          if (!is_quic_stream)
          {
LABEL_83:
            nw_protocol_stack_set_original_proxied_transport_protocol(v58);
            nw_protocol_stack_set_transport_protocol(v58, v63);
            goto LABEL_84;
          }
        }

        nw_endpoint_proxy_update_quic_identity(v56, v55, v63);
        goto LABEL_83;
      }
    }

    nw_protocol_stack_append_application_protocol(v50, v49);
    goto LABEL_78;
  }

  if (!nw_parameters_get_no_opaque_proxy(parametersa))
  {
    nw_parameters_set_fast_open_enabled(parametersa, 0);
    if (nw_protocol_setup_tcp_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
    }

    v51 = g_tcp_definition;
    v52 = nw_parameters_copy_protocol_options_for_definition(parametersa, v51);

    if (v52)
    {
      _nw_tcp_options_set_enable_fast_open(v52, 0);
    }

    v53 = nw_protocol_boringssl_copy_definition();
    nw_parameters_remove_definition_from_protocol_stack(parametersa, v53);

    nw_proxy_config_remove_protocols_from_stack(v36, v167);
    goto LABEL_98;
  }

  v39 = nw_endpoint_handler_get_minimize_logging(v175);
  v40 = nw_endpoint_handler_get_logging_disabled(v175);
  if (v39)
  {
    if (v40)
    {
      goto LABEL_116;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    inner = gconnectionLogObj;
    if (os_log_type_enabled(&inner->super, OS_LOG_TYPE_DEBUG))
    {
      v141 = nw_endpoint_handler_get_id_string(v175);
      v142 = nw_endpoint_handler_dry_run_string(v175);
      v143 = nw_endpoint_handler_copy_endpoint(v175);
      v144 = nw_endpoint_get_logging_description(v143);
      v145 = nw_endpoint_handler_state_string(v175);
      v146 = nw_endpoint_handler_mode_string(v175);
      v147 = nw_endpoint_handler_copy_current_path(v175);
      *buf = 136447746;
      v189 = "nw_endpoint_proxy_add_child_for_config";
      v190 = 2082;
      v191 = v141;
      v192 = 2082;
      v193 = v142;
      v194 = 2082;
      v195 = v144;
      v196 = 2082;
      v197 = v145;
      v198 = 2082;
      v199 = v146;
      v200 = 2114;
      v201 = v147;
      _os_log_impl(&dword_181A37000, &inner->super, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] opaque proxy not supported on connection, skipping", buf, 0x48u);
    }

    goto LABEL_115;
  }

  if ((v40 & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    inner = gconnectionLogObj;
    if (os_log_type_enabled(&inner->super, OS_LOG_TYPE_INFO))
    {
      v42 = nw_endpoint_handler_get_id_string(v175);
      v43 = nw_endpoint_handler_dry_run_string(v175);
      v44 = nw_endpoint_handler_copy_endpoint(v175);
      v45 = v44;
      if (v44)
      {
        v46 = _nw_endpoint_get_logging_description(v44);
      }

      else
      {
        v46 = "<NULL>";
      }

      v96 = nw_endpoint_handler_state_string(v175);
      v97 = nw_endpoint_handler_mode_string(v175);
      v98 = nw_endpoint_handler_copy_current_path(v175);
      *buf = 136447746;
      v189 = "nw_endpoint_proxy_add_child_for_config";
      v190 = 2082;
      v191 = v42;
      v192 = 2082;
      v193 = v43;
      v194 = 2082;
      v195 = v46;
      v196 = 2082;
      v197 = v96;
      v198 = 2082;
      v199 = v97;
      v200 = 2114;
      v201 = v98;
      _os_log_impl(&dword_181A37000, &inner->super, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] opaque proxy not supported on connection, skipping", buf, 0x48u);
    }

    goto LABEL_115;
  }

LABEL_116:

LABEL_117:
LABEL_118:
  a1 = v172;
  if (v169 != 4 || (*(*(*(v172 + 40) + 8) + 24) = 1, (*(v172 + 57) & 1) == 0))
  {
LABEL_121:
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    v94 = 1;
    goto LABEL_122;
  }

  v94 = 0;
LABEL_122:

  return v94;
}

void nw_proxy_deallocate_cache_entry(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

id nw_protocol_copy_proxy_definition(void)
{
  if (nw_protocol_copy_proxy_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_proxy_definition(void)::onceToken, &__block_literal_global_26677);
  }

  v1 = nw_protocol_copy_proxy_definition(void)::proxy_definition;

  return v1;
}

void ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke_154(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4;
    v6 = v5[29];

    if (v6 == 3)
    {
      if (nw_endpoint_handler_get_state(*(a1 + 32)) <= 2)
      {
        v7 = _nw_array_create();
        v8 = *(*(a1 + 40) + 56);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke_155;
        aBlock[3] = &unk_1E6A3B418;
        v21 = *(a1 + 48);
        v22 = v3;
        v9 = v7;
        v23 = v9;
        if (v8)
        {
          _nw_array_apply(v8, aBlock);
        }

        objc_storeStrong((*(a1 + 40) + 56), v7);
        nw_endpoint_proxy_complete_resolve(*(a1 + 32));
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (v6 > 5)
        {
          v11 = "unknown-mode";
        }

        else
        {
          v11 = off_1E6A31018[v6];
        }

        *buf = 136446722;
        v27 = "nw_endpoint_proxy_resolve_config_block_invoke";
        v28 = 2082;
        v29 = v11;
        v30 = 2082;
        v31 = "proxy";
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    goto LABEL_13;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_endpoint_proxy_resolve_config_block_invoke";
  v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null handler", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v13, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_proxy_resolve_config_block_invoke";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v27 = "nw_endpoint_proxy_resolve_config_block_invoke";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_endpoint_proxy_resolve_config_block_invoke";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_proxy_resolve_config_block_invoke";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if (v13)
  {
    free(v13);
  }

LABEL_13:
}

void ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke_158(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4;
    v6 = v5[29];

    if (v6 == 3)
    {
      if (nw_endpoint_handler_get_state(*(a1 + 32)) <= 2)
      {
        v7 = _nw_array_create();
        v8 = *(*(a1 + 40) + 56);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke_159;
        aBlock[3] = &unk_1E6A3B418;
        v21 = *(a1 + 48);
        v22 = v3;
        v9 = v7;
        v23 = v9;
        if (v8)
        {
          _nw_array_apply(v8, aBlock);
        }

        objc_storeStrong((*(a1 + 40) + 56), v7);
        nw_endpoint_proxy_complete_resolve(*(a1 + 32));
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (v6 > 5)
        {
          v11 = "unknown-mode";
        }

        else
        {
          v11 = off_1E6A31018[v6];
        }

        *buf = 136446722;
        v27 = "nw_endpoint_proxy_resolve_config_block_invoke";
        v28 = 2082;
        v29 = v11;
        v30 = 2082;
        v31 = "proxy";
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    goto LABEL_13;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_endpoint_proxy_resolve_config_block_invoke";
  v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null handler", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v13, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_proxy_resolve_config_block_invoke";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v27 = "nw_endpoint_proxy_resolve_config_block_invoke";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_endpoint_proxy_resolve_config_block_invoke";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_proxy_resolve_config_block_invoke";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if (v13)
  {
    free(v13);
  }

LABEL_13:
}

uint64_t ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke_159(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 32) == v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke_2_160;
    aBlock[3] = &unk_1E6A3CCB8;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11 = v8;
    if (v7)
    {
      _nw_array_apply(v7, aBlock);
      v8 = v11;
    }
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      _nw_array_append(v5, v4);
    }
  }

  return 1;
}

uint64_t ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke_2_160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    _nw_array_append(v3, a3);
  }

  return 1;
}

uint64_t ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke_155(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 32) == v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke_2;
    aBlock[3] = &unk_1E6A3CCB8;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11 = v8;
    if (v7)
    {
      _nw_array_apply(v7, aBlock);
      v8 = v11;
    }
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      _nw_array_append(v5, v4);
    }
  }

  return 1;
}

uint64_t ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    _nw_array_append(v3, a3);
  }

  return 1;
}

uint64_t ___ZL42nw_endpoint_proxy_add_config_if_applicableP30NWConcrete_nw_endpoint_handlerPU27objcproto16OS_nw_parameters8NSObjectPU29objcproto18OS_nw_proxy_configS1_PU22objcproto11OS_nw_arrayS1_S5_b_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  merged = nw_proxy_config_create_merged(*(*(*(a1 + 48) + 8) + 40), v4);
  v6 = *(*(a1 + 32) + 56);
  if (v6)
  {
    v7 = merged == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    _nw_array_append(v6, merged);
  }

  if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 40)) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v8 = gconnectionLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      id_string = nw_endpoint_handler_get_id_string(*(a1 + 40));
      v10 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
      v11 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
      v12 = v11;
      if (v11)
      {
        logging_description = _nw_endpoint_get_logging_description(v11);
      }

      else
      {
        logging_description = "<NULL>";
      }

      v14 = nw_endpoint_handler_state_string(*(a1 + 40));
      v15 = nw_endpoint_handler_mode_string(*(a1 + 40));
      v16 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
      v18 = 136448002;
      v19 = "nw_endpoint_proxy_add_config_if_applicable_block_invoke";
      v20 = 2082;
      v21 = id_string;
      v22 = 2082;
      v23 = v10;
      v24 = 2082;
      v25 = logging_description;
      v26 = 2082;
      v27 = v14;
      v28 = 2082;
      v29 = v15;
      v30 = 2114;
      v31 = v16;
      v32 = 2114;
      v33 = merged;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Adding merged proxy %{public}@", &v18, 0x52u);
    }
  }

  return 1;
}

uint64_t __nw_endpoint_proxy_copy_synthesized_url_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  identifier = nw_protocol_definition_get_identifier(a3);
  v5 = nw_protocol_boringssl_identifier();
  if (!v5)
  {
    return 1;
  }

  v6 = nw_protocols_are_equal(identifier, v5);
  result = 1;
  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

void sub_18250104C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_endpoint_proxy_match_pattern_to_endpoint(void *a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v39 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_proxy_match_pattern_to_endpoint";
    v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s called with null endpoint", buf, 12);

    LOBYTE(__dst) = 16;
    LOBYTE(v56[0]) = 0;
    if (!__nwlog_fault(v40, &__dst, v56))
    {
      goto LABEL_106;
    }

    if (__dst == 17)
    {
      v41 = __nwlog_obj();
      v42 = __dst;
      if (os_log_type_enabled(v41, __dst))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_match_pattern_to_endpoint";
        _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_105;
    }

    if (LOBYTE(v56[0]) != 1)
    {
      v41 = __nwlog_obj();
      v53 = __dst;
      if (os_log_type_enabled(v41, __dst))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_match_pattern_to_endpoint";
        _os_log_impl(&dword_181A37000, v41, v53, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_105;
    }

    backtrace_string = __nw_create_backtrace_string();
    v41 = __nwlog_obj();
    v48 = __dst;
    v49 = os_log_type_enabled(v41, __dst);
    if (!backtrace_string)
    {
      if (v49)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_match_pattern_to_endpoint";
        _os_log_impl(&dword_181A37000, v41, v48, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_105;
    }

    if (v49)
    {
      *buf = 136446466;
      *&buf[4] = "nw_endpoint_proxy_match_pattern_to_endpoint";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v41, v48, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_90;
  }

  if (!a2)
  {
    v43 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_proxy_match_pattern_to_endpoint";
    v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null pattern", buf, 12);

    LOBYTE(__dst) = 16;
    LOBYTE(v56[0]) = 0;
    if (!__nwlog_fault(v40, &__dst, v56))
    {
      goto LABEL_106;
    }

    if (__dst == 17)
    {
      v41 = __nwlog_obj();
      v44 = __dst;
      if (os_log_type_enabled(v41, __dst))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_match_pattern_to_endpoint";
        _os_log_impl(&dword_181A37000, v41, v44, "%{public}s called with null pattern", buf, 0xCu);
      }

LABEL_105:

LABEL_106:
      if (v40)
      {
        free(v40);
      }

      goto LABEL_17;
    }

    if (LOBYTE(v56[0]) != 1)
    {
      v41 = __nwlog_obj();
      v54 = __dst;
      if (os_log_type_enabled(v41, __dst))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_match_pattern_to_endpoint";
        _os_log_impl(&dword_181A37000, v41, v54, "%{public}s called with null pattern, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_105;
    }

    backtrace_string = __nw_create_backtrace_string();
    v41 = __nwlog_obj();
    v50 = __dst;
    v51 = os_log_type_enabled(v41, __dst);
    if (!backtrace_string)
    {
      if (v51)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_match_pattern_to_endpoint";
        _os_log_impl(&dword_181A37000, v41, v50, "%{public}s called with null pattern, no backtrace", buf, 0xCu);
      }

      goto LABEL_105;
    }

    if (v51)
    {
      *buf = 136446466;
      *&buf[4] = "nw_endpoint_proxy_match_pattern_to_endpoint";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v41, v50, "%{public}s called with null pattern, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_90:

    free(backtrace_string);
    goto LABEL_106;
  }

  v5 = v3;
  type = _nw_endpoint_get_type(v5);

  v7 = v5;
  domain_for_policy = _nw_endpoint_get_domain_for_policy(v7);

  if (type == 2)
  {
    hostname = _nw_endpoint_get_hostname(v7);
    address = 0;
    goto LABEL_7;
  }

  if (type != 1)
  {
    if (gLogDatapath == 1)
    {
      v52 = __nwlog_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_endpoint_proxy_match_pattern_to_endpoint";
        *&buf[12] = 1024;
        *&buf[14] = type;
        _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s Invalid proxy endpoint type %u for matching", buf, 0x12u);
      }
    }

LABEL_17:
    domain_for_policy = 0;
    goto LABEL_57;
  }

  address = _nw_endpoint_get_address(v7);
  hostname = 0;
LABEL_7:

  if (*a2 != 42 || *(a2 + 1))
  {
    __dst = 0;
    v59 = 0;
    v61 = 0;
    v60 = 0;
    memset(v56, 0, sizeof(v56));
    v57 = 0;
    v55 = 0;
    *buf = 0;
    if (getaddrinfo(a2, 0, &nw_string_is_ip_address::hints, buf))
    {
      if (!nw_utilities_cidr_string_to_subnet_and_mask(a2, &__dst, v56, &v55))
      {
        if (hostname)
        {
          v19 = nw_endpoint_proxy_string_matches_pattern(hostname, a2);
        }

        else
        {
          if (domain_for_policy)
          {
            domain_for_policy = nw_endpoint_proxy_string_matches_pattern(domain_for_policy, a2);
          }

          if ((domain_for_policy & 1) != 0 || !address)
          {
            goto LABEL_56;
          }

          if (*(address + 1) != 2)
          {
            goto LABEL_55;
          }

          *buf = 0;
          *&buf[8] = 0;
          v25 = inet_ntop(2, (address + 4), buf, 0x10u);
          if (!v25)
          {
            goto LABEL_55;
          }

          v19 = nw_endpoint_proxy_string_matches_pattern(v25, a2);
        }

        domain_for_policy = v19;
        goto LABEL_56;
      }

      if (address)
      {
        v11 = *(address + 1);
        if (v11 == BYTE1(__dst))
        {
          if (v11 == 2)
          {
            v13 = 4;
            v12 = 4;
LABEL_59:
            v27 = (address + v13);
            v28 = &__dst + v13;
            v29 = v56 + v13;
            v30 = v12 - 1;
            do
            {
              v32 = *v27++;
              v31 = v32;
              v34 = *v29++;
              v33 = v34;
              v35 = *v28++;
              v36 = (v35 ^ v31) & v33;
              domain_for_policy = v36 == 0;
              v38 = v30-- != 0;
            }

            while (!v36 && v38);
            goto LABEL_56;
          }

          if (v11 == 30)
          {
            v12 = 16;
            v13 = 8;
            goto LABEL_59;
          }
        }
      }
    }

    else
    {
      v14 = *buf;
      if (*buf)
      {
        v15 = *buf;
        while (1)
        {
          v16 = *(v15 + 32);
          v17 = v16[1];
          if (v17 == 30 || v17 == 2)
          {
            break;
          }

          v15 = *(v15 + 40);
          if (!v15)
          {
            goto LABEL_34;
          }
        }

        v21 = *v16;
        if (v21 <= 0x1C)
        {
          v22 = *buf;
          memcpy(&__dst, v16, v21);
          v14 = v22;
        }

LABEL_34:
        freeaddrinfo(v14);
      }

      if (address)
      {
        v23 = *(address + 1);
        if (v23 == 2 && BYTE1(__dst) == 2)
        {
          domain_for_policy = *(address + 4) == HIDWORD(__dst);
          goto LABEL_56;
        }

        domain_for_policy = 0;
        if (v23 != 30 || BYTE1(__dst) != 30)
        {
LABEL_56:
          if (gLogDatapath == 1)
          {
            v45 = __nwlog_obj();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              v46 = "does not match";
              *&buf[4] = "nw_endpoint_proxy_match_pattern_to_endpoint";
              *&buf[12] = 2114;
              *buf = 136446978;
              *&buf[14] = v7;
              if (domain_for_policy)
              {
                v46 = "matches";
              }

              v63 = 2082;
              v64 = v46;
              v65 = 2082;
              v66 = a2;
              _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s endpoint %{public}@ %{public}s pattern string %{public}s", buf, 0x2Au);
            }
          }

          goto LABEL_57;
        }

        if (*(address + 24) == v61)
        {
          domain_for_policy = *(address + 8) == v59 && *(address + 16) == v60;
          goto LABEL_56;
        }
      }
    }

LABEL_55:
    domain_for_policy = 0;
    goto LABEL_56;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    *&buf[4] = "nw_endpoint_proxy_match_pattern_to_endpoint";
    *&buf[12] = 2114;
    *&buf[14] = v7;
    v63 = 2082;
    v64 = a2;
    _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s endpoint %{public}@ indeed matches pattern %{public}s", buf, 0x20u);
  }

  domain_for_policy = 1;
LABEL_57:

  return domain_for_policy;
}

uint64_t nw_endpoint_proxy_string_matches_pattern(const char *cStr, const char *a2)
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    *buf = 136446466;
    v83 = "nw_endpoint_proxy_string_matches_pattern";
    v84 = 2082;
    v85 = cStr;
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s CFStringCreateWithCString(%{public}s) failed", buf, 22);

    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (__nwlog_fault(v17, &type, &v80))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_43;
        }

        *buf = 136446466;
        v83 = "nw_endpoint_proxy_string_matches_pattern";
        v84 = 2082;
        v85 = cStr;
        v20 = "%{public}s CFStringCreateWithCString(%{public}s) failed";
LABEL_41:
        v42 = v18;
        v43 = v19;
        goto LABEL_42;
      }

      if (v80 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_43;
        }

        *buf = 136446466;
        v83 = "nw_endpoint_proxy_string_matches_pattern";
        v84 = 2082;
        v85 = cStr;
        v20 = "%{public}s CFStringCreateWithCString(%{public}s) failed, backtrace limit exceeded";
        goto LABEL_41;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v27 = type;
      v28 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (!v28)
        {
LABEL_43:

          if (!v17)
          {
            return 0;
          }

          goto LABEL_23;
        }

        *buf = 136446466;
        v83 = "nw_endpoint_proxy_string_matches_pattern";
        v84 = 2082;
        v85 = cStr;
        v20 = "%{public}s CFStringCreateWithCString(%{public}s) failed, no backtrace";
        v42 = v18;
        v43 = v27;
LABEL_42:
        _os_log_impl(&dword_181A37000, v42, v43, v20, buf, 0x16u);
        goto LABEL_43;
      }

      if (v28)
      {
        *buf = 136446722;
        v83 = "nw_endpoint_proxy_string_matches_pattern";
        v84 = 2082;
        v85 = cStr;
        v86 = 2082;
        v87 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v27, "%{public}s CFStringCreateWithCString(%{public}s) failed, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
    }

    if (!v17)
    {
      return 0;
    }

LABEL_23:
    free(v17);
    return 0;
  }

  v6 = v5;
  v7 = CFStringCreateWithCString(v4, a2, 0x8000100u);
  if (!v7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    *buf = 136446466;
    v83 = "nw_endpoint_proxy_string_matches_pattern";
    v84 = 2082;
    v85 = a2;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s CFStringCreateWithCString(%{public}s) failed", buf, 22);

    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v22, &type, &v80))
    {
LABEL_54:
      if (v22)
      {
        free(v22);
      }

      CFRelease(v6);
      return 0;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446466;
        v83 = "nw_endpoint_proxy_string_matches_pattern";
        v84 = 2082;
        v85 = a2;
        v25 = "%{public}s CFStringCreateWithCString(%{public}s) failed";
LABEL_51:
        v49 = v23;
        v50 = v24;
LABEL_52:
        _os_log_impl(&dword_181A37000, v49, v50, v25, buf, 0x16u);
      }
    }

    else
    {
      if (v80 == 1)
      {
        v39 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v40 = type;
        v41 = os_log_type_enabled(v23, type);
        if (v39)
        {
          if (v41)
          {
            *buf = 136446722;
            v83 = "nw_endpoint_proxy_string_matches_pattern";
            v84 = 2082;
            v85 = a2;
            v86 = 2082;
            v87 = v39;
            _os_log_impl(&dword_181A37000, v23, v40, "%{public}s CFStringCreateWithCString(%{public}s) failed, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v39);
          goto LABEL_54;
        }

        if (!v41)
        {
          goto LABEL_53;
        }

        *buf = 136446466;
        v83 = "nw_endpoint_proxy_string_matches_pattern";
        v84 = 2082;
        v85 = a2;
        v25 = "%{public}s CFStringCreateWithCString(%{public}s) failed, no backtrace";
        v49 = v23;
        v50 = v40;
        goto LABEL_52;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446466;
        v83 = "nw_endpoint_proxy_string_matches_pattern";
        v84 = 2082;
        v85 = a2;
        v25 = "%{public}s CFStringCreateWithCString(%{public}s) failed, backtrace limit exceeded";
        goto LABEL_51;
      }
    }

LABEL_53:

    goto LABEL_54;
  }

  v8 = v7;
  if (CFStringHasSuffix(v6, @"."))
  {
    v89.length = CFStringGetLength(v6) - 1;
    v89.location = 0;
    v9 = CFStringCreateWithSubstring(v4, v6, v89);
    v10 = v9;
    if (!v9)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      *buf = 136446210;
      v83 = "nw_endpoint_proxy_string_matches_pattern";
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s CFStringCreateMutableCopy failed", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v80 = 0;
      if (!__nwlog_fault(v12, &type, &v80))
      {
LABEL_107:
        if (v12)
        {
          free(v12);
        }

        v29 = 0;
        v33 = 0;
        v10 = 0;
        goto LABEL_138;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v83 = "nw_endpoint_proxy_string_matches_pattern";
          v15 = "%{public}s CFStringCreateMutableCopy failed";
LABEL_104:
          v73 = v13;
          v74 = v14;
LABEL_105:
          _os_log_impl(&dword_181A37000, v73, v74, v15, buf, 0xCu);
        }
      }

      else
      {
        if (v80 == 1)
        {
          v51 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v52 = type;
          v53 = os_log_type_enabled(v13, type);
          if (v51)
          {
            if (v53)
            {
              *buf = 136446466;
              v83 = "nw_endpoint_proxy_string_matches_pattern";
              v84 = 2082;
              v85 = v51;
              _os_log_impl(&dword_181A37000, v13, v52, "%{public}s CFStringCreateMutableCopy failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v51);
            goto LABEL_107;
          }

          if (!v53)
          {
            goto LABEL_106;
          }

          *buf = 136446210;
          v83 = "nw_endpoint_proxy_string_matches_pattern";
          v15 = "%{public}s CFStringCreateMutableCopy failed, no backtrace";
          v73 = v13;
          v74 = v52;
          goto LABEL_105;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v83 = "nw_endpoint_proxy_string_matches_pattern";
          v15 = "%{public}s CFStringCreateMutableCopy failed, backtrace limit exceeded";
          goto LABEL_104;
        }
      }

LABEL_106:

      goto LABEL_107;
    }
  }

  else
  {
    v10 = 0;
    v9 = v6;
  }

  v29 = 1;
  if (CFStringCompare(v9, v8, 1uLL) == kCFCompareEqualTo)
  {
LABEL_137:
    v33 = 0;
LABEL_138:
    v55 = 0;
    v31 = v6;
    goto LABEL_156;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v4, v9, @".");
  if (!ArrayBySeparatingStrings)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v44 = gLogObj;
    *buf = 136446210;
    v83 = "nw_endpoint_proxy_string_matches_pattern";
    v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s CFStringCreateArrayBySeparatingStrings failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v45, &type, &v80))
    {
LABEL_134:
      if (v45)
      {
        free(v45);
      }

      v29 = 0;
      goto LABEL_137;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v46 = gLogObj;
      v47 = type;
      if (os_log_type_enabled(v46, type))
      {
        *buf = 136446210;
        v83 = "nw_endpoint_proxy_string_matches_pattern";
        v48 = "%{public}s CFStringCreateArrayBySeparatingStrings failed";
LABEL_132:
        _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
      }
    }

    else
    {
      if (v80 == 1)
      {
        v66 = __nw_create_backtrace_string();
        v46 = __nwlog_obj();
        v47 = type;
        v67 = os_log_type_enabled(v46, type);
        if (v66)
        {
          if (v67)
          {
            *buf = 136446466;
            v83 = "nw_endpoint_proxy_string_matches_pattern";
            v84 = 2082;
            v85 = v66;
            _os_log_impl(&dword_181A37000, v46, v47, "%{public}s CFStringCreateArrayBySeparatingStrings failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v66);
          goto LABEL_134;
        }

        if (!v67)
        {
          goto LABEL_133;
        }

        *buf = 136446210;
        v83 = "nw_endpoint_proxy_string_matches_pattern";
        v48 = "%{public}s CFStringCreateArrayBySeparatingStrings failed, no backtrace";
        goto LABEL_132;
      }

      v46 = __nwlog_obj();
      v47 = type;
      if (os_log_type_enabled(v46, type))
      {
        *buf = 136446210;
        v83 = "nw_endpoint_proxy_string_matches_pattern";
        v48 = "%{public}s CFStringCreateArrayBySeparatingStrings failed, backtrace limit exceeded";
        goto LABEL_132;
      }
    }

LABEL_133:

    goto LABEL_134;
  }

  v31 = ArrayBySeparatingStrings;
  if (CFStringHasSuffix(v8, @"."))
  {
    v90.length = CFStringGetLength(v8) - 1;
    v90.location = 0;
    v32 = CFStringCreateWithSubstring(v4, v8, v90);
    v33 = v32;
    if (!v32)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      *buf = 136446210;
      v83 = "nw_endpoint_proxy_string_matches_pattern";
      v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s CFStringCreateMutableCopy failed", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v80 = 0;
      if (!__nwlog_fault(v35, &type, &v80))
      {
LABEL_152:
        if (v35)
        {
          free(v35);
        }

        v55 = 0;
        v33 = 0;
        goto LABEL_155;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v36, type))
        {
          *buf = 136446210;
          v83 = "nw_endpoint_proxy_string_matches_pattern";
          v38 = "%{public}s CFStringCreateMutableCopy failed";
LABEL_150:
          _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
        }
      }

      else
      {
        if (v80 == 1)
        {
          v77 = __nw_create_backtrace_string();
          v36 = __nwlog_obj();
          v37 = type;
          v78 = os_log_type_enabled(v36, type);
          if (v77)
          {
            if (v78)
            {
              *buf = 136446466;
              v83 = "nw_endpoint_proxy_string_matches_pattern";
              v84 = 2082;
              v85 = v77;
              _os_log_impl(&dword_181A37000, v36, v37, "%{public}s CFStringCreateMutableCopy failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v77);
            goto LABEL_152;
          }

          if (!v78)
          {
            goto LABEL_151;
          }

          *buf = 136446210;
          v83 = "nw_endpoint_proxy_string_matches_pattern";
          v38 = "%{public}s CFStringCreateMutableCopy failed, no backtrace";
          goto LABEL_150;
        }

        v36 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v36, type))
        {
          *buf = 136446210;
          v83 = "nw_endpoint_proxy_string_matches_pattern";
          v38 = "%{public}s CFStringCreateMutableCopy failed, backtrace limit exceeded";
          goto LABEL_150;
        }
      }

LABEL_151:

      goto LABEL_152;
    }
  }

  else
  {
    v33 = 0;
    v32 = v8;
  }

  v54 = CFStringCreateArrayBySeparatingStrings(v4, v32, @".");
  if (!v54)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v68 = gLogObj;
    *buf = 136446210;
    v83 = "nw_endpoint_proxy_string_matches_pattern";
    v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s CFStringCreateArrayBySeparatingStrings failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v69, &type, &v80))
    {
LABEL_145:
      if (v69)
      {
        free(v69);
      }

      v55 = 0;
      goto LABEL_155;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v70 = __nwlog_obj();
      v71 = type;
      if (os_log_type_enabled(v70, type))
      {
        *buf = 136446210;
        v83 = "nw_endpoint_proxy_string_matches_pattern";
        v72 = "%{public}s CFStringCreateArrayBySeparatingStrings failed";
LABEL_143:
        _os_log_impl(&dword_181A37000, v70, v71, v72, buf, 0xCu);
      }
    }

    else
    {
      if (v80 == 1)
      {
        v75 = __nw_create_backtrace_string();
        v70 = __nwlog_obj();
        v71 = type;
        v76 = os_log_type_enabled(v70, type);
        if (v75)
        {
          if (v76)
          {
            *buf = 136446466;
            v83 = "nw_endpoint_proxy_string_matches_pattern";
            v84 = 2082;
            v85 = v75;
            _os_log_impl(&dword_181A37000, v70, v71, "%{public}s CFStringCreateArrayBySeparatingStrings failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v75);
          goto LABEL_145;
        }

        if (!v76)
        {
          goto LABEL_144;
        }

        *buf = 136446210;
        v83 = "nw_endpoint_proxy_string_matches_pattern";
        v72 = "%{public}s CFStringCreateArrayBySeparatingStrings failed, no backtrace";
        goto LABEL_143;
      }

      v70 = __nwlog_obj();
      v71 = type;
      if (os_log_type_enabled(v70, type))
      {
        *buf = 136446210;
        v83 = "nw_endpoint_proxy_string_matches_pattern";
        v72 = "%{public}s CFStringCreateArrayBySeparatingStrings failed, backtrace limit exceeded";
        goto LABEL_143;
      }
    }

LABEL_144:

    goto LABEL_145;
  }

  v55 = v54;
  if (CFArrayGetCount(v54) < 1 || CFArrayGetCount(v31) < 1 || (Count = CFArrayGetCount(v31), v57 = CFArrayGetCount(v55), v58 = Count < 1, v59 = Count - 1, v58) || (v60 = v57 - 1, v57 < 1))
  {
LABEL_155:
    CFRelease(v6);
    v29 = 0;
    goto LABEL_156;
  }

  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v55, v60);
    v62 = CFArrayGetValueAtIndex(v31, v59);
    if (!v60 && (!ValueAtIndex || !CFStringGetLength(ValueAtIndex)))
    {
      ValueAtIndex = @"*";
    }

    if (CFStringCompare(ValueAtIndex, v62, 1uLL))
    {
      break;
    }

    v29 = 1;
    if (!v59 || !v60)
    {
      goto LABEL_140;
    }

    --v59;
    --v60;
LABEL_88:
    v29 = 0;
    if (v59 < 0 || v60 < 0)
    {
      goto LABEL_140;
    }
  }

  if (CFStringCompare(ValueAtIndex, @"*", 1uLL) == kCFCompareEqualTo)
  {
    while (1)
    {
      v63 = CFArrayGetValueAtIndex(v55, v60);
      v64 = v63;
      if (!v60 && (!v63 || !CFStringGetLength(v63)))
      {
        v64 = @"*";
      }

      if (CFStringCompare(v64, @"*", 1uLL))
      {
        break;
      }

      v58 = v60-- <= 0;
      if (v58)
      {
        v29 = 1;
        goto LABEL_140;
      }
    }

    do
    {
      v65 = CFArrayGetValueAtIndex(v31, v59);
      if (CFStringCompare(v64, v65, 1uLL) == kCFCompareEqualTo)
      {
        goto LABEL_88;
      }

      v58 = v59-- <= 0;
    }

    while (!v58);
  }

  v29 = 0;
LABEL_140:
  CFRelease(v6);
LABEL_156:
  CFRelease(v31);
  CFRelease(v8);
  if (v55)
  {
    CFRelease(v55);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v29;
}

uint64_t network_proxy_get_type(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v15 = "network_proxy_get_type";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null proxy", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v6, &type, &v12))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v15 = "network_proxy_get_type";
      v9 = "%{public}s called with null proxy";
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v15 = "network_proxy_get_type";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null proxy, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (v6)
        {
          free(v6);
          return 0xFFFFFFFFLL;
        }

        return 0xFFFFFFFFLL;
      }

      if (!v11)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v15 = "network_proxy_get_type";
      v9 = "%{public}s called with null proxy, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v15 = "network_proxy_get_type";
      v9 = "%{public}s called with null proxy, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_34;
  }

  v1 = a1;
  if (v1[38] != 1)
  {

    return 0xFFFFFFFFLL;
  }

  v2 = v1[39];

  if (v2 > 3000)
  {
    return (v2 - 3003) < 4 || (v2 - 4001) < 2 || (v2 - 3001) <= 1;
  }

  if (v2 <= 2000)
  {
    if (v2 >= 2 && (v2 - 1001) >= 2)
    {
      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  if (v2 == 2002)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == 2001)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

xpc_object_t network_proxy_copy_host(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "network_proxy_copy_host";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null proxy", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v11, &type, &v18))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v21 = "network_proxy_copy_host";
      v14 = "%{public}s called with null proxy";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "network_proxy_copy_host";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null proxy, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (!v16)
      {
LABEL_23:
        if (v11)
        {
          free(v11);
        }

        return 0;
      }

      *buf = 136446210;
      v21 = "network_proxy_copy_host";
      v14 = "%{public}s called with null proxy, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v21 = "network_proxy_copy_host";
      v14 = "%{public}s called with null proxy, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_23;
  }

  v1 = a1;
  v2 = v1[5];

  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _nw_endpoint_get_type(v3);

  if ((v4 == 2 || (v5 = v3, v6 = _nw_endpoint_get_type(v5), v5, v6 == 1)) && (v7 = v3, hostname = _nw_endpoint_get_hostname(v7), v7, hostname))
  {
    v9 = xpc_string_create(hostname);
  }

  else
  {
    v9 = 0;
  }

  os_release(v3);
  return v9;
}

uint64_t network_proxy_get_port(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "network_proxy_get_port";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null proxy", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v11, &type, &v18))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v21 = "network_proxy_get_port";
      v14 = "%{public}s called with null proxy";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "network_proxy_get_port";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null proxy, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (!v16)
      {
LABEL_22:
        if (v11)
        {
          free(v11);
        }

        return 0;
      }

      *buf = 136446210;
      v21 = "network_proxy_get_port";
      v14 = "%{public}s called with null proxy, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v21 = "network_proxy_get_port";
      v14 = "%{public}s called with null proxy, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_22;
  }

  v1 = a1;
  v2 = v1[5];

  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _nw_endpoint_get_type(v3);

  if (v4 == 2 || (v5 = v3, v6 = _nw_endpoint_get_type(v5), v5, v6 == 1))
  {
    v7 = v3;
    port = _nw_endpoint_get_port(v7);

    v9 = __rev16(port);
  }

  else
  {
    v9 = 0;
  }

  os_release(v3);
  return v9;
}

BOOL network_proxy_is_transparent(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = v1[38] != 1 || (v1[39] - 2003) < 0xFFFFFFFE;

    return v2;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "network_proxy_is_transparent";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null proxy", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "network_proxy_is_transparent";
        v8 = "%{public}s called with null proxy";
LABEL_20:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v14 = "network_proxy_is_transparent";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null proxy, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446210;
        v14 = "network_proxy_is_transparent";
        v8 = "%{public}s called with null proxy, no backtrace";
        goto LABEL_20;
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "network_proxy_is_transparent";
        v8 = "%{public}s called with null proxy, backtrace limit exceeded";
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void sub_182503F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27083(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_182504764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id nw_shoes_copy_udp_framer_definition()
{
  if (nw_shoes_copy_udp_framer_definition::onceToken != -1)
  {
    dispatch_once(&nw_shoes_copy_udp_framer_definition::onceToken, &__block_literal_global_27124);
  }

  v1 = nw_shoes_copy_udp_framer_definition::definition;

  return v1;
}

void __nw_shoes_copy_udp_framer_definition_block_invoke()
{
  definition = nw_framer_create_definition("lv", 0, &__block_literal_global_4);
  v1 = nw_shoes_copy_udp_framer_definition::definition;
  nw_shoes_copy_udp_framer_definition::definition = definition;
}

uint64_t __nw_shoes_copy_udp_framer_definition_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_framer_set_input_handler(v2, &__block_literal_global_7_27127);
  nw_framer_set_output_handler(v2, &__block_literal_global_12);

  return 1;
}

void __nw_shoes_copy_udp_framer_definition_block_invoke_9(uint64_t a1, void *a2, uint64_t a3, size_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a4 < 0x10000)
  {
    *output_buffer = bswap32(a4) >> 16;
    nw_framer_write_output(v5, output_buffer, 2uLL);
    if (gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v11 = "nw_shoes_copy_udp_framer_definition_block_invoke";
        v12 = 1024;
        LODWORD(v13) = a4;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s Shoes LV: Writing frame of length %u", buf, 0x12u);
      }
    }

    nw_framer_write_output_no_copy(v6, a4);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "nw_shoes_copy_udp_framer_definition_block_invoke";
      v12 = 2048;
      v13 = a4;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s Message length exceeds maximum: %zu", buf, 0x16u);
    }
  }
}

uint64_t __nw_shoes_copy_udp_framer_definition_block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MEMORY[0x1E69E9820];
  while (1)
  {
    *temp_buffer = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    parse[0] = v3;
    parse[1] = 3221225472;
    parse[2] = __nw_shoes_copy_udp_framer_definition_block_invoke_4;
    parse[3] = &unk_1E6A2F340;
    parse[4] = &v11;
    if (!nw_framer_parse_input(v2, 2uLL, 2uLL, temp_buffer, parse))
    {
      break;
    }

    if (gLogDatapath == 1)
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(v12 + 12);
        *buf = 136446466;
        v17 = "nw_shoes_copy_udp_framer_definition_block_invoke_3";
        v18 = 1024;
        v19 = v7;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s Shoes LV: Reading frame of length %u", buf, 0x12u);
      }
    }

    v4 = nw_framer_message_create(v2);
    v5 = nw_framer_deliver_input_no_copy(v2, *(v12 + 12), v4, 1);

    _Block_object_dispose(&v11, 8);
    if (!v5)
    {
      v8 = 0;
      goto LABEL_10;
    }
  }

  _Block_object_dispose(&v11, 8);
  v8 = 2;
LABEL_10:

  return v8;
}

void sub_1825069C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t __nw_shoes_copy_udp_framer_definition_block_invoke_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  result = 0;
  if (a2)
  {
    if (a3 >= 2)
    {
      *(*(*(a1 + 32) + 8) + 24) = bswap32(*a2) >> 16;
      return 2;
    }
  }

  return result;
}

void nw_shoes_server_set_outer_connection_handler(void *a1, const void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = _Block_copy(a2);
    v5 = v3[12];
    v3[12] = v4;

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_socks5_server_set_outer_connection_handler";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null server", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_socks5_server_set_outer_connection_handler";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null server", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v17 = "nw_socks5_server_set_outer_connection_handler";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_socks5_server_set_outer_connection_handler";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null server, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_socks5_server_set_outer_connection_handler";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null server, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

uint64_t nw_idle_create_options()
{
  if (nw_protocol_copy_idle_definition::onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_idle_definition::onceToken, &__block_literal_global_27147);
  }

  v0 = nw_protocol_copy_idle_definition::definition;
  if (nw_protocol_copy_idle_definition::definition)
  {
    v0 = os_retain(nw_protocol_copy_idle_definition::definition);
  }

  return nw_protocol_create_options(v0);
}

uint64_t __nw_protocol_copy_idle_definition_block_invoke()
{
  if (nw_protocol_idle_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_idle_identifier::onceToken, &__block_literal_global_6_27150);
  }

  nw_protocol_copy_idle_definition::definition = nw_protocol_definition_create_with_identifier(&nw_protocol_idle_identifier::protocol_identifier);
  nw_protocol_definition_set_options_allocator(nw_protocol_copy_idle_definition::definition, nw_idle_allocate_options, nw_idle_copy_options, nw_idle_deallocate_options);
  nw_protocol_definition_set_options_comparator(nw_protocol_copy_idle_definition::definition, nw_idle_compare_options);
  v0 = nw_protocol_copy_idle_definition::definition;

  return nw_protocol_register_handle(&nw_protocol_idle_identifier::protocol_identifier, v0, nw_protocol_idle_create, 0);
}

char *nw_protocol_idle_create(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (nw_protocol_idle_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_idle_identifier::onceToken, &__block_literal_global_6_27150);
  }

  if (nw_protocol_idle_callbacks(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_idle_callbacks(void)::onceToken, &__block_literal_global_10);
  }

  v5 = nw_protocol_new(104, a4, &nw_protocol_idle_identifier::protocol_identifier, nw_protocol_idle_callbacks(void)::protocol_callbacks);
  v5[100] = v5[100] & 0xFE | nw_parameters_get_logging_disabled(a4);
  if (v5)
  {
    return v5 - 96;
  }

  else
  {
    return 0;
  }
}

void ___ZL26nw_protocol_idle_callbacksv_block_invoke()
{
  v0 = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_idle_callbacks(void)::protocol_callbacks = v0;
  *v0 = nw_protocol_common_add_input_handler;
  v0[2] = nw_protocol_common_replace_input_handler;
  v0[1] = nw_protocol_common_remove_input_handler;
  v0[10] = nw_protocol_common_get_input_frames;
  v0[11] = nw_protocol_common_get_output_frames;
  v0[12] = nw_protocol_common_finalize_output_frames;
  v0[14] = nw_protocol_common_get_parameters;
  v0[15] = nw_protocol_common_get_path;
  v0[17] = nw_protocol_common_get_remote_endpoint;
  v0[16] = nw_protocol_common_get_local_endpoint;
  v0[25] = nw_protocol_common_get_output_local_endpoint;
  v0[26] = nw_protocol_common_get_output_interface;
  v0[3] = nw_protocol_common_connect;
  v0[5] = nw_protocol_common_connected;
  v0[4] = nw_protocol_common_disconnect;
  v0[6] = nw_protocol_common_disconnected;
  v0[8] = nw_protocol_common_input_available;
  v0[9] = nw_protocol_common_output_available;
  v0[23] = nw_protocol_common_input_finished;
  v0[24] = nw_protocol_common_output_finished;
  v0[33] = nw_protocol_common_input_flush;
  v0[7] = nw_protocol_common_error;
  v0[32] = nw_protocol_common_reset;
  v0[31] = nw_protocol_common_get_message_properties;
  v0[28] = nw_protocol_common_copy_info;
  v0[22] = nw_protocol_common_supports_external_data;
  v0[27] = nw_protocol_common_waiting_for_output;
  v0[18] = nw_protocol_common_register_notification;
  v0[19] = nw_protocol_common_unregister_notification;
  v0[20] = nw_protocol_common_notify;
  v0[21] = nw_protocol_common_updated_path;
  v0[13] = nw_protocol_common_link_state;
  nw_protocol_callbacks_set_add_input_handler(v0, nw_protocol_idle_add_input_handler);
  nw_protocol_callbacks_set_remove_input_handler(nw_protocol_idle_callbacks(void)::protocol_callbacks, nw_protocol_idle_remove_input_handler);
  nw_protocol_callbacks_set_disconnect(nw_protocol_idle_callbacks(void)::protocol_callbacks, nw_protocol_idle_disconnect);
  nw_protocol_callbacks_set_connected(nw_protocol_idle_callbacks(void)::protocol_callbacks, nw_protocol_idle_connected);
  nw_protocol_callbacks_set_disconnected(nw_protocol_idle_callbacks(void)::protocol_callbacks, nw_protocol_idle_disconnected);
  nw_protocol_callbacks_set_get_input_frames(nw_protocol_idle_callbacks(void)::protocol_callbacks, nw_protocol_idle_get_input_frames);
  v1 = nw_protocol_idle_callbacks(void)::protocol_callbacks;

  nw_protocol_callbacks_set_finalize_output_frames(v1, nw_protocol_idle_finalize_output_frames);
}

uint64_t nw_protocol_idle_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_4;
  }

  handle = a1->handle;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    p_output_handler = &a1[1].output_handler;
    if (!a2->tqh_first)
    {
      return nw_protocol_common_finalize_output_frames(a1, a2);
    }

    goto LABEL_9;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    p_output_handler = (*a1[1].flow_id + 96);
    if (!a2->tqh_first)
    {
      return nw_protocol_common_finalize_output_frames(a1, a2);
    }
  }

  else
  {
LABEL_4:
    p_output_handler = 0;
    if (!a2->tqh_first)
    {
      return nw_protocol_common_finalize_output_frames(a1, a2);
    }
  }

LABEL_9:
  if (p_output_handler)
  {
    *(p_output_handler + 100) &= ~2u;
    return nw_protocol_common_finalize_output_frames(a1, a2);
  }

  v5 = a1;
  v6 = a2;
  v7 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_idle_mark_not_idle";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null idle", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v8, &type, &v14))
  {
    goto LABEL_26;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v17 = "nw_protocol_idle_mark_not_idle";
      v11 = "%{public}s called with null idle";
LABEL_25:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    }
  }

  else if (v14 == 1)
  {
    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v13 = os_log_type_enabled(v9, type);
    if (backtrace_string)
    {
      if (v13)
      {
        *buf = 136446466;
        v17 = "nw_protocol_idle_mark_not_idle";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null idle, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_26;
    }

    if (v13)
    {
      *buf = 136446210;
      v17 = "nw_protocol_idle_mark_not_idle";
      v11 = "%{public}s called with null idle, no backtrace";
      goto LABEL_25;
    }
  }

  else
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v17 = "nw_protocol_idle_mark_not_idle";
      v11 = "%{public}s called with null idle, backtrace limit exceeded";
      goto LABEL_25;
    }
  }

LABEL_26:
  if (v8)
  {
    free(v8);
  }

  a2 = v6;
  a1 = v5;
  return nw_protocol_common_finalize_output_frames(a1, a2);
}

uint64_t nw_protocol_idle_get_input_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_4:
    p_output_handler = 0;
    result = nw_protocol_common_get_input_frames(a1, a2, a3, a4, a5, a6);
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  handle = a1->handle;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    p_output_handler = &a1[1].output_handler;
    result = nw_protocol_common_get_input_frames(a1, a2, a3, a4, a5, a6);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      goto LABEL_4;
    }

    p_output_handler = (*a1[1].flow_id + 96);
    result = nw_protocol_common_get_input_frames(a1, a2, a3, a4, a5, a6);
    if (!result)
    {
      return result;
    }
  }

LABEL_9:
  if (p_output_handler)
  {
    *(p_output_handler + 100) &= ~2u;
    return result;
  }

  v9 = result;
  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_idle_mark_not_idle";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null idle", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v11, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_idle_mark_not_idle";
        v14 = "%{public}s called with null idle";
LABEL_25:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v20 = "nw_protocol_idle_mark_not_idle";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null idle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v16)
      {
        *buf = 136446210;
        v20 = "nw_protocol_idle_mark_not_idle";
        v14 = "%{public}s called with null idle, no backtrace";
        goto LABEL_25;
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_idle_mark_not_idle";
        v14 = "%{public}s called with null idle, backtrace limit exceeded";
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  if (v11)
  {
    free(v11);
  }

  return v9;
}

void nw_protocol_idle_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_4:
    v6 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_idle_deactivate_timer";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null idle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v7, &type, &v14))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v17 = "nw_protocol_idle_deactivate_timer";
      v10 = "%{public}s called with null idle";
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v17 = "nw_protocol_idle_deactivate_timer";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null idle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (!v12)
      {
LABEL_21:
        if (v7)
        {
          free(v7);
        }

        goto LABEL_23;
      }

      *buf = 136446210;
      v17 = "nw_protocol_idle_deactivate_timer";
      v10 = "%{public}s called with null idle, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v17 = "nw_protocol_idle_deactivate_timer";
      v10 = "%{public}s called with null idle, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_21;
  }

  handle = a1->handle;
  v5 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      goto LABEL_4;
    }

    v5 = *a1[1].flow_id;
  }

  v13 = v5[1].handle;
  if (v13)
  {
    nw_queue_cancel_source(v13);
    v5[1].handle = 0;
  }

LABEL_23:
  nw_protocol_common_disconnected(a1, a2);
}

void nw_protocol_idle_connected(nw_protocol *a1, nw_protocol *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_4:
    v6 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_idle_mark_not_idle";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null idle", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v42 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v7, type, &v42))
    {
      goto LABEL_39;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type[0];
      if (!os_log_type_enabled(v8, type[0]))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_idle_mark_not_idle";
      v10 = "%{public}s called with null idle";
    }

    else if (v42 == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type[0];
      v12 = os_log_type_enabled(v8, type[0]);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_idle_mark_not_idle";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null idle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (v7)
        {
          free(v7);
        }

        v25 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_idle_activate_timer";
        LODWORD(v34) = 12;
        v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null idle", buf, v34);
        v42 = OS_LOG_TYPE_ERROR;
        v41 = 0;
        if (__nwlog_fault(v19, &v42, &v41))
        {
          if (v42 == OS_LOG_TYPE_FAULT)
          {
            v26 = __nwlog_obj();
            v27 = v42;
            if (!os_log_type_enabled(v26, v42))
            {
              goto LABEL_57;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_idle_activate_timer";
            v28 = "%{public}s called with null idle";
            goto LABEL_56;
          }

          if (v41 != 1)
          {
            v26 = __nwlog_obj();
            v27 = v42;
            if (!os_log_type_enabled(v26, v42))
            {
              goto LABEL_57;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_idle_activate_timer";
            v28 = "%{public}s called with null idle, backtrace limit exceeded";
            goto LABEL_56;
          }

          v29 = __nw_create_backtrace_string();
          v26 = __nwlog_obj();
          v27 = v42;
          v30 = os_log_type_enabled(v26, v42);
          if (!v29)
          {
            if (!v30)
            {
              goto LABEL_57;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_idle_activate_timer";
            v28 = "%{public}s called with null idle, no backtrace";
            goto LABEL_56;
          }

          if (v30)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_idle_activate_timer";
            *&buf[12] = 2082;
            *&buf[14] = v29;
            v31 = "%{public}s called with null idle, dumping backtrace:%{public}s";
LABEL_49:
            _os_log_impl(&dword_181A37000, v26, v27, v31, buf, 0x16u);
            goto LABEL_50;
          }

          goto LABEL_50;
        }

        goto LABEL_57;
      }

      if (!v12)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_idle_mark_not_idle";
      v10 = "%{public}s called with null idle, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type[0];
      if (!os_log_type_enabled(v8, type[0]))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_idle_mark_not_idle";
      v10 = "%{public}s called with null idle, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_39;
  }

  handle = a1->handle;
  v5 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      goto LABEL_4;
    }

    v5 = *a1[1].flow_id;
  }

  v5[3].flow_id[4] &= ~2u;
  if (!v5[1].output_handler)
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_idle_activate_timer";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null (idle->timeout_msecs > 0)", buf, 12);
    v42 = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v19, &v42, &v41))
    {
      goto LABEL_57;
    }

    if (v42 == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = v42;
      if (!os_log_type_enabled(v26, v42))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_idle_activate_timer";
      v28 = "%{public}s called with null (idle->timeout_msecs > 0)";
    }

    else if (v41 == 1)
    {
      v29 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = v42;
      v33 = os_log_type_enabled(v26, v42);
      if (v29)
      {
        if (v33)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_idle_activate_timer";
          *&buf[12] = 2082;
          *&buf[14] = v29;
          v31 = "%{public}s called with null (idle->timeout_msecs > 0), dumping backtrace:%{public}s";
          goto LABEL_49;
        }

LABEL_50:
        free(v29);
        if (!v19)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      if (!v33)
      {
LABEL_57:
        if (v19)
        {
LABEL_58:
          free(v19);
          goto LABEL_59;
        }

        goto LABEL_59;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_idle_activate_timer";
      v28 = "%{public}s called with null (idle->timeout_msecs > 0), no backtrace";
    }

    else
    {
      v26 = __nwlog_obj();
      v27 = v42;
      if (!os_log_type_enabled(v26, v42))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_idle_activate_timer";
      v28 = "%{public}s called with null (idle->timeout_msecs > 0), backtrace limit exceeded";
    }

LABEL_56:
    _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
    goto LABEL_57;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  v44 = __Block_byref_object_copy__27172;
  v45 = __Block_byref_object_dispose__27173;
  v13 = v5->handle;
  v14 = v5;
  if (v13 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_21;
  }

  if (v13 != &nw_protocol_ref_counted_additional_handle)
  {
    LOBYTE(v14) = 0;
    goto LABEL_24;
  }

  v14 = *v5[1].flow_id;
  if (v14)
  {
LABEL_21:
    callbacks = v14[1].callbacks;
    if (callbacks)
    {
      v14[1].callbacks = (&callbacks->add_input_handler + 1);
    }

    LOBYTE(v14) = -1;
  }

LABEL_24:
  v46 = v5;
  v47 = v14;
  *type = MEMORY[0x1E69E9820];
  v36 = 0x40000000;
  v37 = ___ZL31nw_protocol_idle_activate_timerP7nw_idle_block_invoke;
  v38 = &unk_1E6A2F430;
  v39 = buf;
  p_output_handler = &v5[1].output_handler;
  source = nw_queue_context_create_source(0, 2, 3, 0, type, 0);
  v5[1].handle = source;
  v17 = (1000000 * v5[1].output_handler) >> 1;
  v18 = dispatch_time(0x8000000000000000, v17);
  nw_queue_set_timer_values(source, v18, v17, 1000 * v5[1].output_handler);
  nw_queue_activate_source(v5[1].handle);
  _Block_object_dispose(buf, 8);
  if (v47)
  {
    v19 = v46;
    if (v46)
    {
      v20 = *(v46 + 5);
      if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v19 = *(v46 + 8)) != 0)
      {
        v21 = *(v19 + 88);
        if (v21)
        {
          v22 = v21 - 1;
          *(v19 + 88) = v22;
          if (!v22)
          {
            v23 = *(v19 + 64);
            if (v23)
            {
              *(v19 + 64) = 0;
              v23[2](v23);
              _Block_release(v23);
            }

            if (*(v19 + 72))
            {
              v24 = *(v19 + 64);
              if (v24)
              {
                _Block_release(v24);
              }
            }

            goto LABEL_58;
          }
        }
      }
    }
  }

LABEL_59:
  nw_protocol_common_connected(a1, a2);
}

uint64_t __Block_byref_object_copy__27172(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

void ___ZL31nw_protocol_idle_activate_timerP7nw_idle_block_invoke(uint64_t a1)
{
  v127 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  LODWORD(v3) = *(v2 + 100);
  if ((~v3 & 6) != 0)
  {
    *(v2 + 100) = (2 * v3) & 4 | v3 & 0xFB;
    *(*(a1 + 40) + 100) |= 2u;
    return;
  }

  v4 = *(v2 + 8);
  if (!v4)
  {
LABEL_5:
    if (v3)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  nw_queue_cancel_source(v4);
  *(v2 + 8) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    LOBYTE(v3) = *(v3 + 100);
    goto LABEL_5;
  }

LABEL_6:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = "";
    v8 = v6 == 0;
    v11 = *v6;
    v9 = (v6 + 2);
    v10 = v11;
    v12 = " ";
    *buf = 136447234;
    v118 = "nw_protocol_idle_activate_timer_block_invoke";
    if (v8)
    {
      v12 = "";
    }

    v119 = 2082;
    if (!v8)
    {
      v7 = v9;
    }

    v120 = v7;
    v121 = 2080;
    v122 = v12;
    v123 = 2082;
    v124 = v9;
    v125 = 2048;
    v126 = v10;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s%{public}s disconnecting connection after %llums idle", buf, 0x34u);
  }

LABEL_12:
  v13 = *(*(*(a1 + 32) + 8) + 40);
  if (v13)
  {
    v14 = *(v13 + 48);
    if (!v14)
    {
      return;
    }

    v15 = *(v14 + 40);
    v16 = *(v13 + 48);
    if (v15 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_19;
    }

    if (v15 != &nw_protocol_ref_counted_additional_handle)
    {
      v17 = 1;
      v18 = 1;
LABEL_31:
      v22 = *(v13 + 40);
      v23 = v13;
      if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v23 = *(v13 + 64)) != 0)
      {
        v26 = *(v23 + 88);
        if (v26)
        {
          v24 = 0;
          *(v23 + 88) = v26 + 1;
          v25 = *(v14 + 24);
          if (!v25)
          {
            goto LABEL_116;
          }
        }

        else
        {
          v24 = 0;
          v25 = *(v14 + 24);
          if (!v25)
          {
            goto LABEL_116;
          }
        }
      }

      else
      {
        v24 = 1;
        v25 = *(v14 + 24);
        if (!v25)
        {
          goto LABEL_116;
        }
      }

      v27 = *(v25 + 56);
      if (v27)
      {
        v27(v14, v13, 60);
        goto LABEL_42;
      }

LABEL_116:
      v64 = __nwlog_obj();
      v65 = *(v14 + 16);
      *buf = 136446722;
      v118 = "__nw_protocol_error";
      if (!v65)
      {
        v65 = "invalid";
      }

      v119 = 2082;
      v120 = v65;
      v121 = 2048;
      v122 = v14;
      type = OS_LOG_TYPE_ERROR;
      v115 = 0;
      v114 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v64, 16, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 32);
      if (!__nwlog_fault(v114, &type, &v115))
      {
        goto LABEL_176;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v66 = __nwlog_obj();
        v67 = type;
        if (!os_log_type_enabled(v66, type))
        {
          goto LABEL_176;
        }

        v68 = *(v14 + 16);
        if (!v68)
        {
          v68 = "invalid";
        }

        *buf = 136446722;
        v118 = "__nw_protocol_error";
        v119 = 2082;
        v120 = v68;
        v121 = 2048;
        v122 = v14;
        v69 = "%{public}s protocol %{public}s (%p) has invalid error callback";
      }

      else
      {
        if (v115 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v87 = __nwlog_obj();
          v67 = type;
          log = v87;
          v88 = os_log_type_enabled(v87, type);
          if (backtrace_string)
          {
            if (v88)
            {
              v89 = *(v14 + 16);
              if (!v89)
              {
                v89 = "invalid";
              }

              *buf = 136446978;
              v118 = "__nw_protocol_error";
              v119 = 2082;
              v120 = v89;
              v121 = 2048;
              v122 = v14;
              v123 = 2082;
              v124 = backtrace_string;
              _os_log_impl(&dword_181A37000, log, v67, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(backtrace_string);
            goto LABEL_176;
          }

          if (!v88)
          {
LABEL_176:
            if (v114)
            {
              free(v114);
            }

LABEL_42:
            if ((v24 & 1) == 0)
            {
              v28 = *(v13 + 40);
              if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (v13 = *(v13 + 64)) != 0)
              {
                v29 = *(v13 + 88);
                if (v29)
                {
                  v30 = v29 - 1;
                  *(v13 + 88) = v30;
                  if (!v30)
                  {
                    v31 = *(v13 + 64);
                    if (v31)
                    {
                      *(v13 + 64) = 0;
                      v31[2](v31);
                      _Block_release(v31);
                    }

                    if (*(v13 + 72))
                    {
                      v32 = *(v13 + 64);
                      if (v32)
                      {
                        _Block_release(v32);
                      }
                    }

                    free(v13);
                  }
                }
              }
            }

            if (v17)
            {
              goto LABEL_55;
            }

            goto LABEL_216;
          }

          v104 = *(v14 + 16);
          if (!v104)
          {
            v104 = "invalid";
          }

          *buf = 136446722;
          v118 = "__nw_protocol_error";
          v119 = 2082;
          v120 = v104;
          v121 = 2048;
          v122 = v14;
          v69 = "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace";
          v101 = log;
LABEL_175:
          _os_log_impl(&dword_181A37000, v101, v67, v69, buf, 0x20u);
          goto LABEL_176;
        }

        v66 = __nwlog_obj();
        v67 = type;
        if (!os_log_type_enabled(v66, type))
        {
          goto LABEL_176;
        }

        v100 = *(v14 + 16);
        if (!v100)
        {
          v100 = "invalid";
        }

        *buf = 136446722;
        v118 = "__nw_protocol_error";
        v119 = 2082;
        v120 = v100;
        v121 = 2048;
        v122 = v14;
        v69 = "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded";
      }

      v101 = v66;
      goto LABEL_175;
    }

    v16 = *(v14 + 64);
    if (v16)
    {
LABEL_19:
      v19 = *(v16 + 88);
      if (v19)
      {
        *(v16 + 88) = v19 + 1;
        v13 = *(*(*(a1 + 32) + 8) + 40);
      }

      if (v15 == &nw_protocol_ref_counted_handle)
      {
        v18 = 0;
        v20 = v14;
        v21 = *(v14 + 88);
        if (v21)
        {
          goto LABEL_25;
        }

LABEL_27:
        v17 = 0;
        goto LABEL_30;
      }

      v18 = 0;
      if (v15 == &nw_protocol_ref_counted_additional_handle)
      {
        v20 = *(v14 + 64);
        if (v20)
        {
LABEL_24:
          v21 = *(v20 + 88);
          if (v21)
          {
LABEL_25:
            v17 = 0;
            *(v20 + 88) = v21 + 1;
            goto LABEL_30;
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
      v18 = 1;
      v20 = *(v14 + 64);
      if (v20)
      {
        goto LABEL_24;
      }
    }

    v17 = 1;
LABEL_30:
    if (v13)
    {
      goto LABEL_31;
    }

    v81 = __nwlog_obj();
    *buf = 136446210;
    v118 = "__nw_protocol_error";
    v82 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v81, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v115 = 0;
    if (__nwlog_fault(v82, &type, &v115))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v83 = __nwlog_obj();
        v84 = type;
        if (!os_log_type_enabled(v83, type))
        {
          goto LABEL_213;
        }

        *buf = 136446210;
        v118 = "__nw_protocol_error";
        v85 = "%{public}s called with null other_protocol";
LABEL_212:
        _os_log_impl(&dword_181A37000, v83, v84, v85, buf, 0xCu);
        goto LABEL_213;
      }

      if (v115 != 1)
      {
        v83 = __nwlog_obj();
        v84 = type;
        if (!os_log_type_enabled(v83, type))
        {
          goto LABEL_213;
        }

        *buf = 136446210;
        v118 = "__nw_protocol_error";
        v85 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_212;
      }

      v98 = __nw_create_backtrace_string();
      v83 = __nwlog_obj();
      v84 = type;
      v99 = os_log_type_enabled(v83, type);
      if (!v98)
      {
        if (!v99)
        {
          goto LABEL_213;
        }

        *buf = 136446210;
        v118 = "__nw_protocol_error";
        v85 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_212;
      }

      if (v99)
      {
        *buf = 136446466;
        v118 = "__nw_protocol_error";
        v119 = 2082;
        v120 = v98;
        _os_log_impl(&dword_181A37000, v83, v84, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v98);
    }

LABEL_213:
    if (v82)
    {
      free(v82);
    }

    if (v17)
    {
      goto LABEL_55;
    }

LABEL_216:
    v33 = *(v14 + 40);
    v106 = v14;
    if (v33 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_219;
    }

    if (v33 != &nw_protocol_ref_counted_additional_handle)
    {
      goto LABEL_56;
    }

    v106 = *(v14 + 64);
    if (v106)
    {
LABEL_219:
      v107 = *(v106 + 88);
      if (v107)
      {
        v108 = v107 - 1;
        *(v106 + 88) = v108;
        if (!v108)
        {
          v109 = *(v106 + 64);
          if (v109)
          {
            *(v106 + 64) = 0;
            v109[2](v109);
            _Block_release(v109);
          }

          if (*(v106 + 72))
          {
            v110 = *(v106 + 64);
            if (v110)
            {
              _Block_release(v110);
            }
          }

          free(v106);
        }
      }
    }

LABEL_55:
    v33 = *(v14 + 40);
LABEL_56:
    v34 = *(*(*(a1 + 32) + 8) + 40);
    v35 = v14;
    if (v33 == &nw_protocol_ref_counted_handle || v33 == &nw_protocol_ref_counted_additional_handle && (v35 = *(v14 + 64)) != 0)
    {
      v41 = *(v35 + 88);
      if (v41)
      {
        v36 = 0;
        *(v35 + 88) = v41 + 1;
        if (!v34)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v36 = 0;
        if (!v34)
        {
          goto LABEL_66;
        }
      }
    }

    else
    {
      v36 = 1;
      if (!v34)
      {
LABEL_66:
        v42 = __nwlog_obj();
        *buf = 136446210;
        v118 = "__nw_protocol_disconnected";
        LODWORD(v111) = 12;
        v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null other_protocol", buf, v111);
        type = OS_LOG_TYPE_ERROR;
        v115 = 0;
        if (!__nwlog_fault(v34, &type, &v115))
        {
          goto LABEL_208;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v43 = __nwlog_obj();
          v44 = type;
          if (!os_log_type_enabled(v43, type))
          {
            goto LABEL_208;
          }

          *buf = 136446210;
          v118 = "__nw_protocol_disconnected";
          v45 = "%{public}s called with null other_protocol";
          goto LABEL_207;
        }

        if (v115 != 1)
        {
          v43 = __nwlog_obj();
          v44 = type;
          if (!os_log_type_enabled(v43, type))
          {
            goto LABEL_208;
          }

          *buf = 136446210;
          v118 = "__nw_protocol_disconnected";
          v45 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          goto LABEL_207;
        }

        v96 = __nw_create_backtrace_string();
        v43 = __nwlog_obj();
        v44 = type;
        v97 = os_log_type_enabled(v43, type);
        if (!v96)
        {
          if (!v97)
          {
            goto LABEL_208;
          }

          *buf = 136446210;
          v118 = "__nw_protocol_disconnected";
          v45 = "%{public}s called with null other_protocol, no backtrace";
LABEL_207:
          _os_log_impl(&dword_181A37000, v43, v44, v45, buf, 0xCu);
LABEL_208:
          if (!v34)
          {
            goto LABEL_91;
          }

LABEL_90:
          free(v34);
          goto LABEL_91;
        }

        if (v97)
        {
          *buf = 136446466;
          v118 = "__nw_protocol_disconnected";
          v119 = 2082;
          v120 = v96;
          _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v96);
        if (v34)
        {
          goto LABEL_90;
        }

LABEL_91:
        if ((v36 & 1) == 0)
        {
          v53 = *(v14 + 40);
          v54 = v14;
          if (v53 == &nw_protocol_ref_counted_handle || v53 == &nw_protocol_ref_counted_additional_handle && (v54 = *(v14 + 64)) != 0)
          {
            v55 = *(v54 + 88);
            if (v55)
            {
              v56 = v55 - 1;
              *(v54 + 88) = v56;
              if (!v56)
              {
                v57 = *(v54 + 64);
                if (v57)
                {
                  *(v54 + 64) = 0;
                  v57[2](v57);
                  _Block_release(v57);
                }

                if (*(v54 + 72))
                {
                  v58 = *(v54 + 64);
                  if (v58)
                  {
                    _Block_release(v58);
                  }
                }

                free(v54);
              }
            }
          }
        }

        if ((v18 & 1) == 0)
        {
          v59 = *(v14 + 40);
          if (v59 == &nw_protocol_ref_counted_handle || v59 == &nw_protocol_ref_counted_additional_handle && (v14 = *(v14 + 64)) != 0)
          {
            v60 = *(v14 + 88);
            if (v60)
            {
              v61 = v60 - 1;
              *(v14 + 88) = v61;
              if (!v61)
              {
                v62 = *(v14 + 64);
                if (v62)
                {
                  *(v14 + 64) = 0;
                  v62[2](v62);
                  _Block_release(v62);
                }

                if (*(v14 + 72))
                {
                  v63 = *(v14 + 64);
                  if (v63)
                  {
                    _Block_release(v63);
                  }
                }

                goto LABEL_114;
              }
            }
          }
        }

        return;
      }
    }

    v37 = *(v34 + 40);
    v38 = v34;
    if (v37 == &nw_protocol_ref_counted_handle || v37 == &nw_protocol_ref_counted_additional_handle && (v38 = *(v34 + 64)) != 0)
    {
      v46 = *(v38 + 88);
      if (v46)
      {
        v39 = 0;
        *(v38 + 88) = v46 + 1;
        v40 = *(v14 + 24);
        if (!v40)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v39 = 0;
        v40 = *(v14 + 24);
        if (!v40)
        {
          goto LABEL_124;
        }
      }
    }

    else
    {
      v39 = 1;
      v40 = *(v14 + 24);
      if (!v40)
      {
        goto LABEL_124;
      }
    }

    v47 = *(v40 + 48);
    if (v47)
    {
      v47(v14, v34);
      goto LABEL_79;
    }

LABEL_124:
    v70 = __nwlog_obj();
    v71 = *(v14 + 16);
    *buf = 136446722;
    v118 = "__nw_protocol_disconnected";
    if (!v71)
    {
      v71 = "invalid";
    }

    v119 = 2082;
    v120 = v71;
    v121 = 2048;
    v122 = v14;
    LODWORD(v111) = 32;
    v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s protocol %{public}s (%p) has invalid disconnected callback", buf, v111);
    type = OS_LOG_TYPE_ERROR;
    v115 = 0;
    if (!__nwlog_fault(v72, &type, &v115))
    {
      goto LABEL_184;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (!os_log_type_enabled(v73, type))
      {
        goto LABEL_184;
      }

      v75 = *(v14 + 16);
      if (!v75)
      {
        v75 = "invalid";
      }

      *buf = 136446722;
      v118 = "__nw_protocol_disconnected";
      v119 = 2082;
      v120 = v75;
      v121 = 2048;
      v122 = v14;
      v76 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback";
    }

    else
    {
      if (v115 == 1)
      {
        v90 = __nw_create_backtrace_string();
        v91 = __nwlog_obj();
        v74 = type;
        v113 = v91;
        v92 = os_log_type_enabled(v91, type);
        if (v90)
        {
          if (v92)
          {
            v93 = *(v14 + 16);
            if (!v93)
            {
              v93 = "invalid";
            }

            *buf = 136446978;
            v118 = "__nw_protocol_disconnected";
            v119 = 2082;
            v120 = v93;
            v121 = 2048;
            v122 = v14;
            v123 = 2082;
            v124 = v90;
            _os_log_impl(&dword_181A37000, v113, v74, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v90);
          goto LABEL_184;
        }

        if (!v92)
        {
LABEL_184:
          if (v72)
          {
            free(v72);
          }

LABEL_79:
          if ((v39 & 1) == 0)
          {
            v48 = *(v34 + 40);
            if (v48 == &nw_protocol_ref_counted_handle || v48 == &nw_protocol_ref_counted_additional_handle && (v34 = *(v34 + 64)) != 0)
            {
              v49 = *(v34 + 88);
              if (v49)
              {
                v50 = v49 - 1;
                *(v34 + 88) = v50;
                if (!v50)
                {
                  v51 = *(v34 + 64);
                  if (v51)
                  {
                    *(v34 + 64) = 0;
                    v51[2](v51);
                    _Block_release(v51);
                  }

                  if (*(v34 + 72))
                  {
                    v52 = *(v34 + 64);
                    if (v52)
                    {
                      _Block_release(v52);
                    }
                  }

                  goto LABEL_90;
                }
              }
            }
          }

          goto LABEL_91;
        }

        v105 = *(v14 + 16);
        if (!v105)
        {
          v105 = "invalid";
        }

        *buf = 136446722;
        v118 = "__nw_protocol_disconnected";
        v119 = 2082;
        v120 = v105;
        v121 = 2048;
        v122 = v14;
        v76 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace";
        v103 = v113;
LABEL_183:
        _os_log_impl(&dword_181A37000, v103, v74, v76, buf, 0x20u);
        goto LABEL_184;
      }

      v73 = __nwlog_obj();
      v74 = type;
      if (!os_log_type_enabled(v73, type))
      {
        goto LABEL_184;
      }

      v102 = *(v14 + 16);
      if (!v102)
      {
        v102 = "invalid";
      }

      *buf = 136446722;
      v118 = "__nw_protocol_disconnected";
      v119 = 2082;
      v120 = v102;
      v121 = 2048;
      v122 = v14;
      v76 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded";
    }

    v103 = v73;
    goto LABEL_183;
  }

  v77 = __nwlog_obj();
  *buf = 136446210;
  v118 = "__nw_protocol_get_input_handler";
  v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v115 = 0;
  if (__nwlog_fault(v14, &type, &v115))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v78 = __nwlog_obj();
      v79 = type;
      if (!os_log_type_enabled(v78, type))
      {
        goto LABEL_203;
      }

      *buf = 136446210;
      v118 = "__nw_protocol_get_input_handler";
      v80 = "%{public}s called with null protocol";
LABEL_202:
      _os_log_impl(&dword_181A37000, v78, v79, v80, buf, 0xCu);
      goto LABEL_203;
    }

    if (v115 != 1)
    {
      v78 = __nwlog_obj();
      v79 = type;
      if (!os_log_type_enabled(v78, type))
      {
        goto LABEL_203;
      }

      *buf = 136446210;
      v118 = "__nw_protocol_get_input_handler";
      v80 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_202;
    }

    v94 = __nw_create_backtrace_string();
    v78 = __nwlog_obj();
    v79 = type;
    v95 = os_log_type_enabled(v78, type);
    if (!v94)
    {
      if (!v95)
      {
        goto LABEL_203;
      }

      *buf = 136446210;
      v118 = "__nw_protocol_get_input_handler";
      v80 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_202;
    }

    if (v95)
    {
      *buf = 136446466;
      v118 = "__nw_protocol_get_input_handler";
      v119 = 2082;
      v120 = v94;
      _os_log_impl(&dword_181A37000, v78, v79, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v94);
  }

LABEL_203:
  if (v14)
  {
LABEL_114:
    free(v14);
  }
}

void nw_protocol_idle_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_4:
    v6 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_idle_deactivate_timer";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null idle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v7, &type, &v14))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v17 = "nw_protocol_idle_deactivate_timer";
      v10 = "%{public}s called with null idle";
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v17 = "nw_protocol_idle_deactivate_timer";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null idle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (!v12)
      {
LABEL_21:
        if (v7)
        {
          free(v7);
        }

        goto LABEL_23;
      }

      *buf = 136446210;
      v17 = "nw_protocol_idle_deactivate_timer";
      v10 = "%{public}s called with null idle, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v17 = "nw_protocol_idle_deactivate_timer";
      v10 = "%{public}s called with null idle, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_21;
  }

  handle = a1->handle;
  v5 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      goto LABEL_4;
    }

    v5 = *a1[1].flow_id;
  }

  v13 = v5[1].handle;
  if (v13)
  {
    nw_queue_cancel_source(v13);
    v5[1].handle = 0;
  }

LABEL_23:
  nw_protocol_common_disconnect(a1, a2);
}

uint64_t nw_protocol_idle_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_4:
    v8 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_idle_deactivate_timer";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null idle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_idle_deactivate_timer";
          v12 = "%{public}s called with null idle";
LABEL_22:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type;
        v14 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v21 = "nw_protocol_idle_deactivate_timer";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null idle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (v14)
        {
          *buf = 136446210;
          v21 = "nw_protocol_idle_deactivate_timer";
          v12 = "%{public}s called with null idle, no backtrace";
          goto LABEL_22;
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_idle_deactivate_timer";
          v12 = "%{public}s called with null idle, backtrace limit exceeded";
          goto LABEL_22;
        }
      }
    }

LABEL_23:
    if (v9)
    {
      free(v9);
    }

    return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, 0, 0);
  }

  handle = a1->handle;
  v7 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      goto LABEL_4;
    }

    v7 = *a1[1].flow_id;
  }

  v15 = v7[1].handle;
  if (v15)
  {
    nw_queue_cancel_source(v15);
    v7[1].handle = 0;
  }

  result = nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, 0, 0);
  if (a3)
  {
    v17 = result;
    nw_protocol_destroy(&v7[1].output_handler, 0);
    return v17;
  }

  return result;
}

uint64_t nw_protocol_idle_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v2 = a2;
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_4:
    p_output_handler = 0;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_11:
    v11 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_idle_add_input_handler";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v12, &type, &v45))
    {
      goto LABEL_77;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      v48 = "nw_protocol_idle_add_input_handler";
      v15 = "%{public}s called with null input_protocol";
    }

    else if (v45 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v38 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v38)
        {
          *buf = 136446466;
          v48 = "nw_protocol_idle_add_input_handler";
          v49 = 2082;
          v50 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_77;
      }

      if (!v38)
      {
LABEL_77:
        if (v12)
        {
          free(v12);
        }

        return 0;
      }

      *buf = 136446210;
      v48 = "nw_protocol_idle_add_input_handler";
      v15 = "%{public}s called with null input_protocol, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      v48 = "nw_protocol_idle_add_input_handler";
      v15 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_77;
  }

  handle = a1->handle;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    p_output_handler = &a1[1].output_handler;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      goto LABEL_4;
    }

    p_output_handler = (*a1[1].flow_id + 96);
    if (!a2)
    {
      goto LABEL_11;
    }
  }

LABEL_5:
  result = nw_protocol_common_add_input_handler(a1, a2);
  if (!result)
  {
    return result;
  }

  v7 = v2->handle;
  v8 = v2;
  if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *v2[1].flow_id) != 0)
  {
    callbacks = v8[1].callbacks;
    if (callbacks)
    {
      v9 = 0;
      v8[1].callbacks = (&callbacks->add_input_handler + 1);
      v10 = v2->callbacks;
      if (!v10)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v9 = 0;
      v10 = v2->callbacks;
      if (!v10)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
    v9 = 1;
    v10 = v2->callbacks;
    if (!v10)
    {
      goto LABEL_48;
    }
  }

  get_parameters = v10->get_parameters;
  if (get_parameters)
  {
    v18 = get_parameters(v2);
    if (v9)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

LABEL_48:
  v30 = __nwlog_obj();
  name = v2->identifier->name;
  *buf = 136446722;
  v48 = "__nw_protocol_get_parameters";
  if (!name)
  {
    name = "invalid";
  }

  v49 = 2082;
  v50 = name;
  v51 = 2048;
  v52 = v2;
  v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 32);
  type = OS_LOG_TYPE_ERROR;
  v45 = 0;
  if (__nwlog_fault(v32, &type, &v45))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_84;
      }

      v35 = v2->identifier->name;
      if (!v35)
      {
        v35 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_get_parameters";
      v49 = 2082;
      v50 = v35;
      v51 = 2048;
      v52 = v2;
      v36 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_83:
      _os_log_impl(&dword_181A37000, v33, v34, v36, buf, 0x20u);
      goto LABEL_84;
    }

    if (v45 != 1)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_84;
      }

      v42 = v2->identifier->name;
      if (!v42)
      {
        v42 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_get_parameters";
      v49 = 2082;
      v50 = v42;
      v51 = 2048;
      v52 = v2;
      v36 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
      goto LABEL_83;
    }

    v44 = p_output_handler;
    v39 = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v34 = type;
    v40 = os_log_type_enabled(v33, type);
    if (!v39)
    {
      p_output_handler = v44;
      if (!v40)
      {
        goto LABEL_84;
      }

      v43 = v2->identifier->name;
      if (!v43)
      {
        v43 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_get_parameters";
      v49 = 2082;
      v50 = v43;
      v51 = 2048;
      v52 = v2;
      v36 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
      goto LABEL_83;
    }

    if (v40)
    {
      v41 = v2->identifier->name;
      if (!v41)
      {
        v41 = "invalid";
      }

      *buf = 136446978;
      v48 = "__nw_protocol_get_parameters";
      v49 = 2082;
      v50 = v41;
      v51 = 2048;
      v52 = v2;
      v53 = 2082;
      v54 = v39;
      _os_log_impl(&dword_181A37000, v33, v34, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v39);
    p_output_handler = v44;
  }

LABEL_84:
  if (v32)
  {
    free(v32);
  }

  v18 = 0;
  if ((v9 & 1) == 0)
  {
LABEL_24:
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
          v22 = v18;
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
          v18 = v22;
        }
      }
    }
  }

LABEL_35:
  v25 = nw_parameters_copy_protocol_options_legacy(v18, a1);
  if (v25)
  {
    v26 = v25;
    _nw_protocol_options_get_log_id_str(v26, p_output_handler + 2);

    *p_output_handler = nw_idle_options_get_timeout_msecs(v26);
    os_release(v26);
    return 1;
  }

  if (!p_output_handler || (*(p_output_handler + 100) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v28 = "";
    if (p_output_handler)
    {
      v29 = (p_output_handler + 2);
    }

    else
    {
      v29 = "";
    }

    *buf = 136446978;
    v48 = "nw_protocol_idle_add_input_handler";
    v50 = v29;
    v51 = 2080;
    v49 = 2082;
    if (p_output_handler)
    {
      v28 = " ";
    }

    v52 = v28;
    v53 = 2082;
    v54 = (p_output_handler + 2);
    _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%{public}s Unable to determine timeout from options", buf, 0x2Au);
  }

  return 0;
}

uint64_t nw_idle_options_get_timeout_msecs(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_copy_idle_definition::onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_idle_definition::onceToken, &__block_literal_global_27147);
    }

    if (nw_protocol_copy_idle_definition::definition)
    {
      v2 = os_retain(nw_protocol_copy_idle_definition::definition);
    }

    else
    {
      v2 = 0;
    }

    if (nw_protocol_options_matches_definition(a1, v2))
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v19 = 0;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = __nw_idle_options_get_timeout_msecs_block_invoke;
      v15[3] = &unk_1E6A2F388;
      v15[4] = buf;
      nw_protocol_options_access_handle(a1, v15);
      v3 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      return v3;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_idle_options_get_timeout_msecs";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s protocol options are not idle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v6, &type, &v16))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_idle_options_get_timeout_msecs";
        v9 = "%{public}s protocol options are not idle";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v16 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_idle_options_get_timeout_msecs";
        v9 = "%{public}s protocol options are not idle, backtrace limit exceeded";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        *&buf[4] = "nw_idle_options_get_timeout_msecs";
        v9 = "%{public}s protocol options are not idle, no backtrace";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v14)
    {
      *buf = 136446466;
      *&buf[4] = "nw_idle_options_get_timeout_msecs";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v13 = "%{public}s protocol options are not idle, dumping backtrace:%{public}s";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_idle_options_get_timeout_msecs";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null options", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v6, &type, &v16))
  {
    goto LABEL_37;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v16 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_idle_options_get_timeout_msecs";
        v9 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_idle_options_get_timeout_msecs";
        v9 = "%{public}s called with null options, no backtrace";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v12)
    {
      *buf = 136446466;
      *&buf[4] = "nw_idle_options_get_timeout_msecs";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v13 = "%{public}s called with null options, dumping backtrace:%{public}s";
LABEL_26:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
    }

LABEL_27:
    free(backtrace_string);
    goto LABEL_37;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    *&buf[4] = "nw_idle_options_get_timeout_msecs";
    v9 = "%{public}s called with null options";
LABEL_36:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_37:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

BOOL nw_idle_compare_options(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      return *a2 == *a3;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_idle_compare_options";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null handle2", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_idle_compare_options";
        v8 = "%{public}s called with null handle2";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_idle_compare_options";
        v8 = "%{public}s called with null handle2, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v13 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v17 = "nw_idle_compare_options";
        v8 = "%{public}s called with null handle2, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_idle_compare_options";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null handle2, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_idle_compare_options";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null handle1", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_idle_compare_options";
        v8 = "%{public}s called with null handle1, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v11 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_idle_compare_options";
        v8 = "%{public}s called with null handle1, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_idle_compare_options";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null handle1, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v6, v7, v12, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    v17 = "nw_idle_compare_options";
    v8 = "%{public}s called with null handle1";
LABEL_31:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_32:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void nw_idle_deallocate_options(nw_protocol_definition *a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void *nw_idle_copy_options(nw_protocol_definition *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    result = nw_idle_allocate_options(a1);
    *result = *a2;
    return result;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_idle_copy_options";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null existing_handle", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_idle_copy_options";
        v8 = "%{public}s called with null existing_handle";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v14 = "nw_idle_copy_options";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v10)
      {
        *buf = 136446210;
        v14 = "nw_idle_copy_options";
        v8 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_idle_copy_options";
        v8 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void *nw_idle_allocate_options(nw_protocol_definition *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = malloc_type_calloc(1uLL, 8uLL, 0x7C7DAAB0uLL);
  if (!result)
  {
    v2 = __nwlog_obj();
    v6 = 136446722;
    v7 = "nw_idle_allocate_options";
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v8 = 2048;
    v9 = 1;
    v10 = 2048;
    v11 = 8;
    v5 = 32;
    v4 = _os_log_send_and_compose_impl(v3, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v6, v5);
    __nwlog_should_abort(v4);
    __break(1u);
  }

  *result = 0;
  return result;
}

double __nw_protocol_idle_identifier_block_invoke()
{
  dword_1EA841B5C = 0;
  unk_1EA841B55 = 0;
  unk_1EA841B45 = 0u;
  strcpy(&nw_protocol_idle_identifier::protocol_identifier, "idle");
  *&result = 0x100000004;
  qword_1EA841B60 = 0x100000004;
  return result;
}

void *nw_protocol_copy_idle_definition()
{
  if (nw_protocol_copy_idle_definition::onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_idle_definition::onceToken, &__block_literal_global_27147);
  }

  result = nw_protocol_copy_idle_definition::definition;
  if (nw_protocol_copy_idle_definition::definition)
  {

    return os_retain(result);
  }

  return result;
}

uint64_t nw_protocol_options_is_idle(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_copy_idle_definition::onceToken != -1)
    {
      v9 = a1;
      dispatch_once(&nw_protocol_copy_idle_definition::onceToken, &__block_literal_global_27147);
      a1 = v9;
    }

    if (nw_protocol_copy_idle_definition::definition)
    {
      v1 = a1;
      v2 = os_retain(nw_protocol_copy_idle_definition::definition);
      a1 = v1;
    }

    else
    {
      v2 = 0;
    }

    return nw_protocol_options_matches_definition(a1, v2);
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_options_is_idle";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null options", buf, 12);
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
        v15 = "nw_protocol_options_is_idle";
        v8 = "%{public}s called with null options";
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
          v15 = "nw_protocol_options_is_idle";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_idle";
        v8 = "%{public}s called with null options, no backtrace";
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
        v15 = "nw_protocol_options_is_idle";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
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

void nw_idle_options_set_timeout_msecs(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_copy_idle_definition::onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_idle_definition::onceToken, &__block_literal_global_27147);
    }

    if (nw_protocol_copy_idle_definition::definition)
    {
      v4 = os_retain(nw_protocol_copy_idle_definition::definition);
    }

    else
    {
      v4 = 0;
    }

    if (nw_protocol_options_matches_definition(a1, v4))
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = __nw_idle_options_set_timeout_msecs_block_invoke;
      v15[3] = &__block_descriptor_tmp_1;
      v15[4] = a2;
      nw_protocol_options_access_handle(a1, v15);
      return;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_idle_options_set_timeout_msecs";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s protocol options are not idle", buf, 12);
    v17 = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v6, &v17, &v16))
    {
      if (v17 == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = v17;
        if (!os_log_type_enabled(v7, v17))
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v19 = "nw_idle_options_set_timeout_msecs";
        v9 = "%{public}s protocol options are not idle";
        goto LABEL_37;
      }

      if (v16 != 1)
      {
        v7 = __nwlog_obj();
        v8 = v17;
        if (!os_log_type_enabled(v7, v17))
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v19 = "nw_idle_options_set_timeout_msecs";
        v9 = "%{public}s protocol options are not idle, backtrace limit exceeded";
        goto LABEL_37;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = v17;
      v14 = os_log_type_enabled(v7, v17);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v19 = "nw_idle_options_set_timeout_msecs";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol options are not idle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v6)
        {
          goto LABEL_39;
        }

        return;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_idle_options_set_timeout_msecs";
        v9 = "%{public}s protocol options are not idle, no backtrace";
LABEL_37:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_idle_options_set_timeout_msecs";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null options", buf, 12);
    v17 = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v6, &v17, &v16))
    {
      goto LABEL_38;
    }

    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v17;
      if (!os_log_type_enabled(v7, v17))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "nw_idle_options_set_timeout_msecs";
      v9 = "%{public}s called with null options";
      goto LABEL_37;
    }

    if (v16 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v17;
      if (!os_log_type_enabled(v7, v17))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "nw_idle_options_set_timeout_msecs";
      v9 = "%{public}s called with null options, backtrace limit exceeded";
      goto LABEL_37;
    }

    v11 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v17;
    v12 = os_log_type_enabled(v7, v17);
    if (!v11)
    {
      if (!v12)
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "nw_idle_options_set_timeout_msecs";
      v9 = "%{public}s called with null options, no backtrace";
      goto LABEL_37;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "nw_idle_options_set_timeout_msecs";
      v20 = 2082;
      v21 = v11;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v11);
  }

LABEL_38:
  if (v6)
  {
LABEL_39:
    free(v6);
  }
}

BOOL __nw_frame_cache_remove_all_block_invoke(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && (v3 = a1, v4 = g_channel_check_validity(a2, *(a2 + 88)), a1 = v3, !v4))
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v5 = *(a2 + 48);
      v6 = *(a2 + 112);
    }

    if (gLogDatapath == 1)
    {
      v18 = a1;
      v19 = __nwlog_obj();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      a1 = v18;
      if (v20)
      {
        *buf = 136446978;
        v24 = "nw_frame_cache_remove_all_block_invoke";
        v25 = 2048;
        v26 = a2;
        v27 = 2048;
        v28 = v6;
        v29 = 1024;
        v30 = v5;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s destroying frame %p (buffer: %p, length %u)", buf, 0x26u);
        a1 = v18;
      }
    }

    frame_cache_remove_from_cache(*(a1 + 32), a2);
    return a2 != 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v24 = "nw_frame_cache_remove_all_block_invoke";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s foreach gave null empty_frame", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v7, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v24 = "nw_frame_cache_remove_all_block_invoke";
      v10 = "%{public}s foreach gave null empty_frame";
LABEL_19:
      v15 = v8;
      v16 = v9;
LABEL_20:
      _os_log_impl(&dword_181A37000, v15, v16, v10, buf, 0xCu);
      goto LABEL_21;
    }

    if (v21 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v24 = "nw_frame_cache_remove_all_block_invoke";
      v10 = "%{public}s foreach gave null empty_frame, backtrace limit exceeded";
      goto LABEL_19;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v13 = type;
    v14 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v14)
      {
        *buf = 136446466;
        v24 = "nw_frame_cache_remove_all_block_invoke";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s foreach gave null empty_frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_21;
    }

    if (v14)
    {
      *buf = 136446210;
      v24 = "nw_frame_cache_remove_all_block_invoke";
      v10 = "%{public}s foreach gave null empty_frame, no backtrace";
      v15 = v12;
      v16 = v13;
      goto LABEL_20;
    }
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }

  return a2 != 0;
}

void frame_cache_remove_from_cache(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    finalizer_context = nw_frame_get_finalizer_context(a2);
    if (finalizer_context)
    {
      free(finalizer_context);
    }

    v5 = (a1 + 8);
    v6 = a2[2];
    v7 = a2[3];
    if (v6)
    {
      v5 = (v6 + 24);
    }

    *v5 = v7;
    *v7 = v6;
    a2[2] = 0;
    a2[3] = 0;
    v8 = *(a1 + 24);
    *(a1 + 24) = v8 - 1;
    if (v8)
    {
      goto LABEL_24;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = *(a1 + 24);
    *buf = 136446978;
    v31 = "frame_cache_remove_from_cache";
    v32 = 2082;
    v33 = "frame_cache->empty_frames_count";
    v34 = 2048;
    v35 = 1;
    v36 = 2048;
    v37 = v9;
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v10, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v13 = *(a1 + 24);
          *buf = 136446978;
          v31 = "frame_cache_remove_from_cache";
          v32 = 2082;
          v33 = "frame_cache->empty_frames_count";
          v34 = 2048;
          v35 = 1;
          v36 = 2048;
          v37 = v13;
          v14 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_20:
          _os_log_impl(&dword_181A37000, v11, v12, v14, buf, 0x2Au);
        }
      }

      else if (v28 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        v16 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v16)
          {
            v17 = *(a1 + 24);
            *buf = 136447234;
            v31 = "frame_cache_remove_from_cache";
            v32 = 2082;
            v33 = "frame_cache->empty_frames_count";
            v34 = 2048;
            v35 = 1;
            v36 = 2048;
            v37 = v17;
            v38 = 2082;
            v39 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (v16)
        {
          v19 = *(a1 + 24);
          *buf = 136446978;
          v31 = "frame_cache_remove_from_cache";
          v32 = 2082;
          v33 = "frame_cache->empty_frames_count";
          v34 = 2048;
          v35 = 1;
          v36 = 2048;
          v37 = v19;
          v14 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_20;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v18 = *(a1 + 24);
          *buf = 136446978;
          v31 = "frame_cache_remove_from_cache";
          v32 = 2082;
          v33 = "frame_cache->empty_frames_count";
          v34 = 2048;
          v35 = 1;
          v36 = 2048;
          v37 = v18;
          v14 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_20;
        }
      }
    }

LABEL_21:
    if (v10)
    {
      free(v10);
    }

    *(a1 + 24) = 0;
LABEL_24:
    buffer = nw_frame_get_buffer(a2, 0);
    if (buffer)
    {
      free(buffer);
    }

    nw_frame_reset(a2, 0, 0, 0, 0);
    os_release(a2);
    return;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  v31 = "frame_cache_remove_from_cache";
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null frame_cache", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (__nwlog_fault(v22, &type, &v28))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v31 = "frame_cache_remove_from_cache";
      v25 = "%{public}s called with null frame_cache";
      goto LABEL_41;
    }

    if (v28 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v31 = "frame_cache_remove_from_cache";
      v25 = "%{public}s called with null frame_cache, backtrace limit exceeded";
      goto LABEL_41;
    }

    v26 = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v27 = os_log_type_enabled(v23, type);
    if (v26)
    {
      if (v27)
      {
        *buf = 136446466;
        v31 = "frame_cache_remove_from_cache";
        v32 = 2082;
        v33 = v26;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null frame_cache, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v26);
      goto LABEL_42;
    }

    if (v27)
    {
      *buf = 136446210;
      v31 = "frame_cache_remove_from_cache";
      v25 = "%{public}s called with null frame_cache, no backtrace";
LABEL_41:
      _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
    }
  }

LABEL_42:
  if (v22)
  {
    free(v22);
  }
}